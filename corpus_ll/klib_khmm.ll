; ModuleID = 'corpus_src/klib/khmm.c'
source_filename = "corpus_src/klib/khmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hmm_par_t = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.hmm_data_t = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hmm_exp_t = type { i32, i32, double, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"m > 0 && n > 0\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"corpus_src/klib/khmm.c\00", align 1
@__PRETTY_FUNCTION__.hmm_new_par = private unnamed_addr constant [33 x i8] c"hmm_par_t *hmm_new_par(int, int)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@__PRETTY_FUNCTION__.hmm_new_exp = private unnamed_addr constant [42 x i8] c"hmm_exp_t *hmm_new_exp(const hmm_par_t *)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"max_l >= 0\00", align 1
@__PRETTY_FUNCTION__.hmm_Viterbi = private unnamed_addr constant [52 x i8] c"double hmm_Viterbi(const hmm_par_t *, hmm_data_t *)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hp && hd\00", align 1
@__PRETTY_FUNCTION__.hmm_forward = private unnamed_addr constant [50 x i8] c"void hmm_forward(const hmm_par_t *, hmm_data_t *)\00", align 1
@__PRETTY_FUNCTION__.hmm_pre_backward = private unnamed_addr constant [35 x i8] c"void hmm_pre_backward(hmm_par_t *)\00", align 1
@__PRETTY_FUNCTION__.hmm_backward = private unnamed_addr constant [51 x i8] c"void hmm_backward(const hmm_par_t *, hmm_data_t *)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"hd->status & HMM_FORWARD\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"++ Underflow may have happened (%lg).\0A\00", align 1
@__PRETTY_FUNCTION__.hmm_lk = private unnamed_addr constant [34 x i8] c"double hmm_lk(const hmm_data_t *)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"hd->status && HMM_BACKWARD\00", align 1
@__PRETTY_FUNCTION__.hmm_post_decode = private unnamed_addr constant [54 x i8] c"void hmm_post_decode(const hmm_par_t *, hmm_data_t *)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"max_k >= 0\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"hd->status & HMM_BACKWARD\00", align 1
@__PRETTY_FUNCTION__.hmm_expect = private unnamed_addr constant [61 x i8] c"hmm_exp_t *hmm_expect(const hmm_par_t *, const hmm_data_t *)\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"he0->m == he1->m && he0->n == he1->n\00", align 1
@__PRETTY_FUNCTION__.hmm_add_expect = private unnamed_addr constant [52 x i8] c"void hmm_add_expect(const hmm_exp_t *, hmm_exp_t *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @hmm_new_par(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 14, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_new_par) #15
  unreachable

7:                                                ; preds = %2
  %8 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #16
  store i32 %0, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.hmm_par_t, ptr %8, i64 0, i32 1
  store i32 %1, ptr %9, align 4, !tbaa !11
  %10 = zext nneg i32 %1 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %12 = getelementptr inbounds %struct.hmm_par_t, ptr %8, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !12
  %13 = shl nuw nsw i64 %10, 3
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  br label %15

15:                                               ; preds = %15, %7
  %16 = phi i64 [ 0, %7 ], [ %19, %15 ]
  %17 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %18 = getelementptr inbounds ptr, ptr %14, i64 %16
  store ptr %17, ptr %18, align 8, !tbaa !13
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %15, !llvm.loop !14

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hmm_par_t, ptr %8, i64 0, i32 2
  store ptr %14, ptr %22, align 8, !tbaa !16
  %23 = add nuw nsw i32 %0, 1
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #17
  %27 = zext i32 %23 to i64
  br label %28

28:                                               ; preds = %28, %21
  %29 = phi i64 [ 0, %21 ], [ %32, %28 ]
  %30 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %31 = getelementptr inbounds ptr, ptr %26, i64 %29
  store ptr %30, ptr %31, align 8, !tbaa !13
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %27
  br i1 %33, label %34, label %28, !llvm.loop !14

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.hmm_par_t, ptr %8, i64 0, i32 3
  store ptr %26, ptr %35, align 8, !tbaa !17
  %36 = mul nsw i32 %23, %1
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 3
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #17
  %40 = zext i32 %36 to i64
  br label %41

41:                                               ; preds = %41, %34
  %42 = phi i64 [ 0, %34 ], [ %45, %41 ]
  %43 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %44 = getelementptr inbounds ptr, ptr %39, i64 %42
  store ptr %43, ptr %44, align 8, !tbaa !13
  %45 = add nuw nsw i64 %42, 1
  %46 = icmp eq i64 %45, %40
  br i1 %46, label %47, label %41, !llvm.loop !14

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.hmm_par_t, ptr %8, i64 0, i32 4
  store ptr %39, ptr %48, align 8, !tbaa !18
  %49 = zext nneg i32 %0 to i64
  %50 = getelementptr inbounds ptr, ptr %26, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !13
  %52 = icmp ult i32 %1, 4
  br i1 %52, label %63, label %53

53:                                               ; preds = %47
  %54 = and i64 %10, 2147483644
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %59, %55 ]
  %57 = getelementptr inbounds double, ptr %51, i64 %56
  %58 = getelementptr inbounds double, ptr %57, i64 2
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %57, align 8, !tbaa !19
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %58, align 8, !tbaa !19
  %59 = add nuw i64 %56, 4
  %60 = icmp eq i64 %59, %54
  br i1 %60, label %61, label %55, !llvm.loop !21

61:                                               ; preds = %55
  %62 = icmp eq i64 %54, %10
  br i1 %62, label %70, label %63

63:                                               ; preds = %47, %61
  %64 = phi i64 [ 0, %47 ], [ %54, %61 ]
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ %68, %65 ], [ %64, %63 ]
  %67 = getelementptr inbounds double, ptr %51, i64 %66
  store double 1.000000e+00, ptr %67, align 8, !tbaa !19
  %68 = add nuw nsw i64 %66, 1
  %69 = icmp eq i64 %68, %10
  br i1 %69, label %70, label %65, !llvm.loop !24

70:                                               ; preds = %65, %61
  ret ptr %8
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @hmm_delete_par(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  br label %15

9:                                                ; preds = %15, %3
  %10 = phi i32 [ 0, %3 ], [ %21, %15 ]
  %11 = load i32, ptr %0, align 8, !tbaa !5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  br label %34

15:                                               ; preds = %7, %15
  %16 = phi i64 [ 0, %7 ], [ %20, %15 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !16
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  tail call void @free(ptr noundef %19) #18
  %20 = add nuw nsw i64 %16, 1
  %21 = load i32, ptr %4, align 4, !tbaa !11
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %9, label %15, !llvm.loop !25

24:                                               ; preds = %34
  %25 = load i32, ptr %4, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %25, %24 ], [ %10, %9 ]
  %28 = phi i32 [ %40, %24 ], [ %11, %9 ]
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %29, %27
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 4
  br label %43

34:                                               ; preds = %13, %34
  %35 = phi i64 [ 0, %13 ], [ %39, %34 ]
  %36 = load ptr, ptr %14, align 8, !tbaa !17
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  tail call void @free(ptr noundef %38) #18
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %0, align 8, !tbaa !5
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %34, label %24, !llvm.loop !26

43:                                               ; preds = %32, %43
  %44 = phi i64 [ 0, %32 ], [ %48, %43 ]
  %45 = load ptr, ptr %33, align 8, !tbaa !18
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  tail call void @free(ptr noundef %47) #18
  %48 = add nuw nsw i64 %44, 1
  %49 = load i32, ptr %0, align 8, !tbaa !5
  %50 = add nsw i32 %49, 1
  %51 = load i32, ptr %4, align 4, !tbaa !11
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %43, label %55, !llvm.loop !27

55:                                               ; preds = %43, %26
  %56 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  tail call void @free(ptr noundef %57) #18
  %58 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  tail call void @free(ptr noundef %59) #18
  %60 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !12
  tail call void @free(ptr noundef %61) #18
  %62 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  tail call void @free(ptr noundef %63) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %64

64:                                               ; preds = %1, %55
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local noalias noundef ptr @hmm_new_data(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 {
  %4 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #16
  store i32 %0, ptr %4, align 8, !tbaa !28
  %5 = add nsw i32 %0, 1
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #17
  %8 = getelementptr inbounds %struct.hmm_data_t, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !30
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = sext i32 %0 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %1, i64 %10, i1 false)
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @hmm_delete_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !28
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %6, %22
  %10 = phi i64 [ 0, %6 ], [ %23, %22 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds ptr, ptr %11, i64 %10
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  tail call void @free(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %13, %9
  %17 = load ptr, ptr %8, align 8, !tbaa !32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds ptr, ptr %17, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  tail call void @free(ptr noundef %21) #18
  br label %22

22:                                               ; preds = %16, %19
  %23 = add nuw nsw i64 %10, 1
  %24 = load i32, ptr %0, align 8, !tbaa !28
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %10, %25
  br i1 %26, label %9, label %27, !llvm.loop !33

27:                                               ; preds = %22, %3
  %28 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  tail call void @free(ptr noundef %29) #18
  %30 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  tail call void @free(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  tail call void @free(ptr noundef %33) #18
  %34 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  tail call void @free(ptr noundef %35) #18
  %36 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  tail call void @free(ptr noundef %37) #18
  %38 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void @free(ptr noundef %39) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %40

40:                                               ; preds = %1, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @hmm_new_exp(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_new_exp) #15
  unreachable

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #16
  %6 = load i32, ptr %0, align 8, !tbaa !5
  store i32 %6, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.hmm_exp_t, ptr %5, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !39
  %10 = sext i32 %8 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %12 = getelementptr inbounds %struct.hmm_exp_t, ptr %5, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !40
  %13 = shl nsw i64 %10, 3
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = zext i32 %8 to i64
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %22, %18 ]
  %20 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %21 = getelementptr inbounds ptr, ptr %14, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !13
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %17
  br i1 %23, label %24, label %18, !llvm.loop !14

24:                                               ; preds = %18, %4
  %25 = getelementptr inbounds %struct.hmm_exp_t, ptr %5, i64 0, i32 3
  store ptr %14, ptr %25, align 8, !tbaa !41
  %26 = add nsw i32 %6, 1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #17
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = zext i32 %26 to i64
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 8) #16
  %36 = getelementptr inbounds ptr, ptr %29, i64 %34
  store ptr %35, ptr %36, align 8, !tbaa !13
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !14

39:                                               ; preds = %33, %24
  %40 = getelementptr inbounds %struct.hmm_exp_t, ptr %5, i64 0, i32 4
  store ptr %29, ptr %40, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @hmm_delete_exp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 3
  br label %14

9:                                                ; preds = %14, %3
  %10 = load i32, ptr %0, align 8, !tbaa !37
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 4
  br label %23

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 0, %7 ], [ %19, %14 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !41
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  tail call void @free(ptr noundef %18) #18
  %19 = add nuw nsw i64 %15, 1
  %20 = load i32, ptr %4, align 4, !tbaa !39
  %21 = zext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %9, label %14, !llvm.loop !43

23:                                               ; preds = %12, %23
  %24 = phi i64 [ 0, %12 ], [ %28, %23 ]
  %25 = load ptr, ptr %13, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  tail call void @free(ptr noundef %27) #18
  %28 = add nuw nsw i64 %24, 1
  %29 = load i32, ptr %0, align 8, !tbaa !37
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %24, %30
  br i1 %31, label %23, label %32, !llvm.loop !44

32:                                               ; preds = %23, %9
  %33 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  tail call void @free(ptr noundef %34) #18
  %35 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  tail call void @free(ptr noundef %36) #18
  %37 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  tail call void @free(ptr noundef %38) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %39

39:                                               ; preds = %1, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @hmm_Viterbi(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #18
  br label %7

7:                                                ; preds = %6, %2
  %8 = load i32, ptr %1, align 8, !tbaa !28
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 4) #16
  store ptr %11, ptr %3, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #17
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %7
  %19 = zext i32 %13 to i64
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %24, %20 ]
  %22 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #16
  %23 = getelementptr inbounds ptr, ptr %16, i64 %21
  store ptr %22, ptr %23, align 8, !tbaa !13
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %19
  br i1 %25, label %26, label %20, !llvm.loop !14

26:                                               ; preds = %20, %7
  %27 = load i32, ptr %0, align 8, !tbaa !5
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #17
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = zext i32 %28 to i64
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %39, %35 ]
  %37 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #16
  %38 = getelementptr inbounds ptr, ptr %31, i64 %36
  store ptr %37, ptr %38, align 8, !tbaa !13
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !14

41:                                               ; preds = %35, %26
  %42 = shl nsw i64 %10, 3
  %43 = tail call noalias ptr @malloc(i64 noundef %42) #17
  %44 = icmp eq i32 %9, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = zext i32 %9 to i64
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %51, %47 ]
  %49 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 4) #16
  %50 = getelementptr inbounds ptr, ptr %43, i64 %48
  store ptr %49, ptr %50, align 8, !tbaa !13
  %51 = add nuw nsw i64 %48, 1
  %52 = icmp eq i64 %51, %46
  br i1 %52, label %53, label %47, !llvm.loop !14

53:                                               ; preds = %47, %41
  %54 = tail call noalias ptr @malloc(i64 noundef %15) #17
  %55 = tail call noalias ptr @malloc(i64 noundef %15) #17
  br i1 %17, label %67, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  br label %58

58:                                               ; preds = %56, %86
  %59 = phi i32 [ 1, %56 ], [ %87, %86 ]
  %60 = phi i64 [ 0, %56 ], [ %88, %86 ]
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds ptr, ptr %16, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  br label %73

65:                                               ; preds = %86
  %66 = load i32, ptr %0, align 8, !tbaa !5
  br label %67

67:                                               ; preds = %65, %53
  %68 = phi i32 [ %87, %65 ], [ 0, %53 ]
  %69 = phi i32 [ %66, %65 ], [ %27, %53 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  br label %91

73:                                               ; preds = %62, %73
  %74 = phi i64 [ 0, %62 ], [ %82, %73 ]
  %75 = load ptr, ptr %57, align 8, !tbaa !16
  %76 = getelementptr inbounds ptr, ptr %75, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !13
  %78 = getelementptr inbounds double, ptr %77, i64 %60
  %79 = load double, ptr %78, align 8, !tbaa !19
  %80 = tail call double @log(double noundef %79) #18
  %81 = getelementptr inbounds double, ptr %64, i64 %74
  store double %80, ptr %81, align 8, !tbaa !19
  %82 = add nuw nsw i64 %74, 1
  %83 = load i32, ptr %12, align 4, !tbaa !11
  %84 = zext i32 %83 to i64
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %73, !llvm.loop !45

86:                                               ; preds = %73, %58
  %87 = phi i32 [ 0, %58 ], [ %83, %73 ]
  %88 = add nuw nsw i64 %60, 1
  %89 = zext i32 %87 to i64
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %65, label %58, !llvm.loop !46

91:                                               ; preds = %71, %121
  %92 = phi i32 [ %68, %71 ], [ %122, %121 ]
  %93 = phi i32 [ %69, %71 ], [ %123, %121 ]
  %94 = phi i32 [ %68, %71 ], [ %124, %121 ]
  %95 = phi i64 [ 0, %71 ], [ %125, %121 ]
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds ptr, ptr %31, i64 %95
  %99 = load ptr, ptr %98, align 8, !tbaa !13
  br label %106

100:                                              ; preds = %121
  %101 = sext i32 %123 to i64
  br label %102

102:                                              ; preds = %100, %67
  %103 = phi i32 [ %68, %67 ], [ %122, %100 ]
  %104 = phi i64 [ 0, %67 ], [ %101, %100 ]
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %137, label %128

106:                                              ; preds = %97, %106
  %107 = phi i64 [ 0, %97 ], [ %115, %106 ]
  %108 = load ptr, ptr %72, align 8, !tbaa !17
  %109 = getelementptr inbounds ptr, ptr %108, i64 %95
  %110 = load ptr, ptr %109, align 8, !tbaa !13
  %111 = getelementptr inbounds double, ptr %110, i64 %107
  %112 = load double, ptr %111, align 8, !tbaa !19
  %113 = tail call double @log(double noundef %112) #18
  %114 = getelementptr inbounds double, ptr %99, i64 %107
  store double %113, ptr %114, align 8, !tbaa !19
  %115 = add nuw nsw i64 %107, 1
  %116 = load i32, ptr %12, align 4, !tbaa !11
  %117 = zext i32 %116 to i64
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %106, !llvm.loop !47

119:                                              ; preds = %106
  %120 = load i32, ptr %0, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %119, %91
  %122 = phi i32 [ %116, %119 ], [ %92, %91 ]
  %123 = phi i32 [ %120, %119 ], [ %93, %91 ]
  %124 = phi i32 [ %116, %119 ], [ 0, %91 ]
  %125 = add nuw nsw i64 %95, 1
  %126 = zext i32 %123 to i64
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %100, label %91, !llvm.loop !48

128:                                              ; preds = %102
  %129 = getelementptr inbounds ptr, ptr %31, i64 %104
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = zext i32 %103 to i64
  %132 = shl nuw nsw i64 %131, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %130, i8 0, i64 %132, i1 false), !tbaa !19
  %133 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %134 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %135 = getelementptr inbounds ptr, ptr %43, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !13
  br label %144

137:                                              ; preds = %144, %102
  %138 = phi i32 [ 0, %102 ], [ %162, %144 ]
  %139 = load i32, ptr %1, align 8, !tbaa !28
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %165, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !30
  br label %177

144:                                              ; preds = %128, %144
  %145 = phi i64 [ 0, %128 ], [ %161, %144 ]
  %146 = load ptr, ptr %133, align 8, !tbaa !30
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !49
  %149 = sext i8 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %31, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !13
  %152 = getelementptr inbounds double, ptr %151, i64 %145
  %153 = load double, ptr %152, align 8, !tbaa !19
  %154 = load ptr, ptr %134, align 8, !tbaa !12
  %155 = getelementptr inbounds double, ptr %154, i64 %145
  %156 = load double, ptr %155, align 8, !tbaa !19
  %157 = tail call double @log(double noundef %156) #18
  %158 = fadd double %153, %157
  %159 = getelementptr inbounds double, ptr %54, i64 %145
  store double %158, ptr %159, align 8, !tbaa !19
  %160 = getelementptr inbounds i32, ptr %136, i64 %145
  store i32 0, ptr %160, align 4, !tbaa !50
  %161 = add nuw nsw i64 %145, 1
  %162 = load i32, ptr %12, align 4, !tbaa !11
  %163 = zext i32 %162 to i64
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %137, label %144, !llvm.loop !51

165:                                              ; preds = %266, %137
  %166 = phi i32 [ %138, %137 ], [ %267, %266 ]
  %167 = phi ptr [ %55, %137 ], [ %182, %266 ]
  %168 = phi ptr [ %54, %137 ], [ %183, %266 ]
  %169 = phi i32 [ %139, %137 ], [ %268, %266 ]
  %170 = icmp eq i32 %166, 0
  br i1 %170, label %312, label %171

171:                                              ; preds = %165
  %172 = zext i32 %166 to i64
  %173 = and i64 %172, 1
  %174 = icmp eq i32 %166, 1
  br i1 %174, label %294, label %175

175:                                              ; preds = %171
  %176 = and i64 %172, 4294967294
  br label %273

177:                                              ; preds = %141, %266
  %178 = phi i32 [ %138, %141 ], [ %267, %266 ]
  %179 = phi i32 [ %139, %141 ], [ %268, %266 ]
  %180 = phi i32 [ %138, %141 ], [ %269, %266 ]
  %181 = phi i64 [ 2, %141 ], [ %270, %266 ]
  %182 = phi ptr [ %54, %141 ], [ %183, %266 ]
  %183 = phi ptr [ %55, %141 ], [ %182, %266 ]
  %184 = getelementptr inbounds i8, ptr %143, i64 %181
  %185 = load i8, ptr %184, align 1, !tbaa !49
  %186 = sext i8 %185 to i64
  %187 = getelementptr inbounds ptr, ptr %31, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !13
  %189 = icmp eq i32 %180, 0
  br i1 %189, label %266, label %190

190:                                              ; preds = %177
  %191 = getelementptr inbounds ptr, ptr %43, i64 %181
  br label %192

192:                                              ; preds = %190, %253
  %193 = phi i64 [ 0, %190 ], [ %260, %253 ]
  %194 = phi i32 [ %180, %190 ], [ %261, %253 ]
  %195 = getelementptr inbounds ptr, ptr %16, i64 %193
  %196 = load ptr, ptr %195, align 8, !tbaa !13
  %197 = icmp eq i32 %194, 0
  br i1 %197, label %252, label %198

198:                                              ; preds = %192
  %199 = zext i32 %194 to i64
  %200 = and i64 %199, 1
  %201 = icmp eq i32 %194, 1
  br i1 %201, label %231, label %202

202:                                              ; preds = %198
  %203 = and i64 %199, 4294967294
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i64 [ 0, %202 ], [ %228, %204 ]
  %206 = phi double [ -1.000000e+300, %202 ], [ %227, %204 ]
  %207 = phi i32 [ -1, %202 ], [ %226, %204 ]
  %208 = phi i64 [ 0, %202 ], [ %229, %204 ]
  %209 = getelementptr inbounds double, ptr %182, i64 %205
  %210 = load double, ptr %209, align 8, !tbaa !19
  %211 = getelementptr inbounds double, ptr %196, i64 %205
  %212 = load double, ptr %211, align 8, !tbaa !19
  %213 = fadd double %210, %212
  %214 = fcmp olt double %206, %213
  %215 = trunc i64 %205 to i32
  %216 = select i1 %214, i32 %215, i32 %207
  %217 = select i1 %214, double %213, double %206
  %218 = or disjoint i64 %205, 1
  %219 = getelementptr inbounds double, ptr %182, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !19
  %221 = getelementptr inbounds double, ptr %196, i64 %218
  %222 = load double, ptr %221, align 8, !tbaa !19
  %223 = fadd double %220, %222
  %224 = fcmp olt double %217, %223
  %225 = trunc i64 %218 to i32
  %226 = select i1 %224, i32 %225, i32 %216
  %227 = select i1 %224, double %223, double %217
  %228 = add nuw nsw i64 %205, 2
  %229 = add i64 %208, 2
  %230 = icmp eq i64 %229, %203
  br i1 %230, label %231, label %204, !llvm.loop !52

231:                                              ; preds = %204, %198
  %232 = phi i32 [ undef, %198 ], [ %226, %204 ]
  %233 = phi double [ undef, %198 ], [ %227, %204 ]
  %234 = phi i64 [ 0, %198 ], [ %228, %204 ]
  %235 = phi double [ -1.000000e+300, %198 ], [ %227, %204 ]
  %236 = phi i32 [ -1, %198 ], [ %226, %204 ]
  %237 = icmp eq i64 %200, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %231
  %239 = getelementptr inbounds double, ptr %182, i64 %234
  %240 = load double, ptr %239, align 8, !tbaa !19
  %241 = getelementptr inbounds double, ptr %196, i64 %234
  %242 = load double, ptr %241, align 8, !tbaa !19
  %243 = fadd double %240, %242
  %244 = fcmp olt double %235, %243
  %245 = trunc i64 %234 to i32
  %246 = select i1 %244, i32 %245, i32 %236
  %247 = select i1 %244, double %243, double %235
  br label %248

248:                                              ; preds = %231, %238
  %249 = phi i32 [ %232, %231 ], [ %246, %238 ]
  %250 = phi double [ %233, %231 ], [ %247, %238 ]
  %251 = icmp sgt i32 %249, -1
  br i1 %251, label %253, label %252

252:                                              ; preds = %192, %248
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_Viterbi) #15
  unreachable

253:                                              ; preds = %248
  %254 = getelementptr inbounds double, ptr %188, i64 %193
  %255 = load double, ptr %254, align 8, !tbaa !19
  %256 = fadd double %250, %255
  %257 = getelementptr inbounds double, ptr %183, i64 %193
  store double %256, ptr %257, align 8, !tbaa !19
  %258 = load ptr, ptr %191, align 8, !tbaa !13
  %259 = getelementptr inbounds i32, ptr %258, i64 %193
  store i32 %249, ptr %259, align 4, !tbaa !50
  %260 = add nuw i64 %193, 1
  %261 = load i32, ptr %12, align 4, !tbaa !11
  %262 = zext i32 %261 to i64
  %263 = icmp eq i64 %260, %262
  br i1 %263, label %264, label %192, !llvm.loop !53

264:                                              ; preds = %253
  %265 = load i32, ptr %1, align 8, !tbaa !28
  br label %266

266:                                              ; preds = %264, %177
  %267 = phi i32 [ %261, %264 ], [ %178, %177 ]
  %268 = phi i32 [ %265, %264 ], [ %179, %177 ]
  %269 = phi i32 [ %261, %264 ], [ 0, %177 ]
  %270 = add nuw nsw i64 %181, 1
  %271 = sext i32 %268 to i64
  %272 = icmp slt i64 %181, %271
  br i1 %272, label %177, label %165, !llvm.loop !54

273:                                              ; preds = %273, %175
  %274 = phi i64 [ 0, %175 ], [ %291, %273 ]
  %275 = phi double [ -1.000000e+300, %175 ], [ %290, %273 ]
  %276 = phi i32 [ -1, %175 ], [ %289, %273 ]
  %277 = phi i64 [ 0, %175 ], [ %292, %273 ]
  %278 = getelementptr inbounds double, ptr %168, i64 %274
  %279 = load double, ptr %278, align 8, !tbaa !19
  %280 = fcmp olt double %275, %279
  %281 = trunc i64 %274 to i32
  %282 = select i1 %280, i32 %281, i32 %276
  %283 = select i1 %280, double %279, double %275
  %284 = or disjoint i64 %274, 1
  %285 = getelementptr inbounds double, ptr %168, i64 %284
  %286 = load double, ptr %285, align 8, !tbaa !19
  %287 = fcmp olt double %283, %286
  %288 = trunc i64 %284 to i32
  %289 = select i1 %287, i32 %288, i32 %282
  %290 = select i1 %287, double %286, double %283
  %291 = add nuw nsw i64 %274, 2
  %292 = add i64 %277, 2
  %293 = icmp eq i64 %292, %176
  br i1 %293, label %294, label %273, !llvm.loop !55

294:                                              ; preds = %273, %171
  %295 = phi i32 [ undef, %171 ], [ %289, %273 ]
  %296 = phi double [ undef, %171 ], [ %290, %273 ]
  %297 = phi i64 [ 0, %171 ], [ %291, %273 ]
  %298 = phi double [ -1.000000e+300, %171 ], [ %290, %273 ]
  %299 = phi i32 [ -1, %171 ], [ %289, %273 ]
  %300 = icmp eq i64 %173, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %294
  %302 = getelementptr inbounds double, ptr %168, i64 %297
  %303 = load double, ptr %302, align 8, !tbaa !19
  %304 = fcmp olt double %298, %303
  %305 = trunc i64 %297 to i32
  %306 = select i1 %304, i32 %305, i32 %299
  %307 = select i1 %304, double %303, double %298
  br label %308

308:                                              ; preds = %294, %301
  %309 = phi i32 [ %295, %294 ], [ %306, %301 ]
  %310 = phi double [ %296, %294 ], [ %307, %301 ]
  %311 = icmp sgt i32 %309, -1
  br i1 %311, label %313, label %312

312:                                              ; preds = %165, %308
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_Viterbi) #15
  unreachable

313:                                              ; preds = %308
  %314 = load ptr, ptr %3, align 8, !tbaa !35
  %315 = sext i32 %169 to i64
  %316 = getelementptr inbounds i32, ptr %314, i64 %315
  store i32 %309, ptr %316, align 4, !tbaa !50
  %317 = load i32, ptr %1, align 8, !tbaa !28
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %340

319:                                              ; preds = %313
  %320 = zext nneg i32 %317 to i64
  %321 = and i64 %320, 3
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %337, label %323

323:                                              ; preds = %319, %323
  %324 = phi i64 [ %334, %323 ], [ %320, %319 ]
  %325 = phi i64 [ %335, %323 ], [ 0, %319 ]
  %326 = getelementptr inbounds ptr, ptr %43, i64 %324
  %327 = load ptr, ptr %326, align 8, !tbaa !13
  %328 = getelementptr inbounds i32, ptr %314, i64 %324
  %329 = load i32, ptr %328, align 4, !tbaa !50
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, ptr %327, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !50
  %333 = getelementptr i32, ptr %328, i64 -1
  store i32 %332, ptr %333, align 4, !tbaa !50
  %334 = add nsw i64 %324, -1
  %335 = add i64 %325, 1
  %336 = icmp eq i64 %335, %321
  br i1 %336, label %337, label %323, !llvm.loop !56

337:                                              ; preds = %323, %319
  %338 = phi i64 [ %320, %319 ], [ %334, %323 ]
  %339 = icmp ult i32 %317, 4
  br i1 %339, label %340, label %343

340:                                              ; preds = %337, %343, %313
  %341 = load i32, ptr %12, align 4, !tbaa !11
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %382, label %385

343:                                              ; preds = %337, %343
  %344 = phi i64 [ %380, %343 ], [ %338, %337 ]
  %345 = getelementptr inbounds ptr, ptr %43, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !13
  %347 = getelementptr inbounds i32, ptr %314, i64 %344
  %348 = load i32, ptr %347, align 4, !tbaa !50
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, ptr %346, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !50
  %352 = getelementptr i32, ptr %347, i64 -1
  store i32 %351, ptr %352, align 4, !tbaa !50
  %353 = add nsw i64 %344, -1
  %354 = getelementptr inbounds ptr, ptr %43, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !13
  %356 = getelementptr inbounds i32, ptr %314, i64 %353
  %357 = load i32, ptr %356, align 4, !tbaa !50
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, ptr %355, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !50
  %361 = getelementptr i32, ptr %356, i64 -1
  store i32 %360, ptr %361, align 4, !tbaa !50
  %362 = add nsw i64 %344, -2
  %363 = getelementptr inbounds ptr, ptr %43, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !13
  %365 = getelementptr inbounds i32, ptr %314, i64 %362
  %366 = load i32, ptr %365, align 4, !tbaa !50
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, ptr %364, i64 %367
  %369 = load i32, ptr %368, align 4, !tbaa !50
  %370 = getelementptr i32, ptr %365, i64 -1
  store i32 %369, ptr %370, align 4, !tbaa !50
  %371 = add nsw i64 %344, -3
  %372 = getelementptr inbounds ptr, ptr %43, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !13
  %374 = getelementptr inbounds i32, ptr %314, i64 %371
  %375 = load i32, ptr %374, align 4, !tbaa !50
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %373, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !50
  %379 = getelementptr i32, ptr %374, i64 -1
  store i32 %378, ptr %379, align 4, !tbaa !50
  %380 = add nsw i64 %344, -4
  %381 = icmp ugt i64 %371, 1
  br i1 %381, label %343, label %340, !llvm.loop !58

382:                                              ; preds = %385, %340
  %383 = load i32, ptr %0, align 8, !tbaa !5
  %384 = icmp sgt i32 %383, 0
  br i1 %384, label %396, label %393

385:                                              ; preds = %340, %385
  %386 = phi i64 [ %389, %385 ], [ 0, %340 ]
  %387 = getelementptr inbounds ptr, ptr %16, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !13
  tail call void @free(ptr noundef %388) #18
  %389 = add nuw nsw i64 %386, 1
  %390 = load i32, ptr %12, align 4, !tbaa !11
  %391 = zext i32 %390 to i64
  %392 = icmp eq i64 %389, %391
  br i1 %392, label %382, label %385, !llvm.loop !59

393:                                              ; preds = %396, %382
  %394 = load i32, ptr %1, align 8, !tbaa !28
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %412, label %404

396:                                              ; preds = %382, %396
  %397 = phi i64 [ %400, %396 ], [ 0, %382 ]
  %398 = getelementptr inbounds ptr, ptr %31, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !13
  tail call void @free(ptr noundef %399) #18
  %400 = add nuw nsw i64 %397, 1
  %401 = load i32, ptr %0, align 8, !tbaa !5
  %402 = sext i32 %401 to i64
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %396, label %393, !llvm.loop !60

404:                                              ; preds = %393, %404
  %405 = phi i64 [ %408, %404 ], [ 0, %393 ]
  %406 = getelementptr inbounds ptr, ptr %43, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !13
  tail call void @free(ptr noundef %407) #18
  %408 = add nuw nsw i64 %405, 1
  %409 = load i32, ptr %1, align 8, !tbaa !28
  %410 = sext i32 %409 to i64
  %411 = icmp slt i64 %405, %410
  br i1 %411, label %404, label %412, !llvm.loop !61

412:                                              ; preds = %404, %393
  tail call void @free(ptr noundef %16) #18
  tail call void @free(ptr noundef %31) #18
  tail call void @free(ptr noundef %43) #18
  tail call void @free(ptr noundef %168) #18
  tail call void @free(ptr noundef %167) #18
  %413 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 1
  %414 = load i32, ptr %413, align 4, !tbaa !62
  %415 = or i32 %414, 64
  store i32 %415, ptr %413, align 4, !tbaa !62
  ret double %310
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @hmm_forward(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_forward) #15
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = load i32, ptr %1, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %12) #18
  %15 = load i32, ptr %1, align 8, !tbaa !28
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi i32 [ %15, %14 ], [ %10, %7 ]
  %18 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = icmp slt i32 %17, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ %28, %23 ], [ 0, %21 ]
  %25 = load ptr, ptr %18, align 8, !tbaa !31
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  tail call void @free(ptr noundef %27) #18
  %28 = add nuw nsw i64 %24, 1
  %29 = load i32, ptr %1, align 8, !tbaa !28
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %24, %30
  br i1 %31, label %23, label %32, !llvm.loop !63

32:                                               ; preds = %23
  %33 = load ptr, ptr %18, align 8, !tbaa !31
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi ptr [ %33, %32 ], [ %19, %21 ]
  tail call void @free(ptr noundef %35) #18
  %36 = load i32, ptr %1, align 8, !tbaa !28
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi i32 [ %36, %34 ], [ %17, %16 ]
  %39 = add nsw i32 %38, 1
  %40 = load i32, ptr %8, align 4, !tbaa !11
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 3
  %43 = tail call noalias ptr @malloc(i64 noundef %42) #17
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = sext i32 %40 to i64
  %47 = zext i32 %39 to i64
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i64 [ 0, %45 ], [ %52, %48 ]
  %50 = tail call noalias ptr @calloc(i64 noundef %46, i64 noundef 8) #16
  %51 = getelementptr inbounds ptr, ptr %43, i64 %49
  store ptr %50, ptr %51, align 8, !tbaa !13
  %52 = add nuw nsw i64 %49, 1
  %53 = icmp eq i64 %52, %47
  br i1 %53, label %54, label %48, !llvm.loop !14

54:                                               ; preds = %48, %37
  store ptr %43, ptr %18, align 8, !tbaa !31
  %55 = tail call noalias ptr @calloc(i64 noundef %41, i64 noundef 8) #16
  store ptr %55, ptr %11, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !62
  %58 = and i32 %57, -3
  store i32 %58, ptr %56, align 4, !tbaa !62
  %59 = sext i32 %9 to i64
  %60 = shl nsw i64 %59, 3
  %61 = tail call noalias ptr @malloc(i64 noundef %60) #17
  %62 = icmp eq i32 %9, 0
  br i1 %62, label %129, label %63

63:                                               ; preds = %54
  %64 = zext i32 %9 to i64
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %69, %65 ]
  %67 = tail call noalias ptr @calloc(i64 noundef %59, i64 noundef 8) #16
  %68 = getelementptr inbounds ptr, ptr %61, i64 %66
  store ptr %67, ptr %68, align 8, !tbaa !13
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, %64
  br i1 %70, label %71, label %65, !llvm.loop !14

71:                                               ; preds = %65
  br i1 %62, label %129, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  %74 = zext i32 %9 to i64
  %75 = load ptr, ptr %73, align 8, !tbaa !16
  %76 = and i64 %64, 3
  %77 = icmp ult i32 %9, 4
  %78 = and i64 %64, 4294967292
  %79 = icmp eq i64 %76, 0
  br label %80

80:                                               ; preds = %126, %72
  %81 = phi i64 [ 0, %72 ], [ %127, %126 ]
  %82 = getelementptr inbounds ptr, ptr %61, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !13
  br i1 %77, label %113, label %84

84:                                               ; preds = %80, %84
  %85 = phi i64 [ %110, %84 ], [ 0, %80 ]
  %86 = phi i64 [ %111, %84 ], [ 0, %80 ]
  %87 = getelementptr inbounds ptr, ptr %75, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !13
  %89 = getelementptr inbounds double, ptr %88, i64 %81
  %90 = load double, ptr %89, align 8, !tbaa !19
  %91 = getelementptr inbounds double, ptr %83, i64 %85
  store double %90, ptr %91, align 8, !tbaa !19
  %92 = or disjoint i64 %85, 1
  %93 = getelementptr inbounds ptr, ptr %75, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !13
  %95 = getelementptr inbounds double, ptr %94, i64 %81
  %96 = load double, ptr %95, align 8, !tbaa !19
  %97 = getelementptr inbounds double, ptr %83, i64 %92
  store double %96, ptr %97, align 8, !tbaa !19
  %98 = or disjoint i64 %85, 2
  %99 = getelementptr inbounds ptr, ptr %75, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !13
  %101 = getelementptr inbounds double, ptr %100, i64 %81
  %102 = load double, ptr %101, align 8, !tbaa !19
  %103 = getelementptr inbounds double, ptr %83, i64 %98
  store double %102, ptr %103, align 8, !tbaa !19
  %104 = or disjoint i64 %85, 3
  %105 = getelementptr inbounds ptr, ptr %75, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = getelementptr inbounds double, ptr %106, i64 %81
  %108 = load double, ptr %107, align 8, !tbaa !19
  %109 = getelementptr inbounds double, ptr %83, i64 %104
  store double %108, ptr %109, align 8, !tbaa !19
  %110 = add nuw nsw i64 %85, 4
  %111 = add i64 %86, 4
  %112 = icmp eq i64 %111, %78
  br i1 %112, label %113, label %84, !llvm.loop !64

113:                                              ; preds = %84, %80
  %114 = phi i64 [ 0, %80 ], [ %110, %84 ]
  br i1 %79, label %126, label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ %123, %115 ], [ %114, %113 ]
  %117 = phi i64 [ %124, %115 ], [ 0, %113 ]
  %118 = getelementptr inbounds ptr, ptr %75, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !13
  %120 = getelementptr inbounds double, ptr %119, i64 %81
  %121 = load double, ptr %120, align 8, !tbaa !19
  %122 = getelementptr inbounds double, ptr %83, i64 %116
  store double %121, ptr %122, align 8, !tbaa !19
  %123 = add nuw nsw i64 %116, 1
  %124 = add i64 %117, 1
  %125 = icmp eq i64 %124, %76
  br i1 %125, label %126, label %115, !llvm.loop !65

126:                                              ; preds = %115, %113
  %127 = add nuw nsw i64 %81, 1
  %128 = icmp eq i64 %127, %74
  br i1 %128, label %130, label %80, !llvm.loop !66

129:                                              ; preds = %71, %54
  store double 1.000000e+00, ptr %55, align 8, !tbaa !19
  br label %225

130:                                              ; preds = %126
  store double 1.000000e+00, ptr %55, align 8, !tbaa !19
  br i1 %62, label %225, label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %43, align 8, !tbaa !13
  %133 = zext i32 %9 to i64
  %134 = shl nuw nsw i64 %133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %132, i8 0, i64 %134, i1 false), !tbaa !19
  %135 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !12
  %137 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !17
  %139 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !30
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  %142 = getelementptr inbounds ptr, ptr %43, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !13
  %144 = zext i32 %9 to i64
  %145 = and i64 %144, 1
  %146 = icmp eq i32 %9, 1
  br i1 %146, label %149, label %147

147:                                              ; preds = %131
  %148 = and i64 %144, 4294967294
  br label %188

149:                                              ; preds = %188, %131
  %150 = phi double [ undef, %131 ], [ %214, %188 ]
  %151 = phi i64 [ 0, %131 ], [ %215, %188 ]
  %152 = phi double [ 0.000000e+00, %131 ], [ %214, %188 ]
  %153 = icmp eq i64 %145, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds double, ptr %136, i64 %151
  %156 = load double, ptr %155, align 8, !tbaa !19
  %157 = load i8, ptr %141, align 1, !tbaa !49
  %158 = sext i8 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %138, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !13
  %161 = getelementptr inbounds double, ptr %160, i64 %151
  %162 = load double, ptr %161, align 8, !tbaa !19
  %163 = fmul double %156, %162
  %164 = getelementptr inbounds double, ptr %143, i64 %151
  store double %163, ptr %164, align 8, !tbaa !19
  %165 = fadd double %152, %163
  br label %166

166:                                              ; preds = %149, %154
  %167 = phi double [ %150, %149 ], [ %165, %154 ]
  br i1 %62, label %225, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds ptr, ptr %43, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !13
  %171 = zext i32 %9 to i64
  %172 = icmp eq i32 %9, 1
  br i1 %172, label %186, label %173

173:                                              ; preds = %168
  %174 = and i64 %64, 4294967294
  %175 = insertelement <2 x double> poison, double %167, i64 0
  %176 = shufflevector <2 x double> %175, <2 x double> poison, <2 x i32> zeroinitializer
  br label %177

177:                                              ; preds = %177, %173
  %178 = phi i64 [ 0, %173 ], [ %182, %177 ]
  %179 = getelementptr inbounds double, ptr %170, i64 %178
  %180 = load <2 x double>, ptr %179, align 8, !tbaa !19
  %181 = fdiv <2 x double> %180, %176
  store <2 x double> %181, ptr %179, align 8, !tbaa !19
  %182 = add nuw i64 %178, 2
  %183 = icmp eq i64 %182, %174
  br i1 %183, label %184, label %177, !llvm.loop !67

184:                                              ; preds = %177
  %185 = icmp eq i64 %174, %64
  br i1 %185, label %225, label %186

186:                                              ; preds = %168, %184
  %187 = phi i64 [ 0, %168 ], [ %174, %184 ]
  br label %218

188:                                              ; preds = %188, %147
  %189 = phi i64 [ 0, %147 ], [ %215, %188 ]
  %190 = phi double [ 0.000000e+00, %147 ], [ %214, %188 ]
  %191 = phi i64 [ 0, %147 ], [ %216, %188 ]
  %192 = getelementptr inbounds double, ptr %136, i64 %189
  %193 = load double, ptr %192, align 8, !tbaa !19
  %194 = load i8, ptr %141, align 1, !tbaa !49
  %195 = sext i8 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %138, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !13
  %198 = getelementptr inbounds double, ptr %197, i64 %189
  %199 = load double, ptr %198, align 8, !tbaa !19
  %200 = fmul double %193, %199
  %201 = getelementptr inbounds double, ptr %143, i64 %189
  store double %200, ptr %201, align 8, !tbaa !19
  %202 = fadd double %190, %200
  %203 = or disjoint i64 %189, 1
  %204 = getelementptr inbounds double, ptr %136, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !19
  %206 = load i8, ptr %141, align 1, !tbaa !49
  %207 = sext i8 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %138, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !13
  %210 = getelementptr inbounds double, ptr %209, i64 %203
  %211 = load double, ptr %210, align 8, !tbaa !19
  %212 = fmul double %205, %211
  %213 = getelementptr inbounds double, ptr %143, i64 %203
  store double %212, ptr %213, align 8, !tbaa !19
  %214 = fadd double %202, %212
  %215 = add nuw nsw i64 %189, 2
  %216 = add i64 %191, 2
  %217 = icmp eq i64 %216, %148
  br i1 %217, label %149, label %188, !llvm.loop !68

218:                                              ; preds = %186, %218
  %219 = phi i64 [ %223, %218 ], [ %187, %186 ]
  %220 = getelementptr inbounds double, ptr %170, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !19
  %222 = fdiv double %221, %167
  store double %222, ptr %220, align 8, !tbaa !19
  %223 = add nuw nsw i64 %219, 1
  %224 = icmp eq i64 %223, %171
  br i1 %224, label %225, label %218, !llvm.loop !69

225:                                              ; preds = %218, %184, %129, %130, %166
  %226 = phi double [ %167, %166 ], [ 0.000000e+00, %130 ], [ 0.000000e+00, %129 ], [ %167, %184 ], [ %167, %218 ]
  %227 = getelementptr inbounds double, ptr %55, i64 1
  store double %226, ptr %227, align 8, !tbaa !19
  %228 = icmp slt i32 %10, 2
  br i1 %228, label %244, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !17
  %232 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !30
  %234 = zext i32 %9 to i64
  %235 = add nuw i32 %10, 1
  %236 = zext i32 %235 to i64
  %237 = and i64 %234, 3
  %238 = icmp ult i32 %9, 4
  %239 = and i64 %234, 4294967292
  %240 = icmp eq i64 %237, 0
  %241 = icmp eq i32 %9, 1
  %242 = and i64 %234, 4294967294
  %243 = icmp eq i64 %242, %234
  br label %246

244:                                              ; preds = %339, %225
  %245 = icmp eq i32 %40, 0
  br i1 %245, label %354, label %344

246:                                              ; preds = %229, %339
  %247 = phi i64 [ 2, %229 ], [ %342, %339 ]
  %248 = getelementptr inbounds ptr, ptr %43, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !13
  %250 = getelementptr ptr, ptr %248, i64 -1
  %251 = load ptr, ptr %250, align 8, !tbaa !13
  %252 = getelementptr inbounds i8, ptr %233, i64 %247
  %253 = load i8, ptr %252, align 1, !tbaa !49
  %254 = sext i8 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %231, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !13
  br i1 %62, label %339, label %272

257:                                              ; preds = %323
  br i1 %62, label %339, label %258

258:                                              ; preds = %257
  br i1 %241, label %270, label %259

259:                                              ; preds = %258
  %260 = insertelement <2 x double> poison, double %329, i64 0
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> zeroinitializer
  br label %262

262:                                              ; preds = %262, %259
  %263 = phi i64 [ 0, %259 ], [ %267, %262 ]
  %264 = getelementptr inbounds double, ptr %249, i64 %263
  %265 = load <2 x double>, ptr %264, align 8, !tbaa !19
  %266 = fdiv <2 x double> %265, %261
  store <2 x double> %266, ptr %264, align 8, !tbaa !19
  %267 = add nuw i64 %263, 2
  %268 = icmp eq i64 %267, %242
  br i1 %268, label %269, label %262, !llvm.loop !70

269:                                              ; preds = %262
  br i1 %243, label %339, label %270

270:                                              ; preds = %258, %269
  %271 = phi i64 [ 0, %258 ], [ %242, %269 ]
  br label %332

272:                                              ; preds = %246, %323
  %273 = phi i64 [ %330, %323 ], [ 0, %246 ]
  %274 = phi double [ %329, %323 ], [ 0.000000e+00, %246 ]
  %275 = getelementptr inbounds ptr, ptr %61, i64 %273
  %276 = load ptr, ptr %275, align 8, !tbaa !13
  br i1 %238, label %307, label %277

277:                                              ; preds = %272, %277
  %278 = phi i64 [ %304, %277 ], [ 0, %272 ]
  %279 = phi double [ %303, %277 ], [ 0.000000e+00, %272 ]
  %280 = phi i64 [ %305, %277 ], [ 0, %272 ]
  %281 = getelementptr inbounds double, ptr %251, i64 %278
  %282 = load double, ptr %281, align 8, !tbaa !19
  %283 = getelementptr inbounds double, ptr %276, i64 %278
  %284 = load double, ptr %283, align 8, !tbaa !19
  %285 = tail call double @llvm.fmuladd.f64(double %282, double %284, double %279)
  %286 = or disjoint i64 %278, 1
  %287 = getelementptr inbounds double, ptr %251, i64 %286
  %288 = load double, ptr %287, align 8, !tbaa !19
  %289 = getelementptr inbounds double, ptr %276, i64 %286
  %290 = load double, ptr %289, align 8, !tbaa !19
  %291 = tail call double @llvm.fmuladd.f64(double %288, double %290, double %285)
  %292 = or disjoint i64 %278, 2
  %293 = getelementptr inbounds double, ptr %251, i64 %292
  %294 = load double, ptr %293, align 8, !tbaa !19
  %295 = getelementptr inbounds double, ptr %276, i64 %292
  %296 = load double, ptr %295, align 8, !tbaa !19
  %297 = tail call double @llvm.fmuladd.f64(double %294, double %296, double %291)
  %298 = or disjoint i64 %278, 3
  %299 = getelementptr inbounds double, ptr %251, i64 %298
  %300 = load double, ptr %299, align 8, !tbaa !19
  %301 = getelementptr inbounds double, ptr %276, i64 %298
  %302 = load double, ptr %301, align 8, !tbaa !19
  %303 = tail call double @llvm.fmuladd.f64(double %300, double %302, double %297)
  %304 = add nuw nsw i64 %278, 4
  %305 = add i64 %280, 4
  %306 = icmp eq i64 %305, %239
  br i1 %306, label %307, label %277, !llvm.loop !71

307:                                              ; preds = %277, %272
  %308 = phi double [ undef, %272 ], [ %303, %277 ]
  %309 = phi i64 [ 0, %272 ], [ %304, %277 ]
  %310 = phi double [ 0.000000e+00, %272 ], [ %303, %277 ]
  br i1 %240, label %323, label %311

311:                                              ; preds = %307, %311
  %312 = phi i64 [ %320, %311 ], [ %309, %307 ]
  %313 = phi double [ %319, %311 ], [ %310, %307 ]
  %314 = phi i64 [ %321, %311 ], [ 0, %307 ]
  %315 = getelementptr inbounds double, ptr %251, i64 %312
  %316 = load double, ptr %315, align 8, !tbaa !19
  %317 = getelementptr inbounds double, ptr %276, i64 %312
  %318 = load double, ptr %317, align 8, !tbaa !19
  %319 = tail call double @llvm.fmuladd.f64(double %316, double %318, double %313)
  %320 = add nuw nsw i64 %312, 1
  %321 = add i64 %314, 1
  %322 = icmp eq i64 %321, %237
  br i1 %322, label %323, label %311, !llvm.loop !72

323:                                              ; preds = %311, %307
  %324 = phi double [ %308, %307 ], [ %319, %311 ]
  %325 = getelementptr inbounds double, ptr %256, i64 %273
  %326 = load double, ptr %325, align 8, !tbaa !19
  %327 = fmul double %324, %326
  %328 = getelementptr inbounds double, ptr %249, i64 %273
  store double %327, ptr %328, align 8, !tbaa !19
  %329 = fadd double %274, %327
  %330 = add nuw nsw i64 %273, 1
  %331 = icmp eq i64 %330, %234
  br i1 %331, label %257, label %272, !llvm.loop !73

332:                                              ; preds = %270, %332
  %333 = phi i64 [ %337, %332 ], [ %271, %270 ]
  %334 = getelementptr inbounds double, ptr %249, i64 %333
  %335 = load double, ptr %334, align 8, !tbaa !19
  %336 = fdiv double %335, %329
  store double %336, ptr %334, align 8, !tbaa !19
  %337 = add nuw nsw i64 %333, 1
  %338 = icmp eq i64 %337, %234
  br i1 %338, label %339, label %332, !llvm.loop !74

339:                                              ; preds = %332, %269, %246, %257
  %340 = phi double [ %329, %257 ], [ 0.000000e+00, %246 ], [ %329, %269 ], [ %329, %332 ]
  %341 = getelementptr inbounds double, ptr %55, i64 %247
  store double %340, ptr %341, align 8, !tbaa !19
  %342 = add nuw nsw i64 %247, 1
  %343 = icmp eq i64 %342, %236
  br i1 %343, label %244, label %246, !llvm.loop !75

344:                                              ; preds = %244, %344
  %345 = phi i64 [ %348, %344 ], [ 0, %244 ]
  %346 = getelementptr inbounds ptr, ptr %61, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !13
  tail call void @free(ptr noundef %347) #18
  %348 = add nuw nsw i64 %345, 1
  %349 = load i32, ptr %8, align 4, !tbaa !11
  %350 = zext i32 %349 to i64
  %351 = icmp eq i64 %348, %350
  br i1 %351, label %352, label %344, !llvm.loop !76

352:                                              ; preds = %344
  %353 = load i32, ptr %56, align 4, !tbaa !62
  br label %354

354:                                              ; preds = %352, %244
  %355 = phi i32 [ %353, %352 ], [ %58, %244 ]
  tail call void @free(ptr noundef %61) #18
  %356 = or i32 %355, 2
  store i32 %356, ptr %56, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define dso_local void @hmm_pre_backward(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 197, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_pre_backward) #15
  unreachable

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %120, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  %14 = zext i32 %9 to i64
  %15 = sext i32 %9 to i64
  %16 = add nuw i32 %5, 1
  %17 = zext i32 %16 to i64
  %18 = icmp ult i32 %9, 4
  %19 = and i64 %14, 4294967292
  %20 = icmp eq i64 %19, %14
  %21 = and i64 %14, 3
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %7, %117
  %24 = phi i64 [ 0, %7 ], [ %118, %117 ]
  br i1 %10, label %117, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %11, align 8, !tbaa !18
  %27 = mul nsw i64 %24, %15
  %28 = load ptr, ptr %12, align 8, !tbaa !17
  %29 = getelementptr inbounds ptr, ptr %28, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = ptrtoint ptr %30 to i64
  %32 = load ptr, ptr %13, align 8, !tbaa !16
  %33 = getelementptr ptr, ptr %26, i64 %27
  br label %34

34:                                               ; preds = %25, %114
  %35 = phi i64 [ 0, %25 ], [ %115, %114 ]
  %36 = getelementptr ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = getelementptr inbounds ptr, ptr %32, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  br i1 %18, label %65, label %40

40:                                               ; preds = %34
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %37 to i64
  %43 = sub i64 %42, %31
  %44 = icmp ult i64 %43, 32
  %45 = sub i64 %42, %41
  %46 = icmp ult i64 %45, 32
  %47 = or i1 %44, %46
  br i1 %47, label %65, label %48

48:                                               ; preds = %40, %48
  %49 = phi i64 [ %62, %48 ], [ 0, %40 ]
  %50 = getelementptr inbounds double, ptr %30, i64 %49
  %51 = getelementptr inbounds double, ptr %50, i64 2
  %52 = load <2 x double>, ptr %50, align 8, !tbaa !19
  %53 = load <2 x double>, ptr %51, align 8, !tbaa !19
  %54 = getelementptr inbounds double, ptr %39, i64 %49
  %55 = getelementptr inbounds double, ptr %54, i64 2
  %56 = load <2 x double>, ptr %54, align 8, !tbaa !19
  %57 = load <2 x double>, ptr %55, align 8, !tbaa !19
  %58 = fmul <2 x double> %52, %56
  %59 = fmul <2 x double> %53, %57
  %60 = getelementptr inbounds double, ptr %37, i64 %49
  %61 = getelementptr inbounds double, ptr %60, i64 2
  store <2 x double> %58, ptr %60, align 8, !tbaa !19
  store <2 x double> %59, ptr %61, align 8, !tbaa !19
  %62 = add nuw i64 %49, 4
  %63 = icmp eq i64 %62, %19
  br i1 %63, label %64, label %48, !llvm.loop !77

64:                                               ; preds = %48
  br i1 %20, label %114, label %65

65:                                               ; preds = %40, %34, %64
  %66 = phi i64 [ 0, %40 ], [ 0, %34 ], [ %19, %64 ]
  br i1 %22, label %79, label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %76, %67 ], [ %66, %65 ]
  %69 = phi i64 [ %77, %67 ], [ 0, %65 ]
  %70 = getelementptr inbounds double, ptr %30, i64 %68
  %71 = load double, ptr %70, align 8, !tbaa !19
  %72 = getelementptr inbounds double, ptr %39, i64 %68
  %73 = load double, ptr %72, align 8, !tbaa !19
  %74 = fmul double %71, %73
  %75 = getelementptr inbounds double, ptr %37, i64 %68
  store double %74, ptr %75, align 8, !tbaa !19
  %76 = add nuw nsw i64 %68, 1
  %77 = add i64 %69, 1
  %78 = icmp eq i64 %77, %21
  br i1 %78, label %79, label %67, !llvm.loop !78

79:                                               ; preds = %67, %65
  %80 = phi i64 [ %66, %65 ], [ %76, %67 ]
  %81 = sub nsw i64 %66, %14
  %82 = icmp ugt i64 %81, -4
  br i1 %82, label %114, label %83

83:                                               ; preds = %79, %83
  %84 = phi i64 [ %112, %83 ], [ %80, %79 ]
  %85 = getelementptr inbounds double, ptr %30, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !19
  %87 = getelementptr inbounds double, ptr %39, i64 %84
  %88 = load double, ptr %87, align 8, !tbaa !19
  %89 = fmul double %86, %88
  %90 = getelementptr inbounds double, ptr %37, i64 %84
  store double %89, ptr %90, align 8, !tbaa !19
  %91 = add nuw nsw i64 %84, 1
  %92 = getelementptr inbounds double, ptr %30, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !19
  %94 = getelementptr inbounds double, ptr %39, i64 %91
  %95 = load double, ptr %94, align 8, !tbaa !19
  %96 = fmul double %93, %95
  %97 = getelementptr inbounds double, ptr %37, i64 %91
  store double %96, ptr %97, align 8, !tbaa !19
  %98 = add nuw nsw i64 %84, 2
  %99 = getelementptr inbounds double, ptr %30, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !19
  %101 = getelementptr inbounds double, ptr %39, i64 %98
  %102 = load double, ptr %101, align 8, !tbaa !19
  %103 = fmul double %100, %102
  %104 = getelementptr inbounds double, ptr %37, i64 %98
  store double %103, ptr %104, align 8, !tbaa !19
  %105 = add nuw nsw i64 %84, 3
  %106 = getelementptr inbounds double, ptr %30, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !19
  %108 = getelementptr inbounds double, ptr %39, i64 %105
  %109 = load double, ptr %108, align 8, !tbaa !19
  %110 = fmul double %107, %109
  %111 = getelementptr inbounds double, ptr %37, i64 %105
  store double %110, ptr %111, align 8, !tbaa !19
  %112 = add nuw nsw i64 %84, 4
  %113 = icmp eq i64 %112, %14
  br i1 %113, label %114, label %83, !llvm.loop !79

114:                                              ; preds = %79, %83, %64
  %115 = add nuw nsw i64 %35, 1
  %116 = icmp eq i64 %115, %14
  br i1 %116, label %117, label %34, !llvm.loop !80

117:                                              ; preds = %114, %23
  %118 = add nuw nsw i64 %24, 1
  %119 = icmp eq i64 %118, %17
  br i1 %119, label %120, label %23, !llvm.loop !81

120:                                              ; preds = %117, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hmm_backward(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_backward) #15
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_backward) #15
  unreachable

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = load i32, ptr %1, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %13
  %21 = icmp slt i32 %16, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %27, %22 ], [ 0, %20 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !32
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  tail call void @free(ptr noundef %26) #18
  %27 = add nuw nsw i64 %23, 1
  %28 = load i32, ptr %1, align 8, !tbaa !28
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %23, %29
  br i1 %30, label %22, label %31, !llvm.loop !82

31:                                               ; preds = %22
  %32 = load ptr, ptr %17, align 8, !tbaa !32
  br label %33

33:                                               ; preds = %31, %20
  %34 = phi ptr [ %32, %31 ], [ %18, %20 ]
  tail call void @free(ptr noundef %34) #18
  %35 = load i32, ptr %8, align 4, !tbaa !62
  %36 = load i32, ptr %14, align 4, !tbaa !11
  br label %37

37:                                               ; preds = %33, %13
  %38 = phi i32 [ %36, %33 ], [ %15, %13 ]
  %39 = phi i32 [ %35, %33 ], [ %9, %13 ]
  %40 = and i32 %39, -5
  store i32 %40, ptr %8, align 4, !tbaa !62
  %41 = add nsw i32 %16, 1
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #17
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = sext i32 %38 to i64
  %48 = zext i32 %41 to i64
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i64 [ 0, %46 ], [ %53, %49 ]
  %51 = tail call noalias ptr @calloc(i64 noundef %47, i64 noundef 8) #16
  %52 = getelementptr inbounds ptr, ptr %44, i64 %50
  store ptr %51, ptr %52, align 8, !tbaa !13
  %53 = add nuw nsw i64 %50, 1
  %54 = icmp eq i64 %53, %48
  br i1 %54, label %55, label %49, !llvm.loop !14

55:                                               ; preds = %49, %37
  store ptr %44, ptr %17, align 8, !tbaa !32
  %56 = icmp eq i32 %38, 0
  br i1 %56, label %110, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = sext i32 %16 to i64
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  %62 = getelementptr inbounds ptr, ptr %44, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = zext i32 %38 to i64
  %65 = icmp eq i32 %38, 1
  br i1 %65, label %88, label %66

66:                                               ; preds = %57
  %67 = shl nuw nsw i64 %64, 3
  %68 = getelementptr i8, ptr %63, i64 %67
  %69 = shl nsw i64 %60, 3
  %70 = getelementptr i8, ptr %59, i64 %69
  %71 = getelementptr i8, ptr %70, i64 8
  %72 = icmp ult ptr %63, %71
  %73 = icmp ult ptr %61, %68
  %74 = and i1 %72, %73
  br i1 %74, label %88, label %75

75:                                               ; preds = %66
  %76 = and i64 %64, 4294967294
  %77 = load double, ptr %61, align 8, !tbaa !19, !alias.scope !83
  %78 = insertelement <2 x double> poison, double %77, i64 0
  %79 = fdiv <2 x double> <double 1.000000e+00, double poison>, %78
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  br label %81

81:                                               ; preds = %81, %75
  %82 = phi i64 [ 0, %75 ], [ %84, %81 ]
  %83 = getelementptr inbounds double, ptr %63, i64 %82
  store <2 x double> %80, ptr %83, align 8, !tbaa !19, !alias.scope !86, !noalias !83
  %84 = add nuw i64 %82, 2
  %85 = icmp eq i64 %84, %76
  br i1 %85, label %86, label %81, !llvm.loop !88

86:                                               ; preds = %81
  %87 = icmp eq i64 %76, %64
  br i1 %87, label %110, label %88

88:                                               ; preds = %66, %57, %86
  %89 = phi i64 [ 0, %66 ], [ 0, %57 ], [ %76, %86 ]
  %90 = sub nsw i64 %64, %89
  %91 = and i64 %90, 3
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88, %93
  %94 = phi i64 [ %99, %93 ], [ %89, %88 ]
  %95 = phi i64 [ %100, %93 ], [ 0, %88 ]
  %96 = load double, ptr %61, align 8, !tbaa !19
  %97 = fdiv double 1.000000e+00, %96
  %98 = getelementptr inbounds double, ptr %63, i64 %94
  store double %97, ptr %98, align 8, !tbaa !19
  %99 = add nuw nsw i64 %94, 1
  %100 = add i64 %95, 1
  %101 = icmp eq i64 %100, %91
  br i1 %101, label %102, label %93, !llvm.loop !89

102:                                              ; preds = %93, %88
  %103 = phi i64 [ %89, %88 ], [ %99, %93 ]
  %104 = sub nsw i64 %89, %64
  %105 = icmp ugt i64 %104, -4
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr double, ptr %63, i64 1
  %108 = getelementptr double, ptr %63, i64 2
  %109 = getelementptr double, ptr %63, i64 3
  br label %125

110:                                              ; preds = %102, %125, %86, %55
  %111 = icmp sgt i32 %16, 1
  br i1 %111, label %112, label %216

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !18
  %115 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !30
  %117 = icmp eq i32 %15, 0
  %118 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %119 = zext i32 %15 to i64
  %120 = zext nneg i32 %16 to i64
  %121 = and i64 %119, 3
  %122 = icmp ult i32 %15, 4
  %123 = and i64 %119, 4294967292
  %124 = icmp eq i64 %121, 0
  br label %143

125:                                              ; preds = %125, %106
  %126 = phi i64 [ %103, %106 ], [ %139, %125 ]
  %127 = load double, ptr %61, align 8, !tbaa !19
  %128 = fdiv double 1.000000e+00, %127
  %129 = getelementptr inbounds double, ptr %63, i64 %126
  store double %128, ptr %129, align 8, !tbaa !19
  %130 = load double, ptr %61, align 8, !tbaa !19
  %131 = fdiv double 1.000000e+00, %130
  %132 = getelementptr double, ptr %107, i64 %126
  store double %131, ptr %132, align 8, !tbaa !19
  %133 = load double, ptr %61, align 8, !tbaa !19
  %134 = fdiv double 1.000000e+00, %133
  %135 = getelementptr double, ptr %108, i64 %126
  store double %134, ptr %135, align 8, !tbaa !19
  %136 = load double, ptr %61, align 8, !tbaa !19
  %137 = fdiv double 1.000000e+00, %136
  %138 = getelementptr double, ptr %109, i64 %126
  store double %137, ptr %138, align 8, !tbaa !19
  %139 = add nuw nsw i64 %126, 4
  %140 = icmp eq i64 %139, %64
  br i1 %140, label %110, label %125, !llvm.loop !90

141:                                              ; preds = %209, %143
  %142 = icmp sgt i64 %144, 2
  br i1 %142, label %143, label %216, !llvm.loop !91

143:                                              ; preds = %112, %141
  %144 = phi i64 [ %120, %112 ], [ %145, %141 ]
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds ptr, ptr %44, i64 %144
  %147 = load ptr, ptr %146, align 8, !tbaa !13
  %148 = getelementptr inbounds i8, ptr %116, i64 %144
  %149 = load i8, ptr %148, align 1, !tbaa !49
  %150 = sext i8 %149 to i32
  %151 = mul nsw i32 %15, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %114, i64 %152
  br i1 %117, label %141, label %154

154:                                              ; preds = %143
  %155 = load ptr, ptr %118, align 8, !tbaa !34
  %156 = getelementptr inbounds double, ptr %155, i64 %145
  %157 = getelementptr inbounds ptr, ptr %44, i64 %145
  %158 = load ptr, ptr %157, align 8, !tbaa !13
  br label %159

159:                                              ; preds = %154, %209
  %160 = phi i64 [ 0, %154 ], [ %214, %209 ]
  %161 = getelementptr inbounds ptr, ptr %153, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !13
  br i1 %122, label %193, label %163

163:                                              ; preds = %159, %163
  %164 = phi i64 [ %190, %163 ], [ 0, %159 ]
  %165 = phi double [ %189, %163 ], [ 0.000000e+00, %159 ]
  %166 = phi i64 [ %191, %163 ], [ 0, %159 ]
  %167 = getelementptr inbounds double, ptr %162, i64 %164
  %168 = load double, ptr %167, align 8, !tbaa !19
  %169 = getelementptr inbounds double, ptr %147, i64 %164
  %170 = load double, ptr %169, align 8, !tbaa !19
  %171 = tail call double @llvm.fmuladd.f64(double %168, double %170, double %165)
  %172 = or disjoint i64 %164, 1
  %173 = getelementptr inbounds double, ptr %162, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !19
  %175 = getelementptr inbounds double, ptr %147, i64 %172
  %176 = load double, ptr %175, align 8, !tbaa !19
  %177 = tail call double @llvm.fmuladd.f64(double %174, double %176, double %171)
  %178 = or disjoint i64 %164, 2
  %179 = getelementptr inbounds double, ptr %162, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !19
  %181 = getelementptr inbounds double, ptr %147, i64 %178
  %182 = load double, ptr %181, align 8, !tbaa !19
  %183 = tail call double @llvm.fmuladd.f64(double %180, double %182, double %177)
  %184 = or disjoint i64 %164, 3
  %185 = getelementptr inbounds double, ptr %162, i64 %184
  %186 = load double, ptr %185, align 8, !tbaa !19
  %187 = getelementptr inbounds double, ptr %147, i64 %184
  %188 = load double, ptr %187, align 8, !tbaa !19
  %189 = tail call double @llvm.fmuladd.f64(double %186, double %188, double %183)
  %190 = add nuw nsw i64 %164, 4
  %191 = add i64 %166, 4
  %192 = icmp eq i64 %191, %123
  br i1 %192, label %193, label %163, !llvm.loop !92

193:                                              ; preds = %163, %159
  %194 = phi double [ undef, %159 ], [ %189, %163 ]
  %195 = phi i64 [ 0, %159 ], [ %190, %163 ]
  %196 = phi double [ 0.000000e+00, %159 ], [ %189, %163 ]
  br i1 %124, label %209, label %197

197:                                              ; preds = %193, %197
  %198 = phi i64 [ %206, %197 ], [ %195, %193 ]
  %199 = phi double [ %205, %197 ], [ %196, %193 ]
  %200 = phi i64 [ %207, %197 ], [ 0, %193 ]
  %201 = getelementptr inbounds double, ptr %162, i64 %198
  %202 = load double, ptr %201, align 8, !tbaa !19
  %203 = getelementptr inbounds double, ptr %147, i64 %198
  %204 = load double, ptr %203, align 8, !tbaa !19
  %205 = tail call double @llvm.fmuladd.f64(double %202, double %204, double %199)
  %206 = add nuw nsw i64 %198, 1
  %207 = add i64 %200, 1
  %208 = icmp eq i64 %207, %121
  br i1 %208, label %209, label %197, !llvm.loop !93

209:                                              ; preds = %197, %193
  %210 = phi double [ %194, %193 ], [ %205, %197 ]
  %211 = load double, ptr %156, align 8, !tbaa !19
  %212 = fdiv double %210, %211
  %213 = getelementptr inbounds double, ptr %158, i64 %160
  store double %212, ptr %213, align 8, !tbaa !19
  %214 = add nuw nsw i64 %160, 1
  %215 = icmp eq i64 %214, %119
  br i1 %215, label %141, label %159, !llvm.loop !94

216:                                              ; preds = %141, %110
  %217 = or i32 %39, 4
  store i32 %217, ptr %8, align 4, !tbaa !62
  %218 = icmp eq i32 %15, 0
  br i1 %218, label %281, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !12
  %222 = getelementptr inbounds ptr, ptr %44, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !13
  %224 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !17
  %226 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !30
  %228 = getelementptr inbounds i8, ptr %227, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !49
  %230 = sext i8 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %225, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !13
  %233 = zext i32 %15 to i64
  %234 = and i64 %233, 1
  %235 = icmp eq i32 %15, 1
  br i1 %235, label %262, label %236

236:                                              ; preds = %219
  %237 = and i64 %233, 4294967294
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi i64 [ 0, %236 ], [ %259, %238 ]
  %240 = phi double [ 0.000000e+00, %236 ], [ %258, %238 ]
  %241 = phi i64 [ 0, %236 ], [ %260, %238 ]
  %242 = getelementptr inbounds double, ptr %221, i64 %239
  %243 = load double, ptr %242, align 8, !tbaa !19
  %244 = getelementptr inbounds double, ptr %223, i64 %239
  %245 = load double, ptr %244, align 8, !tbaa !19
  %246 = fmul double %243, %245
  %247 = getelementptr inbounds double, ptr %232, i64 %239
  %248 = load double, ptr %247, align 8, !tbaa !19
  %249 = tail call double @llvm.fmuladd.f64(double %246, double %248, double %240)
  %250 = or disjoint i64 %239, 1
  %251 = getelementptr inbounds double, ptr %221, i64 %250
  %252 = load double, ptr %251, align 8, !tbaa !19
  %253 = getelementptr inbounds double, ptr %223, i64 %250
  %254 = load double, ptr %253, align 8, !tbaa !19
  %255 = fmul double %252, %254
  %256 = getelementptr inbounds double, ptr %232, i64 %250
  %257 = load double, ptr %256, align 8, !tbaa !19
  %258 = tail call double @llvm.fmuladd.f64(double %255, double %257, double %249)
  %259 = add nuw nsw i64 %239, 2
  %260 = add i64 %241, 2
  %261 = icmp eq i64 %260, %237
  br i1 %261, label %262, label %238, !llvm.loop !95

262:                                              ; preds = %238, %219
  %263 = phi double [ undef, %219 ], [ %258, %238 ]
  %264 = phi i64 [ 0, %219 ], [ %259, %238 ]
  %265 = phi double [ 0.000000e+00, %219 ], [ %258, %238 ]
  %266 = icmp eq i64 %234, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds double, ptr %221, i64 %264
  %269 = load double, ptr %268, align 8, !tbaa !19
  %270 = getelementptr inbounds double, ptr %223, i64 %264
  %271 = load double, ptr %270, align 8, !tbaa !19
  %272 = fmul double %269, %271
  %273 = getelementptr inbounds double, ptr %232, i64 %264
  %274 = load double, ptr %273, align 8, !tbaa !19
  %275 = tail call double @llvm.fmuladd.f64(double %272, double %274, double %265)
  br label %276

276:                                              ; preds = %262, %267
  %277 = phi double [ %263, %262 ], [ %275, %267 ]
  %278 = fcmp ogt double %277, 0x3FF000010C6F7A0B
  %279 = fcmp olt double %277, 0x3FEFFFFDE7210BE9
  %280 = or i1 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %216, %276
  %282 = phi double [ %277, %276 ], [ 0.000000e+00, %216 ]
  %283 = load ptr, ptr @stderr, align 8, !tbaa !13
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.6, double noundef %282) #19
  br label %285

285:                                              ; preds = %276, %281
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local double @hmm_lk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = icmp slt i32 %2, 1
  br i1 %8, label %33, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.hmm_data_t, ptr %0, i64 0, i32 5
  %11 = add nuw i32 %2, 1
  %12 = zext i32 %11 to i64
  br label %14

13:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_lk) #15
  unreachable

14:                                               ; preds = %9, %28
  %15 = phi i64 [ 1, %9 ], [ %31, %28 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %30, %28 ]
  %17 = phi double [ 1.000000e+00, %9 ], [ %29, %28 ]
  %18 = load ptr, ptr %10, align 8, !tbaa !34
  %19 = getelementptr inbounds double, ptr %18, i64 %15
  %20 = load double, ptr %19, align 8, !tbaa !19
  %21 = fmul double %17, %20
  %22 = fcmp olt double %21, 1.000000e-25
  %23 = fcmp oge double %21, 0x45208B2A2C280290
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = tail call double @log(double noundef %21) #18
  %27 = fadd double %16, %26
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi double [ 1.000000e+00, %25 ], [ %21, %14 ]
  %30 = phi double [ %27, %25 ], [ %16, %14 ]
  %31 = add nuw nsw i64 %15, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %14, !llvm.loop !96

33:                                               ; preds = %28, %7
  %34 = phi double [ 1.000000e+00, %7 ], [ %29, %28 ]
  %35 = phi double [ 0.000000e+00, %7 ], [ %30, %28 ]
  %36 = tail call double @log(double noundef %34) #18
  %37 = fadd double %35, %36
  ret double %37
}

; Function Attrs: nounwind uwtable
define dso_local void @hmm_post_decode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 267, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_post_decode) #15
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #18
  br label %12

12:                                               ; preds = %11, %7
  %13 = load i32, ptr %1, align 8, !tbaa !28
  %14 = add i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = tail call noalias ptr @calloc(i64 noundef %15, i64 noundef 4) #16
  store ptr %16, ptr %8, align 8, !tbaa !36
  %17 = icmp slt i32 %13, 1
  br i1 %17, label %93, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = zext i32 %26 to i64
  %28 = zext i32 %14 to i64
  %29 = and i64 %27, 1
  %30 = icmp eq i32 %26, 1
  %31 = and i64 %27, 4294967294
  %32 = icmp eq i64 %29, 0
  br label %33

33:                                               ; preds = %18, %89
  %34 = phi i64 [ 1, %18 ], [ %91, %89 ]
  %35 = getelementptr inbounds ptr, ptr %20, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds ptr, ptr %22, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = getelementptr inbounds double, ptr %24, i64 %34
  %40 = load double, ptr %39, align 8, !tbaa !19
  switch i32 %26, label %41 [
    i32 0, label %88
    i32 1, label %70
  ]

41:                                               ; preds = %33, %41
  %42 = phi i64 [ %67, %41 ], [ 0, %33 ]
  %43 = phi i32 [ %66, %41 ], [ -1, %33 ]
  %44 = phi double [ %64, %41 ], [ -1.000000e+00, %33 ]
  %45 = phi i64 [ %68, %41 ], [ 0, %33 ]
  %46 = getelementptr inbounds double, ptr %36, i64 %42
  %47 = load double, ptr %46, align 8, !tbaa !19
  %48 = getelementptr inbounds double, ptr %38, i64 %42
  %49 = load double, ptr %48, align 8, !tbaa !19
  %50 = fmul double %47, %49
  %51 = fmul double %40, %50
  %52 = fcmp olt double %44, %51
  %53 = select i1 %52, double %51, double %44
  %54 = trunc i64 %42 to i32
  %55 = select i1 %52, i32 %54, i32 %43
  %56 = or disjoint i64 %42, 1
  %57 = getelementptr inbounds double, ptr %36, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !19
  %59 = getelementptr inbounds double, ptr %38, i64 %56
  %60 = load double, ptr %59, align 8, !tbaa !19
  %61 = fmul double %58, %60
  %62 = fmul double %40, %61
  %63 = fcmp olt double %53, %62
  %64 = select i1 %63, double %62, double %53
  %65 = trunc i64 %56 to i32
  %66 = select i1 %63, i32 %65, i32 %55
  %67 = add nuw nsw i64 %42, 2
  %68 = add i64 %45, 2
  %69 = icmp eq i64 %68, %31
  br i1 %69, label %70, label %41, !llvm.loop !97

70:                                               ; preds = %41, %33
  %71 = phi i32 [ undef, %33 ], [ %66, %41 ]
  %72 = phi i64 [ 0, %33 ], [ %67, %41 ]
  %73 = phi i32 [ -1, %33 ], [ %66, %41 ]
  %74 = phi double [ -1.000000e+00, %33 ], [ %64, %41 ]
  br i1 %32, label %85, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds double, ptr %36, i64 %72
  %77 = load double, ptr %76, align 8, !tbaa !19
  %78 = getelementptr inbounds double, ptr %38, i64 %72
  %79 = load double, ptr %78, align 8, !tbaa !19
  %80 = fmul double %77, %79
  %81 = fmul double %40, %80
  %82 = fcmp olt double %74, %81
  %83 = trunc i64 %72 to i32
  %84 = select i1 %82, i32 %83, i32 %73
  br label %85

85:                                               ; preds = %70, %75
  %86 = phi i32 [ %71, %70 ], [ %84, %75 ]
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %89, label %88

88:                                               ; preds = %33, %85
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_post_decode) #15
  unreachable

89:                                               ; preds = %85
  %90 = getelementptr inbounds i32, ptr %16, i64 %34
  store i32 %86, ptr %90, align 4, !tbaa !50
  %91 = add nuw nsw i64 %34, 1
  %92 = icmp eq i64 %91, %28
  br i1 %92, label %93, label %33, !llvm.loop !98

93:                                               ; preds = %89, %12
  %94 = load i32, ptr %3, align 4, !tbaa !62
  %95 = or i32 %94, 128
  store i32 %95, ptr %3, align 4, !tbaa !62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local double @hmm_post_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds double, ptr %6, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = getelementptr inbounds ptr, ptr %15, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %4
  %22 = zext i32 %19 to i64
  %23 = and i64 %22, 1
  %24 = icmp eq i32 %19, 1
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = and i64 %22, 4294967294
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %48, %27 ]
  %29 = phi double [ 0.000000e+00, %25 ], [ %47, %27 ]
  %30 = phi i64 [ 0, %25 ], [ %49, %27 ]
  %31 = getelementptr inbounds double, ptr %13, i64 %28
  %32 = load double, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds double, ptr %17, i64 %28
  %34 = load double, ptr %33, align 8, !tbaa !19
  %35 = fmul double %32, %34
  %36 = fmul double %9, %35
  %37 = getelementptr inbounds double, ptr %3, i64 %28
  store double %36, ptr %37, align 8, !tbaa !19
  %38 = fadd double %29, %36
  %39 = or disjoint i64 %28, 1
  %40 = getelementptr inbounds double, ptr %13, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !19
  %42 = getelementptr inbounds double, ptr %17, i64 %39
  %43 = load double, ptr %42, align 8, !tbaa !19
  %44 = fmul double %41, %43
  %45 = fmul double %9, %44
  %46 = getelementptr inbounds double, ptr %3, i64 %39
  store double %45, ptr %46, align 8, !tbaa !19
  %47 = fadd double %38, %45
  %48 = add nuw nsw i64 %28, 2
  %49 = add i64 %30, 2
  %50 = icmp eq i64 %49, %26
  br i1 %50, label %51, label %27, !llvm.loop !99

51:                                               ; preds = %27, %21
  %52 = phi double [ undef, %21 ], [ %47, %27 ]
  %53 = phi i64 [ 0, %21 ], [ %48, %27 ]
  %54 = phi double [ 0.000000e+00, %21 ], [ %47, %27 ]
  %55 = icmp eq i64 %23, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds double, ptr %13, i64 %53
  %58 = load double, ptr %57, align 8, !tbaa !19
  %59 = getelementptr inbounds double, ptr %17, i64 %53
  %60 = load double, ptr %59, align 8, !tbaa !19
  %61 = fmul double %58, %60
  %62 = fmul double %9, %61
  %63 = getelementptr inbounds double, ptr %3, i64 %53
  store double %62, ptr %63, align 8, !tbaa !19
  %64 = fadd double %54, %62
  br label %65

65:                                               ; preds = %56, %51, %4
  %66 = phi double [ 0.000000e+00, %4 ], [ %52, %51 ], [ %64, %56 ]
  ret double %66
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @hmm_expect(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 301, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_expect) #15
  unreachable

8:                                                ; preds = %2
  %9 = tail call ptr @hmm_new_exp(ptr noundef %0)
  %10 = load i32, ptr %0, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hmm_exp_t, ptr %9, i64 0, i32 3
  %16 = zext i32 %12 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !41
  %18 = icmp ult i32 %12, 4
  %19 = and i64 %16, 4294967292
  %20 = icmp eq i64 %19, %16
  br label %21

21:                                               ; preds = %49, %14
  %22 = phi i64 [ 0, %14 ], [ %50, %49 ]
  %23 = getelementptr inbounds ptr, ptr %17, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  br i1 %18, label %32, label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %29, %25 ], [ 0, %21 ]
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  %28 = getelementptr inbounds double, ptr %27, i64 2
  store <2 x double> <double 1.000000e-25, double 1.000000e-25>, ptr %27, align 8, !tbaa !19
  store <2 x double> <double 1.000000e-25, double 1.000000e-25>, ptr %28, align 8, !tbaa !19
  %29 = add nuw i64 %26, 4
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %31, label %25, !llvm.loop !100

31:                                               ; preds = %25
  br i1 %20, label %49, label %32

32:                                               ; preds = %21, %31
  %33 = phi i64 [ 0, %21 ], [ %19, %31 ]
  br label %44

34:                                               ; preds = %49, %8
  %35 = icmp slt i32 %10, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.hmm_exp_t, ptr %9, i64 0, i32 4
  %38 = zext i32 %12 to i64
  %39 = add nuw i32 %10, 1
  %40 = zext i32 %39 to i64
  %41 = icmp ult i32 %12, 4
  %42 = and i64 %38, 4294967292
  %43 = icmp eq i64 %42, %38
  br label %52

44:                                               ; preds = %32, %44
  %45 = phi i64 [ %47, %44 ], [ %33, %32 ]
  %46 = getelementptr inbounds double, ptr %24, i64 %45
  store double 1.000000e-25, ptr %46, align 8, !tbaa !19
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %47, %16
  br i1 %48, label %49, label %44, !llvm.loop !101

49:                                               ; preds = %44, %31
  %50 = add nuw nsw i64 %22, 1
  %51 = icmp eq i64 %50, %16
  br i1 %51, label %34, label %21, !llvm.loop !102

52:                                               ; preds = %36, %100
  %53 = phi i64 [ 0, %36 ], [ %101, %100 ]
  br i1 %13, label %100, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %37, align 8, !tbaa !42
  %56 = getelementptr inbounds ptr, ptr %55, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  br i1 %41, label %65, label %58

58:                                               ; preds = %54, %58
  %59 = phi i64 [ %62, %58 ], [ 0, %54 ]
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = getelementptr inbounds double, ptr %60, i64 2
  store <2 x double> <double 1.000000e-25, double 1.000000e-25>, ptr %60, align 8, !tbaa !19
  store <2 x double> <double 1.000000e-25, double 1.000000e-25>, ptr %61, align 8, !tbaa !19
  %62 = add nuw i64 %59, 4
  %63 = icmp eq i64 %62, %42
  br i1 %63, label %64, label %58, !llvm.loop !103

64:                                               ; preds = %58
  br i1 %43, label %100, label %65

65:                                               ; preds = %54, %64
  %66 = phi i64 [ 0, %54 ], [ %42, %64 ]
  br label %95

67:                                               ; preds = %100, %34
  %68 = load i32, ptr %1, align 8, !tbaa !28
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %105

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !31
  %73 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !32
  %75 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.hmm_exp_t, ptr %9, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !42
  %79 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !30
  %81 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  %83 = getelementptr inbounds %struct.hmm_exp_t, ptr %9, i64 0, i32 3
  %84 = zext i32 %12 to i64
  %85 = zext nneg i32 %68 to i64
  %86 = getelementptr inbounds ptr, ptr %74, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  %88 = shl nuw nsw i64 %84, 3
  %89 = icmp ult i32 %12, 4
  %90 = and i64 %84, 4294967292
  %91 = icmp eq i64 %90, %84
  %92 = and i64 %84, 1
  %93 = icmp eq i64 %92, 0
  %94 = add nsw i64 %84, -1
  br label %125

95:                                               ; preds = %65, %95
  %96 = phi i64 [ %98, %95 ], [ %66, %65 ]
  %97 = getelementptr inbounds double, ptr %57, i64 %96
  store double 1.000000e-25, ptr %97, align 8, !tbaa !19
  %98 = add nuw nsw i64 %96, 1
  %99 = icmp eq i64 %98, %38
  br i1 %99, label %100, label %95, !llvm.loop !104

100:                                              ; preds = %95, %64, %52
  %101 = add nuw nsw i64 %53, 1
  %102 = icmp eq i64 %101, %40
  br i1 %102, label %67, label %52, !llvm.loop !105

103:                                              ; preds = %227, %125
  %104 = icmp eq i64 %130, %85
  br i1 %104, label %105, label %125, !llvm.loop !106

105:                                              ; preds = %103, %67
  br i1 %13, label %289, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  %109 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !17
  %111 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !30
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  %114 = getelementptr inbounds %struct.hmm_data_t, ptr %1, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !32
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !13
  %118 = getelementptr inbounds %struct.hmm_exp_t, ptr %9, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !40
  %120 = zext i32 %12 to i64
  %121 = and i64 %120, 1
  %122 = icmp eq i32 %12, 1
  br i1 %122, label %271, label %123

123:                                              ; preds = %106
  %124 = and i64 %120, 4294967294
  br label %236

125:                                              ; preds = %70, %103
  %126 = phi ptr [ %87, %70 ], [ %132, %103 ]
  %127 = phi i64 [ 1, %70 ], [ %130, %103 ]
  %128 = getelementptr inbounds ptr, ptr %72, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !13
  %130 = add nuw nsw i64 %127, 1
  %131 = getelementptr inbounds ptr, ptr %74, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !13
  %133 = getelementptr inbounds double, ptr %76, i64 %127
  %134 = load double, ptr %133, align 8, !tbaa !19
  %135 = getelementptr inbounds i8, ptr %80, i64 %127
  %136 = load i8, ptr %135, align 1, !tbaa !49
  %137 = sext i8 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %78, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !13
  %140 = getelementptr inbounds i8, ptr %80, i64 %130
  %141 = load i8, ptr %140, align 1, !tbaa !49
  %142 = sext i8 %141 to i32
  %143 = mul nsw i32 %12, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %82, i64 %144
  br i1 %13, label %103, label %146

146:                                              ; preds = %125
  %147 = load ptr, ptr %83, align 8, !tbaa !41
  %148 = getelementptr i8, ptr %132, i64 %88
  br label %149

149:                                              ; preds = %146, %227
  %150 = phi i64 [ 0, %146 ], [ %234, %227 ]
  %151 = getelementptr inbounds ptr, ptr %145, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !13
  %153 = getelementptr inbounds ptr, ptr %147, i64 %150
  %154 = load ptr, ptr %153, align 8, !tbaa !13
  %155 = getelementptr inbounds double, ptr %129, i64 %150
  %156 = load double, ptr %155, align 8, !tbaa !19
  br i1 %89, label %191, label %157

157:                                              ; preds = %149
  %158 = getelementptr i8, ptr %154, i64 %88
  %159 = getelementptr i8, ptr %152, i64 %88
  %160 = icmp ult ptr %154, %159
  %161 = icmp ult ptr %152, %158
  %162 = and i1 %160, %161
  %163 = icmp ult ptr %154, %148
  %164 = icmp ult ptr %132, %158
  %165 = and i1 %163, %164
  %166 = or i1 %162, %165
  br i1 %166, label %191, label %167

167:                                              ; preds = %157
  %168 = insertelement <2 x double> poison, double %156, i64 0
  %169 = shufflevector <2 x double> %168, <2 x double> poison, <2 x i32> zeroinitializer
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi i64 [ 0, %167 ], [ %188, %170 ]
  %172 = getelementptr inbounds double, ptr %152, i64 %171
  %173 = getelementptr inbounds double, ptr %172, i64 2
  %174 = load <2 x double>, ptr %172, align 8, !tbaa !19, !alias.scope !107
  %175 = load <2 x double>, ptr %173, align 8, !tbaa !19, !alias.scope !107
  %176 = fmul <2 x double> %169, %174
  %177 = fmul <2 x double> %169, %175
  %178 = getelementptr inbounds double, ptr %132, i64 %171
  %179 = getelementptr inbounds double, ptr %178, i64 2
  %180 = load <2 x double>, ptr %178, align 8, !tbaa !19, !alias.scope !110
  %181 = load <2 x double>, ptr %179, align 8, !tbaa !19, !alias.scope !110
  %182 = getelementptr inbounds double, ptr %154, i64 %171
  %183 = getelementptr inbounds double, ptr %182, i64 2
  %184 = load <2 x double>, ptr %182, align 8, !tbaa !19, !alias.scope !112, !noalias !114
  %185 = load <2 x double>, ptr %183, align 8, !tbaa !19, !alias.scope !112, !noalias !114
  %186 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %176, <2 x double> %180, <2 x double> %184)
  %187 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %177, <2 x double> %181, <2 x double> %185)
  store <2 x double> %186, ptr %182, align 8, !tbaa !19, !alias.scope !112, !noalias !114
  store <2 x double> %187, ptr %183, align 8, !tbaa !19, !alias.scope !112, !noalias !114
  %188 = add nuw i64 %171, 4
  %189 = icmp eq i64 %188, %90
  br i1 %189, label %190, label %170, !llvm.loop !115

190:                                              ; preds = %170
  br i1 %91, label %227, label %191

191:                                              ; preds = %157, %149, %190
  %192 = phi i64 [ 0, %157 ], [ 0, %149 ], [ %90, %190 ]
  br i1 %93, label %203, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds double, ptr %152, i64 %192
  %195 = load double, ptr %194, align 8, !tbaa !19
  %196 = fmul double %156, %195
  %197 = getelementptr inbounds double, ptr %132, i64 %192
  %198 = load double, ptr %197, align 8, !tbaa !19
  %199 = getelementptr inbounds double, ptr %154, i64 %192
  %200 = load double, ptr %199, align 8, !tbaa !19
  %201 = tail call double @llvm.fmuladd.f64(double %196, double %198, double %200)
  store double %201, ptr %199, align 8, !tbaa !19
  %202 = or disjoint i64 %192, 1
  br label %203

203:                                              ; preds = %193, %191
  %204 = phi i64 [ %192, %191 ], [ %202, %193 ]
  %205 = icmp eq i64 %192, %94
  br i1 %205, label %227, label %206

206:                                              ; preds = %203, %206
  %207 = phi i64 [ %225, %206 ], [ %204, %203 ]
  %208 = getelementptr inbounds double, ptr %152, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !19
  %210 = fmul double %156, %209
  %211 = getelementptr inbounds double, ptr %132, i64 %207
  %212 = load double, ptr %211, align 8, !tbaa !19
  %213 = getelementptr inbounds double, ptr %154, i64 %207
  %214 = load double, ptr %213, align 8, !tbaa !19
  %215 = tail call double @llvm.fmuladd.f64(double %210, double %212, double %214)
  store double %215, ptr %213, align 8, !tbaa !19
  %216 = add nuw nsw i64 %207, 1
  %217 = getelementptr inbounds double, ptr %152, i64 %216
  %218 = load double, ptr %217, align 8, !tbaa !19
  %219 = fmul double %156, %218
  %220 = getelementptr inbounds double, ptr %132, i64 %216
  %221 = load double, ptr %220, align 8, !tbaa !19
  %222 = getelementptr inbounds double, ptr %154, i64 %216
  %223 = load double, ptr %222, align 8, !tbaa !19
  %224 = tail call double @llvm.fmuladd.f64(double %219, double %221, double %223)
  store double %224, ptr %222, align 8, !tbaa !19
  %225 = add nuw nsw i64 %207, 2
  %226 = icmp eq i64 %225, %84
  br i1 %226, label %227, label %206, !llvm.loop !116

227:                                              ; preds = %203, %206, %190
  %228 = getelementptr inbounds double, ptr %126, i64 %150
  %229 = load double, ptr %228, align 8, !tbaa !19
  %230 = fmul double %156, %229
  %231 = getelementptr inbounds double, ptr %139, i64 %150
  %232 = load double, ptr %231, align 8, !tbaa !19
  %233 = tail call double @llvm.fmuladd.f64(double %230, double %134, double %232)
  store double %233, ptr %231, align 8, !tbaa !19
  %234 = add nuw nsw i64 %150, 1
  %235 = icmp eq i64 %234, %84
  br i1 %235, label %103, label %149, !llvm.loop !117

236:                                              ; preds = %236, %123
  %237 = phi i64 [ 0, %123 ], [ %268, %236 ]
  %238 = phi i64 [ 0, %123 ], [ %269, %236 ]
  %239 = getelementptr inbounds double, ptr %108, i64 %237
  %240 = load double, ptr %239, align 8, !tbaa !19
  %241 = load i8, ptr %113, align 1, !tbaa !49
  %242 = sext i8 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %110, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !13
  %245 = getelementptr inbounds double, ptr %244, i64 %237
  %246 = load double, ptr %245, align 8, !tbaa !19
  %247 = fmul double %240, %246
  %248 = getelementptr inbounds double, ptr %117, i64 %237
  %249 = load double, ptr %248, align 8, !tbaa !19
  %250 = getelementptr inbounds double, ptr %119, i64 %237
  %251 = load double, ptr %250, align 8, !tbaa !19
  %252 = tail call double @llvm.fmuladd.f64(double %247, double %249, double %251)
  store double %252, ptr %250, align 8, !tbaa !19
  %253 = or disjoint i64 %237, 1
  %254 = getelementptr inbounds double, ptr %108, i64 %253
  %255 = load double, ptr %254, align 8, !tbaa !19
  %256 = load i8, ptr %113, align 1, !tbaa !49
  %257 = sext i8 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %110, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !13
  %260 = getelementptr inbounds double, ptr %259, i64 %253
  %261 = load double, ptr %260, align 8, !tbaa !19
  %262 = fmul double %255, %261
  %263 = getelementptr inbounds double, ptr %117, i64 %253
  %264 = load double, ptr %263, align 8, !tbaa !19
  %265 = getelementptr inbounds double, ptr %119, i64 %253
  %266 = load double, ptr %265, align 8, !tbaa !19
  %267 = tail call double @llvm.fmuladd.f64(double %262, double %264, double %266)
  store double %267, ptr %265, align 8, !tbaa !19
  %268 = add nuw nsw i64 %237, 2
  %269 = add i64 %238, 2
  %270 = icmp eq i64 %269, %124
  br i1 %270, label %271, label %236, !llvm.loop !118

271:                                              ; preds = %236, %106
  %272 = phi i64 [ 0, %106 ], [ %268, %236 ]
  %273 = icmp eq i64 %121, 0
  br i1 %273, label %289, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds double, ptr %108, i64 %272
  %276 = load double, ptr %275, align 8, !tbaa !19
  %277 = load i8, ptr %113, align 1, !tbaa !49
  %278 = sext i8 %277 to i64
  %279 = getelementptr inbounds ptr, ptr %110, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !13
  %281 = getelementptr inbounds double, ptr %280, i64 %272
  %282 = load double, ptr %281, align 8, !tbaa !19
  %283 = fmul double %276, %282
  %284 = getelementptr inbounds double, ptr %117, i64 %272
  %285 = load double, ptr %284, align 8, !tbaa !19
  %286 = getelementptr inbounds double, ptr %119, i64 %272
  %287 = load double, ptr %286, align 8, !tbaa !19
  %288 = tail call double @llvm.fmuladd.f64(double %283, double %285, double %287)
  store double %288, ptr %286, align 8, !tbaa !19
  br label %289

289:                                              ; preds = %274, %271, %105
  ret ptr %9
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @hmm_Q0(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %186, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %0, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %6, %92
  %10 = phi i32 [ %4, %6 ], [ %93, %92 ]
  %11 = phi i32 [ %8, %6 ], [ %94, %92 ]
  %12 = phi i64 [ 0, %6 ], [ %96, %92 ]
  %13 = phi double [ 0.000000e+00, %6 ], [ %95, %92 ]
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %7, align 8, !tbaa !42
  %17 = zext i32 %11 to i64
  %18 = and i64 %17, 3
  %19 = icmp ult i32 %11, 4
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = and i64 %17, 4294967292
  br label %45

22:                                               ; preds = %92
  %23 = icmp eq i32 %93, 0
  br i1 %23, label %186, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 3
  br label %99

26:                                               ; preds = %45, %15
  %27 = phi double [ undef, %15 ], [ %71, %45 ]
  %28 = phi i64 [ 0, %15 ], [ %72, %45 ]
  %29 = phi double [ 0.000000e+00, %15 ], [ %71, %45 ]
  %30 = icmp eq i64 %18, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %40, %31 ], [ %28, %26 ]
  %33 = phi double [ %39, %31 ], [ %29, %26 ]
  %34 = phi i64 [ %41, %31 ], [ 0, %26 ]
  %35 = getelementptr inbounds ptr, ptr %16, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds double, ptr %36, i64 %12
  %38 = load double, ptr %37, align 8, !tbaa !19
  %39 = fadd double %33, %38
  %40 = add nuw nsw i64 %32, 1
  %41 = add i64 %34, 1
  %42 = icmp eq i64 %41, %18
  br i1 %42, label %43, label %31, !llvm.loop !119

43:                                               ; preds = %31, %26
  %44 = phi double [ %27, %26 ], [ %39, %31 ]
  br i1 %14, label %92, label %75

45:                                               ; preds = %45, %20
  %46 = phi i64 [ 0, %20 ], [ %72, %45 ]
  %47 = phi double [ 0.000000e+00, %20 ], [ %71, %45 ]
  %48 = phi i64 [ 0, %20 ], [ %73, %45 ]
  %49 = getelementptr inbounds ptr, ptr %16, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = getelementptr inbounds double, ptr %50, i64 %12
  %52 = load double, ptr %51, align 8, !tbaa !19
  %53 = fadd double %47, %52
  %54 = or disjoint i64 %46, 1
  %55 = getelementptr inbounds ptr, ptr %16, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = getelementptr inbounds double, ptr %56, i64 %12
  %58 = load double, ptr %57, align 8, !tbaa !19
  %59 = fadd double %53, %58
  %60 = or disjoint i64 %46, 2
  %61 = getelementptr inbounds ptr, ptr %16, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  %63 = getelementptr inbounds double, ptr %62, i64 %12
  %64 = load double, ptr %63, align 8, !tbaa !19
  %65 = fadd double %59, %64
  %66 = or disjoint i64 %46, 3
  %67 = getelementptr inbounds ptr, ptr %16, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  %69 = getelementptr inbounds double, ptr %68, i64 %12
  %70 = load double, ptr %69, align 8, !tbaa !19
  %71 = fadd double %65, %70
  %72 = add nuw nsw i64 %46, 4
  %73 = add i64 %48, 4
  %74 = icmp eq i64 %73, %21
  br i1 %74, label %26, label %45, !llvm.loop !120

75:                                               ; preds = %43, %75
  %76 = phi i64 [ %86, %75 ], [ 0, %43 ]
  %77 = phi double [ %85, %75 ], [ %13, %43 ]
  %78 = load ptr, ptr %7, align 8, !tbaa !42
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !13
  %81 = getelementptr inbounds double, ptr %80, i64 %12
  %82 = load double, ptr %81, align 8, !tbaa !19
  %83 = fdiv double %82, %44
  %84 = tail call double @log(double noundef %83) #18
  %85 = tail call double @llvm.fmuladd.f64(double %82, double %84, double %77)
  %86 = add nuw nsw i64 %76, 1
  %87 = load i32, ptr %0, align 8, !tbaa !5
  %88 = zext i32 %87 to i64
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %90, label %75, !llvm.loop !121

90:                                               ; preds = %75
  %91 = load i32, ptr %3, align 4, !tbaa !11
  br label %92

92:                                               ; preds = %9, %90, %43
  %93 = phi i32 [ %10, %43 ], [ %91, %90 ], [ %10, %9 ]
  %94 = phi i32 [ 0, %43 ], [ %87, %90 ], [ 0, %9 ]
  %95 = phi double [ %13, %43 ], [ %85, %90 ], [ %13, %9 ]
  %96 = add nuw nsw i64 %12, 1
  %97 = zext i32 %93 to i64
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %22, label %9, !llvm.loop !122

99:                                               ; preds = %24, %180
  %100 = phi i32 [ %93, %24 ], [ %181, %180 ]
  %101 = phi i64 [ 0, %24 ], [ %183, %180 ]
  %102 = phi double [ %95, %24 ], [ %182, %180 ]
  %103 = load ptr, ptr %25, align 8, !tbaa !41
  %104 = getelementptr inbounds ptr, ptr %103, i64 %101
  %105 = load ptr, ptr %104, align 8, !tbaa !13
  %106 = icmp eq i32 %100, 0
  br i1 %106, label %180, label %107

107:                                              ; preds = %99
  %108 = zext i32 %100 to i64
  %109 = and i64 %108, 7
  %110 = icmp ult i32 %100, 8
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = and i64 %108, 4294967288
  br label %130

113:                                              ; preds = %130, %107
  %114 = phi double [ undef, %107 ], [ %164, %130 ]
  %115 = phi i64 [ 0, %107 ], [ %165, %130 ]
  %116 = phi double [ 0.000000e+00, %107 ], [ %164, %130 ]
  %117 = icmp eq i64 %109, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113, %118
  %119 = phi i64 [ %125, %118 ], [ %115, %113 ]
  %120 = phi double [ %124, %118 ], [ %116, %113 ]
  %121 = phi i64 [ %126, %118 ], [ 0, %113 ]
  %122 = getelementptr inbounds double, ptr %105, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !19
  %124 = fadd double %120, %123
  %125 = add nuw nsw i64 %119, 1
  %126 = add i64 %121, 1
  %127 = icmp eq i64 %126, %109
  br i1 %127, label %128, label %118, !llvm.loop !123

128:                                              ; preds = %118, %113
  %129 = phi double [ %114, %113 ], [ %124, %118 ]
  br i1 %106, label %180, label %168

130:                                              ; preds = %130, %111
  %131 = phi i64 [ 0, %111 ], [ %165, %130 ]
  %132 = phi double [ 0.000000e+00, %111 ], [ %164, %130 ]
  %133 = phi i64 [ 0, %111 ], [ %166, %130 ]
  %134 = getelementptr inbounds double, ptr %105, i64 %131
  %135 = load double, ptr %134, align 8, !tbaa !19
  %136 = fadd double %132, %135
  %137 = or disjoint i64 %131, 1
  %138 = getelementptr inbounds double, ptr %105, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !19
  %140 = fadd double %136, %139
  %141 = or disjoint i64 %131, 2
  %142 = getelementptr inbounds double, ptr %105, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !19
  %144 = fadd double %140, %143
  %145 = or disjoint i64 %131, 3
  %146 = getelementptr inbounds double, ptr %105, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !19
  %148 = fadd double %144, %147
  %149 = or disjoint i64 %131, 4
  %150 = getelementptr inbounds double, ptr %105, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !19
  %152 = fadd double %148, %151
  %153 = or disjoint i64 %131, 5
  %154 = getelementptr inbounds double, ptr %105, i64 %153
  %155 = load double, ptr %154, align 8, !tbaa !19
  %156 = fadd double %152, %155
  %157 = or disjoint i64 %131, 6
  %158 = getelementptr inbounds double, ptr %105, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !19
  %160 = fadd double %156, %159
  %161 = or disjoint i64 %131, 7
  %162 = getelementptr inbounds double, ptr %105, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !19
  %164 = fadd double %160, %163
  %165 = add nuw nsw i64 %131, 8
  %166 = add i64 %133, 8
  %167 = icmp eq i64 %166, %112
  br i1 %167, label %113, label %130, !llvm.loop !124

168:                                              ; preds = %128, %168
  %169 = phi i64 [ %176, %168 ], [ 0, %128 ]
  %170 = phi double [ %175, %168 ], [ %102, %128 ]
  %171 = getelementptr inbounds double, ptr %105, i64 %169
  %172 = load double, ptr %171, align 8, !tbaa !19
  %173 = fdiv double %172, %129
  %174 = tail call double @log(double noundef %173) #18
  %175 = tail call double @llvm.fmuladd.f64(double %172, double %174, double %170)
  %176 = add nuw nsw i64 %169, 1
  %177 = load i32, ptr %3, align 4, !tbaa !11
  %178 = zext i32 %177 to i64
  %179 = icmp eq i64 %176, %178
  br i1 %179, label %180, label %168, !llvm.loop !125

180:                                              ; preds = %168, %99, %128
  %181 = phi i32 [ 0, %128 ], [ 0, %99 ], [ %177, %168 ]
  %182 = phi double [ %102, %128 ], [ %102, %99 ], [ %175, %168 ]
  %183 = add nuw nsw i64 %101, 1
  %184 = zext i32 %181 to i64
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %99, !llvm.loop !126

186:                                              ; preds = %180, %2, %22
  %187 = phi double [ %95, %22 ], [ 0.000000e+00, %2 ], [ %182, %180 ]
  %188 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 2
  store double %187, ptr %188, align 8, !tbaa !127
  ret double %187
}

; Function Attrs: nounwind uwtable
define dso_local void @hmm_add_expect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !37
  %4 = load i32, ptr %1, align 8, !tbaa !37
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !39
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 3
  %21 = zext i32 %8 to i64
  %22 = load ptr, ptr %19, align 8, !tbaa !41
  %23 = load ptr, ptr %20, align 8, !tbaa !41
  %24 = shl nuw nsw i64 %21, 3
  %25 = icmp ult i32 %8, 4
  %26 = and i64 %21, 4294967292
  %27 = icmp eq i64 %26, %21
  %28 = and i64 %21, 3
  %29 = icmp eq i64 %28, 0
  br label %44

30:                                               ; preds = %6, %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 349, ptr noundef nonnull @__PRETTY_FUNCTION__.hmm_add_expect) #15
  unreachable

31:                                               ; preds = %120, %12
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %200, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hmm_exp_t, ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 4
  %36 = zext i32 %8 to i64
  %37 = zext i32 %3 to i64
  %38 = shl nuw nsw i64 %36, 3
  %39 = icmp ult i32 %8, 4
  %40 = and i64 %36, 4294967292
  %41 = icmp eq i64 %40, %36
  %42 = and i64 %36, 3
  %43 = icmp eq i64 %42, 0
  br label %123

44:                                               ; preds = %120, %14
  %45 = phi i64 [ 0, %14 ], [ %121, %120 ]
  %46 = getelementptr inbounds double, ptr %16, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !19
  %48 = getelementptr inbounds double, ptr %18, i64 %45
  %49 = load double, ptr %48, align 8, !tbaa !19
  %50 = fadd double %47, %49
  store double %50, ptr %48, align 8, !tbaa !19
  %51 = getelementptr inbounds ptr, ptr %22, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = getelementptr inbounds ptr, ptr %23, i64 %45
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  br i1 %25, label %76, label %55

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %54, i64 %24
  %57 = getelementptr i8, ptr %52, i64 %24
  %58 = icmp ult ptr %54, %57
  %59 = icmp ult ptr %52, %56
  %60 = and i1 %58, %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ %73, %61 ], [ 0, %55 ]
  %63 = getelementptr inbounds double, ptr %52, i64 %62
  %64 = getelementptr inbounds double, ptr %63, i64 2
  %65 = load <2 x double>, ptr %63, align 8, !tbaa !19, !alias.scope !128
  %66 = load <2 x double>, ptr %64, align 8, !tbaa !19, !alias.scope !128
  %67 = getelementptr inbounds double, ptr %54, i64 %62
  %68 = getelementptr inbounds double, ptr %67, i64 2
  %69 = load <2 x double>, ptr %67, align 8, !tbaa !19, !alias.scope !131, !noalias !128
  %70 = load <2 x double>, ptr %68, align 8, !tbaa !19, !alias.scope !131, !noalias !128
  %71 = fadd <2 x double> %65, %69
  %72 = fadd <2 x double> %66, %70
  store <2 x double> %71, ptr %67, align 8, !tbaa !19, !alias.scope !131, !noalias !128
  store <2 x double> %72, ptr %68, align 8, !tbaa !19, !alias.scope !131, !noalias !128
  %73 = add nuw i64 %62, 4
  %74 = icmp eq i64 %73, %26
  br i1 %74, label %75, label %61, !llvm.loop !133

75:                                               ; preds = %61
  br i1 %27, label %120, label %76

76:                                               ; preds = %55, %44, %75
  %77 = phi i64 [ 0, %55 ], [ 0, %44 ], [ %26, %75 ]
  br i1 %29, label %89, label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ %86, %78 ], [ %77, %76 ]
  %80 = phi i64 [ %87, %78 ], [ 0, %76 ]
  %81 = getelementptr inbounds double, ptr %52, i64 %79
  %82 = load double, ptr %81, align 8, !tbaa !19
  %83 = getelementptr inbounds double, ptr %54, i64 %79
  %84 = load double, ptr %83, align 8, !tbaa !19
  %85 = fadd double %82, %84
  store double %85, ptr %83, align 8, !tbaa !19
  %86 = add nuw nsw i64 %79, 1
  %87 = add i64 %80, 1
  %88 = icmp eq i64 %87, %28
  br i1 %88, label %89, label %78, !llvm.loop !134

89:                                               ; preds = %78, %76
  %90 = phi i64 [ %77, %76 ], [ %86, %78 ]
  %91 = sub nsw i64 %77, %21
  %92 = icmp ugt i64 %91, -4
  br i1 %92, label %120, label %93

93:                                               ; preds = %89, %93
  %94 = phi i64 [ %118, %93 ], [ %90, %89 ]
  %95 = getelementptr inbounds double, ptr %52, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !19
  %97 = getelementptr inbounds double, ptr %54, i64 %94
  %98 = load double, ptr %97, align 8, !tbaa !19
  %99 = fadd double %96, %98
  store double %99, ptr %97, align 8, !tbaa !19
  %100 = add nuw nsw i64 %94, 1
  %101 = getelementptr inbounds double, ptr %52, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !19
  %103 = getelementptr inbounds double, ptr %54, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !19
  %105 = fadd double %102, %104
  store double %105, ptr %103, align 8, !tbaa !19
  %106 = add nuw nsw i64 %94, 2
  %107 = getelementptr inbounds double, ptr %52, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !19
  %109 = getelementptr inbounds double, ptr %54, i64 %106
  %110 = load double, ptr %109, align 8, !tbaa !19
  %111 = fadd double %108, %110
  store double %111, ptr %109, align 8, !tbaa !19
  %112 = add nuw nsw i64 %94, 3
  %113 = getelementptr inbounds double, ptr %52, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !19
  %115 = getelementptr inbounds double, ptr %54, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !19
  %117 = fadd double %114, %116
  store double %117, ptr %115, align 8, !tbaa !19
  %118 = add nuw nsw i64 %94, 4
  %119 = icmp eq i64 %118, %21
  br i1 %119, label %120, label %93, !llvm.loop !135

120:                                              ; preds = %89, %93, %75
  %121 = add nuw nsw i64 %45, 1
  %122 = icmp eq i64 %121, %21
  br i1 %122, label %31, label %44, !llvm.loop !136

123:                                              ; preds = %33, %197
  %124 = phi i64 [ 0, %33 ], [ %198, %197 ]
  br i1 %13, label %197, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %34, align 8, !tbaa !42
  %127 = getelementptr inbounds ptr, ptr %126, i64 %124
  %128 = load ptr, ptr %127, align 8, !tbaa !13
  %129 = load ptr, ptr %35, align 8, !tbaa !42
  %130 = getelementptr inbounds ptr, ptr %129, i64 %124
  %131 = load ptr, ptr %130, align 8, !tbaa !13
  br i1 %39, label %153, label %132

132:                                              ; preds = %125
  %133 = getelementptr i8, ptr %131, i64 %38
  %134 = getelementptr i8, ptr %128, i64 %38
  %135 = icmp ult ptr %131, %134
  %136 = icmp ult ptr %128, %133
  %137 = and i1 %135, %136
  br i1 %137, label %153, label %138

138:                                              ; preds = %132, %138
  %139 = phi i64 [ %150, %138 ], [ 0, %132 ]
  %140 = getelementptr inbounds double, ptr %128, i64 %139
  %141 = getelementptr inbounds double, ptr %140, i64 2
  %142 = load <2 x double>, ptr %140, align 8, !tbaa !19, !alias.scope !137
  %143 = load <2 x double>, ptr %141, align 8, !tbaa !19, !alias.scope !137
  %144 = getelementptr inbounds double, ptr %131, i64 %139
  %145 = getelementptr inbounds double, ptr %144, i64 2
  %146 = load <2 x double>, ptr %144, align 8, !tbaa !19, !alias.scope !140, !noalias !137
  %147 = load <2 x double>, ptr %145, align 8, !tbaa !19, !alias.scope !140, !noalias !137
  %148 = fadd <2 x double> %142, %146
  %149 = fadd <2 x double> %143, %147
  store <2 x double> %148, ptr %144, align 8, !tbaa !19, !alias.scope !140, !noalias !137
  store <2 x double> %149, ptr %145, align 8, !tbaa !19, !alias.scope !140, !noalias !137
  %150 = add nuw i64 %139, 4
  %151 = icmp eq i64 %150, %40
  br i1 %151, label %152, label %138, !llvm.loop !142

152:                                              ; preds = %138
  br i1 %41, label %197, label %153

153:                                              ; preds = %132, %125, %152
  %154 = phi i64 [ 0, %132 ], [ 0, %125 ], [ %40, %152 ]
  br i1 %43, label %166, label %155

155:                                              ; preds = %153, %155
  %156 = phi i64 [ %163, %155 ], [ %154, %153 ]
  %157 = phi i64 [ %164, %155 ], [ 0, %153 ]
  %158 = getelementptr inbounds double, ptr %128, i64 %156
  %159 = load double, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds double, ptr %131, i64 %156
  %161 = load double, ptr %160, align 8, !tbaa !19
  %162 = fadd double %159, %161
  store double %162, ptr %160, align 8, !tbaa !19
  %163 = add nuw nsw i64 %156, 1
  %164 = add i64 %157, 1
  %165 = icmp eq i64 %164, %42
  br i1 %165, label %166, label %155, !llvm.loop !143

166:                                              ; preds = %155, %153
  %167 = phi i64 [ %154, %153 ], [ %163, %155 ]
  %168 = sub nsw i64 %154, %36
  %169 = icmp ugt i64 %168, -4
  br i1 %169, label %197, label %170

170:                                              ; preds = %166, %170
  %171 = phi i64 [ %195, %170 ], [ %167, %166 ]
  %172 = getelementptr inbounds double, ptr %128, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !19
  %174 = getelementptr inbounds double, ptr %131, i64 %171
  %175 = load double, ptr %174, align 8, !tbaa !19
  %176 = fadd double %173, %175
  store double %176, ptr %174, align 8, !tbaa !19
  %177 = add nuw nsw i64 %171, 1
  %178 = getelementptr inbounds double, ptr %128, i64 %177
  %179 = load double, ptr %178, align 8, !tbaa !19
  %180 = getelementptr inbounds double, ptr %131, i64 %177
  %181 = load double, ptr %180, align 8, !tbaa !19
  %182 = fadd double %179, %181
  store double %182, ptr %180, align 8, !tbaa !19
  %183 = add nuw nsw i64 %171, 2
  %184 = getelementptr inbounds double, ptr %128, i64 %183
  %185 = load double, ptr %184, align 8, !tbaa !19
  %186 = getelementptr inbounds double, ptr %131, i64 %183
  %187 = load double, ptr %186, align 8, !tbaa !19
  %188 = fadd double %185, %187
  store double %188, ptr %186, align 8, !tbaa !19
  %189 = add nuw nsw i64 %171, 3
  %190 = getelementptr inbounds double, ptr %128, i64 %189
  %191 = load double, ptr %190, align 8, !tbaa !19
  %192 = getelementptr inbounds double, ptr %131, i64 %189
  %193 = load double, ptr %192, align 8, !tbaa !19
  %194 = fadd double %191, %193
  store double %194, ptr %192, align 8, !tbaa !19
  %195 = add nuw nsw i64 %171, 4
  %196 = icmp eq i64 %195, %36
  br i1 %196, label %197, label %170, !llvm.loop !144

197:                                              ; preds = %166, %170, %152, %123
  %198 = add nuw nsw i64 %124, 1
  %199 = icmp eq i64 %198, %37
  br i1 %199, label %200, label %123, !llvm.loop !145

200:                                              ; preds = %197, %31
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @hmm_Q(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 4
  %8 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !11
  br label %18

10:                                               ; preds = %47, %2
  %11 = phi double [ 0.000000e+00, %2 ], [ %50, %47 ]
  %12 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %86, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  br label %54

18:                                               ; preds = %5, %47
  %19 = phi i32 [ %3, %5 ], [ %48, %47 ]
  %20 = phi i32 [ %9, %5 ], [ %49, %47 ]
  %21 = phi i64 [ 0, %5 ], [ %51, %47 ]
  %22 = phi double [ 0.000000e+00, %5 ], [ %50, %47 ]
  %23 = load ptr, ptr %6, align 8, !tbaa !17
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load ptr, ptr %7, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = icmp eq i32 %20, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %18, %36
  %31 = phi i64 [ %41, %36 ], [ 0, %18 ]
  %32 = phi double [ %40, %36 ], [ %22, %18 ]
  %33 = getelementptr inbounds double, ptr %25, i64 %31
  %34 = load double, ptr %33, align 8, !tbaa !19
  %35 = fcmp ugt double %34, 0.000000e+00
  br i1 %35, label %36, label %91

36:                                               ; preds = %30
  %37 = getelementptr inbounds double, ptr %28, i64 %31
  %38 = load double, ptr %37, align 8, !tbaa !19
  %39 = tail call double @log(double noundef %34) #18
  %40 = tail call double @llvm.fmuladd.f64(double %38, double %39, double %32)
  %41 = add nuw i64 %31, 1
  %42 = load i32, ptr %8, align 4, !tbaa !11
  %43 = zext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %30, !llvm.loop !146

45:                                               ; preds = %36
  %46 = load i32, ptr %1, align 8, !tbaa !37
  br label %47

47:                                               ; preds = %45, %18
  %48 = phi i32 [ %19, %18 ], [ %46, %45 ]
  %49 = phi i32 [ 0, %18 ], [ %42, %45 ]
  %50 = phi double [ %22, %18 ], [ %40, %45 ]
  %51 = add nuw i64 %21, 1
  %52 = zext i32 %48 to i64
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %10, label %18, !llvm.loop !147

54:                                               ; preds = %15, %80
  %55 = phi i32 [ 1, %15 ], [ %81, %80 ]
  %56 = phi i64 [ 0, %15 ], [ %83, %80 ]
  %57 = phi double [ %11, %15 ], [ %82, %80 ]
  %58 = load ptr, ptr %16, align 8, !tbaa !41
  %59 = getelementptr inbounds ptr, ptr %58, i64 %56
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = load ptr, ptr %17, align 8, !tbaa !16
  %62 = getelementptr inbounds ptr, ptr %61, i64 %56
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %54, %71
  %66 = phi i64 [ %76, %71 ], [ 0, %54 ]
  %67 = phi double [ %75, %71 ], [ %57, %54 ]
  %68 = getelementptr inbounds double, ptr %63, i64 %66
  %69 = load double, ptr %68, align 8, !tbaa !19
  %70 = fcmp ugt double %69, 0.000000e+00
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = getelementptr inbounds double, ptr %60, i64 %66
  %73 = load double, ptr %72, align 8, !tbaa !19
  %74 = tail call double @log(double noundef %69) #18
  %75 = tail call double @llvm.fmuladd.f64(double %73, double %74, double %67)
  %76 = add nuw i64 %66, 1
  %77 = load i32, ptr %12, align 4, !tbaa !39
  %78 = zext i32 %77 to i64
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %65, !llvm.loop !148

80:                                               ; preds = %71, %54
  %81 = phi i32 [ 0, %54 ], [ %77, %71 ]
  %82 = phi double [ %57, %54 ], [ %75, %71 ]
  %83 = add nuw i64 %56, 1
  %84 = zext i32 %81 to i64
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %54, !llvm.loop !149

86:                                               ; preds = %80, %10
  %87 = phi double [ %11, %10 ], [ %82, %80 ]
  %88 = getelementptr inbounds %struct.hmm_exp_t, ptr %1, i64 0, i32 2
  %89 = load double, ptr %88, align 8, !tbaa !127
  %90 = fsub double %87, %89
  br label %91

91:                                               ; preds = %30, %65, %86
  %92 = phi double [ %90, %86 ], [ -1.000000e+300, %65 ], [ -1.000000e+300, %30 ]
  ret double %92
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @hmm_simulate(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call noalias ptr @calloc(i64 noundef %4, i64 noundef 1) #16
  %6 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = load i32, ptr %0, align 8, !tbaa !5
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #17
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %2
  %14 = sext i32 %8 to i64
  %15 = zext i32 %7 to i64
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i64 [ 0, %13 ], [ %20, %16 ]
  %18 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #16
  %19 = getelementptr inbounds ptr, ptr %11, i64 %17
  store ptr %18, ptr %19, align 8, !tbaa !13
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, %15
  br i1 %21, label %22, label %16, !llvm.loop !14

22:                                               ; preds = %16
  br i1 %12, label %83, label %23

23:                                               ; preds = %22
  %24 = icmp eq i32 %8, 0
  %25 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 3
  %26 = zext i32 %8 to i64
  %27 = zext i32 %7 to i64
  %28 = and i64 %26, 3
  %29 = icmp ult i32 %8, 4
  %30 = and i64 %26, 4294967292
  %31 = icmp eq i64 %28, 0
  br label %32

32:                                               ; preds = %23, %80
  %33 = phi i64 [ 0, %23 ], [ %81, %80 ]
  br i1 %24, label %80, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %25, align 8, !tbaa !17
  %36 = getelementptr inbounds ptr, ptr %11, i64 %33
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  br i1 %29, label %67, label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %64, %38 ], [ 0, %34 ]
  %40 = phi i64 [ %65, %38 ], [ 0, %34 ]
  %41 = getelementptr inbounds ptr, ptr %35, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = getelementptr inbounds double, ptr %42, i64 %33
  %44 = load double, ptr %43, align 8, !tbaa !19
  %45 = getelementptr inbounds double, ptr %37, i64 %39
  store double %44, ptr %45, align 8, !tbaa !19
  %46 = or disjoint i64 %39, 1
  %47 = getelementptr inbounds ptr, ptr %35, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = getelementptr inbounds double, ptr %48, i64 %33
  %50 = load double, ptr %49, align 8, !tbaa !19
  %51 = getelementptr inbounds double, ptr %37, i64 %46
  store double %50, ptr %51, align 8, !tbaa !19
  %52 = or disjoint i64 %39, 2
  %53 = getelementptr inbounds ptr, ptr %35, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = getelementptr inbounds double, ptr %54, i64 %33
  %56 = load double, ptr %55, align 8, !tbaa !19
  %57 = getelementptr inbounds double, ptr %37, i64 %52
  store double %56, ptr %57, align 8, !tbaa !19
  %58 = or disjoint i64 %39, 3
  %59 = getelementptr inbounds ptr, ptr %35, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = getelementptr inbounds double, ptr %60, i64 %33
  %62 = load double, ptr %61, align 8, !tbaa !19
  %63 = getelementptr inbounds double, ptr %37, i64 %58
  store double %62, ptr %63, align 8, !tbaa !19
  %64 = add nuw nsw i64 %39, 4
  %65 = add i64 %40, 4
  %66 = icmp eq i64 %65, %30
  br i1 %66, label %67, label %38, !llvm.loop !150

67:                                               ; preds = %38, %34
  %68 = phi i64 [ 0, %34 ], [ %64, %38 ]
  br i1 %31, label %80, label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ %77, %69 ], [ %68, %67 ]
  %71 = phi i64 [ %78, %69 ], [ 0, %67 ]
  %72 = getelementptr inbounds ptr, ptr %35, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds double, ptr %73, i64 %33
  %75 = load double, ptr %74, align 8, !tbaa !19
  %76 = getelementptr inbounds double, ptr %37, i64 %70
  store double %75, ptr %76, align 8, !tbaa !19
  %77 = add nuw nsw i64 %70, 1
  %78 = add i64 %71, 1
  %79 = icmp eq i64 %78, %28
  br i1 %79, label %80, label %69, !llvm.loop !151

80:                                               ; preds = %67, %69, %32
  %81 = add nuw nsw i64 %33, 1
  %82 = icmp eq i64 %81, %27
  br i1 %82, label %83, label %32, !llvm.loop !152

83:                                               ; preds = %80, %2, %22
  %84 = tail call double @drand48() #18
  %85 = load i32, ptr %6, align 4, !tbaa !11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !12
  %90 = zext i32 %85 to i64
  br label %91

91:                                               ; preds = %87, %98
  %92 = phi i64 [ 0, %87 ], [ %99, %98 ]
  %93 = phi double [ 0.000000e+00, %87 ], [ %96, %98 ]
  %94 = getelementptr inbounds double, ptr %89, i64 %92
  %95 = load double, ptr %94, align 8, !tbaa !19
  %96 = fadd double %93, %95
  %97 = fcmp ult double %96, %84
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = add nuw nsw i64 %92, 1
  %100 = icmp eq i64 %99, %90
  br i1 %100, label %103, label %91, !llvm.loop !153

101:                                              ; preds = %91
  %102 = trunc i64 %92 to i32
  br label %103

103:                                              ; preds = %98, %101, %83
  %104 = phi i32 [ 0, %83 ], [ %102, %101 ], [ %85, %98 ]
  %105 = icmp eq i32 %1, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.hmm_par_t, ptr %0, i64 0, i32 2
  %108 = zext i32 %1 to i64
  br label %114

109:                                              ; preds = %160
  %110 = load i32, ptr %6, align 4, !tbaa !11
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %110, %109 ], [ %85, %103 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %174, label %166

114:                                              ; preds = %106, %160
  %115 = phi i64 [ 0, %106 ], [ %164, %160 ]
  %116 = phi i32 [ %104, %106 ], [ %139, %160 ]
  %117 = load ptr, ptr %107, align 8, !tbaa !16
  %118 = zext nneg i32 %116 to i64
  %119 = getelementptr inbounds ptr, ptr %117, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = tail call double @drand48() #18
  %122 = load i32, ptr %6, align 4, !tbaa !11
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %114
  %125 = zext i32 %122 to i64
  br label %126

126:                                              ; preds = %124, %133
  %127 = phi i64 [ 0, %124 ], [ %134, %133 ]
  %128 = phi double [ 0.000000e+00, %124 ], [ %131, %133 ]
  %129 = getelementptr inbounds double, ptr %120, i64 %127
  %130 = load double, ptr %129, align 8, !tbaa !19
  %131 = fadd double %128, %130
  %132 = fcmp ult double %131, %121
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = add nuw nsw i64 %127, 1
  %135 = icmp eq i64 %134, %125
  br i1 %135, label %138, label %126, !llvm.loop !154

136:                                              ; preds = %126
  %137 = trunc i64 %127 to i32
  br label %138

138:                                              ; preds = %133, %136, %114
  %139 = phi i32 [ 0, %114 ], [ %137, %136 ], [ %122, %133 ]
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %11, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !13
  %143 = tail call double @drand48() #18
  %144 = load i32, ptr %0, align 8, !tbaa !5
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %138
  %147 = zext i32 %144 to i64
  br label %148

148:                                              ; preds = %146, %155
  %149 = phi i64 [ 0, %146 ], [ %156, %155 ]
  %150 = phi double [ 0.000000e+00, %146 ], [ %153, %155 ]
  %151 = getelementptr inbounds double, ptr %142, i64 %149
  %152 = load double, ptr %151, align 8, !tbaa !19
  %153 = fadd double %150, %152
  %154 = fcmp ult double %153, %143
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = add nuw nsw i64 %149, 1
  %157 = icmp eq i64 %156, %147
  br i1 %157, label %160, label %148, !llvm.loop !155

158:                                              ; preds = %148
  %159 = trunc i64 %149 to i32
  br label %160

160:                                              ; preds = %155, %158, %138
  %161 = phi i32 [ 0, %138 ], [ %159, %158 ], [ %144, %155 ]
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds i8, ptr %5, i64 %115
  store i8 %162, ptr %163, align 1, !tbaa !49
  %164 = add nuw nsw i64 %115, 1
  %165 = icmp eq i64 %164, %108
  br i1 %165, label %109, label %114, !llvm.loop !156

166:                                              ; preds = %111, %166
  %167 = phi i64 [ %170, %166 ], [ 0, %111 ]
  %168 = getelementptr inbounds ptr, ptr %11, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !13
  tail call void @free(ptr noundef %169) #18
  %170 = add nuw nsw i64 %167, 1
  %171 = load i32, ptr %6, align 4, !tbaa !11
  %172 = zext i32 %171 to i64
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %174, label %166, !llvm.loop !157

174:                                              ; preds = %166, %111
  tail call void @free(ptr noundef %11) #18
  ret ptr %5
}

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!6, !10, i64 32}
!13 = !{!10, !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !10, i64 8}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !10, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !8, i64 0}
!21 = distinct !{!21, !15, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !15, !23, !22}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{!29, !7, i64 0}
!29 = !{!"", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!30 = !{!29, !10, i64 8}
!31 = !{!29, !10, i64 16}
!32 = !{!29, !10, i64 24}
!33 = distinct !{!33, !15}
!34 = !{!29, !10, i64 32}
!35 = !{!29, !10, i64 40}
!36 = !{!29, !10, i64 48}
!37 = !{!38, !7, i64 0}
!38 = !{!"", !7, i64 0, !7, i64 4, !20, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!39 = !{!38, !7, i64 4}
!40 = !{!38, !10, i64 32}
!41 = !{!38, !10, i64 16}
!42 = !{!38, !10, i64 24}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = !{!8, !8, i64 0}
!50 = !{!7, !7, i64 0}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = !{!29, !7, i64 4}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15, !22, !23}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15, !23, !22}
!70 = distinct !{!70, !15, !22, !23}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15, !23, !22}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15, !22, !23}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !15, !22}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !15, !22, !23}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !15, !22}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !57}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15, !22, !23}
!101 = distinct !{!101, !15, !23, !22}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15, !22, !23}
!104 = distinct !{!104, !15, !23, !22}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = !{!113}
!113 = distinct !{!113, !109}
!114 = !{!108, !111}
!115 = distinct !{!115, !15, !22, !23}
!116 = distinct !{!116, !15, !22}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = !{!38, !20, i64 8}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !15, !22, !23}
!134 = distinct !{!134, !57}
!135 = distinct !{!135, !15, !22}
!136 = distinct !{!136, !15}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !15, !22, !23}
!143 = distinct !{!143, !57}
!144 = distinct !{!144, !15, !22}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !57}
!152 = distinct !{!152, !15}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, !15}
!157 = distinct !{!157, !15}
