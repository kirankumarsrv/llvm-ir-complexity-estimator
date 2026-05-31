; ModuleID = 'corpus_src/zlib/contrib/blast/blast-test.c'
source_filename = "corpus_src/zlib/contrib/blast/blast-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"blast error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"blast warning: %u unused bytes of input\0A\00", align 1
@inf.hold = internal global [16384 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !tbaa !5
  %2 = load ptr, ptr @stdin, align 8, !tbaa !9
  %3 = load ptr, ptr @stdout, align 8, !tbaa !9
  %4 = call i32 @blast(ptr noundef nonnull @inf, ptr noundef %2, ptr noundef nonnull @outf, ptr noundef %3, ptr noundef nonnull %1, ptr noundef null) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @stderr, align 8, !tbaa !9
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %4) #6
  br label %9

9:                                                ; preds = %6, %0
  %10 = load ptr, ptr @stdin, align 8, !tbaa !9
  %11 = call i32 @getc(ptr noundef %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = load i32, ptr %1, align 4, !tbaa !5
  %15 = add i32 %14, 1
  store i32 %15, ptr %1, align 4, !tbaa !5
  %16 = load ptr, ptr @stdin, align 8, !tbaa !9
  %17 = call i32 @getc(ptr noundef %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %13, !llvm.loop !11

19:                                               ; preds = %13, %9
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %20) #6
  br label %25

25:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @blast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @inf(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #3 {
  store ptr @inf.hold, ptr %1, align 8, !tbaa !9
  %3 = tail call i64 @fread(ptr noundef nonnull @inf.hold, i64 noundef 1, i64 noundef 16384, ptr noundef %0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @outf(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = zext i32 %2 to i64
  %5 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef %0)
  %6 = icmp ne i64 %5, %4
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
