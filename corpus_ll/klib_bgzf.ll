; ModuleID = 'corpus_src/klib/bgzf.c'
source_filename = "corpus_src/klib/bgzf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BGZF = type { i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.__kstring_t = type { i64, i64, ptr }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fp->open_mode == 'r'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"corpus_src/klib/bgzf.c\00", align 1
@__PRETTY_FUNCTION__.bgzf_read = private unnamed_addr constant [43 x i8] c"ssize_t bgzf_read(BGZF *, void *, ssize_t)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fp->open_mode == 'w'\00", align 1
@__PRETTY_FUNCTION__.bgzf_flush = private unnamed_addr constant [23 x i8] c"int bgzf_flush(BGZF *)\00", align 1
@__PRETTY_FUNCTION__.bgzf_write = private unnamed_addr constant [50 x i8] c"ssize_t bgzf_write(BGZF *, const void *, ssize_t)\00", align 1
@bgzf_check_EOF.magic = internal global [28 x i8] c"\1F\8B\08\04\00\00\00\00\00\FF\06\00BC\02\00\1B\00\03\00\00\00\00\00\00\00\00\00", align 16
@g_magic = internal constant [19 x i8] c"\1F\8B\08\04\00\00\00\00\00\FF\06\00BC\02\00\00\00\00", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"block_length <= BGZF_BLOCK_SIZE\00", align 1
@__PRETTY_FUNCTION__.deflate_block = private unnamed_addr constant [31 x i8] c"int deflate_block(BGZF *, int)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"input_length > 0\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"compressed_length <= BGZF_BLOCK_SIZE\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"compressed_length > 0\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"remaining <= input_length\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @bgzf_open(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 114) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 82) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5, %2
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %8
  %12 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #17
  store i32 114, ptr %12, align 8
  %13 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %14 = getelementptr inbounds %struct.BGZF, ptr %12, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !5
  %15 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %16 = getelementptr inbounds %struct.BGZF, ptr %12, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !12
  br label %50

17:                                               ; preds = %5
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 119) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 87) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20, %17
  %24 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ 0, %23 ]
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !13, !alias.scope !14
  %30 = icmp eq i8 %29, 0
  %31 = add i8 %29, -48
  %32 = icmp ult i8 %31, 10
  %33 = or i1 %30, %32
  %34 = add nuw i64 %27, 1
  br i1 %33, label %35, label %26, !llvm.loop !17

35:                                               ; preds = %26
  %36 = zext nneg i8 %29 to i32
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 47)
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 117) #16, !alias.scope !14
  %39 = icmp eq ptr %38, null
  %40 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #17
  %41 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %42 = getelementptr inbounds %struct.BGZF, ptr %40, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !5
  %43 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %44 = getelementptr inbounds %struct.BGZF, ptr %40, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !12
  %45 = shl nuw nsw i32 %37, 8
  %46 = add nuw nsw i32 %45, 53248
  %47 = and i32 %46, 65280
  %48 = or disjoint i32 %47, 119
  %49 = select i1 %39, i32 %48, i32 119
  store i32 %49, ptr %40, align 8
  br label %50

50:                                               ; preds = %11, %35
  %51 = phi ptr [ %40, %35 ], [ %12, %11 ]
  %52 = phi ptr [ %24, %35 ], [ %9, %11 ]
  %53 = getelementptr inbounds %struct.BGZF, ptr %51, i64 0, i32 8
  store ptr %52, ptr %53, align 8, !tbaa !19
  br label %54

54:                                               ; preds = %50, %23, %8, %20
  %55 = phi ptr [ null, %20 ], [ null, %8 ], [ null, %23 ], [ %51, %50 ]
  ret ptr %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @bgzf_dopen(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 114) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 82) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5, %2
  %9 = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef nonnull @.str) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %8
  %12 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #17
  store i32 114, ptr %12, align 8
  %13 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %14 = getelementptr inbounds %struct.BGZF, ptr %12, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !5
  %15 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %16 = getelementptr inbounds %struct.BGZF, ptr %12, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !12
  br label %50

17:                                               ; preds = %5
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 119) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 87) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20, %17
  %24 = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef nonnull @.str.1) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %54, label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %34, %26 ], [ 0, %23 ]
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !13, !alias.scope !20
  %30 = icmp eq i8 %29, 0
  %31 = add i8 %29, -48
  %32 = icmp ult i8 %31, 10
  %33 = or i1 %30, %32
  %34 = add nuw i64 %27, 1
  br i1 %33, label %35, label %26, !llvm.loop !17

35:                                               ; preds = %26
  %36 = zext nneg i8 %29 to i32
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 47)
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 117) #16, !alias.scope !20
  %39 = icmp eq ptr %38, null
  %40 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #17
  %41 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %42 = getelementptr inbounds %struct.BGZF, ptr %40, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !5
  %43 = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #18
  %44 = getelementptr inbounds %struct.BGZF, ptr %40, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !12
  %45 = shl nuw nsw i32 %37, 8
  %46 = add nuw nsw i32 %45, 53248
  %47 = and i32 %46, 65280
  %48 = or disjoint i32 %47, 119
  %49 = select i1 %39, i32 %48, i32 119
  store i32 %49, ptr %40, align 8
  br label %50

50:                                               ; preds = %11, %35
  %51 = phi ptr [ %40, %35 ], [ %12, %11 ]
  %52 = phi ptr [ %24, %35 ], [ %9, %11 ]
  %53 = getelementptr inbounds %struct.BGZF, ptr %51, i64 0, i32 8
  store ptr %52, ptr %53, align 8, !tbaa !19
  br label %54

54:                                               ; preds = %50, %23, %8, %20
  %55 = phi ptr [ null, %20 ], [ null, %8 ], [ null, %23 ], [ %51, %50 ]
  ret ptr %55
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bgzf_read_block(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.z_stream_s, align 8
  %3 = alloca [18 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call i64 @ftello(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !19
  %8 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %7)
  %9 = and i64 %8, 4294967295
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !23
  br label %100

13:                                               ; preds = %1
  %14 = icmp eq i64 %9, 18
  %15 = load i8, ptr %3, align 16
  %16 = icmp eq i8 %15, 31
  %17 = select i1 %14, i1 %16, i1 false
  %18 = getelementptr inbounds i8, ptr %3, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -117
  %21 = select i1 %17, i1 %20, i1 false
  %22 = getelementptr inbounds i8, ptr %3, i64 2
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 8
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %47

26:                                               ; preds = %13
  %27 = getelementptr inbounds i8, ptr %3, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = and i8 %28, 4
  %30 = icmp ne i8 %29, 0
  %31 = getelementptr inbounds i8, ptr %3, i64 10
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 6
  %34 = select i1 %30, i1 %33, i1 false
  %35 = getelementptr inbounds i8, ptr %3, i64 12
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 66
  %38 = select i1 %34, i1 %37, i1 false
  %39 = getelementptr inbounds i8, ptr %3, i64 13
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 67
  %42 = select i1 %38, i1 %41, i1 false
  %43 = getelementptr inbounds i8, ptr %3, i64 14
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 2
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %50, label %47

47:                                               ; preds = %26, %13
  %48 = load i32, ptr %0, align 8
  %49 = or i32 %48, 131072
  store i32 %49, ptr %0, align 8
  br label %100

50:                                               ; preds = %26
  %51 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 16
  %52 = load i16, ptr %51, align 16
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %55, ptr noundef nonnull align 16 dereferenceable(18) %3, i64 18, i1 false)
  %56 = add nsw i32 %53, -17
  %57 = getelementptr inbounds i8, ptr %55, i64 18
  %58 = sext i32 %56 to i64
  %59 = load ptr, ptr %4, align 8, !tbaa !19
  %60 = tail call i64 @fread(ptr noundef nonnull %57, i64 noundef 1, i64 noundef %58, ptr noundef %59)
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, ptr %0, align 8
  %65 = or i32 %64, 262144
  store i32 %65, ptr %0, align 8
  br label %100

66:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #19
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr %54, align 8, !tbaa !12
  %69 = getelementptr inbounds i8, ptr %68, i64 18
  store ptr %69, ptr %2, align 8, !tbaa !24
  %70 = add nsw i32 %53, -15
  %71 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 1
  store i32 %70, ptr %71, align 8, !tbaa !26
  %72 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !27
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 4
  store i32 65536, ptr %75, align 8, !tbaa !28
  %76 = call i32 @inflateInit2_(ptr noundef nonnull %2, i32 noundef -15, ptr noundef nonnull @.str.5, i32 noundef 112) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = call i32 @inflate(ptr noundef nonnull %2, i32 noundef 4) #19
  %80 = icmp eq i32 %79, 1
  %81 = call i32 @inflateEnd(ptr noundef nonnull %2) #19
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %87, label %84

84:                                               ; preds = %78, %66
  %85 = load i32, ptr %0, align 8
  %86 = or i32 %85, 65536
  store i32 %86, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #19
  br label %100

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.z_stream_s, ptr %2, i64 0, i32 5
  %89 = load i64, ptr %88, align 8, !tbaa !29
  %90 = trunc i64 %89 to i32
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #19
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !23
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  store i32 0, ptr %97, align 4, !tbaa !30
  br label %98

98:                                               ; preds = %96, %92
  %99 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  store i64 %6, ptr %99, align 8, !tbaa !31
  store i32 %90, ptr %93, align 8, !tbaa !23
  br label %100

100:                                              ; preds = %84, %87, %98, %63, %47, %11
  %101 = phi i32 [ 0, %11 ], [ -1, %47 ], [ -1, %63 ], [ 0, %98 ], [ -1, %87 ], [ -1, %84 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #19
  ret i32 %101
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftello(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @bgzf_read(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = icmp slt i64 %2, 1
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 114
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %11, align 4, !tbaa !30
  br label %15

14:                                               ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 368, ptr noundef nonnull @__PRETTY_FUNCTION__.bgzf_read) #20
  unreachable

15:                                               ; preds = %9, %30
  %16 = phi i32 [ %13, %9 ], [ %43, %30 ]
  %17 = phi i64 [ 0, %9 ], [ %45, %30 ]
  %18 = phi ptr [ %1, %9 ], [ %44, %30 ]
  %19 = load i32, ptr %10, align 8, !tbaa !23
  %20 = sub nsw i32 %19, %16
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = tail call i32 @bgzf_read_block(ptr noundef nonnull %0), !range !32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i32, ptr %10, align 8, !tbaa !23
  %27 = load i32, ptr %11, align 4, !tbaa !30
  %28 = sub nsw i32 %26, %27
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %47, label %30

30:                                               ; preds = %15, %25
  %31 = phi i32 [ %27, %25 ], [ %16, %15 ]
  %32 = phi i32 [ %28, %25 ], [ %20, %15 ]
  %33 = sub nsw i64 %2, %17
  %34 = zext nneg i32 %32 to i64
  %35 = tail call i64 @llvm.smin.i64(i64 %33, i64 %34)
  %36 = trunc i64 %35 to i32
  %37 = load ptr, ptr %12, align 8, !tbaa !5
  %38 = sext i32 %31 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = shl i64 %35, 32
  %41 = ashr exact i64 %40, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %39, i64 %41, i1 false)
  %42 = load i32, ptr %11, align 4, !tbaa !30
  %43 = add nsw i32 %42, %36
  store i32 %43, ptr %11, align 4, !tbaa !30
  %44 = getelementptr inbounds i8, ptr %18, i64 %41
  %45 = add nsw i64 %41, %17
  %46 = icmp slt i64 %45, %2
  br i1 %46, label %15, label %47

47:                                               ; preds = %30, %25
  %48 = phi i32 [ %43, %30 ], [ %27, %25 ]
  %49 = phi i64 [ %45, %30 ], [ %17, %25 ]
  %50 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !23
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %55 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !19
  %57 = tail call i64 @ftello(ptr noundef %56)
  %58 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  store i64 %57, ptr %58, align 8, !tbaa !31
  store i32 0, ptr %50, align 8, !tbaa !23
  store i32 0, ptr %54, align 4, !tbaa !30
  br label %59

59:                                               ; preds = %22, %47, %53, %3
  %60 = phi i64 [ 0, %3 ], [ %49, %53 ], [ %49, %47 ], [ -1, %22 ]
  ret i64 %60
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bgzf_flush(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 119
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !30
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  br label %14

13:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 393, ptr noundef nonnull @__PRETTY_FUNCTION__.bgzf_flush) #20
  unreachable

14:                                               ; preds = %9, %27
  %15 = phi i32 [ %7, %9 ], [ %30, %27 ]
  %16 = tail call fastcc i32 @deflate_block(ptr noundef nonnull %0, i32 noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !12
  %20 = zext nneg i32 %16 to i64
  %21 = load ptr, ptr %11, align 8, !tbaa !19
  %22 = tail call i64 @fwrite(ptr noundef %19, i64 noundef 1, i64 noundef %20, ptr noundef %21)
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = or i32 %25, 262144
  store i32 %26, ptr %0, align 8
  br label %32

27:                                               ; preds = %18
  %28 = load i64, ptr %12, align 8, !tbaa !31
  %29 = add nsw i64 %28, %20
  store i64 %29, ptr %12, align 8, !tbaa !31
  %30 = load i32, ptr %6, align 4, !tbaa !30
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %14, label %32

32:                                               ; preds = %27, %14, %5, %24
  %33 = phi i32 [ -1, %24 ], [ 0, %5 ], [ 0, %27 ], [ -1, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deflate_block(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.z_stream_s, align 8
  %4 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = icmp slt i32 %1, 65537
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.deflate_block) #20
  unreachable

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef nonnull align 16 dereferenceable(18) @g_magic, i64 18, i1 false)
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 8
  %10 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds i8, ptr %5, i64 18
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 4
  br label %15

15:                                               ; preds = %40, %8
  %16 = phi i32 [ %1, %8 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %17 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %17, ptr %3, align 8, !tbaa !24
  store i32 %16, ptr %11, align 8, !tbaa !26
  store ptr %12, ptr %13, align 8, !tbaa !27
  store i32 65510, ptr %14, align 8, !tbaa !28
  %18 = load i32, ptr %0, align 8
  %19 = shl i32 %18, 16
  %20 = ashr i32 %19, 24
  %21 = call i32 @deflateInit2_(ptr noundef nonnull %3, i32 noundef %20, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 112) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = call i32 @deflate(ptr noundef nonnull %3, i32 noundef 4) #19
  %25 = call i32 @deflateEnd(ptr noundef nonnull %3) #19
  switch i32 %24, label %37 [
    i32 1, label %29
    i32 0, label %26
  ]

26:                                               ; preds = %23
  %27 = icmp sgt i32 %16, 1024
  br i1 %27, label %40, label %28

28:                                               ; preds = %26
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__.deflate_block) #20
  unreachable

29:                                               ; preds = %23
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %3, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !29
  %34 = trunc i64 %33 to i32
  %35 = icmp slt i32 %34, 65511
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 214, ptr noundef nonnull @__PRETTY_FUNCTION__.deflate_block) #20
  unreachable

37:                                               ; preds = %15, %23, %29
  %38 = load i32, ptr %0, align 8
  %39 = or i32 %38, 65536
  store i32 %39, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  br label %94

40:                                               ; preds = %26
  %41 = add nsw i32 %16, -1024
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  br label %15

42:                                               ; preds = %31
  %43 = add nsw i32 %34, 26
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #19
  %44 = icmp sgt i32 %34, -26
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 218, ptr noundef nonnull @__PRETTY_FUNCTION__.deflate_block) #20
  unreachable

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %5, i64 16
  %48 = trunc i32 %43 to i16
  %49 = add i16 %48, -1
  %50 = trunc i16 %49 to i8
  store i8 %50, ptr %47, align 1, !tbaa !13
  %51 = lshr i16 %49, 8
  %52 = trunc i16 %51 to i8
  %53 = getelementptr inbounds i8, ptr %5, i64 17
  store i8 %52, ptr %53, align 1, !tbaa !13
  %54 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #19
  %55 = and i64 %54, 4294967295
  %56 = load ptr, ptr %10, align 8, !tbaa !5
  %57 = call i64 @crc32(i64 noundef %55, ptr noundef %56, i32 noundef %16) #19
  %58 = zext nneg i32 %43 to i64
  %59 = getelementptr i8, ptr %5, i64 %58
  %60 = getelementptr i8, ptr %59, i64 -8
  %61 = trunc i64 %57 to i8
  store i8 %61, ptr %60, align 1, !tbaa !13
  %62 = lshr i64 %57, 8
  %63 = trunc i64 %62 to i8
  %64 = getelementptr i8, ptr %59, i64 -7
  store i8 %63, ptr %64, align 1, !tbaa !13
  %65 = lshr i64 %57, 16
  %66 = trunc i64 %65 to i8
  %67 = getelementptr i8, ptr %59, i64 -6
  store i8 %66, ptr %67, align 1, !tbaa !13
  %68 = lshr i64 %57, 24
  %69 = trunc i64 %68 to i8
  %70 = getelementptr i8, ptr %59, i64 -5
  store i8 %69, ptr %70, align 1, !tbaa !13
  %71 = getelementptr i8, ptr %59, i64 -4
  %72 = trunc i32 %16 to i8
  store i8 %72, ptr %71, align 1, !tbaa !13
  %73 = lshr i32 %16, 8
  %74 = trunc i32 %73 to i8
  %75 = getelementptr i8, ptr %59, i64 -3
  store i8 %74, ptr %75, align 1, !tbaa !13
  %76 = lshr i32 %16, 16
  %77 = trunc i32 %76 to i8
  %78 = getelementptr i8, ptr %59, i64 -2
  store i8 %77, ptr %78, align 1, !tbaa !13
  %79 = lshr i32 %16, 24
  %80 = trunc i32 %79 to i8
  %81 = getelementptr i8, ptr %59, i64 -1
  store i8 %80, ptr %81, align 1, !tbaa !13
  %82 = sub nsw i32 %1, %16
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %46
  %85 = icmp sgt i32 %82, %16
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 227, ptr noundef nonnull @__PRETTY_FUNCTION__.deflate_block) #20
  unreachable

87:                                               ; preds = %84
  %88 = load ptr, ptr %10, align 8, !tbaa !5
  %89 = zext nneg i32 %16 to i64
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = zext nneg i32 %82 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr align 1 %90, i64 %91, i1 false)
  br label %92

92:                                               ; preds = %87, %46
  %93 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  store i32 %82, ptr %93, align 4, !tbaa !30
  br label %94

94:                                               ; preds = %37, %92
  %95 = phi i32 [ %43, %92 ], [ -1, %37 ]
  ret i32 %95
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bgzf_flush_try(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !30
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, %1
  %7 = icmp sgt i64 %6, 65536
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 119
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  br label %19

18:                                               ; preds = %8
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 393, ptr noundef nonnull @__PRETTY_FUNCTION__.bgzf_flush) #20
  unreachable

19:                                               ; preds = %32, %14
  %20 = phi i32 [ %4, %14 ], [ %35, %32 ]
  %21 = tail call fastcc i32 @deflate_block(ptr noundef nonnull %0, i32 noundef %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 8, !tbaa !12
  %25 = zext nneg i32 %21 to i64
  %26 = load ptr, ptr %16, align 8, !tbaa !19
  %27 = tail call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %25, ptr noundef %26)
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %0, align 8
  %31 = or i32 %30, 262144
  store i32 %31, ptr %0, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load i64, ptr %17, align 8, !tbaa !31
  %34 = add nsw i64 %33, %25
  store i64 %34, ptr %17, align 8, !tbaa !31
  %35 = load i32, ptr %3, align 4, !tbaa !30
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %19, label %37

37:                                               ; preds = %32, %19, %29, %12, %2
  %38 = phi i32 [ -1, %2 ], [ -1, %29 ], [ 0, %12 ], [ -1, %19 ], [ 0, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bgzf_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 119
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %11, align 4, !tbaa !30
  br label %17

16:                                               ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 418, ptr noundef nonnull @__PRETTY_FUNCTION__.bgzf_write) #20
  unreachable

17:                                               ; preds = %9, %60
  %18 = phi i32 [ %15, %9 ], [ %61, %60 ]
  %19 = phi i64 [ 0, %9 ], [ %62, %60 ]
  %20 = phi ptr [ %1, %9 ], [ %34, %60 ]
  %21 = phi i32 [ 0, %9 ], [ %35, %60 ]
  %22 = load ptr, ptr %10, align 8, !tbaa !5
  %23 = sub nsw i32 65536, %18
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %2, %19
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 %24)
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %18 to i64
  %29 = getelementptr inbounds i8, ptr %22, i64 %28
  %30 = shl i64 %26, 32
  %31 = ashr exact i64 %30, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %20, i64 %31, i1 false)
  %32 = load i32, ptr %11, align 4, !tbaa !30
  %33 = add nsw i32 %32, %27
  store i32 %33, ptr %11, align 4, !tbaa !30
  %34 = getelementptr inbounds i8, ptr %20, i64 %31
  %35 = add nsw i32 %21, %27
  %36 = icmp eq i32 %33, 65536
  br i1 %36, label %37, label %60

37:                                               ; preds = %17
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 119
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 393, ptr noundef nonnull @__PRETTY_FUNCTION__.bgzf_flush) #20
  unreachable

42:                                               ; preds = %37, %55
  %43 = phi i32 [ %58, %55 ], [ 65536, %37 ]
  %44 = tail call fastcc i32 @deflate_block(ptr noundef nonnull %0, i32 noundef %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %12, align 8, !tbaa !12
  %48 = zext nneg i32 %44 to i64
  %49 = load ptr, ptr %13, align 8, !tbaa !19
  %50 = tail call i64 @fwrite(ptr noundef %47, i64 noundef 1, i64 noundef %48, ptr noundef %49)
  %51 = icmp eq i64 %50, %48
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %0, align 8
  %54 = or i32 %53, 262144
  store i32 %54, ptr %0, align 8
  br label %64

55:                                               ; preds = %46
  %56 = load i64, ptr %14, align 8, !tbaa !31
  %57 = add nsw i64 %56, %48
  store i64 %57, ptr %14, align 8, !tbaa !31
  %58 = load i32, ptr %11, align 4, !tbaa !30
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %42, label %60

60:                                               ; preds = %55, %17
  %61 = phi i32 [ %33, %17 ], [ %58, %55 ]
  %62 = sext i32 %35 to i64
  %63 = icmp slt i64 %62, %2
  br i1 %63, label %17, label %64

64:                                               ; preds = %60, %42, %7, %52
  %65 = phi i32 [ %35, %52 ], [ 0, %7 ], [ %35, %42 ], [ %35, %60 ]
  %66 = sext i32 %65 to i64
  ret i64 %66
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bgzf_close(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %57, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 119
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !30
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %28, %11
  %16 = phi i32 [ %9, %11 ], [ %31, %28 ]
  %17 = tail call fastcc i32 @deflate_block(ptr noundef nonnull %0, i32 noundef %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %12, align 8, !tbaa !12
  %21 = zext nneg i32 %17 to i64
  %22 = load ptr, ptr %13, align 8, !tbaa !19
  %23 = tail call i64 @fwrite(ptr noundef %20, i64 noundef 1, i64 noundef %21, ptr noundef %22)
  %24 = icmp eq i64 %23, %21
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %0, align 8
  %27 = or i32 %26, 262144
  store i32 %27, ptr %0, align 8
  br label %57

28:                                               ; preds = %19
  %29 = load i64, ptr %14, align 8, !tbaa !31
  %30 = add nsw i64 %29, %21
  store i64 %30, ptr %14, align 8, !tbaa !31
  %31 = load i32, ptr %8, align 4, !tbaa !30
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %15, label %33

33:                                               ; preds = %28, %7
  %34 = tail call fastcc i32 @deflate_block(ptr noundef nonnull %0, i32 noundef 0)
  %35 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = tail call i64 @fwrite(ptr noundef %36, i64 noundef 1, i64 noundef %37, ptr noundef %39)
  %41 = load ptr, ptr %38, align 8, !tbaa !19
  %42 = tail call i32 @fflush(ptr noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %0, align 8
  %46 = or i32 %45, 262144
  store i32 %46, ptr %0, align 8
  br label %57

47:                                               ; preds = %33, %3
  %48 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = tail call i32 @fclose(ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  tail call void @free(ptr noundef %54) #19
  %55 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  tail call void @free(ptr noundef %56) #19
  tail call void @free(ptr noundef nonnull %0) #19
  br label %57

57:                                               ; preds = %15, %25, %47, %1, %52, %44
  %58 = phi i32 [ -1, %44 ], [ 0, %52 ], [ -1, %1 ], [ -1, %47 ], [ -1, %25 ], [ -1, %15 ]
  ret i32 %58
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @bgzf_set_cache_size(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !33
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bgzf_check_EOF(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [28 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = tail call i64 @ftello(ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !19
  %7 = tail call i32 @fseeko(ptr noundef %6, i64 noundef -28, i32 noundef 2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !19
  %11 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 28, ptr noundef %10)
  %12 = load ptr, ptr %3, align 8, !tbaa !19
  %13 = tail call i32 @fseeko(ptr noundef %12, i64 noundef %5, i32 noundef 0)
  %14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(28) @bgzf_check_EOF.magic, ptr noundef nonnull dereferenceable(28) %2, i64 28)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %1, %9
  %18 = phi i32 [ %16, %9 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #19
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @bgzf_seek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, 114
  %7 = icmp ne i32 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = or i32 %4, 524288
  store i32 %10, ptr %0, align 8
  br label %26

11:                                               ; preds = %3
  %12 = ashr i64 %1, 16
  %13 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call i32 @fseeko(ptr noundef %14, i64 noundef %12, i32 noundef 0)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, ptr %0, align 8
  %19 = or i32 %18, 262144
  store i32 %19, ptr %0, align 8
  br label %26

20:                                               ; preds = %11
  %21 = trunc i64 %1 to i32
  %22 = and i32 %21, 65535
  %23 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  store i32 0, ptr %23, align 8, !tbaa !23
  %24 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  store i64 %12, ptr %24, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  store i32 %22, ptr %25, align 4, !tbaa !30
  br label %26

26:                                               ; preds = %20, %17, %9
  %27 = phi i64 [ -1, %9 ], [ -1, %17 ], [ 0, %20 ]
  ret i64 %27
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bgzf_is_bgzf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %3)
  %7 = tail call i32 @fclose(ptr noundef nonnull %3)
  %8 = and i64 %6, 4294967295
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @g_magic, ptr noundef nonnull dereferenceable(16) %2, i64 16)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %5, %1, %10
  %15 = phi i32 [ %13, %10 ], [ 0, %1 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bgzf_getc(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !30
  %4 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @bgzf_read_block(ptr noundef nonnull %0), !range !32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 8, !tbaa !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !tbaa !30
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i32 [ %11, %13 ], [ %5, %1 ]
  %17 = phi i32 [ %14, %13 ], [ %3, %1 ]
  %18 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = add nsw i32 %17, 1
  store i32 %20, ptr %2, align 4, !tbaa !30
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %20, %16
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = tail call i64 @ftello(ptr noundef %28)
  %30 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  store i64 %29, ptr %30, align 8, !tbaa !31
  store i32 0, ptr %2, align 4, !tbaa !30
  store i32 0, ptr %4, align 8, !tbaa !23
  br label %31

31:                                               ; preds = %15, %26, %10, %7
  %32 = phi i32 [ -2, %7 ], [ -1, %10 ], [ %24, %26 ], [ %24, %15 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bgzf_getline(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  store i64 0, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 1
  %9 = getelementptr inbounds %struct.__kstring_t, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.BGZF, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %6, align 4, !tbaa !30
  %13 = load i32, ptr %7, align 8, !tbaa !23
  br label %14

14:                                               ; preds = %98, %3
  %15 = phi i32 [ %99, %98 ], [ %13, %3 ]
  %16 = phi i32 [ %100, %98 ], [ %12, %3 ]
  %17 = icmp slt i32 %16, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @bgzf_read_block(ptr noundef nonnull %0), !range !32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %103

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 8, !tbaa !23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %103, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %6, align 4, !tbaa !30
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %22, %24 ], [ %15, %14 ]
  %28 = phi i32 [ %25, %24 ], [ %16, %14 ]
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = sext i32 %28 to i64
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %49, label %42

37:                                               ; preds = %42
  %38 = getelementptr inbounds i8, ptr %5, i64 %44
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %47, label %42, !llvm.loop !36

42:                                               ; preds = %30, %37
  %43 = phi i64 [ %44, %37 ], [ %31, %30 ]
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %27, %45
  br i1 %46, label %53, label %37, !llvm.loop !36

47:                                               ; preds = %37
  %48 = icmp slt i64 %44, %32
  br label %49

49:                                               ; preds = %47, %30
  %50 = phi i64 [ %31, %30 ], [ %44, %47 ]
  %51 = phi i1 [ true, %30 ], [ %48, %47 ]
  %52 = trunc i64 %50 to i32
  br label %55

53:                                               ; preds = %42
  %54 = icmp slt i64 %44, %32
  br label %55

55:                                               ; preds = %53, %49, %26
  %56 = phi i32 [ %28, %26 ], [ %52, %49 ], [ %27, %53 ]
  %57 = phi i1 [ false, %26 ], [ %51, %49 ], [ %54, %53 ]
  %58 = sub nsw i32 %56, %28
  %59 = load i64, ptr %2, align 8, !tbaa !34
  %60 = sext i32 %58 to i64
  %61 = add nsw i64 %60, 1
  %62 = add i64 %61, %59
  %63 = load i64, ptr %8, align 8, !tbaa !37
  %64 = icmp ult i64 %62, %63
  %65 = load ptr, ptr %9, align 8, !tbaa !38
  br i1 %64, label %81, label %66

66:                                               ; preds = %55
  %67 = lshr i64 %62, 1
  %68 = or i64 %67, %62
  %69 = lshr i64 %68, 2
  %70 = or i64 %69, %68
  %71 = lshr i64 %70, 4
  %72 = or i64 %71, %70
  %73 = lshr i64 %72, 8
  %74 = or i64 %73, %72
  %75 = lshr i64 %74, 16
  %76 = or i64 %75, %74
  %77 = add i64 %76, 1
  store i64 %77, ptr %8, align 8, !tbaa !37
  %78 = tail call ptr @realloc(ptr noundef %65, i64 noundef %77) #21
  store ptr %78, ptr %9, align 8, !tbaa !38
  %79 = load i64, ptr %2, align 8, !tbaa !34
  %80 = load i32, ptr %6, align 4, !tbaa !30
  br label %81

81:                                               ; preds = %66, %55
  %82 = phi i32 [ %80, %66 ], [ %28, %55 ]
  %83 = phi i64 [ %79, %66 ], [ %59, %55 ]
  %84 = phi ptr [ %78, %66 ], [ %65, %55 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 %83
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds i8, ptr %5, i64 %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %85, ptr align 1 %87, i64 %60, i1 false)
  %88 = load i64, ptr %2, align 8, !tbaa !34
  %89 = add i64 %88, %60
  store i64 %89, ptr %2, align 8, !tbaa !34
  %90 = add nsw i32 %58, 1
  %91 = load i32, ptr %6, align 4, !tbaa !30
  %92 = add nsw i32 %90, %91
  store i32 %92, ptr %6, align 4, !tbaa !30
  %93 = load i32, ptr %7, align 8, !tbaa !23
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %81
  %96 = load ptr, ptr %10, align 8, !tbaa !19
  %97 = tail call i64 @ftello(ptr noundef %96)
  store i64 %97, ptr %11, align 8, !tbaa !31
  store i32 0, ptr %6, align 4, !tbaa !30
  store i32 0, ptr %7, align 8, !tbaa !23
  br label %98

98:                                               ; preds = %81, %95
  %99 = phi i32 [ %93, %81 ], [ 0, %95 ]
  %100 = phi i32 [ %92, %81 ], [ 0, %95 ]
  br i1 %57, label %101, label %14, !llvm.loop !39

101:                                              ; preds = %98
  %102 = load i64, ptr %2, align 8, !tbaa !34
  br label %107

103:                                              ; preds = %21, %18
  %104 = phi i32 [ -2, %18 ], [ -1, %21 ]
  %105 = load i64, ptr %2, align 8, !tbaa !34
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101, %103
  %108 = phi i64 [ %102, %101 ], [ %105, %103 ]
  %109 = load ptr, ptr %9, align 8, !tbaa !38
  %110 = getelementptr inbounds i8, ptr %109, i64 %108
  store i8 0, ptr %110, align 1, !tbaa !13
  %111 = load i64, ptr %2, align 8, !tbaa !34
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %103, %107
  %114 = phi i32 [ %112, %107 ], [ %104, %103 ]
  ret i32 %114
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #12

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #12

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !11, i64 24}
!6 = !{!"", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !11, i64 32}
!13 = !{!8, !8, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"mode2level: argument 0"}
!16 = distinct !{!16, !"mode2level"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !11, i64 48}
!20 = !{!21}
!21 = distinct !{!21, !22, !"mode2level: argument 0"}
!22 = distinct !{!22, !"mode2level"}
!23 = !{!6, !7, i64 8}
!24 = !{!25, !11, i64 0}
!25 = !{!"z_stream_s", !11, i64 0, !7, i64 8, !10, i64 16, !11, i64 24, !7, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !10, i64 96, !10, i64 104}
!26 = !{!25, !7, i64 8}
!27 = !{!25, !11, i64 24}
!28 = !{!25, !7, i64 32}
!29 = !{!25, !10, i64 40}
!30 = !{!6, !7, i64 12}
!31 = !{!6, !10, i64 16}
!32 = !{i32 -1, i32 1}
!33 = !{!6, !7, i64 4}
!34 = !{!35, !10, i64 0}
!35 = !{!"__kstring_t", !10, i64 0, !10, i64 8, !11, i64 16}
!36 = distinct !{!36, !18}
!37 = !{!35, !10, i64 8}
!38 = !{!35, !11, i64 16}
!39 = distinct !{!39, !18}
