; ModuleID = 'corpus_src/klib/kmempool.c'
source_filename = "corpus_src/klib/kmempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kmempool_t = type { i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr }

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @kmp_init2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #7
  store i32 %0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.kmempool_t, ptr %3, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !11
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = mul nuw i64 %6, %5
  %8 = getelementptr inbounds %struct.kmempool_t, ptr %3, i64 0, i32 5
  %9 = getelementptr inbounds %struct.kmempool_t, ptr %3, i64 0, i32 2
  %10 = tail call dereferenceable_or_null(8) ptr @malloc(i64 8)
  store ptr %10, ptr %8, align 8, !tbaa !12
  %11 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 1) #7
  store i32 1, ptr %9, align 8, !tbaa !13
  store ptr %11, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.kmempool_t, ptr %3, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, ptr %11, i64 %7
  %14 = getelementptr inbounds %struct.kmempool_t, ptr %3, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !16
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @kmp_init(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #7
  store i32 %0, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.kmempool_t, ptr %2, i64 0, i32 1
  store i32 65536, ptr %3, align 4, !tbaa !11
  %4 = zext i32 %0 to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = getelementptr inbounds %struct.kmempool_t, ptr %2, i64 0, i32 5
  %7 = getelementptr inbounds %struct.kmempool_t, ptr %2, i64 0, i32 2
  %8 = tail call dereferenceable_or_null(8) ptr @malloc(i64 8)
  store ptr %8, ptr %6, align 8, !tbaa !12
  %9 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #7
  store i32 1, ptr %7, align 8, !tbaa !13
  store ptr %9, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.kmempool_t, ptr %2, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %9, i64 %5
  %12 = getelementptr inbounds %struct.kmempool_t, ptr %2, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !16
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @kmp_destroy(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 5
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !12
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  tail call void @free(ptr noundef %11) #8
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %2, align 8, !tbaa !13
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %7, label %16, !llvm.loop !17

16:                                               ; preds = %7, %1
  %17 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void @free(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  tail call void @free(ptr noundef %20) #8
  tail call void @free(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local ptr @kmp_alloc(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = add i32 %3, -1
  store i32 %8, ptr %2, align 8, !tbaa !20
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  br label %44

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8, !tbaa !5
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = zext i32 %22 to i64
  %24 = mul nuw i64 %23, %20
  %25 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !13
  %29 = add i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = tail call ptr @realloc(ptr noundef %26, i64 noundef %31) #9
  store ptr %32, ptr %25, align 8, !tbaa !12
  %33 = tail call noalias ptr @calloc(i64 noundef %24, i64 noundef 1) #7
  %34 = load i32, ptr %27, align 8, !tbaa !13
  %35 = add i32 %34, 1
  store i32 %35, ptr %27, align 8, !tbaa !13
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %32, i64 %36
  store ptr %33, ptr %37, align 8, !tbaa !14
  %38 = getelementptr inbounds i8, ptr %33, i64 %24
  store ptr %38, ptr %15, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %18, %12
  %40 = phi ptr [ %33, %18 ], [ %14, %12 ]
  %41 = load i32, ptr %0, align 8, !tbaa !5
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store ptr %43, ptr %13, align 8, !tbaa !15
  br label %44

44:                                               ; preds = %39, %5
  %45 = phi ptr [ %11, %5 ], [ %40, %39 ]
  ret ptr %45
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @kmp_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  br label %21

11:                                               ; preds = %2
  %12 = lshr i32 %4, 1
  %13 = add i32 %4, 16
  %14 = add i32 %13, %12
  store i32 %14, ptr %5, align 4, !tbaa !21
  %15 = getelementptr inbounds %struct.kmempool_t, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = tail call ptr @realloc(ptr noundef %16, i64 noundef %18) #9
  store ptr %19, ptr %15, align 8, !tbaa !19
  %20 = load i32, ptr %3, align 8, !tbaa !20
  br label %21

21:                                               ; preds = %8, %11
  %22 = phi i32 [ %4, %8 ], [ %20, %11 ]
  %23 = phi ptr [ %10, %8 ], [ %19, %11 ]
  %24 = add i32 %22, 1
  store i32 %24, ptr %3, align 8, !tbaa !20
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !10, i64 32}
!13 = !{!6, !7, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!6, !10, i64 16}
!16 = !{!6, !10, i64 24}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !10, i64 48}
!20 = !{!6, !7, i64 40}
!21 = !{!6, !7, i64 44}
