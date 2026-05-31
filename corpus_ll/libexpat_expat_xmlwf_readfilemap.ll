; ModuleID = 'corpus_src/libexpat/expat/xmlwf/readfilemap.c'
source_filename = "corpus_src/libexpat/expat/xmlwf/readfilemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: not a regular file\0A\00", align 1
@filemap.c = internal constant i8 0, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: read unexpected number of bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @filemap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #8
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @perror(ptr noundef %0) #9
  br label %52

8:                                                ; preds = %3
  %9 = call i32 @fstat(i32 noundef %5, ptr noundef nonnull %4) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @perror(ptr noundef %0) #9
  %12 = tail call i32 @close(i32 noundef %5) #8
  br label %52

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %16 = and i32 %15, 61440
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @stderr, align 8, !tbaa !12
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %0) #9
  %21 = tail call i32 @close(i32 noundef %5) #8
  br label %52

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp sgt i64 %24, 1073741824
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @close(i32 noundef %5) #8
  br label %52

28:                                               ; preds = %22
  %29 = icmp eq i64 %24, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  tail call void %1(ptr noundef nonnull @filemap.c, i64 noundef 0, ptr noundef %0, ptr noundef %2) #8
  %31 = tail call i32 @close(i32 noundef %5) #8
  br label %52

32:                                               ; preds = %28
  %33 = tail call noalias ptr @malloc(i64 noundef %24) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load ptr, ptr @stderr, align 8, !tbaa !12
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %0) #9
  %38 = tail call i32 @close(i32 noundef %5) #8
  br label %52

39:                                               ; preds = %32
  %40 = tail call i64 @read(i32 noundef %5, ptr noundef nonnull %33, i64 noundef %24) #8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  tail call void @perror(ptr noundef %0) #9
  tail call void @free(ptr noundef nonnull %33) #8
  %43 = tail call i32 @close(i32 noundef %5) #8
  br label %52

44:                                               ; preds = %39
  %45 = icmp eq i64 %40, %24
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr @stderr, align 8, !tbaa !12
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.2, ptr noundef %0) #9
  tail call void @free(ptr noundef nonnull %33) #8
  %49 = tail call i32 @close(i32 noundef %5) #8
  br label %52

50:                                               ; preds = %44
  tail call void %1(ptr noundef nonnull %33, i64 noundef %24, ptr noundef %0, ptr noundef %2) #8
  tail call void @free(ptr noundef nonnull %33) #8
  %51 = tail call i32 @close(i32 noundef %5) #8
  br label %52

52:                                               ; preds = %50, %46, %42, %35, %30, %26, %18, %11, %7
  %53 = phi i32 [ 0, %7 ], [ 0, %11 ], [ 2, %26 ], [ 1, %30 ], [ 0, %42 ], [ 0, %46 ], [ 1, %50 ], [ 0, %35 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #8
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"stat", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !11, i64 88, !11, i64 104, !8, i64 120}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"timespec", !7, i64 0, !7, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!6, !7, i64 48}
