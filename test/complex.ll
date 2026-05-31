; ModuleID = 'complex'
; Hand-written LLVM IR with functions of varying complexity.
; Used by demo_pass_skipping.py to demonstrate LoopVectorize pass-skipping.

; ── 1. no_op ─────────────────────────────────────────────────────────────────
; Trivial function: 1 BB, 0 branches, CC = 1.
; Expected: RUN LoopVectorize (score << threshold).
define void @no_op() {
entry:
  ret void
}

; ── 2. heavy_arith ──────────────────────────────────────────────────────────
; Flat function: 1 BB, 12 arithmetic ops, no branches, CC = 1.
; High instruction count but no control-flow complexity.
; Expected: RUN LoopVectorize (no branching keeps score low).
define i32 @heavy_arith(i32 %a, i32 %b, i32 %c, i32 %d) {
entry:
  %t1  = mul i32 %a, %b
  %t2  = add i32 %t1, %c
  %t3  = sub i32 %t2, %d
  %t4  = mul i32 %t3, %a
  %t5  = add i32 %t4, %b
  %t6  = sub i32 %t5, %c
  %t7  = mul i32 %t6, %d
  %t8  = add i32 %t7, %a
  %t9  = sub i32 %t8, %b
  %t10 = mul i32 %t9, %c
  %t11 = add i32 %t10, %d
  %t12 = mul i32 %t11, %a
  ret i32 %t12
}

; ── 3. nested_loops ─────────────────────────────────────────────────────────
; Triple-nested loop: outer i<n, middle j<n, inner k<n.
; 10 BBs, 12 CFG edges, CC = 4.  3 conditional branches, 4 phi nodes.
; Expected: SKIP LoopVectorize (high CC + branch density).
define i32 @nested_loops(i32 %n) {
entry:
  br label %outer.cond

outer.cond:
  %i     = phi i32 [ 0, %entry ], [ %i.next, %outer.inc ]
  %cmp.o = icmp slt i32 %i, %n
  br i1 %cmp.o, label %mid.cond, label %outer.exit

mid.cond:
  %j     = phi i32 [ 0, %outer.cond ], [ %j.next, %mid.inc ]
  %cmp.m = icmp slt i32 %j, %n
  br i1 %cmp.m, label %inner.cond, label %mid.exit

inner.cond:
  %k     = phi i32 [ 0, %mid.cond ], [ %k.next, %inner.body ]
  %acc   = phi i32 [ 0, %mid.cond ], [ %acc.next, %inner.body ]
  %cmp.i = icmp slt i32 %k, %n
  br i1 %cmp.i, label %inner.body, label %inner.exit

inner.body:
  %ij       = mul i32 %i, %j
  %ijk      = add i32 %ij, %k
  %acc.next = add i32 %acc, %ijk
  %k.next   = add i32 %k, 1
  br label %inner.cond

inner.exit:
  %j.next = add i32 %j, 1
  br label %mid.inc

mid.inc:
  br label %mid.cond

mid.exit:
  %i.next = add i32 %i, 1
  br label %outer.inc

outer.inc:
  br label %outer.cond

outer.exit:
  ret i32 0
}

; ── 4. many_branches ────────────────────────────────────────────────────────
; Decision tree: 5 conditional branches, 14 BBs, 18 CFG edges, CC = 6.
; Expected: SKIP LoopVectorize (very high CC and branch count).
define i32 @many_branches(i32 %x) {
entry:
  %c1 = icmp sgt i32 %x, 100
  br i1 %c1, label %hi, label %lo

hi:
  %c2 = icmp sgt i32 %x, 200
  br i1 %c2, label %hi_hi, label %hi_lo

lo:
  %c3 = icmp sgt i32 %x, 50
  br i1 %c3, label %lo_hi, label %lo_lo

hi_hi:
  %v1 = mul i32 %x, 4
  br label %merge_hi

hi_lo:
  %v2 = add i32 %x, 100
  br label %merge_hi

lo_hi:
  %v3 = mul i32 %x, 2
  br label %merge_lo

lo_lo:
  %v4 = sub i32 %x, 10
  br label %merge_lo

merge_hi:
  %r1 = phi i32 [ %v1, %hi_hi ], [ %v2, %hi_lo ]
  %c4 = icmp sgt i32 %r1, 300
  br i1 %c4, label %final1, label %final2

merge_lo:
  %r2 = phi i32 [ %v3, %lo_hi ], [ %v4, %lo_lo ]
  %c5 = icmp sgt i32 %r2, 75
  br i1 %c5, label %final3, label %final4

final1:
  %w1 = mul i32 %r1, 2
  br label %exit

final2:
  %w2 = add i32 %r1, 50
  br label %exit

final3:
  %w3 = sub i32 %r2, 5
  br label %exit

final4:
  %w4 = mul i32 %r2, 3
  br label %exit

exit:
  %result = phi i32 [ %w1, %final1 ], [ %w2, %final2 ],
                    [ %w3, %final3 ], [ %w4, %final4 ]
  ret i32 %result
}
