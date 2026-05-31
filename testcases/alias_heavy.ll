; ModuleID = 'alias_heavy'

define i32 @alias_heavy(i32* %dst, i32* %src) {
entry:
  %src0 = load i32, i32* %src
  store i32 %src0, i32* %dst
  %dst0 = load i32, i32* %dst
  %cmp = icmp eq i32 %dst0, 0
  br i1 %cmp, label %zero, label %nonzero

zero:
  ret i32 0

nonzero:
  %dst1 = load i32, i32* %dst
  %sum = add i32 %dst1, %src0
  ret i32 %sum
}
