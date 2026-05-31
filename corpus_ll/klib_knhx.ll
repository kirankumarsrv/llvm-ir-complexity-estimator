; ModuleID = 'corpus_src/klib/knhx.c'
source_filename = "corpus_src/klib/knhx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.knaux_t = type { i32, i32, i32, ptr }
%struct.knhx1_t = type { i32, i32, ptr, ptr, double }
%struct.__kstring_t = type { i64, i64, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":%g\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @kn_parse(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #13
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %154, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__ctype_b_loc() #14
  %9 = getelementptr inbounds %struct.knaux_t, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.knaux_t, ptr %4, i64 0, i32 3
  br label %11

11:                                               ; preds = %7, %147
  %12 = phi i8 [ %5, %7 ], [ %152, %147 ]
  %13 = phi ptr [ %0, %7 ], [ %151, %147 ]
  %14 = phi ptr [ null, %7 ], [ %150, %147 ]
  %15 = phi i32 [ 0, %7 ], [ %149, %147 ]
  %16 = phi i32 [ 0, %7 ], [ %148, %147 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !8
  br label %18

18:                                               ; preds = %11, %25
  %19 = phi ptr [ %13, %11 ], [ %26, %25 ]
  %20 = phi i8 [ %12, %11 ], [ %27, %25 ]
  %21 = sext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %17, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !10
  %24 = icmp sgt i16 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %154, label %18, !llvm.loop !12

29:                                               ; preds = %18
  switch i8 %20, label %130 [
    i8 41, label %48
    i8 44, label %30
    i8 40, label %32
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds i8, ptr %19, i64 1
  br label %147

32:                                               ; preds = %29
  %33 = icmp eq i32 %15, %16
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = icmp eq i32 %15, 0
  %36 = shl i32 %15, 1
  %37 = select i1 %35, i32 16, i32 %36
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr @realloc(ptr noundef %14, i64 noundef %39) #15
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i32 [ %37, %34 ], [ %16, %32 ]
  %43 = phi ptr [ %40, %34 ], [ %14, %32 ]
  %44 = add nsw i32 %15, 1
  %45 = sext i32 %15 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  store i32 -1, ptr %46, align 4, !tbaa !14
  %47 = getelementptr inbounds i8, ptr %19, i64 1
  br label %147

48:                                               ; preds = %29
  %49 = load i32, ptr %9, align 4, !tbaa !16
  %50 = add i32 %15, -1
  %51 = icmp sgt i32 %15, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %58
  %53 = phi i32 [ %59, %58 ], [ %50, %48 ]
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %14, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !14
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = add nsw i32 %53, -1
  %60 = icmp sgt i32 %53, 0
  br i1 %60, label %52, label %61, !llvm.loop !18

61:                                               ; preds = %58, %52, %48
  %62 = phi i32 [ %50, %48 ], [ %53, %52 ], [ -1, %58 ]
  %63 = sub nsw i32 %50, %62
  %64 = getelementptr inbounds i8, ptr %19, i64 1
  %65 = tail call fastcc ptr @add_node(ptr noundef nonnull %64, ptr noundef %4, i32 noundef %63)
  %66 = sext i32 %63 to i64
  %67 = tail call noalias ptr @calloc(i64 noundef %66, i64 noundef 4) #13
  %68 = load ptr, ptr %10, align 8, !tbaa !19
  %69 = sext i32 %49 to i64
  %70 = getelementptr inbounds %struct.knhx1_t, ptr %68, i64 %69, i32 2
  store ptr %67, ptr %70, align 8, !tbaa !20
  %71 = icmp sgt i32 %63, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %61
  %73 = sext i32 %50 to i64
  %74 = zext nneg i32 %63 to i64
  %75 = add i32 %15, -2
  %76 = and i32 %63, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = add nsw i64 %74, -1
  %80 = getelementptr inbounds i32, ptr %14, i64 %73
  %81 = load i32, ptr %80, align 4, !tbaa !14
  %82 = getelementptr inbounds i32, ptr %67, i64 %79
  store i32 %81, ptr %82, align 4, !tbaa !14
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.knhx1_t, ptr %68, i64 %83
  store i32 %49, ptr %84, align 8, !tbaa !23
  %85 = add nsw i64 %73, -1
  br label %86

86:                                               ; preds = %78, %72
  %87 = phi i64 [ %74, %72 ], [ %79, %78 ]
  %88 = phi i64 [ %73, %72 ], [ %85, %78 ]
  %89 = phi i64 [ undef, %72 ], [ %85, %78 ]
  %90 = icmp eq i32 %75, %62
  br i1 %90, label %111, label %91

91:                                               ; preds = %86, %91
  %92 = phi i64 [ %102, %91 ], [ %87, %86 ]
  %93 = phi i64 [ %109, %91 ], [ %88, %86 ]
  %94 = add i64 %92, 4294967295
  %95 = getelementptr inbounds i32, ptr %14, i64 %93
  %96 = load i32, ptr %95, align 4, !tbaa !14
  %97 = and i64 %94, 4294967295
  %98 = getelementptr inbounds i32, ptr %67, i64 %97
  store i32 %96, ptr %98, align 4, !tbaa !14
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds %struct.knhx1_t, ptr %68, i64 %99
  store i32 %49, ptr %100, align 8, !tbaa !23
  %101 = add nsw i64 %93, -1
  %102 = add nsw i64 %92, -2
  %103 = getelementptr inbounds i32, ptr %14, i64 %101
  %104 = load i32, ptr %103, align 4, !tbaa !14
  %105 = and i64 %102, 4294967295
  %106 = getelementptr inbounds i32, ptr %67, i64 %105
  store i32 %104, ptr %106, align 4, !tbaa !14
  %107 = sext i32 %104 to i64
  %108 = getelementptr inbounds %struct.knhx1_t, ptr %68, i64 %107
  store i32 %49, ptr %108, align 8, !tbaa !23
  %109 = add nsw i64 %93, -2
  %110 = icmp sgt i64 %92, 2
  br i1 %110, label %91, label %111, !llvm.loop !24

111:                                              ; preds = %91, %86
  %112 = phi i64 [ %89, %86 ], [ %109, %91 ]
  %113 = trunc i64 %112 to i32
  br label %114

114:                                              ; preds = %111, %61
  %115 = phi i32 [ %50, %61 ], [ %113, %111 ]
  %116 = icmp eq i32 %115, %16
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = icmp eq i32 %16, 0
  %119 = shl i32 %16, 1
  %120 = select i1 %118, i32 16, i32 %119
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 2
  %123 = tail call ptr @realloc(ptr noundef %14, i64 noundef %122) #15
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i32 [ %120, %117 ], [ %16, %114 ]
  %126 = phi ptr [ %123, %117 ], [ %14, %114 ]
  %127 = add nsw i32 %115, 1
  %128 = sext i32 %115 to i64
  %129 = getelementptr inbounds i32, ptr %126, i64 %128
  store i32 %49, ptr %129, align 4, !tbaa !14
  br label %147

130:                                              ; preds = %29
  %131 = icmp eq i32 %15, %16
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = icmp eq i32 %15, 0
  %134 = shl i32 %15, 1
  %135 = select i1 %133, i32 16, i32 %134
  %136 = sext i32 %135 to i64
  %137 = shl nsw i64 %136, 2
  %138 = tail call ptr @realloc(ptr noundef %14, i64 noundef %137) #15
  br label %139

139:                                              ; preds = %132, %130
  %140 = phi i32 [ %135, %132 ], [ %16, %130 ]
  %141 = phi ptr [ %138, %132 ], [ %14, %130 ]
  %142 = load i32, ptr %9, align 4, !tbaa !16
  %143 = add nsw i32 %15, 1
  %144 = sext i32 %15 to i64
  %145 = getelementptr inbounds i32, ptr %141, i64 %144
  store i32 %142, ptr %145, align 4, !tbaa !14
  %146 = tail call fastcc ptr @add_node(ptr noundef nonnull %19, ptr noundef %4, i32 noundef 0)
  br label %147

147:                                              ; preds = %41, %139, %124, %30
  %148 = phi i32 [ %16, %30 ], [ %42, %41 ], [ %125, %124 ], [ %140, %139 ]
  %149 = phi i32 [ %15, %30 ], [ %44, %41 ], [ %127, %124 ], [ %143, %139 ]
  %150 = phi ptr [ %14, %30 ], [ %43, %41 ], [ %126, %124 ], [ %141, %139 ]
  %151 = phi ptr [ %31, %30 ], [ %47, %41 ], [ %65, %124 ], [ %146, %139 ]
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %11, !llvm.loop !25

154:                                              ; preds = %147, %25, %3
  %155 = phi ptr [ null, %3 ], [ %14, %25 ], [ %150, %147 ]
  %156 = getelementptr inbounds %struct.knaux_t, ptr %4, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !16
  store i32 %157, ptr %1, align 4, !tbaa !14
  %158 = load i32, ptr %4, align 8, !tbaa !26
  store i32 %158, ptr %2, align 4, !tbaa !14
  %159 = getelementptr inbounds %struct.knaux_t, ptr %4, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !19
  tail call void @free(ptr noundef %4) #16
  tail call void @free(ptr noundef %155) #16
  ret ptr %160
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @add_node(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.knaux_t, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds %struct.knaux_t, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.knaux_t, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  br label %23

13:                                               ; preds = %3
  %14 = icmp eq i32 %6, 0
  %15 = shl i32 %6, 1
  %16 = select i1 %14, i32 8, i32 %15
  store i32 %16, ptr %7, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.knaux_t, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = sext i32 %16 to i64
  %20 = shl nsw i64 %19, 5
  %21 = tail call ptr @realloc(ptr noundef %18, i64 noundef %20) #15
  store ptr %21, ptr %17, align 8, !tbaa !19
  %22 = load i32, ptr %5, align 4, !tbaa !16
  br label %23

23:                                               ; preds = %10, %13
  %24 = phi i32 [ %6, %10 ], [ %22, %13 ]
  %25 = phi ptr [ %12, %10 ], [ %21, %13 ]
  %26 = add nsw i32 %24, 1
  store i32 %26, ptr %5, align 4, !tbaa !16
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.knhx1_t, ptr %25, i64 %27
  %29 = getelementptr inbounds %struct.knhx1_t, ptr %25, i64 %27, i32 1
  store i32 %2, ptr %29, align 4, !tbaa !28
  store i32 -1, ptr %28, align 8, !tbaa !23
  store ptr %0, ptr %4, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.knhx1_t, ptr %25, i64 %27, i32 4
  store double -1.000000e+00, ptr %30, align 8, !tbaa !29
  br label %31

31:                                               ; preds = %62, %23
  %32 = phi ptr [ %0, %23 ], [ %65, %62 ]
  %33 = phi ptr [ null, %23 ], [ %64, %62 ]
  %34 = load i8, ptr %32, align 1, !tbaa !5
  switch i8 %34, label %52 [
    i8 0, label %66
    i8 44, label %66
    i8 41, label %66
    i8 91, label %35
    i8 58, label %45
  ]

35:                                               ; preds = %31
  %36 = icmp eq ptr %33, null
  %37 = select i1 %36, ptr %32, ptr %33
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %40, %38 ], [ %32, %35 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !5
  switch i8 %41, label %38 [
    i8 0, label %42
    i8 93, label %62
  ]

42:                                               ; preds = %38
  %43 = load i32, ptr %1, align 8, !tbaa !26
  %44 = or i32 %43, 4
  store i32 %44, ptr %1, align 8, !tbaa !26
  br label %66

45:                                               ; preds = %31
  %46 = icmp eq ptr %33, null
  %47 = select i1 %46, ptr %32, ptr %33
  %48 = getelementptr inbounds i8, ptr %32, i64 1
  %49 = call double @strtod(ptr noundef nonnull %48, ptr noundef nonnull %4) #16
  store double %49, ptr %30, align 8, !tbaa !29
  %50 = load ptr, ptr %4, align 8, !tbaa !8
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  br label %62

52:                                               ; preds = %31
  %53 = tail call ptr @__ctype_b_loc() #14
  %54 = load ptr, ptr %53, align 8, !tbaa !8
  %55 = sext i8 %34 to i64
  %56 = getelementptr inbounds i16, ptr %54, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !10
  %58 = icmp sgt i16 %57, -1
  %59 = icmp eq ptr %33, null
  %60 = select i1 %58, i1 %59, i1 false
  %61 = select i1 %60, ptr %32, ptr %33
  br label %62

62:                                               ; preds = %38, %52, %45
  %63 = phi ptr [ %51, %45 ], [ %32, %52 ], [ %40, %38 ]
  %64 = phi ptr [ %47, %45 ], [ %61, %52 ], [ %37, %38 ]
  %65 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %65, ptr %4, align 8, !tbaa !8
  br label %31, !llvm.loop !30

66:                                               ; preds = %31, %31, %31, %42
  %67 = phi ptr [ %40, %42 ], [ %32, %31 ], [ %32, %31 ], [ %32, %31 ]
  %68 = phi ptr [ %37, %42 ], [ %33, %31 ], [ %33, %31 ], [ %33, %31 ]
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr %67, ptr %68
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = ptrtoint ptr %70 to i64
  %74 = ptrtoint ptr %0 to i64
  %75 = sub i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = tail call noalias ptr @calloc(i64 noundef %76, i64 noundef 1) #13
  %78 = getelementptr inbounds %struct.knhx1_t, ptr %25, i64 %27, i32 3
  store ptr %77, ptr %78, align 8, !tbaa !31
  %79 = tail call ptr @strncpy(ptr noundef %77, ptr noundef %0, i64 noundef %75) #16
  br label %83

80:                                               ; preds = %66
  %81 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #16
  %82 = getelementptr inbounds %struct.knhx1_t, ptr %25, i64 %27, i32 3
  store ptr %81, ptr %82, align 8, !tbaa !31
  br label %83

83:                                               ; preds = %80, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %67
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @kn_format(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.knhx1_t, ptr %0, i64 %5
  call fastcc void @format_node_recur(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @format_node_recur(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %197, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 8, !tbaa !32
  %10 = add i64 %9, 1
  %11 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  br label %34

17:                                               ; preds = %8
  %18 = lshr i64 %10, 1
  %19 = or i64 %18, %10
  %20 = lshr i64 %19, 2
  %21 = or i64 %20, %19
  %22 = lshr i64 %21, 4
  %23 = or i64 %22, %21
  %24 = lshr i64 %23, 8
  %25 = or i64 %24, %23
  %26 = lshr i64 %25, 16
  %27 = or i64 %26, %25
  %28 = add i64 %27, 1
  store i64 %28, ptr %11, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = tail call ptr @realloc(ptr noundef %30, i64 noundef %28) #15
  store ptr %31, ptr %29, align 8, !tbaa !36
  %32 = load i64, ptr %2, align 8, !tbaa !32
  %33 = add i64 %32, 1
  br label %34

34:                                               ; preds = %14, %17
  %35 = phi i64 [ %10, %14 ], [ %33, %17 ]
  %36 = phi i64 [ %9, %14 ], [ %32, %17 ]
  %37 = phi ptr [ %16, %14 ], [ %31, %17 ]
  %38 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  store i64 %35, ptr %2, align 8, !tbaa !32
  %39 = getelementptr inbounds i8, ptr %37, i64 %36
  store i8 40, ptr %39, align 1, !tbaa !5
  %40 = load ptr, ptr %38, align 8, !tbaa !36
  %41 = load i64, ptr %2, align 8, !tbaa !32
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !5
  %43 = load i32, ptr %5, align 4, !tbaa !28
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !20
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.knhx1_t, ptr %0, i64 %49
  tail call fastcc void @format_node_recur(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %2, ptr noundef %3)
  %51 = load i32, ptr %5, align 4, !tbaa !28
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %94

53:                                               ; preds = %45, %77
  %54 = phi i64 [ %90, %77 ], [ 1, %45 ]
  %55 = load i64, ptr %2, align 8, !tbaa !32
  %56 = add i64 %55, 1
  %57 = load i64, ptr %11, align 8, !tbaa !35
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load ptr, ptr %38, align 8, !tbaa !36
  br label %77

61:                                               ; preds = %53
  %62 = lshr i64 %56, 1
  %63 = or i64 %62, %56
  %64 = lshr i64 %63, 2
  %65 = or i64 %64, %63
  %66 = lshr i64 %65, 4
  %67 = or i64 %66, %65
  %68 = lshr i64 %67, 8
  %69 = or i64 %68, %67
  %70 = lshr i64 %69, 16
  %71 = or i64 %70, %69
  %72 = add i64 %71, 1
  store i64 %72, ptr %11, align 8, !tbaa !35
  %73 = load ptr, ptr %38, align 8, !tbaa !36
  %74 = tail call ptr @realloc(ptr noundef %73, i64 noundef %72) #15
  store ptr %74, ptr %38, align 8, !tbaa !36
  %75 = load i64, ptr %2, align 8, !tbaa !32
  %76 = add i64 %75, 1
  br label %77

77:                                               ; preds = %61, %59
  %78 = phi i64 [ %56, %59 ], [ %76, %61 ]
  %79 = phi i64 [ %55, %59 ], [ %75, %61 ]
  %80 = phi ptr [ %60, %59 ], [ %74, %61 ]
  store i64 %78, ptr %2, align 8, !tbaa !32
  %81 = getelementptr inbounds i8, ptr %80, i64 %79
  store i8 44, ptr %81, align 1, !tbaa !5
  %82 = load ptr, ptr %38, align 8, !tbaa !36
  %83 = load i64, ptr %2, align 8, !tbaa !32
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  store i8 0, ptr %84, align 1, !tbaa !5
  %85 = load ptr, ptr %46, align 8, !tbaa !20
  %86 = getelementptr inbounds i32, ptr %85, i64 %54
  %87 = load i32, ptr %86, align 4, !tbaa !14
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.knhx1_t, ptr %0, i64 %88
  tail call fastcc void @format_node_recur(ptr noundef %0, ptr noundef %89, ptr noundef nonnull %2, ptr noundef %3)
  %90 = add nuw nsw i64 %54, 1
  %91 = load i32, ptr %5, align 4, !tbaa !28
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %53, label %94, !llvm.loop !37

94:                                               ; preds = %77, %45, %34
  %95 = load i64, ptr %2, align 8, !tbaa !32
  %96 = add i64 %95, 1
  %97 = load i64, ptr %11, align 8, !tbaa !35
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load ptr, ptr %38, align 8, !tbaa !36
  br label %117

101:                                              ; preds = %94
  %102 = lshr i64 %96, 1
  %103 = or i64 %102, %96
  %104 = lshr i64 %103, 2
  %105 = or i64 %104, %103
  %106 = lshr i64 %105, 4
  %107 = or i64 %106, %105
  %108 = lshr i64 %107, 8
  %109 = or i64 %108, %107
  %110 = lshr i64 %109, 16
  %111 = or i64 %110, %109
  %112 = add i64 %111, 1
  store i64 %112, ptr %11, align 8, !tbaa !35
  %113 = load ptr, ptr %38, align 8, !tbaa !36
  %114 = tail call ptr @realloc(ptr noundef %113, i64 noundef %112) #15
  store ptr %114, ptr %38, align 8, !tbaa !36
  %115 = load i64, ptr %2, align 8, !tbaa !32
  %116 = add i64 %115, 1
  br label %117

117:                                              ; preds = %99, %101
  %118 = phi i64 [ %96, %99 ], [ %116, %101 ]
  %119 = phi i64 [ %95, %99 ], [ %115, %101 ]
  %120 = phi ptr [ %100, %99 ], [ %114, %101 ]
  store i64 %118, ptr %2, align 8, !tbaa !32
  %121 = getelementptr inbounds i8, ptr %120, i64 %119
  store i8 41, ptr %121, align 1, !tbaa !5
  %122 = load ptr, ptr %38, align 8, !tbaa !36
  %123 = load i64, ptr %2, align 8, !tbaa !32
  %124 = getelementptr inbounds i8, ptr %122, i64 %123
  store i8 0, ptr %124, align 1, !tbaa !5
  %125 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !31
  %127 = icmp eq ptr %126, null
  br i1 %127, label %162, label %128

128:                                              ; preds = %117
  %129 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #17
  %130 = load i64, ptr %2, align 8, !tbaa !32
  %131 = shl i64 %129, 32
  %132 = ashr exact i64 %131, 32
  %133 = add i64 %130, 1
  %134 = add i64 %133, %132
  %135 = load i64, ptr %11, align 8, !tbaa !35
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load ptr, ptr %38, align 8, !tbaa !36
  br label %154

139:                                              ; preds = %128
  %140 = lshr i64 %134, 1
  %141 = or i64 %140, %134
  %142 = lshr i64 %141, 2
  %143 = or i64 %142, %141
  %144 = lshr i64 %143, 4
  %145 = or i64 %144, %143
  %146 = lshr i64 %145, 8
  %147 = or i64 %146, %145
  %148 = lshr i64 %147, 16
  %149 = or i64 %148, %147
  %150 = add i64 %149, 1
  store i64 %150, ptr %11, align 8, !tbaa !35
  %151 = load ptr, ptr %38, align 8, !tbaa !36
  %152 = tail call ptr @realloc(ptr noundef %151, i64 noundef %150) #15
  store ptr %152, ptr %38, align 8, !tbaa !36
  %153 = load i64, ptr %2, align 8, !tbaa !32
  br label %154

154:                                              ; preds = %137, %139
  %155 = phi i64 [ %130, %137 ], [ %153, %139 ]
  %156 = phi ptr [ %138, %137 ], [ %152, %139 ]
  %157 = getelementptr inbounds i8, ptr %156, i64 %155
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %157, ptr nonnull align 1 %126, i64 %132, i1 false)
  %158 = load i64, ptr %2, align 8, !tbaa !32
  %159 = add i64 %158, %132
  store i64 %159, ptr %2, align 8, !tbaa !32
  %160 = load ptr, ptr %38, align 8, !tbaa !36
  %161 = getelementptr inbounds i8, ptr %160, i64 %159
  store i8 0, ptr %161, align 1, !tbaa !5
  br label %162

162:                                              ; preds = %154, %117
  %163 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 4
  %164 = load double, ptr %163, align 8, !tbaa !29
  %165 = fcmp ult double %164, 0.000000e+00
  br i1 %165, label %278, label %166

166:                                              ; preds = %162
  %167 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %164) #16
  %168 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %169 = load i64, ptr %2, align 8, !tbaa !32
  %170 = shl i64 %168, 32
  %171 = ashr exact i64 %170, 32
  %172 = add i64 %169, 1
  %173 = add i64 %172, %171
  %174 = load i64, ptr %11, align 8, !tbaa !35
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load ptr, ptr %38, align 8, !tbaa !36
  br label %193

178:                                              ; preds = %166
  %179 = lshr i64 %173, 1
  %180 = or i64 %179, %173
  %181 = lshr i64 %180, 2
  %182 = or i64 %181, %180
  %183 = lshr i64 %182, 4
  %184 = or i64 %183, %182
  %185 = lshr i64 %184, 8
  %186 = or i64 %185, %184
  %187 = lshr i64 %186, 16
  %188 = or i64 %187, %186
  %189 = add i64 %188, 1
  store i64 %189, ptr %11, align 8, !tbaa !35
  %190 = load ptr, ptr %38, align 8, !tbaa !36
  %191 = tail call ptr @realloc(ptr noundef %190, i64 noundef %189) #15
  store ptr %191, ptr %38, align 8, !tbaa !36
  %192 = load i64, ptr %2, align 8, !tbaa !32
  br label %193

193:                                              ; preds = %176, %178
  %194 = phi i64 [ %169, %176 ], [ %192, %178 ]
  %195 = phi ptr [ %177, %176 ], [ %191, %178 ]
  %196 = getelementptr inbounds i8, ptr %195, i64 %194
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %196, ptr align 1 %3, i64 %171, i1 false)
  br label %271

197:                                              ; preds = %4
  %198 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !31
  %200 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %199) #17
  %201 = load i64, ptr %2, align 8, !tbaa !32
  %202 = shl i64 %200, 32
  %203 = ashr exact i64 %202, 32
  %204 = add i64 %201, 1
  %205 = add i64 %204, %203
  %206 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !35
  %208 = icmp ult i64 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %197
  %210 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !36
  br label %228

212:                                              ; preds = %197
  %213 = lshr i64 %205, 1
  %214 = or i64 %213, %205
  %215 = lshr i64 %214, 2
  %216 = or i64 %215, %214
  %217 = lshr i64 %216, 4
  %218 = or i64 %217, %216
  %219 = lshr i64 %218, 8
  %220 = or i64 %219, %218
  %221 = lshr i64 %220, 16
  %222 = or i64 %221, %220
  %223 = add i64 %222, 1
  store i64 %223, ptr %206, align 8, !tbaa !35
  %224 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !36
  %226 = tail call ptr @realloc(ptr noundef %225, i64 noundef %223) #15
  store ptr %226, ptr %224, align 8, !tbaa !36
  %227 = load i64, ptr %2, align 8, !tbaa !32
  br label %228

228:                                              ; preds = %209, %212
  %229 = phi i64 [ %201, %209 ], [ %227, %212 ]
  %230 = phi ptr [ %211, %209 ], [ %226, %212 ]
  %231 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %232 = getelementptr inbounds i8, ptr %230, i64 %229
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %232, ptr align 1 %199, i64 %203, i1 false)
  %233 = load i64, ptr %2, align 8, !tbaa !32
  %234 = add i64 %233, %203
  store i64 %234, ptr %2, align 8, !tbaa !32
  %235 = load ptr, ptr %231, align 8, !tbaa !36
  %236 = getelementptr inbounds i8, ptr %235, i64 %234
  store i8 0, ptr %236, align 1, !tbaa !5
  %237 = getelementptr inbounds %struct.knhx1_t, ptr %1, i64 0, i32 4
  %238 = load double, ptr %237, align 8, !tbaa !29
  %239 = fcmp ult double %238, 0.000000e+00
  br i1 %239, label %278, label %240

240:                                              ; preds = %228
  %241 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %238) #16
  %242 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %243 = load i64, ptr %2, align 8, !tbaa !32
  %244 = shl i64 %242, 32
  %245 = ashr exact i64 %244, 32
  %246 = add i64 %243, 1
  %247 = add i64 %246, %245
  %248 = load i64, ptr %206, align 8, !tbaa !35
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %240
  %251 = load ptr, ptr %231, align 8, !tbaa !36
  br label %267

252:                                              ; preds = %240
  %253 = lshr i64 %247, 1
  %254 = or i64 %253, %247
  %255 = lshr i64 %254, 2
  %256 = or i64 %255, %254
  %257 = lshr i64 %256, 4
  %258 = or i64 %257, %256
  %259 = lshr i64 %258, 8
  %260 = or i64 %259, %258
  %261 = lshr i64 %260, 16
  %262 = or i64 %261, %260
  %263 = add i64 %262, 1
  store i64 %263, ptr %206, align 8, !tbaa !35
  %264 = load ptr, ptr %231, align 8, !tbaa !36
  %265 = tail call ptr @realloc(ptr noundef %264, i64 noundef %263) #15
  store ptr %265, ptr %231, align 8, !tbaa !36
  %266 = load i64, ptr %2, align 8, !tbaa !32
  br label %267

267:                                              ; preds = %250, %252
  %268 = phi i64 [ %243, %250 ], [ %266, %252 ]
  %269 = phi ptr [ %251, %250 ], [ %265, %252 ]
  %270 = getelementptr inbounds i8, ptr %269, i64 %268
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %270, ptr align 1 %3, i64 %245, i1 false)
  br label %271

271:                                              ; preds = %267, %193
  %272 = phi i64 [ %245, %267 ], [ %171, %193 ]
  %273 = phi ptr [ %231, %267 ], [ %38, %193 ]
  %274 = load i64, ptr %2, align 8, !tbaa !32
  %275 = add i64 %274, %272
  store i64 %275, ptr %2, align 8, !tbaa !32
  %276 = load ptr, ptr %273, align 8, !tbaa !36
  %277 = getelementptr inbounds i8, ptr %276, i64 %275
  store i8 0, ptr %277, align 1, !tbaa !5
  br label %278

278:                                              ; preds = %271, %162, %228
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !15, i64 4}
!17 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !9, i64 16}
!18 = distinct !{!18, !13}
!19 = !{!17, !9, i64 16}
!20 = !{!21, !9, i64 8}
!21 = !{!"", !15, i64 0, !15, i64 4, !9, i64 8, !9, i64 16, !22, i64 24}
!22 = !{!"double", !6, i64 0}
!23 = !{!21, !15, i64 0}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!17, !15, i64 0}
!27 = !{!17, !15, i64 8}
!28 = !{!21, !15, i64 4}
!29 = !{!21, !22, i64 24}
!30 = distinct !{!30, !13}
!31 = !{!21, !9, i64 16}
!32 = !{!33, !34, i64 0}
!33 = !{!"__kstring_t", !34, i64 0, !34, i64 8, !9, i64 16}
!34 = !{!"long", !6, i64 0}
!35 = !{!33, !34, i64 8}
!36 = !{!33, !9, i64 16}
!37 = distinct !{!37, !13, !38}
!38 = !{!"llvm.loop.peeled.count", i32 1}
