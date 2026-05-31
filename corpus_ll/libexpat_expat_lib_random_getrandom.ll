; ModuleID = 'corpus_src/libexpat/expat/lib/random_getrandom.c'
source_filename = "corpus_src/libexpat/expat/lib/random_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"bytesToWrite <= INT_MAX\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"corpus_src/libexpat/expat/lib/random_getrandom.c\00", align 1
@__PRETTY_FUNCTION__.writeRandomBytes_getrandom_nonblock = private unnamed_addr constant [58 x i8] c"_Bool writeRandomBytes_getrandom_nonblock(void *, size_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @writeRandomBytes_getrandom_nonblock(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i64 [ 0, %2 ], [ %19, %18 ]
  %5 = sub i64 %1, %4
  %6 = icmp ult i64 %5, 2147483648
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__.writeRandomBytes_getrandom_nonblock) #4
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 %4
  %10 = tail call ptr @__errno_location() #5
  store i32 0, ptr %10, align 4, !tbaa !5
  %11 = tail call i64 @getrandom(ptr noundef %9, i64 noundef %5, i32 noundef 1) #6
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  %14 = and i64 %11, 4294967295
  %15 = add i64 %14, %4
  %16 = icmp uge i64 %15, %1
  %17 = and i1 %13, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %8
  %19 = select i1 %13, i64 %15, i64 %4
  %20 = load i32, ptr %10, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %3, label %22, !llvm.loop !9

22:                                               ; preds = %8, %18
  ret i1 %17
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

declare i64 @getrandom(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
