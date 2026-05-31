; ModuleID = 'corpus_src/klib/kbarena.c'
source_filename = "corpus_src/klib/kbarena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kbarena_t = type { i32, i32, i32, i32, ptr, i32, i32, ptr }

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @kba_init(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = add i32 %0, 7
  %8 = and i32 %7, -8
  store i32 %8, ptr %4, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.kbarena_t, ptr %4, i64 0, i32 1
  store i32 4, ptr %9, align 4, !tbaa !11
  %10 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #11
  %11 = getelementptr inbounds %struct.kbarena_t, ptr %4, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !12
  %12 = zext i32 %8 to i64
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #12
  store ptr %13, ptr %10, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %3, %1, %6
  %15 = phi ptr [ %4, %6 ], [ null, %1 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @kba_destroy(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i32 [ %5, %7 ], [ %19, %18 ]
  %11 = phi i64 [ 0, %7 ], [ %20, %18 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !12
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %14) #13
  %17 = load i32, ptr %4, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %9, %16
  %19 = phi i32 [ %10, %9 ], [ %17, %16 ]
  %20 = add nuw nsw i64 %11, 1
  %21 = zext i32 %19 to i64
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %9, label %23, !llvm.loop !14

23:                                               ; preds = %18, %3
  %24 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  tail call void @free(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  tail call void @free(ptr noundef %27) #13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %28

28:                                               ; preds = %1, %23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @kba_capacity(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = zext i32 %3 to i64
  %9 = and i64 %8, 1
  %10 = icmp eq i32 %3, 1
  br i1 %10, label %39, label %11

11:                                               ; preds = %5
  %12 = and i64 %8, 4294967294
  br label %13

13:                                               ; preds = %34, %11
  %14 = phi i64 [ 0, %11 ], [ %36, %34 ]
  %15 = phi i64 [ 0, %11 ], [ %35, %34 ]
  %16 = phi i64 [ 0, %11 ], [ %37, %34 ]
  %17 = getelementptr inbounds ptr, ptr %7, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %0, align 8, !tbaa !5
  %22 = zext i32 %21 to i64
  %23 = add i64 %15, %22
  br label %24

24:                                               ; preds = %13, %20
  %25 = phi i64 [ %23, %20 ], [ %15, %13 ]
  %26 = or disjoint i64 %14, 1
  %27 = getelementptr inbounds ptr, ptr %7, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %0, align 8, !tbaa !5
  %32 = zext i32 %31 to i64
  %33 = add i64 %25, %32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i64 [ %33, %30 ], [ %25, %24 ]
  %36 = add nuw nsw i64 %14, 2
  %37 = add i64 %16, 2
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %13, !llvm.loop !17

39:                                               ; preds = %34, %5
  %40 = phi i64 [ undef, %5 ], [ %35, %34 ]
  %41 = phi i64 [ 0, %5 ], [ %36, %34 ]
  %42 = phi i64 [ 0, %5 ], [ %35, %34 ]
  %43 = icmp eq i64 %9, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds ptr, ptr %7, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %0, align 8, !tbaa !5
  %50 = zext i32 %49 to i64
  %51 = add i64 %42, %50
  br label %52

52:                                               ; preds = %39, %48, %44, %1
  %53 = phi i64 [ 0, %1 ], [ %40, %39 ], [ %51, %48 ], [ %42, %44 ]
  ret i64 %53
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local ptr @kba_alloc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !18
  %6 = zext i32 %5 to i64
  %7 = sub i32 0, %5
  %8 = add i32 %2, -1
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %0, align 8, !tbaa !5
  %13 = icmp uge i32 %12, %1
  %14 = tail call i32 @llvm.ctpop.i32(i32 %2), !range !19
  %15 = icmp ult i32 %14, 2
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %86

17:                                               ; preds = %11
  %18 = zext i32 %1 to i64
  %19 = add nuw nsw i64 %6, %18
  %20 = zext i32 %9 to i64
  %21 = add nuw nsw i64 %19, %20
  %22 = zext i32 %12 to i64
  %23 = icmp ugt i64 %21, %22
  %24 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !20
  br i1 %23, label %31, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = zext i32 %25 to i64
  %30 = add i32 %5, %9
  br label %77

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !11
  %34 = add i32 %25, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = zext i32 %34 to i64
  %38 = add nuw nsw i64 %37, 16
  %39 = add nuw nsw i64 %37, 1
  %40 = lshr i64 %39, 1
  %41 = add nuw nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = shl nuw nsw i64 %41, 3
  %45 = tail call ptr @realloc(ptr noundef %43, i64 noundef %44) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %86, label %47

47:                                               ; preds = %36
  %48 = trunc i64 %41 to i32
  store i32 %48, ptr %32, align 4, !tbaa !11
  store ptr %45, ptr %42, align 8, !tbaa !12
  %49 = icmp ult i32 %33, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = zext i32 %33 to i64
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = sub i32 %48, %33
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %31, %50, %47
  %59 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i32, ptr %24, align 8, !tbaa !20
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, ptr %0, align 8, !tbaa !5
  %69 = zext i32 %68 to i64
  %70 = tail call noalias ptr @malloc(i64 noundef %69) #12
  store ptr %70, ptr %64, align 8, !tbaa !13
  %71 = load ptr, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds ptr, ptr %71, i64 %63
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %58, %67
  %76 = phi ptr [ %60, %58 ], [ %71, %67 ]
  store i32 %62, ptr %24, align 8, !tbaa !20
  br label %77

77:                                               ; preds = %26, %75
  %78 = phi i64 [ %29, %26 ], [ %63, %75 ]
  %79 = phi ptr [ %28, %26 ], [ %76, %75 ]
  %80 = phi i32 [ %30, %26 ], [ 0, %75 ]
  %81 = getelementptr inbounds ptr, ptr %79, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !13
  %83 = zext i32 %80 to i64
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = add i32 %80, %1
  store i32 %85, ptr %4, align 4, !tbaa !18
  br label %86

86:                                               ; preds = %36, %67, %3, %11, %77
  %87 = phi ptr [ %84, %77 ], [ null, %11 ], [ null, %3 ], [ null, %67 ], [ null, %36 ]
  ret ptr %87
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noundef i32 @kba_save(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  br label %24

10:                                               ; preds = %1
  %11 = zext i32 %3 to i64
  %12 = add nuw nsw i64 %11, 16
  %13 = add nuw nsw i64 %11, 1
  %14 = lshr i64 %13, 1
  %15 = add nuw nsw i64 %12, %14
  %16 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = shl nuw nsw i64 %15, 3
  %19 = tail call ptr @realloc(ptr noundef %17, i64 noundef %18) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %10
  %22 = trunc i64 %15 to i32
  store i32 %22, ptr %4, align 4, !tbaa !22
  store ptr %19, ptr %16, align 8, !tbaa !16
  %23 = load i32, ptr %2, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %7, %21
  %25 = phi i32 [ %3, %7 ], [ %23, %21 ]
  %26 = phi ptr [ %9, %7 ], [ %19, %21 ]
  %27 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !20
  %29 = zext i32 %28 to i64
  %30 = shl nuw i64 %29, 32
  %31 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !18
  %33 = zext i32 %32 to i64
  %34 = or disjoint i64 %30, %33
  %35 = add i32 %25, 1
  store i32 %35, ptr %2, align 8, !tbaa !21
  %36 = zext i32 %25 to i64
  %37 = getelementptr inbounds i64, ptr %26, i64 %36
  store i64 %34, ptr %37, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %10, %24
  %39 = phi i32 [ 0, %24 ], [ -1, %10 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @kba_restore(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = add i32 %3, -1
  store i32 %8, ptr %2, align 8, !tbaa !21
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i64, ptr %7, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !23
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !20
  %15 = trunc i64 %11 to i32
  %16 = getelementptr inbounds %struct.kbarena_t, ptr %0, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !18
  br label %17

17:                                               ; preds = %1, %5
  %18 = phi i32 [ 0, %5 ], [ -1, %1 ]
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !10, i64 16}
!13 = !{!10, !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !10, i64 32}
!17 = distinct !{!17, !15}
!18 = !{!6, !7, i64 12}
!19 = !{i32 0, i32 33}
!20 = !{!6, !7, i64 8}
!21 = !{!6, !7, i64 24}
!22 = !{!6, !7, i64 28}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !8, i64 0}
