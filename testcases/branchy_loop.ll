; ModuleID = 'branchy_loop'

define i32 @branchy_loop(i32 %n) {
entry:
  br label %loop

loop:
  %i = phi i32 [ 0, %entry ], [ %i.next, %join ]
  %acc = phi i32 [ 0, %entry ], [ %acc.next, %join ]
  %cmp = icmp slt i32 %i, %n
  br i1 %cmp, label %body, label %exit

body:
  %even = and i32 %i, 1
  %is_even = icmp eq i32 %even, 0
  br i1 %is_even, label %add, label %sub

add:
  %acc.add = add i32 %acc, %i
  br label %join

sub:
  %acc.sub = sub i32 %acc, %i
  br label %join

join:
  %acc.next = phi i32 [ %acc.add, %add ], [ %acc.sub, %sub ]
  %i.next = add i32 %i, 1
  br label %loop

exit:
  %final = phi i32 [ %acc, %loop ]
  ret i32 %final
}
