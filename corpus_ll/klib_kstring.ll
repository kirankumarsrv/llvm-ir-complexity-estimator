; ModuleID = 'corpus_src/klib/kstring.c'
source_filename = "corpus_src/klib/kstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.__kstring_t = type { i64, i64, ptr }
%struct.ks_tokaux_t = type { [4 x i64], i32, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kvsprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.va_copy(ptr nonnull %4, ptr %2)
  %5 = getelementptr inbounds %struct.__kstring_t, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %0, align 8, !tbaa !11
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.__kstring_t, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = sub i64 %10, %7
  %12 = call i32 @vsnprintf(ptr noundef %8, i64 noundef %11, ptr noundef %1, ptr noundef nonnull %4) #12
  call void @llvm.va_end(ptr nonnull %4)
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = load i64, ptr %9, align 8, !tbaa !12
  %16 = load i64, ptr %0, align 8, !tbaa !11
  %17 = sub i64 %15, %16
  %18 = icmp ult i64 %17, %14
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = sext i32 %12 to i64
  %21 = add nsw i64 %20, 1
  %22 = add i64 %21, %16
  %23 = lshr i64 %22, 1
  %24 = or i64 %23, %22
  %25 = lshr i64 %24, 2
  %26 = or i64 %25, %24
  %27 = lshr i64 %26, 4
  %28 = or i64 %27, %26
  %29 = lshr i64 %28, 8
  %30 = or i64 %29, %28
  %31 = lshr i64 %30, 16
  %32 = or i64 %31, %30
  %33 = add i64 %32, 1
  store i64 %33, ptr %9, align 8, !tbaa !12
  %34 = load ptr, ptr %5, align 8, !tbaa !5
  %35 = call ptr @realloc(ptr noundef %34, i64 noundef %33) #13
  store ptr %35, ptr %5, align 8, !tbaa !5
  call void @llvm.va_copy(ptr nonnull %4, ptr %2)
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = load i64, ptr %0, align 8, !tbaa !11
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i64, ptr %9, align 8, !tbaa !12
  %40 = sub i64 %39, %37
  %41 = call i32 @vsnprintf(ptr noundef %38, i64 noundef %40, ptr noundef %1, ptr noundef nonnull %4) #12
  call void @llvm.va_end(ptr nonnull %4)
  %42 = load i64, ptr %0, align 8, !tbaa !11
  br label %43

43:                                               ; preds = %19, %3
  %44 = phi i64 [ %42, %19 ], [ %16, %3 ]
  %45 = phi i32 [ %41, %19 ], [ %12, %3 ]
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  store i64 %47, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ksprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @kvsprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @kstrtok(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %7, %5
  %12 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !13
  %13 = load i8, ptr %1, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 1
  store i32 -1, ptr %20, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %21 = load i8, ptr %1, align 1, !tbaa !16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %19, %23
  %24 = phi i8 [ %36, %23 ], [ %21, %19 ]
  %25 = phi ptr [ %35, %23 ], [ %1, %19 ]
  %26 = zext i8 %24 to i32
  %27 = and i32 %26, 63
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = lshr i32 %26, 6
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [4 x i64], ptr %2, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !18
  %34 = or i64 %33, %29
  store i64 %34, ptr %32, align 8, !tbaa !18
  %35 = getelementptr inbounds i8, ptr %25, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %23, !llvm.loop !19

38:                                               ; preds = %15, %11
  %39 = zext i8 %13 to i32
  %40 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 1
  store i32 %39, ptr %40, align 8, !tbaa !17
  br label %45

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %23, %38, %19, %41
  %46 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 2
  %47 = icmp eq ptr %0, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, ptr %46, align 4, !tbaa !13
  br label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  br label %53

53:                                               ; preds = %48, %49
  %54 = phi ptr [ %0, %48 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !17
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load i8, ptr %54, align 1, !tbaa !16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %86, label %61

61:                                               ; preds = %58, %74
  %62 = phi i8 [ %76, %74 ], [ %59, %58 ]
  %63 = phi ptr [ %75, %74 ], [ %54, %58 ]
  %64 = zext i8 %62 to i32
  %65 = lshr i32 %64, 6
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [4 x i64], ptr %2, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !18
  %69 = and i32 %64, 63
  %70 = zext nneg i32 %69 to i64
  %71 = shl nuw i64 1, %70
  %72 = and i64 %68, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %61
  %75 = getelementptr inbounds i8, ptr %63, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %86, label %61, !llvm.loop !22

78:                                               ; preds = %53, %78
  %79 = phi ptr [ %85, %78 ], [ %54, %53 ]
  %80 = load i8, ptr %79, align 1, !tbaa !16
  %81 = icmp eq i8 %80, 0
  %82 = zext i8 %80 to i32
  %83 = icmp eq i32 %56, %82
  %84 = or i1 %81, %83
  %85 = getelementptr inbounds i8, ptr %79, i64 1
  br i1 %84, label %86, label %78, !llvm.loop !23

86:                                               ; preds = %78, %61, %74, %58
  %87 = phi ptr [ %54, %58 ], [ %63, %61 ], [ %75, %74 ], [ %79, %78 ]
  %88 = getelementptr inbounds %struct.ks_tokaux_t, ptr %2, i64 0, i32 3
  store ptr %87, ptr %88, align 8, !tbaa !21
  %89 = load i8, ptr %87, align 1, !tbaa !16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 1, ptr %46, align 4, !tbaa !13
  br label %92

92:                                               ; preds = %86, %91, %41, %7
  %93 = phi ptr [ null, %7 ], [ null, %41 ], [ %54, %91 ], [ %54, %86 ]
  ret ptr %93
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ksplit_core(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4, !tbaa !24
  %6 = load ptr, ptr %3, align 8, !tbaa !25
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %8 = and i64 %7, 2147483648
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %106

10:                                               ; preds = %4
  %11 = icmp eq i32 %1, 0
  %12 = add nuw nsw i64 %7, 1
  %13 = and i64 %12, 4294967295
  br label %14

14:                                               ; preds = %10, %96
  %15 = phi i64 [ 0, %10 ], [ %104, %96 ]
  %16 = phi i32 [ 0, %10 ], [ %100, %96 ]
  %17 = phi ptr [ %6, %10 ], [ %99, %96 ]
  %18 = phi i32 [ 0, %10 ], [ %98, %96 ]
  %19 = phi i32 [ 0, %10 ], [ %103, %96 ]
  %20 = phi i32 [ %5, %10 ], [ %97, %96 ]
  br i1 %11, label %21, label %62

21:                                               ; preds = %14
  %22 = tail call ptr @__ctype_b_loc() #15
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = getelementptr inbounds i8, ptr %0, i64 %15
  %25 = load i8, ptr %24, align 1, !tbaa !16
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %23, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !26
  %29 = and i16 %28, 8192
  %30 = icmp ne i16 %29, 0
  %31 = icmp eq i8 %25, 0
  %32 = or i1 %31, %30
  %33 = sext i32 %19 to i64
  %34 = getelementptr inbounds i16, ptr %23, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !26
  br i1 %32, label %36, label %55

36:                                               ; preds = %21
  %37 = icmp sgt i16 %35, -1
  br i1 %37, label %96, label %38

38:                                               ; preds = %36
  store i8 0, ptr %24, align 1, !tbaa !16
  %39 = icmp eq i32 %16, %20
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = icmp eq i32 %16, 0
  %42 = shl i32 %16, 1
  %43 = select i1 %41, i32 2, i32 %42
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  %46 = tail call ptr @realloc(ptr noundef %17, i64 noundef %45) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @free(ptr noundef %17) #12
  br label %110

49:                                               ; preds = %40, %38
  %50 = phi i32 [ %20, %38 ], [ %43, %40 ]
  %51 = phi ptr [ %17, %38 ], [ %46, %40 ]
  %52 = add nsw i32 %16, 1
  %53 = sext i32 %16 to i64
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  store i32 %18, ptr %54, align 4, !tbaa !24
  br label %96

55:                                               ; preds = %21
  %56 = and i16 %35, 8192
  %57 = icmp ne i16 %56, 0
  %58 = icmp eq i32 %19, 0
  %59 = select i1 %57, i1 true, i1 %58
  %60 = trunc i64 %15 to i32
  %61 = select i1 %59, i32 %60, i32 %18
  br label %96

62:                                               ; preds = %14
  %63 = getelementptr inbounds i8, ptr %0, i64 %15
  %64 = load i8, ptr %63, align 1, !tbaa !16
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, %1
  %67 = icmp eq i8 %64, 0
  %68 = or i1 %67, %66
  br i1 %68, label %69, label %90

69:                                               ; preds = %62
  %70 = icmp eq i32 %19, 0
  %71 = icmp eq i32 %19, %1
  %72 = or i1 %70, %71
  br i1 %72, label %96, label %73

73:                                               ; preds = %69
  store i8 0, ptr %63, align 1, !tbaa !16
  %74 = icmp eq i32 %16, %20
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = icmp eq i32 %16, 0
  %77 = shl i32 %16, 1
  %78 = select i1 %76, i32 2, i32 %77
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 2
  %81 = tail call ptr @realloc(ptr noundef %17, i64 noundef %80) #13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  tail call void @free(ptr noundef %17) #12
  br label %110

84:                                               ; preds = %75, %73
  %85 = phi i32 [ %20, %73 ], [ %78, %75 ]
  %86 = phi ptr [ %17, %73 ], [ %81, %75 ]
  %87 = add nsw i32 %16, 1
  %88 = sext i32 %16 to i64
  %89 = getelementptr inbounds i32, ptr %86, i64 %88
  store i32 %18, ptr %89, align 4, !tbaa !24
  br label %96

90:                                               ; preds = %62
  %91 = icmp eq i32 %19, %1
  %92 = icmp eq i32 %19, 0
  %93 = or i1 %91, %92
  %94 = trunc i64 %15 to i32
  %95 = select i1 %93, i32 %94, i32 %18
  br label %96

96:                                               ; preds = %90, %55, %84, %69, %49, %36
  %97 = phi i32 [ %50, %49 ], [ %20, %36 ], [ %85, %84 ], [ %20, %69 ], [ %20, %55 ], [ %20, %90 ]
  %98 = phi i32 [ %18, %49 ], [ %18, %36 ], [ %18, %84 ], [ %18, %69 ], [ %61, %55 ], [ %95, %90 ]
  %99 = phi ptr [ %51, %49 ], [ %17, %36 ], [ %86, %84 ], [ %17, %69 ], [ %17, %55 ], [ %17, %90 ]
  %100 = phi i32 [ %52, %49 ], [ %16, %36 ], [ %87, %84 ], [ %16, %69 ], [ %16, %55 ], [ %16, %90 ]
  %101 = getelementptr inbounds i8, ptr %0, i64 %15
  %102 = load i8, ptr %101, align 1, !tbaa !16
  %103 = sext i8 %102 to i32
  %104 = add nuw nsw i64 %15, 1
  %105 = icmp eq i64 %104, %13
  br i1 %105, label %106, label %14, !llvm.loop !28

106:                                              ; preds = %96, %4
  %107 = phi i32 [ %5, %4 ], [ %97, %96 ]
  %108 = phi ptr [ %6, %4 ], [ %99, %96 ]
  %109 = phi i32 [ 0, %4 ], [ %100, %96 ]
  store i32 %107, ptr %2, align 4, !tbaa !24
  br label %110

110:                                              ; preds = %83, %48, %106
  %111 = phi ptr [ null, %83 ], [ null, %48 ], [ %108, %106 ]
  %112 = phi i32 [ 0, %83 ], [ 0, %48 ], [ %109, %106 ]
  store ptr %111, ptr %3, align 8, !tbaa !25
  ret i32 %112
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kgetline(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.__kstring_t, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__kstring_t, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %5, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %51, %3
  %9 = phi ptr [ %52, %51 ], [ %7, %3 ]
  %10 = phi i64 [ %55, %51 ], [ %4, %3 ]
  %11 = icmp eq i64 %10, %4
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %9, i64 %10
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = icmp eq i8 %15, 10
  br i1 %16, label %56, label %17

17:                                               ; preds = %8, %12
  %18 = load i64, ptr %6, align 8, !tbaa !12
  %19 = sub i64 %18, %10
  %20 = icmp ult i64 %19, 200
  %21 = icmp ult i64 %18, -200
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = add nuw i64 %18, 199
  %25 = lshr i64 %24, 1
  %26 = or i64 %25, %24
  %27 = lshr i64 %26, 2
  %28 = or i64 %27, %26
  %29 = lshr i64 %28, 4
  %30 = or i64 %29, %28
  %31 = lshr i64 %30, 8
  %32 = or i64 %31, %30
  %33 = lshr i64 %32, 16
  %34 = or i64 %33, %32
  %35 = add i64 %34, 1
  store i64 %35, ptr %6, align 8, !tbaa !12
  %36 = tail call ptr @realloc(ptr noundef %9, i64 noundef %35) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load ptr, ptr %5, align 8, !tbaa !5
  br label %41

40:                                               ; preds = %23
  store ptr %36, ptr %5, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %38, %40, %17
  %42 = phi ptr [ %39, %38 ], [ %36, %40 ], [ %9, %17 ]
  %43 = load i64, ptr %0, align 8, !tbaa !11
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = load i64, ptr %6, align 8, !tbaa !12
  %46 = sub i64 %45, %43
  %47 = trunc i64 %46 to i32
  %48 = tail call ptr %1(ptr noundef %44, i32 noundef %47, ptr noundef %2) #12
  %49 = icmp eq ptr %48, null
  %50 = load i64, ptr %0, align 8, !tbaa !11
  br i1 %49, label %56, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %5, align 8, !tbaa !5
  %53 = getelementptr inbounds i8, ptr %52, i64 %50
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #14
  %55 = add i64 %54, %50
  store i64 %55, ptr %0, align 8, !tbaa !11
  br label %8, !llvm.loop !29

56:                                               ; preds = %41, %12
  %57 = phi i64 [ %50, %41 ], [ %10, %12 ]
  %58 = icmp eq i64 %57, %4
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  %60 = icmp ugt i64 %57, %4
  %61 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %60, label %62, label %76

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %61, i64 %57
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 10
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = add i64 %57, -1
  store i64 %68, ptr %0, align 8, !tbaa !11
  %69 = icmp ugt i64 %68, %4
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %63, i64 -2
  %72 = load i8, ptr %71, align 1, !tbaa !16
  %73 = icmp eq i8 %72, 13
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = add i64 %57, -2
  store i64 %75, ptr %0, align 8, !tbaa !11
  br label %76

76:                                               ; preds = %67, %70, %74, %62, %59
  %77 = phi i64 [ %68, %67 ], [ %68, %70 ], [ %75, %74 ], [ %57, %62 ], [ %57, %59 ]
  %78 = getelementptr inbounds i8, ptr %61, i64 %77
  store i8 0, ptr %78, align 1, !tbaa !16
  br label %79

79:                                               ; preds = %56, %76
  %80 = phi i32 [ 0, %76 ], [ -1, %56 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local ptr @kmemmem(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = sext i32 %3 to i64
  br label %367

12:                                               ; preds = %7, %5
  %13 = add nsw i32 %3, 256
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 4) #16
  %16 = sext i32 %3 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = insertelement <4 x i32> poison, i32 %3, i64 0
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  %20 = getelementptr inbounds i32, ptr %17, i64 4
  store <4 x i32> %19, ptr %17, align 4, !tbaa !24
  store <4 x i32> %19, ptr %20, align 4, !tbaa !24
  %21 = getelementptr inbounds i32, ptr %17, i64 8
  %22 = getelementptr inbounds i32, ptr %17, i64 12
  store <4 x i32> %19, ptr %21, align 4, !tbaa !24
  store <4 x i32> %19, ptr %22, align 4, !tbaa !24
  %23 = getelementptr inbounds i32, ptr %17, i64 16
  %24 = getelementptr inbounds i32, ptr %17, i64 20
  store <4 x i32> %19, ptr %23, align 4, !tbaa !24
  store <4 x i32> %19, ptr %24, align 4, !tbaa !24
  %25 = getelementptr inbounds i32, ptr %17, i64 24
  %26 = getelementptr inbounds i32, ptr %17, i64 28
  store <4 x i32> %19, ptr %25, align 4, !tbaa !24
  store <4 x i32> %19, ptr %26, align 4, !tbaa !24
  %27 = getelementptr inbounds i32, ptr %17, i64 32
  %28 = getelementptr inbounds i32, ptr %17, i64 36
  store <4 x i32> %19, ptr %27, align 4, !tbaa !24
  store <4 x i32> %19, ptr %28, align 4, !tbaa !24
  %29 = getelementptr inbounds i32, ptr %17, i64 40
  %30 = getelementptr inbounds i32, ptr %17, i64 44
  store <4 x i32> %19, ptr %29, align 4, !tbaa !24
  store <4 x i32> %19, ptr %30, align 4, !tbaa !24
  %31 = getelementptr inbounds i32, ptr %17, i64 48
  %32 = getelementptr inbounds i32, ptr %17, i64 52
  store <4 x i32> %19, ptr %31, align 4, !tbaa !24
  store <4 x i32> %19, ptr %32, align 4, !tbaa !24
  %33 = getelementptr inbounds i32, ptr %17, i64 56
  %34 = getelementptr inbounds i32, ptr %17, i64 60
  store <4 x i32> %19, ptr %33, align 4, !tbaa !24
  store <4 x i32> %19, ptr %34, align 4, !tbaa !24
  %35 = getelementptr inbounds i32, ptr %17, i64 64
  %36 = getelementptr inbounds i32, ptr %17, i64 68
  store <4 x i32> %19, ptr %35, align 4, !tbaa !24
  store <4 x i32> %19, ptr %36, align 4, !tbaa !24
  %37 = getelementptr inbounds i32, ptr %17, i64 72
  %38 = getelementptr inbounds i32, ptr %17, i64 76
  store <4 x i32> %19, ptr %37, align 4, !tbaa !24
  store <4 x i32> %19, ptr %38, align 4, !tbaa !24
  %39 = getelementptr inbounds i32, ptr %17, i64 80
  %40 = getelementptr inbounds i32, ptr %17, i64 84
  store <4 x i32> %19, ptr %39, align 4, !tbaa !24
  store <4 x i32> %19, ptr %40, align 4, !tbaa !24
  %41 = getelementptr inbounds i32, ptr %17, i64 88
  %42 = getelementptr inbounds i32, ptr %17, i64 92
  store <4 x i32> %19, ptr %41, align 4, !tbaa !24
  store <4 x i32> %19, ptr %42, align 4, !tbaa !24
  %43 = getelementptr inbounds i32, ptr %17, i64 96
  %44 = getelementptr inbounds i32, ptr %17, i64 100
  store <4 x i32> %19, ptr %43, align 4, !tbaa !24
  store <4 x i32> %19, ptr %44, align 4, !tbaa !24
  %45 = getelementptr inbounds i32, ptr %17, i64 104
  %46 = getelementptr inbounds i32, ptr %17, i64 108
  store <4 x i32> %19, ptr %45, align 4, !tbaa !24
  store <4 x i32> %19, ptr %46, align 4, !tbaa !24
  %47 = getelementptr inbounds i32, ptr %17, i64 112
  %48 = getelementptr inbounds i32, ptr %17, i64 116
  store <4 x i32> %19, ptr %47, align 4, !tbaa !24
  store <4 x i32> %19, ptr %48, align 4, !tbaa !24
  %49 = getelementptr inbounds i32, ptr %17, i64 120
  %50 = getelementptr inbounds i32, ptr %17, i64 124
  store <4 x i32> %19, ptr %49, align 4, !tbaa !24
  store <4 x i32> %19, ptr %50, align 4, !tbaa !24
  %51 = getelementptr inbounds i32, ptr %17, i64 128
  %52 = getelementptr inbounds i32, ptr %17, i64 132
  store <4 x i32> %19, ptr %51, align 4, !tbaa !24
  store <4 x i32> %19, ptr %52, align 4, !tbaa !24
  %53 = getelementptr inbounds i32, ptr %17, i64 136
  %54 = getelementptr inbounds i32, ptr %17, i64 140
  store <4 x i32> %19, ptr %53, align 4, !tbaa !24
  store <4 x i32> %19, ptr %54, align 4, !tbaa !24
  %55 = getelementptr inbounds i32, ptr %17, i64 144
  %56 = getelementptr inbounds i32, ptr %17, i64 148
  store <4 x i32> %19, ptr %55, align 4, !tbaa !24
  store <4 x i32> %19, ptr %56, align 4, !tbaa !24
  %57 = getelementptr inbounds i32, ptr %17, i64 152
  %58 = getelementptr inbounds i32, ptr %17, i64 156
  store <4 x i32> %19, ptr %57, align 4, !tbaa !24
  store <4 x i32> %19, ptr %58, align 4, !tbaa !24
  %59 = getelementptr inbounds i32, ptr %17, i64 160
  %60 = getelementptr inbounds i32, ptr %17, i64 164
  store <4 x i32> %19, ptr %59, align 4, !tbaa !24
  store <4 x i32> %19, ptr %60, align 4, !tbaa !24
  %61 = getelementptr inbounds i32, ptr %17, i64 168
  %62 = getelementptr inbounds i32, ptr %17, i64 172
  store <4 x i32> %19, ptr %61, align 4, !tbaa !24
  store <4 x i32> %19, ptr %62, align 4, !tbaa !24
  %63 = getelementptr inbounds i32, ptr %17, i64 176
  %64 = getelementptr inbounds i32, ptr %17, i64 180
  store <4 x i32> %19, ptr %63, align 4, !tbaa !24
  store <4 x i32> %19, ptr %64, align 4, !tbaa !24
  %65 = getelementptr inbounds i32, ptr %17, i64 184
  %66 = getelementptr inbounds i32, ptr %17, i64 188
  store <4 x i32> %19, ptr %65, align 4, !tbaa !24
  store <4 x i32> %19, ptr %66, align 4, !tbaa !24
  %67 = getelementptr inbounds i32, ptr %17, i64 192
  %68 = getelementptr inbounds i32, ptr %17, i64 196
  store <4 x i32> %19, ptr %67, align 4, !tbaa !24
  store <4 x i32> %19, ptr %68, align 4, !tbaa !24
  %69 = getelementptr inbounds i32, ptr %17, i64 200
  %70 = getelementptr inbounds i32, ptr %17, i64 204
  store <4 x i32> %19, ptr %69, align 4, !tbaa !24
  store <4 x i32> %19, ptr %70, align 4, !tbaa !24
  %71 = getelementptr inbounds i32, ptr %17, i64 208
  %72 = getelementptr inbounds i32, ptr %17, i64 212
  store <4 x i32> %19, ptr %71, align 4, !tbaa !24
  store <4 x i32> %19, ptr %72, align 4, !tbaa !24
  %73 = getelementptr inbounds i32, ptr %17, i64 216
  %74 = getelementptr inbounds i32, ptr %17, i64 220
  store <4 x i32> %19, ptr %73, align 4, !tbaa !24
  store <4 x i32> %19, ptr %74, align 4, !tbaa !24
  %75 = getelementptr inbounds i32, ptr %17, i64 224
  %76 = getelementptr inbounds i32, ptr %17, i64 228
  store <4 x i32> %19, ptr %75, align 4, !tbaa !24
  store <4 x i32> %19, ptr %76, align 4, !tbaa !24
  %77 = getelementptr inbounds i32, ptr %17, i64 232
  %78 = getelementptr inbounds i32, ptr %17, i64 236
  store <4 x i32> %19, ptr %77, align 4, !tbaa !24
  store <4 x i32> %19, ptr %78, align 4, !tbaa !24
  %79 = getelementptr inbounds i32, ptr %17, i64 240
  %80 = getelementptr inbounds i32, ptr %17, i64 244
  store <4 x i32> %19, ptr %79, align 4, !tbaa !24
  store <4 x i32> %19, ptr %80, align 4, !tbaa !24
  %81 = getelementptr inbounds i32, ptr %17, i64 248
  %82 = getelementptr inbounds i32, ptr %17, i64 252
  store <4 x i32> %19, ptr %81, align 4, !tbaa !24
  store <4 x i32> %19, ptr %82, align 4, !tbaa !24
  %83 = add i32 %3, -1
  %84 = icmp sgt i32 %3, 1
  br i1 %84, label %89, label %85

85:                                               ; preds = %12
  %86 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 4) #16
  %87 = sext i32 %83 to i64
  %88 = getelementptr inbounds i32, ptr %86, i64 %87
  store i32 %3, ptr %88, align 4, !tbaa !24
  br label %155

89:                                               ; preds = %12
  %90 = zext nneg i32 %83 to i64
  %91 = add nsw i64 %90, -1
  %92 = and i64 %90, 3
  %93 = icmp ult i64 %91, 3
  br i1 %93, label %133, label %94

94:                                               ; preds = %89
  %95 = and i64 %90, 2147483644
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %130, %96 ]
  %98 = phi i64 [ 0, %94 ], [ %131, %96 ]
  %99 = trunc i64 %97 to i32
  %100 = xor i32 %99, -1
  %101 = add nsw i32 %100, %3
  %102 = getelementptr inbounds i8, ptr %2, i64 %97
  %103 = load i8, ptr %102, align 1, !tbaa !16
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i32, ptr %17, i64 %104
  store i32 %101, ptr %105, align 4, !tbaa !24
  %106 = or disjoint i64 %97, 1
  %107 = trunc i64 %106 to i32
  %108 = xor i32 %107, -1
  %109 = add nsw i32 %108, %3
  %110 = getelementptr inbounds i8, ptr %2, i64 %106
  %111 = load i8, ptr %110, align 1, !tbaa !16
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds i32, ptr %17, i64 %112
  store i32 %109, ptr %113, align 4, !tbaa !24
  %114 = or disjoint i64 %97, 2
  %115 = trunc i64 %114 to i32
  %116 = xor i32 %115, -1
  %117 = add nsw i32 %116, %3
  %118 = getelementptr inbounds i8, ptr %2, i64 %114
  %119 = load i8, ptr %118, align 1, !tbaa !16
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i32, ptr %17, i64 %120
  store i32 %117, ptr %121, align 4, !tbaa !24
  %122 = or disjoint i64 %97, 3
  %123 = trunc i64 %122 to i32
  %124 = xor i32 %123, -1
  %125 = add nsw i32 %124, %3
  %126 = getelementptr inbounds i8, ptr %2, i64 %122
  %127 = load i8, ptr %126, align 1, !tbaa !16
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds i32, ptr %17, i64 %128
  store i32 %125, ptr %129, align 4, !tbaa !24
  %130 = add nuw nsw i64 %97, 4
  %131 = add i64 %98, 4
  %132 = icmp eq i64 %131, %95
  br i1 %132, label %133, label %96, !llvm.loop !30

133:                                              ; preds = %96, %89
  %134 = phi i64 [ 0, %89 ], [ %130, %96 ]
  %135 = icmp eq i64 %92, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %133, %136
  %137 = phi i64 [ %146, %136 ], [ %134, %133 ]
  %138 = phi i64 [ %147, %136 ], [ 0, %133 ]
  %139 = trunc i64 %137 to i32
  %140 = xor i32 %139, -1
  %141 = add nsw i32 %140, %3
  %142 = getelementptr inbounds i8, ptr %2, i64 %137
  %143 = load i8, ptr %142, align 1, !tbaa !16
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i32, ptr %17, i64 %144
  store i32 %141, ptr %145, align 4, !tbaa !24
  %146 = add nuw nsw i64 %137, 1
  %147 = add i64 %138, 1
  %148 = icmp eq i64 %147, %92
  br i1 %148, label %149, label %136, !llvm.loop !31

149:                                              ; preds = %136, %133
  %150 = tail call noalias ptr @calloc(i64 noundef %16, i64 noundef 4) #16
  %151 = sext i32 %83 to i64
  %152 = getelementptr inbounds i32, ptr %150, i64 %151
  store i32 %3, ptr %152, align 4, !tbaa !24
  %153 = add nsw i32 %3, -2
  %154 = zext nneg i32 %153 to i64
  br label %175

155:                                              ; preds = %217, %85
  %156 = phi ptr [ %86, %85 ], [ %150, %217 ]
  %157 = icmp sgt i32 %3, 0
  br i1 %157, label %158, label %362

158:                                              ; preds = %155
  %159 = zext nneg i32 %3 to i64
  %160 = icmp ult i32 %3, 8
  br i1 %160, label %173, label %161

161:                                              ; preds = %158
  %162 = and i64 %159, 2147483640
  %163 = insertelement <4 x i32> poison, i32 %3, i64 0
  %164 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %165

165:                                              ; preds = %165, %161
  %166 = phi i64 [ 0, %161 ], [ %169, %165 ]
  %167 = getelementptr inbounds i32, ptr %15, i64 %166
  %168 = getelementptr inbounds i32, ptr %167, i64 4
  store <4 x i32> %164, ptr %167, align 4, !tbaa !24
  store <4 x i32> %164, ptr %168, align 4, !tbaa !24
  %169 = add nuw i64 %166, 8
  %170 = icmp eq i64 %169, %162
  br i1 %170, label %171, label %165, !llvm.loop !33

171:                                              ; preds = %165
  %172 = icmp eq i64 %162, %159
  br i1 %172, label %224, label %173

173:                                              ; preds = %158, %171
  %174 = phi i64 [ 0, %158 ], [ %162, %171 ]
  br label %235

175:                                              ; preds = %217, %149
  %176 = phi i64 [ %154, %149 ], [ %222, %217 ]
  %177 = phi i32 [ %83, %149 ], [ %220, %217 ]
  %178 = phi i32 [ 0, %149 ], [ %219, %217 ]
  %179 = sext i32 %177 to i64
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %175
  %182 = trunc i64 %176 to i32
  br label %193

183:                                              ; preds = %175
  %184 = xor i32 %178, -1
  %185 = trunc i64 %176 to i32
  %186 = add i32 %185, %3
  %187 = add i32 %186, %184
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, ptr %150, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !24
  %191 = sub nsw i32 %185, %177
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %217, label %193

193:                                              ; preds = %183, %181
  %194 = phi i32 [ %182, %181 ], [ %185, %183 ]
  %195 = tail call i32 @llvm.smin.i32(i32 %194, i32 %177)
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %197, label %214

197:                                              ; preds = %193
  %198 = xor i32 %194, -1
  %199 = add i32 %198, %3
  %200 = tail call i64 @llvm.smin.i64(i64 %176, i64 %179)
  br label %201

201:                                              ; preds = %211, %197
  %202 = phi i64 [ %200, %197 ], [ %212, %211 ]
  %203 = getelementptr inbounds i8, ptr %2, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !16
  %205 = trunc i64 %202 to i32
  %206 = add i32 %199, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %2, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !16
  %210 = icmp eq i8 %204, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = add nsw i64 %202, -1
  %213 = icmp sgt i64 %202, 0
  br i1 %213, label %201, label %214, !llvm.loop !36

214:                                              ; preds = %211, %201, %193
  %215 = phi i32 [ %195, %193 ], [ %205, %201 ], [ -1, %211 ]
  %216 = sub nsw i32 %194, %215
  br label %217

217:                                              ; preds = %214, %183
  %218 = phi i32 [ %216, %214 ], [ %190, %183 ]
  %219 = phi i32 [ %194, %214 ], [ %178, %183 ]
  %220 = phi i32 [ %215, %214 ], [ %177, %183 ]
  %221 = getelementptr inbounds i32, ptr %150, i64 %176
  store i32 %218, ptr %221, align 4, !tbaa !24
  %222 = add nsw i64 %176, -1
  %223 = icmp sgt i64 %176, 0
  br i1 %223, label %175, label %155, !llvm.loop !37

224:                                              ; preds = %235, %171
  %225 = zext i32 %83 to i64
  %226 = insertelement <4 x i32> poison, i32 %3, i64 0
  %227 = shufflevector <4 x i32> %226, <4 x i32> poison, <4 x i32> zeroinitializer
  %228 = getelementptr i32, ptr %15, i64 1
  %229 = getelementptr i32, ptr %15, i64 2
  %230 = getelementptr i32, ptr %15, i64 3
  %231 = getelementptr i32, ptr %15, i64 4
  %232 = getelementptr i32, ptr %15, i64 5
  %233 = getelementptr i32, ptr %15, i64 6
  %234 = getelementptr i32, ptr %15, i64 7
  br label %247

235:                                              ; preds = %173, %235
  %236 = phi i64 [ %238, %235 ], [ %174, %173 ]
  %237 = getelementptr inbounds i32, ptr %15, i64 %236
  store i32 %3, ptr %237, align 4, !tbaa !24
  %238 = add nuw nsw i64 %236, 1
  %239 = icmp eq i64 %238, %159
  br i1 %239, label %224, label %235, !llvm.loop !38

240:                                              ; preds = %325
  %241 = icmp eq i32 %3, 1
  br i1 %241, label %362, label %242

242:                                              ; preds = %240
  %243 = and i64 %225, 1
  %244 = icmp eq i32 %83, 1
  br i1 %244, label %351, label %245

245:                                              ; preds = %242
  %246 = and i64 %225, 4294967294
  br label %330

247:                                              ; preds = %325, %224
  %248 = phi i64 [ %225, %224 ], [ %327, %325 ]
  %249 = phi i64 [ 0, %224 ], [ %328, %325 ]
  %250 = phi i32 [ 0, %224 ], [ %326, %325 ]
  %251 = getelementptr inbounds i32, ptr %156, i64 %248
  %252 = load i32, ptr %251, align 4, !tbaa !24
  %253 = add nuw nsw i64 %248, 1
  %254 = zext i32 %252 to i64
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %325

256:                                              ; preds = %247
  %257 = sub nuw nsw i64 %225, %248
  %258 = sext i32 %250 to i64
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %325

260:                                              ; preds = %256
  %261 = trunc i64 %257 to i32
  %262 = sub i64 %249, %258
  %263 = icmp ult i64 %262, 8
  br i1 %263, label %312, label %264

264:                                              ; preds = %260
  %265 = and i64 %262, -8
  %266 = add i64 %265, %258
  br label %267

267:                                              ; preds = %307, %264
  %268 = phi i64 [ 0, %264 ], [ %308, %307 ]
  %269 = add i64 %268, %258
  %270 = getelementptr inbounds i32, ptr %15, i64 %269
  %271 = getelementptr inbounds i32, ptr %270, i64 4
  %272 = load <4 x i32>, ptr %270, align 4, !tbaa !24
  %273 = load <4 x i32>, ptr %271, align 4, !tbaa !24
  %274 = icmp eq <4 x i32> %272, %227
  %275 = icmp eq <4 x i32> %273, %227
  %276 = extractelement <4 x i1> %274, i64 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = getelementptr inbounds i32, ptr %15, i64 %269
  store i32 %261, ptr %278, align 4, !tbaa !24
  br label %279

279:                                              ; preds = %277, %267
  %280 = extractelement <4 x i1> %274, i64 1
  br i1 %280, label %281, label %283

281:                                              ; preds = %279
  %282 = getelementptr i32, ptr %228, i64 %269
  store i32 %261, ptr %282, align 4, !tbaa !24
  br label %283

283:                                              ; preds = %281, %279
  %284 = extractelement <4 x i1> %274, i64 2
  br i1 %284, label %285, label %287

285:                                              ; preds = %283
  %286 = getelementptr i32, ptr %229, i64 %269
  store i32 %261, ptr %286, align 4, !tbaa !24
  br label %287

287:                                              ; preds = %285, %283
  %288 = extractelement <4 x i1> %274, i64 3
  br i1 %288, label %289, label %291

289:                                              ; preds = %287
  %290 = getelementptr i32, ptr %230, i64 %269
  store i32 %261, ptr %290, align 4, !tbaa !24
  br label %291

291:                                              ; preds = %289, %287
  %292 = extractelement <4 x i1> %275, i64 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %291
  %294 = getelementptr i32, ptr %231, i64 %269
  store i32 %261, ptr %294, align 4, !tbaa !24
  br label %295

295:                                              ; preds = %293, %291
  %296 = extractelement <4 x i1> %275, i64 1
  br i1 %296, label %297, label %299

297:                                              ; preds = %295
  %298 = getelementptr i32, ptr %232, i64 %269
  store i32 %261, ptr %298, align 4, !tbaa !24
  br label %299

299:                                              ; preds = %297, %295
  %300 = extractelement <4 x i1> %275, i64 2
  br i1 %300, label %301, label %303

301:                                              ; preds = %299
  %302 = getelementptr i32, ptr %233, i64 %269
  store i32 %261, ptr %302, align 4, !tbaa !24
  br label %303

303:                                              ; preds = %301, %299
  %304 = extractelement <4 x i1> %275, i64 3
  br i1 %304, label %305, label %307

305:                                              ; preds = %303
  %306 = getelementptr i32, ptr %234, i64 %269
  store i32 %261, ptr %306, align 4, !tbaa !24
  br label %307

307:                                              ; preds = %305, %303
  %308 = add nuw i64 %268, 8
  %309 = icmp eq i64 %308, %265
  br i1 %309, label %310, label %267, !llvm.loop !39

310:                                              ; preds = %307
  %311 = icmp eq i64 %262, %265
  br i1 %311, label %323, label %312

312:                                              ; preds = %260, %310
  %313 = phi i64 [ %258, %260 ], [ %266, %310 ]
  br label %314

314:                                              ; preds = %312, %320
  %315 = phi i64 [ %321, %320 ], [ %313, %312 ]
  %316 = getelementptr inbounds i32, ptr %15, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !24
  %318 = icmp eq i32 %317, %3
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  store i32 %261, ptr %316, align 4, !tbaa !24
  br label %320

320:                                              ; preds = %319, %314
  %321 = add nsw i64 %315, 1
  %322 = icmp eq i64 %321, %249
  br i1 %322, label %323, label %314, !llvm.loop !40

323:                                              ; preds = %320, %310
  %324 = trunc i64 %249 to i32
  br label %325

325:                                              ; preds = %323, %256, %247
  %326 = phi i32 [ %250, %247 ], [ %250, %256 ], [ %324, %323 ]
  %327 = add nsw i64 %248, -1
  %328 = add nuw nsw i64 %249, 1
  %329 = icmp eq i64 %328, %159
  br i1 %329, label %240, label %247, !llvm.loop !41

330:                                              ; preds = %330, %245
  %331 = phi i64 [ 0, %245 ], [ %348, %330 ]
  %332 = phi i64 [ 0, %245 ], [ %349, %330 ]
  %333 = getelementptr inbounds i32, ptr %156, i64 %331
  %334 = load i32, ptr %333, align 4, !tbaa !24
  %335 = sub nsw i32 %83, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, ptr %15, i64 %336
  %338 = trunc i64 %331 to i32
  %339 = sub i32 %83, %338
  store i32 %339, ptr %337, align 4, !tbaa !24
  %340 = or disjoint i64 %331, 1
  %341 = getelementptr inbounds i32, ptr %156, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !24
  %343 = sub nsw i32 %83, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %15, i64 %344
  %346 = trunc i64 %340 to i32
  %347 = sub i32 %83, %346
  store i32 %347, ptr %345, align 4, !tbaa !24
  %348 = add nuw nsw i64 %331, 2
  %349 = add i64 %332, 2
  %350 = icmp eq i64 %349, %246
  br i1 %350, label %351, label %330, !llvm.loop !42

351:                                              ; preds = %330, %242
  %352 = phi i64 [ 0, %242 ], [ %348, %330 ]
  %353 = icmp eq i64 %243, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds i32, ptr %156, i64 %352
  %356 = load i32, ptr %355, align 4, !tbaa !24
  %357 = sub nsw i32 %83, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, ptr %15, i64 %358
  %360 = trunc i64 %352 to i32
  %361 = sub i32 %83, %360
  store i32 %361, ptr %359, align 4, !tbaa !24
  br label %362

362:                                              ; preds = %354, %351, %240, %155
  tail call void @free(ptr noundef %156) #12
  br i1 %6, label %367, label %363

363:                                              ; preds = %362
  %364 = load ptr, ptr %4, align 8, !tbaa !25
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  store ptr %15, ptr %4, align 8, !tbaa !25
  br label %367

367:                                              ; preds = %10, %366, %363, %362
  %368 = phi i64 [ %11, %10 ], [ %16, %366 ], [ %16, %363 ], [ %16, %362 ]
  %369 = phi ptr [ %8, %10 ], [ %15, %366 ], [ %15, %363 ], [ %15, %362 ]
  %370 = getelementptr inbounds i32, ptr %369, i64 %368
  %371 = sub nsw i32 %1, %3
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %401, label %373

373:                                              ; preds = %367, %387
  %374 = phi i32 [ %397, %387 ], [ 0, %367 ]
  %375 = sext i32 %374 to i64
  %376 = getelementptr i8, ptr %0, i64 %375
  br label %377

377:                                              ; preds = %373, %380
  %378 = phi i64 [ %368, %373 ], [ %381, %380 ]
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %399

380:                                              ; preds = %377
  %381 = add nsw i64 %378, -1
  %382 = getelementptr inbounds i8, ptr %2, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !16
  %384 = getelementptr i8, ptr %376, i64 %381
  %385 = load i8, ptr %384, align 1, !tbaa !16
  %386 = icmp eq i8 %383, %385
  br i1 %386, label %377, label %387, !llvm.loop !43

387:                                              ; preds = %380
  %388 = trunc i64 %378 to i32
  %389 = zext i8 %385 to i64
  %390 = getelementptr inbounds i32, ptr %370, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !24
  %392 = sub i32 %388, %3
  %393 = add i32 %392, %391
  %394 = getelementptr inbounds i32, ptr %369, i64 %381
  %395 = load i32, ptr %394, align 4, !tbaa !24
  %396 = tail call i32 @llvm.smax.i32(i32 %393, i32 %395)
  %397 = add nsw i32 %396, %374
  %398 = icmp sgt i32 %397, %371
  br i1 %398, label %401, label %373, !llvm.loop !44

399:                                              ; preds = %377
  %400 = getelementptr inbounds i8, ptr %0, i64 %375
  br label %403

401:                                              ; preds = %387, %367
  br i1 %6, label %402, label %403

402:                                              ; preds = %401
  tail call void @free(ptr noundef %369) #12
  br label %403

403:                                              ; preds = %401, %402, %399
  %404 = phi ptr [ %400, %399 ], [ null, %402 ], [ null, %401 ]
  ret ptr %404
}

; Function Attrs: nounwind uwtable
define dso_local ptr @kstrstr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %5 = trunc i64 %4 to i32
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %7 = trunc i64 %6 to i32
  %8 = tail call ptr @kmemmem(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %7, ptr noundef %2)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @kstrnstr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %6 = trunc i64 %5 to i32
  %7 = tail call ptr @kmemmem(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %6, ptr noundef %3)
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"__kstring_t", !7, i64 0, !7, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 8}
!13 = !{!14, !15, i64 36}
!14 = !{!"", !8, i64 0, !15, i64 32, !15, i64 36, !10, i64 40}
!15 = !{!"int", !8, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!14, !15, i64 32}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !10, i64 40}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = !{!15, !15, i64 0}
!25 = !{!10, !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !20, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20, !35, !34}
!39 = distinct !{!39, !20, !34, !35}
!40 = distinct !{!40, !20, !35, !34}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
