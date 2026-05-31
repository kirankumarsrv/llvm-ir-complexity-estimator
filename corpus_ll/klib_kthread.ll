; ModuleID = 'corpus_src/klib/kthread.c'
source_filename = "corpus_src/klib/kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kt_for_t = type { i32, i64, ptr, ptr, ptr }
%struct.ktf_worker_t = type { ptr, i64 }
%struct.kt_forpool_t = type { i32, i32, i64, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.kto_worker_t = type { ptr, i64, i32 }
%struct.ktp_t = type { ptr, ptr, i64, i32, i32, ptr, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.ktp_worker_t = type { ptr, i64, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @kt_for(i32 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kt_for_t, align 8
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i64 %3, 0
  br i1 %8, label %57, label %61

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  %10 = getelementptr inbounds %struct.kt_for_t, ptr %5, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.kt_for_t, ptr %5, i64 0, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !12
  store i32 %0, ptr %5, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.kt_for_t, ptr %5, i64 0, i32 1
  store i64 %3, ptr %12, align 8, !tbaa !14
  %13 = zext nneg i32 %0 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.kt_for_t, ptr %5, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !15
  %17 = shl nuw nsw i64 %13, 3
  %18 = alloca i8, i64 %17, align 16
  %19 = and i64 %13, 1
  %20 = and i64 %13, 2147483646
  br label %21

21:                                               ; preds = %21, %9
  %22 = phi i64 [ 0, %9 ], [ %29, %21 ]
  %23 = phi i64 [ 0, %9 ], [ %30, %21 ]
  %24 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %22
  store ptr %5, ptr %24, align 16, !tbaa !16
  %25 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %22, i32 1
  store i64 %22, ptr %25, align 8, !tbaa !18
  %26 = or disjoint i64 %22, 1
  %27 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %26
  store ptr %5, ptr %27, align 16, !tbaa !16
  %28 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %26, i32 1
  store i64 %26, ptr %28, align 8, !tbaa !18
  %29 = add nuw nsw i64 %22, 2
  %30 = add i64 %23, 2
  %31 = icmp eq i64 %30, %20
  br i1 %31, label %32, label %21, !llvm.loop !19

32:                                               ; preds = %21
  %33 = icmp eq i64 %19, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %29
  store ptr %5, ptr %35, align 16, !tbaa !16
  %36 = getelementptr inbounds %struct.ktf_worker_t, ptr %15, i64 %29, i32 1
  store i64 %29, ptr %36, align 8, !tbaa !18
  br label %37

37:                                               ; preds = %32, %34
  br label %41

38:                                               ; preds = %41
  %39 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %40 = zext nneg i32 %39 to i64
  br label %49

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %47, %41 ], [ 0, %37 ]
  %43 = getelementptr inbounds i64, ptr %18, i64 %42
  %44 = load ptr, ptr %16, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ktf_worker_t, ptr %44, i64 %42
  %46 = call i32 @pthread_create(ptr noundef nonnull %43, ptr noundef null, ptr noundef nonnull @ktf_worker, ptr noundef %45) #9
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %13
  br i1 %48, label %38, label %41, !llvm.loop !21

49:                                               ; preds = %38, %49
  %50 = phi i64 [ 0, %38 ], [ %54, %49 ]
  %51 = getelementptr inbounds i64, ptr %18, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !22
  %53 = call i32 @pthread_join(i64 noundef %52, ptr noundef null) #9
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %40
  br i1 %55, label %56, label %49, !llvm.loop !23

56:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  br label %61

57:                                               ; preds = %7, %57
  %58 = phi i64 [ %59, %57 ], [ 0, %7 ]
  tail call void %1(ptr noundef %2, i64 noundef %58, i32 noundef 0) #9
  %59 = add nuw nsw i64 %58, 1
  %60 = icmp eq i64 %59, %3
  br i1 %60, label %61, label %57, !llvm.loop !24

61:                                               ; preds = %57, %7, %56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal noundef ptr @ktf_worker(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ktf_worker_t, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = sext i32 %4 to i64
  %6 = atomicrmw add ptr %2, i64 %5 seq_cst, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.kt_for_t, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = icmp slt i64 %6, %9
  %11 = ptrtoint ptr %0 to i64
  br i1 %10, label %12, label %33

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %29, %12 ], [ %7, %1 ]
  %14 = phi i64 [ %28, %12 ], [ %6, %1 ]
  %15 = getelementptr inbounds %struct.kt_for_t, ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.kt_for_t, ptr %13, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.kt_for_t, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %11, %21
  %23 = lshr exact i64 %22, 4
  %24 = trunc i64 %23 to i32
  tail call void %16(ptr noundef %18, i64 noundef %14, i32 noundef %24) #9
  %25 = load ptr, ptr %0, align 8, !tbaa !16
  %26 = load i32, ptr %25, align 8, !tbaa !13
  %27 = sext i32 %26 to i64
  %28 = atomicrmw add ptr %2, i64 %27 seq_cst, align 8
  %29 = load ptr, ptr %0, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.kt_for_t, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %12, label %33

33:                                               ; preds = %12, %1
  %34 = phi ptr [ %7, %1 ], [ %29, %12 ]
  br label %35

35:                                               ; preds = %33, %93
  %36 = phi ptr [ %105, %93 ], [ %34, %33 ]
  %37 = load i32, ptr %36, align 8, !tbaa !13
  %38 = icmp sgt i32 %37, 0
  %39 = getelementptr inbounds %struct.kt_for_t, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  br i1 %38, label %41, label %83

41:                                               ; preds = %35
  %42 = zext nneg i32 %37 to i64
  %43 = and i64 %42, 1
  %44 = icmp eq i32 %37, 1
  br i1 %44, label %68, label %45

45:                                               ; preds = %41
  %46 = and i64 %42, 2147483646
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %65, %47 ]
  %49 = phi i64 [ 9223372036854775807, %45 ], [ %64, %47 ]
  %50 = phi i32 [ -1, %45 ], [ %63, %47 ]
  %51 = phi i64 [ 0, %45 ], [ %66, %47 ]
  %52 = getelementptr inbounds %struct.ktf_worker_t, ptr %40, i64 %48, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !18
  %54 = icmp sgt i64 %49, %53
  %55 = trunc i64 %48 to i32
  %56 = select i1 %54, i32 %55, i32 %50
  %57 = tail call i64 @llvm.smin.i64(i64 %49, i64 %53)
  %58 = or disjoint i64 %48, 1
  %59 = getelementptr inbounds %struct.ktf_worker_t, ptr %40, i64 %58, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !18
  %61 = icmp sgt i64 %57, %60
  %62 = trunc i64 %58 to i32
  %63 = select i1 %61, i32 %62, i32 %56
  %64 = tail call i64 @llvm.smin.i64(i64 %57, i64 %60)
  %65 = add nuw nsw i64 %48, 2
  %66 = add i64 %51, 2
  %67 = icmp eq i64 %66, %46
  br i1 %67, label %68, label %47, !llvm.loop !25

68:                                               ; preds = %47, %41
  %69 = phi i32 [ undef, %41 ], [ %63, %47 ]
  %70 = phi i64 [ 0, %41 ], [ %65, %47 ]
  %71 = phi i64 [ 9223372036854775807, %41 ], [ %64, %47 ]
  %72 = phi i32 [ -1, %41 ], [ %63, %47 ]
  %73 = icmp eq i64 %43, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ktf_worker_t, ptr %40, i64 %70, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !18
  %77 = icmp sgt i64 %71, %76
  %78 = trunc i64 %70 to i32
  %79 = select i1 %77, i32 %78, i32 %72
  br label %80

80:                                               ; preds = %68, %74
  %81 = phi i32 [ %69, %68 ], [ %79, %74 ]
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %35, %80
  %84 = phi i64 [ %82, %80 ], [ -1, %35 ]
  %85 = getelementptr inbounds %struct.ktf_worker_t, ptr %40, i64 %84, i32 1
  %86 = sext i32 %37 to i64
  %87 = atomicrmw add ptr %85, i64 %86 seq_cst, align 8
  %88 = getelementptr inbounds %struct.kt_for_t, ptr %36, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !14
  %90 = icmp slt i64 %87, %89
  %91 = select i1 %90, i64 %87, i64 -1
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %93, label %106

93:                                               ; preds = %83
  %94 = load ptr, ptr %0, align 8, !tbaa !16
  %95 = getelementptr inbounds %struct.kt_for_t, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.kt_for_t, ptr %94, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !12
  %99 = getelementptr inbounds %struct.kt_for_t, ptr %94, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !15
  %101 = ptrtoint ptr %100 to i64
  %102 = sub i64 %11, %101
  %103 = lshr exact i64 %102, 4
  %104 = trunc i64 %103 to i32
  tail call void %96(ptr noundef %98, i64 noundef %91, i32 noundef %104) #9
  %105 = load ptr, ptr %0, align 8, !tbaa !16
  br label %35, !llvm.loop !26

106:                                              ; preds = %83
  tail call void @pthread_exit(ptr noundef null) #10
  unreachable
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kt_forpool_init(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(184) ptr @calloc(i64 noundef 1, i64 noundef 184) #11
  %3 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 1
  store i32 %0, ptr %3, align 4, !tbaa !27
  store i32 %0, ptr %2, align 8, !tbaa !29
  %4 = sext i32 %0 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 8) #11
  %6 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !30
  %7 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 24) #11
  %8 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !31
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = zext nneg i32 %0 to i64
  %12 = and i64 %11, 3
  %13 = icmp ult i32 %0, 4
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, 2147483644
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %26, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %27, %16 ]
  %19 = getelementptr inbounds %struct.kto_worker_t, ptr %7, i64 %17
  store ptr %2, ptr %19, align 8, !tbaa !32
  %20 = or disjoint i64 %17, 1
  %21 = getelementptr inbounds %struct.kto_worker_t, ptr %7, i64 %20
  store ptr %2, ptr %21, align 8, !tbaa !32
  %22 = or disjoint i64 %17, 2
  %23 = getelementptr inbounds %struct.kto_worker_t, ptr %7, i64 %22
  store ptr %2, ptr %23, align 8, !tbaa !32
  %24 = or disjoint i64 %17, 3
  %25 = getelementptr inbounds %struct.kto_worker_t, ptr %7, i64 %24
  store ptr %2, ptr %25, align 8, !tbaa !32
  %26 = add nuw nsw i64 %17, 4
  %27 = add i64 %18, 4
  %28 = icmp eq i64 %27, %15
  br i1 %28, label %29, label %16, !llvm.loop !34

29:                                               ; preds = %16, %10
  %30 = phi i64 [ 0, %10 ], [ %26, %16 ]
  %31 = icmp eq i64 %12, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %36, %32 ], [ %30, %29 ]
  %34 = phi i64 [ %37, %32 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.kto_worker_t, ptr %7, i64 %33
  store ptr %2, ptr %35, align 8, !tbaa !32
  %36 = add nuw nsw i64 %33, 1
  %37 = add i64 %34, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %32, !llvm.loop !35

39:                                               ; preds = %29, %32, %1
  %40 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 7
  %41 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %40, ptr noundef null) #9
  %42 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 8
  %43 = tail call i32 @pthread_cond_init(ptr noundef nonnull %42, ptr noundef null) #9
  %44 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 9
  %45 = tail call i32 @pthread_cond_init(ptr noundef nonnull %44, ptr noundef null) #9
  %46 = load i32, ptr %2, align 8, !tbaa !29
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39, %48
  %49 = phi i64 [ %55, %48 ], [ 0, %39 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !30
  %51 = getelementptr inbounds i64, ptr %50, i64 %49
  %52 = load ptr, ptr %8, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.kto_worker_t, ptr %52, i64 %49
  %54 = tail call i32 @pthread_create(ptr noundef %51, ptr noundef null, ptr noundef nonnull @kt_fp_worker, ptr noundef %53) #9
  %55 = add nuw nsw i64 %49, 1
  %56 = load i32, ptr %2, align 8, !tbaa !29
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %48, label %59, !llvm.loop !37

59:                                               ; preds = %48, %39
  %60 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %40) #9
  %61 = load i32, ptr %3, align 4, !tbaa !27
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %63
  %64 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %42, ptr noundef nonnull %40) #9
  %65 = load i32, ptr %3, align 4, !tbaa !27
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63, !llvm.loop !38

67:                                               ; preds = %63, %59
  %68 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %40) #9
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal noundef ptr @kt_fp_worker(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 7
  %4 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 8
  %6 = getelementptr inbounds %struct.kto_worker_t, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 9
  %8 = getelementptr inbounds %struct.kto_worker_t, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 5
  %11 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 6
  %12 = getelementptr inbounds %struct.kt_forpool_t, ptr %2, i64 0, i32 4
  %13 = ptrtoint ptr %0 to i64
  br label %14

14:                                               ; preds = %96, %1
  %15 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %3) #9
  %16 = load i32, ptr %4, align 4, !tbaa !27
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %4, align 4, !tbaa !27
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @pthread_cond_signal(ptr noundef nonnull %5) #9
  br label %21

21:                                               ; preds = %19, %14
  store i32 0, ptr %6, align 8, !tbaa !39
  br label %22

22:                                               ; preds = %21, %22
  %23 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %7, ptr noundef nonnull %3) #9
  %24 = load i32, ptr %6, align 8, !tbaa !39
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %22, label %26, !llvm.loop !40

26:                                               ; preds = %22
  %27 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %3) #9
  %28 = icmp slt i32 %24, 0
  br i1 %28, label %113, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %2, align 8, !tbaa !29
  %31 = sext i32 %30 to i64
  %32 = atomicrmw add ptr %8, i64 %31 seq_cst, align 8
  %33 = load i64, ptr %9, align 8, !tbaa !41
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29, %35
  %36 = phi i64 [ %46, %35 ], [ %32, %29 ]
  %37 = load ptr, ptr %10, align 8, !tbaa !42
  %38 = load ptr, ptr %11, align 8, !tbaa !43
  %39 = load ptr, ptr %12, align 8, !tbaa !31
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %13, %40
  %42 = sdiv exact i64 %41, 24
  %43 = trunc i64 %42 to i32
  tail call void %37(ptr noundef %38, i64 noundef %36, i32 noundef %43) #9
  %44 = load i32, ptr %2, align 8, !tbaa !29
  %45 = sext i32 %44 to i64
  %46 = atomicrmw add ptr %8, i64 %45 seq_cst, align 8
  %47 = load i64, ptr %9, align 8, !tbaa !41
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %35, label %49

49:                                               ; preds = %35, %29
  br label %50

50:                                               ; preds = %49, %105
  %51 = load i32, ptr %2, align 8, !tbaa !29
  %52 = icmp sgt i32 %51, 0
  %53 = load ptr, ptr %12, align 8, !tbaa !31
  br i1 %52, label %54, label %96

54:                                               ; preds = %50
  %55 = zext nneg i32 %51 to i64
  %56 = and i64 %55, 1
  %57 = icmp eq i32 %51, 1
  br i1 %57, label %81, label %58

58:                                               ; preds = %54
  %59 = and i64 %55, 2147483646
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i64 [ 0, %58 ], [ %78, %60 ]
  %62 = phi i64 [ 9223372036854775807, %58 ], [ %77, %60 ]
  %63 = phi i32 [ -1, %58 ], [ %76, %60 ]
  %64 = phi i64 [ 0, %58 ], [ %79, %60 ]
  %65 = getelementptr inbounds %struct.kto_worker_t, ptr %53, i64 %61, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !44
  %67 = icmp sgt i64 %62, %66
  %68 = trunc i64 %61 to i32
  %69 = select i1 %67, i32 %68, i32 %63
  %70 = tail call i64 @llvm.smin.i64(i64 %62, i64 %66)
  %71 = or disjoint i64 %61, 1
  %72 = getelementptr inbounds %struct.kto_worker_t, ptr %53, i64 %71, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !44
  %74 = icmp sgt i64 %70, %73
  %75 = trunc i64 %71 to i32
  %76 = select i1 %74, i32 %75, i32 %69
  %77 = tail call i64 @llvm.smin.i64(i64 %70, i64 %73)
  %78 = add nuw nsw i64 %61, 2
  %79 = add i64 %64, 2
  %80 = icmp eq i64 %79, %59
  br i1 %80, label %81, label %60, !llvm.loop !45

81:                                               ; preds = %60, %54
  %82 = phi i32 [ undef, %54 ], [ %76, %60 ]
  %83 = phi i64 [ 0, %54 ], [ %78, %60 ]
  %84 = phi i64 [ 9223372036854775807, %54 ], [ %77, %60 ]
  %85 = phi i32 [ -1, %54 ], [ %76, %60 ]
  %86 = icmp eq i64 %56, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.kto_worker_t, ptr %53, i64 %83, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !44
  %90 = icmp sgt i64 %84, %89
  %91 = trunc i64 %83 to i32
  %92 = select i1 %90, i32 %91, i32 %85
  br label %93

93:                                               ; preds = %81, %87
  %94 = phi i32 [ %82, %81 ], [ %92, %87 ]
  %95 = sext i32 %94 to i64
  br label %96

96:                                               ; preds = %50, %93
  %97 = phi i64 [ %95, %93 ], [ -1, %50 ]
  %98 = getelementptr inbounds %struct.kto_worker_t, ptr %53, i64 %97, i32 1
  %99 = sext i32 %51 to i64
  %100 = atomicrmw add ptr %98, i64 %99 seq_cst, align 8
  %101 = load i64, ptr %9, align 8, !tbaa !41
  %102 = icmp slt i64 %100, %101
  %103 = select i1 %102, i64 %100, i64 -1
  %104 = icmp sgt i64 %103, -1
  br i1 %104, label %105, label %14

105:                                              ; preds = %96
  %106 = load ptr, ptr %10, align 8, !tbaa !42
  %107 = load ptr, ptr %11, align 8, !tbaa !43
  %108 = load ptr, ptr %12, align 8, !tbaa !31
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %13, %109
  %111 = sdiv exact i64 %110, 24
  %112 = trunc i64 %111 to i32
  tail call void %106(ptr noundef %107, i64 noundef %103, i32 noundef %112) #9
  br label %50, !llvm.loop !46

113:                                              ; preds = %26
  tail call void @pthread_exit(ptr noundef null) #10
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @kt_forpool_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !29
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = zext nneg i32 %2 to i64
  %8 = and i64 %7, 3
  %9 = icmp ult i32 %2, 4
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = and i64 %7, 2147483644
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %22, %12 ]
  %14 = phi i64 [ 0, %10 ], [ %23, %12 ]
  %15 = getelementptr inbounds %struct.kto_worker_t, ptr %6, i64 %13, i32 2
  store i32 -1, ptr %15, align 8, !tbaa !39
  %16 = or disjoint i64 %13, 1
  %17 = getelementptr inbounds %struct.kto_worker_t, ptr %6, i64 %16, i32 2
  store i32 -1, ptr %17, align 8, !tbaa !39
  %18 = or disjoint i64 %13, 2
  %19 = getelementptr inbounds %struct.kto_worker_t, ptr %6, i64 %18, i32 2
  store i32 -1, ptr %19, align 8, !tbaa !39
  %20 = or disjoint i64 %13, 3
  %21 = getelementptr inbounds %struct.kto_worker_t, ptr %6, i64 %20, i32 2
  store i32 -1, ptr %21, align 8, !tbaa !39
  %22 = add nuw nsw i64 %13, 4
  %23 = add i64 %14, 4
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %25, label %12, !llvm.loop !47

25:                                               ; preds = %12, %4
  %26 = phi i64 [ 0, %4 ], [ %22, %12 ]
  %27 = icmp eq i64 %8, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %32, %28 ], [ %26, %25 ]
  %30 = phi i64 [ %33, %28 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.kto_worker_t, ptr %6, i64 %29, i32 2
  store i32 -1, ptr %31, align 8, !tbaa !39
  %32 = add nuw nsw i64 %29, 1
  %33 = add i64 %30, 1
  %34 = icmp eq i64 %33, %8
  br i1 %34, label %35, label %28, !llvm.loop !48

35:                                               ; preds = %25, %28, %1
  %36 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 9
  %37 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %36) #9
  %38 = load i32, ptr %0, align 8, !tbaa !29
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 3
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %48, %42 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !30
  %45 = getelementptr inbounds i64, ptr %44, i64 %43
  %46 = load i64, ptr %45, align 8, !tbaa !22
  %47 = tail call i32 @pthread_join(i64 noundef %46, ptr noundef null) #9
  %48 = add nuw nsw i64 %43, 1
  %49 = load i32, ptr %0, align 8, !tbaa !29
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %42, label %52, !llvm.loop !49

52:                                               ; preds = %42, %35
  %53 = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %36) #9
  %54 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 8
  %55 = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %54) #9
  %56 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 7
  %57 = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %56) #9
  %58 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !31
  tail call void @free(ptr noundef %59) #9
  %60 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !30
  tail call void @free(ptr noundef %61) #9
  tail call void @free(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @kt_forpool(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !29
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 2
  store i64 %3, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 6
  store ptr %2, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 1
  store i32 %7, ptr %13, align 4, !tbaa !27
  %14 = zext nneg i32 %7 to i64
  %15 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = and i64 %14, 1
  %18 = and i64 %14, 2147483646
  br label %19

19:                                               ; preds = %19, %9
  %20 = phi i64 [ 0, %9 ], [ %27, %19 ]
  %21 = phi i64 [ 0, %9 ], [ %28, %19 ]
  %22 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %20, i32 1
  store i64 %20, ptr %22, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %20, i32 2
  store i32 1, ptr %23, align 8, !tbaa !39
  %24 = or disjoint i64 %20, 1
  %25 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %24, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %24, i32 2
  store i32 1, ptr %26, align 8, !tbaa !39
  %27 = add nuw nsw i64 %20, 2
  %28 = add i64 %21, 2
  %29 = icmp eq i64 %28, %18
  br i1 %29, label %30, label %19, !llvm.loop !50

30:                                               ; preds = %19
  %31 = icmp eq i64 %17, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %27, i32 1
  store i64 %27, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.kto_worker_t, ptr %16, i64 %27, i32 2
  store i32 1, ptr %34, align 8, !tbaa !39
  br label %35

35:                                               ; preds = %30, %32
  %36 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 7
  %37 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %36) #9
  %38 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 9
  %39 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %38) #9
  %40 = load i32, ptr %13, align 4, !tbaa !27
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.kt_forpool_t, ptr %0, i64 0, i32 8
  br label %44

44:                                               ; preds = %42, %44
  %45 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %43, ptr noundef nonnull %36) #9
  %46 = load i32, ptr %13, align 4, !tbaa !27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44, !llvm.loop !51

48:                                               ; preds = %44, %35
  %49 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %36) #9
  br label %56

50:                                               ; preds = %6, %4
  %51 = icmp sgt i64 %3, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50, %52
  %53 = phi i64 [ %54, %52 ], [ 0, %50 ]
  tail call void %1(ptr noundef %2, i64 noundef %53, i32 noundef 0) #9
  %54 = add nuw nsw i64 %53, 1
  %55 = icmp eq i64 %54, %3
  br i1 %55, label %56, label %52, !llvm.loop !52

56:                                               ; preds = %52, %50, %48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @kt_pipeline(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ktp_t, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
  %6 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 4
  store i32 %3, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !56
  store ptr %2, ptr %5, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 2
  store i64 0, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 6
  %12 = call i32 @pthread_mutex_init(ptr noundef nonnull %11, ptr noundef null) #9
  %13 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 7
  %14 = call i32 @pthread_cond_init(ptr noundef nonnull %13, ptr noundef null) #9
  %15 = zext nneg i32 %6 to i64
  %16 = shl nuw nsw i64 %15, 5
  %17 = alloca i8, i64 %16, align 16
  %18 = getelementptr inbounds %struct.ktp_t, ptr %5, i64 0, i32 5
  store ptr %17, ptr %18, align 8, !tbaa !59
  %19 = load i64, ptr %10, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %4, %20
  %21 = phi i64 [ 0, %4 ], [ %28, %20 ]
  %22 = phi i64 [ %19, %4 ], [ %26, %20 ]
  %23 = getelementptr inbounds %struct.ktp_worker_t, ptr %17, i64 %21
  %24 = getelementptr inbounds %struct.ktp_worker_t, ptr %17, i64 %21, i32 2
  store i32 0, ptr %24, align 16, !tbaa !60
  store ptr %5, ptr %23, align 16, !tbaa !62
  %25 = getelementptr inbounds %struct.ktp_worker_t, ptr %17, i64 %21, i32 3
  store ptr null, ptr %25, align 8, !tbaa !63
  %26 = add nsw i64 %22, 1
  %27 = getelementptr inbounds %struct.ktp_worker_t, ptr %17, i64 %21, i32 1
  store i64 %22, ptr %27, align 8, !tbaa !64
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %30, label %20, !llvm.loop !65

30:                                               ; preds = %20
  store i64 %26, ptr %10, align 8, !tbaa !58
  %31 = shl nuw nsw i64 %15, 3
  %32 = alloca i8, i64 %31, align 16
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %39, %33 ]
  %35 = getelementptr inbounds i64, ptr %32, i64 %34
  %36 = load ptr, ptr %18, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.ktp_worker_t, ptr %36, i64 %34
  %38 = call i32 @pthread_create(ptr noundef nonnull %35, ptr noundef null, ptr noundef nonnull @ktp_worker, ptr noundef %37) #9
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, %15
  br i1 %40, label %41, label %33, !llvm.loop !66

41:                                               ; preds = %33, %41
  %42 = phi i64 [ %46, %41 ], [ 0, %33 ]
  %43 = getelementptr inbounds i64, ptr %32, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !22
  %45 = call i32 @pthread_join(i64 noundef %44, ptr noundef null) #9
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %48, label %41, !llvm.loop !67

48:                                               ; preds = %41
  %49 = call i32 @pthread_mutex_destroy(ptr noundef nonnull %11) #9
  %50 = call i32 @pthread_cond_destroy(ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef ptr @ktp_worker(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.ktp_worker_t, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 4
  %5 = load i32, ptr %3, align 8, !tbaa !60
  %6 = load i32, ptr %4, align 4, !tbaa !55
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %83

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 6
  %10 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 5
  %12 = getelementptr inbounds %struct.ktp_worker_t, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 7
  %14 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 1
  %15 = getelementptr inbounds %struct.ktp_worker_t, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.ktp_t, ptr %2, i64 0, i32 2
  br label %17

17:                                               ; preds = %8, %77
  %18 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %9) #9
  br label %19

19:                                               ; preds = %47, %17
  %20 = load i32, ptr %10, align 8, !tbaa !53
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load ptr, ptr %11, align 8, !tbaa !59
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %22, %39
  %26 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %27 = getelementptr inbounds %struct.ktp_worker_t, ptr %23, i64 %26
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ktp_worker_t, ptr %23, i64 %26, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !60
  %32 = load i32, ptr %3, align 8, !tbaa !60
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ktp_worker_t, ptr %23, i64 %26, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !64
  %37 = load i64, ptr %12, align 8, !tbaa !64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %29, %34, %25
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %49, label %25, !llvm.loop !68

42:                                               ; preds = %34
  %43 = trunc i64 %26 to i32
  br label %44

44:                                               ; preds = %42, %19
  %45 = phi i32 [ 0, %19 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, %20
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %13, ptr noundef nonnull %9) #9
  br label %19

49:                                               ; preds = %44, %39
  %50 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %9) #9
  %51 = load ptr, ptr %14, align 8, !tbaa !56
  %52 = load ptr, ptr %2, align 8, !tbaa !57
  %53 = load i32, ptr %3, align 8, !tbaa !60
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %15, align 8, !tbaa !63
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi ptr [ %56, %55 ], [ null, %49 ]
  %59 = tail call ptr %51(ptr noundef %52, i32 noundef %53, ptr noundef %58) #9
  store ptr %59, ptr %15, align 8, !tbaa !63
  %60 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %9) #9
  %61 = load i32, ptr %3, align 8, !tbaa !60
  %62 = load i32, ptr %4, align 4, !tbaa !55
  %63 = add nsw i32 %62, -1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr %15, align 8, !tbaa !63
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %57
  %69 = add nsw i32 %61, 1
  %70 = srem i32 %69, %62
  br label %71

71:                                               ; preds = %65, %68
  %72 = phi i32 [ %70, %68 ], [ %62, %65 ]
  store i32 %72, ptr %3, align 8, !tbaa !60
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, ptr %16, align 8, !tbaa !58
  %76 = add nsw i64 %75, 1
  store i64 %76, ptr %16, align 8, !tbaa !58
  store i64 %75, ptr %12, align 8, !tbaa !64
  br label %77

77:                                               ; preds = %74, %71
  %78 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %13) #9
  %79 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %9) #9
  %80 = load i32, ptr %3, align 8, !tbaa !60
  %81 = load i32, ptr %4, align 4, !tbaa !55
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %17, label %83, !llvm.loop !69

83:                                               ; preds = %77, %1
  tail call void @pthread_exit(ptr noundef null) #10
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !11, i64 24}
!6 = !{!"kt_for_t", !7, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !11, i64 32}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !10, i64 8}
!15 = !{!6, !11, i64 16}
!16 = !{!17, !11, i64 0}
!17 = !{!"", !11, i64 0, !10, i64 8}
!18 = !{!17, !10, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!10, !10, i64 0}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = !{!28, !7, i64 4}
!28 = !{!"kt_forpool_t", !7, i64 0, !7, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 88, !8, i64 136}
!29 = !{!28, !7, i64 0}
!30 = !{!28, !11, i64 16}
!31 = !{!28, !11, i64 24}
!32 = !{!33, !11, i64 0}
!33 = !{!"", !11, i64 0, !10, i64 8, !7, i64 16}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = !{!33, !7, i64 16}
!40 = distinct !{!40, !20}
!41 = !{!28, !10, i64 8}
!42 = !{!28, !11, i64 32}
!43 = !{!28, !11, i64 40}
!44 = !{!33, !10, i64 8}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !36}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = !{!54, !7, i64 24}
!54 = !{!"ktp_t", !11, i64 0, !11, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !11, i64 32, !8, i64 40, !8, i64 80}
!55 = !{!54, !7, i64 28}
!56 = !{!54, !11, i64 8}
!57 = !{!54, !11, i64 0}
!58 = !{!54, !10, i64 16}
!59 = !{!54, !11, i64 32}
!60 = !{!61, !7, i64 16}
!61 = !{!"", !11, i64 0, !10, i64 8, !7, i64 16, !11, i64 24}
!62 = !{!61, !11, i64 0}
!63 = !{!61, !11, i64 24}
!64 = !{!61, !10, i64 8}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
