; ModuleID = 'corpus_src/libexpat/expat/lib/random_dev_urandom.c'
source_filename = "corpus_src/libexpat/expat/lib/random_dev_urandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @writeRandomBytes_dev_urandom(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str, i32 noundef 524288) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #5
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i64 [ %17, %16 ], [ 0, %5 ]
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = sub i64 %1, %8
  store i32 0, ptr %6, align 4, !tbaa !5
  %11 = tail call i64 @read(i32 noundef %3, ptr noundef %9, i64 noundef %10) #4
  %12 = icmp sgt i64 %11, 0
  %13 = add i64 %11, %8
  %14 = icmp uge i64 %13, %1
  %15 = and i1 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = select i1 %12, i64 %13, i64 %8
  %18 = load i32, ptr %6, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %7, label %20, !llvm.loop !9

20:                                               ; preds = %7, %16
  %21 = tail call i32 @close(i32 noundef %3) #4
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi i1 [ %15, %20 ], [ false, %2 ]
  ret i1 %23
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(none) }

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
