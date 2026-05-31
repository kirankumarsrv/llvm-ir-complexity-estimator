; ModuleID = 'corpus_src/zlib/deflate.c'
source_filename = "corpus_src/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@deflate_copyright = dso_local local_unnamed_addr constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3), !range !5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %136, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !6
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %136, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %136, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !16
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp ult i32 %3, -15
  br i1 %35, label %136, label %36

36:                                               ; preds = %34
  %37 = sub nsw i32 0, %3
  br label %42

38:                                               ; preds = %30
  %39 = icmp ugt i32 %3, 15
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = add nsw i32 %3, -16
  br label %42

42:                                               ; preds = %38, %40, %36
  %43 = phi i32 [ %37, %36 ], [ %41, %40 ], [ %3, %38 ]
  %44 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %38 ]
  %45 = phi i32 [ 0, %36 ], [ 2, %40 ], [ 1, %38 ]
  %46 = add i32 %4, -10
  %47 = icmp ult i32 %46, -9
  %48 = icmp ne i32 %2, 8
  %49 = or i1 %48, %47
  %50 = icmp ult i32 %43, 8
  %51 = select i1 %49, i1 true, i1 %50
  %52 = icmp ugt i32 %43, 15
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp ugt i32 %32, 9
  %55 = or i1 %54, %53
  %56 = icmp ugt i32 %5, 4
  %57 = or i1 %56, %55
  br i1 %57, label %136, label %58

58:                                               ; preds = %42
  %59 = icmp eq i32 %43, 8
  %60 = and i1 %59, %44
  br i1 %60, label %136, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !15
  %64 = tail call ptr %25(ptr noundef %63, i32 noundef 1, i32 noundef 5968) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %136, label %66

66:                                               ; preds = %61
  %67 = select i1 %59, i32 9, i32 %43
  %68 = getelementptr inbounds i8, ptr %64, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %68, i8 0, i64 5960, i1 false)
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %64, ptr %69, align 8, !tbaa !17
  store ptr %0, ptr %64, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 1
  store i32 42, ptr %70, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 6
  store i32 %45, ptr %71, align 8, !tbaa !23
  %72 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 12
  store i32 %67, ptr %72, align 4, !tbaa !24
  %73 = shl nuw nsw i32 1, %67
  %74 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !25
  %75 = add nsw i32 %73, -1
  %76 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 13
  store i32 %75, ptr %76, align 8, !tbaa !26
  %77 = add nuw nsw i32 %4, 7
  %78 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 20
  store i32 %77, ptr %78, align 8, !tbaa !27
  %79 = shl nuw nsw i32 128, %4
  %80 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 19
  store i32 %79, ptr %80, align 4, !tbaa !28
  %81 = add nsw i32 %79, -1
  %82 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 21
  store i32 %81, ptr %82, align 4, !tbaa !29
  %83 = trunc i32 %4 to i8
  %84 = add nuw nsw i8 %83, 9
  %85 = udiv i8 %84, 3
  %86 = zext nneg i8 %85 to i32
  %87 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 22
  store i32 %86, ptr %87, align 8, !tbaa !30
  %88 = load ptr, ptr %19, align 8, !tbaa !14
  %89 = load ptr, ptr %62, align 8, !tbaa !15
  %90 = tail call ptr %88(ptr noundef %89, i32 noundef %73, i32 noundef 2) #10
  %91 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 14
  store ptr %90, ptr %91, align 8, !tbaa !31
  %92 = load ptr, ptr %19, align 8, !tbaa !14
  %93 = load ptr, ptr %62, align 8, !tbaa !15
  %94 = load i32, ptr %74, align 8, !tbaa !25
  %95 = tail call ptr %92(ptr noundef %93, i32 noundef %94, i32 noundef 2) #10
  %96 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 16
  store ptr %95, ptr %96, align 8, !tbaa !32
  %97 = load ptr, ptr %19, align 8, !tbaa !14
  %98 = load ptr, ptr %62, align 8, !tbaa !15
  %99 = load i32, ptr %80, align 4, !tbaa !28
  %100 = tail call ptr %97(ptr noundef %98, i32 noundef %99, i32 noundef 2) #10
  %101 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 17
  store ptr %100, ptr %101, align 8, !tbaa !33
  %102 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 59
  store i64 0, ptr %102, align 8, !tbaa !34
  %103 = shl nuw nsw i32 64, %4
  %104 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 49
  store i32 %103, ptr %104, align 8, !tbaa !35
  %105 = load ptr, ptr %19, align 8, !tbaa !14
  %106 = load ptr, ptr %62, align 8, !tbaa !15
  %107 = tail call ptr %105(ptr noundef %106, i32 noundef %103, i32 noundef 4) #10
  %108 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 2
  store ptr %107, ptr %108, align 8, !tbaa !36
  %109 = load i32, ptr %104, align 8, !tbaa !35
  %110 = zext i32 %109 to i64
  %111 = shl nuw nsw i64 %110, 2
  %112 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 3
  store i64 %111, ptr %112, align 8, !tbaa !37
  %113 = load ptr, ptr %91, align 8, !tbaa !31
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %66
  %116 = load ptr, ptr %96, align 8, !tbaa !32
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %101, align 8, !tbaa !33
  %120 = icmp eq ptr %119, null
  %121 = icmp eq ptr %107, null
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %115, %66
  store i32 666, ptr %70, align 8, !tbaa !22
  %124 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !38
  store ptr %124, ptr %18, align 8, !tbaa !9
  %125 = tail call i32 @deflateEnd(ptr noundef nonnull %0), !range !39
  br label %136

126:                                              ; preds = %118
  %127 = getelementptr inbounds i8, ptr %107, i64 %110
  %128 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 48
  store ptr %127, ptr %128, align 8, !tbaa !40
  %129 = mul i32 %109, 3
  %130 = add i32 %129, -3
  %131 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 51
  store i32 %130, ptr %131, align 8, !tbaa !41
  %132 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 33
  store i32 %32, ptr %132, align 4, !tbaa !42
  %133 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 34
  store i32 %5, ptr %133, align 8, !tbaa !43
  %134 = getelementptr inbounds %struct.internal_state, ptr %64, i64 0, i32 9
  store i8 8, ptr %134, align 8, !tbaa !44
  %135 = tail call i32 @deflateReset(ptr noundef nonnull %0), !range !45
  br label %136

136:                                              ; preds = %61, %42, %58, %34, %15, %8, %10, %126, %123
  %137 = phi i32 [ -4, %123 ], [ %135, %126 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %34 ], [ -2, %58 ], [ -2, %42 ], [ -4, %61 ]
  ret i32 %137
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  switch i32 %20, label %70 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  tail call void %9(ptr noundef %27, ptr noundef nonnull %23) #10
  %28 = load ptr, ptr %12, align 8, !tbaa !17
  %29 = load ptr, ptr %8, align 8, !tbaa !16
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %29, %25 ], [ %9, %21 ]
  %32 = phi ptr [ %28, %25 ], [ %13, %21 ]
  %33 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  tail call void %31(ptr noundef %38, ptr noundef nonnull %34) #10
  %39 = load ptr, ptr %12, align 8, !tbaa !17
  %40 = load ptr, ptr %8, align 8, !tbaa !16
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %40, %36 ], [ %31, %30 ]
  %43 = phi ptr [ %39, %36 ], [ %32, %30 ]
  %44 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %42(ptr noundef %49, ptr noundef nonnull %45) #10
  %50 = load ptr, ptr %12, align 8, !tbaa !17
  %51 = load ptr, ptr %8, align 8, !tbaa !16
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi ptr [ %51, %47 ], [ %42, %41 ]
  %54 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %55 = getelementptr inbounds %struct.internal_state, ptr %54, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !15
  tail call void %53(ptr noundef %60, ptr noundef nonnull %56) #10
  %61 = load ptr, ptr %8, align 8, !tbaa !16
  %62 = load ptr, ptr %12, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %62, %58 ], [ %54, %52 ]
  %65 = phi ptr [ %61, %58 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  tail call void %65(ptr noundef %67, ptr noundef %64) #10
  store ptr null, ptr %12, align 8, !tbaa !17
  %68 = icmp eq i32 %20, 113
  %69 = select i1 %68, i32 -3, i32 0
  br label %70

70:                                               ; preds = %11, %15, %18, %1, %3, %7, %63
  %71 = phi i32 [ %69, %63 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0), !range !45
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !25
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 15
  store i64 %10, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 19
  %15 = load i32, ptr %14, align 4, !tbaa !28
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %13, i64 %17
  store i16 0, ptr %18, align 2, !tbaa !47
  %19 = shl nuw nsw i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %13, i8 0, i64 %19, i1 false)
  %20 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 60
  store i32 0, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %23, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !49
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 32
  store i32 %26, ptr %27, align 8, !tbaa !51
  %28 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %23
  %29 = load i16, ptr %28, align 16, !tbaa !52
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 35
  store i32 %30, ptr %31, align 4, !tbaa !53
  %32 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %23, i32 2
  %33 = load i16, ptr %32, align 4, !tbaa !54
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 36
  store i32 %34, ptr %35, align 8, !tbaa !55
  %36 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %23, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !56
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 31
  store i32 %38, ptr %39, align 4, !tbaa !57
  %40 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  store i32 0, ptr %40, align 4, !tbaa !58
  %41 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  store i64 0, ptr %41, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  store i32 0, ptr %42, align 4, !tbaa !60
  %43 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %43, align 4, !tbaa !61
  %44 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 30
  store i32 2, ptr %44, align 8, !tbaa !62
  %45 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 24
  store i32 2, ptr %45, align 8, !tbaa !63
  %46 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 26
  store i32 0, ptr %46, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 18
  store i32 0, ptr %47, align 8, !tbaa !65
  br label %48

48:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %136, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %136, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %136, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %136, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %136

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %136 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %1, null
  br i1 %24, label %136, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !23
  switch i32 %27, label %34 [
    i32 2, label %136
    i32 1, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %22, 42
  br i1 %29, label %30, label %136

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %32 = load i32, ptr %31, align 4, !tbaa !60
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %136

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %36 = load i32, ptr %35, align 4, !tbaa !60
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %136

38:                                               ; preds = %34
  store i32 0, ptr %26, align 8, !tbaa !23
  %39 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %40 = load i32, ptr %39, align 8, !tbaa !25
  %41 = icmp ugt i32 %40, %2
  br i1 %41, label %71, label %49

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %44 = load i64, ptr %43, align 8, !tbaa !66
  %45 = tail call i64 @adler32(i64 noundef %44, ptr noundef nonnull %1, i32 noundef %2) #10
  store i64 %45, ptr %43, align 8, !tbaa !66
  store i32 0, ptr %26, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !25
  %48 = icmp ugt i32 %47, %2
  br i1 %48, label %71, label %65

49:                                               ; preds = %38
  %50 = icmp eq i32 %27, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %55 = load i32, ptr %54, align 4, !tbaa !28
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %53, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !47
  %59 = shl nuw nsw i64 %57, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %53, i8 0, i64 %59, i1 false)
  %60 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 60
  store i32 0, ptr %60, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  store i32 0, ptr %61, align 4, !tbaa !58
  %62 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  store i64 0, ptr %62, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 55
  store i32 0, ptr %63, align 4, !tbaa !61
  %64 = load i32, ptr %39, align 8, !tbaa !25
  br label %65

65:                                               ; preds = %42, %51, %49
  %66 = phi ptr [ %35, %51 ], [ %35, %49 ], [ %31, %42 ]
  %67 = phi i32 [ %64, %51 ], [ %40, %49 ], [ %47, %42 ]
  %68 = sub i32 %2, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %1, i64 %69
  br label %71

71:                                               ; preds = %42, %65, %38
  %72 = phi ptr [ %66, %65 ], [ %35, %38 ], [ %31, %42 ]
  %73 = phi i32 [ %67, %65 ], [ %2, %38 ], [ %2, %42 ]
  %74 = phi ptr [ %70, %65 ], [ %1, %38 ], [ %1, %42 ]
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !67
  %77 = load ptr, ptr %0, align 8, !tbaa !68
  store i32 %73, ptr %75, align 8, !tbaa !67
  store ptr %74, ptr %0, align 8, !tbaa !68
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %78 = load i32, ptr %72, align 4, !tbaa !60
  %79 = icmp ugt i32 %78, 2
  br i1 %79, label %80, label %125

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %82 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 18
  %83 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 22
  %84 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  %85 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 21
  %86 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %87 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 16
  %88 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 13
  br label %89

89:                                               ; preds = %80, %122
  %90 = phi i32 [ %78, %80 ], [ %123, %122 ]
  %91 = load i32, ptr %81, align 4, !tbaa !58
  %92 = add i32 %90, -2
  %93 = load i32, ptr %83, align 8, !tbaa !30
  %94 = load ptr, ptr %84, align 8, !tbaa !31
  %95 = load i32, ptr %85, align 4, !tbaa !29
  %96 = load ptr, ptr %86, align 8, !tbaa !33
  %97 = load ptr, ptr %87, align 8, !tbaa !32
  %98 = load i32, ptr %88, align 8, !tbaa !26
  %99 = load i32, ptr %82, align 8, !tbaa !65
  br label %100

100:                                              ; preds = %100, %89
  %101 = phi i32 [ %99, %89 ], [ %111, %100 ]
  %102 = phi i32 [ %91, %89 ], [ %119, %100 ]
  %103 = phi i32 [ %92, %89 ], [ %120, %100 ]
  %104 = shl i32 %101, %93
  %105 = add i32 %102, 2
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %94, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !6
  %109 = zext i8 %108 to i32
  %110 = xor i32 %104, %109
  %111 = and i32 %110, %95
  store i32 %111, ptr %82, align 8, !tbaa !65
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %96, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !47
  %115 = and i32 %98, %102
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i16, ptr %97, i64 %116
  store i16 %114, ptr %117, align 2, !tbaa !47
  %118 = trunc i32 %102 to i16
  store i16 %118, ptr %113, align 2, !tbaa !47
  %119 = add i32 %102, 1
  %120 = add i32 %103, -1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %100, !llvm.loop !69

122:                                              ; preds = %100
  store i32 %119, ptr %81, align 4, !tbaa !58
  store i32 2, ptr %72, align 4, !tbaa !60
  tail call fastcc void @fill_window(ptr noundef nonnull %15)
  %123 = load i32, ptr %72, align 4, !tbaa !60
  %124 = icmp ugt i32 %123, 2
  br i1 %124, label %89, label %125, !llvm.loop !71

125:                                              ; preds = %122, %71
  %126 = phi i32 [ %78, %71 ], [ %123, %122 ]
  %127 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %128 = load i32, ptr %127, align 4, !tbaa !58
  %129 = add i32 %128, %126
  store i32 %129, ptr %127, align 4, !tbaa !58
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  store i64 %130, ptr %131, align 8, !tbaa !59
  %132 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 55
  store i32 %126, ptr %132, align 4, !tbaa !61
  store i32 0, ptr %72, align 4, !tbaa !60
  %133 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 30
  store i32 2, ptr %133, align 8, !tbaa !62
  %134 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 24
  store i32 2, ptr %134, align 8, !tbaa !63
  %135 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 26
  store i32 0, ptr %135, align 8, !tbaa !64
  store ptr %77, ptr %0, align 8, !tbaa !68
  store i32 %76, ptr %75, align 8, !tbaa !67
  store i32 %27, ptr %26, align 8, !tbaa !23
  br label %136

136:                                              ; preds = %25, %13, %17, %20, %3, %5, %9, %34, %28, %30, %23, %125
  %137 = phi i32 [ 0, %125 ], [ -2, %23 ], [ -2, %30 ], [ -2, %28 ], [ -2, %25 ], [ -2, %34 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %137
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %5, align 4, !tbaa !60
  %21 = insertelement <2 x i32> poison, i32 %3, i64 0
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %233, %1
  %24 = phi i32 [ %181, %233 ], [ %20, %1 ]
  %25 = load i64, ptr %4, align 8, !tbaa !46
  %26 = zext i32 %24 to i64
  %27 = load i32, ptr %6, align 4, !tbaa !58
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %26, %28
  %30 = sub i64 %25, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %2, align 8, !tbaa !25
  %33 = add i32 %7, %32
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %140, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %8, align 8, !tbaa !31
  %37 = getelementptr inbounds i8, ptr %36, i64 %9
  %38 = sub i32 %3, %31
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %37, i64 %39, i1 false)
  %40 = load <2 x i32>, ptr %6, align 4, !tbaa !72
  %41 = sub <2 x i32> %40, %22
  store <2 x i32> %41, ptr %6, align 4, !tbaa !72
  %42 = load i64, ptr %10, align 8, !tbaa !59
  %43 = sub nsw i64 %42, %9
  store i64 %43, ptr %10, align 8, !tbaa !59
  %44 = load i32, ptr %11, align 4, !tbaa !61
  %45 = extractelement <2 x i32> %41, i64 0
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 %45, ptr %11, align 4, !tbaa !61
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, ptr %2, align 8, !tbaa !25
  %50 = load i32, ptr %12, align 4, !tbaa !28
  %51 = load ptr, ptr %13, align 8, !tbaa !33
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds i16, ptr %51, i64 %52
  %54 = add i32 %50, -1
  %55 = zext i32 %54 to i64
  %56 = add nuw nsw i64 %55, 1
  %57 = icmp ult i32 %54, 7
  br i1 %57, label %81, label %58

58:                                               ; preds = %48
  %59 = and i64 %56, 8589934584
  %60 = mul nsw i64 %59, -2
  %61 = getelementptr i8, ptr %53, i64 %60
  %62 = trunc i64 %59 to i32
  %63 = sub i32 %50, %62
  %64 = insertelement <8 x i32> poison, i32 %49, i64 0
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> zeroinitializer
  %66 = getelementptr i16, ptr %53, i64 -8
  br label %67

67:                                               ; preds = %67, %58
  %68 = phi i64 [ 0, %58 ], [ %77, %67 ]
  %69 = mul i64 %68, -2
  %70 = getelementptr i8, ptr %66, i64 %69
  %71 = load <8 x i16>, ptr %70, align 2, !tbaa !47
  %72 = shufflevector <8 x i16> %71, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %73 = zext <8 x i16> %72 to <8 x i32>
  %74 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %73, <8 x i32> %65)
  %75 = trunc <8 x i32> %74 to <8 x i16>
  %76 = shufflevector <8 x i16> %75, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %76, ptr %70, align 2, !tbaa !47
  %77 = add nuw i64 %68, 8
  %78 = icmp eq i64 %77, %59
  br i1 %78, label %79, label %67, !llvm.loop !73

79:                                               ; preds = %67
  %80 = icmp eq i64 %56, %59
  br i1 %80, label %94, label %81

81:                                               ; preds = %48, %79
  %82 = phi ptr [ %53, %48 ], [ %61, %79 ]
  %83 = phi i32 [ %50, %48 ], [ %63, %79 ]
  br label %84

84:                                               ; preds = %81, %84
  %85 = phi ptr [ %87, %84 ], [ %82, %81 ]
  %86 = phi i32 [ %92, %84 ], [ %83, %81 ]
  %87 = getelementptr inbounds i16, ptr %85, i64 -1
  %88 = load i16, ptr %87, align 2, !tbaa !47
  %89 = zext i16 %88 to i32
  %90 = tail call i32 @llvm.usub.sat.i32(i32 %89, i32 %49)
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %87, align 2, !tbaa !47
  %92 = add i32 %86, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %84, !llvm.loop !76

94:                                               ; preds = %84, %79
  %95 = load ptr, ptr %14, align 8, !tbaa !32
  %96 = zext i32 %49 to i64
  %97 = getelementptr inbounds i16, ptr %95, i64 %96
  %98 = add i32 %49, -1
  %99 = zext i32 %98 to i64
  %100 = add nuw nsw i64 %99, 1
  %101 = icmp ult i32 %98, 7
  br i1 %101, label %125, label %102

102:                                              ; preds = %94
  %103 = and i64 %100, 8589934584
  %104 = mul nsw i64 %103, -2
  %105 = getelementptr i8, ptr %97, i64 %104
  %106 = trunc i64 %103 to i32
  %107 = sub i32 %49, %106
  %108 = insertelement <8 x i32> poison, i32 %49, i64 0
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> zeroinitializer
  %110 = getelementptr i16, ptr %97, i64 -8
  br label %111

111:                                              ; preds = %111, %102
  %112 = phi i64 [ 0, %102 ], [ %121, %111 ]
  %113 = mul i64 %112, -2
  %114 = getelementptr i8, ptr %110, i64 %113
  %115 = load <8 x i16>, ptr %114, align 2, !tbaa !47
  %116 = shufflevector <8 x i16> %115, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %117 = zext <8 x i16> %116 to <8 x i32>
  %118 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %117, <8 x i32> %109)
  %119 = trunc <8 x i32> %118 to <8 x i16>
  %120 = shufflevector <8 x i16> %119, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %120, ptr %114, align 2, !tbaa !47
  %121 = add nuw i64 %112, 8
  %122 = icmp eq i64 %121, %103
  br i1 %122, label %123, label %111, !llvm.loop !77

123:                                              ; preds = %111
  %124 = icmp eq i64 %100, %103
  br i1 %124, label %138, label %125

125:                                              ; preds = %94, %123
  %126 = phi ptr [ %97, %94 ], [ %105, %123 ]
  %127 = phi i32 [ %49, %94 ], [ %107, %123 ]
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi ptr [ %131, %128 ], [ %126, %125 ]
  %130 = phi i32 [ %136, %128 ], [ %127, %125 ]
  %131 = getelementptr inbounds i16, ptr %129, i64 -1
  %132 = load i16, ptr %131, align 2, !tbaa !47
  %133 = zext i16 %132 to i32
  %134 = tail call i32 @llvm.usub.sat.i32(i32 %133, i32 %49)
  %135 = trunc i32 %134 to i16
  store i16 %135, ptr %131, align 2, !tbaa !47
  %136 = add i32 %130, -1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %128, !llvm.loop !78

138:                                              ; preds = %128, %123
  store i32 1, ptr %15, align 8, !tbaa !48
  %139 = add i32 %3, %31
  br label %140

140:                                              ; preds = %138, %23
  %141 = phi i32 [ %45, %138 ], [ %27, %23 ]
  %142 = phi i32 [ %139, %138 ], [ %31, %23 ]
  %143 = load ptr, ptr %0, align 8, !tbaa !18
  %144 = getelementptr inbounds %struct.z_stream_s, ptr %143, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !67
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %238, label %147

147:                                              ; preds = %140
  %148 = load ptr, ptr %8, align 8, !tbaa !31
  %149 = zext i32 %141 to i64
  %150 = getelementptr inbounds i8, ptr %148, i64 %149
  %151 = load i32, ptr %5, align 4, !tbaa !60
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  %154 = tail call i32 @llvm.umin.i32(i32 %145, i32 %142)
  %155 = icmp eq i32 %142, 0
  br i1 %155, label %179, label %156

156:                                              ; preds = %147
  %157 = sub i32 %145, %154
  store i32 %157, ptr %144, align 8, !tbaa !67
  %158 = load ptr, ptr %143, align 8, !tbaa !68
  %159 = zext i32 %154 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %153, ptr align 1 %158, i64 %159, i1 false)
  %160 = getelementptr inbounds %struct.z_stream_s, ptr %143, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !17
  %162 = getelementptr inbounds %struct.internal_state, ptr %161, i64 0, i32 6
  %163 = load i32, ptr %162, align 8, !tbaa !23
  switch i32 %163, label %172 [
    i32 1, label %164
    i32 2, label %168
  ]

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %143, i64 0, i32 12
  %166 = load i64, ptr %165, align 8, !tbaa !66
  %167 = tail call i64 @adler32(i64 noundef %166, ptr noundef %153, i32 noundef %154) #10
  store i64 %167, ptr %165, align 8, !tbaa !66
  br label %172

168:                                              ; preds = %156
  %169 = getelementptr inbounds %struct.z_stream_s, ptr %143, i64 0, i32 12
  %170 = load i64, ptr %169, align 8, !tbaa !66
  %171 = tail call i64 @crc32(i64 noundef %170, ptr noundef %153, i32 noundef %154) #10
  store i64 %171, ptr %169, align 8, !tbaa !66
  br label %172

172:                                              ; preds = %168, %164, %156
  %173 = load ptr, ptr %143, align 8, !tbaa !68
  %174 = getelementptr inbounds i8, ptr %173, i64 %159
  store ptr %174, ptr %143, align 8, !tbaa !68
  %175 = getelementptr inbounds %struct.z_stream_s, ptr %143, i64 0, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !79
  %177 = add i64 %176, %159
  store i64 %177, ptr %175, align 8, !tbaa !79
  %178 = load i32, ptr %5, align 4, !tbaa !60
  br label %179

179:                                              ; preds = %147, %172
  %180 = phi i32 [ %151, %147 ], [ %178, %172 ]
  %181 = add i32 %180, %154
  store i32 %181, ptr %5, align 4, !tbaa !60
  %182 = load i32, ptr %11, align 4, !tbaa !61
  %183 = add i32 %182, %181
  %184 = icmp ugt i32 %183, 2
  br i1 %184, label %185, label %231

185:                                              ; preds = %179
  %186 = load i32, ptr %6, align 4, !tbaa !58
  %187 = sub i32 %186, %182
  %188 = load ptr, ptr %8, align 8, !tbaa !31
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds i8, ptr %188, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !6
  %192 = zext i8 %191 to i32
  store i32 %192, ptr %16, align 8, !tbaa !65
  %193 = load i32, ptr %17, align 8, !tbaa !30
  %194 = shl i32 %192, %193
  %195 = add i32 %187, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %188, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !6
  %199 = zext i8 %198 to i32
  %200 = xor i32 %194, %199
  %201 = load i32, ptr %18, align 4, !tbaa !29
  %202 = and i32 %200, %201
  store i32 %202, ptr %16, align 8, !tbaa !65
  br label %203

203:                                              ; preds = %208, %185
  %204 = phi i32 [ %216, %208 ], [ %202, %185 ]
  %205 = phi i32 [ %228, %208 ], [ %182, %185 ]
  %206 = phi i32 [ %227, %208 ], [ %187, %185 ]
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %231, label %208

208:                                              ; preds = %203
  %209 = shl i32 %204, %193
  %210 = add i32 %206, 2
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %188, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !6
  %214 = zext i8 %213 to i32
  %215 = xor i32 %209, %214
  %216 = and i32 %215, %201
  store i32 %216, ptr %16, align 8, !tbaa !65
  %217 = load ptr, ptr %13, align 8, !tbaa !33
  %218 = zext i32 %216 to i64
  %219 = getelementptr inbounds i16, ptr %217, i64 %218
  %220 = load i16, ptr %219, align 2, !tbaa !47
  %221 = load ptr, ptr %14, align 8, !tbaa !32
  %222 = load i32, ptr %19, align 8, !tbaa !26
  %223 = and i32 %222, %206
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  store i16 %220, ptr %225, align 2, !tbaa !47
  %226 = trunc i32 %206 to i16
  store i16 %226, ptr %219, align 2, !tbaa !47
  %227 = add i32 %206, 1
  %228 = add i32 %205, -1
  store i32 %228, ptr %11, align 4, !tbaa !61
  %229 = add i32 %228, %181
  %230 = icmp ult i32 %229, 3
  br i1 %230, label %231, label %203, !llvm.loop !80

231:                                              ; preds = %203, %208, %179
  %232 = icmp ult i32 %181, 262
  br i1 %232, label %233, label %238

233:                                              ; preds = %231
  %234 = load ptr, ptr %0, align 8, !tbaa !18
  %235 = getelementptr inbounds %struct.z_stream_s, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 8, !tbaa !67
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %23, !llvm.loop !81

238:                                              ; preds = %231, %140, %233
  %239 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %240 = load i64, ptr %239, align 8, !tbaa !34
  %241 = load i64, ptr %4, align 8, !tbaa !46
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %270

243:                                              ; preds = %238
  %244 = load i32, ptr %6, align 4, !tbaa !58
  %245 = zext i32 %244 to i64
  %246 = load i32, ptr %5, align 4, !tbaa !60
  %247 = zext i32 %246 to i64
  %248 = add nuw nsw i64 %247, %245
  %249 = icmp ult i64 %240, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %243
  %251 = sub i64 %241, %248
  %252 = tail call i64 @llvm.umin.i64(i64 %251, i64 258)
  %253 = load ptr, ptr %8, align 8, !tbaa !31
  %254 = getelementptr inbounds i8, ptr %253, i64 %248
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %254, i8 0, i64 %252, i1 false)
  %255 = add nuw nsw i64 %252, %248
  br label %268

256:                                              ; preds = %243
  %257 = add nuw nsw i64 %248, 258
  %258 = icmp ult i64 %240, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %256
  %260 = sub nsw i64 %257, %240
  %261 = sub i64 %241, %240
  %262 = tail call i64 @llvm.umin.i64(i64 %260, i64 %261)
  %263 = load ptr, ptr %8, align 8, !tbaa !31
  %264 = getelementptr inbounds i8, ptr %263, i64 %240
  %265 = and i64 %262, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %264, i8 0, i64 %265, i1 false)
  %266 = load i64, ptr %239, align 8, !tbaa !34
  %267 = add i64 %266, %262
  br label %268

268:                                              ; preds = %259, %250
  %269 = phi i64 [ %255, %250 ], [ %267, %259 ]
  store i64 %269, ptr %239, align 8, !tbaa !34
  br label %270

270:                                              ; preds = %268, %256, %238
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateGetDictionary(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %48 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %27 = load i32, ptr %26, align 4, !tbaa !60
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %30 = load i32, ptr %29, align 8, !tbaa !25
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %30)
  %32 = icmp ne ptr %1, null
  %33 = icmp ne i32 %31, 0
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = zext i32 %25 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = zext i32 %27 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = zext i32 %31 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %44, i64 %42, i1 false)
  br label %45

45:                                               ; preds = %35, %23
  %46 = icmp eq ptr %2, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store i32 %31, ptr %2, align 4, !tbaa !72
  br label %48

48:                                               ; preds = %13, %17, %20, %3, %5, %9, %45, %47
  %49 = phi i32 [ 0, %47 ], [ 0, %45 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !18
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  switch i32 %20, label %46 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 5
  store i64 0, ptr %25, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 4
  store ptr %27, ptr %28, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !23
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %33, %32 ], [ %30, %21 ]
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 57, i32 42
  store i32 %37, ptr %19, align 8, !tbaa !22
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %43, ptr %44, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 10
  store i32 -2, ptr %45, align 4, !tbaa !85
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  br label %46

46:                                               ; preds = %11, %15, %18, %1, %3, %7, %42
  %47 = phi i32 [ 0, %42 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %18 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %47
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateSetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %28 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  store ptr %1, ptr %27, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %12, %16, %19, %2, %4, %8, %22, %26
  %29 = phi i32 [ 0, %26 ], [ -2, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @deflatePending(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %37 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 57
  %27 = load i32, ptr %26, align 4, !tbaa !87
  store i32 %27, ptr %2, align 4, !tbaa !72
  br label %28

28:                                               ; preds = %25, %23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 5
  %32 = load i64, ptr %31, align 8, !tbaa !83
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  %35 = select i1 %34, i32 %33, i32 -1
  store i32 %35, ptr %1, align 4
  %36 = select i1 %34, i32 0, i32 -5
  br label %37

37:                                               ; preds = %13, %17, %20, %3, %5, %9, %30, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %30 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateUsed(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %27 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 58
  %26 = load i32, ptr %25, align 8, !tbaa !88
  store i32 %26, ptr %1, align 4, !tbaa !72
  br label %27

27:                                               ; preds = %12, %16, %19, %2, %4, %8, %22, %24
  %28 = phi i32 [ 0, %24 ], [ 0, %22 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %52 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp ugt i32 %1, 16
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 48
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = getelementptr inbounds i8, ptr %29, i64 2
  %31 = icmp ult ptr %27, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 57
  %34 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 56
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i32 [ %50, %35 ], [ %1, %32 ]
  %37 = phi i32 [ %49, %35 ], [ %2, %32 ]
  %38 = load i32, ptr %33, align 4, !tbaa !87
  %39 = sub nsw i32 16, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %36)
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = shl i32 %43, %38
  %45 = load i16, ptr %34, align 8, !tbaa !89
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %34, align 8, !tbaa !89
  %48 = add nsw i32 %40, %38
  store i32 %48, ptr %33, align 4, !tbaa !87
  tail call void @_tr_flush_bits(ptr noundef nonnull %15) #10
  %49 = ashr i32 %37, %40
  %50 = sub nsw i32 %36, %40
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35, !llvm.loop !90

52:                                               ; preds = %35, %13, %17, %20, %3, %5, %9, %23, %25
  %53 = phi i32 [ -5, %25 ], [ -5, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ 0, %35 ]
  ret i32 %53
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %105, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !18
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %105

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !22
  switch i32 %22, label %105 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq i32 %1, -1
  %25 = select i1 %24, i32 6, i32 %1
  %26 = icmp ugt i32 %25, 9
  %27 = icmp ugt i32 %2, 4
  %28 = or i1 %27, %26
  br i1 %28, label %105, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 33
  %31 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 34
  %32 = load i32, ptr %31, align 8, !tbaa !43
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4, !tbaa !42
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %36, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = zext nneg i32 %25 to i64
  %40 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %39, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = icmp eq ptr %38, %41
  br i1 %42, label %66, label %43

43:                                               ; preds = %34, %29
  %44 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 10
  %45 = load i32, ptr %44, align 4, !tbaa !85
  %46 = icmp eq i32 %45, -2
  br i1 %46, label %66, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5), !range !92
  %49 = icmp eq i32 %48, -2
  br i1 %49, label %105, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !67
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 27
  %56 = load i32, ptr %55, align 4, !tbaa !58
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 23
  %59 = load i64, ptr %58, align 8, !tbaa !59
  %60 = sub nsw i64 %57, %59
  %61 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 29
  %62 = load i32, ptr %61, align 4, !tbaa !60
  %63 = zext i32 %62 to i64
  %64 = sub nsw i64 0, %63
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %54, %43, %34
  %67 = load i32, ptr %30, align 4, !tbaa !42
  %68 = icmp eq i32 %67, %25
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 54
  %73 = load i32, ptr %72, align 8, !tbaa !93
  switch i32 %73, label %75 [
    i32 0, label %86
    i32 1, label %74
  ]

74:                                               ; preds = %71
  tail call fastcc void @slide_hash(ptr noundef nonnull %15)
  br label %85

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !33
  %78 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %79 = load i32, ptr %78, align 4, !tbaa !28
  %80 = add i32 %79, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %77, i64 %81
  store i16 0, ptr %82, align 2, !tbaa !47
  %83 = shl nuw nsw i64 %81, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %77, i8 0, i64 %83, i1 false)
  %84 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 60
  store i32 0, ptr %84, align 8, !tbaa !48
  br label %85

85:                                               ; preds = %75, %74
  store i32 0, ptr %72, align 8, !tbaa !93
  br label %86

86:                                               ; preds = %71, %85, %69
  store i32 %25, ptr %30, align 4, !tbaa !42
  %87 = zext nneg i32 %25 to i64
  %88 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %87
  %89 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %87, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !49
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 32
  store i32 %91, ptr %92, align 8, !tbaa !51
  %93 = load i16, ptr %88, align 16, !tbaa !52
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 35
  store i32 %94, ptr %95, align 4, !tbaa !53
  %96 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %87, i32 2
  %97 = load i16, ptr %96, align 4, !tbaa !54
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 36
  store i32 %98, ptr %99, align 8, !tbaa !55
  %100 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %87, i32 3
  %101 = load i16, ptr %100, align 2, !tbaa !56
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 31
  store i32 %102, ptr %103, align 4, !tbaa !57
  br label %104

104:                                              ; preds = %86, %66
  store i32 %2, ptr %31, align 8, !tbaa !43
  br label %105

105:                                              ; preds = %50, %47, %13, %17, %20, %3, %5, %9, %23, %54, %104
  %106 = phi i32 [ 0, %104 ], [ -5, %54 ], [ -2, %23 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %20 ], [ -2, %17 ], [ -2, %13 ], [ -5, %50 ], [ -2, %47 ]
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define dso_local i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %952, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %952, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %952, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %952, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %952

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %952 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp ugt i32 %1, 5
  br i1 %23, label %952, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !68
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = icmp eq i32 %21, 666
  %37 = icmp ne i32 %1, 4
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32, %24
  %40 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 16, !tbaa !38
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !9
  br label %952

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !95
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %952

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 10
  %51 = load i32, ptr %50, align 4, !tbaa !85
  store i32 %1, ptr %50, align 4, !tbaa !85
  %52 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !83
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %49
  tail call void @_tr_flush_bits(ptr noundef nonnull %14) #10
  %56 = load i64, ptr %52, align 8, !tbaa !83
  %57 = load i32, ptr %43, align 8, !tbaa !95
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %56, %58
  %60 = trunc i64 %56 to i32
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %25, align 8, !tbaa !94
  %65 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !84
  %67 = zext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %66, i64 %67, i1 false)
  %68 = load ptr, ptr %25, align 8, !tbaa !94
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  store ptr %69, ptr %25, align 8, !tbaa !94
  %70 = load ptr, ptr %65, align 8, !tbaa !84
  %71 = getelementptr inbounds i8, ptr %70, i64 %67
  store ptr %71, ptr %65, align 8, !tbaa !84
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %73 = load i64, ptr %72, align 8, !tbaa !96
  %74 = add i64 %73, %67
  store i64 %74, ptr %72, align 8, !tbaa !96
  %75 = load i32, ptr %43, align 8, !tbaa !95
  %76 = sub i32 %75, %61
  store i32 %76, ptr %43, align 8, !tbaa !95
  %77 = load i64, ptr %52, align 8, !tbaa !83
  %78 = sub i64 %77, %67
  store i64 %78, ptr %52, align 8, !tbaa !83
  %79 = icmp eq i64 %77, %67
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  store ptr %82, ptr %65, align 8, !tbaa !84
  br label %83

83:                                               ; preds = %55, %80, %63
  %84 = phi i64 [ %78, %63 ], [ %78, %80 ], [ %56, %55 ]
  %85 = phi i32 [ %76, %63 ], [ %76, %80 ], [ %57, %55 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %20, align 8, !tbaa !22
  br label %105

89:                                               ; preds = %83
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

90:                                               ; preds = %49
  br i1 %31, label %91, label %105

91:                                               ; preds = %90
  %92 = shl nuw nsw i32 %1, 1
  %93 = icmp eq i32 %1, 5
  %94 = select i1 %93, i32 -9, i32 0
  %95 = add nsw i32 %94, %92
  %96 = shl nsw i32 %51, 1
  %97 = icmp sgt i32 %51, 4
  %98 = select i1 %97, i32 -9, i32 0
  %99 = add i32 %98, %96
  %100 = icmp sle i32 %95, %99
  %101 = and i1 %37, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %103, ptr %104, align 8, !tbaa !9
  br label %952

105:                                              ; preds = %87, %90, %91
  %106 = phi i64 [ %84, %87 ], [ 0, %90 ], [ 0, %91 ]
  %107 = phi i32 [ %88, %87 ], [ %21, %90 ], [ %21, %91 ]
  switch i32 %107, label %195 [
    i32 666, label %108
    i32 42, label %114
  ]

108:                                              ; preds = %105
  %109 = load i32, ptr %29, align 8, !tbaa !67
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %786, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !38
  %113 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %112, ptr %113, align 8, !tbaa !9
  br label %952

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !23
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 113, ptr %20, align 8, !tbaa !22
  br label %783

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 12
  %121 = load i32, ptr %120, align 4, !tbaa !24
  %122 = shl i32 %121, 12
  %123 = add i32 %122, -30720
  %124 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %125 = load i32, ptr %124, align 8, !tbaa !43
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %136, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %129 = load i32, ptr %128, align 4, !tbaa !42
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = icmp ult i32 %129, 6
  br i1 %132, label %136, label %133

133:                                              ; preds = %131
  %134 = icmp eq i32 %129, 6
  %135 = select i1 %134, i32 128, i32 192
  br label %136

136:                                              ; preds = %133, %131, %119, %127
  %137 = phi i32 [ 0, %127 ], [ 0, %119 ], [ 64, %131 ], [ %135, %133 ]
  %138 = or disjoint i32 %137, %123
  %139 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  %140 = load i32, ptr %139, align 4, !tbaa !58
  %141 = icmp eq i32 %140, 0
  %142 = or disjoint i32 %138, 32
  %143 = select i1 %141, i32 %138, i32 %142
  %144 = urem i32 %143, 31
  %145 = or disjoint i32 %144, %143
  %146 = lshr i32 %143, 8
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !36
  %150 = add i64 %106, 1
  store i64 %150, ptr %52, align 8, !tbaa !83
  %151 = getelementptr inbounds i8, ptr %149, i64 %106
  store i8 %147, ptr %151, align 1, !tbaa !6
  %152 = trunc i32 %145 to i8
  %153 = xor i8 %152, 31
  %154 = load ptr, ptr %148, align 8, !tbaa !36
  %155 = load i64, ptr %52, align 8, !tbaa !83
  %156 = add i64 %155, 1
  store i64 %156, ptr %52, align 8, !tbaa !83
  %157 = getelementptr inbounds i8, ptr %154, i64 %155
  store i8 %153, ptr %157, align 1, !tbaa !6
  %158 = load i32, ptr %139, align 4, !tbaa !58
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %187, label %160

160:                                              ; preds = %136
  %161 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %162 = load i64, ptr %161, align 8, !tbaa !66
  %163 = lshr i64 %162, 16
  %164 = lshr i64 %162, 24
  %165 = trunc i64 %164 to i8
  %166 = load ptr, ptr %148, align 8, !tbaa !36
  %167 = load i64, ptr %52, align 8, !tbaa !83
  %168 = add i64 %167, 1
  store i64 %168, ptr %52, align 8, !tbaa !83
  %169 = getelementptr inbounds i8, ptr %166, i64 %167
  store i8 %165, ptr %169, align 1, !tbaa !6
  %170 = trunc i64 %163 to i8
  %171 = load ptr, ptr %148, align 8, !tbaa !36
  %172 = load i64, ptr %52, align 8, !tbaa !83
  %173 = add i64 %172, 1
  store i64 %173, ptr %52, align 8, !tbaa !83
  %174 = getelementptr inbounds i8, ptr %171, i64 %172
  store i8 %170, ptr %174, align 1, !tbaa !6
  %175 = load i64, ptr %161, align 8, !tbaa !66
  %176 = trunc i64 %175 to i8
  %177 = lshr i64 %175, 8
  %178 = trunc i64 %177 to i8
  %179 = load ptr, ptr %148, align 8, !tbaa !36
  %180 = load i64, ptr %52, align 8, !tbaa !83
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !83
  %182 = getelementptr inbounds i8, ptr %179, i64 %180
  store i8 %178, ptr %182, align 1, !tbaa !6
  %183 = load ptr, ptr %148, align 8, !tbaa !36
  %184 = load i64, ptr %52, align 8, !tbaa !83
  %185 = add i64 %184, 1
  store i64 %185, ptr %52, align 8, !tbaa !83
  %186 = getelementptr inbounds i8, ptr %183, i64 %184
  store i8 %176, ptr %186, align 1, !tbaa !6
  br label %187

187:                                              ; preds = %160, %136
  %188 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %188, ptr %189, align 8, !tbaa !66
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %190 = load i64, ptr %52, align 8, !tbaa !83
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, ptr %20, align 8, !tbaa !22
  br label %195

194:                                              ; preds = %187
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

195:                                              ; preds = %105, %192
  %196 = phi i32 [ %193, %192 ], [ %107, %105 ]
  %197 = icmp eq i32 %196, 57
  br i1 %197, label %198, label %384

198:                                              ; preds = %195
  %199 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %200 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %199, ptr %200, align 8, !tbaa !66
  %201 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !36
  %203 = load i64, ptr %52, align 8, !tbaa !83
  %204 = add i64 %203, 1
  store i64 %204, ptr %52, align 8, !tbaa !83
  %205 = getelementptr inbounds i8, ptr %202, i64 %203
  store i8 31, ptr %205, align 1, !tbaa !6
  %206 = load ptr, ptr %201, align 8, !tbaa !36
  %207 = load i64, ptr %52, align 8, !tbaa !83
  %208 = add i64 %207, 1
  store i64 %208, ptr %52, align 8, !tbaa !83
  %209 = getelementptr inbounds i8, ptr %206, i64 %207
  store i8 -117, ptr %209, align 1, !tbaa !6
  %210 = load ptr, ptr %201, align 8, !tbaa !36
  %211 = load i64, ptr %52, align 8, !tbaa !83
  %212 = add i64 %211, 1
  store i64 %212, ptr %52, align 8, !tbaa !83
  %213 = getelementptr inbounds i8, ptr %210, i64 %211
  store i8 8, ptr %213, align 1, !tbaa !6
  %214 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %215 = load ptr, ptr %214, align 8, !tbaa !86
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %261

217:                                              ; preds = %198
  %218 = load ptr, ptr %201, align 8, !tbaa !36
  %219 = load i64, ptr %52, align 8, !tbaa !83
  %220 = add i64 %219, 1
  store i64 %220, ptr %52, align 8, !tbaa !83
  %221 = getelementptr inbounds i8, ptr %218, i64 %219
  store i8 0, ptr %221, align 1, !tbaa !6
  %222 = load ptr, ptr %201, align 8, !tbaa !36
  %223 = load i64, ptr %52, align 8, !tbaa !83
  %224 = add i64 %223, 1
  store i64 %224, ptr %52, align 8, !tbaa !83
  %225 = getelementptr inbounds i8, ptr %222, i64 %223
  store i8 0, ptr %225, align 1, !tbaa !6
  %226 = load ptr, ptr %201, align 8, !tbaa !36
  %227 = load i64, ptr %52, align 8, !tbaa !83
  %228 = add i64 %227, 1
  store i64 %228, ptr %52, align 8, !tbaa !83
  %229 = getelementptr inbounds i8, ptr %226, i64 %227
  store i8 0, ptr %229, align 1, !tbaa !6
  %230 = load ptr, ptr %201, align 8, !tbaa !36
  %231 = load i64, ptr %52, align 8, !tbaa !83
  %232 = add i64 %231, 1
  store i64 %232, ptr %52, align 8, !tbaa !83
  %233 = getelementptr inbounds i8, ptr %230, i64 %231
  store i8 0, ptr %233, align 1, !tbaa !6
  %234 = load ptr, ptr %201, align 8, !tbaa !36
  %235 = load i64, ptr %52, align 8, !tbaa !83
  %236 = add i64 %235, 1
  store i64 %236, ptr %52, align 8, !tbaa !83
  %237 = getelementptr inbounds i8, ptr %234, i64 %235
  store i8 0, ptr %237, align 1, !tbaa !6
  %238 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %239 = load i32, ptr %238, align 4, !tbaa !42
  %240 = icmp eq i32 %239, 9
  br i1 %240, label %248, label %241

241:                                              ; preds = %217
  %242 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %243 = load i32, ptr %242, align 8, !tbaa !43
  %244 = icmp sgt i32 %243, 1
  %245 = icmp slt i32 %239, 2
  %246 = or i1 %245, %244
  %247 = select i1 %246, i8 4, i8 0
  br label %248

248:                                              ; preds = %217, %241
  %249 = phi i8 [ %247, %241 ], [ 2, %217 ]
  %250 = load ptr, ptr %201, align 8, !tbaa !36
  %251 = load i64, ptr %52, align 8, !tbaa !83
  %252 = add i64 %251, 1
  store i64 %252, ptr %52, align 8, !tbaa !83
  %253 = getelementptr inbounds i8, ptr %250, i64 %251
  store i8 %249, ptr %253, align 1, !tbaa !6
  %254 = load ptr, ptr %201, align 8, !tbaa !36
  %255 = load i64, ptr %52, align 8, !tbaa !83
  %256 = add i64 %255, 1
  store i64 %256, ptr %52, align 8, !tbaa !83
  %257 = getelementptr inbounds i8, ptr %254, i64 %255
  store i8 3, ptr %257, align 1, !tbaa !6
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %258 = load i64, ptr %52, align 8, !tbaa !83
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %382, label %260

260:                                              ; preds = %248
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

261:                                              ; preds = %198
  %262 = load i32, ptr %215, align 8, !tbaa !97
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.gz_header_s, ptr %215, i64 0, i32 11
  %266 = load i32, ptr %265, align 4, !tbaa !99
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i8 0, i8 2
  %269 = or disjoint i8 %268, %264
  %270 = getelementptr inbounds %struct.gz_header_s, ptr %215, i64 0, i32 4
  %271 = load ptr, ptr %270, align 8, !tbaa !100
  %272 = icmp eq ptr %271, null
  %273 = select i1 %272, i8 0, i8 4
  %274 = or disjoint i8 %269, %273
  %275 = getelementptr inbounds %struct.gz_header_s, ptr %215, i64 0, i32 7
  %276 = load ptr, ptr %275, align 8, !tbaa !101
  %277 = icmp eq ptr %276, null
  %278 = select i1 %277, i8 0, i8 8
  %279 = or disjoint i8 %274, %278
  %280 = getelementptr inbounds %struct.gz_header_s, ptr %215, i64 0, i32 9
  %281 = load ptr, ptr %280, align 8, !tbaa !102
  %282 = icmp eq ptr %281, null
  %283 = select i1 %282, i8 0, i8 16
  %284 = or disjoint i8 %279, %283
  %285 = load ptr, ptr %201, align 8, !tbaa !36
  %286 = load i64, ptr %52, align 8, !tbaa !83
  %287 = add i64 %286, 1
  store i64 %287, ptr %52, align 8, !tbaa !83
  %288 = getelementptr inbounds i8, ptr %285, i64 %286
  store i8 %284, ptr %288, align 1, !tbaa !6
  %289 = load ptr, ptr %214, align 8, !tbaa !86
  %290 = getelementptr inbounds %struct.gz_header_s, ptr %289, i64 0, i32 1
  %291 = load i64, ptr %290, align 8, !tbaa !103
  %292 = trunc i64 %291 to i8
  %293 = load ptr, ptr %201, align 8, !tbaa !36
  %294 = load i64, ptr %52, align 8, !tbaa !83
  %295 = add i64 %294, 1
  store i64 %295, ptr %52, align 8, !tbaa !83
  %296 = getelementptr inbounds i8, ptr %293, i64 %294
  store i8 %292, ptr %296, align 1, !tbaa !6
  %297 = load ptr, ptr %214, align 8, !tbaa !86
  %298 = getelementptr inbounds %struct.gz_header_s, ptr %297, i64 0, i32 1
  %299 = load i64, ptr %298, align 8, !tbaa !103
  %300 = lshr i64 %299, 8
  %301 = trunc i64 %300 to i8
  %302 = load ptr, ptr %201, align 8, !tbaa !36
  %303 = load i64, ptr %52, align 8, !tbaa !83
  %304 = add i64 %303, 1
  store i64 %304, ptr %52, align 8, !tbaa !83
  %305 = getelementptr inbounds i8, ptr %302, i64 %303
  store i8 %301, ptr %305, align 1, !tbaa !6
  %306 = load ptr, ptr %214, align 8, !tbaa !86
  %307 = getelementptr inbounds %struct.gz_header_s, ptr %306, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !103
  %309 = lshr i64 %308, 16
  %310 = trunc i64 %309 to i8
  %311 = load ptr, ptr %201, align 8, !tbaa !36
  %312 = load i64, ptr %52, align 8, !tbaa !83
  %313 = add i64 %312, 1
  store i64 %313, ptr %52, align 8, !tbaa !83
  %314 = getelementptr inbounds i8, ptr %311, i64 %312
  store i8 %310, ptr %314, align 1, !tbaa !6
  %315 = load ptr, ptr %214, align 8, !tbaa !86
  %316 = getelementptr inbounds %struct.gz_header_s, ptr %315, i64 0, i32 1
  %317 = load i64, ptr %316, align 8, !tbaa !103
  %318 = lshr i64 %317, 24
  %319 = trunc i64 %318 to i8
  %320 = load ptr, ptr %201, align 8, !tbaa !36
  %321 = load i64, ptr %52, align 8, !tbaa !83
  %322 = add i64 %321, 1
  store i64 %322, ptr %52, align 8, !tbaa !83
  %323 = getelementptr inbounds i8, ptr %320, i64 %321
  store i8 %319, ptr %323, align 1, !tbaa !6
  %324 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %325 = load i32, ptr %324, align 4, !tbaa !42
  %326 = icmp eq i32 %325, 9
  br i1 %326, label %334, label %327

327:                                              ; preds = %261
  %328 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %329 = load i32, ptr %328, align 8, !tbaa !43
  %330 = icmp sgt i32 %329, 1
  %331 = icmp slt i32 %325, 2
  %332 = or i1 %331, %330
  %333 = select i1 %332, i8 4, i8 0
  br label %334

334:                                              ; preds = %261, %327
  %335 = phi i8 [ %333, %327 ], [ 2, %261 ]
  %336 = load ptr, ptr %201, align 8, !tbaa !36
  %337 = load i64, ptr %52, align 8, !tbaa !83
  %338 = add i64 %337, 1
  store i64 %338, ptr %52, align 8, !tbaa !83
  %339 = getelementptr inbounds i8, ptr %336, i64 %337
  store i8 %335, ptr %339, align 1, !tbaa !6
  %340 = load ptr, ptr %214, align 8, !tbaa !86
  %341 = getelementptr inbounds %struct.gz_header_s, ptr %340, i64 0, i32 3
  %342 = load i32, ptr %341, align 4, !tbaa !104
  %343 = trunc i32 %342 to i8
  %344 = load ptr, ptr %201, align 8, !tbaa !36
  %345 = load i64, ptr %52, align 8, !tbaa !83
  %346 = add i64 %345, 1
  store i64 %346, ptr %52, align 8, !tbaa !83
  %347 = getelementptr inbounds i8, ptr %344, i64 %345
  store i8 %343, ptr %347, align 1, !tbaa !6
  %348 = load ptr, ptr %214, align 8, !tbaa !86
  %349 = getelementptr inbounds %struct.gz_header_s, ptr %348, i64 0, i32 4
  %350 = load ptr, ptr %349, align 8, !tbaa !100
  %351 = icmp eq ptr %350, null
  br i1 %351, label %370, label %352

352:                                              ; preds = %334
  %353 = getelementptr inbounds %struct.gz_header_s, ptr %348, i64 0, i32 5
  %354 = load i32, ptr %353, align 8, !tbaa !105
  %355 = trunc i32 %354 to i8
  %356 = load ptr, ptr %201, align 8, !tbaa !36
  %357 = load i64, ptr %52, align 8, !tbaa !83
  %358 = add i64 %357, 1
  store i64 %358, ptr %52, align 8, !tbaa !83
  %359 = getelementptr inbounds i8, ptr %356, i64 %357
  store i8 %355, ptr %359, align 1, !tbaa !6
  %360 = load ptr, ptr %214, align 8, !tbaa !86
  %361 = getelementptr inbounds %struct.gz_header_s, ptr %360, i64 0, i32 5
  %362 = load i32, ptr %361, align 8, !tbaa !105
  %363 = lshr i32 %362, 8
  %364 = trunc i32 %363 to i8
  %365 = load ptr, ptr %201, align 8, !tbaa !36
  %366 = load i64, ptr %52, align 8, !tbaa !83
  %367 = add i64 %366, 1
  store i64 %367, ptr %52, align 8, !tbaa !83
  %368 = getelementptr inbounds i8, ptr %365, i64 %366
  store i8 %364, ptr %368, align 1, !tbaa !6
  %369 = load ptr, ptr %214, align 8, !tbaa !86
  br label %370

370:                                              ; preds = %352, %334
  %371 = phi ptr [ %369, %352 ], [ %348, %334 ]
  %372 = getelementptr inbounds %struct.gz_header_s, ptr %371, i64 0, i32 11
  %373 = load i32, ptr %372, align 4, !tbaa !99
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %370
  %376 = load i64, ptr %200, align 8, !tbaa !66
  %377 = load ptr, ptr %201, align 8, !tbaa !36
  %378 = load i64, ptr %52, align 8, !tbaa !83
  %379 = tail call i64 @crc32_z(i64 noundef %376, ptr noundef %377, i64 noundef %378) #10
  store i64 %379, ptr %200, align 8, !tbaa !66
  br label %380

380:                                              ; preds = %370, %375
  %381 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  store i64 0, ptr %381, align 8, !tbaa !106
  store i32 69, ptr %20, align 8, !tbaa !22
  br label %386

382:                                              ; preds = %248
  %383 = load i32, ptr %20, align 8, !tbaa !22
  br label %384

384:                                              ; preds = %382, %195
  %385 = phi i32 [ %383, %382 ], [ %196, %195 ]
  switch i32 %385, label %783 [
    i32 69, label %386
    i32 73, label %555
    i32 91, label %651
    i32 103, label %746
  ]

386:                                              ; preds = %384, %380
  %387 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %388 = load ptr, ptr %387, align 8, !tbaa !86
  %389 = getelementptr inbounds %struct.gz_header_s, ptr %388, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !100
  %391 = icmp eq ptr %390, null
  br i1 %391, label %554, label %392

392:                                              ; preds = %386
  %393 = load i64, ptr %52, align 8, !tbaa !83
  %394 = getelementptr inbounds %struct.gz_header_s, ptr %388, i64 0, i32 5
  %395 = load i32, ptr %394, align 8, !tbaa !105
  %396 = and i32 %395, 65535
  %397 = zext nneg i32 %396 to i64
  %398 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  %399 = load i64, ptr %398, align 8, !tbaa !106
  %400 = sub i64 %397, %399
  %401 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %402 = add i64 %393, %400
  %403 = load i64, ptr %401, align 8, !tbaa !37
  %404 = icmp ugt i64 %402, %403
  br i1 %404, label %405, label %529

405:                                              ; preds = %392
  %406 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %407 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %408 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %409 = sub i64 %403, %393
  %410 = load ptr, ptr %406, align 8, !tbaa !36
  %411 = getelementptr inbounds i8, ptr %410, i64 %393
  %412 = getelementptr inbounds i8, ptr %390, i64 %399
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %411, ptr nonnull align 1 %412, i64 %409, i1 false)
  %413 = load i64, ptr %401, align 8, !tbaa !37
  store i64 %413, ptr %52, align 8, !tbaa !83
  %414 = load ptr, ptr %387, align 8, !tbaa !86
  %415 = getelementptr inbounds %struct.gz_header_s, ptr %414, i64 0, i32 11
  %416 = load i32, ptr %415, align 4, !tbaa !99
  %417 = icmp ne i32 %416, 0
  %418 = icmp ugt i64 %413, %393
  %419 = select i1 %417, i1 %418, i1 false
  br i1 %419, label %420, label %426

420:                                              ; preds = %405
  %421 = load i64, ptr %407, align 8, !tbaa !66
  %422 = load ptr, ptr %406, align 8, !tbaa !36
  %423 = getelementptr inbounds i8, ptr %422, i64 %393
  %424 = sub i64 %413, %393
  %425 = tail call i64 @crc32_z(i64 noundef %421, ptr noundef %423, i64 noundef %424) #10
  store i64 %425, ptr %407, align 8, !tbaa !66
  br label %426

426:                                              ; preds = %420, %405
  %427 = load i64, ptr %398, align 8, !tbaa !106
  %428 = add i64 %427, %409
  store i64 %428, ptr %398, align 8, !tbaa !106
  %429 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %429) #10
  %430 = getelementptr inbounds %struct.internal_state, ptr %429, i64 0, i32 5
  %431 = load i64, ptr %430, align 8, !tbaa !83
  %432 = load i32, ptr %43, align 8, !tbaa !95
  %433 = zext i32 %432 to i64
  %434 = icmp ugt i64 %431, %433
  %435 = trunc i64 %431 to i32
  %436 = select i1 %434, i32 %432, i32 %435
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %457, label %438

438:                                              ; preds = %426
  %439 = load ptr, ptr %25, align 8, !tbaa !94
  %440 = getelementptr inbounds %struct.internal_state, ptr %429, i64 0, i32 4
  %441 = load ptr, ptr %440, align 8, !tbaa !84
  %442 = zext i32 %436 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %439, ptr align 1 %441, i64 %442, i1 false)
  %443 = load ptr, ptr %25, align 8, !tbaa !94
  %444 = getelementptr inbounds i8, ptr %443, i64 %442
  store ptr %444, ptr %25, align 8, !tbaa !94
  %445 = load ptr, ptr %440, align 8, !tbaa !84
  %446 = getelementptr inbounds i8, ptr %445, i64 %442
  store ptr %446, ptr %440, align 8, !tbaa !84
  %447 = load i64, ptr %408, align 8, !tbaa !96
  %448 = add i64 %447, %442
  store i64 %448, ptr %408, align 8, !tbaa !96
  %449 = load i32, ptr %43, align 8, !tbaa !95
  %450 = sub i32 %449, %436
  store i32 %450, ptr %43, align 8, !tbaa !95
  %451 = load i64, ptr %430, align 8, !tbaa !83
  %452 = sub i64 %451, %442
  store i64 %452, ptr %430, align 8, !tbaa !83
  %453 = icmp eq i64 %451, %442
  br i1 %453, label %454, label %457

454:                                              ; preds = %438
  %455 = getelementptr inbounds %struct.internal_state, ptr %429, i64 0, i32 2
  %456 = load ptr, ptr %455, align 8, !tbaa !36
  store ptr %456, ptr %440, align 8, !tbaa !84
  br label %457

457:                                              ; preds = %454, %438, %426
  %458 = load i64, ptr %52, align 8, !tbaa !83
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %460, label %518

460:                                              ; preds = %457
  %461 = sub i64 %400, %409
  %462 = load i64, ptr %401, align 8, !tbaa !37
  %463 = icmp ugt i64 %461, %462
  br i1 %463, label %464, label %523

464:                                              ; preds = %460, %519
  %465 = phi i64 [ %521, %519 ], [ %462, %460 ]
  %466 = phi i64 [ %520, %519 ], [ %461, %460 ]
  %467 = load ptr, ptr %406, align 8, !tbaa !36
  %468 = load ptr, ptr %387, align 8, !tbaa !86
  %469 = getelementptr inbounds %struct.gz_header_s, ptr %468, i64 0, i32 4
  %470 = load ptr, ptr %469, align 8, !tbaa !100
  %471 = load i64, ptr %398, align 8, !tbaa !106
  %472 = getelementptr inbounds i8, ptr %470, i64 %471
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %467, ptr align 1 %472, i64 %465, i1 false)
  %473 = load i64, ptr %401, align 8, !tbaa !37
  store i64 %473, ptr %52, align 8, !tbaa !83
  %474 = load ptr, ptr %387, align 8, !tbaa !86
  %475 = getelementptr inbounds %struct.gz_header_s, ptr %474, i64 0, i32 11
  %476 = load i32, ptr %475, align 4, !tbaa !99
  %477 = icmp ne i32 %476, 0
  %478 = icmp ne i64 %473, 0
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %484

480:                                              ; preds = %464
  %481 = load i64, ptr %407, align 8, !tbaa !66
  %482 = load ptr, ptr %406, align 8, !tbaa !36
  %483 = tail call i64 @crc32_z(i64 noundef %481, ptr noundef %482, i64 noundef %473) #10
  store i64 %483, ptr %407, align 8, !tbaa !66
  br label %484

484:                                              ; preds = %480, %464
  %485 = load i64, ptr %398, align 8, !tbaa !106
  %486 = add i64 %485, %465
  store i64 %486, ptr %398, align 8, !tbaa !106
  %487 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %487) #10
  %488 = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 5
  %489 = load i64, ptr %488, align 8, !tbaa !83
  %490 = load i32, ptr %43, align 8, !tbaa !95
  %491 = zext i32 %490 to i64
  %492 = icmp ugt i64 %489, %491
  %493 = trunc i64 %489 to i32
  %494 = select i1 %492, i32 %490, i32 %493
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %515, label %496

496:                                              ; preds = %484
  %497 = load ptr, ptr %25, align 8, !tbaa !94
  %498 = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 4
  %499 = load ptr, ptr %498, align 8, !tbaa !84
  %500 = zext i32 %494 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %497, ptr align 1 %499, i64 %500, i1 false)
  %501 = load ptr, ptr %25, align 8, !tbaa !94
  %502 = getelementptr inbounds i8, ptr %501, i64 %500
  store ptr %502, ptr %25, align 8, !tbaa !94
  %503 = load ptr, ptr %498, align 8, !tbaa !84
  %504 = getelementptr inbounds i8, ptr %503, i64 %500
  store ptr %504, ptr %498, align 8, !tbaa !84
  %505 = load i64, ptr %408, align 8, !tbaa !96
  %506 = add i64 %505, %500
  store i64 %506, ptr %408, align 8, !tbaa !96
  %507 = load i32, ptr %43, align 8, !tbaa !95
  %508 = sub i32 %507, %494
  store i32 %508, ptr %43, align 8, !tbaa !95
  %509 = load i64, ptr %488, align 8, !tbaa !83
  %510 = sub i64 %509, %500
  store i64 %510, ptr %488, align 8, !tbaa !83
  %511 = icmp eq i64 %509, %500
  br i1 %511, label %512, label %515

512:                                              ; preds = %496
  %513 = getelementptr inbounds %struct.internal_state, ptr %487, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !36
  store ptr %514, ptr %498, align 8, !tbaa !84
  br label %515

515:                                              ; preds = %484, %496, %512
  %516 = load i64, ptr %52, align 8, !tbaa !83
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %515, %457
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

519:                                              ; preds = %515
  %520 = sub i64 %466, %465
  %521 = load i64, ptr %401, align 8, !tbaa !37
  %522 = icmp ugt i64 %520, %521
  br i1 %522, label %464, label %523, !llvm.loop !107

523:                                              ; preds = %519, %460
  %524 = phi i64 [ %461, %460 ], [ %520, %519 ]
  %525 = load ptr, ptr %387, align 8, !tbaa !86
  %526 = getelementptr inbounds %struct.gz_header_s, ptr %525, i64 0, i32 4
  %527 = load ptr, ptr %526, align 8, !tbaa !100
  %528 = load i64, ptr %398, align 8, !tbaa !106
  br label %529

529:                                              ; preds = %523, %392
  %530 = phi i64 [ %399, %392 ], [ %528, %523 ]
  %531 = phi ptr [ %390, %392 ], [ %527, %523 ]
  %532 = phi i64 [ %393, %392 ], [ 0, %523 ]
  %533 = phi i64 [ %400, %392 ], [ %524, %523 ]
  %534 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !36
  %536 = getelementptr inbounds i8, ptr %535, i64 %532
  %537 = getelementptr inbounds i8, ptr %531, i64 %530
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %536, ptr align 1 %537, i64 %533, i1 false)
  %538 = load i64, ptr %52, align 8, !tbaa !83
  %539 = add i64 %538, %533
  store i64 %539, ptr %52, align 8, !tbaa !83
  %540 = load ptr, ptr %387, align 8, !tbaa !86
  %541 = getelementptr inbounds %struct.gz_header_s, ptr %540, i64 0, i32 11
  %542 = load i32, ptr %541, align 4, !tbaa !99
  %543 = icmp ne i32 %542, 0
  %544 = icmp ugt i64 %539, %532
  %545 = select i1 %543, i1 %544, i1 false
  br i1 %545, label %546, label %553

546:                                              ; preds = %529
  %547 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %548 = load i64, ptr %547, align 8, !tbaa !66
  %549 = load ptr, ptr %534, align 8, !tbaa !36
  %550 = getelementptr inbounds i8, ptr %549, i64 %532
  %551 = sub i64 %539, %532
  %552 = tail call i64 @crc32_z(i64 noundef %548, ptr noundef %550, i64 noundef %551) #10
  store i64 %552, ptr %547, align 8, !tbaa !66
  br label %553

553:                                              ; preds = %529, %546
  store i64 0, ptr %398, align 8, !tbaa !106
  br label %554

554:                                              ; preds = %386, %553
  store i32 73, ptr %20, align 8, !tbaa !22
  br label %555

555:                                              ; preds = %384, %554
  %556 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %557 = load ptr, ptr %556, align 8, !tbaa !86
  %558 = getelementptr inbounds %struct.gz_header_s, ptr %557, i64 0, i32 7
  %559 = load ptr, ptr %558, align 8, !tbaa !101
  %560 = icmp eq ptr %559, null
  br i1 %560, label %650, label %561

561:                                              ; preds = %555
  %562 = load i64, ptr %52, align 8, !tbaa !83
  %563 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %564 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %565 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %566 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %567 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  br label %568

568:                                              ; preds = %621, %561
  %569 = phi i64 [ %562, %561 ], [ %624, %621 ]
  %570 = load i64, ptr %52, align 8, !tbaa !83
  %571 = load i64, ptr %563, align 8, !tbaa !37
  %572 = icmp eq i64 %570, %571
  %573 = load ptr, ptr %556, align 8, !tbaa !86
  br i1 %572, label %574, label %621

574:                                              ; preds = %568
  %575 = getelementptr inbounds %struct.gz_header_s, ptr %573, i64 0, i32 11
  %576 = load i32, ptr %575, align 4, !tbaa !99
  %577 = icmp ne i32 %576, 0
  %578 = icmp ugt i64 %570, %569
  %579 = select i1 %577, i1 %578, i1 false
  br i1 %579, label %580, label %586

580:                                              ; preds = %574
  %581 = load i64, ptr %564, align 8, !tbaa !66
  %582 = load ptr, ptr %565, align 8, !tbaa !36
  %583 = getelementptr inbounds i8, ptr %582, i64 %569
  %584 = sub i64 %570, %569
  %585 = tail call i64 @crc32_z(i64 noundef %581, ptr noundef %583, i64 noundef %584) #10
  store i64 %585, ptr %564, align 8, !tbaa !66
  br label %586

586:                                              ; preds = %580, %574
  %587 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %587) #10
  %588 = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 5
  %589 = load i64, ptr %588, align 8, !tbaa !83
  %590 = load i32, ptr %43, align 8, !tbaa !95
  %591 = zext i32 %590 to i64
  %592 = icmp ugt i64 %589, %591
  %593 = trunc i64 %589 to i32
  %594 = select i1 %592, i32 %590, i32 %593
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %615, label %596

596:                                              ; preds = %586
  %597 = load ptr, ptr %25, align 8, !tbaa !94
  %598 = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 4
  %599 = load ptr, ptr %598, align 8, !tbaa !84
  %600 = zext i32 %594 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %597, ptr align 1 %599, i64 %600, i1 false)
  %601 = load ptr, ptr %25, align 8, !tbaa !94
  %602 = getelementptr inbounds i8, ptr %601, i64 %600
  store ptr %602, ptr %25, align 8, !tbaa !94
  %603 = load ptr, ptr %598, align 8, !tbaa !84
  %604 = getelementptr inbounds i8, ptr %603, i64 %600
  store ptr %604, ptr %598, align 8, !tbaa !84
  %605 = load i64, ptr %566, align 8, !tbaa !96
  %606 = add i64 %605, %600
  store i64 %606, ptr %566, align 8, !tbaa !96
  %607 = load i32, ptr %43, align 8, !tbaa !95
  %608 = sub i32 %607, %594
  store i32 %608, ptr %43, align 8, !tbaa !95
  %609 = load i64, ptr %588, align 8, !tbaa !83
  %610 = sub i64 %609, %600
  store i64 %610, ptr %588, align 8, !tbaa !83
  %611 = icmp eq i64 %609, %600
  br i1 %611, label %612, label %615

612:                                              ; preds = %596
  %613 = getelementptr inbounds %struct.internal_state, ptr %587, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !36
  store ptr %614, ptr %598, align 8, !tbaa !84
  br label %615

615:                                              ; preds = %586, %596, %612
  %616 = load i64, ptr %52, align 8, !tbaa !83
  %617 = icmp eq i64 %616, 0
  br i1 %617, label %618, label %620

618:                                              ; preds = %615
  %619 = load ptr, ptr %556, align 8, !tbaa !86
  br label %621

620:                                              ; preds = %615
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

621:                                              ; preds = %618, %568
  %622 = phi i64 [ %570, %568 ], [ 0, %618 ]
  %623 = phi ptr [ %573, %568 ], [ %619, %618 ]
  %624 = phi i64 [ %569, %568 ], [ 0, %618 ]
  %625 = getelementptr inbounds %struct.gz_header_s, ptr %623, i64 0, i32 7
  %626 = load ptr, ptr %625, align 8, !tbaa !101
  %627 = load i64, ptr %567, align 8, !tbaa !106
  %628 = add i64 %627, 1
  store i64 %628, ptr %567, align 8, !tbaa !106
  %629 = getelementptr inbounds i8, ptr %626, i64 %627
  %630 = load i8, ptr %629, align 1, !tbaa !6
  %631 = load ptr, ptr %565, align 8, !tbaa !36
  %632 = add i64 %622, 1
  store i64 %632, ptr %52, align 8, !tbaa !83
  %633 = getelementptr inbounds i8, ptr %631, i64 %622
  store i8 %630, ptr %633, align 1, !tbaa !6
  %634 = icmp eq i8 %630, 0
  br i1 %634, label %635, label %568, !llvm.loop !109

635:                                              ; preds = %621
  %636 = load ptr, ptr %556, align 8, !tbaa !86
  %637 = getelementptr inbounds %struct.gz_header_s, ptr %636, i64 0, i32 11
  %638 = load i32, ptr %637, align 4, !tbaa !99
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %649, label %640

640:                                              ; preds = %635
  %641 = load i64, ptr %52, align 8, !tbaa !83
  %642 = icmp ugt i64 %641, %624
  br i1 %642, label %643, label %649

643:                                              ; preds = %640
  %644 = load i64, ptr %564, align 8, !tbaa !66
  %645 = load ptr, ptr %565, align 8, !tbaa !36
  %646 = getelementptr inbounds i8, ptr %645, i64 %624
  %647 = sub i64 %641, %624
  %648 = tail call i64 @crc32_z(i64 noundef %644, ptr noundef %646, i64 noundef %647) #10
  store i64 %648, ptr %564, align 8, !tbaa !66
  br label %649

649:                                              ; preds = %643, %640, %635
  store i64 0, ptr %567, align 8, !tbaa !106
  br label %650

650:                                              ; preds = %555, %649
  store i32 91, ptr %20, align 8, !tbaa !22
  br label %651

651:                                              ; preds = %384, %650
  %652 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %653 = load ptr, ptr %652, align 8, !tbaa !86
  %654 = getelementptr inbounds %struct.gz_header_s, ptr %653, i64 0, i32 9
  %655 = load ptr, ptr %654, align 8, !tbaa !102
  %656 = icmp eq ptr %655, null
  br i1 %656, label %745, label %657

657:                                              ; preds = %651
  %658 = load i64, ptr %52, align 8, !tbaa !83
  %659 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %660 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %661 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %662 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %663 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 8
  br label %664

664:                                              ; preds = %717, %657
  %665 = phi i64 [ %658, %657 ], [ %720, %717 ]
  %666 = load i64, ptr %52, align 8, !tbaa !83
  %667 = load i64, ptr %659, align 8, !tbaa !37
  %668 = icmp eq i64 %666, %667
  %669 = load ptr, ptr %652, align 8, !tbaa !86
  br i1 %668, label %670, label %717

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.gz_header_s, ptr %669, i64 0, i32 11
  %672 = load i32, ptr %671, align 4, !tbaa !99
  %673 = icmp ne i32 %672, 0
  %674 = icmp ugt i64 %666, %665
  %675 = select i1 %673, i1 %674, i1 false
  br i1 %675, label %676, label %682

676:                                              ; preds = %670
  %677 = load i64, ptr %660, align 8, !tbaa !66
  %678 = load ptr, ptr %661, align 8, !tbaa !36
  %679 = getelementptr inbounds i8, ptr %678, i64 %665
  %680 = sub i64 %666, %665
  %681 = tail call i64 @crc32_z(i64 noundef %677, ptr noundef %679, i64 noundef %680) #10
  store i64 %681, ptr %660, align 8, !tbaa !66
  br label %682

682:                                              ; preds = %676, %670
  %683 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %683) #10
  %684 = getelementptr inbounds %struct.internal_state, ptr %683, i64 0, i32 5
  %685 = load i64, ptr %684, align 8, !tbaa !83
  %686 = load i32, ptr %43, align 8, !tbaa !95
  %687 = zext i32 %686 to i64
  %688 = icmp ugt i64 %685, %687
  %689 = trunc i64 %685 to i32
  %690 = select i1 %688, i32 %686, i32 %689
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %711, label %692

692:                                              ; preds = %682
  %693 = load ptr, ptr %25, align 8, !tbaa !94
  %694 = getelementptr inbounds %struct.internal_state, ptr %683, i64 0, i32 4
  %695 = load ptr, ptr %694, align 8, !tbaa !84
  %696 = zext i32 %690 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %693, ptr align 1 %695, i64 %696, i1 false)
  %697 = load ptr, ptr %25, align 8, !tbaa !94
  %698 = getelementptr inbounds i8, ptr %697, i64 %696
  store ptr %698, ptr %25, align 8, !tbaa !94
  %699 = load ptr, ptr %694, align 8, !tbaa !84
  %700 = getelementptr inbounds i8, ptr %699, i64 %696
  store ptr %700, ptr %694, align 8, !tbaa !84
  %701 = load i64, ptr %662, align 8, !tbaa !96
  %702 = add i64 %701, %696
  store i64 %702, ptr %662, align 8, !tbaa !96
  %703 = load i32, ptr %43, align 8, !tbaa !95
  %704 = sub i32 %703, %690
  store i32 %704, ptr %43, align 8, !tbaa !95
  %705 = load i64, ptr %684, align 8, !tbaa !83
  %706 = sub i64 %705, %696
  store i64 %706, ptr %684, align 8, !tbaa !83
  %707 = icmp eq i64 %705, %696
  br i1 %707, label %708, label %711

708:                                              ; preds = %692
  %709 = getelementptr inbounds %struct.internal_state, ptr %683, i64 0, i32 2
  %710 = load ptr, ptr %709, align 8, !tbaa !36
  store ptr %710, ptr %694, align 8, !tbaa !84
  br label %711

711:                                              ; preds = %682, %692, %708
  %712 = load i64, ptr %52, align 8, !tbaa !83
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %714, label %716

714:                                              ; preds = %711
  %715 = load ptr, ptr %652, align 8, !tbaa !86
  br label %717

716:                                              ; preds = %711
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

717:                                              ; preds = %714, %664
  %718 = phi i64 [ %666, %664 ], [ 0, %714 ]
  %719 = phi ptr [ %669, %664 ], [ %715, %714 ]
  %720 = phi i64 [ %665, %664 ], [ 0, %714 ]
  %721 = getelementptr inbounds %struct.gz_header_s, ptr %719, i64 0, i32 9
  %722 = load ptr, ptr %721, align 8, !tbaa !102
  %723 = load i64, ptr %663, align 8, !tbaa !106
  %724 = add i64 %723, 1
  store i64 %724, ptr %663, align 8, !tbaa !106
  %725 = getelementptr inbounds i8, ptr %722, i64 %723
  %726 = load i8, ptr %725, align 1, !tbaa !6
  %727 = load ptr, ptr %661, align 8, !tbaa !36
  %728 = add i64 %718, 1
  store i64 %728, ptr %52, align 8, !tbaa !83
  %729 = getelementptr inbounds i8, ptr %727, i64 %718
  store i8 %726, ptr %729, align 1, !tbaa !6
  %730 = icmp eq i8 %726, 0
  br i1 %730, label %731, label %664, !llvm.loop !110

731:                                              ; preds = %717
  %732 = load ptr, ptr %652, align 8, !tbaa !86
  %733 = getelementptr inbounds %struct.gz_header_s, ptr %732, i64 0, i32 11
  %734 = load i32, ptr %733, align 4, !tbaa !99
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %745, label %736

736:                                              ; preds = %731
  %737 = load i64, ptr %52, align 8, !tbaa !83
  %738 = icmp ugt i64 %737, %720
  br i1 %738, label %739, label %745

739:                                              ; preds = %736
  %740 = load i64, ptr %660, align 8, !tbaa !66
  %741 = load ptr, ptr %661, align 8, !tbaa !36
  %742 = getelementptr inbounds i8, ptr %741, i64 %720
  %743 = sub i64 %737, %720
  %744 = tail call i64 @crc32_z(i64 noundef %740, ptr noundef %742, i64 noundef %743) #10
  store i64 %744, ptr %660, align 8, !tbaa !66
  br label %745

745:                                              ; preds = %651, %731, %736, %739
  store i32 103, ptr %20, align 8, !tbaa !22
  br label %746

746:                                              ; preds = %384, %745
  %747 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 7
  %748 = load ptr, ptr %747, align 8, !tbaa !86
  %749 = getelementptr inbounds %struct.gz_header_s, ptr %748, i64 0, i32 11
  %750 = load i32, ptr %749, align 4, !tbaa !99
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %779, label %752

752:                                              ; preds = %746
  %753 = load i64, ptr %52, align 8, !tbaa !83
  %754 = add i64 %753, 2
  %755 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 3
  %756 = load i64, ptr %755, align 8, !tbaa !37
  %757 = icmp ugt i64 %754, %756
  br i1 %757, label %758, label %762

758:                                              ; preds = %752
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %759 = load i64, ptr %52, align 8, !tbaa !83
  %760 = icmp eq i64 %759, 0
  br i1 %760, label %762, label %761

761:                                              ; preds = %758
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

762:                                              ; preds = %758, %752
  %763 = phi i64 [ 0, %758 ], [ %753, %752 ]
  %764 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %765 = load i64, ptr %764, align 8, !tbaa !66
  %766 = trunc i64 %765 to i8
  %767 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %768 = load ptr, ptr %767, align 8, !tbaa !36
  %769 = add i64 %763, 1
  store i64 %769, ptr %52, align 8, !tbaa !83
  %770 = getelementptr inbounds i8, ptr %768, i64 %763
  store i8 %766, ptr %770, align 1, !tbaa !6
  %771 = load i64, ptr %764, align 8, !tbaa !66
  %772 = lshr i64 %771, 8
  %773 = trunc i64 %772 to i8
  %774 = load ptr, ptr %767, align 8, !tbaa !36
  %775 = load i64, ptr %52, align 8, !tbaa !83
  %776 = add i64 %775, 1
  store i64 %776, ptr %52, align 8, !tbaa !83
  %777 = getelementptr inbounds i8, ptr %774, i64 %775
  store i8 %773, ptr %777, align 1, !tbaa !6
  %778 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %778, ptr %764, align 8, !tbaa !66
  br label %779

779:                                              ; preds = %762, %746
  store i32 113, ptr %20, align 8, !tbaa !22
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %780 = load i64, ptr %52, align 8, !tbaa !83
  %781 = icmp eq i64 %780, 0
  br i1 %781, label %783, label %782

782:                                              ; preds = %779
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

783:                                              ; preds = %384, %118, %779
  %784 = load i32, ptr %29, align 8, !tbaa !67
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %795

786:                                              ; preds = %108, %783
  %787 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 29
  %788 = load i32, ptr %787, align 4, !tbaa !60
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %795

790:                                              ; preds = %786
  %791 = icmp eq i32 %1, 0
  br i1 %791, label %952, label %792

792:                                              ; preds = %790
  %793 = load i32, ptr %20, align 8, !tbaa !22
  %794 = icmp eq i32 %793, 666
  br i1 %794, label %852, label %795

795:                                              ; preds = %792, %786, %783
  %796 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 33
  %797 = load i32, ptr %796, align 4, !tbaa !42
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %795
  %800 = tail call i32 @deflate_stored(ptr noundef nonnull %14, i32 noundef %1), !range !111
  br label %813

801:                                              ; preds = %795
  %802 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 34
  %803 = load i32, ptr %802, align 8, !tbaa !43
  switch i32 %803, label %808 [
    i32 2, label %804
    i32 3, label %806
  ]

804:                                              ; preds = %801
  %805 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %14, i32 noundef %1), !range !111
  br label %813

806:                                              ; preds = %801
  %807 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %14, i32 noundef %1), !range !111
  br label %813

808:                                              ; preds = %801
  %809 = sext i32 %797 to i64
  %810 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %809, i32 4
  %811 = load ptr, ptr %810, align 8, !tbaa !91
  %812 = tail call i32 %811(ptr noundef nonnull %14, i32 noundef %1) #10
  br label %813

813:                                              ; preds = %804, %808, %806, %799
  %814 = phi i32 [ %800, %799 ], [ %805, %804 ], [ %807, %806 ], [ %812, %808 ]
  %815 = and i32 %814, -2
  %816 = icmp eq i32 %815, 2
  br i1 %816, label %817, label %818

817:                                              ; preds = %813
  store i32 666, ptr %20, align 8, !tbaa !22
  br label %818

818:                                              ; preds = %813, %817
  %819 = and i32 %814, -3
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %818
  %822 = load i32, ptr %43, align 8, !tbaa !95
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %952

824:                                              ; preds = %821
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

825:                                              ; preds = %818
  %826 = icmp eq i32 %814, 1
  br i1 %826, label %827, label %852

827:                                              ; preds = %825
  switch i32 %1, label %829 [
    i32 1, label %828
    i32 5, label %848
  ]

828:                                              ; preds = %827
  tail call void @_tr_align(ptr noundef nonnull %14) #10
  br label %848

829:                                              ; preds = %827
  tail call void @_tr_stored_block(ptr noundef nonnull %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %830 = icmp eq i32 %1, 3
  br i1 %830, label %831, label %848

831:                                              ; preds = %829
  %832 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 17
  %833 = load ptr, ptr %832, align 8, !tbaa !33
  %834 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 19
  %835 = load i32, ptr %834, align 4, !tbaa !28
  %836 = add i32 %835, -1
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds i16, ptr %833, i64 %837
  store i16 0, ptr %838, align 2, !tbaa !47
  %839 = shl nuw nsw i64 %837, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %833, i8 0, i64 %839, i1 false)
  %840 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 60
  store i32 0, ptr %840, align 8, !tbaa !48
  %841 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 29
  %842 = load i32, ptr %841, align 4, !tbaa !60
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %848

844:                                              ; preds = %831
  %845 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  store i32 0, ptr %845, align 4, !tbaa !58
  %846 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 23
  store i64 0, ptr %846, align 8, !tbaa !59
  %847 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 55
  store i32 0, ptr %847, align 4, !tbaa !61
  br label %848

848:                                              ; preds = %827, %831, %844, %829, %828
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %849 = load i32, ptr %43, align 8, !tbaa !95
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %852

851:                                              ; preds = %848
  store i32 -1, ptr %50, align 4, !tbaa !85
  br label %952

852:                                              ; preds = %848, %825, %792
  br i1 %37, label %952, label %853

853:                                              ; preds = %852
  %854 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 6
  %855 = load i32, ptr %854, align 8, !tbaa !23
  %856 = icmp slt i32 %855, 1
  br i1 %856, label %952, label %857

857:                                              ; preds = %853
  %858 = icmp eq i32 %855, 2
  %859 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %860 = load i64, ptr %859, align 8, !tbaa !66
  br i1 %858, label %861, label %917

861:                                              ; preds = %857
  %862 = trunc i64 %860 to i8
  %863 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %864 = load ptr, ptr %863, align 8, !tbaa !36
  %865 = load i64, ptr %52, align 8, !tbaa !83
  %866 = add i64 %865, 1
  store i64 %866, ptr %52, align 8, !tbaa !83
  %867 = getelementptr inbounds i8, ptr %864, i64 %865
  store i8 %862, ptr %867, align 1, !tbaa !6
  %868 = load i64, ptr %859, align 8, !tbaa !66
  %869 = lshr i64 %868, 8
  %870 = trunc i64 %869 to i8
  %871 = load ptr, ptr %863, align 8, !tbaa !36
  %872 = load i64, ptr %52, align 8, !tbaa !83
  %873 = add i64 %872, 1
  store i64 %873, ptr %52, align 8, !tbaa !83
  %874 = getelementptr inbounds i8, ptr %871, i64 %872
  store i8 %870, ptr %874, align 1, !tbaa !6
  %875 = load i64, ptr %859, align 8, !tbaa !66
  %876 = lshr i64 %875, 16
  %877 = trunc i64 %876 to i8
  %878 = load ptr, ptr %863, align 8, !tbaa !36
  %879 = load i64, ptr %52, align 8, !tbaa !83
  %880 = add i64 %879, 1
  store i64 %880, ptr %52, align 8, !tbaa !83
  %881 = getelementptr inbounds i8, ptr %878, i64 %879
  store i8 %877, ptr %881, align 1, !tbaa !6
  %882 = load i64, ptr %859, align 8, !tbaa !66
  %883 = lshr i64 %882, 24
  %884 = trunc i64 %883 to i8
  %885 = load ptr, ptr %863, align 8, !tbaa !36
  %886 = load i64, ptr %52, align 8, !tbaa !83
  %887 = add i64 %886, 1
  store i64 %887, ptr %52, align 8, !tbaa !83
  %888 = getelementptr inbounds i8, ptr %885, i64 %886
  store i8 %884, ptr %888, align 1, !tbaa !6
  %889 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %890 = load i64, ptr %889, align 8, !tbaa !79
  %891 = trunc i64 %890 to i8
  %892 = load ptr, ptr %863, align 8, !tbaa !36
  %893 = load i64, ptr %52, align 8, !tbaa !83
  %894 = add i64 %893, 1
  store i64 %894, ptr %52, align 8, !tbaa !83
  %895 = getelementptr inbounds i8, ptr %892, i64 %893
  store i8 %891, ptr %895, align 1, !tbaa !6
  %896 = load i64, ptr %889, align 8, !tbaa !79
  %897 = lshr i64 %896, 8
  %898 = trunc i64 %897 to i8
  %899 = load ptr, ptr %863, align 8, !tbaa !36
  %900 = load i64, ptr %52, align 8, !tbaa !83
  %901 = add i64 %900, 1
  store i64 %901, ptr %52, align 8, !tbaa !83
  %902 = getelementptr inbounds i8, ptr %899, i64 %900
  store i8 %898, ptr %902, align 1, !tbaa !6
  %903 = load i64, ptr %889, align 8, !tbaa !79
  %904 = lshr i64 %903, 16
  %905 = trunc i64 %904 to i8
  %906 = load ptr, ptr %863, align 8, !tbaa !36
  %907 = load i64, ptr %52, align 8, !tbaa !83
  %908 = add i64 %907, 1
  store i64 %908, ptr %52, align 8, !tbaa !83
  %909 = getelementptr inbounds i8, ptr %906, i64 %907
  store i8 %905, ptr %909, align 1, !tbaa !6
  %910 = load i64, ptr %889, align 8, !tbaa !79
  %911 = lshr i64 %910, 24
  %912 = trunc i64 %911 to i8
  %913 = load ptr, ptr %863, align 8, !tbaa !36
  %914 = load i64, ptr %52, align 8, !tbaa !83
  %915 = add i64 %914, 1
  store i64 %915, ptr %52, align 8, !tbaa !83
  %916 = getelementptr inbounds i8, ptr %913, i64 %914
  store i8 %912, ptr %916, align 1, !tbaa !6
  br label %943

917:                                              ; preds = %857
  %918 = lshr i64 %860, 16
  %919 = lshr i64 %860, 24
  %920 = trunc i64 %919 to i8
  %921 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %922 = load ptr, ptr %921, align 8, !tbaa !36
  %923 = load i64, ptr %52, align 8, !tbaa !83
  %924 = add i64 %923, 1
  store i64 %924, ptr %52, align 8, !tbaa !83
  %925 = getelementptr inbounds i8, ptr %922, i64 %923
  store i8 %920, ptr %925, align 1, !tbaa !6
  %926 = trunc i64 %918 to i8
  %927 = load ptr, ptr %921, align 8, !tbaa !36
  %928 = load i64, ptr %52, align 8, !tbaa !83
  %929 = add i64 %928, 1
  store i64 %929, ptr %52, align 8, !tbaa !83
  %930 = getelementptr inbounds i8, ptr %927, i64 %928
  store i8 %926, ptr %930, align 1, !tbaa !6
  %931 = load i64, ptr %859, align 8, !tbaa !66
  %932 = trunc i64 %931 to i8
  %933 = lshr i64 %931, 8
  %934 = trunc i64 %933 to i8
  %935 = load ptr, ptr %921, align 8, !tbaa !36
  %936 = load i64, ptr %52, align 8, !tbaa !83
  %937 = add i64 %936, 1
  store i64 %937, ptr %52, align 8, !tbaa !83
  %938 = getelementptr inbounds i8, ptr %935, i64 %936
  store i8 %934, ptr %938, align 1, !tbaa !6
  %939 = load ptr, ptr %921, align 8, !tbaa !36
  %940 = load i64, ptr %52, align 8, !tbaa !83
  %941 = add i64 %940, 1
  store i64 %941, ptr %52, align 8, !tbaa !83
  %942 = getelementptr inbounds i8, ptr %939, i64 %940
  store i8 %932, ptr %942, align 1, !tbaa !6
  br label %943

943:                                              ; preds = %917, %861
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %944 = load i32, ptr %854, align 8, !tbaa !23
  %945 = icmp sgt i32 %944, 0
  br i1 %945, label %946, label %948

946:                                              ; preds = %943
  %947 = sub nsw i32 0, %944
  store i32 %947, ptr %854, align 8, !tbaa !23
  br label %948

948:                                              ; preds = %946, %943
  %949 = load i64, ptr %52, align 8, !tbaa !83
  %950 = icmp eq i64 %949, 0
  %951 = zext i1 %950 to i32
  br label %952

952:                                              ; preds = %790, %12, %16, %19, %2, %4, %8, %518, %194, %851, %824, %821, %853, %852, %716, %620, %22, %948, %782, %761, %260, %111, %102, %89, %46, %39
  %953 = phi i32 [ -2, %39 ], [ -5, %46 ], [ 0, %89 ], [ -5, %111 ], [ 0, %260 ], [ 0, %761 ], [ 0, %782 ], [ %951, %948 ], [ 0, %194 ], [ -5, %102 ], [ -2, %22 ], [ 0, %620 ], [ 0, %716 ], [ 0, %852 ], [ 1, %853 ], [ 0, %821 ], [ 0, %824 ], [ 0, %851 ], [ 0, %518 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ], [ 0, %790 ]
  ret i32 %953
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @slide_hash(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds i16, ptr %7, i64 %8
  %10 = add i32 %5, -1
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i32 %10, 7
  br i1 %13, label %37, label %14

14:                                               ; preds = %1
  %15 = and i64 %12, 8589934584
  %16 = mul nsw i64 %15, -2
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = trunc i64 %15 to i32
  %19 = sub i32 %5, %18
  %20 = insertelement <8 x i32> poison, i32 %3, i64 0
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <8 x i32> zeroinitializer
  %22 = getelementptr i16, ptr %9, i64 -8
  br label %23

23:                                               ; preds = %23, %14
  %24 = phi i64 [ 0, %14 ], [ %33, %23 ]
  %25 = mul i64 %24, -2
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = load <8 x i16>, ptr %26, align 2, !tbaa !47
  %28 = shufflevector <8 x i16> %27, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %29 = zext <8 x i16> %28 to <8 x i32>
  %30 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %29, <8 x i32> %21)
  %31 = trunc <8 x i32> %30 to <8 x i16>
  %32 = shufflevector <8 x i16> %31, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %32, ptr %26, align 2, !tbaa !47
  %33 = add nuw i64 %24, 8
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %35, label %23, !llvm.loop !112

35:                                               ; preds = %23
  %36 = icmp eq i64 %12, %15
  br i1 %36, label %50, label %37

37:                                               ; preds = %1, %35
  %38 = phi ptr [ %9, %1 ], [ %17, %35 ]
  %39 = phi i32 [ %5, %1 ], [ %19, %35 ]
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %37 ]
  %42 = phi i32 [ %48, %40 ], [ %39, %37 ]
  %43 = getelementptr inbounds i16, ptr %41, i64 -1
  %44 = load i16, ptr %43, align 2, !tbaa !47
  %45 = zext i16 %44 to i32
  %46 = tail call i32 @llvm.usub.sat.i32(i32 %45, i32 %3)
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %43, align 2, !tbaa !47
  %48 = add i32 %42, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %40, !llvm.loop !113

50:                                               ; preds = %40, %35
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !32
  %53 = zext i32 %3 to i64
  %54 = getelementptr inbounds i16, ptr %52, i64 %53
  %55 = add i32 %3, -1
  %56 = zext i32 %55 to i64
  %57 = add nuw nsw i64 %56, 1
  %58 = icmp ult i32 %55, 7
  br i1 %58, label %82, label %59

59:                                               ; preds = %50
  %60 = and i64 %57, 8589934584
  %61 = mul nsw i64 %60, -2
  %62 = getelementptr i8, ptr %54, i64 %61
  %63 = trunc i64 %60 to i32
  %64 = sub i32 %3, %63
  %65 = insertelement <8 x i32> poison, i32 %3, i64 0
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> zeroinitializer
  %67 = getelementptr i16, ptr %54, i64 -8
  br label %68

68:                                               ; preds = %68, %59
  %69 = phi i64 [ 0, %59 ], [ %78, %68 ]
  %70 = mul i64 %69, -2
  %71 = getelementptr i8, ptr %67, i64 %70
  %72 = load <8 x i16>, ptr %71, align 2, !tbaa !47
  %73 = shufflevector <8 x i16> %72, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %74 = zext <8 x i16> %73 to <8 x i32>
  %75 = tail call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %74, <8 x i32> %66)
  %76 = trunc <8 x i32> %75 to <8 x i16>
  %77 = shufflevector <8 x i16> %76, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %77, ptr %71, align 2, !tbaa !47
  %78 = add nuw i64 %69, 8
  %79 = icmp eq i64 %78, %60
  br i1 %79, label %80, label %68, !llvm.loop !114

80:                                               ; preds = %68
  %81 = icmp eq i64 %57, %60
  br i1 %81, label %95, label %82

82:                                               ; preds = %50, %80
  %83 = phi ptr [ %54, %50 ], [ %62, %80 ]
  %84 = phi i32 [ %3, %50 ], [ %64, %80 ]
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi ptr [ %88, %85 ], [ %83, %82 ]
  %87 = phi i32 [ %93, %85 ], [ %84, %82 ]
  %88 = getelementptr inbounds i16, ptr %86, i64 -1
  %89 = load i16, ptr %88, align 2, !tbaa !47
  %90 = zext i16 %89 to i32
  %91 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %3)
  %92 = trunc i32 %91 to i16
  store i16 %92, ptr %88, align 2, !tbaa !47
  %93 = add i32 %87, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %85, !llvm.loop !115

95:                                               ; preds = %85, %80
  %96 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 60
  store i32 1, ptr %96, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateTune(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !22
  switch i32 %24, label %30 [
    i32 42, label %25
    i32 57, label %25
    i32 69, label %25
    i32 73, label %25
    i32 91, label %25
    i32 103, label %25
    i32 113, label %25
    i32 666, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %26 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 35
  store i32 %1, ptr %26, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 32
  store i32 %2, ptr %27, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 36
  store i32 %3, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 31
  store i32 %4, ptr %29, align 4, !tbaa !57
  br label %30

30:                                               ; preds = %15, %19, %22, %5, %7, %11, %25
  %31 = phi i32 [ 0, %25 ], [ -2, %11 ], [ -2, %7 ], [ -2, %5 ], [ -2, %22 ], [ -2, %19 ], [ -2, %15 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = lshr i64 %1, 3
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !18
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !22
  switch i32 %39, label %40 [
    i32 42, label %45
    i32 57, label %45
    i32 69, label %45
    i32 73, label %45
    i32 91, label %45
    i32 103, label %45
    i32 113, label %45
    i32 666, label %45
  ]

40:                                               ; preds = %26, %22, %2, %37, %34, %30
  %41 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %42 = add i64 %41, 18
  %43 = icmp ugt i64 %41, -19
  %44 = select i1 %43, i64 -1, i64 %42
  br label %129

45:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %46 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !23
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  switch i32 %48, label %99 [
    i32 0, label %100
    i32 1, label %49
    i32 2, label %54
  ]

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 27
  %51 = load i32, ptr %50, align 4, !tbaa !58
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 6, i64 10
  br label %100

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !86
  %57 = icmp eq ptr %56, null
  br i1 %57, label %100, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gz_header_s, ptr %56, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !100
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gz_header_s, ptr %56, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !105
  %65 = add i32 %64, 2
  %66 = zext i32 %65 to i64
  %67 = add nuw nsw i64 %66, 18
  br label %68

68:                                               ; preds = %62, %58
  %69 = phi i64 [ %67, %62 ], [ 18, %58 ]
  %70 = getelementptr inbounds %struct.gz_header_s, ptr %56, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !101
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68, %73
  %74 = phi i64 [ %76, %73 ], [ %69, %68 ]
  %75 = phi ptr [ %77, %73 ], [ %71, %68 ]
  %76 = add i64 %74, 1
  %77 = getelementptr inbounds i8, ptr %75, i64 1
  %78 = load i8, ptr %75, align 1, !tbaa !6
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %73, !llvm.loop !116

80:                                               ; preds = %73, %68
  %81 = phi i64 [ %69, %68 ], [ %76, %73 ]
  %82 = getelementptr inbounds %struct.gz_header_s, ptr %56, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80, %85
  %86 = phi i64 [ %88, %85 ], [ %81, %80 ]
  %87 = phi ptr [ %89, %85 ], [ %83, %80 ]
  %88 = add i64 %86, 1
  %89 = getelementptr inbounds i8, ptr %87, i64 1
  %90 = load i8, ptr %87, align 1, !tbaa !6
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %85, !llvm.loop !117

92:                                               ; preds = %85, %80
  %93 = phi i64 [ %81, %80 ], [ %88, %85 ]
  %94 = getelementptr inbounds %struct.gz_header_s, ptr %56, i64 0, i32 11
  %95 = load i32, ptr %94, align 4, !tbaa !99
  %96 = icmp eq i32 %95, 0
  %97 = add i64 %93, 2
  %98 = select i1 %96, i64 %93, i64 %97
  br label %100

99:                                               ; preds = %45
  br label %100

100:                                              ; preds = %45, %54, %92, %99, %49
  %101 = phi i64 [ 18, %99 ], [ %98, %92 ], [ 18, %54 ], [ %53, %49 ], [ 0, %45 ]
  %102 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 12
  %103 = load i32, ptr %102, align 4, !tbaa !24
  %104 = icmp eq i32 %103, 15
  %105 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 20
  %106 = load i32, ptr %105, align 8, !tbaa !27
  %107 = icmp eq i32 %106, 15
  %108 = select i1 %104, i1 %107, i1 false
  br i1 %108, label %119, label %109

109:                                              ; preds = %100
  %110 = icmp ugt i32 %103, %106
  br i1 %110, label %115, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 33
  %113 = load i32, ptr %112, align 4, !tbaa !42
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %109
  br label %116

116:                                              ; preds = %111, %115
  %117 = phi i64 [ %20, %115 ], [ %11, %111 ]
  %118 = tail call i64 @llvm.uadd.sat.i64(i64 %117, i64 %101)
  br label %129

119:                                              ; preds = %100
  %120 = lshr i64 %1, 12
  %121 = lshr i64 %1, 14
  %122 = lshr i64 %1, 25
  %123 = add i64 %15, %120
  %124 = add i64 %123, %121
  %125 = add i64 %124, %122
  %126 = add i64 %125, %101
  %127 = icmp ult i64 %126, %1
  %128 = select i1 %127, i64 -1, i64 %126
  br label %129

129:                                              ; preds = %119, %116, %40
  %130 = phi i64 [ %44, %40 ], [ %118, %116 ], [ %128, %119 ]
  ret i64 %130
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = tail call i64 @deflateBound_z(ptr noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !95
  %8 = zext i32 %7 to i64
  %9 = icmp ugt i64 %5, %8
  %10 = trunc i64 %5 to i32
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = zext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %17, i64 %18, i1 false)
  %19 = load ptr, ptr %14, align 8, !tbaa !94
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr %14, align 8, !tbaa !94
  %21 = load ptr, ptr %16, align 8, !tbaa !84
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %22, ptr %16, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %24 = load i64, ptr %23, align 8, !tbaa !96
  %25 = add i64 %24, %18
  store i64 %25, ptr %23, align 8, !tbaa !96
  %26 = load i32, ptr %6, align 8, !tbaa !95
  %27 = sub i32 %26, %11
  store i32 %27, ptr %6, align 8, !tbaa !95
  %28 = load i64, ptr %4, align 8, !tbaa !83
  %29 = sub i64 %28, %18
  store i64 %29, ptr %4, align 8, !tbaa !83
  %30 = icmp eq i64 %28, %18
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  store ptr %33, ptr %16, align 8, !tbaa !84
  br label %34

34:                                               ; preds = %13, %31, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !37
  %5 = add i64 %4, -5
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !25
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc i64 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %17 = icmp ne i32 %1, 4
  %18 = icmp eq i32 %1, 0
  %19 = icmp eq i32 %1, 4
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  br label %23

23:                                               ; preds = %185, %2
  %24 = load i32, ptr %14, align 4, !tbaa !87
  %25 = add i32 %24, 42
  %26 = lshr i32 %25, 3
  %27 = load ptr, ptr %0, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !95
  %30 = icmp ult i32 %29, %26
  br i1 %30, label %188, label %31

31:                                               ; preds = %23
  %32 = sub i32 %29, %26
  %33 = load i32, ptr %15, align 4, !tbaa !58
  %34 = load i64, ptr %16, align 8, !tbaa !59
  %35 = trunc i64 %34 to i32
  %36 = sub i32 %33, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %27, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %37, %40
  %42 = icmp ult i64 %41, 65535
  %43 = add i32 %36, %39
  %44 = select i1 %42, i32 %43, i32 65535
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %32)
  %46 = icmp ult i32 %45, %10
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = icmp eq i32 %45, 0
  %49 = and i1 %17, %48
  %50 = or i1 %18, %49
  %51 = icmp ne i32 %45, %43
  %52 = or i1 %51, %50
  br i1 %52, label %188, label %53

53:                                               ; preds = %47, %31
  %54 = icmp eq i32 %45, %43
  %55 = select i1 %19, i1 %54, i1 false
  %56 = zext i1 %55 to i32
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef %56) #10
  %57 = trunc i32 %45 to i8
  %58 = load ptr, ptr %20, align 8, !tbaa !36
  %59 = load i64, ptr %21, align 8, !tbaa !83
  %60 = getelementptr i8, ptr %58, i64 %59
  %61 = getelementptr i8, ptr %60, i64 -4
  store i8 %57, ptr %61, align 1, !tbaa !6
  %62 = lshr i32 %45, 8
  %63 = trunc i32 %62 to i8
  %64 = load ptr, ptr %20, align 8, !tbaa !36
  %65 = load i64, ptr %21, align 8, !tbaa !83
  %66 = getelementptr i8, ptr %64, i64 %65
  %67 = getelementptr i8, ptr %66, i64 -3
  store i8 %63, ptr %67, align 1, !tbaa !6
  %68 = xor i32 %45, -1
  %69 = trunc i32 %68 to i8
  %70 = load ptr, ptr %20, align 8, !tbaa !36
  %71 = load i64, ptr %21, align 8, !tbaa !83
  %72 = getelementptr i8, ptr %70, i64 %71
  %73 = getelementptr i8, ptr %72, i64 -2
  store i8 %69, ptr %73, align 1, !tbaa !6
  %74 = lshr i32 %68, 8
  %75 = trunc i32 %74 to i8
  %76 = load ptr, ptr %20, align 8, !tbaa !36
  %77 = load i64, ptr %21, align 8, !tbaa !83
  %78 = getelementptr i8, ptr %76, i64 %77
  %79 = getelementptr i8, ptr %78, i64 -1
  store i8 %75, ptr %79, align 1, !tbaa !6
  %80 = load ptr, ptr %0, align 8, !tbaa !18
  %81 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %82) #10
  %83 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 5
  %84 = load i64, ptr %83, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !95
  %87 = zext i32 %86 to i64
  %88 = icmp ugt i64 %84, %87
  %89 = trunc i64 %84 to i32
  %90 = select i1 %88, i32 %86, i32 %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %53
  %93 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !94
  %95 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !84
  %97 = zext i32 %90 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %94, ptr align 1 %96, i64 %97, i1 false)
  %98 = load ptr, ptr %93, align 8, !tbaa !94
  %99 = getelementptr inbounds i8, ptr %98, i64 %97
  store ptr %99, ptr %93, align 8, !tbaa !94
  %100 = load ptr, ptr %95, align 8, !tbaa !84
  %101 = getelementptr inbounds i8, ptr %100, i64 %97
  store ptr %101, ptr %95, align 8, !tbaa !84
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 5
  %103 = load i64, ptr %102, align 8, !tbaa !96
  %104 = add i64 %103, %97
  store i64 %104, ptr %102, align 8, !tbaa !96
  %105 = load i32, ptr %85, align 8, !tbaa !95
  %106 = sub i32 %105, %90
  store i32 %106, ptr %85, align 8, !tbaa !95
  %107 = load i64, ptr %83, align 8, !tbaa !83
  %108 = sub i64 %107, %97
  store i64 %108, ptr %83, align 8, !tbaa !83
  %109 = icmp eq i64 %107, %97
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = getelementptr inbounds %struct.internal_state, ptr %82, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !36
  store ptr %112, ptr %95, align 8, !tbaa !84
  br label %113

113:                                              ; preds = %53, %92, %110
  %114 = icmp eq i32 %33, %35
  br i1 %114, label %137, label %115

115:                                              ; preds = %113
  %116 = tail call i32 @llvm.umin.i32(i32 %36, i32 %45)
  %117 = load ptr, ptr %0, align 8, !tbaa !18
  %118 = getelementptr inbounds %struct.z_stream_s, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = load ptr, ptr %22, align 8, !tbaa !31
  %121 = load i64, ptr %16, align 8, !tbaa !59
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  %123 = zext i32 %116 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %122, i64 %123, i1 false)
  %124 = load ptr, ptr %0, align 8, !tbaa !18
  %125 = getelementptr inbounds %struct.z_stream_s, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !94
  %127 = getelementptr inbounds i8, ptr %126, i64 %123
  store ptr %127, ptr %125, align 8, !tbaa !94
  %128 = getelementptr inbounds %struct.z_stream_s, ptr %124, i64 0, i32 4
  %129 = load i32, ptr %128, align 8, !tbaa !95
  %130 = sub i32 %129, %116
  store i32 %130, ptr %128, align 8, !tbaa !95
  %131 = getelementptr inbounds %struct.z_stream_s, ptr %124, i64 0, i32 5
  %132 = load i64, ptr %131, align 8, !tbaa !96
  %133 = add i64 %132, %123
  store i64 %133, ptr %131, align 8, !tbaa !96
  %134 = load i64, ptr %16, align 8, !tbaa !59
  %135 = add nsw i64 %134, %123
  store i64 %135, ptr %16, align 8, !tbaa !59
  %136 = sub i32 %45, %116
  br label %137

137:                                              ; preds = %115, %113
  %138 = phi i32 [ %136, %115 ], [ %45, %113 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %185, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %0, align 8, !tbaa !18
  %142 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !94
  %144 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !67
  %146 = tail call i32 @llvm.umin.i32(i32 %145, i32 %138)
  %147 = icmp eq i32 %145, 0
  br i1 %147, label %173, label %148

148:                                              ; preds = %140
  %149 = sub i32 %145, %146
  store i32 %149, ptr %144, align 8, !tbaa !67
  %150 = load ptr, ptr %141, align 8, !tbaa !68
  %151 = zext i32 %146 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %143, ptr align 1 %150, i64 %151, i1 false)
  %152 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !17
  %154 = getelementptr inbounds %struct.internal_state, ptr %153, i64 0, i32 6
  %155 = load i32, ptr %154, align 8, !tbaa !23
  switch i32 %155, label %164 [
    i32 1, label %156
    i32 2, label %160
  ]

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 12
  %158 = load i64, ptr %157, align 8, !tbaa !66
  %159 = tail call i64 @adler32(i64 noundef %158, ptr noundef %143, i32 noundef %146) #10
  store i64 %159, ptr %157, align 8, !tbaa !66
  br label %164

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 12
  %162 = load i64, ptr %161, align 8, !tbaa !66
  %163 = tail call i64 @crc32(i64 noundef %162, ptr noundef %143, i32 noundef %146) #10
  store i64 %163, ptr %161, align 8, !tbaa !66
  br label %164

164:                                              ; preds = %160, %156, %148
  %165 = load ptr, ptr %141, align 8, !tbaa !68
  %166 = getelementptr inbounds i8, ptr %165, i64 %151
  store ptr %166, ptr %141, align 8, !tbaa !68
  %167 = getelementptr inbounds %struct.z_stream_s, ptr %141, i64 0, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !79
  %169 = add i64 %168, %151
  store i64 %169, ptr %167, align 8, !tbaa !79
  %170 = load ptr, ptr %0, align 8, !tbaa !18
  %171 = getelementptr inbounds %struct.z_stream_s, ptr %170, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !94
  br label %173

173:                                              ; preds = %140, %164
  %174 = phi ptr [ %143, %140 ], [ %172, %164 ]
  %175 = phi ptr [ %141, %140 ], [ %170, %164 ]
  %176 = getelementptr inbounds %struct.z_stream_s, ptr %175, i64 0, i32 3
  %177 = zext i32 %138 to i64
  %178 = getelementptr inbounds i8, ptr %174, i64 %177
  store ptr %178, ptr %176, align 8, !tbaa !94
  %179 = getelementptr inbounds %struct.z_stream_s, ptr %175, i64 0, i32 4
  %180 = load i32, ptr %179, align 8, !tbaa !95
  %181 = sub i32 %180, %138
  store i32 %181, ptr %179, align 8, !tbaa !95
  %182 = getelementptr inbounds %struct.z_stream_s, ptr %175, i64 0, i32 5
  %183 = load i64, ptr %182, align 8, !tbaa !96
  %184 = add i64 %183, %177
  store i64 %184, ptr %182, align 8, !tbaa !96
  br label %185

185:                                              ; preds = %137, %173
  br i1 %55, label %186, label %23, !llvm.loop !118

186:                                              ; preds = %185
  %187 = load ptr, ptr %0, align 8, !tbaa !18
  br label %188

188:                                              ; preds = %47, %23, %186
  %189 = phi ptr [ %187, %186 ], [ %27, %23 ], [ %27, %47 ]
  %190 = phi i1 [ false, %186 ], [ true, %23 ], [ true, %47 ]
  %191 = getelementptr inbounds %struct.z_stream_s, ptr %189, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !67
  %193 = sub i32 %13, %192
  %194 = icmp eq i32 %13, %192
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, ptr %15, align 4, !tbaa !58
  %197 = zext i32 %196 to i64
  br label %255

198:                                              ; preds = %188
  %199 = load i32, ptr %6, align 8, !tbaa !25
  %200 = icmp ult i32 %193, %199
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  store i32 2, ptr %202, align 8, !tbaa !93
  %203 = load ptr, ptr %22, align 8, !tbaa !31
  %204 = load ptr, ptr %189, align 8, !tbaa !68
  %205 = zext i32 %199 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr %204, i64 %206
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %203, ptr align 1 %207, i64 %205, i1 false)
  %208 = load i32, ptr %6, align 8, !tbaa !25
  store i32 %208, ptr %15, align 4, !tbaa !58
  %209 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %208, ptr %209, align 4, !tbaa !61
  br label %252

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %212 = load i64, ptr %211, align 8, !tbaa !46
  %213 = load i32, ptr %15, align 4, !tbaa !58
  %214 = zext i32 %213 to i64
  %215 = sub i64 %212, %214
  %216 = zext i32 %193 to i64
  %217 = icmp ugt i64 %215, %216
  br i1 %217, label %235, label %218

218:                                              ; preds = %210
  %219 = sub i32 %213, %199
  store i32 %219, ptr %15, align 4, !tbaa !58
  %220 = load ptr, ptr %22, align 8, !tbaa !31
  %221 = zext i32 %199 to i64
  %222 = getelementptr inbounds i8, ptr %220, i64 %221
  %223 = zext i32 %219 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %220, ptr nonnull align 1 %222, i64 %223, i1 false)
  %224 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %225 = load i32, ptr %224, align 8, !tbaa !93
  %226 = icmp ult i32 %225, 2
  br i1 %226, label %227, label %229

227:                                              ; preds = %218
  %228 = add nuw nsw i32 %225, 1
  store i32 %228, ptr %224, align 8, !tbaa !93
  br label %229

229:                                              ; preds = %227, %218
  %230 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %231 = load i32, ptr %230, align 4, !tbaa !61
  %232 = load i32, ptr %15, align 4, !tbaa !58
  %233 = icmp ugt i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  store i32 %232, ptr %230, align 4, !tbaa !61
  br label %235

235:                                              ; preds = %229, %234, %210
  %236 = phi i32 [ %232, %229 ], [ %232, %234 ], [ %213, %210 ]
  %237 = load ptr, ptr %22, align 8, !tbaa !31
  %238 = zext i32 %236 to i64
  %239 = getelementptr inbounds i8, ptr %237, i64 %238
  %240 = load ptr, ptr %0, align 8, !tbaa !18
  %241 = load ptr, ptr %240, align 8, !tbaa !68
  %242 = sub nsw i64 0, %216
  %243 = getelementptr inbounds i8, ptr %241, i64 %242
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %239, ptr nonnull align 1 %243, i64 %216, i1 false)
  %244 = load i32, ptr %15, align 4, !tbaa !58
  %245 = add i32 %244, %193
  store i32 %245, ptr %15, align 4, !tbaa !58
  %246 = load i32, ptr %6, align 8, !tbaa !25
  %247 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %248 = load i32, ptr %247, align 4, !tbaa !61
  %249 = sub i32 %246, %248
  %250 = tail call i32 @llvm.umin.i32(i32 %193, i32 %249)
  %251 = add i32 %250, %248
  store i32 %251, ptr %247, align 4, !tbaa !61
  br label %252

252:                                              ; preds = %235, %201
  %253 = phi i32 [ %245, %235 ], [ %208, %201 ]
  %254 = zext i32 %253 to i64
  store i64 %254, ptr %16, align 8, !tbaa !59
  br label %255

255:                                              ; preds = %195, %252
  %256 = phi i64 [ %197, %195 ], [ %254, %252 ]
  %257 = phi i32 [ %196, %195 ], [ %253, %252 ]
  %258 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 59
  %259 = load i64, ptr %258, align 8, !tbaa !34
  %260 = icmp ult i64 %259, %256
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  store i64 %256, ptr %258, align 8, !tbaa !34
  br label %262

262:                                              ; preds = %261, %255
  br i1 %190, label %263, label %429

263:                                              ; preds = %262
  %264 = icmp ne i32 %1, 0
  switch i32 %1, label %265 [
    i32 4, label %273
    i32 0, label %273
  ]

265:                                              ; preds = %263
  %266 = load ptr, ptr %0, align 8, !tbaa !18
  %267 = getelementptr inbounds %struct.z_stream_s, ptr %266, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !67
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i64, ptr %16, align 8, !tbaa !59
  %272 = icmp eq i64 %271, %256
  br i1 %272, label %432, label %273

273:                                              ; preds = %263, %263, %270, %265
  %274 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %275 = load i64, ptr %274, align 8, !tbaa !46
  %276 = trunc i64 %275 to i32
  %277 = sub i32 %276, %257
  %278 = load ptr, ptr %0, align 8, !tbaa !18
  %279 = getelementptr inbounds %struct.z_stream_s, ptr %278, i64 0, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !67
  %281 = icmp ugt i32 %280, %277
  br i1 %281, label %282, label %306

282:                                              ; preds = %273
  %283 = load i64, ptr %16, align 8, !tbaa !59
  %284 = load i32, ptr %6, align 8, !tbaa !25
  %285 = zext i32 %284 to i64
  %286 = icmp slt i64 %283, %285
  br i1 %286, label %306, label %287

287:                                              ; preds = %282
  %288 = sub nsw i64 %283, %285
  store i64 %288, ptr %16, align 8, !tbaa !59
  %289 = sub i32 %257, %284
  store i32 %289, ptr %15, align 4, !tbaa !58
  %290 = load ptr, ptr %22, align 8, !tbaa !31
  %291 = getelementptr inbounds i8, ptr %290, i64 %285
  %292 = zext i32 %289 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %290, ptr align 1 %291, i64 %292, i1 false)
  %293 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %294 = load i32, ptr %293, align 8, !tbaa !93
  %295 = icmp ult i32 %294, 2
  br i1 %295, label %296, label %298

296:                                              ; preds = %287
  %297 = add nuw nsw i32 %294, 1
  store i32 %297, ptr %293, align 8, !tbaa !93
  br label %298

298:                                              ; preds = %296, %287
  %299 = load i32, ptr %6, align 8, !tbaa !25
  %300 = add i32 %299, %277
  %301 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %302 = load i32, ptr %301, align 4, !tbaa !61
  %303 = load i32, ptr %15, align 4, !tbaa !58
  %304 = icmp ugt i32 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  store i32 %303, ptr %301, align 4, !tbaa !61
  br label %306

306:                                              ; preds = %298, %305, %282, %273
  %307 = phi i32 [ %303, %305 ], [ %303, %298 ], [ %257, %282 ], [ %257, %273 ]
  %308 = phi i32 [ %300, %305 ], [ %300, %298 ], [ %277, %282 ], [ %277, %273 ]
  %309 = load ptr, ptr %0, align 8, !tbaa !18
  %310 = getelementptr inbounds %struct.z_stream_s, ptr %309, i64 0, i32 1
  %311 = load i32, ptr %310, align 8, !tbaa !67
  %312 = tail call i32 @llvm.umin.i32(i32 %308, i32 %311)
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %347, label %314

314:                                              ; preds = %306
  %315 = load ptr, ptr %22, align 8, !tbaa !31
  %316 = zext i32 %307 to i64
  %317 = getelementptr inbounds i8, ptr %315, i64 %316
  %318 = sub i32 %311, %312
  store i32 %318, ptr %310, align 8, !tbaa !67
  %319 = load ptr, ptr %309, align 8, !tbaa !68
  %320 = zext i32 %312 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %317, ptr align 1 %319, i64 %320, i1 false)
  %321 = getelementptr inbounds %struct.z_stream_s, ptr %309, i64 0, i32 7
  %322 = load ptr, ptr %321, align 8, !tbaa !17
  %323 = getelementptr inbounds %struct.internal_state, ptr %322, i64 0, i32 6
  %324 = load i32, ptr %323, align 8, !tbaa !23
  switch i32 %324, label %333 [
    i32 1, label %325
    i32 2, label %329
  ]

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.z_stream_s, ptr %309, i64 0, i32 12
  %327 = load i64, ptr %326, align 8, !tbaa !66
  %328 = tail call i64 @adler32(i64 noundef %327, ptr noundef %317, i32 noundef %312) #10
  store i64 %328, ptr %326, align 8, !tbaa !66
  br label %333

329:                                              ; preds = %314
  %330 = getelementptr inbounds %struct.z_stream_s, ptr %309, i64 0, i32 12
  %331 = load i64, ptr %330, align 8, !tbaa !66
  %332 = tail call i64 @crc32(i64 noundef %331, ptr noundef %317, i32 noundef %312) #10
  store i64 %332, ptr %330, align 8, !tbaa !66
  br label %333

333:                                              ; preds = %314, %325, %329
  %334 = load ptr, ptr %309, align 8, !tbaa !68
  %335 = getelementptr inbounds i8, ptr %334, i64 %320
  store ptr %335, ptr %309, align 8, !tbaa !68
  %336 = getelementptr inbounds %struct.z_stream_s, ptr %309, i64 0, i32 2
  %337 = load i64, ptr %336, align 8, !tbaa !79
  %338 = add i64 %337, %320
  store i64 %338, ptr %336, align 8, !tbaa !79
  %339 = load i32, ptr %15, align 4, !tbaa !58
  %340 = add i32 %339, %312
  store i32 %340, ptr %15, align 4, !tbaa !58
  %341 = load i32, ptr %6, align 8, !tbaa !25
  %342 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %343 = load i32, ptr %342, align 4, !tbaa !61
  %344 = sub i32 %341, %343
  %345 = tail call i32 @llvm.umin.i32(i32 %312, i32 %344)
  %346 = add i32 %345, %343
  store i32 %346, ptr %342, align 4, !tbaa !61
  br label %347

347:                                              ; preds = %333, %306
  %348 = phi i32 [ %340, %333 ], [ %307, %306 ]
  %349 = load i64, ptr %258, align 8, !tbaa !34
  %350 = zext i32 %348 to i64
  %351 = icmp ult i64 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %347
  store i64 %350, ptr %258, align 8, !tbaa !34
  br label %353

353:                                              ; preds = %352, %347
  %354 = load i32, ptr %14, align 4, !tbaa !87
  %355 = add i32 %354, 42
  %356 = lshr i32 %355, 3
  %357 = load i64, ptr %3, align 8, !tbaa !37
  %358 = zext nneg i32 %356 to i64
  %359 = sub i64 %357, %358
  %360 = tail call i64 @llvm.umin.i64(i64 %359, i64 65535)
  %361 = trunc i64 %360 to i32
  %362 = load i32, ptr %6, align 8, !tbaa !25
  %363 = tail call i32 @llvm.umin.i32(i32 %362, i32 %361)
  %364 = load i64, ptr %16, align 8, !tbaa !59
  %365 = trunc i64 %364 to i32
  %366 = sub i32 %348, %365
  %367 = icmp ult i32 %366, %363
  br i1 %367, label %368, label %377

368:                                              ; preds = %353
  %369 = icmp ne i32 %348, %365
  %370 = or i1 %19, %369
  %371 = and i1 %264, %370
  br i1 %371, label %372, label %432

372:                                              ; preds = %368
  %373 = load ptr, ptr %0, align 8, !tbaa !18
  %374 = getelementptr inbounds %struct.z_stream_s, ptr %373, i64 0, i32 1
  %375 = load i32, ptr %374, align 8, !tbaa !67
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %432

377:                                              ; preds = %372, %353
  %378 = tail call i32 @llvm.umin.i32(i32 %366, i32 %361)
  br i1 %19, label %379, label %387

379:                                              ; preds = %377
  %380 = load ptr, ptr %0, align 8, !tbaa !18
  %381 = getelementptr inbounds %struct.z_stream_s, ptr %380, i64 0, i32 1
  %382 = load i32, ptr %381, align 8, !tbaa !67
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %379
  %385 = icmp ule i32 %366, %361
  %386 = zext i1 %385 to i32
  br label %387

387:                                              ; preds = %384, %379, %377
  %388 = phi i32 [ 0, %379 ], [ 0, %377 ], [ %386, %384 ]
  %389 = load ptr, ptr %22, align 8, !tbaa !31
  %390 = getelementptr inbounds i8, ptr %389, i64 %364
  %391 = zext nneg i32 %378 to i64
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %390, i64 noundef %391, i32 noundef %388) #10
  %392 = load i64, ptr %16, align 8, !tbaa !59
  %393 = add nsw i64 %392, %391
  store i64 %393, ptr %16, align 8, !tbaa !59
  %394 = load ptr, ptr %0, align 8, !tbaa !18
  %395 = getelementptr inbounds %struct.z_stream_s, ptr %394, i64 0, i32 7
  %396 = load ptr, ptr %395, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %396) #10
  %397 = getelementptr inbounds %struct.internal_state, ptr %396, i64 0, i32 5
  %398 = load i64, ptr %397, align 8, !tbaa !83
  %399 = getelementptr inbounds %struct.z_stream_s, ptr %394, i64 0, i32 4
  %400 = load i32, ptr %399, align 8, !tbaa !95
  %401 = zext i32 %400 to i64
  %402 = icmp ugt i64 %398, %401
  %403 = trunc i64 %398 to i32
  %404 = select i1 %402, i32 %400, i32 %403
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %427, label %406

406:                                              ; preds = %387
  %407 = getelementptr inbounds %struct.z_stream_s, ptr %394, i64 0, i32 3
  %408 = load ptr, ptr %407, align 8, !tbaa !94
  %409 = getelementptr inbounds %struct.internal_state, ptr %396, i64 0, i32 4
  %410 = load ptr, ptr %409, align 8, !tbaa !84
  %411 = zext i32 %404 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %408, ptr align 1 %410, i64 %411, i1 false)
  %412 = load ptr, ptr %407, align 8, !tbaa !94
  %413 = getelementptr inbounds i8, ptr %412, i64 %411
  store ptr %413, ptr %407, align 8, !tbaa !94
  %414 = load ptr, ptr %409, align 8, !tbaa !84
  %415 = getelementptr inbounds i8, ptr %414, i64 %411
  store ptr %415, ptr %409, align 8, !tbaa !84
  %416 = getelementptr inbounds %struct.z_stream_s, ptr %394, i64 0, i32 5
  %417 = load i64, ptr %416, align 8, !tbaa !96
  %418 = add i64 %417, %411
  store i64 %418, ptr %416, align 8, !tbaa !96
  %419 = load i32, ptr %399, align 8, !tbaa !95
  %420 = sub i32 %419, %404
  store i32 %420, ptr %399, align 8, !tbaa !95
  %421 = load i64, ptr %397, align 8, !tbaa !83
  %422 = sub i64 %421, %411
  store i64 %422, ptr %397, align 8, !tbaa !83
  %423 = icmp eq i64 %421, %411
  br i1 %423, label %424, label %427

424:                                              ; preds = %406
  %425 = getelementptr inbounds %struct.internal_state, ptr %396, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !36
  store ptr %426, ptr %409, align 8, !tbaa !84
  br label %427

427:                                              ; preds = %387, %406, %424
  %428 = icmp eq i32 %388, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %427, %262
  %430 = phi i32 [ 3, %262 ], [ 2, %427 ]
  %431 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 8, ptr %431, align 8, !tbaa !88
  br label %432

432:                                              ; preds = %429, %427, %368, %372, %270
  %433 = phi i32 [ 1, %270 ], [ 0, %427 ], [ 0, %368 ], [ 0, %372 ], [ %430, %429 ]
  ret i32 %433
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deflate_huff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %11

11:                                               ; preds = %102, %2
  %12 = load i32, ptr %3, align 4, !tbaa !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %15 = load i32, ptr %3, align 4, !tbaa !60
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %215, label %103

19:                                               ; preds = %14, %11
  store i32 0, ptr %4, align 8, !tbaa !63
  %20 = load ptr, ptr %5, align 8, !tbaa !31
  %21 = load i32, ptr %6, align 4, !tbaa !58
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !6
  %25 = load ptr, ptr %7, align 8, !tbaa !40
  %26 = load i32, ptr %8, align 4, !tbaa !119
  %27 = add i32 %26, 1
  store i32 %27, ptr %8, align 4, !tbaa !119
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !6
  %30 = load ptr, ptr %7, align 8, !tbaa !40
  %31 = load i32, ptr %8, align 4, !tbaa !119
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4, !tbaa !119
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !6
  %35 = load ptr, ptr %7, align 8, !tbaa !40
  %36 = load i32, ptr %8, align 4, !tbaa !119
  %37 = add i32 %36, 1
  store i32 %37, ptr %8, align 4, !tbaa !119
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i8, ptr %35, i64 %38
  store i8 %24, ptr %39, align 1, !tbaa !6
  %40 = zext i8 %24 to i64
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %40
  %42 = load i16, ptr %41, align 4, !tbaa !6
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4, !tbaa !6
  %44 = load i32, ptr %8, align 4, !tbaa !119
  %45 = load i32, ptr %9, align 8, !tbaa !41
  %46 = icmp eq i32 %44, %45
  %47 = load i32, ptr %3, align 4, !tbaa !60
  %48 = add i32 %47, -1
  store i32 %48, ptr %3, align 4, !tbaa !60
  %49 = load i32, ptr %6, align 4, !tbaa !58
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4, !tbaa !58
  br i1 %46, label %51, label %102

51:                                               ; preds = %19
  %52 = load i64, ptr %10, align 8, !tbaa !59
  %53 = icmp sgt i64 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !31
  %56 = and i64 %52, 4294967295
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %57, %54 ], [ null, %51 ]
  %60 = zext i32 %50 to i64
  %61 = sub nsw i64 %60, %52
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %59, i64 noundef %61, i32 noundef 0) #10
  %62 = load i32, ptr %6, align 4, !tbaa !58
  %63 = zext i32 %62 to i64
  store i64 %63, ptr %10, align 8, !tbaa !59
  %64 = load ptr, ptr %0, align 8, !tbaa !18
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %64, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %66) #10
  %67 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 5
  %68 = load i64, ptr %67, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %64, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !95
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %68, %71
  %73 = trunc i64 %68 to i32
  %74 = select i1 %72, i32 %70, i32 %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %58
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %64, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !94
  %79 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !84
  %81 = zext i32 %74 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %80, i64 %81, i1 false)
  %82 = load ptr, ptr %77, align 8, !tbaa !94
  %83 = getelementptr inbounds i8, ptr %82, i64 %81
  store ptr %83, ptr %77, align 8, !tbaa !94
  %84 = load ptr, ptr %79, align 8, !tbaa !84
  %85 = getelementptr inbounds i8, ptr %84, i64 %81
  store ptr %85, ptr %79, align 8, !tbaa !84
  %86 = getelementptr inbounds %struct.z_stream_s, ptr %64, i64 0, i32 5
  %87 = load i64, ptr %86, align 8, !tbaa !96
  %88 = add i64 %87, %81
  store i64 %88, ptr %86, align 8, !tbaa !96
  %89 = load i32, ptr %69, align 8, !tbaa !95
  %90 = sub i32 %89, %74
  store i32 %90, ptr %69, align 8, !tbaa !95
  %91 = load i64, ptr %67, align 8, !tbaa !83
  %92 = sub i64 %91, %81
  store i64 %92, ptr %67, align 8, !tbaa !83
  %93 = icmp eq i64 %91, %81
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.internal_state, ptr %66, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !36
  store ptr %96, ptr %79, align 8, !tbaa !84
  br label %97

97:                                               ; preds = %58, %76, %94
  %98 = load ptr, ptr %0, align 8, !tbaa !18
  %99 = getelementptr inbounds %struct.z_stream_s, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !95
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %215, label %102

102:                                              ; preds = %97, %19
  br label %11

103:                                              ; preds = %17
  %104 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %104, align 4, !tbaa !61
  %105 = icmp eq i32 %1, 4
  br i1 %105, label %106, label %159

106:                                              ; preds = %103
  %107 = load i64, ptr %10, align 8, !tbaa !59
  %108 = icmp sgt i64 %107, -1
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load ptr, ptr %5, align 8, !tbaa !31
  %111 = and i64 %107, 4294967295
  %112 = getelementptr inbounds i8, ptr %110, i64 %111
  br label %113

113:                                              ; preds = %106, %109
  %114 = phi ptr [ %112, %109 ], [ null, %106 ]
  %115 = load i32, ptr %6, align 4, !tbaa !58
  %116 = zext i32 %115 to i64
  %117 = sub nsw i64 %116, %107
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %114, i64 noundef %117, i32 noundef 1) #10
  %118 = load i32, ptr %6, align 4, !tbaa !58
  %119 = zext i32 %118 to i64
  store i64 %119, ptr %10, align 8, !tbaa !59
  %120 = load ptr, ptr %0, align 8, !tbaa !18
  %121 = getelementptr inbounds %struct.z_stream_s, ptr %120, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %122) #10
  %123 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 5
  %124 = load i64, ptr %123, align 8, !tbaa !83
  %125 = getelementptr inbounds %struct.z_stream_s, ptr %120, i64 0, i32 4
  %126 = load i32, ptr %125, align 8, !tbaa !95
  %127 = zext i32 %126 to i64
  %128 = icmp ugt i64 %124, %127
  %129 = trunc i64 %124 to i32
  %130 = select i1 %128, i32 %126, i32 %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %113
  %133 = getelementptr inbounds %struct.z_stream_s, ptr %120, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !94
  %135 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !84
  %137 = zext i32 %130 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %134, ptr align 1 %136, i64 %137, i1 false)
  %138 = load ptr, ptr %133, align 8, !tbaa !94
  %139 = getelementptr inbounds i8, ptr %138, i64 %137
  store ptr %139, ptr %133, align 8, !tbaa !94
  %140 = load ptr, ptr %135, align 8, !tbaa !84
  %141 = getelementptr inbounds i8, ptr %140, i64 %137
  store ptr %141, ptr %135, align 8, !tbaa !84
  %142 = getelementptr inbounds %struct.z_stream_s, ptr %120, i64 0, i32 5
  %143 = load i64, ptr %142, align 8, !tbaa !96
  %144 = add i64 %143, %137
  store i64 %144, ptr %142, align 8, !tbaa !96
  %145 = load i32, ptr %125, align 8, !tbaa !95
  %146 = sub i32 %145, %130
  store i32 %146, ptr %125, align 8, !tbaa !95
  %147 = load i64, ptr %123, align 8, !tbaa !83
  %148 = sub i64 %147, %137
  store i64 %148, ptr %123, align 8, !tbaa !83
  %149 = icmp eq i64 %147, %137
  br i1 %149, label %150, label %153

150:                                              ; preds = %132
  %151 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !36
  store ptr %152, ptr %135, align 8, !tbaa !84
  br label %153

153:                                              ; preds = %113, %132, %150
  %154 = load ptr, ptr %0, align 8, !tbaa !18
  %155 = getelementptr inbounds %struct.z_stream_s, ptr %154, i64 0, i32 4
  %156 = load i32, ptr %155, align 8, !tbaa !95
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, i32 2, i32 3
  br label %215

159:                                              ; preds = %103
  %160 = load i32, ptr %8, align 4, !tbaa !119
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %214, label %162

162:                                              ; preds = %159
  %163 = load i64, ptr %10, align 8, !tbaa !59
  %164 = icmp sgt i64 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load ptr, ptr %5, align 8, !tbaa !31
  %167 = and i64 %163, 4294967295
  %168 = getelementptr inbounds i8, ptr %166, i64 %167
  br label %169

169:                                              ; preds = %162, %165
  %170 = phi ptr [ %168, %165 ], [ null, %162 ]
  %171 = load i32, ptr %6, align 4, !tbaa !58
  %172 = zext i32 %171 to i64
  %173 = sub nsw i64 %172, %163
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %170, i64 noundef %173, i32 noundef 0) #10
  %174 = load i32, ptr %6, align 4, !tbaa !58
  %175 = zext i32 %174 to i64
  store i64 %175, ptr %10, align 8, !tbaa !59
  %176 = load ptr, ptr %0, align 8, !tbaa !18
  %177 = getelementptr inbounds %struct.z_stream_s, ptr %176, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %178) #10
  %179 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 5
  %180 = load i64, ptr %179, align 8, !tbaa !83
  %181 = getelementptr inbounds %struct.z_stream_s, ptr %176, i64 0, i32 4
  %182 = load i32, ptr %181, align 8, !tbaa !95
  %183 = zext i32 %182 to i64
  %184 = icmp ugt i64 %180, %183
  %185 = trunc i64 %180 to i32
  %186 = select i1 %184, i32 %182, i32 %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %209, label %188

188:                                              ; preds = %169
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %176, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !94
  %191 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !84
  %193 = zext i32 %186 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %190, ptr align 1 %192, i64 %193, i1 false)
  %194 = load ptr, ptr %189, align 8, !tbaa !94
  %195 = getelementptr inbounds i8, ptr %194, i64 %193
  store ptr %195, ptr %189, align 8, !tbaa !94
  %196 = load ptr, ptr %191, align 8, !tbaa !84
  %197 = getelementptr inbounds i8, ptr %196, i64 %193
  store ptr %197, ptr %191, align 8, !tbaa !84
  %198 = getelementptr inbounds %struct.z_stream_s, ptr %176, i64 0, i32 5
  %199 = load i64, ptr %198, align 8, !tbaa !96
  %200 = add i64 %199, %193
  store i64 %200, ptr %198, align 8, !tbaa !96
  %201 = load i32, ptr %181, align 8, !tbaa !95
  %202 = sub i32 %201, %186
  store i32 %202, ptr %181, align 8, !tbaa !95
  %203 = load i64, ptr %179, align 8, !tbaa !83
  %204 = sub i64 %203, %193
  store i64 %204, ptr %179, align 8, !tbaa !83
  %205 = icmp eq i64 %203, %193
  br i1 %205, label %206, label %209

206:                                              ; preds = %188
  %207 = getelementptr inbounds %struct.internal_state, ptr %178, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !36
  store ptr %208, ptr %191, align 8, !tbaa !84
  br label %209

209:                                              ; preds = %169, %188, %206
  %210 = load ptr, ptr %0, align 8, !tbaa !18
  %211 = getelementptr inbounds %struct.z_stream_s, ptr %210, i64 0, i32 4
  %212 = load i32, ptr %211, align 8, !tbaa !95
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %209, %159
  br label %215

215:                                              ; preds = %97, %209, %153, %17, %214
  %216 = phi i32 [ 1, %214 ], [ 0, %17 ], [ %158, %153 ], [ 0, %209 ], [ 0, %97 ]
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deflate_rle(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %12

12:                                               ; preds = %149, %2
  %13 = load i32, ptr %3, align 4, !tbaa !60
  %14 = icmp ult i32 %13, 259
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  store i32 0, ptr %4, align 8, !tbaa !63
  %16 = load i32, ptr %6, align 4, !tbaa !58
  br label %26

17:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %18 = load i32, ptr %3, align 4, !tbaa !60
  %19 = icmp ult i32 %18, 259
  %20 = and i1 %5, %19
  br i1 %20, label %349, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %237, label %23

23:                                               ; preds = %21
  store i32 0, ptr %4, align 8, !tbaa !63
  %24 = icmp ugt i32 %18, 2
  %25 = load i32, ptr %6, align 4, !tbaa !58
  br i1 %24, label %26, label %150

26:                                               ; preds = %15, %23
  %27 = phi i32 [ %16, %15 ], [ %25, %23 ]
  %28 = phi i32 [ %13, %15 ], [ %18, %23 ]
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %150, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !31
  %32 = zext i32 %27 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  %35 = load i8, ptr %34, align 1, !tbaa !6
  %36 = load i8, ptr %33, align 1, !tbaa !6
  %37 = icmp eq i8 %35, %36
  br i1 %37, label %38, label %150

38:                                               ; preds = %30
  %39 = getelementptr inbounds i8, ptr %33, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !6
  %41 = icmp eq i8 %35, %40
  br i1 %41, label %42, label %150

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %33, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !6
  %45 = icmp eq i8 %35, %44
  br i1 %45, label %46, label %150

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %33, i64 258
  br label %48

48:                                               ; preds = %78, %46
  %49 = phi i64 [ 2, %46 ], [ %79, %78 ]
  %50 = getelementptr inbounds i8, ptr %33, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !6
  %53 = icmp eq i8 %35, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %48
  %55 = getelementptr inbounds i8, ptr %50, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !6
  %57 = icmp eq i8 %35, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %50, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !6
  %61 = icmp eq i8 %35, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %50, i64 4
  %64 = load i8, ptr %63, align 1, !tbaa !6
  %65 = icmp eq i8 %35, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %50, i64 5
  %68 = load i8, ptr %67, align 1, !tbaa !6
  %69 = icmp eq i8 %35, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %50, i64 6
  %72 = load i8, ptr %71, align 1, !tbaa !6
  %73 = icmp eq i8 %35, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %50, i64 7
  %76 = load i8, ptr %75, align 1, !tbaa !6
  %77 = icmp eq i8 %35, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = add nuw nsw i64 %49, 8
  %80 = getelementptr inbounds i8, ptr %33, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !6
  %82 = icmp eq i8 %35, %81
  %83 = icmp ult i64 %49, 250
  %84 = and i1 %83, %82
  br i1 %84, label %48, label %85, !llvm.loop !120

85:                                               ; preds = %78
  %86 = getelementptr inbounds i8, ptr %33, i64 %79
  br label %101

87:                                               ; preds = %74
  %88 = getelementptr inbounds i8, ptr %50, i64 7
  br label %101

89:                                               ; preds = %70
  %90 = getelementptr inbounds i8, ptr %50, i64 6
  br label %101

91:                                               ; preds = %66
  %92 = getelementptr inbounds i8, ptr %50, i64 5
  br label %101

93:                                               ; preds = %62
  %94 = getelementptr inbounds i8, ptr %50, i64 4
  br label %101

95:                                               ; preds = %58
  %96 = getelementptr inbounds i8, ptr %50, i64 3
  br label %101

97:                                               ; preds = %54
  %98 = getelementptr inbounds i8, ptr %50, i64 2
  br label %101

99:                                               ; preds = %48
  %100 = getelementptr inbounds i8, ptr %50, i64 1
  br label %101

101:                                              ; preds = %99, %97, %95, %93, %91, %89, %87, %85
  %102 = phi ptr [ %86, %85 ], [ %88, %87 ], [ %90, %89 ], [ %92, %91 ], [ %94, %93 ], [ %96, %95 ], [ %98, %97 ], [ %100, %99 ]
  %103 = ptrtoint ptr %47 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %104, %103
  %106 = trunc i64 %105 to i32
  %107 = add i32 %106, 258
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 %28)
  store i32 %108, ptr %4, align 8
  %109 = icmp ugt i32 %108, 2
  %110 = load i32, ptr %9, align 4, !tbaa !119
  br i1 %109, label %111, label %153

111:                                              ; preds = %101
  %112 = trunc i32 %108 to i8
  %113 = add i8 %112, -3
  %114 = load ptr, ptr %8, align 8, !tbaa !40
  %115 = add i32 %110, 1
  store i32 %115, ptr %9, align 4, !tbaa !119
  %116 = zext i32 %110 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  store i8 1, ptr %117, align 1, !tbaa !6
  %118 = load ptr, ptr %8, align 8, !tbaa !40
  %119 = load i32, ptr %9, align 4, !tbaa !119
  %120 = add i32 %119, 1
  store i32 %120, ptr %9, align 4, !tbaa !119
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i8, ptr %118, i64 %121
  store i8 0, ptr %122, align 1, !tbaa !6
  %123 = load ptr, ptr %8, align 8, !tbaa !40
  %124 = load i32, ptr %9, align 4, !tbaa !119
  %125 = add i32 %124, 1
  store i32 %125, ptr %9, align 4, !tbaa !119
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i8, ptr %123, i64 %126
  store i8 %113, ptr %127, align 1, !tbaa !6
  %128 = zext i8 %113 to i64
  %129 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !6
  %131 = zext i8 %130 to i64
  %132 = add nuw nsw i64 %131, 257
  %133 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %132
  %134 = load i16, ptr %133, align 4, !tbaa !6
  %135 = add i16 %134, 1
  store i16 %135, ptr %133, align 4, !tbaa !6
  %136 = load i8, ptr @_dist_code, align 1, !tbaa !6
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %137
  %139 = load i16, ptr %138, align 4, !tbaa !6
  %140 = add i16 %139, 1
  store i16 %140, ptr %138, align 4, !tbaa !6
  %141 = load i32, ptr %9, align 4, !tbaa !119
  %142 = load i32, ptr %10, align 8, !tbaa !41
  %143 = icmp eq i32 %141, %142
  %144 = load i32, ptr %4, align 8, !tbaa !63
  %145 = load i32, ptr %3, align 4, !tbaa !60
  %146 = sub i32 %145, %144
  store i32 %146, ptr %3, align 4, !tbaa !60
  %147 = load i32, ptr %6, align 4, !tbaa !58
  %148 = add i32 %147, %144
  store i32 %148, ptr %6, align 4, !tbaa !58
  store i32 0, ptr %4, align 8, !tbaa !63
  br i1 %143, label %185, label %149

149:                                              ; preds = %111, %232, %153
  br label %12

150:                                              ; preds = %30, %38, %42, %26, %23
  %151 = phi i32 [ %25, %23 ], [ %27, %26 ], [ %27, %42 ], [ %27, %38 ], [ %27, %30 ]
  %152 = load i32, ptr %9, align 4, !tbaa !119
  br label %153

153:                                              ; preds = %150, %101
  %154 = phi i32 [ %110, %101 ], [ %152, %150 ]
  %155 = phi i32 [ %27, %101 ], [ %151, %150 ]
  %156 = load ptr, ptr %7, align 8, !tbaa !31
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i8, ptr %156, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !6
  %160 = load ptr, ptr %8, align 8, !tbaa !40
  %161 = add i32 %154, 1
  store i32 %161, ptr %9, align 4, !tbaa !119
  %162 = zext i32 %154 to i64
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  store i8 0, ptr %163, align 1, !tbaa !6
  %164 = load ptr, ptr %8, align 8, !tbaa !40
  %165 = load i32, ptr %9, align 4, !tbaa !119
  %166 = add i32 %165, 1
  store i32 %166, ptr %9, align 4, !tbaa !119
  %167 = zext i32 %165 to i64
  %168 = getelementptr inbounds i8, ptr %164, i64 %167
  store i8 0, ptr %168, align 1, !tbaa !6
  %169 = load ptr, ptr %8, align 8, !tbaa !40
  %170 = load i32, ptr %9, align 4, !tbaa !119
  %171 = add i32 %170, 1
  store i32 %171, ptr %9, align 4, !tbaa !119
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  store i8 %159, ptr %173, align 1, !tbaa !6
  %174 = zext i8 %159 to i64
  %175 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %174
  %176 = load i16, ptr %175, align 4, !tbaa !6
  %177 = add i16 %176, 1
  store i16 %177, ptr %175, align 4, !tbaa !6
  %178 = load i32, ptr %9, align 4, !tbaa !119
  %179 = load i32, ptr %10, align 8, !tbaa !41
  %180 = icmp eq i32 %178, %179
  %181 = load i32, ptr %3, align 4, !tbaa !60
  %182 = add i32 %181, -1
  store i32 %182, ptr %3, align 4, !tbaa !60
  %183 = load i32, ptr %6, align 4, !tbaa !58
  %184 = add i32 %183, 1
  store i32 %184, ptr %6, align 4, !tbaa !58
  br i1 %180, label %185, label %149

185:                                              ; preds = %111, %153
  %186 = phi i32 [ %148, %111 ], [ %184, %153 ]
  %187 = load i64, ptr %11, align 8, !tbaa !59
  %188 = icmp sgt i64 %187, -1
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load ptr, ptr %7, align 8, !tbaa !31
  %191 = and i64 %187, 4294967295
  %192 = getelementptr inbounds i8, ptr %190, i64 %191
  br label %193

193:                                              ; preds = %185, %189
  %194 = phi ptr [ %192, %189 ], [ null, %185 ]
  %195 = zext i32 %186 to i64
  %196 = sub nsw i64 %195, %187
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %194, i64 noundef %196, i32 noundef 0) #10
  %197 = load i32, ptr %6, align 4, !tbaa !58
  %198 = zext i32 %197 to i64
  store i64 %198, ptr %11, align 8, !tbaa !59
  %199 = load ptr, ptr %0, align 8, !tbaa !18
  %200 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %201) #10
  %202 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 5
  %203 = load i64, ptr %202, align 8, !tbaa !83
  %204 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 4
  %205 = load i32, ptr %204, align 8, !tbaa !95
  %206 = zext i32 %205 to i64
  %207 = icmp ugt i64 %203, %206
  %208 = trunc i64 %203 to i32
  %209 = select i1 %207, i32 %205, i32 %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %232, label %211

211:                                              ; preds = %193
  %212 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !94
  %214 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !84
  %216 = zext i32 %209 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %215, i64 %216, i1 false)
  %217 = load ptr, ptr %212, align 8, !tbaa !94
  %218 = getelementptr inbounds i8, ptr %217, i64 %216
  store ptr %218, ptr %212, align 8, !tbaa !94
  %219 = load ptr, ptr %214, align 8, !tbaa !84
  %220 = getelementptr inbounds i8, ptr %219, i64 %216
  store ptr %220, ptr %214, align 8, !tbaa !84
  %221 = getelementptr inbounds %struct.z_stream_s, ptr %199, i64 0, i32 5
  %222 = load i64, ptr %221, align 8, !tbaa !96
  %223 = add i64 %222, %216
  store i64 %223, ptr %221, align 8, !tbaa !96
  %224 = load i32, ptr %204, align 8, !tbaa !95
  %225 = sub i32 %224, %209
  store i32 %225, ptr %204, align 8, !tbaa !95
  %226 = load i64, ptr %202, align 8, !tbaa !83
  %227 = sub i64 %226, %216
  store i64 %227, ptr %202, align 8, !tbaa !83
  %228 = icmp eq i64 %226, %216
  br i1 %228, label %229, label %232

229:                                              ; preds = %211
  %230 = getelementptr inbounds %struct.internal_state, ptr %201, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !36
  store ptr %231, ptr %214, align 8, !tbaa !84
  br label %232

232:                                              ; preds = %193, %211, %229
  %233 = load ptr, ptr %0, align 8, !tbaa !18
  %234 = getelementptr inbounds %struct.z_stream_s, ptr %233, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !95
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %349, label %149

237:                                              ; preds = %21
  %238 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %238, align 4, !tbaa !61
  %239 = icmp eq i32 %1, 4
  br i1 %239, label %240, label %293

240:                                              ; preds = %237
  %241 = load i64, ptr %11, align 8, !tbaa !59
  %242 = icmp sgt i64 %241, -1
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load ptr, ptr %7, align 8, !tbaa !31
  %245 = and i64 %241, 4294967295
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  br label %247

247:                                              ; preds = %240, %243
  %248 = phi ptr [ %246, %243 ], [ null, %240 ]
  %249 = load i32, ptr %6, align 4, !tbaa !58
  %250 = zext i32 %249 to i64
  %251 = sub nsw i64 %250, %241
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %248, i64 noundef %251, i32 noundef 1) #10
  %252 = load i32, ptr %6, align 4, !tbaa !58
  %253 = zext i32 %252 to i64
  store i64 %253, ptr %11, align 8, !tbaa !59
  %254 = load ptr, ptr %0, align 8, !tbaa !18
  %255 = getelementptr inbounds %struct.z_stream_s, ptr %254, i64 0, i32 7
  %256 = load ptr, ptr %255, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %256) #10
  %257 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 5
  %258 = load i64, ptr %257, align 8, !tbaa !83
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %254, i64 0, i32 4
  %260 = load i32, ptr %259, align 8, !tbaa !95
  %261 = zext i32 %260 to i64
  %262 = icmp ugt i64 %258, %261
  %263 = trunc i64 %258 to i32
  %264 = select i1 %262, i32 %260, i32 %263
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %287, label %266

266:                                              ; preds = %247
  %267 = getelementptr inbounds %struct.z_stream_s, ptr %254, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !94
  %269 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !84
  %271 = zext i32 %264 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %268, ptr align 1 %270, i64 %271, i1 false)
  %272 = load ptr, ptr %267, align 8, !tbaa !94
  %273 = getelementptr inbounds i8, ptr %272, i64 %271
  store ptr %273, ptr %267, align 8, !tbaa !94
  %274 = load ptr, ptr %269, align 8, !tbaa !84
  %275 = getelementptr inbounds i8, ptr %274, i64 %271
  store ptr %275, ptr %269, align 8, !tbaa !84
  %276 = getelementptr inbounds %struct.z_stream_s, ptr %254, i64 0, i32 5
  %277 = load i64, ptr %276, align 8, !tbaa !96
  %278 = add i64 %277, %271
  store i64 %278, ptr %276, align 8, !tbaa !96
  %279 = load i32, ptr %259, align 8, !tbaa !95
  %280 = sub i32 %279, %264
  store i32 %280, ptr %259, align 8, !tbaa !95
  %281 = load i64, ptr %257, align 8, !tbaa !83
  %282 = sub i64 %281, %271
  store i64 %282, ptr %257, align 8, !tbaa !83
  %283 = icmp eq i64 %281, %271
  br i1 %283, label %284, label %287

284:                                              ; preds = %266
  %285 = getelementptr inbounds %struct.internal_state, ptr %256, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !36
  store ptr %286, ptr %269, align 8, !tbaa !84
  br label %287

287:                                              ; preds = %247, %266, %284
  %288 = load ptr, ptr %0, align 8, !tbaa !18
  %289 = getelementptr inbounds %struct.z_stream_s, ptr %288, i64 0, i32 4
  %290 = load i32, ptr %289, align 8, !tbaa !95
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %291, i32 2, i32 3
  br label %349

293:                                              ; preds = %237
  %294 = load i32, ptr %9, align 4, !tbaa !119
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %348, label %296

296:                                              ; preds = %293
  %297 = load i64, ptr %11, align 8, !tbaa !59
  %298 = icmp sgt i64 %297, -1
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load ptr, ptr %7, align 8, !tbaa !31
  %301 = and i64 %297, 4294967295
  %302 = getelementptr inbounds i8, ptr %300, i64 %301
  br label %303

303:                                              ; preds = %296, %299
  %304 = phi ptr [ %302, %299 ], [ null, %296 ]
  %305 = load i32, ptr %6, align 4, !tbaa !58
  %306 = zext i32 %305 to i64
  %307 = sub nsw i64 %306, %297
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %304, i64 noundef %307, i32 noundef 0) #10
  %308 = load i32, ptr %6, align 4, !tbaa !58
  %309 = zext i32 %308 to i64
  store i64 %309, ptr %11, align 8, !tbaa !59
  %310 = load ptr, ptr %0, align 8, !tbaa !18
  %311 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 7
  %312 = load ptr, ptr %311, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %312) #10
  %313 = getelementptr inbounds %struct.internal_state, ptr %312, i64 0, i32 5
  %314 = load i64, ptr %313, align 8, !tbaa !83
  %315 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !95
  %317 = zext i32 %316 to i64
  %318 = icmp ugt i64 %314, %317
  %319 = trunc i64 %314 to i32
  %320 = select i1 %318, i32 %316, i32 %319
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %343, label %322

322:                                              ; preds = %303
  %323 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !94
  %325 = getelementptr inbounds %struct.internal_state, ptr %312, i64 0, i32 4
  %326 = load ptr, ptr %325, align 8, !tbaa !84
  %327 = zext i32 %320 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr align 1 %326, i64 %327, i1 false)
  %328 = load ptr, ptr %323, align 8, !tbaa !94
  %329 = getelementptr inbounds i8, ptr %328, i64 %327
  store ptr %329, ptr %323, align 8, !tbaa !94
  %330 = load ptr, ptr %325, align 8, !tbaa !84
  %331 = getelementptr inbounds i8, ptr %330, i64 %327
  store ptr %331, ptr %325, align 8, !tbaa !84
  %332 = getelementptr inbounds %struct.z_stream_s, ptr %310, i64 0, i32 5
  %333 = load i64, ptr %332, align 8, !tbaa !96
  %334 = add i64 %333, %327
  store i64 %334, ptr %332, align 8, !tbaa !96
  %335 = load i32, ptr %315, align 8, !tbaa !95
  %336 = sub i32 %335, %320
  store i32 %336, ptr %315, align 8, !tbaa !95
  %337 = load i64, ptr %313, align 8, !tbaa !83
  %338 = sub i64 %337, %327
  store i64 %338, ptr %313, align 8, !tbaa !83
  %339 = icmp eq i64 %337, %327
  br i1 %339, label %340, label %343

340:                                              ; preds = %322
  %341 = getelementptr inbounds %struct.internal_state, ptr %312, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !36
  store ptr %342, ptr %325, align 8, !tbaa !84
  br label %343

343:                                              ; preds = %303, %322, %340
  %344 = load ptr, ptr %0, align 8, !tbaa !18
  %345 = getelementptr inbounds %struct.z_stream_s, ptr %344, i64 0, i32 4
  %346 = load i32, ptr %345, align 8, !tbaa !95
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343, %293
  br label %349

349:                                              ; preds = %232, %17, %343, %287, %348
  %350 = phi i32 [ 1, %348 ], [ %292, %287 ], [ 0, %343 ], [ 0, %17 ], [ 0, %232 ]
  ret i32 %350
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %127, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %127, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %127, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !18
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %127

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !22
  switch i32 %21, label %127 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %0, null
  br i1 %23, label %127, label %24

24:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = tail call ptr %26(ptr noundef %28, i32 noundef 1, i32 noundef 5968) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %127, label %31

31:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, i8 0, i64 5968, i1 false)
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %32, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %29, ptr noundef nonnull align 8 dereferenceable(5968) %14, i64 5968, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !18
  %33 = load ptr, ptr %25, align 8, !tbaa !14
  %34 = load ptr, ptr %27, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !25
  %37 = tail call ptr %33(ptr noundef %34, i32 noundef %36, i32 noundef 2) #10
  %38 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 14
  store ptr %37, ptr %38, align 8, !tbaa !31
  %39 = load ptr, ptr %25, align 8, !tbaa !14
  %40 = load ptr, ptr %27, align 8, !tbaa !15
  %41 = load i32, ptr %35, align 8, !tbaa !25
  %42 = tail call ptr %39(ptr noundef %40, i32 noundef %41, i32 noundef 2) #10
  %43 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 16
  store ptr %42, ptr %43, align 8, !tbaa !32
  %44 = load ptr, ptr %25, align 8, !tbaa !14
  %45 = load ptr, ptr %27, align 8, !tbaa !15
  %46 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 19
  %47 = load i32, ptr %46, align 4, !tbaa !28
  %48 = tail call ptr %44(ptr noundef %45, i32 noundef %47, i32 noundef 2) #10
  %49 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 17
  store ptr %48, ptr %49, align 8, !tbaa !33
  %50 = load ptr, ptr %25, align 8, !tbaa !14
  %51 = load ptr, ptr %27, align 8, !tbaa !15
  %52 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 49
  %53 = load i32, ptr %52, align 8, !tbaa !35
  %54 = tail call ptr %50(ptr noundef %51, i32 noundef %53, i32 noundef 4) #10
  %55 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !36
  %56 = load ptr, ptr %38, align 8, !tbaa !31
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %31
  %59 = load ptr, ptr %43, align 8, !tbaa !32
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %49, align 8, !tbaa !33
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %54, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %58, %31
  %67 = tail call i32 @deflateEnd(ptr noundef nonnull %0), !range !39
  br label %127

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 14
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  %71 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 59
  %72 = load i64, ptr %71, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %70, i64 %72, i1 false)
  %73 = load ptr, ptr %43, align 8, !tbaa !32
  %74 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 16
  %75 = load ptr, ptr %74, align 8, !tbaa !32
  %76 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 60
  %77 = load i32, ptr %76, align 8, !tbaa !48
  %78 = icmp eq i32 %77, 0
  %79 = load i32, ptr %35, align 8, !tbaa !25
  br i1 %78, label %80, label %87

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 27
  %82 = load i32, ptr %81, align 4, !tbaa !58
  %83 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 55
  %84 = load i32, ptr %83, align 4, !tbaa !61
  %85 = sub i32 %82, %84
  %86 = icmp ugt i32 %85, %79
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %68
  br label %88

88:                                               ; preds = %80, %87
  %89 = phi i32 [ %79, %87 ], [ %85, %80 ]
  %90 = zext i32 %89 to i64
  %91 = shl nuw nsw i64 %90, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %75, i64 %91, i1 false)
  %92 = load ptr, ptr %49, align 8, !tbaa !33
  %93 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = load i32, ptr %46, align 4, !tbaa !28
  %96 = zext i32 %95 to i64
  %97 = shl nuw nsw i64 %96, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr align 2 %94, i64 %97, i1 false)
  %98 = load ptr, ptr %55, align 8, !tbaa !36
  %99 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !84
  %101 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !36
  %103 = ptrtoint ptr %100 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds i8, ptr %98, i64 %105
  %107 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !84
  %108 = load ptr, ptr %99, align 8, !tbaa !84
  %109 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 5
  %110 = load i64, ptr %109, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %106, ptr align 1 %108, i64 %110, i1 false)
  %111 = load ptr, ptr %55, align 8, !tbaa !36
  %112 = load i32, ptr %52, align 8, !tbaa !35
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 48
  store ptr %114, ptr %115, align 8, !tbaa !40
  %116 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 48
  %117 = load ptr, ptr %116, align 8, !tbaa !40
  %118 = getelementptr inbounds %struct.internal_state, ptr %14, i64 0, i32 50
  %119 = load i32, ptr %118, align 4, !tbaa !119
  %120 = zext i32 %119 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %114, ptr align 1 %117, i64 %120, i1 false)
  %121 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 37
  %122 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 40
  store ptr %121, ptr %122, align 8, !tbaa !121
  %123 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 38
  %124 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 41
  store ptr %123, ptr %124, align 8, !tbaa !122
  %125 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 39
  %126 = getelementptr inbounds %struct.internal_state, ptr %29, i64 0, i32 42
  store ptr %125, ptr %126, align 8, !tbaa !123
  br label %127

127:                                              ; preds = %12, %16, %19, %2, %4, %8, %24, %22, %88, %66
  %128 = phi i32 [ -4, %66 ], [ 0, %88 ], [ -2, %22 ], [ -4, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %19 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %21

21:                                               ; preds = %177, %2
  %22 = load i32, ptr %3, align 4, !tbaa !60
  %23 = icmp ult i32 %22, 262
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %25 = load i32, ptr %3, align 4, !tbaa !60
  %26 = icmp ult i32 %25, 262
  %27 = and i1 %4, %26
  br i1 %27, label %374, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %262, label %30

30:                                               ; preds = %28
  %31 = icmp ugt i32 %25, 2
  br i1 %31, label %32, label %65

32:                                               ; preds = %21, %30
  %33 = load i32, ptr %5, align 8, !tbaa !65
  %34 = load i32, ptr %6, align 8, !tbaa !30
  %35 = shl i32 %33, %34
  %36 = load ptr, ptr %7, align 8, !tbaa !31
  %37 = load i32, ptr %8, align 4, !tbaa !58
  %38 = add i32 %37, 2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !6
  %42 = zext i8 %41 to i32
  %43 = xor i32 %35, %42
  %44 = load i32, ptr %9, align 4, !tbaa !29
  %45 = and i32 %43, %44
  store i32 %45, ptr %5, align 8, !tbaa !65
  %46 = load ptr, ptr %10, align 8, !tbaa !33
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !47
  %50 = load ptr, ptr %11, align 8, !tbaa !32
  %51 = load i32, ptr %12, align 8, !tbaa !26
  %52 = and i32 %51, %37
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, ptr %50, i64 %53
  store i16 %49, ptr %54, align 2, !tbaa !47
  %55 = zext i16 %49 to i32
  %56 = trunc i32 %37 to i16
  store i16 %56, ptr %48, align 2, !tbaa !47
  %57 = icmp eq i16 %49, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %32
  %59 = sub i32 %37, %55
  %60 = load i32, ptr %13, align 8, !tbaa !25
  %61 = add i32 %60, -262
  %62 = icmp ugt i32 %59, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %55)
  store i32 %64, ptr %14, align 8, !tbaa !63
  br label %67

65:                                               ; preds = %32, %58, %30
  %66 = load i32, ptr %14, align 8, !tbaa !63
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %66, %65 ], [ %64, %63 ]
  %69 = icmp ugt i32 %68, 2
  br i1 %69, label %70, label %178

70:                                               ; preds = %67
  %71 = trunc i32 %68 to i8
  %72 = add i8 %71, -3
  %73 = load i32, ptr %8, align 4, !tbaa !58
  %74 = load i32, ptr %18, align 8, !tbaa !124
  %75 = sub i32 %73, %74
  %76 = trunc i32 %75 to i16
  %77 = trunc i32 %75 to i8
  %78 = load ptr, ptr %15, align 8, !tbaa !40
  %79 = load i32, ptr %16, align 4, !tbaa !119
  %80 = add i32 %79, 1
  store i32 %80, ptr %16, align 4, !tbaa !119
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  store i8 %77, ptr %82, align 1, !tbaa !6
  %83 = lshr i32 %75, 8
  %84 = trunc i32 %83 to i8
  %85 = load ptr, ptr %15, align 8, !tbaa !40
  %86 = load i32, ptr %16, align 4, !tbaa !119
  %87 = add i32 %86, 1
  store i32 %87, ptr %16, align 4, !tbaa !119
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i8, ptr %85, i64 %88
  store i8 %84, ptr %89, align 1, !tbaa !6
  %90 = load ptr, ptr %15, align 8, !tbaa !40
  %91 = load i32, ptr %16, align 4, !tbaa !119
  %92 = add i32 %91, 1
  store i32 %92, ptr %16, align 4, !tbaa !119
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  store i8 %72, ptr %94, align 1, !tbaa !6
  %95 = add i16 %76, -1
  %96 = zext i8 %72 to i64
  %97 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !6
  %99 = zext i8 %98 to i64
  %100 = add nuw nsw i64 %99, 257
  %101 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %100
  %102 = load i16, ptr %101, align 4, !tbaa !6
  %103 = add i16 %102, 1
  store i16 %103, ptr %101, align 4, !tbaa !6
  %104 = icmp ult i16 %95, 256
  %105 = lshr i16 %95, 7
  %106 = add nuw nsw i16 %105, 256
  %107 = select i1 %104, i16 %95, i16 %106
  %108 = zext i16 %107 to i64
  %109 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %111
  %113 = load i16, ptr %112, align 4, !tbaa !6
  %114 = add i16 %113, 1
  store i16 %114, ptr %112, align 4, !tbaa !6
  %115 = load i32, ptr %16, align 4, !tbaa !119
  %116 = load i32, ptr %17, align 8, !tbaa !41
  %117 = icmp eq i32 %115, %116
  %118 = load i32, ptr %14, align 8, !tbaa !63
  %119 = load i32, ptr %3, align 4, !tbaa !60
  %120 = sub i32 %119, %118
  store i32 %120, ptr %3, align 4, !tbaa !60
  %121 = load i32, ptr %19, align 8, !tbaa !51
  %122 = icmp ule i32 %118, %121
  %123 = icmp ugt i32 %120, 2
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %159

125:                                              ; preds = %70
  %126 = add i32 %118, -1
  store i32 %126, ptr %14, align 8, !tbaa !63
  %127 = load i32, ptr %6, align 8, !tbaa !30
  %128 = load ptr, ptr %7, align 8, !tbaa !31
  %129 = load i32, ptr %9, align 4, !tbaa !29
  %130 = load ptr, ptr %10, align 8, !tbaa !33
  %131 = load ptr, ptr %11, align 8, !tbaa !32
  %132 = load i32, ptr %12, align 8, !tbaa !26
  %133 = load i32, ptr %8, align 4, !tbaa !58
  %134 = load i32, ptr %5, align 8, !tbaa !65
  br label %135

135:                                              ; preds = %135, %125
  %136 = phi i32 [ %155, %135 ], [ %126, %125 ]
  %137 = phi i32 [ %147, %135 ], [ %134, %125 ]
  %138 = phi i32 [ %139, %135 ], [ %133, %125 ]
  %139 = add i32 %138, 1
  store i32 %139, ptr %8, align 4, !tbaa !58
  %140 = shl i32 %137, %127
  %141 = add i32 %138, 3
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %128, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !6
  %145 = zext i8 %144 to i32
  %146 = xor i32 %140, %145
  %147 = and i32 %146, %129
  store i32 %147, ptr %5, align 8, !tbaa !65
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i16, ptr %130, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !47
  %151 = and i32 %132, %139
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i16, ptr %131, i64 %152
  store i16 %150, ptr %153, align 2, !tbaa !47
  %154 = trunc i32 %139 to i16
  store i16 %154, ptr %149, align 2, !tbaa !47
  %155 = add i32 %136, -1
  store i32 %155, ptr %14, align 8, !tbaa !63
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %135, !llvm.loop !125

157:                                              ; preds = %135
  %158 = add i32 %138, 2
  store i32 %158, ptr %8, align 4, !tbaa !58
  br i1 %117, label %210, label %177

159:                                              ; preds = %70
  %160 = load i32, ptr %8, align 4, !tbaa !58
  %161 = add i32 %160, %118
  store i32 %161, ptr %8, align 4, !tbaa !58
  store i32 0, ptr %14, align 8, !tbaa !63
  %162 = load ptr, ptr %7, align 8, !tbaa !31
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !6
  %166 = zext i8 %165 to i32
  store i32 %166, ptr %5, align 8, !tbaa !65
  %167 = load i32, ptr %6, align 8, !tbaa !30
  %168 = shl i32 %166, %167
  %169 = add i32 %161, 1
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %162, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !6
  %173 = zext i8 %172 to i32
  %174 = xor i32 %168, %173
  %175 = load i32, ptr %9, align 4, !tbaa !29
  %176 = and i32 %174, %175
  store i32 %176, ptr %5, align 8, !tbaa !65
  br i1 %117, label %210, label %177

177:                                              ; preds = %159, %157, %257, %178
  br label %21

178:                                              ; preds = %67
  %179 = load ptr, ptr %7, align 8, !tbaa !31
  %180 = load i32, ptr %8, align 4, !tbaa !58
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, ptr %179, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !6
  %184 = load ptr, ptr %15, align 8, !tbaa !40
  %185 = load i32, ptr %16, align 4, !tbaa !119
  %186 = add i32 %185, 1
  store i32 %186, ptr %16, align 4, !tbaa !119
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i8, ptr %184, i64 %187
  store i8 0, ptr %188, align 1, !tbaa !6
  %189 = load ptr, ptr %15, align 8, !tbaa !40
  %190 = load i32, ptr %16, align 4, !tbaa !119
  %191 = add i32 %190, 1
  store i32 %191, ptr %16, align 4, !tbaa !119
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i8, ptr %189, i64 %192
  store i8 0, ptr %193, align 1, !tbaa !6
  %194 = load ptr, ptr %15, align 8, !tbaa !40
  %195 = load i32, ptr %16, align 4, !tbaa !119
  %196 = add i32 %195, 1
  store i32 %196, ptr %16, align 4, !tbaa !119
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds i8, ptr %194, i64 %197
  store i8 %183, ptr %198, align 1, !tbaa !6
  %199 = zext i8 %183 to i64
  %200 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %199
  %201 = load i16, ptr %200, align 4, !tbaa !6
  %202 = add i16 %201, 1
  store i16 %202, ptr %200, align 4, !tbaa !6
  %203 = load i32, ptr %16, align 4, !tbaa !119
  %204 = load i32, ptr %17, align 8, !tbaa !41
  %205 = icmp eq i32 %203, %204
  %206 = load i32, ptr %3, align 4, !tbaa !60
  %207 = add i32 %206, -1
  store i32 %207, ptr %3, align 4, !tbaa !60
  %208 = load i32, ptr %8, align 4, !tbaa !58
  %209 = add i32 %208, 1
  store i32 %209, ptr %8, align 4, !tbaa !58
  br i1 %205, label %210, label %177

210:                                              ; preds = %159, %157, %178
  %211 = phi i32 [ %161, %159 ], [ %158, %157 ], [ %209, %178 ]
  %212 = load i64, ptr %20, align 8, !tbaa !59
  %213 = icmp sgt i64 %212, -1
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load ptr, ptr %7, align 8, !tbaa !31
  %216 = and i64 %212, 4294967295
  %217 = getelementptr inbounds i8, ptr %215, i64 %216
  br label %218

218:                                              ; preds = %210, %214
  %219 = phi ptr [ %217, %214 ], [ null, %210 ]
  %220 = zext i32 %211 to i64
  %221 = sub nsw i64 %220, %212
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %219, i64 noundef %221, i32 noundef 0) #10
  %222 = load i32, ptr %8, align 4, !tbaa !58
  %223 = zext i32 %222 to i64
  store i64 %223, ptr %20, align 8, !tbaa !59
  %224 = load ptr, ptr %0, align 8, !tbaa !18
  %225 = getelementptr inbounds %struct.z_stream_s, ptr %224, i64 0, i32 7
  %226 = load ptr, ptr %225, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %226) #10
  %227 = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 5
  %228 = load i64, ptr %227, align 8, !tbaa !83
  %229 = getelementptr inbounds %struct.z_stream_s, ptr %224, i64 0, i32 4
  %230 = load i32, ptr %229, align 8, !tbaa !95
  %231 = zext i32 %230 to i64
  %232 = icmp ugt i64 %228, %231
  %233 = trunc i64 %228 to i32
  %234 = select i1 %232, i32 %230, i32 %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %257, label %236

236:                                              ; preds = %218
  %237 = getelementptr inbounds %struct.z_stream_s, ptr %224, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !94
  %239 = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !84
  %241 = zext i32 %234 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %238, ptr align 1 %240, i64 %241, i1 false)
  %242 = load ptr, ptr %237, align 8, !tbaa !94
  %243 = getelementptr inbounds i8, ptr %242, i64 %241
  store ptr %243, ptr %237, align 8, !tbaa !94
  %244 = load ptr, ptr %239, align 8, !tbaa !84
  %245 = getelementptr inbounds i8, ptr %244, i64 %241
  store ptr %245, ptr %239, align 8, !tbaa !84
  %246 = getelementptr inbounds %struct.z_stream_s, ptr %224, i64 0, i32 5
  %247 = load i64, ptr %246, align 8, !tbaa !96
  %248 = add i64 %247, %241
  store i64 %248, ptr %246, align 8, !tbaa !96
  %249 = load i32, ptr %229, align 8, !tbaa !95
  %250 = sub i32 %249, %234
  store i32 %250, ptr %229, align 8, !tbaa !95
  %251 = load i64, ptr %227, align 8, !tbaa !83
  %252 = sub i64 %251, %241
  store i64 %252, ptr %227, align 8, !tbaa !83
  %253 = icmp eq i64 %251, %241
  br i1 %253, label %254, label %257

254:                                              ; preds = %236
  %255 = getelementptr inbounds %struct.internal_state, ptr %226, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !36
  store ptr %256, ptr %239, align 8, !tbaa !84
  br label %257

257:                                              ; preds = %218, %236, %254
  %258 = load ptr, ptr %0, align 8, !tbaa !18
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %258, i64 0, i32 4
  %260 = load i32, ptr %259, align 8, !tbaa !95
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %374, label %177

262:                                              ; preds = %28
  %263 = load i32, ptr %8, align 4, !tbaa !58
  %264 = tail call i32 @llvm.umin.i32(i32 %263, i32 2)
  %265 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %264, ptr %265, align 4, !tbaa !61
  %266 = icmp eq i32 %1, 4
  br i1 %266, label %267, label %319

267:                                              ; preds = %262
  %268 = load i64, ptr %20, align 8, !tbaa !59
  %269 = icmp sgt i64 %268, -1
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load ptr, ptr %7, align 8, !tbaa !31
  %272 = and i64 %268, 4294967295
  %273 = getelementptr inbounds i8, ptr %271, i64 %272
  br label %274

274:                                              ; preds = %267, %270
  %275 = phi ptr [ %273, %270 ], [ null, %267 ]
  %276 = zext i32 %263 to i64
  %277 = sub nsw i64 %276, %268
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %275, i64 noundef %277, i32 noundef 1) #10
  %278 = load i32, ptr %8, align 4, !tbaa !58
  %279 = zext i32 %278 to i64
  store i64 %279, ptr %20, align 8, !tbaa !59
  %280 = load ptr, ptr %0, align 8, !tbaa !18
  %281 = getelementptr inbounds %struct.z_stream_s, ptr %280, i64 0, i32 7
  %282 = load ptr, ptr %281, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %282) #10
  %283 = getelementptr inbounds %struct.internal_state, ptr %282, i64 0, i32 5
  %284 = load i64, ptr %283, align 8, !tbaa !83
  %285 = getelementptr inbounds %struct.z_stream_s, ptr %280, i64 0, i32 4
  %286 = load i32, ptr %285, align 8, !tbaa !95
  %287 = zext i32 %286 to i64
  %288 = icmp ugt i64 %284, %287
  %289 = trunc i64 %284 to i32
  %290 = select i1 %288, i32 %286, i32 %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %313, label %292

292:                                              ; preds = %274
  %293 = getelementptr inbounds %struct.z_stream_s, ptr %280, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !94
  %295 = getelementptr inbounds %struct.internal_state, ptr %282, i64 0, i32 4
  %296 = load ptr, ptr %295, align 8, !tbaa !84
  %297 = zext i32 %290 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %294, ptr align 1 %296, i64 %297, i1 false)
  %298 = load ptr, ptr %293, align 8, !tbaa !94
  %299 = getelementptr inbounds i8, ptr %298, i64 %297
  store ptr %299, ptr %293, align 8, !tbaa !94
  %300 = load ptr, ptr %295, align 8, !tbaa !84
  %301 = getelementptr inbounds i8, ptr %300, i64 %297
  store ptr %301, ptr %295, align 8, !tbaa !84
  %302 = getelementptr inbounds %struct.z_stream_s, ptr %280, i64 0, i32 5
  %303 = load i64, ptr %302, align 8, !tbaa !96
  %304 = add i64 %303, %297
  store i64 %304, ptr %302, align 8, !tbaa !96
  %305 = load i32, ptr %285, align 8, !tbaa !95
  %306 = sub i32 %305, %290
  store i32 %306, ptr %285, align 8, !tbaa !95
  %307 = load i64, ptr %283, align 8, !tbaa !83
  %308 = sub i64 %307, %297
  store i64 %308, ptr %283, align 8, !tbaa !83
  %309 = icmp eq i64 %307, %297
  br i1 %309, label %310, label %313

310:                                              ; preds = %292
  %311 = getelementptr inbounds %struct.internal_state, ptr %282, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !36
  store ptr %312, ptr %295, align 8, !tbaa !84
  br label %313

313:                                              ; preds = %274, %292, %310
  %314 = load ptr, ptr %0, align 8, !tbaa !18
  %315 = getelementptr inbounds %struct.z_stream_s, ptr %314, i64 0, i32 4
  %316 = load i32, ptr %315, align 8, !tbaa !95
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %317, i32 2, i32 3
  br label %374

319:                                              ; preds = %262
  %320 = load i32, ptr %16, align 4, !tbaa !119
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %373, label %322

322:                                              ; preds = %319
  %323 = load i64, ptr %20, align 8, !tbaa !59
  %324 = icmp sgt i64 %323, -1
  br i1 %324, label %325, label %329

325:                                              ; preds = %322
  %326 = load ptr, ptr %7, align 8, !tbaa !31
  %327 = and i64 %323, 4294967295
  %328 = getelementptr inbounds i8, ptr %326, i64 %327
  br label %329

329:                                              ; preds = %322, %325
  %330 = phi ptr [ %328, %325 ], [ null, %322 ]
  %331 = zext i32 %263 to i64
  %332 = sub nsw i64 %331, %323
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %330, i64 noundef %332, i32 noundef 0) #10
  %333 = load i32, ptr %8, align 4, !tbaa !58
  %334 = zext i32 %333 to i64
  store i64 %334, ptr %20, align 8, !tbaa !59
  %335 = load ptr, ptr %0, align 8, !tbaa !18
  %336 = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 7
  %337 = load ptr, ptr %336, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %337) #10
  %338 = getelementptr inbounds %struct.internal_state, ptr %337, i64 0, i32 5
  %339 = load i64, ptr %338, align 8, !tbaa !83
  %340 = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 4
  %341 = load i32, ptr %340, align 8, !tbaa !95
  %342 = zext i32 %341 to i64
  %343 = icmp ugt i64 %339, %342
  %344 = trunc i64 %339 to i32
  %345 = select i1 %343, i32 %341, i32 %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %368, label %347

347:                                              ; preds = %329
  %348 = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !94
  %350 = getelementptr inbounds %struct.internal_state, ptr %337, i64 0, i32 4
  %351 = load ptr, ptr %350, align 8, !tbaa !84
  %352 = zext i32 %345 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %349, ptr align 1 %351, i64 %352, i1 false)
  %353 = load ptr, ptr %348, align 8, !tbaa !94
  %354 = getelementptr inbounds i8, ptr %353, i64 %352
  store ptr %354, ptr %348, align 8, !tbaa !94
  %355 = load ptr, ptr %350, align 8, !tbaa !84
  %356 = getelementptr inbounds i8, ptr %355, i64 %352
  store ptr %356, ptr %350, align 8, !tbaa !84
  %357 = getelementptr inbounds %struct.z_stream_s, ptr %335, i64 0, i32 5
  %358 = load i64, ptr %357, align 8, !tbaa !96
  %359 = add i64 %358, %352
  store i64 %359, ptr %357, align 8, !tbaa !96
  %360 = load i32, ptr %340, align 8, !tbaa !95
  %361 = sub i32 %360, %345
  store i32 %361, ptr %340, align 8, !tbaa !95
  %362 = load i64, ptr %338, align 8, !tbaa !83
  %363 = sub i64 %362, %352
  store i64 %363, ptr %338, align 8, !tbaa !83
  %364 = icmp eq i64 %362, %352
  br i1 %364, label %365, label %368

365:                                              ; preds = %347
  %366 = getelementptr inbounds %struct.internal_state, ptr %337, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !36
  store ptr %367, ptr %350, align 8, !tbaa !84
  br label %368

368:                                              ; preds = %329, %347, %365
  %369 = load ptr, ptr %0, align 8, !tbaa !18
  %370 = getelementptr inbounds %struct.z_stream_s, ptr %369, i64 0, i32 4
  %371 = load i32, ptr %370, align 8, !tbaa !95
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %368, %319
  br label %374

374:                                              ; preds = %257, %24, %368, %313, %373
  %375 = phi i32 [ 1, %373 ], [ %318, %313 ], [ 0, %368 ], [ 0, %24 ], [ 0, %257 ]
  ret i32 %375
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %25

25:                                               ; preds = %192, %2
  %26 = load i32, ptr %3, align 4, !tbaa !60
  %27 = icmp ult i32 %26, 262
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 8, !tbaa !63
  %30 = load i32, ptr %7, align 8, !tbaa !124
  br label %42

31:                                               ; preds = %25
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %32 = load i32, ptr %3, align 4, !tbaa !60
  %33 = icmp ult i32 %32, 262
  %34 = and i1 %4, %33
  br i1 %34, label %478, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %337, label %37

37:                                               ; preds = %35
  %38 = icmp ugt i32 %32, 2
  %39 = load i32, ptr %5, align 8, !tbaa !63
  %40 = load i32, ptr %7, align 8, !tbaa !124
  br i1 %38, label %42, label %41

41:                                               ; preds = %37
  store i32 %39, ptr %6, align 8, !tbaa !62
  store i32 %40, ptr %8, align 4, !tbaa !126
  store i32 2, ptr %5, align 8, !tbaa !63
  br label %95

42:                                               ; preds = %28, %37
  %43 = phi i32 [ %30, %28 ], [ %40, %37 ]
  %44 = phi i32 [ %29, %28 ], [ %39, %37 ]
  %45 = load i32, ptr %9, align 8, !tbaa !65
  %46 = load i32, ptr %10, align 8, !tbaa !30
  %47 = shl i32 %45, %46
  %48 = load ptr, ptr %11, align 8, !tbaa !31
  %49 = load i32, ptr %12, align 4, !tbaa !58
  %50 = add i32 %49, 2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !6
  %54 = zext i8 %53 to i32
  %55 = xor i32 %47, %54
  %56 = load i32, ptr %13, align 4, !tbaa !29
  %57 = and i32 %55, %56
  store i32 %57, ptr %9, align 8, !tbaa !65
  %58 = load ptr, ptr %14, align 8, !tbaa !33
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i16, ptr %58, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !47
  %62 = load ptr, ptr %15, align 8, !tbaa !32
  %63 = load i32, ptr %16, align 8, !tbaa !26
  %64 = and i32 %63, %49
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %62, i64 %65
  store i16 %61, ptr %66, align 2, !tbaa !47
  %67 = zext i16 %61 to i32
  %68 = trunc i32 %49 to i16
  store i16 %68, ptr %60, align 2, !tbaa !47
  store i32 %44, ptr %6, align 8, !tbaa !62
  store i32 %43, ptr %8, align 4, !tbaa !126
  store i32 2, ptr %5, align 8, !tbaa !63
  %69 = icmp eq i16 %61, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %42
  %71 = load i32, ptr %17, align 8, !tbaa !51
  %72 = icmp ult i32 %44, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = sub i32 %49, %67
  %75 = load i32, ptr %18, align 8, !tbaa !25
  %76 = add i32 %75, -262
  %77 = icmp ugt i32 %74, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %73
  %79 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %67)
  store i32 %79, ptr %5, align 8, !tbaa !63
  %80 = icmp ult i32 %79, 6
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, ptr %19, align 8, !tbaa !43
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = icmp eq i32 %79, 3
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  %87 = load i32, ptr %12, align 4, !tbaa !58
  %88 = load i32, ptr %7, align 8, !tbaa !124
  %89 = sub i32 %87, %88
  %90 = icmp ugt i32 %89, 4096
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %81
  store i32 2, ptr %5, align 8, !tbaa !63
  br label %92

92:                                               ; preds = %70, %73, %91, %86, %84, %78
  %93 = phi i32 [ 2, %70 ], [ 2, %73 ], [ 2, %91 ], [ 3, %86 ], [ %79, %84 ], [ %79, %78 ]
  %94 = load i32, ptr %6, align 8, !tbaa !62
  br label %95

95:                                               ; preds = %92, %41, %42
  %96 = phi i32 [ %94, %92 ], [ %39, %41 ], [ %44, %42 ]
  %97 = phi i32 [ %93, %92 ], [ 2, %41 ], [ 2, %42 ]
  %98 = icmp ult i32 %96, 3
  %99 = icmp ugt i32 %97, %96
  %100 = or i1 %98, %99
  br i1 %100, label %244, label %101

101:                                              ; preds = %95
  %102 = load i32, ptr %12, align 4, !tbaa !58
  %103 = load i32, ptr %3, align 4, !tbaa !60
  %104 = add i32 %102, -3
  %105 = add i32 %104, %103
  %106 = trunc i32 %96 to i8
  %107 = add i8 %106, -3
  %108 = load i32, ptr %8, align 4, !tbaa !126
  %109 = xor i32 %108, -1
  %110 = add i32 %102, %109
  %111 = trunc i32 %110 to i16
  %112 = trunc i32 %110 to i8
  %113 = load ptr, ptr %20, align 8, !tbaa !40
  %114 = load i32, ptr %21, align 4, !tbaa !119
  %115 = add i32 %114, 1
  store i32 %115, ptr %21, align 4, !tbaa !119
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i8, ptr %113, i64 %116
  store i8 %112, ptr %117, align 1, !tbaa !6
  %118 = lshr i32 %110, 8
  %119 = trunc i32 %118 to i8
  %120 = load ptr, ptr %20, align 8, !tbaa !40
  %121 = load i32, ptr %21, align 4, !tbaa !119
  %122 = add i32 %121, 1
  store i32 %122, ptr %21, align 4, !tbaa !119
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, ptr %120, i64 %123
  store i8 %119, ptr %124, align 1, !tbaa !6
  %125 = load ptr, ptr %20, align 8, !tbaa !40
  %126 = load i32, ptr %21, align 4, !tbaa !119
  %127 = add i32 %126, 1
  store i32 %127, ptr %21, align 4, !tbaa !119
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 %128
  store i8 %107, ptr %129, align 1, !tbaa !6
  %130 = add i16 %111, -1
  %131 = zext i8 %107 to i64
  %132 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !6
  %134 = zext i8 %133 to i64
  %135 = add nuw nsw i64 %134, 257
  %136 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %135
  %137 = load i16, ptr %136, align 4, !tbaa !6
  %138 = add i16 %137, 1
  store i16 %138, ptr %136, align 4, !tbaa !6
  %139 = icmp ult i16 %130, 256
  %140 = lshr i16 %130, 7
  %141 = add nuw nsw i16 %140, 256
  %142 = select i1 %139, i16 %130, i16 %141
  %143 = zext i16 %142 to i64
  %144 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !6
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %146
  %148 = load i16, ptr %147, align 4, !tbaa !6
  %149 = add i16 %148, 1
  store i16 %149, ptr %147, align 4, !tbaa !6
  %150 = load i32, ptr %21, align 4, !tbaa !119
  %151 = load i32, ptr %22, align 8, !tbaa !41
  %152 = load i32, ptr %6, align 8, !tbaa !62
  %153 = load i32, ptr %3, align 4, !tbaa !60
  %154 = sub i32 %153, %152
  %155 = add i32 %154, 1
  store i32 %155, ptr %3, align 4, !tbaa !60
  %156 = add i32 %152, -2
  store i32 %156, ptr %6, align 8, !tbaa !62
  %157 = load i32, ptr %12, align 4, !tbaa !58
  br label %158

158:                                              ; preds = %186, %101
  %159 = phi i32 [ %187, %186 ], [ %156, %101 ]
  %160 = phi i32 [ %161, %186 ], [ %157, %101 ]
  %161 = add i32 %160, 1
  store i32 %161, ptr %12, align 4, !tbaa !58
  %162 = icmp ugt i32 %161, %105
  br i1 %162, label %186, label %163

163:                                              ; preds = %158
  %164 = load i32, ptr %9, align 8, !tbaa !65
  %165 = load i32, ptr %10, align 8, !tbaa !30
  %166 = shl i32 %164, %165
  %167 = load ptr, ptr %11, align 8, !tbaa !31
  %168 = add i32 %160, 3
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %167, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !6
  %172 = zext i8 %171 to i32
  %173 = xor i32 %166, %172
  %174 = load i32, ptr %13, align 4, !tbaa !29
  %175 = and i32 %173, %174
  store i32 %175, ptr %9, align 8, !tbaa !65
  %176 = load ptr, ptr %14, align 8, !tbaa !33
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds i16, ptr %176, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !47
  %180 = load ptr, ptr %15, align 8, !tbaa !32
  %181 = load i32, ptr %16, align 8, !tbaa !26
  %182 = and i32 %181, %161
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i16, ptr %180, i64 %183
  store i16 %179, ptr %184, align 2, !tbaa !47
  %185 = trunc i32 %161 to i16
  store i16 %185, ptr %178, align 2, !tbaa !47
  br label %186

186:                                              ; preds = %158, %163
  %187 = add i32 %159, -1
  store i32 %187, ptr %6, align 8, !tbaa !62
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %158, !llvm.loop !127

189:                                              ; preds = %186
  %190 = icmp eq i32 %150, %151
  store i32 0, ptr %23, align 8, !tbaa !64
  store i32 2, ptr %5, align 8, !tbaa !63
  %191 = add i32 %160, 2
  store i32 %191, ptr %12, align 4, !tbaa !58
  br i1 %190, label %193, label %192

192:                                              ; preds = %189, %239, %332, %323
  br label %25

193:                                              ; preds = %189
  %194 = load i64, ptr %24, align 8, !tbaa !59
  %195 = icmp sgt i64 %194, -1
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load ptr, ptr %11, align 8, !tbaa !31
  %198 = and i64 %194, 4294967295
  %199 = getelementptr inbounds i8, ptr %197, i64 %198
  br label %200

200:                                              ; preds = %193, %196
  %201 = phi ptr [ %199, %196 ], [ null, %193 ]
  %202 = zext i32 %191 to i64
  %203 = sub nsw i64 %202, %194
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %201, i64 noundef %203, i32 noundef 0) #10
  %204 = load i32, ptr %12, align 4, !tbaa !58
  %205 = zext i32 %204 to i64
  store i64 %205, ptr %24, align 8, !tbaa !59
  %206 = load ptr, ptr %0, align 8, !tbaa !18
  %207 = getelementptr inbounds %struct.z_stream_s, ptr %206, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %208) #10
  %209 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 5
  %210 = load i64, ptr %209, align 8, !tbaa !83
  %211 = getelementptr inbounds %struct.z_stream_s, ptr %206, i64 0, i32 4
  %212 = load i32, ptr %211, align 8, !tbaa !95
  %213 = zext i32 %212 to i64
  %214 = icmp ugt i64 %210, %213
  %215 = trunc i64 %210 to i32
  %216 = select i1 %214, i32 %212, i32 %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %239, label %218

218:                                              ; preds = %200
  %219 = getelementptr inbounds %struct.z_stream_s, ptr %206, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !94
  %221 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 4
  %222 = load ptr, ptr %221, align 8, !tbaa !84
  %223 = zext i32 %216 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %220, ptr align 1 %222, i64 %223, i1 false)
  %224 = load ptr, ptr %219, align 8, !tbaa !94
  %225 = getelementptr inbounds i8, ptr %224, i64 %223
  store ptr %225, ptr %219, align 8, !tbaa !94
  %226 = load ptr, ptr %221, align 8, !tbaa !84
  %227 = getelementptr inbounds i8, ptr %226, i64 %223
  store ptr %227, ptr %221, align 8, !tbaa !84
  %228 = getelementptr inbounds %struct.z_stream_s, ptr %206, i64 0, i32 5
  %229 = load i64, ptr %228, align 8, !tbaa !96
  %230 = add i64 %229, %223
  store i64 %230, ptr %228, align 8, !tbaa !96
  %231 = load i32, ptr %211, align 8, !tbaa !95
  %232 = sub i32 %231, %216
  store i32 %232, ptr %211, align 8, !tbaa !95
  %233 = load i64, ptr %209, align 8, !tbaa !83
  %234 = sub i64 %233, %223
  store i64 %234, ptr %209, align 8, !tbaa !83
  %235 = icmp eq i64 %233, %223
  br i1 %235, label %236, label %239

236:                                              ; preds = %218
  %237 = getelementptr inbounds %struct.internal_state, ptr %208, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !36
  store ptr %238, ptr %221, align 8, !tbaa !84
  br label %239

239:                                              ; preds = %200, %218, %236
  %240 = load ptr, ptr %0, align 8, !tbaa !18
  %241 = getelementptr inbounds %struct.z_stream_s, ptr %240, i64 0, i32 4
  %242 = load i32, ptr %241, align 8, !tbaa !95
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %478, label %192

244:                                              ; preds = %95
  %245 = load i32, ptr %23, align 8, !tbaa !64
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %332, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr %11, align 8, !tbaa !31
  %249 = load i32, ptr %12, align 4, !tbaa !58
  %250 = add i32 %249, -1
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %248, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !6
  %254 = load ptr, ptr %20, align 8, !tbaa !40
  %255 = load i32, ptr %21, align 4, !tbaa !119
  %256 = add i32 %255, 1
  store i32 %256, ptr %21, align 4, !tbaa !119
  %257 = zext i32 %255 to i64
  %258 = getelementptr inbounds i8, ptr %254, i64 %257
  store i8 0, ptr %258, align 1, !tbaa !6
  %259 = load ptr, ptr %20, align 8, !tbaa !40
  %260 = load i32, ptr %21, align 4, !tbaa !119
  %261 = add i32 %260, 1
  store i32 %261, ptr %21, align 4, !tbaa !119
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, ptr %259, i64 %262
  store i8 0, ptr %263, align 1, !tbaa !6
  %264 = load ptr, ptr %20, align 8, !tbaa !40
  %265 = load i32, ptr %21, align 4, !tbaa !119
  %266 = add i32 %265, 1
  store i32 %266, ptr %21, align 4, !tbaa !119
  %267 = zext i32 %265 to i64
  %268 = getelementptr inbounds i8, ptr %264, i64 %267
  store i8 %253, ptr %268, align 1, !tbaa !6
  %269 = zext i8 %253 to i64
  %270 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %269
  %271 = load i16, ptr %270, align 4, !tbaa !6
  %272 = add i16 %271, 1
  store i16 %272, ptr %270, align 4, !tbaa !6
  %273 = load i32, ptr %21, align 4, !tbaa !119
  %274 = load i32, ptr %22, align 8, !tbaa !41
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %323

276:                                              ; preds = %247
  %277 = load i64, ptr %24, align 8, !tbaa !59
  %278 = icmp sgt i64 %277, -1
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load ptr, ptr %11, align 8, !tbaa !31
  %281 = and i64 %277, 4294967295
  %282 = getelementptr inbounds i8, ptr %280, i64 %281
  br label %283

283:                                              ; preds = %276, %279
  %284 = phi ptr [ %282, %279 ], [ null, %276 ]
  %285 = load i32, ptr %12, align 4, !tbaa !58
  %286 = zext i32 %285 to i64
  %287 = sub nsw i64 %286, %277
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %284, i64 noundef %287, i32 noundef 0) #10
  %288 = load i32, ptr %12, align 4, !tbaa !58
  %289 = zext i32 %288 to i64
  store i64 %289, ptr %24, align 8, !tbaa !59
  %290 = load ptr, ptr %0, align 8, !tbaa !18
  %291 = getelementptr inbounds %struct.z_stream_s, ptr %290, i64 0, i32 7
  %292 = load ptr, ptr %291, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %292) #10
  %293 = getelementptr inbounds %struct.internal_state, ptr %292, i64 0, i32 5
  %294 = load i64, ptr %293, align 8, !tbaa !83
  %295 = getelementptr inbounds %struct.z_stream_s, ptr %290, i64 0, i32 4
  %296 = load i32, ptr %295, align 8, !tbaa !95
  %297 = zext i32 %296 to i64
  %298 = icmp ugt i64 %294, %297
  %299 = trunc i64 %294 to i32
  %300 = select i1 %298, i32 %296, i32 %299
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %323, label %302

302:                                              ; preds = %283
  %303 = getelementptr inbounds %struct.z_stream_s, ptr %290, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !94
  %305 = getelementptr inbounds %struct.internal_state, ptr %292, i64 0, i32 4
  %306 = load ptr, ptr %305, align 8, !tbaa !84
  %307 = zext i32 %300 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %304, ptr align 1 %306, i64 %307, i1 false)
  %308 = load ptr, ptr %303, align 8, !tbaa !94
  %309 = getelementptr inbounds i8, ptr %308, i64 %307
  store ptr %309, ptr %303, align 8, !tbaa !94
  %310 = load ptr, ptr %305, align 8, !tbaa !84
  %311 = getelementptr inbounds i8, ptr %310, i64 %307
  store ptr %311, ptr %305, align 8, !tbaa !84
  %312 = getelementptr inbounds %struct.z_stream_s, ptr %290, i64 0, i32 5
  %313 = load i64, ptr %312, align 8, !tbaa !96
  %314 = add i64 %313, %307
  store i64 %314, ptr %312, align 8, !tbaa !96
  %315 = load i32, ptr %295, align 8, !tbaa !95
  %316 = sub i32 %315, %300
  store i32 %316, ptr %295, align 8, !tbaa !95
  %317 = load i64, ptr %293, align 8, !tbaa !83
  %318 = sub i64 %317, %307
  store i64 %318, ptr %293, align 8, !tbaa !83
  %319 = icmp eq i64 %317, %307
  br i1 %319, label %320, label %323

320:                                              ; preds = %302
  %321 = getelementptr inbounds %struct.internal_state, ptr %292, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !36
  store ptr %322, ptr %305, align 8, !tbaa !84
  br label %323

323:                                              ; preds = %320, %302, %283, %247
  %324 = load i32, ptr %12, align 4, !tbaa !58
  %325 = add i32 %324, 1
  store i32 %325, ptr %12, align 4, !tbaa !58
  %326 = load i32, ptr %3, align 4, !tbaa !60
  %327 = add i32 %326, -1
  store i32 %327, ptr %3, align 4, !tbaa !60
  %328 = load ptr, ptr %0, align 8, !tbaa !18
  %329 = getelementptr inbounds %struct.z_stream_s, ptr %328, i64 0, i32 4
  %330 = load i32, ptr %329, align 8, !tbaa !95
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %478, label %192

332:                                              ; preds = %244
  store i32 1, ptr %23, align 8, !tbaa !64
  %333 = load i32, ptr %12, align 4, !tbaa !58
  %334 = add i32 %333, 1
  store i32 %334, ptr %12, align 4, !tbaa !58
  %335 = load i32, ptr %3, align 4, !tbaa !60
  %336 = add i32 %335, -1
  store i32 %336, ptr %3, align 4, !tbaa !60
  br label %192

337:                                              ; preds = %35
  %338 = load i32, ptr %23, align 8, !tbaa !64
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %366, label %340

340:                                              ; preds = %337
  %341 = load ptr, ptr %11, align 8, !tbaa !31
  %342 = load i32, ptr %12, align 4, !tbaa !58
  %343 = add i32 %342, -1
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i8, ptr %341, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !6
  %347 = load ptr, ptr %20, align 8, !tbaa !40
  %348 = load i32, ptr %21, align 4, !tbaa !119
  %349 = add i32 %348, 1
  store i32 %349, ptr %21, align 4, !tbaa !119
  %350 = zext i32 %348 to i64
  %351 = getelementptr inbounds i8, ptr %347, i64 %350
  store i8 0, ptr %351, align 1, !tbaa !6
  %352 = load ptr, ptr %20, align 8, !tbaa !40
  %353 = load i32, ptr %21, align 4, !tbaa !119
  %354 = add i32 %353, 1
  store i32 %354, ptr %21, align 4, !tbaa !119
  %355 = zext i32 %353 to i64
  %356 = getelementptr inbounds i8, ptr %352, i64 %355
  store i8 0, ptr %356, align 1, !tbaa !6
  %357 = load ptr, ptr %20, align 8, !tbaa !40
  %358 = load i32, ptr %21, align 4, !tbaa !119
  %359 = add i32 %358, 1
  store i32 %359, ptr %21, align 4, !tbaa !119
  %360 = zext i32 %358 to i64
  %361 = getelementptr inbounds i8, ptr %357, i64 %360
  store i8 %346, ptr %361, align 1, !tbaa !6
  %362 = zext i8 %346 to i64
  %363 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %362
  %364 = load i16, ptr %363, align 4, !tbaa !6
  %365 = add i16 %364, 1
  store i16 %365, ptr %363, align 4, !tbaa !6
  store i32 0, ptr %23, align 8, !tbaa !64
  br label %366

366:                                              ; preds = %340, %337
  %367 = load i32, ptr %12, align 4, !tbaa !58
  %368 = tail call i32 @llvm.umin.i32(i32 %367, i32 2)
  %369 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %368, ptr %369, align 4, !tbaa !61
  %370 = icmp eq i32 %1, 4
  br i1 %370, label %371, label %423

371:                                              ; preds = %366
  %372 = load i64, ptr %24, align 8, !tbaa !59
  %373 = icmp sgt i64 %372, -1
  br i1 %373, label %374, label %378

374:                                              ; preds = %371
  %375 = load ptr, ptr %11, align 8, !tbaa !31
  %376 = and i64 %372, 4294967295
  %377 = getelementptr inbounds i8, ptr %375, i64 %376
  br label %378

378:                                              ; preds = %371, %374
  %379 = phi ptr [ %377, %374 ], [ null, %371 ]
  %380 = zext i32 %367 to i64
  %381 = sub nsw i64 %380, %372
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %379, i64 noundef %381, i32 noundef 1) #10
  %382 = load i32, ptr %12, align 4, !tbaa !58
  %383 = zext i32 %382 to i64
  store i64 %383, ptr %24, align 8, !tbaa !59
  %384 = load ptr, ptr %0, align 8, !tbaa !18
  %385 = getelementptr inbounds %struct.z_stream_s, ptr %384, i64 0, i32 7
  %386 = load ptr, ptr %385, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %386) #10
  %387 = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 5
  %388 = load i64, ptr %387, align 8, !tbaa !83
  %389 = getelementptr inbounds %struct.z_stream_s, ptr %384, i64 0, i32 4
  %390 = load i32, ptr %389, align 8, !tbaa !95
  %391 = zext i32 %390 to i64
  %392 = icmp ugt i64 %388, %391
  %393 = trunc i64 %388 to i32
  %394 = select i1 %392, i32 %390, i32 %393
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %417, label %396

396:                                              ; preds = %378
  %397 = getelementptr inbounds %struct.z_stream_s, ptr %384, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !94
  %399 = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 4
  %400 = load ptr, ptr %399, align 8, !tbaa !84
  %401 = zext i32 %394 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %398, ptr align 1 %400, i64 %401, i1 false)
  %402 = load ptr, ptr %397, align 8, !tbaa !94
  %403 = getelementptr inbounds i8, ptr %402, i64 %401
  store ptr %403, ptr %397, align 8, !tbaa !94
  %404 = load ptr, ptr %399, align 8, !tbaa !84
  %405 = getelementptr inbounds i8, ptr %404, i64 %401
  store ptr %405, ptr %399, align 8, !tbaa !84
  %406 = getelementptr inbounds %struct.z_stream_s, ptr %384, i64 0, i32 5
  %407 = load i64, ptr %406, align 8, !tbaa !96
  %408 = add i64 %407, %401
  store i64 %408, ptr %406, align 8, !tbaa !96
  %409 = load i32, ptr %389, align 8, !tbaa !95
  %410 = sub i32 %409, %394
  store i32 %410, ptr %389, align 8, !tbaa !95
  %411 = load i64, ptr %387, align 8, !tbaa !83
  %412 = sub i64 %411, %401
  store i64 %412, ptr %387, align 8, !tbaa !83
  %413 = icmp eq i64 %411, %401
  br i1 %413, label %414, label %417

414:                                              ; preds = %396
  %415 = getelementptr inbounds %struct.internal_state, ptr %386, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !36
  store ptr %416, ptr %399, align 8, !tbaa !84
  br label %417

417:                                              ; preds = %378, %396, %414
  %418 = load ptr, ptr %0, align 8, !tbaa !18
  %419 = getelementptr inbounds %struct.z_stream_s, ptr %418, i64 0, i32 4
  %420 = load i32, ptr %419, align 8, !tbaa !95
  %421 = icmp eq i32 %420, 0
  %422 = select i1 %421, i32 2, i32 3
  br label %478

423:                                              ; preds = %366
  %424 = load i32, ptr %21, align 4, !tbaa !119
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %477, label %426

426:                                              ; preds = %423
  %427 = load i64, ptr %24, align 8, !tbaa !59
  %428 = icmp sgt i64 %427, -1
  br i1 %428, label %429, label %433

429:                                              ; preds = %426
  %430 = load ptr, ptr %11, align 8, !tbaa !31
  %431 = and i64 %427, 4294967295
  %432 = getelementptr inbounds i8, ptr %430, i64 %431
  br label %433

433:                                              ; preds = %426, %429
  %434 = phi ptr [ %432, %429 ], [ null, %426 ]
  %435 = zext i32 %367 to i64
  %436 = sub nsw i64 %435, %427
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %434, i64 noundef %436, i32 noundef 0) #10
  %437 = load i32, ptr %12, align 4, !tbaa !58
  %438 = zext i32 %437 to i64
  store i64 %438, ptr %24, align 8, !tbaa !59
  %439 = load ptr, ptr %0, align 8, !tbaa !18
  %440 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 7
  %441 = load ptr, ptr %440, align 8, !tbaa !17
  tail call void @_tr_flush_bits(ptr noundef %441) #10
  %442 = getelementptr inbounds %struct.internal_state, ptr %441, i64 0, i32 5
  %443 = load i64, ptr %442, align 8, !tbaa !83
  %444 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 4
  %445 = load i32, ptr %444, align 8, !tbaa !95
  %446 = zext i32 %445 to i64
  %447 = icmp ugt i64 %443, %446
  %448 = trunc i64 %443 to i32
  %449 = select i1 %447, i32 %445, i32 %448
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %472, label %451

451:                                              ; preds = %433
  %452 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !94
  %454 = getelementptr inbounds %struct.internal_state, ptr %441, i64 0, i32 4
  %455 = load ptr, ptr %454, align 8, !tbaa !84
  %456 = zext i32 %449 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %453, ptr align 1 %455, i64 %456, i1 false)
  %457 = load ptr, ptr %452, align 8, !tbaa !94
  %458 = getelementptr inbounds i8, ptr %457, i64 %456
  store ptr %458, ptr %452, align 8, !tbaa !94
  %459 = load ptr, ptr %454, align 8, !tbaa !84
  %460 = getelementptr inbounds i8, ptr %459, i64 %456
  store ptr %460, ptr %454, align 8, !tbaa !84
  %461 = getelementptr inbounds %struct.z_stream_s, ptr %439, i64 0, i32 5
  %462 = load i64, ptr %461, align 8, !tbaa !96
  %463 = add i64 %462, %456
  store i64 %463, ptr %461, align 8, !tbaa !96
  %464 = load i32, ptr %444, align 8, !tbaa !95
  %465 = sub i32 %464, %449
  store i32 %465, ptr %444, align 8, !tbaa !95
  %466 = load i64, ptr %442, align 8, !tbaa !83
  %467 = sub i64 %466, %456
  store i64 %467, ptr %442, align 8, !tbaa !83
  %468 = icmp eq i64 %466, %456
  br i1 %468, label %469, label %472

469:                                              ; preds = %451
  %470 = getelementptr inbounds %struct.internal_state, ptr %441, i64 0, i32 2
  %471 = load ptr, ptr %470, align 8, !tbaa !36
  store ptr %471, ptr %454, align 8, !tbaa !84
  br label %472

472:                                              ; preds = %433, %451, %469
  %473 = load ptr, ptr %0, align 8, !tbaa !18
  %474 = getelementptr inbounds %struct.z_stream_s, ptr %473, i64 0, i32 4
  %475 = load i32, ptr %474, align 8, !tbaa !95
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %472, %423
  br label %478

478:                                              ; preds = %323, %239, %31, %472, %417, %477
  %479 = phi i32 [ 1, %477 ], [ %422, %417 ], [ 0, %472 ], [ 0, %31 ], [ 0, %239 ], [ 0, %323 ]
  ret i32 %479
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @longest_match(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !25
  %17 = add i32 %16, -262
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %17)
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !26
  %23 = getelementptr inbounds i8, ptr %10, i64 258
  %24 = sext i32 %12 to i64
  %25 = getelementptr i8, ptr %10, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !6
  %28 = load i8, ptr %25, align 1, !tbaa !6
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = icmp ult i32 %12, %30
  %32 = lshr i32 %4, 2
  %33 = select i1 %31, i32 %4, i32 %32
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = tail call i32 @llvm.umin.i32(i32 %14, i32 %35)
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %38 = getelementptr inbounds i8, ptr %10, i64 1
  %39 = ptrtoint ptr %23 to i64
  br label %40

40:                                               ; preds = %155, %2
  %41 = phi i32 [ %12, %2 ], [ %156, %155 ]
  %42 = phi i32 [ %33, %2 ], [ %165, %155 ]
  %43 = phi i32 [ %1, %2 ], [ %163, %155 ]
  %44 = phi i8 [ %27, %2 ], [ %157, %155 ]
  %45 = phi i8 [ %28, %2 ], [ %158, %155 ]
  %46 = zext nneg i32 %43 to i64
  %47 = getelementptr inbounds i8, ptr %6, i64 %46
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !6
  %51 = icmp eq i8 %50, %45
  br i1 %51, label %52, label %155

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %49, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !6
  %55 = icmp eq i8 %54, %44
  br i1 %55, label %56, label %155

56:                                               ; preds = %52
  %57 = load i8, ptr %47, align 1, !tbaa !6
  %58 = load i8, ptr %10, align 1, !tbaa !6
  %59 = icmp eq i8 %57, %58
  br i1 %59, label %60, label %155

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %47, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !6
  %63 = load i8, ptr %38, align 1, !tbaa !6
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %155

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, ptr %47, i64 2
  br label %67

67:                                               ; preds = %112, %65
  %68 = phi ptr [ %66, %65 ], [ %116, %112 ]
  %69 = phi i64 [ 2, %65 ], [ %113, %112 ]
  %70 = getelementptr inbounds i8, ptr %10, i64 %69
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %68, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !6
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, ptr %70, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %68, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !6
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %70, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %68, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !6
  %87 = icmp eq i8 %84, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %70, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %68, i64 4
  %92 = load i8, ptr %91, align 1, !tbaa !6
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, ptr %70, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %68, i64 5
  %98 = load i8, ptr %97, align 1, !tbaa !6
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %70, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %68, i64 6
  %104 = load i8, ptr %103, align 1, !tbaa !6
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %70, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %68, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %69, 8
  %114 = getelementptr inbounds i8, ptr %10, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %68, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !6
  %118 = icmp eq i8 %115, %117
  %119 = icmp ult i64 %69, 250
  %120 = and i1 %119, %118
  br i1 %120, label %67, label %135, !llvm.loop !128

121:                                              ; preds = %67
  %122 = getelementptr inbounds i8, ptr %70, i64 1
  br label %137

123:                                              ; preds = %76
  %124 = getelementptr inbounds i8, ptr %70, i64 2
  br label %137

125:                                              ; preds = %82
  %126 = getelementptr inbounds i8, ptr %70, i64 3
  br label %137

127:                                              ; preds = %88
  %128 = getelementptr inbounds i8, ptr %70, i64 4
  br label %137

129:                                              ; preds = %94
  %130 = getelementptr inbounds i8, ptr %70, i64 5
  br label %137

131:                                              ; preds = %100
  %132 = getelementptr inbounds i8, ptr %70, i64 6
  br label %137

133:                                              ; preds = %106
  %134 = getelementptr inbounds i8, ptr %70, i64 7
  br label %137

135:                                              ; preds = %112
  %136 = getelementptr inbounds i8, ptr %10, i64 %113
  br label %137

137:                                              ; preds = %135, %133, %131, %129, %127, %125, %123, %121
  %138 = phi ptr [ %122, %121 ], [ %124, %123 ], [ %126, %125 ], [ %128, %127 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ], [ %136, %135 ]
  %139 = ptrtoint ptr %138 to i64
  %140 = sub i64 %139, %39
  %141 = trunc i64 %140 to i32
  %142 = add i32 %141, 258
  %143 = icmp sgt i32 %142, %41
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  store i32 %43, ptr %37, align 8, !tbaa !124
  %145 = icmp slt i32 %142, %36
  br i1 %145, label %146, label %168

146:                                              ; preds = %144
  %147 = shl i64 %140, 32
  %148 = add i64 %147, 1103806595072
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !6
  %152 = sext i32 %142 to i64
  %153 = getelementptr inbounds i8, ptr %10, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !6
  br label %155

155:                                              ; preds = %137, %146, %40, %52, %56, %60
  %156 = phi i32 [ %41, %40 ], [ %41, %52 ], [ %41, %56 ], [ %41, %60 ], [ %142, %146 ], [ %41, %137 ]
  %157 = phi i8 [ %44, %40 ], [ %44, %52 ], [ %44, %56 ], [ %44, %60 ], [ %151, %146 ], [ %44, %137 ]
  %158 = phi i8 [ %45, %40 ], [ %45, %52 ], [ %45, %56 ], [ %45, %60 ], [ %154, %146 ], [ %45, %137 ]
  %159 = and i32 %43, %22
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds i16, ptr %20, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !47
  %163 = zext i16 %162 to i32
  %164 = icmp uge i32 %18, %163
  %165 = add i32 %42, -1
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %40, !llvm.loop !129

168:                                              ; preds = %155, %144
  %169 = phi i32 [ %156, %155 ], [ %142, %144 ]
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %35)
  ret i32 %170
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.usub.sat.v8i32(<8 x i32>, <8 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{i32 -6, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 48}
!10 = !{!"z_stream_s", !11, i64 0, !12, i64 8, !13, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !11, i64 64}
!15 = !{!10, !11, i64 80}
!16 = !{!10, !11, i64 72}
!17 = !{!10, !11, i64 56}
!18 = !{!19, !11, i64 0}
!19 = !{!"internal_state", !11, i64 0, !12, i64 8, !11, i64 16, !13, i64 24, !11, i64 32, !13, i64 40, !12, i64 48, !11, i64 56, !13, i64 64, !7, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !11, i64 96, !13, i64 104, !11, i64 112, !11, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !13, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !7, i64 212, !7, i64 2504, !7, i64 2748, !20, i64 2904, !20, i64 2928, !20, i64 2952, !7, i64 2976, !7, i64 3008, !12, i64 5300, !12, i64 5304, !7, i64 5308, !11, i64 5888, !12, i64 5896, !12, i64 5900, !12, i64 5904, !13, i64 5912, !13, i64 5920, !12, i64 5928, !12, i64 5932, !21, i64 5936, !12, i64 5940, !12, i64 5944, !13, i64 5952, !12, i64 5960}
!20 = !{!"tree_desc_s", !11, i64 0, !12, i64 8, !11, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!19, !12, i64 8}
!23 = !{!19, !12, i64 48}
!24 = !{!19, !12, i64 84}
!25 = !{!19, !12, i64 80}
!26 = !{!19, !12, i64 88}
!27 = !{!19, !12, i64 136}
!28 = !{!19, !12, i64 132}
!29 = !{!19, !12, i64 140}
!30 = !{!19, !12, i64 144}
!31 = !{!19, !11, i64 96}
!32 = !{!19, !11, i64 112}
!33 = !{!19, !11, i64 120}
!34 = !{!19, !13, i64 5952}
!35 = !{!19, !12, i64 5896}
!36 = !{!19, !11, i64 16}
!37 = !{!19, !13, i64 24}
!38 = !{!11, !11, i64 0}
!39 = !{i32 -3, i32 1}
!40 = !{!19, !11, i64 5888}
!41 = !{!19, !12, i64 5904}
!42 = !{!19, !12, i64 196}
!43 = !{!19, !12, i64 200}
!44 = !{!19, !7, i64 72}
!45 = !{i32 -2, i32 1}
!46 = !{!19, !13, i64 104}
!47 = !{!21, !21, i64 0}
!48 = !{!19, !12, i64 5960}
!49 = !{!50, !21, i64 2}
!50 = !{!"config_s", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !11, i64 8}
!51 = !{!19, !12, i64 192}
!52 = !{!50, !21, i64 0}
!53 = !{!19, !12, i64 204}
!54 = !{!50, !21, i64 4}
!55 = !{!19, !12, i64 208}
!56 = !{!50, !21, i64 6}
!57 = !{!19, !12, i64 188}
!58 = !{!19, !12, i64 172}
!59 = !{!19, !13, i64 152}
!60 = !{!19, !12, i64 180}
!61 = !{!19, !12, i64 5932}
!62 = !{!19, !12, i64 184}
!63 = !{!19, !12, i64 160}
!64 = !{!19, !12, i64 168}
!65 = !{!19, !12, i64 128}
!66 = !{!10, !13, i64 96}
!67 = !{!10, !12, i64 8}
!68 = !{!10, !11, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = distinct !{!71, !70}
!72 = !{!12, !12, i64 0}
!73 = distinct !{!73, !70, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !70, !75, !74}
!77 = distinct !{!77, !70, !74, !75}
!78 = distinct !{!78, !70, !75, !74}
!79 = !{!10, !13, i64 16}
!80 = distinct !{!80, !70}
!81 = distinct !{!81, !70}
!82 = !{!10, !12, i64 88}
!83 = !{!19, !13, i64 40}
!84 = !{!19, !11, i64 32}
!85 = !{!19, !12, i64 76}
!86 = !{!19, !11, i64 56}
!87 = !{!19, !12, i64 5940}
!88 = !{!19, !12, i64 5944}
!89 = !{!19, !21, i64 5936}
!90 = distinct !{!90, !70}
!91 = !{!50, !11, i64 8}
!92 = !{i32 -5, i32 2}
!93 = !{!19, !12, i64 5928}
!94 = !{!10, !11, i64 24}
!95 = !{!10, !12, i64 32}
!96 = !{!10, !13, i64 40}
!97 = !{!98, !12, i64 0}
!98 = !{!"gz_header_s", !12, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !11, i64 24, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 48, !11, i64 56, !12, i64 64, !12, i64 68, !12, i64 72}
!99 = !{!98, !12, i64 68}
!100 = !{!98, !11, i64 24}
!101 = !{!98, !11, i64 40}
!102 = !{!98, !11, i64 56}
!103 = !{!98, !13, i64 8}
!104 = !{!98, !12, i64 20}
!105 = !{!98, !12, i64 32}
!106 = !{!19, !13, i64 64}
!107 = distinct !{!107, !70, !108}
!108 = !{!"llvm.loop.peeled.count", i32 1}
!109 = distinct !{!109, !70}
!110 = distinct !{!110, !70}
!111 = !{i32 0, i32 4}
!112 = distinct !{!112, !70, !74, !75}
!113 = distinct !{!113, !70, !75, !74}
!114 = distinct !{!114, !70, !74, !75}
!115 = distinct !{!115, !70, !75, !74}
!116 = distinct !{!116, !70}
!117 = distinct !{!117, !70}
!118 = distinct !{!118, !70}
!119 = !{!19, !12, i64 5900}
!120 = distinct !{!120, !70}
!121 = !{!19, !11, i64 2904}
!122 = !{!19, !11, i64 2928}
!123 = !{!19, !11, i64 2952}
!124 = !{!19, !12, i64 176}
!125 = distinct !{!125, !70}
!126 = !{!19, !12, i64 164}
!127 = distinct !{!127, !70}
!128 = distinct !{!128, !70}
!129 = distinct !{!129, !70}
