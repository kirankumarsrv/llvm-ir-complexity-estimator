; ModuleID = 'sample'
; Hand-written LLVM IR for smoke-testing the extractor.

define i32 @factorial(i32 %n) {
entry:
  %cmp = icmp sle i32 %n, 1
  br i1 %cmp, label %base, label %recurse

base:
  ret i32 1

recurse:
  %n1 = sub i32 %n, 1
  %rec = call i32 @factorial(i32 %n1)
  %result = mul i32 %n, %rec
  ret i32 %result
}

define i32 @sum_loop(i32 %n) {
entry:
  br label %loop

loop:
  %i   = phi i32 [ 0, %entry ], [ %i_next, %loop ]
  %acc = phi i32 [ 0, %entry ], [ %acc_next, %loop ]
  %i_next   = add i32 %i, 1
  %acc_next = add i32 %acc, %i
  %cmp = icmp slt i32 %i_next, %n
  br i1 %cmp, label %loop, label %exit

exit:
  ret i32 %acc_next
}

define void @no_op() {
entry:
  ret void
}
