; ModuleID = 'corpus_src/zlib/inflate.c'
source_filename = "corpus_src/zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %24, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %27, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = and i32 %29, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %33, ptr %34, align 8, !tbaa !21
  br label %35

35:                                               ; preds = %31, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %36 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %37, align 4, !tbaa !23
  %38 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %38, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %39, align 4, !tbaa !25
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %40, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %41, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %42, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %43, ptr %44, align 8, !tbaa !29
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %43, ptr %45, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %43, ptr %46, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %48, align 4, !tbaa !33
  br label %49

49:                                               ; preds = %11, %15, %1, %3, %7, %18, %35
  %50 = phi i32 [ 0, %35 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 11
  store i32 0, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 12
  store i32 0, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 13
  store i32 0, ptr %26, align 4, !tbaa !36
  %27 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 8
  store i64 0, ptr %27, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %30, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %32 = load i32, ptr %31, align 8, !tbaa !20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = and i32 %32, 1
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %36, ptr %37, align 8, !tbaa !21
  br label %38

38:                                               ; preds = %34, %23
  store i32 16180, ptr %19, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 2
  store i32 0, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 4
  store i32 0, ptr %40, align 4, !tbaa !23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 5
  store i32 -1, ptr %41, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 6
  store i32 32768, ptr %42, align 4, !tbaa !25
  %43 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 9
  store ptr null, ptr %43, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 15
  store i64 0, ptr %44, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  store i32 0, ptr %45, align 8, !tbaa !28
  %46 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %47 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  store ptr %46, ptr %47, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 21
  store ptr %46, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 20
  store ptr %46, ptr %49, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 32
  store i32 1, ptr %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  store i32 -1, ptr %51, align 4, !tbaa !33
  br label %52

52:                                               ; preds = %11, %15, %1, %3, %7, %38, %18
  %53 = phi i32 [ -2, %18 ], [ 0, %38 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateReset2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %100

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %100

24:                                               ; preds = %19
  %25 = icmp slt i32 %1, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp ult i32 %1, -15
  br i1 %27, label %100, label %28

28:                                               ; preds = %26
  %29 = sub nsw i32 0, %1
  br label %36

30:                                               ; preds = %24
  %31 = lshr i32 %1, 4
  %32 = add nuw nsw i32 %31, 5
  %33 = icmp ult i32 %1, 48
  %34 = and i32 %1, 15
  %35 = select i1 %33, i32 %34, i32 %1
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi i32 [ %29, %28 ], [ %35, %30 ]
  %38 = phi i32 [ 0, %28 ], [ %32, %30 ]
  switch i32 %37, label %100 [
    i32 15, label %39
    i32 14, label %39
    i32 13, label %39
    i32 12, label %39
    i32 11, label %39
    i32 10, label %39
    i32 9, label %39
    i32 8, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36
  %40 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !38
  %46 = icmp eq i32 %45, %37
  br i1 %46, label %47, label %50

47:                                               ; preds = %39, %43
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %48, align 8, !tbaa !20
  %49 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %49, align 8, !tbaa !38
  br label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  tail call void %10(ptr noundef %52, ptr noundef nonnull %41) #9
  store ptr null, ptr %40, align 8, !tbaa !37
  %53 = load ptr, ptr %5, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %38, ptr %55, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  store i32 %37, ptr %56, align 8, !tbaa !38
  br i1 %54, label %100, label %57

57:                                               ; preds = %47, %50
  %58 = load ptr, ptr %9, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %61, align 8, !tbaa !14
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !16
  %69 = add i32 %68, -16180
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 11
  store i32 0, ptr %72, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 12
  store i32 0, ptr %73, align 8, !tbaa !35
  %74 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 13
  store i32 0, ptr %74, align 4, !tbaa !36
  %75 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 8
  store i64 0, ptr %75, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %77, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %78, align 8, !tbaa !19
  %79 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %80 = load i32, ptr %79, align 8, !tbaa !20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = and i32 %80, 1
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %84, ptr %85, align 8, !tbaa !21
  br label %86

86:                                               ; preds = %82, %71
  store i32 16180, ptr %67, align 8, !tbaa !16
  %87 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 2
  store i32 0, ptr %87, align 4, !tbaa !22
  %88 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 4
  store i32 0, ptr %88, align 4, !tbaa !23
  %89 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 5
  store i32 -1, ptr %89, align 8, !tbaa !24
  %90 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 6
  store i32 32768, ptr %90, align 4, !tbaa !25
  %91 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 9
  store ptr null, ptr %91, align 8, !tbaa !26
  %92 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 15
  store i64 0, ptr %92, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 16
  store i32 0, ptr %93, align 8, !tbaa !28
  %94 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 31
  %95 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 28
  store ptr %94, ptr %95, align 8, !tbaa !29
  %96 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 21
  store ptr %94, ptr %96, align 8, !tbaa !30
  %97 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 20
  store ptr %94, ptr %97, align 8, !tbaa !31
  %98 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 32
  store i32 1, ptr %98, align 8, !tbaa !32
  %99 = getelementptr inbounds %struct.inflate_state, ptr %61, i64 0, i32 33
  store i32 -1, ptr %99, align 4, !tbaa !33
  br label %100

100:                                              ; preds = %12, %16, %2, %4, %8, %86, %66, %63, %60, %57, %50, %36, %26, %19
  %101 = phi i32 [ -2, %19 ], [ -2, %26 ], [ -2, %36 ], [ -2, %66 ], [ 0, %86 ], [ -2, %57 ], [ -2, %50 ], [ -2, %63 ], [ -2, %60 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !40
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %40, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %19, align 8, !tbaa !39
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ @zcalloc, %18 ], [ %16, %13 ]
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr @zcfree, ptr %22, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = tail call ptr %21(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %29, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %32, i8 0, i64 7152, i1 false)
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %33, align 8, !tbaa !13
  store ptr %0, ptr %29, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 1
  store i32 16180, ptr %34, align 8, !tbaa !16
  %35 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef %1), !range !42
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %22, align 8, !tbaa !12
  %39 = load ptr, ptr %27, align 8, !tbaa !39
  tail call void %38(ptr noundef %39, ptr noundef nonnull %29) #9
  store ptr null, ptr %33, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %31, %37, %26, %11, %4, %6
  %41 = phi i32 [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %26 ], [ %35, %37 ], [ 0, %31 ]
  ret i32 %41
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateInit_(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !40
  %7 = icmp ne i8 %6, 49
  %8 = icmp ne i32 %2, 112
  %9 = or i1 %8, %7
  br i1 %9, label %38, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %0, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store ptr @zcalloc, ptr %14, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ @zcalloc, %17 ], [ %15, %12 ]
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr @zcfree, ptr %21, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !39
  %28 = tail call ptr %20(ptr noundef %27, i32 noundef 1, i32 noundef 7160) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %28, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %31, i8 0, i64 7152, i1 false)
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %28, ptr %32, align 8, !tbaa !13
  store ptr %0, ptr %28, align 8, !tbaa !14
  store i32 16180, ptr %31, align 8, !tbaa !16
  %33 = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef 15), !range !42
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %21, align 8, !tbaa !12
  %37 = load ptr, ptr %26, align 8, !tbaa !39
  tail call void %36(ptr noundef %37, ptr noundef nonnull %28) #9
  store ptr null, ptr %32, align 8, !tbaa !13
  br label %38

38:                                               ; preds = %3, %5, %10, %25, %30, %35
  %39 = phi i32 [ -6, %5 ], [ -6, %3 ], [ -2, %10 ], [ -4, %25 ], [ %33, %35 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  store i64 0, ptr %30, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  store i32 0, ptr %31, align 8, !tbaa !28
  br label %51

32:                                               ; preds = %27
  %33 = icmp ugt i32 %1, 16
  br i1 %33, label %51, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !28
  %37 = add i32 %36, %1
  %38 = icmp ugt i32 %37, 32
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %1 to i64
  %41 = shl nsw i64 -1, %40
  %42 = trunc i64 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %43, %2
  %45 = zext nneg i32 %44 to i64
  %46 = zext nneg i32 %36 to i64
  %47 = shl i64 %45, %46
  %48 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %49 = load i64, ptr %48, align 8, !tbaa !27
  %50 = add i64 %49, %47
  store i64 %50, ptr %48, align 8, !tbaa !27
  store i32 %37, ptr %35, align 8, !tbaa !28
  br label %51

51:                                               ; preds = %13, %17, %3, %5, %9, %32, %34, %25, %20, %39, %29
  %52 = phi i32 [ 0, %29 ], [ 0, %39 ], [ -2, %20 ], [ 0, %25 ], [ -2, %34 ], [ -2, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %2286, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %2286, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %2286, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %2286, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %2286

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %2286

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %2286, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !45
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %2286

36:                                               ; preds = %32, %29
  %37 = icmp eq i32 %22, 16191
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %38
  %40 = phi i32 [ %22, %36 ], [ 16192, %38 ]
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !45
  %45 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 15
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 8
  %52 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 5
  %53 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 17
  %57 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 25
  %58 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 26
  %59 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 24
  %60 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 27
  %61 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 31
  %62 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 28
  %63 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 21
  %64 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 20
  %65 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 22
  %66 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29
  %67 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 30
  %68 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 256
  %69 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 23
  %70 = icmp eq i32 %1, 6
  %71 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 33
  %72 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 19
  %73 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 34
  %74 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 18
  %75 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %76 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 32
  %77 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %78 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %79 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 11
  %80 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  %81 = add i32 %1, -5
  %82 = icmp ult i32 %81, 2
  %83 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 2
  %84 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 9
  %85 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %86 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %87 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %88 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 10
  %89 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 6
  br label %90

90:                                               ; preds = %2095, %39
  %91 = phi i32 [ %40, %39 ], [ %2104, %2095 ]
  %92 = phi ptr [ %30, %39 ], [ %2096, %2095 ]
  %93 = phi ptr [ %27, %39 ], [ %2097, %2095 ]
  %94 = phi i32 [ %44, %39 ], [ %2098, %2095 ]
  %95 = phi i32 [ %42, %39 ], [ %2099, %2095 ]
  %96 = phi i64 [ %46, %39 ], [ %2100, %2095 ]
  %97 = phi i32 [ %48, %39 ], [ %2101, %2095 ]
  %98 = phi i32 [ %42, %39 ], [ %2102, %2095 ]
  %99 = phi i32 [ 0, %39 ], [ %2103, %2095 ]
  %100 = ptrtoint ptr %93 to i64
  switch i32 %91, label %2286 [
    i32 16180, label %124
    i32 16181, label %119
    i32 16182, label %273
    i32 16183, label %349
    i32 16184, label %403
    i32 16185, label %476
    i32 16186, label %536
    i32 16187, label %596
    i32 16188, label %656
    i32 16189, label %114
    i32 16190, label %768
    i32 16191, label %778
    i32 16192, label %783
    i32 16193, label %828
    i32 16194, label %897
    i32 16195, label %902
    i32 16196, label %109
    i32 16197, label %968
    i32 16198, label %105
    i32 16199, label %1365
    i32 16200, label %1371
    i32 16201, label %103
    i32 16202, label %1581
    i32 16203, label %101
    i32 16204, label %1770
    i32 16205, label %1903
    i32 16206, label %1910
    i32 16207, label %107
    i32 16208, label %2201
    i32 16209, label %2202
    i32 16210, label %2285
  ]

101:                                              ; preds = %90
  %102 = load i32, ptr %72, align 4, !tbaa !47
  br label %1723

103:                                              ; preds = %90
  %104 = load i32, ptr %72, align 4, !tbaa !47
  br label %1531

105:                                              ; preds = %90
  %106 = load i32, ptr %60, align 4, !tbaa !48
  br label %1039

107:                                              ; preds = %90
  %108 = load i32, ptr %49, align 8, !tbaa !20
  br label %2015

109:                                              ; preds = %90
  %110 = icmp ult i32 %97, 14
  br i1 %110, label %111, label %947

111:                                              ; preds = %109
  %112 = zext nneg i32 %97 to i64
  %113 = icmp eq i32 %94, 0
  br i1 %113, label %2151, label %922

114:                                              ; preds = %90
  %115 = icmp ult i32 %97, 32
  br i1 %115, label %116, label %761

116:                                              ; preds = %114
  %117 = zext nneg i32 %97 to i64
  %118 = icmp eq i32 %94, 0
  br i1 %118, label %2141, label %721

119:                                              ; preds = %90
  %120 = icmp ult i32 %97, 16
  br i1 %120, label %121, label %240

121:                                              ; preds = %119
  %122 = zext nneg i32 %97 to i64
  %123 = icmp eq i32 %94, 0
  br i1 %123, label %2136, label %215

124:                                              ; preds = %90
  %125 = load i32, ptr %49, align 8, !tbaa !20
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = icmp ult i32 %97, 16
  br i1 %128, label %129, label %158

129:                                              ; preds = %127
  %130 = zext nneg i32 %97 to i64
  %131 = icmp eq i32 %94, 0
  br i1 %131, label %2111, label %133

132:                                              ; preds = %124
  store i32 16192, ptr %21, align 8, !tbaa !16
  br label %2095

133:                                              ; preds = %129
  %134 = add i32 %94, -1
  %135 = getelementptr inbounds i8, ptr %92, i64 1
  %136 = load i8, ptr %92, align 1, !tbaa !40
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, %130
  %139 = add i64 %138, %96
  %140 = add nuw nsw i64 %130, 8
  %141 = icmp ult i32 %97, 8
  br i1 %141, label %142, label %152, !llvm.loop !49

142:                                              ; preds = %133
  %143 = icmp eq i32 %134, 0
  br i1 %143, label %2111, label %144

144:                                              ; preds = %142
  %145 = add i32 %94, -2
  %146 = getelementptr inbounds i8, ptr %92, i64 2
  %147 = load i8, ptr %135, align 1, !tbaa !40
  %148 = zext i8 %147 to i64
  %149 = shl nuw nsw i64 %148, %140
  %150 = add i64 %149, %139
  %151 = or disjoint i64 %130, 16
  br label %152

152:                                              ; preds = %144, %133
  %153 = phi i32 [ %134, %133 ], [ %145, %144 ]
  %154 = phi ptr [ %135, %133 ], [ %146, %144 ]
  %155 = phi i64 [ %139, %133 ], [ %150, %144 ]
  %156 = phi i64 [ %140, %133 ], [ %151, %144 ]
  %157 = trunc i64 %156 to i32
  br label %158

158:                                              ; preds = %152, %127
  %159 = phi ptr [ %92, %127 ], [ %154, %152 ]
  %160 = phi i32 [ %94, %127 ], [ %153, %152 ]
  %161 = phi i64 [ %96, %127 ], [ %155, %152 ]
  %162 = phi i32 [ %97, %127 ], [ %157, %152 ]
  %163 = and i32 %125, 2
  %164 = icmp ne i32 %163, 0
  %165 = icmp eq i64 %161, 35615
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load i32, ptr %88, align 8, !tbaa !38
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 15, ptr %88, align 8, !tbaa !38
  br label %171

171:                                              ; preds = %170, %167
  %172 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %172, ptr %53, align 8, !tbaa !51
  store i8 31, ptr %3, align 1, !tbaa !40
  store i8 -117, ptr %85, align 1, !tbaa !40
  %173 = call i64 @crc32(i64 noundef %172, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %173, ptr %53, align 8, !tbaa !51
  store i32 16181, ptr %21, align 8, !tbaa !16
  br label %2095

174:                                              ; preds = %158
  %175 = load ptr, ptr %84, align 8, !tbaa !26
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.gz_header_s, ptr %175, i64 0, i32 12
  store i32 -1, ptr %178, align 8, !tbaa !52
  br label %179

179:                                              ; preds = %177, %174
  %180 = and i32 %125, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = shl i64 %161, 8
  %184 = and i64 %183, 65280
  %185 = lshr i64 %161, 8
  %186 = add nuw nsw i64 %184, %185
  %187 = urem i64 %186, 31
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182, %179
  store ptr @.str.1, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

190:                                              ; preds = %182
  %191 = and i64 %161, 15
  %192 = icmp eq i64 %191, 8
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  store ptr @.str.2, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

194:                                              ; preds = %190
  %195 = lshr i64 %161, 4
  %196 = add i32 %162, -4
  %197 = trunc i64 %195 to i32
  %198 = and i32 %197, 15
  %199 = add nuw nsw i32 %198, 8
  %200 = load i32, ptr %88, align 8, !tbaa !38
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  store i32 %199, ptr %88, align 8, !tbaa !38
  br label %203

203:                                              ; preds = %202, %194
  %204 = phi i32 [ %199, %202 ], [ %200, %194 ]
  %205 = icmp ugt i32 %198, 7
  %206 = icmp ugt i32 %199, %204
  %207 = select i1 %205, i1 true, i1 %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store ptr @.str.3, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

209:                                              ; preds = %203
  %210 = shl nuw nsw i32 256, %198
  store i32 %210, ptr %89, align 4, !tbaa !25
  store i32 0, ptr %52, align 8, !tbaa !24
  %211 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %211, ptr %53, align 8, !tbaa !51
  store i64 %211, ptr %54, align 8, !tbaa !21
  %212 = and i64 %161, 8192
  %213 = icmp eq i64 %212, 0
  %214 = select i1 %213, i32 16191, i32 16189
  store i32 %214, ptr %21, align 8, !tbaa !16
  br label %2095

215:                                              ; preds = %121
  %216 = add i32 %94, -1
  %217 = getelementptr inbounds i8, ptr %92, i64 1
  %218 = load i8, ptr %92, align 1, !tbaa !40
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, %122
  %221 = add i64 %220, %96
  %222 = add nuw nsw i64 %122, 8
  %223 = icmp ult i32 %97, 8
  br i1 %223, label %224, label %234, !llvm.loop !54

224:                                              ; preds = %215
  %225 = icmp eq i32 %216, 0
  br i1 %225, label %2136, label %226

226:                                              ; preds = %224
  %227 = add i32 %94, -2
  %228 = getelementptr inbounds i8, ptr %92, i64 2
  %229 = load i8, ptr %217, align 1, !tbaa !40
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, %222
  %232 = add i64 %231, %221
  %233 = or disjoint i64 %122, 16
  br label %234

234:                                              ; preds = %226, %215
  %235 = phi i32 [ %216, %215 ], [ %227, %226 ]
  %236 = phi ptr [ %217, %215 ], [ %228, %226 ]
  %237 = phi i64 [ %221, %215 ], [ %232, %226 ]
  %238 = phi i64 [ %222, %215 ], [ %233, %226 ]
  %239 = trunc i64 %238 to i32
  br label %240

240:                                              ; preds = %234, %119
  %241 = phi ptr [ %92, %119 ], [ %236, %234 ]
  %242 = phi i32 [ %94, %119 ], [ %235, %234 ]
  %243 = phi i64 [ %96, %119 ], [ %237, %234 ]
  %244 = phi i32 [ %97, %119 ], [ %239, %234 ]
  %245 = trunc i64 %243 to i32
  store i32 %245, ptr %52, align 8, !tbaa !24
  %246 = and i32 %245, 255
  %247 = icmp eq i32 %246, 8
  br i1 %247, label %249, label %248

248:                                              ; preds = %240
  store ptr @.str.2, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

249:                                              ; preds = %240
  %250 = and i32 %245, 57344
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  store ptr @.str.4, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

253:                                              ; preds = %249
  %254 = load ptr, ptr %84, align 8, !tbaa !26
  %255 = icmp eq ptr %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = lshr i32 %245, 8
  %258 = and i32 %257, 1
  store i32 %258, ptr %254, align 8, !tbaa !55
  br label %259

259:                                              ; preds = %256, %253
  %260 = and i32 %245, 512
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %49, align 8, !tbaa !20
  %264 = and i32 %263, 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %262
  %267 = trunc i64 %243 to i8
  store i8 %267, ptr %3, align 1, !tbaa !40
  %268 = lshr i64 %243, 8
  %269 = trunc i64 %268 to i8
  store i8 %269, ptr %85, align 1, !tbaa !40
  %270 = load i64, ptr %53, align 8, !tbaa !51
  %271 = call i64 @crc32(i64 noundef %270, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %271, ptr %53, align 8, !tbaa !51
  br label %272

272:                                              ; preds = %266, %262, %259
  store i32 16182, ptr %21, align 8, !tbaa !16
  br label %275

273:                                              ; preds = %90
  %274 = icmp ult i32 %97, 32
  br i1 %274, label %275, label %322

275:                                              ; preds = %272, %273
  %276 = phi i32 [ 0, %272 ], [ %97, %273 ]
  %277 = phi i64 [ 0, %272 ], [ %96, %273 ]
  %278 = phi i32 [ %242, %272 ], [ %94, %273 ]
  %279 = phi ptr [ %241, %272 ], [ %92, %273 ]
  %280 = zext nneg i32 %276 to i64
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %2131, label %282

282:                                              ; preds = %275
  %283 = add i32 %278, -1
  %284 = getelementptr inbounds i8, ptr %279, i64 1
  %285 = load i8, ptr %279, align 1, !tbaa !40
  %286 = zext i8 %285 to i64
  %287 = shl nuw nsw i64 %286, %280
  %288 = add i64 %287, %277
  %289 = add nuw nsw i64 %280, 8
  %290 = icmp ult i32 %276, 24
  br i1 %290, label %291, label %322, !llvm.loop !56

291:                                              ; preds = %282
  %292 = icmp eq i32 %283, 0
  br i1 %292, label %2131, label %293

293:                                              ; preds = %291
  %294 = add i32 %278, -2
  %295 = getelementptr inbounds i8, ptr %279, i64 2
  %296 = load i8, ptr %284, align 1, !tbaa !40
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, %289
  %299 = add i64 %298, %288
  %300 = add nuw nsw i64 %280, 16
  %301 = icmp ult i32 %276, 16
  br i1 %301, label %302, label %322, !llvm.loop !56

302:                                              ; preds = %293
  %303 = icmp eq i32 %294, 0
  br i1 %303, label %2131, label %304

304:                                              ; preds = %302
  %305 = add i32 %278, -3
  %306 = getelementptr inbounds i8, ptr %279, i64 3
  %307 = load i8, ptr %295, align 1, !tbaa !40
  %308 = zext i8 %307 to i64
  %309 = shl nuw nsw i64 %308, %300
  %310 = add i64 %309, %299
  %311 = add nuw nsw i64 %280, 24
  %312 = icmp ult i32 %276, 8
  br i1 %312, label %313, label %322, !llvm.loop !56

313:                                              ; preds = %304
  %314 = icmp eq i32 %305, 0
  br i1 %314, label %2131, label %315

315:                                              ; preds = %313
  %316 = add i32 %278, -4
  %317 = getelementptr inbounds i8, ptr %279, i64 4
  %318 = load i8, ptr %306, align 1, !tbaa !40
  %319 = zext i8 %318 to i64
  %320 = shl nuw nsw i64 %319, %311
  %321 = add i64 %320, %310
  br label %322

322:                                              ; preds = %282, %293, %304, %315, %273
  %323 = phi ptr [ %92, %273 ], [ %284, %282 ], [ %295, %293 ], [ %306, %304 ], [ %317, %315 ]
  %324 = phi i32 [ %94, %273 ], [ %283, %282 ], [ %294, %293 ], [ %305, %304 ], [ %316, %315 ]
  %325 = phi i64 [ %96, %273 ], [ %288, %282 ], [ %299, %293 ], [ %310, %304 ], [ %321, %315 ]
  %326 = load ptr, ptr %84, align 8, !tbaa !26
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.gz_header_s, ptr %326, i64 0, i32 1
  store i64 %325, ptr %329, align 8, !tbaa !57
  br label %330

330:                                              ; preds = %328, %322
  %331 = load i32, ptr %52, align 8, !tbaa !24
  %332 = and i32 %331, 512
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %348, label %334

334:                                              ; preds = %330
  %335 = load i32, ptr %49, align 8, !tbaa !20
  %336 = and i32 %335, 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %348, label %338

338:                                              ; preds = %334
  %339 = trunc i64 %325 to i8
  store i8 %339, ptr %3, align 1, !tbaa !40
  %340 = lshr i64 %325, 8
  %341 = trunc i64 %340 to i8
  store i8 %341, ptr %85, align 1, !tbaa !40
  %342 = lshr i64 %325, 16
  %343 = trunc i64 %342 to i8
  store i8 %343, ptr %86, align 1, !tbaa !40
  %344 = lshr i64 %325, 24
  %345 = trunc i64 %344 to i8
  store i8 %345, ptr %87, align 1, !tbaa !40
  %346 = load i64, ptr %53, align 8, !tbaa !51
  %347 = call i64 @crc32(i64 noundef %346, ptr noundef nonnull %3, i32 noundef 4) #9
  store i64 %347, ptr %53, align 8, !tbaa !51
  br label %348

348:                                              ; preds = %338, %334, %330
  store i32 16183, ptr %21, align 8, !tbaa !16
  br label %351

349:                                              ; preds = %90
  %350 = icmp ult i32 %97, 16
  br i1 %350, label %351, label %376

351:                                              ; preds = %348, %349
  %352 = phi i32 [ 0, %348 ], [ %97, %349 ]
  %353 = phi i64 [ 0, %348 ], [ %96, %349 ]
  %354 = phi i32 [ %324, %348 ], [ %94, %349 ]
  %355 = phi ptr [ %323, %348 ], [ %92, %349 ]
  %356 = zext nneg i32 %352 to i64
  %357 = icmp eq i32 %354, 0
  br i1 %357, label %2126, label %358

358:                                              ; preds = %351
  %359 = add i32 %354, -1
  %360 = getelementptr inbounds i8, ptr %355, i64 1
  %361 = load i8, ptr %355, align 1, !tbaa !40
  %362 = zext i8 %361 to i64
  %363 = shl nuw nsw i64 %362, %356
  %364 = add i64 %363, %353
  %365 = add nuw nsw i64 %356, 8
  %366 = icmp ult i32 %352, 8
  br i1 %366, label %367, label %376, !llvm.loop !58

367:                                              ; preds = %358
  %368 = icmp eq i32 %359, 0
  br i1 %368, label %2126, label %369

369:                                              ; preds = %367
  %370 = add i32 %354, -2
  %371 = getelementptr inbounds i8, ptr %355, i64 2
  %372 = load i8, ptr %360, align 1, !tbaa !40
  %373 = zext i8 %372 to i64
  %374 = shl nuw nsw i64 %373, %365
  %375 = add i64 %374, %364
  br label %376

376:                                              ; preds = %358, %369, %349
  %377 = phi ptr [ %92, %349 ], [ %360, %358 ], [ %371, %369 ]
  %378 = phi i32 [ %94, %349 ], [ %359, %358 ], [ %370, %369 ]
  %379 = phi i64 [ %96, %349 ], [ %364, %358 ], [ %375, %369 ]
  %380 = load ptr, ptr %84, align 8, !tbaa !26
  %381 = icmp eq ptr %380, null
  br i1 %381, label %389, label %382

382:                                              ; preds = %376
  %383 = trunc i64 %379 to i32
  %384 = and i32 %383, 255
  %385 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 2
  store i32 %384, ptr %385, align 8, !tbaa !59
  %386 = lshr i64 %379, 8
  %387 = trunc i64 %386 to i32
  %388 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 3
  store i32 %387, ptr %388, align 4, !tbaa !60
  br label %389

389:                                              ; preds = %382, %376
  %390 = load i32, ptr %52, align 8, !tbaa !24
  %391 = and i32 %390, 512
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %407, label %393

393:                                              ; preds = %389
  %394 = load i32, ptr %49, align 8, !tbaa !20
  %395 = and i32 %394, 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %407, label %397

397:                                              ; preds = %393
  %398 = trunc i64 %379 to i8
  store i8 %398, ptr %3, align 1, !tbaa !40
  %399 = lshr i64 %379, 8
  %400 = trunc i64 %399 to i8
  store i8 %400, ptr %85, align 1, !tbaa !40
  %401 = load i64, ptr %53, align 8, !tbaa !51
  %402 = call i64 @crc32(i64 noundef %401, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %402, ptr %53, align 8, !tbaa !51
  br label %407

403:                                              ; preds = %90
  %404 = load i32, ptr %52, align 8, !tbaa !24
  %405 = and i32 %404, 1024
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %462, label %411

407:                                              ; preds = %397, %393, %389
  store i32 16184, ptr %21, align 8, !tbaa !16
  %408 = load i32, ptr %52, align 8, !tbaa !24
  %409 = and i32 %408, 1024
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %462, label %413

411:                                              ; preds = %403
  %412 = icmp ult i32 %97, 16
  br i1 %412, label %413, label %439

413:                                              ; preds = %407, %411
  %414 = phi ptr [ %92, %411 ], [ %377, %407 ]
  %415 = phi i32 [ %94, %411 ], [ %378, %407 ]
  %416 = phi i64 [ %96, %411 ], [ 0, %407 ]
  %417 = phi i32 [ %97, %411 ], [ 0, %407 ]
  %418 = phi i32 [ %404, %411 ], [ %408, %407 ]
  %419 = zext nneg i32 %417 to i64
  %420 = icmp eq i32 %415, 0
  br i1 %420, label %2121, label %421

421:                                              ; preds = %413
  %422 = add i32 %415, -1
  %423 = getelementptr inbounds i8, ptr %414, i64 1
  %424 = load i8, ptr %414, align 1, !tbaa !40
  %425 = zext i8 %424 to i64
  %426 = shl nuw nsw i64 %425, %419
  %427 = add i64 %426, %416
  %428 = add nuw nsw i64 %419, 8
  %429 = icmp ult i32 %417, 8
  br i1 %429, label %430, label %439, !llvm.loop !61

430:                                              ; preds = %421
  %431 = icmp eq i32 %422, 0
  br i1 %431, label %2121, label %432

432:                                              ; preds = %430
  %433 = add i32 %415, -2
  %434 = getelementptr inbounds i8, ptr %414, i64 2
  %435 = load i8, ptr %423, align 1, !tbaa !40
  %436 = zext i8 %435 to i64
  %437 = shl nuw nsw i64 %436, %428
  %438 = add i64 %437, %427
  br label %439

439:                                              ; preds = %421, %432, %411
  %440 = phi i32 [ %404, %411 ], [ %418, %432 ], [ %418, %421 ]
  %441 = phi ptr [ %92, %411 ], [ %423, %421 ], [ %434, %432 ]
  %442 = phi i32 [ %94, %411 ], [ %422, %421 ], [ %433, %432 ]
  %443 = phi i64 [ %96, %411 ], [ %427, %421 ], [ %438, %432 ]
  %444 = trunc i64 %443 to i32
  store i32 %444, ptr %56, align 4, !tbaa !62
  %445 = load ptr, ptr %84, align 8, !tbaa !26
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %439
  %448 = getelementptr inbounds %struct.gz_header_s, ptr %445, i64 0, i32 5
  store i32 %444, ptr %448, align 8, !tbaa !63
  br label %449

449:                                              ; preds = %447, %439
  %450 = and i32 %440, 512
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %471, label %452

452:                                              ; preds = %449
  %453 = load i32, ptr %49, align 8, !tbaa !20
  %454 = and i32 %453, 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %471, label %456

456:                                              ; preds = %452
  %457 = trunc i64 %443 to i8
  store i8 %457, ptr %3, align 1, !tbaa !40
  %458 = lshr i64 %443, 8
  %459 = trunc i64 %458 to i8
  store i8 %459, ptr %85, align 1, !tbaa !40
  %460 = load i64, ptr %53, align 8, !tbaa !51
  %461 = call i64 @crc32(i64 noundef %460, ptr noundef nonnull %3, i32 noundef 2) #9
  store i64 %461, ptr %53, align 8, !tbaa !51
  br label %471

462:                                              ; preds = %407, %403
  %463 = phi i32 [ 0, %407 ], [ %97, %403 ]
  %464 = phi i64 [ 0, %407 ], [ %96, %403 ]
  %465 = phi i32 [ %378, %407 ], [ %94, %403 ]
  %466 = phi ptr [ %377, %407 ], [ %92, %403 ]
  %467 = load ptr, ptr %84, align 8, !tbaa !26
  %468 = icmp eq ptr %467, null
  br i1 %468, label %471, label %469

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.gz_header_s, ptr %467, i64 0, i32 4
  store ptr null, ptr %470, align 8, !tbaa !64
  br label %471

471:                                              ; preds = %456, %452, %449, %462, %469
  %472 = phi ptr [ %466, %469 ], [ %466, %462 ], [ %441, %449 ], [ %441, %452 ], [ %441, %456 ]
  %473 = phi i32 [ %465, %469 ], [ %465, %462 ], [ %442, %449 ], [ %442, %452 ], [ %442, %456 ]
  %474 = phi i64 [ %464, %469 ], [ %464, %462 ], [ 0, %449 ], [ 0, %452 ], [ 0, %456 ]
  %475 = phi i32 [ %463, %469 ], [ %463, %462 ], [ 0, %449 ], [ 0, %452 ], [ 0, %456 ]
  store i32 16185, ptr %21, align 8, !tbaa !16
  br label %476

476:                                              ; preds = %90, %471
  %477 = phi ptr [ %92, %90 ], [ %472, %471 ]
  %478 = phi i32 [ %94, %90 ], [ %473, %471 ]
  %479 = phi i64 [ %96, %90 ], [ %474, %471 ]
  %480 = phi i32 [ %97, %90 ], [ %475, %471 ]
  %481 = load i32, ptr %52, align 8, !tbaa !24
  %482 = and i32 %481, 1024
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %533, label %484

484:                                              ; preds = %476
  %485 = load i32, ptr %56, align 4, !tbaa !62
  %486 = call i32 @llvm.umin.i32(i32 %485, i32 %478)
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %528, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr %84, align 8, !tbaa !26
  %490 = icmp eq ptr %489, null
  br i1 %490, label %511, label %491

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 4
  %493 = load ptr, ptr %492, align 8, !tbaa !64
  %494 = icmp eq ptr %493, null
  br i1 %494, label %511, label %495

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 5
  %497 = load i32, ptr %496, align 8, !tbaa !63
  %498 = sub i32 %497, %485
  %499 = getelementptr inbounds %struct.gz_header_s, ptr %489, i64 0, i32 6
  %500 = load i32, ptr %499, align 4, !tbaa !65
  %501 = icmp ult i32 %498, %500
  br i1 %501, label %502, label %511

502:                                              ; preds = %495
  %503 = zext i32 %498 to i64
  %504 = getelementptr inbounds i8, ptr %493, i64 %503
  %505 = add i32 %498, %486
  %506 = icmp ugt i32 %505, %500
  %507 = sub i32 %500, %498
  %508 = select i1 %506, i32 %507, i32 %486
  %509 = zext i32 %508 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %504, ptr align 1 %477, i64 %509, i1 false)
  %510 = load i32, ptr %52, align 8, !tbaa !24
  br label %511

511:                                              ; preds = %502, %495, %491, %488
  %512 = phi i32 [ %510, %502 ], [ %481, %495 ], [ %481, %491 ], [ %481, %488 ]
  %513 = and i32 %512, 512
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %522, label %515

515:                                              ; preds = %511
  %516 = load i32, ptr %49, align 8, !tbaa !20
  %517 = and i32 %516, 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = load i64, ptr %53, align 8, !tbaa !51
  %521 = call i64 @crc32(i64 noundef %520, ptr noundef %477, i32 noundef %486) #9
  store i64 %521, ptr %53, align 8, !tbaa !51
  br label %522

522:                                              ; preds = %519, %515, %511
  %523 = sub i32 %478, %486
  %524 = zext i32 %486 to i64
  %525 = getelementptr inbounds i8, ptr %477, i64 %524
  %526 = load i32, ptr %56, align 4, !tbaa !62
  %527 = sub i32 %526, %486
  store i32 %527, ptr %56, align 4, !tbaa !62
  br label %528

528:                                              ; preds = %522, %484
  %529 = phi i32 [ %527, %522 ], [ %485, %484 ]
  %530 = phi ptr [ %525, %522 ], [ %477, %484 ]
  %531 = phi i32 [ %523, %522 ], [ %478, %484 ]
  %532 = icmp eq i32 %529, 0
  br i1 %532, label %533, label %2202

533:                                              ; preds = %528, %476
  %534 = phi ptr [ %530, %528 ], [ %477, %476 ]
  %535 = phi i32 [ %531, %528 ], [ %478, %476 ]
  store i32 0, ptr %56, align 4, !tbaa !62
  store i32 16186, ptr %21, align 8, !tbaa !16
  br label %536

536:                                              ; preds = %90, %533
  %537 = phi ptr [ %92, %90 ], [ %534, %533 ]
  %538 = phi i32 [ %94, %90 ], [ %535, %533 ]
  %539 = phi i64 [ %96, %90 ], [ %479, %533 ]
  %540 = phi i32 [ %97, %90 ], [ %480, %533 ]
  %541 = load i32, ptr %52, align 8, !tbaa !24
  %542 = and i32 %541, 2048
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %588, label %544

544:                                              ; preds = %536
  %545 = icmp eq i32 %538, 0
  br i1 %545, label %2202, label %546

546:                                              ; preds = %544
  %547 = zext i32 %538 to i64
  br label %548

548:                                              ; preds = %546, %568
  %549 = phi i64 [ 0, %546 ], [ %550, %568 ]
  %550 = add nuw nsw i64 %549, 1
  %551 = getelementptr inbounds i8, ptr %537, i64 %549
  %552 = load i8, ptr %551, align 1, !tbaa !40
  %553 = load ptr, ptr %84, align 8, !tbaa !26
  %554 = icmp eq ptr %553, null
  br i1 %554, label %568, label %555

555:                                              ; preds = %548
  %556 = getelementptr inbounds %struct.gz_header_s, ptr %553, i64 0, i32 7
  %557 = load ptr, ptr %556, align 8, !tbaa !66
  %558 = icmp eq ptr %557, null
  br i1 %558, label %568, label %559

559:                                              ; preds = %555
  %560 = load i32, ptr %56, align 4, !tbaa !62
  %561 = getelementptr inbounds %struct.gz_header_s, ptr %553, i64 0, i32 8
  %562 = load i32, ptr %561, align 8, !tbaa !67
  %563 = icmp ult i32 %560, %562
  br i1 %563, label %564, label %568

564:                                              ; preds = %559
  %565 = add nuw i32 %560, 1
  store i32 %565, ptr %56, align 4, !tbaa !62
  %566 = zext i32 %560 to i64
  %567 = getelementptr inbounds i8, ptr %557, i64 %566
  store i8 %552, ptr %567, align 1, !tbaa !40
  br label %568

568:                                              ; preds = %548, %555, %559, %564
  %569 = icmp ne i8 %552, 0
  %570 = icmp ult i64 %550, %547
  %571 = select i1 %569, i1 %570, i1 false
  br i1 %571, label %548, label %572, !llvm.loop !68

572:                                              ; preds = %568
  %573 = trunc i64 %550 to i32
  %574 = load i32, ptr %52, align 8, !tbaa !24
  %575 = and i32 %574, 512
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %584, label %577

577:                                              ; preds = %572
  %578 = load i32, ptr %49, align 8, !tbaa !20
  %579 = and i32 %578, 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %577
  %582 = load i64, ptr %53, align 8, !tbaa !51
  %583 = call i64 @crc32(i64 noundef %582, ptr noundef nonnull %537, i32 noundef %573) #9
  store i64 %583, ptr %53, align 8, !tbaa !51
  br label %584

584:                                              ; preds = %581, %577, %572
  %585 = sub i32 %538, %573
  %586 = and i64 %550, 4294967295
  %587 = getelementptr inbounds i8, ptr %537, i64 %586
  br i1 %569, label %2202, label %593

588:                                              ; preds = %536
  %589 = load ptr, ptr %84, align 8, !tbaa !26
  %590 = icmp eq ptr %589, null
  br i1 %590, label %593, label %591

591:                                              ; preds = %588
  %592 = getelementptr inbounds %struct.gz_header_s, ptr %589, i64 0, i32 7
  store ptr null, ptr %592, align 8, !tbaa !66
  br label %593

593:                                              ; preds = %588, %591, %584
  %594 = phi ptr [ %587, %584 ], [ %537, %591 ], [ %537, %588 ]
  %595 = phi i32 [ %585, %584 ], [ %538, %591 ], [ %538, %588 ]
  store i32 0, ptr %56, align 4, !tbaa !62
  store i32 16187, ptr %21, align 8, !tbaa !16
  br label %596

596:                                              ; preds = %90, %593
  %597 = phi ptr [ %92, %90 ], [ %594, %593 ]
  %598 = phi i32 [ %94, %90 ], [ %595, %593 ]
  %599 = phi i64 [ %96, %90 ], [ %539, %593 ]
  %600 = phi i32 [ %97, %90 ], [ %540, %593 ]
  %601 = load i32, ptr %52, align 8, !tbaa !24
  %602 = and i32 %601, 4096
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %648, label %604

604:                                              ; preds = %596
  %605 = icmp eq i32 %598, 0
  br i1 %605, label %2202, label %606

606:                                              ; preds = %604
  %607 = zext i32 %598 to i64
  br label %608

608:                                              ; preds = %606, %628
  %609 = phi i64 [ 0, %606 ], [ %610, %628 ]
  %610 = add nuw nsw i64 %609, 1
  %611 = getelementptr inbounds i8, ptr %597, i64 %609
  %612 = load i8, ptr %611, align 1, !tbaa !40
  %613 = load ptr, ptr %84, align 8, !tbaa !26
  %614 = icmp eq ptr %613, null
  br i1 %614, label %628, label %615

615:                                              ; preds = %608
  %616 = getelementptr inbounds %struct.gz_header_s, ptr %613, i64 0, i32 9
  %617 = load ptr, ptr %616, align 8, !tbaa !69
  %618 = icmp eq ptr %617, null
  br i1 %618, label %628, label %619

619:                                              ; preds = %615
  %620 = load i32, ptr %56, align 4, !tbaa !62
  %621 = getelementptr inbounds %struct.gz_header_s, ptr %613, i64 0, i32 10
  %622 = load i32, ptr %621, align 8, !tbaa !70
  %623 = icmp ult i32 %620, %622
  br i1 %623, label %624, label %628

624:                                              ; preds = %619
  %625 = add nuw i32 %620, 1
  store i32 %625, ptr %56, align 4, !tbaa !62
  %626 = zext i32 %620 to i64
  %627 = getelementptr inbounds i8, ptr %617, i64 %626
  store i8 %612, ptr %627, align 1, !tbaa !40
  br label %628

628:                                              ; preds = %608, %615, %619, %624
  %629 = icmp ne i8 %612, 0
  %630 = icmp ult i64 %610, %607
  %631 = select i1 %629, i1 %630, i1 false
  br i1 %631, label %608, label %632, !llvm.loop !71

632:                                              ; preds = %628
  %633 = trunc i64 %610 to i32
  %634 = load i32, ptr %52, align 8, !tbaa !24
  %635 = and i32 %634, 512
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %644, label %637

637:                                              ; preds = %632
  %638 = load i32, ptr %49, align 8, !tbaa !20
  %639 = and i32 %638, 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %644, label %641

641:                                              ; preds = %637
  %642 = load i64, ptr %53, align 8, !tbaa !51
  %643 = call i64 @crc32(i64 noundef %642, ptr noundef nonnull %597, i32 noundef %633) #9
  store i64 %643, ptr %53, align 8, !tbaa !51
  br label %644

644:                                              ; preds = %641, %637, %632
  %645 = sub i32 %598, %633
  %646 = and i64 %610, 4294967295
  %647 = getelementptr inbounds i8, ptr %597, i64 %646
  br i1 %629, label %2202, label %653

648:                                              ; preds = %596
  %649 = load ptr, ptr %84, align 8, !tbaa !26
  %650 = icmp eq ptr %649, null
  br i1 %650, label %653, label %651

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.gz_header_s, ptr %649, i64 0, i32 9
  store ptr null, ptr %652, align 8, !tbaa !69
  br label %653

653:                                              ; preds = %648, %651, %644
  %654 = phi ptr [ %647, %644 ], [ %597, %651 ], [ %597, %648 ]
  %655 = phi i32 [ %645, %644 ], [ %598, %651 ], [ %598, %648 ]
  store i32 16188, ptr %21, align 8, !tbaa !16
  br label %656

656:                                              ; preds = %90, %653
  %657 = phi ptr [ %92, %90 ], [ %654, %653 ]
  %658 = phi i32 [ %94, %90 ], [ %655, %653 ]
  %659 = phi i64 [ %96, %90 ], [ %599, %653 ]
  %660 = phi i32 [ %97, %90 ], [ %600, %653 ]
  %661 = load i32, ptr %52, align 8, !tbaa !24
  %662 = and i32 %661, 512
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %707, label %664

664:                                              ; preds = %656
  %665 = icmp ult i32 %660, 16
  br i1 %665, label %666, label %694

666:                                              ; preds = %664
  %667 = zext nneg i32 %660 to i64
  %668 = icmp eq i32 %658, 0
  br i1 %668, label %2116, label %669

669:                                              ; preds = %666
  %670 = add i32 %658, -1
  %671 = getelementptr inbounds i8, ptr %657, i64 1
  %672 = load i8, ptr %657, align 1, !tbaa !40
  %673 = zext i8 %672 to i64
  %674 = shl nuw nsw i64 %673, %667
  %675 = add i64 %674, %659
  %676 = add nuw nsw i64 %667, 8
  %677 = icmp ult i32 %660, 8
  br i1 %677, label %678, label %688, !llvm.loop !72

678:                                              ; preds = %669
  %679 = icmp eq i32 %670, 0
  br i1 %679, label %2116, label %680

680:                                              ; preds = %678
  %681 = add i32 %658, -2
  %682 = getelementptr inbounds i8, ptr %657, i64 2
  %683 = load i8, ptr %671, align 1, !tbaa !40
  %684 = zext i8 %683 to i64
  %685 = shl nuw nsw i64 %684, %676
  %686 = add i64 %685, %675
  %687 = or disjoint i64 %667, 16
  br label %688

688:                                              ; preds = %680, %669
  %689 = phi i32 [ %670, %669 ], [ %681, %680 ]
  %690 = phi ptr [ %671, %669 ], [ %682, %680 ]
  %691 = phi i64 [ %675, %669 ], [ %686, %680 ]
  %692 = phi i64 [ %676, %669 ], [ %687, %680 ]
  %693 = trunc i64 %692 to i32
  br label %694

694:                                              ; preds = %688, %664
  %695 = phi ptr [ %657, %664 ], [ %690, %688 ]
  %696 = phi i32 [ %658, %664 ], [ %689, %688 ]
  %697 = phi i64 [ %659, %664 ], [ %691, %688 ]
  %698 = phi i32 [ %660, %664 ], [ %693, %688 ]
  %699 = load i32, ptr %49, align 8, !tbaa !20
  %700 = and i32 %699, 4
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %707, label %702

702:                                              ; preds = %694
  %703 = load i64, ptr %53, align 8, !tbaa !51
  %704 = and i64 %703, 65535
  %705 = icmp eq i64 %697, %704
  br i1 %705, label %707, label %706

706:                                              ; preds = %702
  store ptr @.str.5, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

707:                                              ; preds = %702, %694, %656
  %708 = phi ptr [ %657, %656 ], [ %695, %694 ], [ %695, %702 ]
  %709 = phi i32 [ %658, %656 ], [ %696, %694 ], [ %696, %702 ]
  %710 = phi i64 [ %659, %656 ], [ 0, %694 ], [ 0, %702 ]
  %711 = phi i32 [ %660, %656 ], [ 0, %694 ], [ 0, %702 ]
  %712 = load ptr, ptr %84, align 8, !tbaa !26
  %713 = icmp eq ptr %712, null
  br i1 %713, label %719, label %714

714:                                              ; preds = %707
  %715 = lshr i32 %661, 9
  %716 = and i32 %715, 1
  %717 = getelementptr inbounds %struct.gz_header_s, ptr %712, i64 0, i32 11
  store i32 %716, ptr %717, align 4, !tbaa !73
  %718 = getelementptr inbounds %struct.gz_header_s, ptr %712, i64 0, i32 12
  store i32 1, ptr %718, align 8, !tbaa !52
  br label %719

719:                                              ; preds = %714, %707
  %720 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %720, ptr %53, align 8, !tbaa !51
  store i64 %720, ptr %54, align 8, !tbaa !21
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2095

721:                                              ; preds = %116
  %722 = add i32 %94, -1
  %723 = getelementptr inbounds i8, ptr %92, i64 1
  %724 = load i8, ptr %92, align 1, !tbaa !40
  %725 = zext i8 %724 to i64
  %726 = shl nuw nsw i64 %725, %117
  %727 = add i64 %726, %96
  %728 = add nuw nsw i64 %117, 8
  %729 = icmp ult i32 %97, 24
  br i1 %729, label %730, label %761, !llvm.loop !74

730:                                              ; preds = %721
  %731 = icmp eq i32 %722, 0
  br i1 %731, label %2141, label %732

732:                                              ; preds = %730
  %733 = add i32 %94, -2
  %734 = getelementptr inbounds i8, ptr %92, i64 2
  %735 = load i8, ptr %723, align 1, !tbaa !40
  %736 = zext i8 %735 to i64
  %737 = shl nuw nsw i64 %736, %728
  %738 = add i64 %737, %727
  %739 = add nuw nsw i64 %117, 16
  %740 = icmp ult i32 %97, 16
  br i1 %740, label %741, label %761, !llvm.loop !74

741:                                              ; preds = %732
  %742 = icmp eq i32 %733, 0
  br i1 %742, label %2141, label %743

743:                                              ; preds = %741
  %744 = add i32 %94, -3
  %745 = getelementptr inbounds i8, ptr %92, i64 3
  %746 = load i8, ptr %734, align 1, !tbaa !40
  %747 = zext i8 %746 to i64
  %748 = shl nuw nsw i64 %747, %739
  %749 = add i64 %748, %738
  %750 = add nuw nsw i64 %117, 24
  %751 = icmp ult i32 %97, 8
  br i1 %751, label %752, label %761, !llvm.loop !74

752:                                              ; preds = %743
  %753 = icmp eq i32 %744, 0
  br i1 %753, label %2141, label %754

754:                                              ; preds = %752
  %755 = add i32 %94, -4
  %756 = getelementptr inbounds i8, ptr %92, i64 4
  %757 = load i8, ptr %745, align 1, !tbaa !40
  %758 = zext i8 %757 to i64
  %759 = shl nuw nsw i64 %758, %750
  %760 = add i64 %759, %749
  br label %761

761:                                              ; preds = %721, %732, %743, %754, %114
  %762 = phi ptr [ %92, %114 ], [ %723, %721 ], [ %734, %732 ], [ %745, %743 ], [ %756, %754 ]
  %763 = phi i32 [ %94, %114 ], [ %722, %721 ], [ %733, %732 ], [ %744, %743 ], [ %755, %754 ]
  %764 = phi i64 [ %96, %114 ], [ %727, %721 ], [ %738, %732 ], [ %749, %743 ], [ %760, %754 ]
  %765 = trunc i64 %764 to i32
  %766 = call i32 @llvm.bswap.i32(i32 %765)
  %767 = zext i32 %766 to i64
  store i64 %767, ptr %53, align 8, !tbaa !51
  store i64 %767, ptr %54, align 8, !tbaa !21
  store i32 16190, ptr %21, align 8, !tbaa !16
  br label %768

768:                                              ; preds = %90, %761
  %769 = phi ptr [ %92, %90 ], [ %762, %761 ]
  %770 = phi i32 [ %94, %90 ], [ %763, %761 ]
  %771 = phi i64 [ %96, %90 ], [ 0, %761 ]
  %772 = phi i32 [ %97, %90 ], [ 0, %761 ]
  %773 = load i32, ptr %80, align 4, !tbaa !23
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %776

775:                                              ; preds = %768
  store ptr %93, ptr %26, align 8, !tbaa !43
  store i32 %95, ptr %41, align 8, !tbaa !46
  store ptr %769, ptr %0, align 8, !tbaa !44
  store i32 %770, ptr %43, align 8, !tbaa !45
  store i64 %771, ptr %45, align 8, !tbaa !27
  store i32 %772, ptr %47, align 8, !tbaa !28
  br label %2286

776:                                              ; preds = %768
  %777 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  store i64 %777, ptr %53, align 8, !tbaa !51
  store i64 %777, ptr %54, align 8, !tbaa !21
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %778

778:                                              ; preds = %90, %776
  %779 = phi ptr [ %92, %90 ], [ %769, %776 ]
  %780 = phi i32 [ %94, %90 ], [ %770, %776 ]
  %781 = phi i64 [ %96, %90 ], [ %771, %776 ]
  %782 = phi i32 [ %97, %90 ], [ %772, %776 ]
  br i1 %82, label %2202, label %783

783:                                              ; preds = %778, %90
  %784 = phi ptr [ %92, %90 ], [ %779, %778 ]
  %785 = phi i32 [ %94, %90 ], [ %780, %778 ]
  %786 = phi i64 [ %96, %90 ], [ %781, %778 ]
  %787 = phi i32 [ %97, %90 ], [ %782, %778 ]
  %788 = load i32, ptr %83, align 4, !tbaa !22
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %783
  %791 = icmp ult i32 %787, 3
  br i1 %791, label %792, label %808

792:                                              ; preds = %790
  %793 = icmp eq i32 %785, 0
  br i1 %793, label %2202, label %799

794:                                              ; preds = %783
  %795 = and i32 %787, 7
  %796 = zext nneg i32 %795 to i64
  %797 = lshr i64 %786, %796
  %798 = and i32 %787, -8
  store i32 16206, ptr %21, align 8, !tbaa !16
  br label %2095

799:                                              ; preds = %792
  %800 = or disjoint i32 %787, 8
  %801 = add i32 %785, -1
  %802 = getelementptr inbounds i8, ptr %784, i64 1
  %803 = load i8, ptr %784, align 1, !tbaa !40
  %804 = zext i8 %803 to i64
  %805 = zext nneg i32 %787 to i64
  %806 = shl nuw nsw i64 %804, %805
  %807 = add i64 %806, %786
  br label %808

808:                                              ; preds = %799, %790
  %809 = phi ptr [ %802, %799 ], [ %784, %790 ]
  %810 = phi i32 [ %801, %799 ], [ %785, %790 ]
  %811 = phi i64 [ %807, %799 ], [ %786, %790 ]
  %812 = phi i32 [ %800, %799 ], [ %787, %790 ]
  %813 = trunc i64 %811 to i32
  %814 = and i32 %813, 1
  store i32 %814, ptr %83, align 4, !tbaa !22
  %815 = lshr i32 %813, 1
  %816 = and i32 %815, 3
  switch i32 %816, label %822 [
    i32 0, label %823
    i32 1, label %817
    i32 2, label %821
  ]

817:                                              ; preds = %808
  call void @inflate_fixed(ptr noundef nonnull %15) #9
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %818, label %825

818:                                              ; preds = %817
  %819 = lshr i64 %811, 3
  %820 = add i32 %812, -3
  br label %2202

821:                                              ; preds = %808
  br label %823

822:                                              ; preds = %808
  store ptr @.str.6, ptr %55, align 8, !tbaa !41
  br label %823

823:                                              ; preds = %808, %822, %821
  %824 = phi i32 [ 16196, %821 ], [ 16209, %822 ], [ 16193, %808 ]
  store i32 %824, ptr %21, align 8, !tbaa !16
  br label %825

825:                                              ; preds = %823, %817
  %826 = lshr i64 %811, 3
  %827 = add i32 %812, -3
  br label %2095

828:                                              ; preds = %90
  %829 = and i32 %97, 7
  %830 = zext nneg i32 %829 to i64
  %831 = lshr i64 %96, %830
  %832 = and i32 %97, -8
  %833 = icmp ult i32 %832, 32
  br i1 %833, label %834, label %884

834:                                              ; preds = %828
  %835 = and i32 %97, -8
  %836 = zext i32 %835 to i64
  %837 = icmp eq i32 %94, 0
  br i1 %837, label %2146, label %838

838:                                              ; preds = %834
  %839 = add i32 %94, -1
  %840 = getelementptr inbounds i8, ptr %92, i64 1
  %841 = load i8, ptr %92, align 1, !tbaa !40
  %842 = zext i8 %841 to i64
  %843 = shl nuw nsw i64 %842, %836
  %844 = add i64 %843, %831
  %845 = add nuw nsw i64 %836, 8
  %846 = icmp ult i32 %835, 24
  br i1 %846, label %847, label %878, !llvm.loop !75

847:                                              ; preds = %838
  %848 = icmp eq i32 %839, 0
  br i1 %848, label %2146, label %849

849:                                              ; preds = %847
  %850 = add i32 %94, -2
  %851 = getelementptr inbounds i8, ptr %92, i64 2
  %852 = load i8, ptr %840, align 1, !tbaa !40
  %853 = zext i8 %852 to i64
  %854 = shl nuw nsw i64 %853, %845
  %855 = add i64 %854, %844
  %856 = add nuw nsw i64 %836, 16
  %857 = icmp ult i32 %835, 16
  br i1 %857, label %858, label %878, !llvm.loop !75

858:                                              ; preds = %849
  %859 = icmp eq i32 %850, 0
  br i1 %859, label %2146, label %860

860:                                              ; preds = %858
  %861 = add i32 %94, -3
  %862 = getelementptr inbounds i8, ptr %92, i64 3
  %863 = load i8, ptr %851, align 1, !tbaa !40
  %864 = zext i8 %863 to i64
  %865 = shl nuw nsw i64 %864, %856
  %866 = add i64 %865, %855
  %867 = add nuw nsw i64 %836, 24
  %868 = icmp eq i32 %835, 0
  br i1 %868, label %869, label %878, !llvm.loop !75

869:                                              ; preds = %860
  %870 = icmp eq i32 %861, 0
  br i1 %870, label %2146, label %871

871:                                              ; preds = %869
  %872 = add i32 %94, -4
  %873 = getelementptr inbounds i8, ptr %92, i64 4
  %874 = load i8, ptr %862, align 1, !tbaa !40
  %875 = zext i8 %874 to i64
  %876 = shl nuw nsw i64 %875, %867
  %877 = add i64 %876, %866
  br label %878

878:                                              ; preds = %871, %860, %849, %838
  %879 = phi i32 [ %839, %838 ], [ %850, %849 ], [ %861, %860 ], [ %872, %871 ]
  %880 = phi ptr [ %840, %838 ], [ %851, %849 ], [ %862, %860 ], [ %873, %871 ]
  %881 = phi i64 [ %844, %838 ], [ %855, %849 ], [ %866, %860 ], [ %877, %871 ]
  %882 = phi i64 [ %845, %838 ], [ %856, %849 ], [ %867, %860 ], [ 32, %871 ]
  %883 = trunc i64 %882 to i32
  br label %884

884:                                              ; preds = %878, %828
  %885 = phi ptr [ %92, %828 ], [ %880, %878 ]
  %886 = phi i32 [ %94, %828 ], [ %879, %878 ]
  %887 = phi i64 [ %831, %828 ], [ %881, %878 ]
  %888 = phi i32 [ %832, %828 ], [ %883, %878 ]
  %889 = and i64 %887, 65535
  %890 = lshr i64 %887, 16
  %891 = xor i64 %890, %889
  %892 = icmp eq i64 %891, 65535
  br i1 %892, label %894, label %893

893:                                              ; preds = %884
  store ptr @.str.7, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

894:                                              ; preds = %884
  %895 = trunc i64 %887 to i32
  %896 = and i32 %895, 65535
  store i32 %896, ptr %56, align 4, !tbaa !62
  store i32 16194, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2202, label %897

897:                                              ; preds = %894, %90
  %898 = phi ptr [ %92, %90 ], [ %885, %894 ]
  %899 = phi i32 [ %94, %90 ], [ %886, %894 ]
  %900 = phi i64 [ %96, %90 ], [ 0, %894 ]
  %901 = phi i32 [ %97, %90 ], [ 0, %894 ]
  store i32 16195, ptr %21, align 8, !tbaa !16
  br label %902

902:                                              ; preds = %90, %897
  %903 = phi ptr [ %92, %90 ], [ %898, %897 ]
  %904 = phi i32 [ %94, %90 ], [ %899, %897 ]
  %905 = phi i64 [ %96, %90 ], [ %900, %897 ]
  %906 = phi i32 [ %97, %90 ], [ %901, %897 ]
  %907 = load i32, ptr %56, align 4, !tbaa !62
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %921, label %909

909:                                              ; preds = %902
  %910 = call i32 @llvm.umin.i32(i32 %907, i32 %904)
  %911 = call i32 @llvm.umin.i32(i32 %910, i32 %95)
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %2202, label %913

913:                                              ; preds = %909
  %914 = zext i32 %911 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %903, i64 %914, i1 false)
  %915 = sub i32 %904, %911
  %916 = getelementptr inbounds i8, ptr %903, i64 %914
  %917 = sub i32 %95, %911
  %918 = getelementptr inbounds i8, ptr %93, i64 %914
  %919 = load i32, ptr %56, align 4, !tbaa !62
  %920 = sub i32 %919, %911
  store i32 %920, ptr %56, align 4, !tbaa !62
  br label %2095

921:                                              ; preds = %902
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2095

922:                                              ; preds = %111
  %923 = add i32 %94, -1
  %924 = getelementptr inbounds i8, ptr %92, i64 1
  %925 = load i8, ptr %92, align 1, !tbaa !40
  %926 = zext i8 %925 to i64
  %927 = shl nuw nsw i64 %926, %112
  %928 = add i64 %927, %96
  %929 = add nuw nsw i64 %112, 8
  %930 = icmp ult i32 %97, 6
  br i1 %930, label %931, label %941, !llvm.loop !76

931:                                              ; preds = %922
  %932 = icmp eq i32 %923, 0
  br i1 %932, label %2151, label %933

933:                                              ; preds = %931
  %934 = add i32 %94, -2
  %935 = getelementptr inbounds i8, ptr %92, i64 2
  %936 = load i8, ptr %924, align 1, !tbaa !40
  %937 = zext i8 %936 to i64
  %938 = shl nuw nsw i64 %937, %929
  %939 = add i64 %938, %928
  %940 = or disjoint i64 %112, 16
  br label %941

941:                                              ; preds = %933, %922
  %942 = phi i32 [ %923, %922 ], [ %934, %933 ]
  %943 = phi ptr [ %924, %922 ], [ %935, %933 ]
  %944 = phi i64 [ %928, %922 ], [ %939, %933 ]
  %945 = phi i64 [ %929, %922 ], [ %940, %933 ]
  %946 = trunc i64 %945 to i32
  br label %947

947:                                              ; preds = %941, %109
  %948 = phi ptr [ %92, %109 ], [ %943, %941 ]
  %949 = phi i32 [ %94, %109 ], [ %942, %941 ]
  %950 = phi i64 [ %96, %109 ], [ %944, %941 ]
  %951 = phi i32 [ %97, %109 ], [ %946, %941 ]
  %952 = trunc i64 %950 to i32
  %953 = and i32 %952, 31
  %954 = add nuw nsw i32 %953, 257
  store i32 %954, ptr %57, align 4, !tbaa !77
  %955 = lshr i32 %952, 5
  %956 = and i32 %955, 31
  %957 = add nuw nsw i32 %956, 1
  store i32 %957, ptr %58, align 8, !tbaa !78
  %958 = lshr i32 %952, 10
  %959 = and i32 %958, 15
  %960 = add nuw nsw i32 %959, 4
  store i32 %960, ptr %59, align 8, !tbaa !79
  %961 = lshr i64 %950, 14
  %962 = add i32 %951, -14
  %963 = icmp ugt i32 %953, 29
  %964 = icmp ugt i32 %956, 29
  %965 = or i1 %963, %964
  br i1 %965, label %966, label %967

966:                                              ; preds = %947
  store ptr @.str.8, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

967:                                              ; preds = %947
  store i32 0, ptr %60, align 4, !tbaa !48
  store i32 16197, ptr %21, align 8, !tbaa !16
  br label %972

968:                                              ; preds = %90
  %969 = load i32, ptr %59, align 8, !tbaa !79
  %970 = load i32, ptr %60, align 4, !tbaa !48
  %971 = icmp ult i32 %970, %969
  br i1 %971, label %972, label %981

972:                                              ; preds = %967, %968
  %973 = phi i32 [ %962, %967 ], [ %97, %968 ]
  %974 = phi i64 [ %961, %967 ], [ %96, %968 ]
  %975 = phi i32 [ %949, %967 ], [ %94, %968 ]
  %976 = phi ptr [ %948, %967 ], [ %92, %968 ]
  %977 = phi i32 [ %960, %967 ], [ %969, %968 ]
  %978 = phi i32 [ 0, %967 ], [ %970, %968 ]
  %979 = zext i32 %978 to i64
  %980 = zext i32 %977 to i64
  br label %990

981:                                              ; preds = %1008, %968
  %982 = phi ptr [ %92, %968 ], [ %1009, %1008 ]
  %983 = phi i32 [ %94, %968 ], [ %1010, %1008 ]
  %984 = phi i64 [ %96, %968 ], [ %1021, %1008 ]
  %985 = phi i32 [ %97, %968 ], [ %1022, %1008 ]
  %986 = phi i32 [ %970, %968 ], [ %977, %1008 ]
  %987 = icmp ult i32 %986, 19
  br i1 %987, label %988, label %1034

988:                                              ; preds = %981
  %989 = zext nneg i32 %986 to i64
  br label %1024

990:                                              ; preds = %972, %1008
  %991 = phi i64 [ %979, %972 ], [ %1015, %1008 ]
  %992 = phi i32 [ %973, %972 ], [ %1022, %1008 ]
  %993 = phi i64 [ %974, %972 ], [ %1021, %1008 ]
  %994 = phi i32 [ %975, %972 ], [ %1010, %1008 ]
  %995 = phi ptr [ %976, %972 ], [ %1009, %1008 ]
  %996 = icmp ult i32 %992, 3
  br i1 %996, label %997, label %1008

997:                                              ; preds = %990
  %998 = icmp eq i32 %994, 0
  br i1 %998, label %2202, label %999

999:                                              ; preds = %997
  %1000 = or disjoint i32 %992, 8
  %1001 = add i32 %994, -1
  %1002 = getelementptr inbounds i8, ptr %995, i64 1
  %1003 = load i8, ptr %995, align 1, !tbaa !40
  %1004 = zext i8 %1003 to i64
  %1005 = zext nneg i32 %992 to i64
  %1006 = shl nuw nsw i64 %1004, %1005
  %1007 = add i64 %1006, %993
  br label %1008

1008:                                             ; preds = %999, %990
  %1009 = phi ptr [ %1002, %999 ], [ %995, %990 ]
  %1010 = phi i32 [ %1001, %999 ], [ %994, %990 ]
  %1011 = phi i64 [ %1007, %999 ], [ %993, %990 ]
  %1012 = phi i32 [ %1000, %999 ], [ %992, %990 ]
  %1013 = trunc i64 %1011 to i16
  %1014 = and i16 %1013, 7
  %1015 = add nuw nsw i64 %991, 1
  %1016 = trunc i64 %1015 to i32
  store i32 %1016, ptr %60, align 4, !tbaa !48
  %1017 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %991
  %1018 = load i16, ptr %1017, align 2, !tbaa !80
  %1019 = zext i16 %1018 to i64
  %1020 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1019
  store i16 %1014, ptr %1020, align 2, !tbaa !80
  %1021 = lshr i64 %1011, 3
  %1022 = add i32 %1012, -3
  %1023 = icmp eq i64 %1015, %980
  br i1 %1023, label %981, label %990, !llvm.loop !82

1024:                                             ; preds = %988, %1024
  %1025 = phi i64 [ %989, %988 ], [ %1026, %1024 ]
  %1026 = add nuw nsw i64 %1025, 1
  %1027 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1025
  %1028 = load i16, ptr %1027, align 2, !tbaa !80
  %1029 = zext i16 %1028 to i64
  %1030 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1029
  store i16 0, ptr %1030, align 2, !tbaa !80
  %1031 = and i64 %1026, 4294967295
  %1032 = icmp eq i64 %1031, 19
  br i1 %1032, label %1033, label %1024, !llvm.loop !83

1033:                                             ; preds = %1024
  store i32 19, ptr %60, align 4, !tbaa !48
  br label %1034

1034:                                             ; preds = %1033, %981
  store ptr %61, ptr %62, align 8, !tbaa !29
  store ptr %61, ptr %63, align 8, !tbaa !30
  store ptr %61, ptr %64, align 8, !tbaa !31
  store i32 7, ptr %65, align 8, !tbaa !84
  %1035 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %66, i32 noundef 19, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef nonnull %67) #9
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1034
  store ptr @.str.9, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1038:                                             ; preds = %1034
  store i32 0, ptr %60, align 4, !tbaa !48
  store i32 16198, ptr %21, align 8, !tbaa !16
  br label %1039

1039:                                             ; preds = %105, %1038
  %1040 = phi i32 [ %106, %105 ], [ 0, %1038 ]
  %1041 = phi ptr [ %92, %105 ], [ %982, %1038 ]
  %1042 = phi i32 [ %94, %105 ], [ %983, %1038 ]
  %1043 = phi i64 [ %96, %105 ], [ %984, %1038 ]
  %1044 = phi i32 [ %97, %105 ], [ %985, %1038 ]
  %1045 = phi i32 [ %99, %105 ], [ 0, %1038 ]
  %1046 = load i32, ptr %57, align 4, !tbaa !77
  %1047 = load i32, ptr %58, align 8, !tbaa !78
  %1048 = add i32 %1047, %1046
  %1049 = icmp ult i32 %1040, %1048
  br i1 %1049, label %1050, label %1343

1050:                                             ; preds = %1039
  %1051 = load ptr, ptr %64, align 8, !tbaa !31
  %1052 = load i32, ptr %65, align 8, !tbaa !84
  %1053 = shl nsw i32 -1, %1052
  %1054 = xor i32 %1053, -1
  br label %1055

1055:                                             ; preds = %1050, %1336
  %1056 = phi i32 [ %1044, %1050 ], [ %1341, %1336 ]
  %1057 = phi i64 [ %1043, %1050 ], [ %1340, %1336 ]
  %1058 = phi i32 [ %1042, %1050 ], [ %1339, %1336 ]
  %1059 = phi ptr [ %1041, %1050 ], [ %1338, %1336 ]
  %1060 = phi i32 [ %1040, %1050 ], [ %1337, %1336 ]
  %1061 = trunc i64 %1057 to i32
  %1062 = and i32 %1054, %1061
  %1063 = zext nneg i32 %1062 to i64
  %1064 = getelementptr inbounds %struct.code, ptr %1051, i64 %1063, i32 1
  %1065 = load i8, ptr %1064, align 1, !tbaa.struct !85
  %1066 = zext i8 %1065 to i32
  %1067 = icmp ult i32 %1056, %1066
  br i1 %1067, label %1068, label %1094

1068:                                             ; preds = %1055
  %1069 = zext nneg i32 %1056 to i64
  br label %1070

1070:                                             ; preds = %1068, %1076
  %1071 = phi i64 [ %1069, %1068 ], [ %1083, %1076 ]
  %1072 = phi i64 [ %1057, %1068 ], [ %1082, %1076 ]
  %1073 = phi i32 [ %1058, %1068 ], [ %1077, %1076 ]
  %1074 = phi ptr [ %1059, %1068 ], [ %1078, %1076 ]
  %1075 = icmp eq i32 %1073, 0
  br i1 %1075, label %2166, label %1076

1076:                                             ; preds = %1070
  %1077 = add i32 %1073, -1
  %1078 = getelementptr inbounds i8, ptr %1074, i64 1
  %1079 = load i8, ptr %1074, align 1, !tbaa !40
  %1080 = zext i8 %1079 to i64
  %1081 = shl i64 %1080, %1071
  %1082 = add i64 %1081, %1072
  %1083 = add nuw nsw i64 %1071, 8
  %1084 = trunc i64 %1082 to i32
  %1085 = and i32 %1054, %1084
  %1086 = zext nneg i32 %1085 to i64
  %1087 = getelementptr inbounds %struct.code, ptr %1051, i64 %1086, i32 1
  %1088 = load i8, ptr %1087, align 1, !tbaa.struct !85
  %1089 = zext i8 %1088 to i64
  %1090 = icmp ult i64 %1083, %1089
  br i1 %1090, label %1070, label %1091

1091:                                             ; preds = %1076
  %1092 = zext i8 %1088 to i32
  %1093 = trunc i64 %1083 to i32
  br label %1094

1094:                                             ; preds = %1091, %1055
  %1095 = phi i64 [ %1063, %1055 ], [ %1086, %1091 ]
  %1096 = phi i32 [ %1066, %1055 ], [ %1092, %1091 ]
  %1097 = phi ptr [ %1059, %1055 ], [ %1078, %1091 ]
  %1098 = phi i32 [ %1058, %1055 ], [ %1077, %1091 ]
  %1099 = phi i64 [ %1057, %1055 ], [ %1082, %1091 ]
  %1100 = phi i32 [ %1056, %1055 ], [ %1093, %1091 ]
  %1101 = phi i8 [ %1065, %1055 ], [ %1088, %1091 ]
  %1102 = getelementptr inbounds %struct.code, ptr %1051, i64 %1095, i32 2
  %1103 = load i16, ptr %1102, align 2, !tbaa.struct !86
  %1104 = icmp ult i16 %1103, 16
  br i1 %1104, label %1105, label %1112

1105:                                             ; preds = %1094
  %1106 = zext nneg i8 %1101 to i64
  %1107 = lshr i64 %1099, %1106
  %1108 = sub i32 %1100, %1096
  %1109 = add i32 %1060, 1
  store i32 %1109, ptr %60, align 4, !tbaa !48
  %1110 = zext i32 %1060 to i64
  %1111 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1110
  store i16 %1103, ptr %1111, align 2, !tbaa !80
  br label %1336

1112:                                             ; preds = %1094
  switch i16 %1103, label %1125 [
    i16 16, label %1119
    i16 17, label %1113
  ]

1113:                                             ; preds = %1112
  %1114 = add nuw nsw i32 %1096, 3
  %1115 = icmp ult i32 %1100, %1114
  br i1 %1115, label %1116, label %1185

1116:                                             ; preds = %1113
  %1117 = zext nneg i32 %1100 to i64
  %1118 = zext nneg i32 %1114 to i64
  br label %1168

1119:                                             ; preds = %1112
  %1120 = add nuw nsw i32 %1096, 2
  %1121 = icmp ult i32 %1100, %1120
  br i1 %1121, label %1122, label %1148

1122:                                             ; preds = %1119
  %1123 = zext nneg i32 %1100 to i64
  %1124 = zext nneg i32 %1120 to i64
  br label %1131

1125:                                             ; preds = %1112
  %1126 = add nuw nsw i32 %1096, 7
  %1127 = icmp ult i32 %1100, %1126
  br i1 %1127, label %1128, label %1215

1128:                                             ; preds = %1125
  %1129 = zext nneg i32 %1100 to i64
  %1130 = zext nneg i32 %1126 to i64
  br label %1198

1131:                                             ; preds = %1122, %1137
  %1132 = phi i64 [ %1123, %1122 ], [ %1144, %1137 ]
  %1133 = phi i64 [ %1099, %1122 ], [ %1143, %1137 ]
  %1134 = phi i32 [ %1098, %1122 ], [ %1138, %1137 ]
  %1135 = phi ptr [ %1097, %1122 ], [ %1139, %1137 ]
  %1136 = icmp eq i32 %1134, 0
  br i1 %1136, label %2107, label %1137

1137:                                             ; preds = %1131
  %1138 = add i32 %1134, -1
  %1139 = getelementptr inbounds i8, ptr %1135, i64 1
  %1140 = load i8, ptr %1135, align 1, !tbaa !40
  %1141 = zext i8 %1140 to i64
  %1142 = shl i64 %1141, %1132
  %1143 = add i64 %1142, %1133
  %1144 = add nuw nsw i64 %1132, 8
  %1145 = icmp ult i64 %1144, %1124
  br i1 %1145, label %1131, label %1146, !llvm.loop !87

1146:                                             ; preds = %1137
  %1147 = trunc i64 %1144 to i32
  br label %1148

1148:                                             ; preds = %1146, %1119
  %1149 = phi ptr [ %1097, %1119 ], [ %1139, %1146 ]
  %1150 = phi i32 [ %1098, %1119 ], [ %1138, %1146 ]
  %1151 = phi i64 [ %1099, %1119 ], [ %1143, %1146 ]
  %1152 = phi i32 [ %1100, %1119 ], [ %1147, %1146 ]
  %1153 = zext nneg i8 %1101 to i64
  %1154 = lshr i64 %1151, %1153
  %1155 = sub i32 %1152, %1096
  %1156 = icmp eq i32 %1060, 0
  br i1 %1156, label %1157, label %1158

1157:                                             ; preds = %1148
  store ptr @.str.10, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1158:                                             ; preds = %1148
  %1159 = add i32 %1060, -1
  %1160 = zext i32 %1159 to i64
  %1161 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1160
  %1162 = load i16, ptr %1161, align 2, !tbaa !80
  %1163 = trunc i64 %1154 to i32
  %1164 = and i32 %1163, 3
  %1165 = add nuw nsw i32 %1164, 3
  %1166 = lshr i64 %1154, 2
  %1167 = add i32 %1155, -2
  br label %1228

1168:                                             ; preds = %1116, %1174
  %1169 = phi i64 [ %1117, %1116 ], [ %1181, %1174 ]
  %1170 = phi i64 [ %1099, %1116 ], [ %1180, %1174 ]
  %1171 = phi i32 [ %1098, %1116 ], [ %1175, %1174 ]
  %1172 = phi ptr [ %1097, %1116 ], [ %1176, %1174 ]
  %1173 = icmp eq i32 %1171, 0
  br i1 %1173, label %2109, label %1174

1174:                                             ; preds = %1168
  %1175 = add i32 %1171, -1
  %1176 = getelementptr inbounds i8, ptr %1172, i64 1
  %1177 = load i8, ptr %1172, align 1, !tbaa !40
  %1178 = zext i8 %1177 to i64
  %1179 = shl i64 %1178, %1169
  %1180 = add i64 %1179, %1170
  %1181 = add nuw nsw i64 %1169, 8
  %1182 = icmp ult i64 %1181, %1118
  br i1 %1182, label %1168, label %1183, !llvm.loop !88

1183:                                             ; preds = %1174
  %1184 = trunc i64 %1181 to i32
  br label %1185

1185:                                             ; preds = %1183, %1113
  %1186 = phi ptr [ %1097, %1113 ], [ %1176, %1183 ]
  %1187 = phi i32 [ %1098, %1113 ], [ %1175, %1183 ]
  %1188 = phi i64 [ %1099, %1113 ], [ %1180, %1183 ]
  %1189 = phi i32 [ %1100, %1113 ], [ %1184, %1183 ]
  %1190 = zext nneg i8 %1101 to i64
  %1191 = lshr i64 %1188, %1190
  %1192 = trunc i64 %1191 to i32
  %1193 = and i32 %1192, 7
  %1194 = add nuw nsw i32 %1193, 3
  %1195 = lshr i64 %1191, 3
  %1196 = sub i32 %1189, %1096
  %1197 = add i32 %1196, -3
  br label %1228

1198:                                             ; preds = %1128, %1204
  %1199 = phi i64 [ %1129, %1128 ], [ %1211, %1204 ]
  %1200 = phi i64 [ %1099, %1128 ], [ %1210, %1204 ]
  %1201 = phi i32 [ %1098, %1128 ], [ %1205, %1204 ]
  %1202 = phi ptr [ %1097, %1128 ], [ %1206, %1204 ]
  %1203 = icmp eq i32 %1201, 0
  br i1 %1203, label %2105, label %1204

1204:                                             ; preds = %1198
  %1205 = add i32 %1201, -1
  %1206 = getelementptr inbounds i8, ptr %1202, i64 1
  %1207 = load i8, ptr %1202, align 1, !tbaa !40
  %1208 = zext i8 %1207 to i64
  %1209 = shl i64 %1208, %1199
  %1210 = add i64 %1209, %1200
  %1211 = add nuw nsw i64 %1199, 8
  %1212 = icmp ult i64 %1211, %1130
  br i1 %1212, label %1198, label %1213, !llvm.loop !89

1213:                                             ; preds = %1204
  %1214 = trunc i64 %1211 to i32
  br label %1215

1215:                                             ; preds = %1213, %1125
  %1216 = phi ptr [ %1097, %1125 ], [ %1206, %1213 ]
  %1217 = phi i32 [ %1098, %1125 ], [ %1205, %1213 ]
  %1218 = phi i64 [ %1099, %1125 ], [ %1210, %1213 ]
  %1219 = phi i32 [ %1100, %1125 ], [ %1214, %1213 ]
  %1220 = zext nneg i8 %1101 to i64
  %1221 = lshr i64 %1218, %1220
  %1222 = trunc i64 %1221 to i32
  %1223 = and i32 %1222, 127
  %1224 = add nuw nsw i32 %1223, 11
  %1225 = lshr i64 %1221, 7
  %1226 = sub i32 %1219, %1096
  %1227 = add i32 %1226, -7
  br label %1228

1228:                                             ; preds = %1185, %1215, %1158
  %1229 = phi ptr [ %1149, %1158 ], [ %1186, %1185 ], [ %1216, %1215 ]
  %1230 = phi i32 [ %1150, %1158 ], [ %1187, %1185 ], [ %1217, %1215 ]
  %1231 = phi i64 [ %1166, %1158 ], [ %1195, %1185 ], [ %1225, %1215 ]
  %1232 = phi i32 [ %1167, %1158 ], [ %1197, %1185 ], [ %1227, %1215 ]
  %1233 = phi i32 [ %1165, %1158 ], [ %1194, %1185 ], [ %1224, %1215 ]
  %1234 = phi i16 [ %1162, %1158 ], [ 0, %1185 ], [ 0, %1215 ]
  %1235 = add i32 %1233, %1060
  %1236 = icmp ugt i32 %1235, %1048
  br i1 %1236, label %1316, label %1237

1237:                                             ; preds = %1228
  %1238 = icmp ult i32 %1233, 16
  %1239 = sub nsw i32 0, %1233
  %1240 = icmp ugt i32 %1060, %1239
  %1241 = select i1 %1238, i1 true, i1 %1240
  br i1 %1241, label %1295, label %1242

1242:                                             ; preds = %1237
  %1243 = and i32 %1233, -16
  %1244 = and i32 %1233, 15
  %1245 = add i32 %1060, %1243
  %1246 = insertelement <8 x i16> poison, i16 %1234, i64 0
  %1247 = shufflevector <8 x i16> %1246, <8 x i16> poison, <8 x i32> zeroinitializer
  %1248 = zext i32 %1060 to i64
  %1249 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1248
  %1250 = getelementptr inbounds i16, ptr %1249, i64 8
  store <8 x i16> %1247, ptr %1249, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1250, align 2, !tbaa !80
  %1251 = icmp eq i32 %1243, 16
  br i1 %1251, label %1293, label %1252, !llvm.loop !90

1252:                                             ; preds = %1242
  %1253 = add i32 %1060, 16
  %1254 = zext i32 %1253 to i64
  %1255 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1254
  %1256 = getelementptr inbounds i16, ptr %1255, i64 8
  store <8 x i16> %1247, ptr %1255, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1256, align 2, !tbaa !80
  %1257 = icmp eq i32 %1243, 32
  br i1 %1257, label %1293, label %1258, !llvm.loop !90

1258:                                             ; preds = %1252
  %1259 = add i32 %1060, 32
  %1260 = zext i32 %1259 to i64
  %1261 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1260
  %1262 = getelementptr inbounds i16, ptr %1261, i64 8
  store <8 x i16> %1247, ptr %1261, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1262, align 2, !tbaa !80
  %1263 = icmp eq i32 %1243, 48
  br i1 %1263, label %1293, label %1264, !llvm.loop !90

1264:                                             ; preds = %1258
  %1265 = add i32 %1060, 48
  %1266 = zext i32 %1265 to i64
  %1267 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1266
  %1268 = getelementptr inbounds i16, ptr %1267, i64 8
  store <8 x i16> %1247, ptr %1267, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1268, align 2, !tbaa !80
  %1269 = icmp eq i32 %1243, 64
  br i1 %1269, label %1293, label %1270, !llvm.loop !90

1270:                                             ; preds = %1264
  %1271 = add i32 %1060, 64
  %1272 = zext i32 %1271 to i64
  %1273 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1272
  %1274 = getelementptr inbounds i16, ptr %1273, i64 8
  store <8 x i16> %1247, ptr %1273, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1274, align 2, !tbaa !80
  %1275 = icmp eq i32 %1243, 80
  br i1 %1275, label %1293, label %1276, !llvm.loop !90

1276:                                             ; preds = %1270
  %1277 = add i32 %1060, 80
  %1278 = zext i32 %1277 to i64
  %1279 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1278
  %1280 = getelementptr inbounds i16, ptr %1279, i64 8
  store <8 x i16> %1247, ptr %1279, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1280, align 2, !tbaa !80
  %1281 = icmp eq i32 %1243, 96
  br i1 %1281, label %1293, label %1282, !llvm.loop !90

1282:                                             ; preds = %1276
  %1283 = add i32 %1060, 96
  %1284 = zext i32 %1283 to i64
  %1285 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1284
  %1286 = getelementptr inbounds i16, ptr %1285, i64 8
  store <8 x i16> %1247, ptr %1285, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1286, align 2, !tbaa !80
  %1287 = icmp eq i32 %1243, 112
  br i1 %1287, label %1293, label %1288, !llvm.loop !90

1288:                                             ; preds = %1282
  %1289 = add i32 %1060, 112
  %1290 = zext i32 %1289 to i64
  %1291 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1290
  %1292 = getelementptr inbounds i16, ptr %1291, i64 8
  store <8 x i16> %1247, ptr %1291, align 2, !tbaa !80
  store <8 x i16> %1247, ptr %1292, align 2, !tbaa !80
  br label %1293

1293:                                             ; preds = %1288, %1282, %1276, %1270, %1264, %1258, %1252, %1242
  %1294 = icmp eq i32 %1233, %1243
  br i1 %1294, label %1334, label %1295

1295:                                             ; preds = %1237, %1293
  %1296 = phi i32 [ %1233, %1237 ], [ %1244, %1293 ]
  %1297 = phi i32 [ %1060, %1237 ], [ %1245, %1293 ]
  %1298 = add nsw i32 %1296, -1
  %1299 = and i32 %1296, 3
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1311, label %1301

1301:                                             ; preds = %1295, %1301
  %1302 = phi i32 [ %1305, %1301 ], [ %1296, %1295 ]
  %1303 = phi i32 [ %1306, %1301 ], [ %1297, %1295 ]
  %1304 = phi i32 [ %1309, %1301 ], [ 0, %1295 ]
  %1305 = add nsw i32 %1302, -1
  %1306 = add i32 %1303, 1
  %1307 = zext i32 %1303 to i64
  %1308 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1307
  store i16 %1234, ptr %1308, align 2, !tbaa !80
  %1309 = add i32 %1304, 1
  %1310 = icmp eq i32 %1309, %1299
  br i1 %1310, label %1311, label %1301, !llvm.loop !93

1311:                                             ; preds = %1301, %1295
  %1312 = phi i32 [ undef, %1295 ], [ %1306, %1301 ]
  %1313 = phi i32 [ %1296, %1295 ], [ %1305, %1301 ]
  %1314 = phi i32 [ %1297, %1295 ], [ %1306, %1301 ]
  %1315 = icmp ult i32 %1298, 3
  br i1 %1315, label %1334, label %1317

1316:                                             ; preds = %1228
  store ptr @.str.10, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1317:                                             ; preds = %1311, %1317
  %1318 = phi i32 [ %1329, %1317 ], [ %1313, %1311 ]
  %1319 = phi i32 [ %1330, %1317 ], [ %1314, %1311 ]
  %1320 = add i32 %1319, 1
  %1321 = zext i32 %1319 to i64
  %1322 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1321
  store i16 %1234, ptr %1322, align 2, !tbaa !80
  %1323 = add i32 %1319, 2
  %1324 = zext i32 %1320 to i64
  %1325 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1324
  store i16 %1234, ptr %1325, align 2, !tbaa !80
  %1326 = add i32 %1319, 3
  %1327 = zext i32 %1323 to i64
  %1328 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1327
  store i16 %1234, ptr %1328, align 2, !tbaa !80
  %1329 = add nsw i32 %1318, -4
  %1330 = add i32 %1319, 4
  %1331 = zext i32 %1326 to i64
  %1332 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 29, i64 %1331
  store i16 %1234, ptr %1332, align 2, !tbaa !80
  %1333 = icmp eq i32 %1329, 0
  br i1 %1333, label %1334, label %1317, !llvm.loop !95

1334:                                             ; preds = %1311, %1317, %1293
  %1335 = phi i32 [ %1245, %1293 ], [ %1312, %1311 ], [ %1330, %1317 ]
  store i32 %1335, ptr %60, align 4, !tbaa !48
  br label %1336

1336:                                             ; preds = %1334, %1105
  %1337 = phi i32 [ %1109, %1105 ], [ %1335, %1334 ]
  %1338 = phi ptr [ %1097, %1105 ], [ %1229, %1334 ]
  %1339 = phi i32 [ %1098, %1105 ], [ %1230, %1334 ]
  %1340 = phi i64 [ %1107, %1105 ], [ %1231, %1334 ]
  %1341 = phi i32 [ %1108, %1105 ], [ %1232, %1334 ]
  %1342 = icmp ult i32 %1337, %1048
  br i1 %1342, label %1055, label %1343, !llvm.loop !96

1343:                                             ; preds = %1336, %1039
  %1344 = phi ptr [ %1041, %1039 ], [ %1338, %1336 ]
  %1345 = phi i32 [ %1042, %1039 ], [ %1339, %1336 ]
  %1346 = phi i64 [ %1043, %1039 ], [ %1340, %1336 ]
  %1347 = phi i32 [ %1044, %1039 ], [ %1341, %1336 ]
  %1348 = load i16, ptr %68, align 8, !tbaa !80
  %1349 = icmp eq i16 %1348, 0
  br i1 %1349, label %1350, label %1351

1350:                                             ; preds = %1343
  store ptr @.str.11, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1351:                                             ; preds = %1343
  store ptr %61, ptr %62, align 8, !tbaa !29
  store ptr %61, ptr %64, align 8, !tbaa !31
  store i32 9, ptr %65, align 8, !tbaa !84
  %1352 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %66, i32 noundef %1046, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef nonnull %67) #9
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1355, label %1354

1354:                                             ; preds = %1351
  store ptr @.str.12, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1355:                                             ; preds = %1351
  %1356 = load ptr, ptr %62, align 8, !tbaa !29
  store ptr %1356, ptr %63, align 8, !tbaa !30
  store i32 6, ptr %69, align 4, !tbaa !97
  %1357 = load i32, ptr %57, align 4, !tbaa !77
  %1358 = zext i32 %1357 to i64
  %1359 = getelementptr inbounds i16, ptr %66, i64 %1358
  %1360 = load i32, ptr %58, align 8, !tbaa !78
  %1361 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %1359, i32 noundef %1360, ptr noundef nonnull %62, ptr noundef nonnull %69, ptr noundef nonnull %67) #9
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1364, label %1363

1363:                                             ; preds = %1355
  store ptr @.str.13, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1364:                                             ; preds = %1355
  store i32 16199, ptr %21, align 8, !tbaa !16
  br i1 %70, label %2202, label %1365

1365:                                             ; preds = %1364, %90
  %1366 = phi ptr [ %92, %90 ], [ %1344, %1364 ]
  %1367 = phi i32 [ %94, %90 ], [ %1345, %1364 ]
  %1368 = phi i64 [ %96, %90 ], [ %1346, %1364 ]
  %1369 = phi i32 [ %97, %90 ], [ %1347, %1364 ]
  %1370 = phi i32 [ %99, %90 ], [ 0, %1364 ]
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %1371

1371:                                             ; preds = %90, %1365
  %1372 = phi ptr [ %92, %90 ], [ %1366, %1365 ]
  %1373 = phi i32 [ %94, %90 ], [ %1367, %1365 ]
  %1374 = phi i64 [ %96, %90 ], [ %1368, %1365 ]
  %1375 = phi i32 [ %97, %90 ], [ %1369, %1365 ]
  %1376 = phi i32 [ %99, %90 ], [ %1370, %1365 ]
  %1377 = icmp ugt i32 %1373, 5
  %1378 = icmp ugt i32 %95, 257
  %1379 = select i1 %1377, i1 %1378, i1 false
  br i1 %1379, label %1380, label %1390

1380:                                             ; preds = %1371
  store ptr %93, ptr %26, align 8, !tbaa !43
  store i32 %95, ptr %41, align 8, !tbaa !46
  store ptr %1372, ptr %0, align 8, !tbaa !44
  store i32 %1373, ptr %43, align 8, !tbaa !45
  store i64 %1374, ptr %45, align 8, !tbaa !27
  store i32 %1375, ptr %47, align 8, !tbaa !28
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %98) #9
  %1381 = load ptr, ptr %26, align 8, !tbaa !43
  %1382 = load i32, ptr %41, align 8, !tbaa !46
  %1383 = load ptr, ptr %0, align 8, !tbaa !44
  %1384 = load i32, ptr %43, align 8, !tbaa !45
  %1385 = load i64, ptr %45, align 8, !tbaa !27
  %1386 = load i32, ptr %47, align 8, !tbaa !28
  %1387 = load i32, ptr %21, align 8, !tbaa !16
  %1388 = icmp eq i32 %1387, 16191
  br i1 %1388, label %1389, label %2095

1389:                                             ; preds = %1380
  store i32 -1, ptr %71, align 4, !tbaa !33
  br label %2095

1390:                                             ; preds = %1371
  store i32 0, ptr %71, align 4, !tbaa !33
  %1391 = load ptr, ptr %64, align 8, !tbaa !31
  %1392 = load i32, ptr %65, align 8, !tbaa !84
  %1393 = shl nsw i32 -1, %1392
  %1394 = xor i32 %1393, -1
  %1395 = trunc i64 %1374 to i32
  %1396 = and i32 %1394, %1395
  %1397 = zext nneg i32 %1396 to i64
  %1398 = getelementptr inbounds %struct.code, ptr %1391, i64 %1397
  %1399 = getelementptr inbounds i8, ptr %1398, i64 1
  %1400 = load i8, ptr %1399, align 1, !tbaa.struct !85
  %1401 = zext i8 %1400 to i32
  %1402 = icmp ult i32 %1375, %1401
  br i1 %1402, label %1403, label %1430

1403:                                             ; preds = %1390
  %1404 = zext nneg i32 %1375 to i64
  br label %1405

1405:                                             ; preds = %1403, %1411
  %1406 = phi i64 [ %1404, %1403 ], [ %1418, %1411 ]
  %1407 = phi i64 [ %1374, %1403 ], [ %1417, %1411 ]
  %1408 = phi i32 [ %1373, %1403 ], [ %1412, %1411 ]
  %1409 = phi ptr [ %1372, %1403 ], [ %1413, %1411 ]
  %1410 = icmp eq i32 %1408, 0
  br i1 %1410, label %2196, label %1411

1411:                                             ; preds = %1405
  %1412 = add i32 %1408, -1
  %1413 = getelementptr inbounds i8, ptr %1409, i64 1
  %1414 = load i8, ptr %1409, align 1, !tbaa !40
  %1415 = zext i8 %1414 to i64
  %1416 = shl i64 %1415, %1406
  %1417 = add i64 %1416, %1407
  %1418 = add nuw nsw i64 %1406, 8
  %1419 = trunc i64 %1417 to i32
  %1420 = and i32 %1394, %1419
  %1421 = zext nneg i32 %1420 to i64
  %1422 = getelementptr inbounds %struct.code, ptr %1391, i64 %1421
  %1423 = getelementptr inbounds i8, ptr %1422, i64 1
  %1424 = load i8, ptr %1423, align 1, !tbaa.struct !85
  %1425 = zext i8 %1424 to i64
  %1426 = icmp ult i64 %1418, %1425
  br i1 %1426, label %1405, label %1427

1427:                                             ; preds = %1411
  %1428 = zext i8 %1424 to i32
  %1429 = trunc i64 %1418 to i32
  br label %1430

1430:                                             ; preds = %1427, %1390
  %1431 = phi ptr [ %1398, %1390 ], [ %1422, %1427 ]
  %1432 = phi ptr [ %1372, %1390 ], [ %1413, %1427 ]
  %1433 = phi i32 [ %1373, %1390 ], [ %1412, %1427 ]
  %1434 = phi i64 [ %1374, %1390 ], [ %1417, %1427 ]
  %1435 = phi i32 [ %1375, %1390 ], [ %1429, %1427 ]
  %1436 = phi i8 [ %1400, %1390 ], [ %1424, %1427 ]
  %1437 = phi i32 [ %1401, %1390 ], [ %1428, %1427 ]
  %1438 = getelementptr inbounds i8, ptr %1431, i64 2
  %1439 = load i16, ptr %1438, align 2, !tbaa.struct !86
  %1440 = load i8, ptr %1431, align 2, !tbaa.struct !98
  %1441 = add i8 %1440, -1
  %1442 = icmp ult i8 %1441, 15
  br i1 %1442, label %1443, label %1503

1443:                                             ; preds = %1430
  %1444 = zext nneg i8 %1440 to i32
  %1445 = zext i16 %1439 to i32
  %1446 = add nuw nsw i32 %1437, %1444
  %1447 = shl nsw i32 -1, %1446
  %1448 = xor i32 %1447, -1
  %1449 = trunc i64 %1434 to i32
  %1450 = and i32 %1449, %1448
  %1451 = lshr i32 %1450, %1437
  %1452 = add nuw i32 %1451, %1445
  %1453 = zext i32 %1452 to i64
  %1454 = getelementptr inbounds %struct.code, ptr %1391, i64 %1453
  %1455 = getelementptr inbounds i8, ptr %1454, i64 1
  %1456 = load i8, ptr %1455, align 1, !tbaa.struct !85
  %1457 = zext i8 %1456 to i32
  %1458 = add nuw nsw i32 %1437, %1457
  %1459 = icmp ugt i32 %1458, %1435
  br i1 %1459, label %1460, label %1490

1460:                                             ; preds = %1443
  %1461 = zext nneg i32 %1435 to i64
  br label %1462

1462:                                             ; preds = %1460, %1468
  %1463 = phi i64 [ %1461, %1460 ], [ %1475, %1468 ]
  %1464 = phi i64 [ %1434, %1460 ], [ %1474, %1468 ]
  %1465 = phi i32 [ %1433, %1460 ], [ %1469, %1468 ]
  %1466 = phi ptr [ %1432, %1460 ], [ %1470, %1468 ]
  %1467 = icmp eq i32 %1465, 0
  br i1 %1467, label %2191, label %1468

1468:                                             ; preds = %1462
  %1469 = add i32 %1465, -1
  %1470 = getelementptr inbounds i8, ptr %1466, i64 1
  %1471 = load i8, ptr %1466, align 1, !tbaa !40
  %1472 = zext i8 %1471 to i64
  %1473 = shl i64 %1472, %1463
  %1474 = add i64 %1473, %1464
  %1475 = add nuw nsw i64 %1463, 8
  %1476 = trunc i64 %1474 to i32
  %1477 = and i32 %1476, %1448
  %1478 = lshr i32 %1477, %1437
  %1479 = add nuw i32 %1478, %1445
  %1480 = zext i32 %1479 to i64
  %1481 = getelementptr inbounds %struct.code, ptr %1391, i64 %1480
  %1482 = getelementptr inbounds i8, ptr %1481, i64 1
  %1483 = load i8, ptr %1482, align 1, !tbaa.struct !85
  %1484 = zext i8 %1483 to i32
  %1485 = add nuw nsw i32 %1437, %1484
  %1486 = zext nneg i32 %1485 to i64
  %1487 = icmp ult i64 %1475, %1486
  br i1 %1487, label %1462, label %1488

1488:                                             ; preds = %1468
  %1489 = trunc i64 %1475 to i32
  br label %1490

1490:                                             ; preds = %1488, %1443
  %1491 = phi ptr [ %1432, %1443 ], [ %1470, %1488 ]
  %1492 = phi i32 [ %1433, %1443 ], [ %1469, %1488 ]
  %1493 = phi i64 [ %1434, %1443 ], [ %1474, %1488 ]
  %1494 = phi i32 [ %1435, %1443 ], [ %1489, %1488 ]
  %1495 = phi ptr [ %1454, %1443 ], [ %1481, %1488 ]
  %1496 = phi i8 [ %1456, %1443 ], [ %1483, %1488 ]
  %1497 = getelementptr inbounds i8, ptr %1495, i64 2
  %1498 = load i16, ptr %1497, align 2, !tbaa.struct !86
  %1499 = load i8, ptr %1495, align 2, !tbaa.struct !98
  %1500 = zext nneg i8 %1436 to i64
  %1501 = lshr i64 %1493, %1500
  %1502 = sub i32 %1494, %1437
  br label %1503

1503:                                             ; preds = %1430, %1490
  %1504 = phi i32 [ %1437, %1490 ], [ 0, %1430 ]
  %1505 = phi ptr [ %1491, %1490 ], [ %1432, %1430 ]
  %1506 = phi i32 [ %1492, %1490 ], [ %1433, %1430 ]
  %1507 = phi i64 [ %1501, %1490 ], [ %1434, %1430 ]
  %1508 = phi i32 [ %1502, %1490 ], [ %1435, %1430 ]
  %1509 = phi i16 [ %1498, %1490 ], [ %1439, %1430 ]
  %1510 = phi i8 [ %1496, %1490 ], [ %1436, %1430 ]
  %1511 = phi i8 [ %1499, %1490 ], [ %1440, %1430 ]
  %1512 = zext i8 %1510 to i32
  %1513 = zext nneg i8 %1510 to i64
  %1514 = lshr i64 %1507, %1513
  %1515 = sub i32 %1508, %1512
  %1516 = add nuw nsw i32 %1504, %1512
  store i32 %1516, ptr %71, align 4, !tbaa !33
  %1517 = zext i16 %1509 to i32
  store i32 %1517, ptr %56, align 4, !tbaa !62
  %1518 = zext i8 %1511 to i32
  %1519 = icmp eq i8 %1511, 0
  br i1 %1519, label %1520, label %1521

1520:                                             ; preds = %1503
  store i32 16205, ptr %21, align 8, !tbaa !16
  br label %2095

1521:                                             ; preds = %1503
  %1522 = and i32 %1518, 32
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1525, label %1524

1524:                                             ; preds = %1521
  store i32 -1, ptr %71, align 4, !tbaa !33
  store i32 16191, ptr %21, align 8, !tbaa !16
  br label %2095

1525:                                             ; preds = %1521
  %1526 = and i32 %1518, 64
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1529, label %1528

1528:                                             ; preds = %1525
  store ptr @.str.14, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1529:                                             ; preds = %1525
  %1530 = and i32 %1518, 15
  store i32 %1530, ptr %72, align 4, !tbaa !47
  store i32 16201, ptr %21, align 8, !tbaa !16
  br label %1531

1531:                                             ; preds = %103, %1529
  %1532 = phi i32 [ %104, %103 ], [ %1530, %1529 ]
  %1533 = phi ptr [ %92, %103 ], [ %1505, %1529 ]
  %1534 = phi i32 [ %94, %103 ], [ %1506, %1529 ]
  %1535 = phi i64 [ %96, %103 ], [ %1514, %1529 ]
  %1536 = phi i32 [ %97, %103 ], [ %1515, %1529 ]
  %1537 = phi i32 [ %99, %103 ], [ %1376, %1529 ]
  %1538 = icmp eq i32 %1532, 0
  br i1 %1538, label %1539, label %1541

1539:                                             ; preds = %1531
  %1540 = load i32, ptr %56, align 4, !tbaa !62
  br label %1575

1541:                                             ; preds = %1531
  %1542 = icmp ult i32 %1536, %1532
  br i1 %1542, label %1543, label %1559

1543:                                             ; preds = %1541, %1549
  %1544 = phi i32 [ %1557, %1549 ], [ %1536, %1541 ]
  %1545 = phi i64 [ %1556, %1549 ], [ %1535, %1541 ]
  %1546 = phi i32 [ %1550, %1549 ], [ %1534, %1541 ]
  %1547 = phi ptr [ %1551, %1549 ], [ %1533, %1541 ]
  %1548 = icmp eq i32 %1546, 0
  br i1 %1548, label %2186, label %1549

1549:                                             ; preds = %1543
  %1550 = add i32 %1546, -1
  %1551 = getelementptr inbounds i8, ptr %1547, i64 1
  %1552 = load i8, ptr %1547, align 1, !tbaa !40
  %1553 = zext i8 %1552 to i64
  %1554 = zext nneg i32 %1544 to i64
  %1555 = shl i64 %1553, %1554
  %1556 = add i64 %1555, %1545
  %1557 = add i32 %1544, 8
  %1558 = icmp ult i32 %1557, %1532
  br i1 %1558, label %1543, label %1559, !llvm.loop !99

1559:                                             ; preds = %1549, %1541
  %1560 = phi ptr [ %1533, %1541 ], [ %1551, %1549 ]
  %1561 = phi i32 [ %1534, %1541 ], [ %1550, %1549 ]
  %1562 = phi i64 [ %1535, %1541 ], [ %1556, %1549 ]
  %1563 = phi i32 [ %1536, %1541 ], [ %1557, %1549 ]
  %1564 = trunc i64 %1562 to i32
  %1565 = shl nsw i32 -1, %1532
  %1566 = xor i32 %1565, -1
  %1567 = and i32 %1564, %1566
  %1568 = load i32, ptr %56, align 4, !tbaa !62
  %1569 = add i32 %1568, %1567
  store i32 %1569, ptr %56, align 4, !tbaa !62
  %1570 = zext nneg i32 %1532 to i64
  %1571 = lshr i64 %1562, %1570
  %1572 = sub i32 %1563, %1532
  %1573 = load i32, ptr %71, align 4, !tbaa !33
  %1574 = add i32 %1573, %1532
  store i32 %1574, ptr %71, align 4, !tbaa !33
  br label %1575

1575:                                             ; preds = %1539, %1559
  %1576 = phi i32 [ %1569, %1559 ], [ %1540, %1539 ]
  %1577 = phi ptr [ %1560, %1559 ], [ %1533, %1539 ]
  %1578 = phi i32 [ %1561, %1559 ], [ %1534, %1539 ]
  %1579 = phi i64 [ %1571, %1559 ], [ %1535, %1539 ]
  %1580 = phi i32 [ %1572, %1559 ], [ %1536, %1539 ]
  store i32 %1576, ptr %73, align 8, !tbaa !100
  store i32 16202, ptr %21, align 8, !tbaa !16
  br label %1581

1581:                                             ; preds = %90, %1575
  %1582 = phi ptr [ %92, %90 ], [ %1577, %1575 ]
  %1583 = phi i32 [ %94, %90 ], [ %1578, %1575 ]
  %1584 = phi i64 [ %96, %90 ], [ %1579, %1575 ]
  %1585 = phi i32 [ %97, %90 ], [ %1580, %1575 ]
  %1586 = phi i32 [ %99, %90 ], [ %1537, %1575 ]
  %1587 = load ptr, ptr %63, align 8, !tbaa !30
  %1588 = load i32, ptr %69, align 4, !tbaa !97
  %1589 = shl nsw i32 -1, %1588
  %1590 = xor i32 %1589, -1
  %1591 = trunc i64 %1584 to i32
  %1592 = and i32 %1590, %1591
  %1593 = zext nneg i32 %1592 to i64
  %1594 = getelementptr inbounds %struct.code, ptr %1587, i64 %1593
  %1595 = getelementptr inbounds i8, ptr %1594, i64 1
  %1596 = load i8, ptr %1595, align 1, !tbaa.struct !85
  %1597 = zext i8 %1596 to i32
  %1598 = icmp ult i32 %1585, %1597
  br i1 %1598, label %1599, label %1626

1599:                                             ; preds = %1581
  %1600 = zext nneg i32 %1585 to i64
  br label %1601

1601:                                             ; preds = %1599, %1607
  %1602 = phi i64 [ %1600, %1599 ], [ %1614, %1607 ]
  %1603 = phi i64 [ %1584, %1599 ], [ %1613, %1607 ]
  %1604 = phi i32 [ %1583, %1599 ], [ %1608, %1607 ]
  %1605 = phi ptr [ %1582, %1599 ], [ %1609, %1607 ]
  %1606 = icmp eq i32 %1604, 0
  br i1 %1606, label %2181, label %1607

1607:                                             ; preds = %1601
  %1608 = add i32 %1604, -1
  %1609 = getelementptr inbounds i8, ptr %1605, i64 1
  %1610 = load i8, ptr %1605, align 1, !tbaa !40
  %1611 = zext i8 %1610 to i64
  %1612 = shl i64 %1611, %1602
  %1613 = add i64 %1612, %1603
  %1614 = add nuw nsw i64 %1602, 8
  %1615 = trunc i64 %1613 to i32
  %1616 = and i32 %1590, %1615
  %1617 = zext nneg i32 %1616 to i64
  %1618 = getelementptr inbounds %struct.code, ptr %1587, i64 %1617
  %1619 = getelementptr inbounds i8, ptr %1618, i64 1
  %1620 = load i8, ptr %1619, align 1, !tbaa.struct !85
  %1621 = zext i8 %1620 to i64
  %1622 = icmp ult i64 %1614, %1621
  br i1 %1622, label %1601, label %1623

1623:                                             ; preds = %1607
  %1624 = zext i8 %1620 to i32
  %1625 = trunc i64 %1614 to i32
  br label %1626

1626:                                             ; preds = %1623, %1581
  %1627 = phi ptr [ %1594, %1581 ], [ %1618, %1623 ]
  %1628 = phi ptr [ %1582, %1581 ], [ %1609, %1623 ]
  %1629 = phi i32 [ %1583, %1581 ], [ %1608, %1623 ]
  %1630 = phi i64 [ %1584, %1581 ], [ %1613, %1623 ]
  %1631 = phi i32 [ %1585, %1581 ], [ %1625, %1623 ]
  %1632 = phi i8 [ %1596, %1581 ], [ %1620, %1623 ]
  %1633 = phi i32 [ %1597, %1581 ], [ %1624, %1623 ]
  %1634 = getelementptr inbounds i8, ptr %1627, i64 2
  %1635 = load i16, ptr %1634, align 2, !tbaa.struct !86
  %1636 = load i8, ptr %1627, align 2, !tbaa.struct !98
  %1637 = icmp ult i8 %1636, 16
  br i1 %1637, label %1640, label %1638

1638:                                             ; preds = %1626
  %1639 = load i32, ptr %71, align 4, !tbaa !33
  br label %1702

1640:                                             ; preds = %1626
  %1641 = zext nneg i8 %1636 to i32
  %1642 = zext i16 %1635 to i32
  %1643 = add nuw nsw i32 %1633, %1641
  %1644 = shl nsw i32 -1, %1643
  %1645 = xor i32 %1644, -1
  %1646 = trunc i64 %1630 to i32
  %1647 = and i32 %1646, %1645
  %1648 = lshr i32 %1647, %1633
  %1649 = add nuw i32 %1648, %1642
  %1650 = zext i32 %1649 to i64
  %1651 = getelementptr inbounds %struct.code, ptr %1587, i64 %1650
  %1652 = getelementptr inbounds i8, ptr %1651, i64 1
  %1653 = load i8, ptr %1652, align 1, !tbaa.struct !85
  %1654 = zext i8 %1653 to i32
  %1655 = add nuw nsw i32 %1633, %1654
  %1656 = icmp ugt i32 %1655, %1631
  br i1 %1656, label %1657, label %1687

1657:                                             ; preds = %1640
  %1658 = zext nneg i32 %1631 to i64
  br label %1659

1659:                                             ; preds = %1657, %1665
  %1660 = phi i64 [ %1658, %1657 ], [ %1672, %1665 ]
  %1661 = phi i64 [ %1630, %1657 ], [ %1671, %1665 ]
  %1662 = phi i32 [ %1629, %1657 ], [ %1666, %1665 ]
  %1663 = phi ptr [ %1628, %1657 ], [ %1667, %1665 ]
  %1664 = icmp eq i32 %1662, 0
  br i1 %1664, label %2176, label %1665

1665:                                             ; preds = %1659
  %1666 = add i32 %1662, -1
  %1667 = getelementptr inbounds i8, ptr %1663, i64 1
  %1668 = load i8, ptr %1663, align 1, !tbaa !40
  %1669 = zext i8 %1668 to i64
  %1670 = shl i64 %1669, %1660
  %1671 = add i64 %1670, %1661
  %1672 = add nuw nsw i64 %1660, 8
  %1673 = trunc i64 %1671 to i32
  %1674 = and i32 %1673, %1645
  %1675 = lshr i32 %1674, %1633
  %1676 = add nuw i32 %1675, %1642
  %1677 = zext i32 %1676 to i64
  %1678 = getelementptr inbounds %struct.code, ptr %1587, i64 %1677
  %1679 = getelementptr inbounds i8, ptr %1678, i64 1
  %1680 = load i8, ptr %1679, align 1, !tbaa.struct !85
  %1681 = zext i8 %1680 to i32
  %1682 = add nuw nsw i32 %1633, %1681
  %1683 = zext nneg i32 %1682 to i64
  %1684 = icmp ult i64 %1672, %1683
  br i1 %1684, label %1659, label %1685

1685:                                             ; preds = %1665
  %1686 = trunc i64 %1672 to i32
  br label %1687

1687:                                             ; preds = %1685, %1640
  %1688 = phi ptr [ %1628, %1640 ], [ %1667, %1685 ]
  %1689 = phi i32 [ %1629, %1640 ], [ %1666, %1685 ]
  %1690 = phi i64 [ %1630, %1640 ], [ %1671, %1685 ]
  %1691 = phi i32 [ %1631, %1640 ], [ %1686, %1685 ]
  %1692 = phi ptr [ %1651, %1640 ], [ %1678, %1685 ]
  %1693 = phi i8 [ %1653, %1640 ], [ %1680, %1685 ]
  %1694 = getelementptr inbounds i8, ptr %1692, i64 2
  %1695 = load i16, ptr %1694, align 2, !tbaa.struct !86
  %1696 = load i8, ptr %1692, align 2, !tbaa.struct !98
  %1697 = zext nneg i8 %1632 to i64
  %1698 = lshr i64 %1690, %1697
  %1699 = sub i32 %1691, %1633
  %1700 = load i32, ptr %71, align 4, !tbaa !33
  %1701 = add nsw i32 %1700, %1633
  br label %1702

1702:                                             ; preds = %1638, %1687
  %1703 = phi i32 [ %1701, %1687 ], [ %1639, %1638 ]
  %1704 = phi ptr [ %1688, %1687 ], [ %1628, %1638 ]
  %1705 = phi i32 [ %1689, %1687 ], [ %1629, %1638 ]
  %1706 = phi i64 [ %1698, %1687 ], [ %1630, %1638 ]
  %1707 = phi i32 [ %1699, %1687 ], [ %1631, %1638 ]
  %1708 = phi i16 [ %1695, %1687 ], [ %1635, %1638 ]
  %1709 = phi i8 [ %1693, %1687 ], [ %1632, %1638 ]
  %1710 = phi i8 [ %1696, %1687 ], [ %1636, %1638 ]
  %1711 = zext i8 %1709 to i32
  %1712 = zext nneg i8 %1709 to i64
  %1713 = lshr i64 %1706, %1712
  %1714 = sub i32 %1707, %1711
  %1715 = add nsw i32 %1703, %1711
  store i32 %1715, ptr %71, align 4, !tbaa !33
  %1716 = zext i8 %1710 to i32
  %1717 = and i32 %1716, 64
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1720, label %1719

1719:                                             ; preds = %1702
  store ptr @.str.15, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1720:                                             ; preds = %1702
  %1721 = zext i16 %1708 to i32
  store i32 %1721, ptr %74, align 8, !tbaa !101
  %1722 = and i32 %1716, 15
  store i32 %1722, ptr %72, align 4, !tbaa !47
  store i32 16203, ptr %21, align 8, !tbaa !16
  br label %1723

1723:                                             ; preds = %101, %1720
  %1724 = phi i32 [ %102, %101 ], [ %1722, %1720 ]
  %1725 = phi ptr [ %92, %101 ], [ %1704, %1720 ]
  %1726 = phi i32 [ %94, %101 ], [ %1705, %1720 ]
  %1727 = phi i64 [ %96, %101 ], [ %1713, %1720 ]
  %1728 = phi i32 [ %97, %101 ], [ %1714, %1720 ]
  %1729 = phi i32 [ %99, %101 ], [ %1586, %1720 ]
  %1730 = icmp eq i32 %1724, 0
  br i1 %1730, label %1765, label %1731

1731:                                             ; preds = %1723
  %1732 = icmp ult i32 %1728, %1724
  br i1 %1732, label %1733, label %1749

1733:                                             ; preds = %1731, %1739
  %1734 = phi i32 [ %1747, %1739 ], [ %1728, %1731 ]
  %1735 = phi i64 [ %1746, %1739 ], [ %1727, %1731 ]
  %1736 = phi i32 [ %1740, %1739 ], [ %1726, %1731 ]
  %1737 = phi ptr [ %1741, %1739 ], [ %1725, %1731 ]
  %1738 = icmp eq i32 %1736, 0
  br i1 %1738, label %2171, label %1739

1739:                                             ; preds = %1733
  %1740 = add i32 %1736, -1
  %1741 = getelementptr inbounds i8, ptr %1737, i64 1
  %1742 = load i8, ptr %1737, align 1, !tbaa !40
  %1743 = zext i8 %1742 to i64
  %1744 = zext nneg i32 %1734 to i64
  %1745 = shl i64 %1743, %1744
  %1746 = add i64 %1745, %1735
  %1747 = add i32 %1734, 8
  %1748 = icmp ult i32 %1747, %1724
  br i1 %1748, label %1733, label %1749, !llvm.loop !102

1749:                                             ; preds = %1739, %1731
  %1750 = phi ptr [ %1725, %1731 ], [ %1741, %1739 ]
  %1751 = phi i32 [ %1726, %1731 ], [ %1740, %1739 ]
  %1752 = phi i64 [ %1727, %1731 ], [ %1746, %1739 ]
  %1753 = phi i32 [ %1728, %1731 ], [ %1747, %1739 ]
  %1754 = trunc i64 %1752 to i32
  %1755 = shl nsw i32 -1, %1724
  %1756 = xor i32 %1755, -1
  %1757 = and i32 %1754, %1756
  %1758 = load i32, ptr %74, align 8, !tbaa !101
  %1759 = add i32 %1758, %1757
  store i32 %1759, ptr %74, align 8, !tbaa !101
  %1760 = zext nneg i32 %1724 to i64
  %1761 = lshr i64 %1752, %1760
  %1762 = sub i32 %1753, %1724
  %1763 = load i32, ptr %71, align 4, !tbaa !33
  %1764 = add i32 %1763, %1724
  store i32 %1764, ptr %71, align 4, !tbaa !33
  br label %1765

1765:                                             ; preds = %1749, %1723
  %1766 = phi ptr [ %1750, %1749 ], [ %1725, %1723 ]
  %1767 = phi i32 [ %1751, %1749 ], [ %1726, %1723 ]
  %1768 = phi i64 [ %1761, %1749 ], [ %1727, %1723 ]
  %1769 = phi i32 [ %1762, %1749 ], [ %1728, %1723 ]
  store i32 16204, ptr %21, align 8, !tbaa !16
  br label %1770

1770:                                             ; preds = %90, %1765
  %1771 = phi ptr [ %92, %90 ], [ %1766, %1765 ]
  %1772 = phi i32 [ %94, %90 ], [ %1767, %1765 ]
  %1773 = phi i64 [ %96, %90 ], [ %1768, %1765 ]
  %1774 = phi i32 [ %97, %90 ], [ %1769, %1765 ]
  %1775 = phi i32 [ %99, %90 ], [ %1729, %1765 ]
  %1776 = icmp eq i32 %95, 0
  br i1 %1776, label %2202, label %1777

1777:                                             ; preds = %1770
  %1778 = sub i32 %98, %95
  %1779 = load i32, ptr %74, align 8, !tbaa !101
  %1780 = icmp ugt i32 %1779, %1778
  br i1 %1780, label %1781, label %1806

1781:                                             ; preds = %1777
  %1782 = sub i32 %1779, %1778
  %1783 = load i32, ptr %75, align 8, !tbaa !35
  %1784 = icmp ugt i32 %1782, %1783
  br i1 %1784, label %1785, label %1789

1785:                                             ; preds = %1781
  %1786 = load i32, ptr %76, align 8, !tbaa !32
  %1787 = icmp eq i32 %1786, 0
  br i1 %1787, label %1789, label %1788

1788:                                             ; preds = %1785
  store ptr @.str.16, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

1789:                                             ; preds = %1785, %1781
  %1790 = load i32, ptr %77, align 4, !tbaa !36
  %1791 = icmp ugt i32 %1782, %1790
  br i1 %1791, label %1792, label %1796

1792:                                             ; preds = %1789
  %1793 = sub i32 %1782, %1790
  %1794 = load i32, ptr %79, align 4, !tbaa !34
  %1795 = sub i32 %1794, %1793
  br label %1798

1796:                                             ; preds = %1789
  %1797 = sub i32 %1790, %1782
  br label %1798

1798:                                             ; preds = %1796, %1792
  %1799 = phi i32 [ %1797, %1796 ], [ %1795, %1792 ]
  %1800 = phi i32 [ %1782, %1796 ], [ %1793, %1792 ]
  %1801 = load ptr, ptr %78, align 8, !tbaa !37
  %1802 = zext i32 %1799 to i64
  %1803 = getelementptr inbounds i8, ptr %1801, i64 %1802
  %1804 = load i32, ptr %56, align 4, !tbaa !62
  %1805 = call i32 @llvm.umin.i32(i32 %1800, i32 %1804)
  br label %1811

1806:                                             ; preds = %1777
  %1807 = zext i32 %1779 to i64
  %1808 = sub nsw i64 0, %1807
  %1809 = getelementptr inbounds i8, ptr %93, i64 %1808
  %1810 = load i32, ptr %56, align 4, !tbaa !62
  br label %1811

1811:                                             ; preds = %1798, %1806
  %1812 = phi i32 [ %1810, %1806 ], [ %1804, %1798 ]
  %1813 = phi i32 [ %1810, %1806 ], [ %1805, %1798 ]
  %1814 = phi ptr [ %1809, %1806 ], [ %1803, %1798 ]
  %1815 = call i32 @llvm.umin.i32(i32 %1813, i32 %95)
  %1816 = sub i32 %1812, %1815
  store i32 %1816, ptr %56, align 4, !tbaa !62
  %1817 = add i32 %1815, -1
  %1818 = zext i32 %1817 to i64
  %1819 = add nuw nsw i64 %1818, 1
  %1820 = icmp ult i32 %1817, 31
  %1821 = ptrtoint ptr %1814 to i64
  %1822 = sub i64 %100, %1821
  %1823 = icmp ult i64 %1822, 32
  %1824 = select i1 %1820, i1 true, i1 %1823
  br i1 %1824, label %1843, label %1825

1825:                                             ; preds = %1811
  %1826 = and i64 %1819, 8589934560
  %1827 = getelementptr i8, ptr %93, i64 %1826
  %1828 = trunc i64 %1826 to i32
  %1829 = sub i32 %1815, %1828
  %1830 = getelementptr i8, ptr %1814, i64 %1826
  br label %1831

1831:                                             ; preds = %1831, %1825
  %1832 = phi i64 [ 0, %1825 ], [ %1839, %1831 ]
  %1833 = getelementptr i8, ptr %93, i64 %1832
  %1834 = getelementptr i8, ptr %1814, i64 %1832
  %1835 = getelementptr i8, ptr %1834, i64 16
  %1836 = load <16 x i8>, ptr %1834, align 1, !tbaa !40
  %1837 = load <16 x i8>, ptr %1835, align 1, !tbaa !40
  %1838 = getelementptr i8, ptr %1833, i64 16
  store <16 x i8> %1836, ptr %1833, align 1, !tbaa !40
  store <16 x i8> %1837, ptr %1838, align 1, !tbaa !40
  %1839 = add nuw i64 %1832, 32
  %1840 = icmp eq i64 %1839, %1826
  br i1 %1840, label %1841, label %1831, !llvm.loop !103

1841:                                             ; preds = %1831
  %1842 = icmp eq i64 %1819, %1826
  br i1 %1842, label %1897, label %1843

1843:                                             ; preds = %1811, %1841
  %1844 = phi ptr [ %93, %1811 ], [ %1827, %1841 ]
  %1845 = phi i32 [ %1815, %1811 ], [ %1829, %1841 ]
  %1846 = phi ptr [ %1814, %1811 ], [ %1830, %1841 ]
  %1847 = add i32 %1845, -1
  %1848 = and i32 %1845, 7
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1861, label %1850

1850:                                             ; preds = %1843, %1850
  %1851 = phi ptr [ %1857, %1850 ], [ %1844, %1843 ]
  %1852 = phi i32 [ %1858, %1850 ], [ %1845, %1843 ]
  %1853 = phi ptr [ %1855, %1850 ], [ %1846, %1843 ]
  %1854 = phi i32 [ %1859, %1850 ], [ 0, %1843 ]
  %1855 = getelementptr inbounds i8, ptr %1853, i64 1
  %1856 = load i8, ptr %1853, align 1, !tbaa !40
  %1857 = getelementptr inbounds i8, ptr %1851, i64 1
  store i8 %1856, ptr %1851, align 1, !tbaa !40
  %1858 = add i32 %1852, -1
  %1859 = add i32 %1854, 1
  %1860 = icmp eq i32 %1859, %1848
  br i1 %1860, label %1861, label %1850, !llvm.loop !104

1861:                                             ; preds = %1850, %1843
  %1862 = phi ptr [ undef, %1843 ], [ %1857, %1850 ]
  %1863 = phi ptr [ %1844, %1843 ], [ %1857, %1850 ]
  %1864 = phi i32 [ %1845, %1843 ], [ %1858, %1850 ]
  %1865 = phi ptr [ %1846, %1843 ], [ %1855, %1850 ]
  %1866 = icmp ult i32 %1847, 7
  br i1 %1866, label %1897, label %1867

1867:                                             ; preds = %1861, %1867
  %1868 = phi ptr [ %1894, %1867 ], [ %1863, %1861 ]
  %1869 = phi i32 [ %1895, %1867 ], [ %1864, %1861 ]
  %1870 = phi ptr [ %1892, %1867 ], [ %1865, %1861 ]
  %1871 = getelementptr inbounds i8, ptr %1870, i64 1
  %1872 = load i8, ptr %1870, align 1, !tbaa !40
  %1873 = getelementptr inbounds i8, ptr %1868, i64 1
  store i8 %1872, ptr %1868, align 1, !tbaa !40
  %1874 = getelementptr inbounds i8, ptr %1870, i64 2
  %1875 = load i8, ptr %1871, align 1, !tbaa !40
  %1876 = getelementptr inbounds i8, ptr %1868, i64 2
  store i8 %1875, ptr %1873, align 1, !tbaa !40
  %1877 = getelementptr inbounds i8, ptr %1870, i64 3
  %1878 = load i8, ptr %1874, align 1, !tbaa !40
  %1879 = getelementptr inbounds i8, ptr %1868, i64 3
  store i8 %1878, ptr %1876, align 1, !tbaa !40
  %1880 = getelementptr inbounds i8, ptr %1870, i64 4
  %1881 = load i8, ptr %1877, align 1, !tbaa !40
  %1882 = getelementptr inbounds i8, ptr %1868, i64 4
  store i8 %1881, ptr %1879, align 1, !tbaa !40
  %1883 = getelementptr inbounds i8, ptr %1870, i64 5
  %1884 = load i8, ptr %1880, align 1, !tbaa !40
  %1885 = getelementptr inbounds i8, ptr %1868, i64 5
  store i8 %1884, ptr %1882, align 1, !tbaa !40
  %1886 = getelementptr inbounds i8, ptr %1870, i64 6
  %1887 = load i8, ptr %1883, align 1, !tbaa !40
  %1888 = getelementptr inbounds i8, ptr %1868, i64 6
  store i8 %1887, ptr %1885, align 1, !tbaa !40
  %1889 = getelementptr inbounds i8, ptr %1870, i64 7
  %1890 = load i8, ptr %1886, align 1, !tbaa !40
  %1891 = getelementptr inbounds i8, ptr %1868, i64 7
  store i8 %1890, ptr %1888, align 1, !tbaa !40
  %1892 = getelementptr inbounds i8, ptr %1870, i64 8
  %1893 = load i8, ptr %1889, align 1, !tbaa !40
  %1894 = getelementptr inbounds i8, ptr %1868, i64 8
  store i8 %1893, ptr %1891, align 1, !tbaa !40
  %1895 = add i32 %1869, -8
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1897, label %1867, !llvm.loop !105

1897:                                             ; preds = %1861, %1867, %1841
  %1898 = phi ptr [ %1827, %1841 ], [ %1862, %1861 ], [ %1894, %1867 ]
  %1899 = sub i32 %95, %1815
  %1900 = load i32, ptr %56, align 4, !tbaa !62
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1902, label %2095

1902:                                             ; preds = %1897
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2095

1903:                                             ; preds = %90
  %1904 = icmp eq i32 %95, 0
  br i1 %1904, label %2202, label %1905

1905:                                             ; preds = %1903
  %1906 = load i32, ptr %56, align 4, !tbaa !62
  %1907 = trunc i32 %1906 to i8
  %1908 = getelementptr inbounds i8, ptr %93, i64 1
  store i8 %1907, ptr %93, align 1, !tbaa !40
  %1909 = add i32 %95, -1
  store i32 16200, ptr %21, align 8, !tbaa !16
  br label %2095

1910:                                             ; preds = %90
  %1911 = load i32, ptr %49, align 8, !tbaa !20
  %1912 = icmp eq i32 %1911, 0
  br i1 %1912, label %2008, label %1913

1913:                                             ; preds = %1910
  %1914 = icmp ult i32 %97, 32
  br i1 %1914, label %1915, label %1965

1915:                                             ; preds = %1913
  %1916 = zext nneg i32 %97 to i64
  %1917 = icmp eq i32 %94, 0
  br i1 %1917, label %2161, label %1918

1918:                                             ; preds = %1915
  %1919 = add i32 %94, -1
  %1920 = getelementptr inbounds i8, ptr %92, i64 1
  %1921 = load i8, ptr %92, align 1, !tbaa !40
  %1922 = zext i8 %1921 to i64
  %1923 = shl nuw nsw i64 %1922, %1916
  %1924 = add i64 %1923, %96
  %1925 = add nuw nsw i64 %1916, 8
  %1926 = icmp ult i32 %97, 24
  br i1 %1926, label %1927, label %1959, !llvm.loop !106

1927:                                             ; preds = %1918
  %1928 = icmp eq i32 %1919, 0
  br i1 %1928, label %2161, label %1929

1929:                                             ; preds = %1927
  %1930 = add i32 %94, -2
  %1931 = getelementptr inbounds i8, ptr %92, i64 2
  %1932 = load i8, ptr %1920, align 1, !tbaa !40
  %1933 = zext i8 %1932 to i64
  %1934 = shl nuw nsw i64 %1933, %1925
  %1935 = add i64 %1934, %1924
  %1936 = add nuw nsw i64 %1916, 16
  %1937 = icmp ult i32 %97, 16
  br i1 %1937, label %1938, label %1959, !llvm.loop !106

1938:                                             ; preds = %1929
  %1939 = icmp eq i32 %1930, 0
  br i1 %1939, label %2161, label %1940

1940:                                             ; preds = %1938
  %1941 = add i32 %94, -3
  %1942 = getelementptr inbounds i8, ptr %92, i64 3
  %1943 = load i8, ptr %1931, align 1, !tbaa !40
  %1944 = zext i8 %1943 to i64
  %1945 = shl nuw nsw i64 %1944, %1936
  %1946 = add i64 %1945, %1935
  %1947 = add nuw nsw i64 %1916, 24
  %1948 = icmp ult i32 %97, 8
  br i1 %1948, label %1949, label %1959, !llvm.loop !106

1949:                                             ; preds = %1940
  %1950 = icmp eq i32 %1941, 0
  br i1 %1950, label %2161, label %1951

1951:                                             ; preds = %1949
  %1952 = add i32 %94, -4
  %1953 = getelementptr inbounds i8, ptr %92, i64 4
  %1954 = load i8, ptr %1942, align 1, !tbaa !40
  %1955 = zext i8 %1954 to i64
  %1956 = shl nuw nsw i64 %1955, %1947
  %1957 = add i64 %1956, %1946
  %1958 = or disjoint i64 %1916, 32
  br label %1959

1959:                                             ; preds = %1951, %1940, %1929, %1918
  %1960 = phi i32 [ %1919, %1918 ], [ %1930, %1929 ], [ %1941, %1940 ], [ %1952, %1951 ]
  %1961 = phi ptr [ %1920, %1918 ], [ %1931, %1929 ], [ %1942, %1940 ], [ %1953, %1951 ]
  %1962 = phi i64 [ %1924, %1918 ], [ %1935, %1929 ], [ %1946, %1940 ], [ %1957, %1951 ]
  %1963 = phi i64 [ %1925, %1918 ], [ %1936, %1929 ], [ %1947, %1940 ], [ %1958, %1951 ]
  %1964 = trunc i64 %1963 to i32
  br label %1965

1965:                                             ; preds = %1959, %1913
  %1966 = phi ptr [ %92, %1913 ], [ %1961, %1959 ]
  %1967 = phi i32 [ %94, %1913 ], [ %1960, %1959 ]
  %1968 = phi i64 [ %96, %1913 ], [ %1962, %1959 ]
  %1969 = phi i32 [ %97, %1913 ], [ %1964, %1959 ]
  %1970 = sub i32 %98, %95
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, ptr %50, align 8, !tbaa !107
  %1973 = add i64 %1972, %1971
  store i64 %1973, ptr %50, align 8, !tbaa !107
  %1974 = load i64, ptr %51, align 8, !tbaa !17
  %1975 = add i64 %1974, %1971
  store i64 %1975, ptr %51, align 8, !tbaa !17
  %1976 = and i32 %1911, 4
  %1977 = icmp ne i32 %1976, 0
  %1978 = icmp ne i32 %98, %95
  %1979 = select i1 %1977, i1 %1978, i1 false
  br i1 %1979, label %1980, label %1994

1980:                                             ; preds = %1965
  %1981 = load i32, ptr %52, align 8, !tbaa !24
  %1982 = icmp eq i32 %1981, 0
  %1983 = load i64, ptr %53, align 8, !tbaa !51
  %1984 = sub nsw i64 0, %1971
  %1985 = getelementptr inbounds i8, ptr %93, i64 %1984
  br i1 %1982, label %1988, label %1986

1986:                                             ; preds = %1980
  %1987 = call i64 @crc32(i64 noundef %1983, ptr noundef %1985, i32 noundef %1970) #9
  br label %1990

1988:                                             ; preds = %1980
  %1989 = call i64 @adler32(i64 noundef %1983, ptr noundef %1985, i32 noundef %1970) #9
  br label %1990

1990:                                             ; preds = %1988, %1986
  %1991 = phi i64 [ %1987, %1986 ], [ %1989, %1988 ]
  store i64 %1991, ptr %53, align 8, !tbaa !51
  store i64 %1991, ptr %54, align 8, !tbaa !21
  %1992 = load i32, ptr %49, align 8, !tbaa !20
  %1993 = and i32 %1992, 4
  br label %1994

1994:                                             ; preds = %1990, %1965
  %1995 = phi i32 [ %1993, %1990 ], [ %1976, %1965 ]
  %1996 = phi i32 [ %1992, %1990 ], [ %1911, %1965 ]
  %1997 = icmp eq i32 %1995, 0
  br i1 %1997, label %2008, label %1998

1998:                                             ; preds = %1994
  %1999 = load i32, ptr %52, align 8, !tbaa !24
  %2000 = icmp eq i32 %1999, 0
  %2001 = trunc i64 %1968 to i32
  %2002 = call i32 @llvm.bswap.i32(i32 %2001)
  %2003 = zext i32 %2002 to i64
  %2004 = select i1 %2000, i64 %2003, i64 %1968
  %2005 = load i64, ptr %53, align 8, !tbaa !51
  %2006 = icmp eq i64 %2004, %2005
  br i1 %2006, label %2008, label %2007

2007:                                             ; preds = %1998
  store ptr @.str.17, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

2008:                                             ; preds = %1998, %1994, %1910
  %2009 = phi i32 [ 0, %1910 ], [ %1996, %1994 ], [ %1996, %1998 ]
  %2010 = phi ptr [ %92, %1910 ], [ %1966, %1994 ], [ %1966, %1998 ]
  %2011 = phi i32 [ %94, %1910 ], [ %1967, %1994 ], [ %1967, %1998 ]
  %2012 = phi i64 [ %96, %1910 ], [ 0, %1994 ], [ 0, %1998 ]
  %2013 = phi i32 [ %97, %1910 ], [ 0, %1994 ], [ 0, %1998 ]
  %2014 = phi i32 [ %98, %1910 ], [ %95, %1994 ], [ %95, %1998 ]
  store i32 16207, ptr %21, align 8, !tbaa !16
  br label %2015

2015:                                             ; preds = %107, %2008
  %2016 = phi i32 [ %108, %107 ], [ %2009, %2008 ]
  %2017 = phi ptr [ %92, %107 ], [ %2010, %2008 ]
  %2018 = phi i32 [ %94, %107 ], [ %2011, %2008 ]
  %2019 = phi i64 [ %96, %107 ], [ %2012, %2008 ]
  %2020 = phi i32 [ %97, %107 ], [ %2013, %2008 ]
  %2021 = phi i32 [ %98, %107 ], [ %2014, %2008 ]
  %2022 = icmp eq i32 %2016, 0
  br i1 %2022, label %2090, label %2023

2023:                                             ; preds = %2015
  %2024 = load i32, ptr %52, align 8, !tbaa !24
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2090, label %2026

2026:                                             ; preds = %2023
  %2027 = icmp ult i32 %2020, 32
  br i1 %2027, label %2028, label %2078

2028:                                             ; preds = %2026
  %2029 = zext nneg i32 %2020 to i64
  %2030 = icmp eq i32 %2018, 0
  br i1 %2030, label %2156, label %2031

2031:                                             ; preds = %2028
  %2032 = add i32 %2018, -1
  %2033 = getelementptr inbounds i8, ptr %2017, i64 1
  %2034 = load i8, ptr %2017, align 1, !tbaa !40
  %2035 = zext i8 %2034 to i64
  %2036 = shl nuw nsw i64 %2035, %2029
  %2037 = add i64 %2036, %2019
  %2038 = add nuw nsw i64 %2029, 8
  %2039 = icmp ult i32 %2020, 24
  br i1 %2039, label %2040, label %2072, !llvm.loop !108

2040:                                             ; preds = %2031
  %2041 = icmp eq i32 %2032, 0
  br i1 %2041, label %2156, label %2042

2042:                                             ; preds = %2040
  %2043 = add i32 %2018, -2
  %2044 = getelementptr inbounds i8, ptr %2017, i64 2
  %2045 = load i8, ptr %2033, align 1, !tbaa !40
  %2046 = zext i8 %2045 to i64
  %2047 = shl nuw nsw i64 %2046, %2038
  %2048 = add i64 %2047, %2037
  %2049 = add nuw nsw i64 %2029, 16
  %2050 = icmp ult i32 %2020, 16
  br i1 %2050, label %2051, label %2072, !llvm.loop !108

2051:                                             ; preds = %2042
  %2052 = icmp eq i32 %2043, 0
  br i1 %2052, label %2156, label %2053

2053:                                             ; preds = %2051
  %2054 = add i32 %2018, -3
  %2055 = getelementptr inbounds i8, ptr %2017, i64 3
  %2056 = load i8, ptr %2044, align 1, !tbaa !40
  %2057 = zext i8 %2056 to i64
  %2058 = shl nuw nsw i64 %2057, %2049
  %2059 = add i64 %2058, %2048
  %2060 = add nuw nsw i64 %2029, 24
  %2061 = icmp ult i32 %2020, 8
  br i1 %2061, label %2062, label %2072, !llvm.loop !108

2062:                                             ; preds = %2053
  %2063 = icmp eq i32 %2054, 0
  br i1 %2063, label %2156, label %2064

2064:                                             ; preds = %2062
  %2065 = add i32 %2018, -4
  %2066 = getelementptr inbounds i8, ptr %2017, i64 4
  %2067 = load i8, ptr %2055, align 1, !tbaa !40
  %2068 = zext i8 %2067 to i64
  %2069 = shl nuw nsw i64 %2068, %2060
  %2070 = add i64 %2069, %2059
  %2071 = or disjoint i64 %2029, 32
  br label %2072

2072:                                             ; preds = %2064, %2053, %2042, %2031
  %2073 = phi i32 [ %2032, %2031 ], [ %2043, %2042 ], [ %2054, %2053 ], [ %2065, %2064 ]
  %2074 = phi ptr [ %2033, %2031 ], [ %2044, %2042 ], [ %2055, %2053 ], [ %2066, %2064 ]
  %2075 = phi i64 [ %2037, %2031 ], [ %2048, %2042 ], [ %2059, %2053 ], [ %2070, %2064 ]
  %2076 = phi i64 [ %2038, %2031 ], [ %2049, %2042 ], [ %2060, %2053 ], [ %2071, %2064 ]
  %2077 = trunc i64 %2076 to i32
  br label %2078

2078:                                             ; preds = %2072, %2026
  %2079 = phi ptr [ %2017, %2026 ], [ %2074, %2072 ]
  %2080 = phi i32 [ %2018, %2026 ], [ %2073, %2072 ]
  %2081 = phi i64 [ %2019, %2026 ], [ %2075, %2072 ]
  %2082 = phi i32 [ %2020, %2026 ], [ %2077, %2072 ]
  %2083 = and i32 %2016, 4
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2090, label %2085

2085:                                             ; preds = %2078
  %2086 = load i64, ptr %51, align 8, !tbaa !17
  %2087 = and i64 %2086, 4294967295
  %2088 = icmp eq i64 %2081, %2087
  br i1 %2088, label %2090, label %2089

2089:                                             ; preds = %2085
  store ptr @.str.18, ptr %55, align 8, !tbaa !41
  store i32 16209, ptr %21, align 8, !tbaa !16
  br label %2095

2090:                                             ; preds = %2085, %2078, %2023, %2015
  %2091 = phi ptr [ %2017, %2023 ], [ %2017, %2015 ], [ %2079, %2078 ], [ %2079, %2085 ]
  %2092 = phi i32 [ %2018, %2023 ], [ %2018, %2015 ], [ %2080, %2078 ], [ %2080, %2085 ]
  %2093 = phi i64 [ %2019, %2023 ], [ %2019, %2015 ], [ 0, %2078 ], [ 0, %2085 ]
  %2094 = phi i32 [ %2020, %2023 ], [ %2020, %2015 ], [ 0, %2078 ], [ 0, %2085 ]
  store i32 16208, ptr %21, align 8, !tbaa !16
  br label %2202

2095:                                             ; preds = %1157, %1316, %1897, %1902, %1380, %1389, %2089, %2007, %1905, %1788, %1719, %1528, %1524, %1520, %1363, %1354, %1350, %1037, %966, %921, %913, %893, %825, %794, %719, %706, %252, %248, %209, %208, %193, %189, %171, %132
  %2096 = phi ptr [ %2079, %2089 ], [ %1966, %2007 ], [ %92, %1905 ], [ %1771, %1788 ], [ %1771, %1902 ], [ %1771, %1897 ], [ %1704, %1719 ], [ %1383, %1389 ], [ %1383, %1380 ], [ %1505, %1520 ], [ %1505, %1524 ], [ %1505, %1528 ], [ %1344, %1350 ], [ %1344, %1354 ], [ %1344, %1363 ], [ %982, %1037 ], [ %948, %966 ], [ %916, %913 ], [ %903, %921 ], [ %885, %893 ], [ %784, %794 ], [ %809, %825 ], [ %695, %706 ], [ %708, %719 ], [ %241, %248 ], [ %241, %252 ], [ %92, %132 ], [ %159, %171 ], [ %159, %189 ], [ %159, %193 ], [ %159, %208 ], [ %159, %209 ], [ %1229, %1316 ], [ %1149, %1157 ]
  %2097 = phi ptr [ %93, %2089 ], [ %93, %2007 ], [ %1908, %1905 ], [ %93, %1788 ], [ %1898, %1902 ], [ %1898, %1897 ], [ %93, %1719 ], [ %1381, %1389 ], [ %1381, %1380 ], [ %93, %1520 ], [ %93, %1524 ], [ %93, %1528 ], [ %93, %1350 ], [ %93, %1354 ], [ %93, %1363 ], [ %93, %1037 ], [ %93, %966 ], [ %918, %913 ], [ %93, %921 ], [ %93, %893 ], [ %93, %794 ], [ %93, %825 ], [ %93, %706 ], [ %93, %719 ], [ %93, %248 ], [ %93, %252 ], [ %93, %132 ], [ %93, %171 ], [ %93, %189 ], [ %93, %193 ], [ %93, %208 ], [ %93, %209 ], [ %93, %1316 ], [ %93, %1157 ]
  %2098 = phi i32 [ %2080, %2089 ], [ %1967, %2007 ], [ %94, %1905 ], [ %1772, %1788 ], [ %1772, %1902 ], [ %1772, %1897 ], [ %1705, %1719 ], [ %1384, %1389 ], [ %1384, %1380 ], [ %1506, %1520 ], [ %1506, %1524 ], [ %1506, %1528 ], [ %1345, %1350 ], [ %1345, %1354 ], [ %1345, %1363 ], [ %983, %1037 ], [ %949, %966 ], [ %915, %913 ], [ %904, %921 ], [ %886, %893 ], [ %785, %794 ], [ %810, %825 ], [ %696, %706 ], [ %709, %719 ], [ %242, %248 ], [ %242, %252 ], [ %94, %132 ], [ %160, %171 ], [ %160, %189 ], [ %160, %193 ], [ %160, %208 ], [ %160, %209 ], [ %1230, %1316 ], [ %1150, %1157 ]
  %2099 = phi i32 [ %95, %2089 ], [ %95, %2007 ], [ %1909, %1905 ], [ %95, %1788 ], [ %1899, %1902 ], [ %1899, %1897 ], [ %95, %1719 ], [ %1382, %1389 ], [ %1382, %1380 ], [ %95, %1520 ], [ %95, %1524 ], [ %95, %1528 ], [ %95, %1350 ], [ %95, %1354 ], [ %95, %1363 ], [ %95, %1037 ], [ %95, %966 ], [ %917, %913 ], [ %95, %921 ], [ %95, %893 ], [ %95, %794 ], [ %95, %825 ], [ %95, %706 ], [ %95, %719 ], [ %95, %248 ], [ %95, %252 ], [ %95, %132 ], [ %95, %171 ], [ %95, %189 ], [ %95, %193 ], [ %95, %208 ], [ %95, %209 ], [ %95, %1316 ], [ %95, %1157 ]
  %2100 = phi i64 [ %2081, %2089 ], [ %1968, %2007 ], [ %96, %1905 ], [ %1773, %1788 ], [ %1773, %1902 ], [ %1773, %1897 ], [ %1713, %1719 ], [ %1385, %1389 ], [ %1385, %1380 ], [ %1514, %1520 ], [ %1514, %1524 ], [ %1514, %1528 ], [ %1346, %1350 ], [ %1346, %1354 ], [ %1346, %1363 ], [ %984, %1037 ], [ %961, %966 ], [ %905, %913 ], [ %905, %921 ], [ %887, %893 ], [ %797, %794 ], [ %826, %825 ], [ %697, %706 ], [ %710, %719 ], [ %243, %248 ], [ %243, %252 ], [ %96, %132 ], [ 0, %171 ], [ %161, %189 ], [ %161, %193 ], [ %195, %208 ], [ 0, %209 ], [ %1231, %1316 ], [ %1154, %1157 ]
  %2101 = phi i32 [ %2082, %2089 ], [ %1969, %2007 ], [ %97, %1905 ], [ %1774, %1788 ], [ %1774, %1902 ], [ %1774, %1897 ], [ %1714, %1719 ], [ %1386, %1389 ], [ %1386, %1380 ], [ %1515, %1520 ], [ %1515, %1524 ], [ %1515, %1528 ], [ %1347, %1350 ], [ %1347, %1354 ], [ %1347, %1363 ], [ %985, %1037 ], [ %962, %966 ], [ %906, %913 ], [ %906, %921 ], [ %888, %893 ], [ %798, %794 ], [ %827, %825 ], [ %698, %706 ], [ %711, %719 ], [ %244, %248 ], [ %244, %252 ], [ %97, %132 ], [ 0, %171 ], [ %162, %189 ], [ %162, %193 ], [ %196, %208 ], [ 0, %209 ], [ %1232, %1316 ], [ %1155, %1157 ]
  %2102 = phi i32 [ %2021, %2089 ], [ %95, %2007 ], [ %98, %1905 ], [ %98, %1788 ], [ %98, %1902 ], [ %98, %1897 ], [ %98, %1719 ], [ %98, %1389 ], [ %98, %1380 ], [ %98, %1520 ], [ %98, %1524 ], [ %98, %1528 ], [ %98, %1350 ], [ %98, %1354 ], [ %98, %1363 ], [ %98, %1037 ], [ %98, %966 ], [ %98, %913 ], [ %98, %921 ], [ %98, %893 ], [ %98, %794 ], [ %98, %825 ], [ %98, %706 ], [ %98, %719 ], [ %98, %248 ], [ %98, %252 ], [ %98, %132 ], [ %98, %171 ], [ %98, %189 ], [ %98, %193 ], [ %98, %208 ], [ %98, %209 ], [ %98, %1316 ], [ %98, %1157 ]
  %2103 = phi i32 [ %99, %2089 ], [ %99, %2007 ], [ %99, %1905 ], [ %1775, %1788 ], [ %1775, %1902 ], [ %1775, %1897 ], [ %1586, %1719 ], [ %1376, %1389 ], [ %1376, %1380 ], [ %1376, %1520 ], [ %1376, %1524 ], [ %1376, %1528 ], [ %1045, %1350 ], [ %1352, %1354 ], [ %1361, %1363 ], [ %1035, %1037 ], [ %99, %966 ], [ %99, %913 ], [ %99, %921 ], [ %99, %893 ], [ %99, %794 ], [ %99, %825 ], [ %99, %706 ], [ %99, %719 ], [ %99, %248 ], [ %99, %252 ], [ %99, %132 ], [ %99, %171 ], [ %99, %189 ], [ %99, %193 ], [ %99, %208 ], [ %99, %209 ], [ %1045, %1316 ], [ %1045, %1157 ]
  %2104 = load i32, ptr %21, align 8, !tbaa !16
  br label %90

2105:                                             ; preds = %1198
  %2106 = trunc i64 %1199 to i32
  br label %2202

2107:                                             ; preds = %1131
  %2108 = trunc i64 %1132 to i32
  br label %2202

2109:                                             ; preds = %1168
  %2110 = trunc i64 %1169 to i32
  br label %2202

2111:                                             ; preds = %142, %129
  %2112 = phi i64 [ %130, %129 ], [ %140, %142 ]
  %2113 = phi i64 [ %96, %129 ], [ %139, %142 ]
  %2114 = phi ptr [ %92, %129 ], [ %135, %142 ]
  %2115 = trunc i64 %2112 to i32
  br label %2202

2116:                                             ; preds = %678, %666
  %2117 = phi i64 [ %667, %666 ], [ %676, %678 ]
  %2118 = phi i64 [ %659, %666 ], [ %675, %678 ]
  %2119 = phi ptr [ %657, %666 ], [ %671, %678 ]
  %2120 = trunc i64 %2117 to i32
  br label %2202

2121:                                             ; preds = %430, %413
  %2122 = phi i64 [ %419, %413 ], [ %428, %430 ]
  %2123 = phi i64 [ %416, %413 ], [ %427, %430 ]
  %2124 = phi ptr [ %414, %413 ], [ %423, %430 ]
  %2125 = trunc i64 %2122 to i32
  br label %2202

2126:                                             ; preds = %367, %351
  %2127 = phi i64 [ %356, %351 ], [ %365, %367 ]
  %2128 = phi i64 [ %353, %351 ], [ %364, %367 ]
  %2129 = phi ptr [ %355, %351 ], [ %360, %367 ]
  %2130 = trunc i64 %2127 to i32
  br label %2202

2131:                                             ; preds = %313, %302, %291, %275
  %2132 = phi i64 [ %280, %275 ], [ %289, %291 ], [ %300, %302 ], [ %311, %313 ]
  %2133 = phi i64 [ %277, %275 ], [ %288, %291 ], [ %299, %302 ], [ %310, %313 ]
  %2134 = phi ptr [ %279, %275 ], [ %284, %291 ], [ %295, %302 ], [ %306, %313 ]
  %2135 = trunc i64 %2132 to i32
  br label %2202

2136:                                             ; preds = %224, %121
  %2137 = phi i64 [ %122, %121 ], [ %222, %224 ]
  %2138 = phi i64 [ %96, %121 ], [ %221, %224 ]
  %2139 = phi ptr [ %92, %121 ], [ %217, %224 ]
  %2140 = trunc i64 %2137 to i32
  br label %2202

2141:                                             ; preds = %752, %741, %730, %116
  %2142 = phi i64 [ %117, %116 ], [ %728, %730 ], [ %739, %741 ], [ %750, %752 ]
  %2143 = phi i64 [ %96, %116 ], [ %727, %730 ], [ %738, %741 ], [ %749, %752 ]
  %2144 = phi ptr [ %92, %116 ], [ %723, %730 ], [ %734, %741 ], [ %745, %752 ]
  %2145 = trunc i64 %2142 to i32
  br label %2202

2146:                                             ; preds = %869, %858, %847, %834
  %2147 = phi i64 [ %836, %834 ], [ %845, %847 ], [ %856, %858 ], [ %867, %869 ]
  %2148 = phi i64 [ %831, %834 ], [ %844, %847 ], [ %855, %858 ], [ %866, %869 ]
  %2149 = phi ptr [ %92, %834 ], [ %840, %847 ], [ %851, %858 ], [ %862, %869 ]
  %2150 = trunc i64 %2147 to i32
  br label %2202

2151:                                             ; preds = %931, %111
  %2152 = phi i64 [ %112, %111 ], [ %929, %931 ]
  %2153 = phi i64 [ %96, %111 ], [ %928, %931 ]
  %2154 = phi ptr [ %92, %111 ], [ %924, %931 ]
  %2155 = trunc i64 %2152 to i32
  br label %2202

2156:                                             ; preds = %2062, %2051, %2040, %2028
  %2157 = phi i64 [ %2029, %2028 ], [ %2038, %2040 ], [ %2049, %2051 ], [ %2060, %2062 ]
  %2158 = phi i64 [ %2019, %2028 ], [ %2037, %2040 ], [ %2048, %2051 ], [ %2059, %2062 ]
  %2159 = phi ptr [ %2017, %2028 ], [ %2033, %2040 ], [ %2044, %2051 ], [ %2055, %2062 ]
  %2160 = trunc i64 %2157 to i32
  br label %2202

2161:                                             ; preds = %1949, %1938, %1927, %1915
  %2162 = phi i64 [ %1916, %1915 ], [ %1925, %1927 ], [ %1936, %1938 ], [ %1947, %1949 ]
  %2163 = phi i64 [ %96, %1915 ], [ %1924, %1927 ], [ %1935, %1938 ], [ %1946, %1949 ]
  %2164 = phi ptr [ %92, %1915 ], [ %1920, %1927 ], [ %1931, %1938 ], [ %1942, %1949 ]
  %2165 = trunc i64 %2162 to i32
  br label %2202

2166:                                             ; preds = %1070
  %2167 = zext i32 %1058 to i64
  %2168 = shl i32 %1058, 3
  %2169 = add i32 %2168, %1056
  %2170 = getelementptr i8, ptr %1059, i64 %2167
  br label %2202

2171:                                             ; preds = %1733
  %2172 = shl i32 %1726, 3
  %2173 = add i32 %1728, %2172
  %2174 = zext i32 %1726 to i64
  %2175 = getelementptr i8, ptr %1725, i64 %2174
  br label %2202

2176:                                             ; preds = %1659
  %2177 = zext i32 %1629 to i64
  %2178 = shl i32 %1629, 3
  %2179 = add i32 %2178, %1631
  %2180 = getelementptr i8, ptr %1628, i64 %2177
  br label %2202

2181:                                             ; preds = %1601
  %2182 = zext i32 %1583 to i64
  %2183 = shl i32 %1583, 3
  %2184 = add i32 %2183, %1585
  %2185 = getelementptr i8, ptr %1582, i64 %2182
  br label %2202

2186:                                             ; preds = %1543
  %2187 = shl i32 %1534, 3
  %2188 = add i32 %1536, %2187
  %2189 = zext i32 %1534 to i64
  %2190 = getelementptr i8, ptr %1533, i64 %2189
  br label %2202

2191:                                             ; preds = %1462
  %2192 = zext i32 %1433 to i64
  %2193 = shl i32 %1433, 3
  %2194 = add i32 %2193, %1435
  %2195 = getelementptr i8, ptr %1432, i64 %2192
  br label %2202

2196:                                             ; preds = %1405
  %2197 = zext i32 %1373 to i64
  %2198 = shl i32 %1373, 3
  %2199 = add i32 %2198, %1375
  %2200 = getelementptr i8, ptr %1372, i64 %2197
  br label %2202

2201:                                             ; preds = %90
  br label %2202

2202:                                             ; preds = %528, %544, %584, %604, %644, %778, %894, %909, %1364, %1770, %1903, %792, %997, %90, %2201, %2196, %2191, %2186, %2181, %2176, %2171, %2166, %2161, %2156, %2151, %2146, %2141, %2136, %2131, %2126, %2121, %2116, %2111, %2109, %2107, %2105, %2090, %818
  %2203 = phi i32 [ %95, %818 ], [ %95, %2090 ], [ %95, %2105 ], [ %95, %2107 ], [ %95, %2109 ], [ %95, %2111 ], [ %95, %2116 ], [ %95, %2121 ], [ %95, %2126 ], [ %95, %2131 ], [ %95, %2136 ], [ %95, %2141 ], [ %95, %2146 ], [ %95, %2151 ], [ %95, %2156 ], [ %95, %2161 ], [ %95, %2166 ], [ %95, %2171 ], [ %95, %2176 ], [ %95, %2181 ], [ %95, %2186 ], [ %95, %2191 ], [ %95, %2196 ], [ %95, %90 ], [ %95, %997 ], [ %95, %528 ], [ %95, %544 ], [ %95, %584 ], [ %95, %604 ], [ %95, %644 ], [ %95, %778 ], [ %95, %894 ], [ %95, %909 ], [ %95, %1364 ], [ 0, %1770 ], [ 0, %1903 ], [ %95, %792 ], [ %95, %2201 ]
  %2204 = phi ptr [ %809, %818 ], [ %2091, %2090 ], [ %1202, %2105 ], [ %1135, %2107 ], [ %1172, %2109 ], [ %2114, %2111 ], [ %2119, %2116 ], [ %2124, %2121 ], [ %2129, %2126 ], [ %2134, %2131 ], [ %2139, %2136 ], [ %2144, %2141 ], [ %2149, %2146 ], [ %2154, %2151 ], [ %2159, %2156 ], [ %2164, %2161 ], [ %2170, %2166 ], [ %2175, %2171 ], [ %2180, %2176 ], [ %2185, %2181 ], [ %2190, %2186 ], [ %2195, %2191 ], [ %2200, %2196 ], [ %92, %90 ], [ %995, %997 ], [ %530, %528 ], [ %537, %544 ], [ %587, %584 ], [ %597, %604 ], [ %647, %644 ], [ %779, %778 ], [ %885, %894 ], [ %903, %909 ], [ %1344, %1364 ], [ %1771, %1770 ], [ %92, %1903 ], [ %784, %792 ], [ %92, %2201 ]
  %2205 = phi i32 [ %810, %818 ], [ %2092, %2090 ], [ 0, %2105 ], [ 0, %2107 ], [ 0, %2109 ], [ 0, %2111 ], [ 0, %2116 ], [ 0, %2121 ], [ 0, %2126 ], [ 0, %2131 ], [ 0, %2136 ], [ 0, %2141 ], [ 0, %2146 ], [ 0, %2151 ], [ 0, %2156 ], [ 0, %2161 ], [ 0, %2166 ], [ 0, %2171 ], [ 0, %2176 ], [ 0, %2181 ], [ 0, %2186 ], [ 0, %2191 ], [ 0, %2196 ], [ %94, %90 ], [ 0, %997 ], [ %531, %528 ], [ 0, %544 ], [ %585, %584 ], [ 0, %604 ], [ %645, %644 ], [ %780, %778 ], [ %886, %894 ], [ %904, %909 ], [ %1345, %1364 ], [ %1772, %1770 ], [ %94, %1903 ], [ 0, %792 ], [ %94, %2201 ]
  %2206 = phi i64 [ %819, %818 ], [ %2093, %2090 ], [ %1200, %2105 ], [ %1133, %2107 ], [ %1170, %2109 ], [ %2113, %2111 ], [ %2118, %2116 ], [ %2123, %2121 ], [ %2128, %2126 ], [ %2133, %2131 ], [ %2138, %2136 ], [ %2143, %2141 ], [ %2148, %2146 ], [ %2153, %2151 ], [ %2158, %2156 ], [ %2163, %2161 ], [ %1072, %2166 ], [ %1735, %2171 ], [ %1661, %2176 ], [ %1603, %2181 ], [ %1545, %2186 ], [ %1464, %2191 ], [ %1407, %2196 ], [ %96, %90 ], [ %993, %997 ], [ %479, %528 ], [ %539, %544 ], [ %539, %584 ], [ %599, %604 ], [ %599, %644 ], [ %781, %778 ], [ 0, %894 ], [ %905, %909 ], [ %1346, %1364 ], [ %1773, %1770 ], [ %96, %1903 ], [ %786, %792 ], [ %96, %2201 ]
  %2207 = phi i32 [ %820, %818 ], [ %2094, %2090 ], [ %2106, %2105 ], [ %2108, %2107 ], [ %2110, %2109 ], [ %2115, %2111 ], [ %2120, %2116 ], [ %2125, %2121 ], [ %2130, %2126 ], [ %2135, %2131 ], [ %2140, %2136 ], [ %2145, %2141 ], [ %2150, %2146 ], [ %2155, %2151 ], [ %2160, %2156 ], [ %2165, %2161 ], [ %2169, %2166 ], [ %2173, %2171 ], [ %2179, %2176 ], [ %2184, %2181 ], [ %2188, %2186 ], [ %2194, %2191 ], [ %2199, %2196 ], [ %97, %90 ], [ %992, %997 ], [ %480, %528 ], [ %540, %544 ], [ %540, %584 ], [ %600, %604 ], [ %600, %644 ], [ %782, %778 ], [ 0, %894 ], [ %906, %909 ], [ %1347, %1364 ], [ %1774, %1770 ], [ %97, %1903 ], [ %787, %792 ], [ %97, %2201 ]
  %2208 = phi i32 [ %98, %818 ], [ %2021, %2090 ], [ %98, %2105 ], [ %98, %2107 ], [ %98, %2109 ], [ %98, %2111 ], [ %98, %2116 ], [ %98, %2121 ], [ %98, %2126 ], [ %98, %2131 ], [ %98, %2136 ], [ %98, %2141 ], [ %98, %2146 ], [ %98, %2151 ], [ %2021, %2156 ], [ %98, %2161 ], [ %98, %2166 ], [ %98, %2171 ], [ %98, %2176 ], [ %98, %2181 ], [ %98, %2186 ], [ %98, %2191 ], [ %98, %2196 ], [ %98, %90 ], [ %98, %997 ], [ %98, %792 ], [ %98, %1903 ], [ %98, %1770 ], [ %98, %1364 ], [ %98, %909 ], [ %98, %894 ], [ %98, %778 ], [ %98, %644 ], [ %98, %604 ], [ %98, %584 ], [ %98, %544 ], [ %98, %528 ], [ %98, %2201 ]
  %2209 = phi i32 [ %99, %818 ], [ 1, %2090 ], [ %1045, %2105 ], [ %1045, %2107 ], [ %1045, %2109 ], [ %99, %2111 ], [ %99, %2116 ], [ %99, %2121 ], [ %99, %2126 ], [ %99, %2131 ], [ %99, %2136 ], [ %99, %2141 ], [ %99, %2146 ], [ %99, %2151 ], [ %99, %2156 ], [ %99, %2161 ], [ %1045, %2166 ], [ %1729, %2171 ], [ %1586, %2176 ], [ %1586, %2181 ], [ %1537, %2186 ], [ %1376, %2191 ], [ %1376, %2196 ], [ -3, %90 ], [ %99, %997 ], [ %99, %528 ], [ %99, %544 ], [ %99, %584 ], [ %99, %604 ], [ %99, %644 ], [ %99, %778 ], [ %99, %894 ], [ %99, %909 ], [ 0, %1364 ], [ %1775, %1770 ], [ %99, %1903 ], [ %99, %792 ], [ 1, %2201 ]
  store ptr %93, ptr %26, align 8, !tbaa !43
  store i32 %2203, ptr %41, align 8, !tbaa !46
  store ptr %2204, ptr %0, align 8, !tbaa !44
  store i32 %2205, ptr %43, align 8, !tbaa !45
  store i64 %2206, ptr %45, align 8, !tbaa !27
  store i32 %2207, ptr %47, align 8, !tbaa !28
  %2210 = load i32, ptr %79, align 4, !tbaa !34
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2212, label %2221

2212:                                             ; preds = %2202
  %2213 = icmp eq i32 %2208, %2203
  br i1 %2213, label %2229, label %2214

2214:                                             ; preds = %2212
  %2215 = load i32, ptr %21, align 8, !tbaa !16
  %2216 = icmp ult i32 %2215, 16209
  br i1 %2216, label %2217, label %2229

2217:                                             ; preds = %2214
  %2218 = icmp ult i32 %2215, 16206
  %2219 = icmp ne i32 %1, 4
  %2220 = or i1 %2219, %2218
  br i1 %2220, label %2221, label %2229

2221:                                             ; preds = %2217, %2202
  %2222 = sub i32 %2208, %2203
  %2223 = call fastcc i32 @updatewindow(ptr noundef nonnull %0, ptr noundef %93, i32 noundef %2222), !range !109
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2225, label %2228

2225:                                             ; preds = %2221
  %2226 = load i32, ptr %43, align 8, !tbaa !45
  %2227 = load i32, ptr %41, align 8, !tbaa !46
  br label %2229

2228:                                             ; preds = %2221
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %2286

2229:                                             ; preds = %2225, %2217, %2214, %2212
  %2230 = phi i32 [ %2227, %2225 ], [ %2203, %2217 ], [ %2203, %2214 ], [ %2203, %2212 ]
  %2231 = phi i32 [ %2226, %2225 ], [ %2205, %2217 ], [ %2205, %2214 ], [ %2205, %2212 ]
  %2232 = sub i32 %44, %2231
  %2233 = sub i32 %2208, %2230
  %2234 = zext i32 %2232 to i64
  %2235 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %2236 = load i64, ptr %2235, align 8, !tbaa !18
  %2237 = add i64 %2236, %2234
  store i64 %2237, ptr %2235, align 8, !tbaa !18
  %2238 = zext i32 %2233 to i64
  %2239 = load i64, ptr %50, align 8, !tbaa !107
  %2240 = add i64 %2239, %2238
  store i64 %2240, ptr %50, align 8, !tbaa !107
  %2241 = load i64, ptr %51, align 8, !tbaa !17
  %2242 = add i64 %2241, %2238
  store i64 %2242, ptr %51, align 8, !tbaa !17
  %2243 = load i32, ptr %49, align 8, !tbaa !20
  %2244 = and i32 %2243, 4
  %2245 = icmp ne i32 %2244, 0
  %2246 = icmp ne i32 %2208, %2230
  %2247 = select i1 %2245, i1 %2246, i1 false
  br i1 %2247, label %2248, label %2261

2248:                                             ; preds = %2229
  %2249 = load i32, ptr %52, align 8, !tbaa !24
  %2250 = icmp eq i32 %2249, 0
  %2251 = load i64, ptr %53, align 8, !tbaa !51
  %2252 = load ptr, ptr %26, align 8, !tbaa !43
  %2253 = sub nsw i64 0, %2238
  %2254 = getelementptr inbounds i8, ptr %2252, i64 %2253
  br i1 %2250, label %2257, label %2255

2255:                                             ; preds = %2248
  %2256 = call i64 @crc32(i64 noundef %2251, ptr noundef %2254, i32 noundef %2233) #9
  br label %2259

2257:                                             ; preds = %2248
  %2258 = call i64 @adler32(i64 noundef %2251, ptr noundef %2254, i32 noundef %2233) #9
  br label %2259

2259:                                             ; preds = %2257, %2255
  %2260 = phi i64 [ %2256, %2255 ], [ %2258, %2257 ]
  store i64 %2260, ptr %53, align 8, !tbaa !51
  store i64 %2260, ptr %54, align 8, !tbaa !21
  br label %2261

2261:                                             ; preds = %2259, %2229
  %2262 = load i32, ptr %47, align 8, !tbaa !28
  %2263 = load i32, ptr %83, align 4, !tbaa !22
  %2264 = icmp eq i32 %2263, 0
  %2265 = select i1 %2264, i32 0, i32 64
  %2266 = add nsw i32 %2265, %2262
  %2267 = load i32, ptr %21, align 8, !tbaa !16
  %2268 = icmp eq i32 %2267, 16191
  %2269 = select i1 %2268, i32 128, i32 0
  %2270 = add nsw i32 %2266, %2269
  %2271 = icmp eq i32 %2267, 16199
  %2272 = icmp eq i32 %2267, 16194
  %2273 = or i1 %2271, %2272
  %2274 = select i1 %2273, i32 256, i32 0
  %2275 = add nsw i32 %2270, %2274
  %2276 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 %2275, ptr %2276, align 8, !tbaa !19
  %2277 = icmp eq i32 %44, %2231
  %2278 = icmp eq i32 %2208, %2230
  %2279 = select i1 %2277, i1 %2278, i1 false
  %2280 = icmp eq i32 %1, 4
  %2281 = or i1 %2280, %2279
  %2282 = icmp eq i32 %2209, 0
  %2283 = select i1 %2281, i1 %2282, i1 false
  %2284 = select i1 %2283, i32 -5, i32 %2209
  br label %2286

2285:                                             ; preds = %90
  br label %2286

2286:                                             ; preds = %90, %2285, %13, %17, %2, %5, %9, %20, %25, %32, %2261, %2228, %775
  %2287 = phi i32 [ -4, %2228 ], [ %2284, %2261 ], [ 2, %775 ], [ -2, %32 ], [ -2, %25 ], [ -2, %20 ], [ -2, %9 ], [ -2, %5 ], [ -2, %2 ], [ -2, %17 ], [ -2, %13 ], [ -4, %2285 ], [ -2, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %2287
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #3

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @updatewindow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = shl nuw i32 1, %15
  %17 = tail call ptr %11(ptr noundef %13, i32 noundef %16, i32 noundef 1) #9
  store ptr %17, ptr %6, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %9, %3
  %20 = phi ptr [ %17, %9 ], [ %7, %3 ]
  %21 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !38
  %27 = shl nuw i32 1, %26
  store i32 %27, ptr %21, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  store i32 0, ptr %28, align 4, !tbaa !36
  %29 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 0, ptr %29, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i32 [ %27, %24 ], [ %22, %19 ]
  %32 = icmp ugt i32 %31, %2
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = zext i32 %31 to i64
  %35 = sub nsw i64 0, %34
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %36, i64 %34, i1 false)
  %37 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  store i32 0, ptr %37, align 4, !tbaa !36
  %38 = load i32, ptr %21, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 %38, ptr %39, align 8, !tbaa !35
  br label %71

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !36
  %43 = sub i32 %31, %42
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %2)
  %45 = zext i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %20, i64 %45
  %47 = zext i32 %2 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, ptr %1, i64 %48
  %50 = zext i32 %44 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %49, i64 %50, i1 false)
  %51 = icmp ult i32 %43, %2
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = sub i32 %2, %44
  %54 = load ptr, ptr %6, align 8, !tbaa !37
  %55 = zext i32 %53 to i64
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %57, i64 %55, i1 false)
  store i32 %53, ptr %41, align 4, !tbaa !36
  %58 = load i32, ptr %21, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  store i32 %58, ptr %59, align 8, !tbaa !35
  br label %71

60:                                               ; preds = %40
  %61 = load i32, ptr %41, align 4, !tbaa !36
  %62 = add i32 %61, %44
  %63 = load i32, ptr %21, align 4, !tbaa !34
  %64 = icmp eq i32 %62, %63
  %65 = select i1 %64, i32 0, i32 %62
  store i32 %65, ptr %41, align 4
  %66 = getelementptr inbounds %struct.inflate_state, ptr %5, i64 0, i32 12
  %67 = load i32, ptr %66, align 8, !tbaa !35
  %68 = icmp ult i32 %67, %63
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = add i32 %67, %44
  store i32 %70, ptr %66, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %33, %60, %69, %52, %9
  %72 = phi i32 [ 1, %9 ], [ 0, %52 ], [ 0, %69 ], [ 0, %60 ], [ 0, %33 ]
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateEnd(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  tail call void %9(ptr noundef %29, ptr noundef nonnull %25) #9
  %30 = load ptr, ptr %8, align 8, !tbaa !12
  %31 = load ptr, ptr %12, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %31, %27 ], [ %13, %23 ]
  %34 = phi ptr [ %30, %27 ], [ %9, %23 ]
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  tail call void %34(ptr noundef %36, ptr noundef %33) #9
  store ptr null, ptr %12, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %11, %15, %1, %3, %7, %18, %32
  %38 = phi i32 [ 0, %32 ], [ -2, %18 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetDictionary(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !35
  %28 = icmp ne i32 %27, 0
  %29 = icmp ne ptr %1, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 13
  %35 = load i32, ptr %34, align 4, !tbaa !36
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = sub i32 %27, %35
  %39 = zext i32 %38 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %37, i64 %39, i1 false)
  %40 = load i32, ptr %26, align 8, !tbaa !35
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = load i32, ptr %34, align 4, !tbaa !36
  %44 = zext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load ptr, ptr %32, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %47, i64 %44, i1 false)
  br label %48

48:                                               ; preds = %31, %25
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %26, align 8, !tbaa !35
  store i32 %51, ptr %2, align 4, !tbaa !110
  br label %52

52:                                               ; preds = %13, %17, %3, %5, %9, %48, %50, %20
  %53 = phi i32 [ -2, %20 ], [ 0, %50 ], [ 0, %48 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateSetDictionary(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !16
  %23 = add i32 %22, -16180
  %24 = icmp ult i32 %23, 32
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !20
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq i32 %22, 16190
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  br i1 %29, label %32, label %46

31:                                               ; preds = %25
  br i1 %29, label %32, label %38

32:                                               ; preds = %30, %31
  %33 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  %34 = tail call i64 @adler32(i64 noundef %33, ptr noundef %1, i32 noundef %2) #9
  %35 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !51
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32, %31
  %39 = zext i32 %2 to i64
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = tail call fastcc i32 @updatewindow(ptr noundef nonnull %0, ptr noundef %40, i32 noundef %2), !range !109
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 16210, ptr %21, align 8, !tbaa !16
  br label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.inflate_state, ptr %15, i64 0, i32 4
  store i32 1, ptr %45, align 4, !tbaa !23
  br label %46

46:                                               ; preds = %13, %17, %3, %5, %9, %32, %30, %20, %44, %43
  %47 = phi i32 [ -4, %43 ], [ 0, %44 ], [ -2, %20 ], [ -2, %30 ], [ -3, %32 ], [ -2, %9 ], [ -2, %5 ], [ -2, %3 ], [ -2, %17 ], [ -2, %13 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateGetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr %1, ptr %30, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.gz_header_s, ptr %1, i64 0, i32 12
  store i32 0, ptr %31, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %12, %16, %2, %4, %8, %24, %19, %29
  %33 = phi i32 [ 0, %29 ], [ -2, %19 ], [ -2, %24 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateSync(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %200, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %200, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %200, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %200, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %200

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %200

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !45
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = icmp ult i32 %30, 8
  br i1 %31, label %200, label %32

32:                                               ; preds = %28, %24
  %33 = icmp eq i32 %21, 16211
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %36 = load i32, ptr %35, align 4, !tbaa !110
  br label %122

37:                                               ; preds = %32
  store i32 16211, ptr %20, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = zext nneg i32 %40 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8, !tbaa !27
  %45 = icmp ult i32 %39, 8
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = add i32 %39, -8
  %48 = lshr i32 %47, 3
  %49 = add nuw nsw i32 %48, 1
  %50 = and i32 %49, 3
  %51 = icmp ult i32 %47, 24
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = and i32 %49, 1073741820
  br label %55

54:                                               ; preds = %37
  store i32 0, ptr %38, align 8, !tbaa !28
  br label %118

55:                                               ; preds = %55, %52
  %56 = phi i64 [ 0, %52 ], [ %72, %55 ]
  %57 = phi i64 [ %44, %52 ], [ %74, %55 ]
  %58 = phi i32 [ 0, %52 ], [ %75, %55 ]
  %59 = trunc i64 %57 to i8
  %60 = or disjoint i64 %56, 1
  %61 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %56
  store i8 %59, ptr %61, align 1, !tbaa !40
  %62 = lshr i64 %57, 8
  %63 = trunc i64 %62 to i8
  %64 = or disjoint i64 %56, 2
  %65 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %60
  store i8 %63, ptr %65, align 1, !tbaa !40
  %66 = lshr i64 %57, 16
  %67 = trunc i64 %66 to i8
  %68 = or disjoint i64 %56, 3
  %69 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %64
  store i8 %67, ptr %69, align 1, !tbaa !40
  %70 = lshr i64 %57, 24
  %71 = trunc i64 %70 to i8
  %72 = add nuw nsw i64 %56, 4
  %73 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %68
  store i8 %71, ptr %73, align 1, !tbaa !40
  %74 = lshr i64 %57, 32
  %75 = add i32 %58, 4
  %76 = icmp eq i32 %75, %53
  br i1 %76, label %77, label %55, !llvm.loop !111

77:                                               ; preds = %55, %46
  %78 = phi i64 [ undef, %46 ], [ %72, %55 ]
  %79 = phi i64 [ undef, %46 ], [ %74, %55 ]
  %80 = phi i64 [ 0, %46 ], [ %72, %55 ]
  %81 = phi i64 [ %44, %46 ], [ %74, %55 ]
  %82 = icmp eq i32 %50, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %77, %83
  %84 = phi i64 [ %88, %83 ], [ %80, %77 ]
  %85 = phi i64 [ %90, %83 ], [ %81, %77 ]
  %86 = phi i32 [ %91, %83 ], [ 0, %77 ]
  %87 = trunc i64 %85 to i8
  %88 = add nuw nsw i64 %84, 1
  %89 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 %84
  store i8 %87, ptr %89, align 1, !tbaa !40
  %90 = lshr i64 %85, 8
  %91 = add i32 %86, 1
  %92 = icmp eq i32 %91, %50
  br i1 %92, label %93, label %83, !llvm.loop !112

93:                                               ; preds = %83, %77
  %94 = phi i64 [ %78, %77 ], [ %88, %83 ]
  %95 = phi i64 [ %79, %77 ], [ %90, %83 ]
  store i64 %95, ptr %41, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !28
  %96 = and i64 %94, 4294967295
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = and i64 %94, 4294967295
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i64 [ 0, %98 ], [ %114, %100 ]
  %102 = phi i32 [ 0, %98 ], [ %113, %100 ]
  %103 = getelementptr inbounds i8, ptr %2, i64 %101
  %104 = load i8, ptr %103, align 1, !tbaa !40
  %105 = zext i8 %104 to i32
  %106 = icmp ult i32 %102, 2
  %107 = select i1 %106, i32 0, i32 255
  %108 = icmp eq i32 %107, %105
  %109 = add nuw nsw i32 %102, 1
  %110 = icmp eq i8 %104, 0
  %111 = sub nuw nsw i32 4, %102
  %112 = select i1 %110, i32 %111, i32 0
  %113 = select i1 %108, i32 %109, i32 %112
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp ult i64 %114, %99
  %116 = icmp ult i32 %113, 4
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %100, label %118, !llvm.loop !113

118:                                              ; preds = %100, %54, %93
  %119 = phi i32 [ 0, %93 ], [ 0, %54 ], [ %113, %100 ]
  %120 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  store i32 %119, ptr %120, align 4, !tbaa !110
  %121 = load i32, ptr %25, align 8, !tbaa !45
  br label %122

122:                                              ; preds = %34, %118
  %123 = phi i32 [ %119, %118 ], [ %36, %34 ]
  %124 = phi i32 [ %121, %118 ], [ %26, %34 ]
  %125 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 27
  %126 = load ptr, ptr %0, align 8, !tbaa !44
  %127 = icmp ne i32 %124, 0
  %128 = icmp ult i32 %123, 4
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = zext i32 %124 to i64
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %146, %132 ]
  %134 = phi i32 [ %123, %130 ], [ %145, %132 ]
  %135 = getelementptr inbounds i8, ptr %126, i64 %133
  %136 = load i8, ptr %135, align 1, !tbaa !40
  %137 = zext i8 %136 to i32
  %138 = icmp ult i32 %134, 2
  %139 = select i1 %138, i32 0, i32 255
  %140 = icmp eq i32 %139, %137
  %141 = add nuw nsw i32 %134, 1
  %142 = icmp eq i8 %136, 0
  %143 = sub nuw nsw i32 4, %134
  %144 = select i1 %142, i32 %143, i32 0
  %145 = select i1 %140, i32 %141, i32 %144
  %146 = add nuw nsw i64 %133, 1
  %147 = icmp ult i64 %146, %131
  %148 = icmp ult i32 %145, 4
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %132, label %150, !llvm.loop !113

150:                                              ; preds = %132
  %151 = trunc i64 %146 to i32
  br label %152

152:                                              ; preds = %122, %150
  %153 = phi i32 [ %123, %122 ], [ %145, %150 ]
  %154 = phi i32 [ 0, %122 ], [ %151, %150 ]
  store i32 %153, ptr %125, align 4, !tbaa !110
  %155 = load i32, ptr %25, align 8, !tbaa !45
  %156 = sub i32 %155, %154
  store i32 %156, ptr %25, align 8, !tbaa !45
  %157 = zext i32 %154 to i64
  %158 = getelementptr inbounds i8, ptr %126, i64 %157
  store ptr %158, ptr %0, align 8, !tbaa !44
  %159 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !18
  %161 = add i64 %160, %157
  store i64 %161, ptr %159, align 8, !tbaa !18
  %162 = icmp eq i32 %153, 4
  br i1 %162, label %163, label %200

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 5
  %165 = load i32, ptr %164, align 8, !tbaa !24
  %166 = icmp eq i32 %165, -1
  %167 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  br i1 %166, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr %167, align 8, !tbaa !20
  %170 = and i32 %169, -5
  br label %171

171:                                              ; preds = %163, %168
  %172 = phi i32 [ %170, %168 ], [ 0, %163 ]
  store i32 %172, ptr %167, align 8, !tbaa !20
  %173 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %174 = load i64, ptr %173, align 8, !tbaa !107
  %175 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 11
  store i32 0, ptr %175, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 12
  store i32 0, ptr %176, align 8, !tbaa !35
  %177 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 13
  store i32 0, ptr %177, align 4, !tbaa !36
  %178 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 8
  store i64 0, ptr %178, align 8, !tbaa !17
  %179 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %179, align 8, !tbaa !19
  %180 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %173, i8 0, i64 16, i1 false)
  %181 = load i32, ptr %180, align 8, !tbaa !20
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %171
  %184 = and i32 %181, 1
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %185, ptr %186, align 8, !tbaa !21
  br label %187

187:                                              ; preds = %171, %183
  %188 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 2
  store i32 0, ptr %188, align 4, !tbaa !22
  %189 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 4
  store i32 0, ptr %189, align 4, !tbaa !23
  %190 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 6
  store i32 32768, ptr %190, align 4, !tbaa !25
  %191 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 9
  store ptr null, ptr %191, align 8, !tbaa !26
  %192 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 15
  store i64 0, ptr %192, align 8, !tbaa !27
  %193 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 16
  store i32 0, ptr %193, align 8, !tbaa !28
  %194 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %195 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  store ptr %194, ptr %195, align 8, !tbaa !29
  %196 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  store ptr %194, ptr %196, align 8, !tbaa !30
  %197 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  store ptr %194, ptr %197, align 8, !tbaa !31
  %198 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %198, align 8, !tbaa !32
  %199 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 33
  store i32 -1, ptr %199, align 4, !tbaa !33
  store i64 %161, ptr %159, align 8, !tbaa !18
  store i64 %174, ptr %173, align 8, !tbaa !107
  store i32 %165, ptr %164, align 8, !tbaa !24
  store i32 16191, ptr %20, align 8, !tbaa !16
  br label %200

200:                                              ; preds = %12, %16, %1, %4, %8, %152, %28, %19, %187
  %201 = phi i32 [ 0, %187 ], [ -2, %19 ], [ -5, %28 ], [ -3, %152 ], [ -2, %8 ], [ -2, %4 ], [ -2, %1 ], [ -2, %16 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 16193
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %11, %15, %1, %3, %7, %23, %25, %18
  %31 = phi i32 [ -2, %18 ], [ 0, %23 ], [ %29, %25 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ], [ -2, %15 ], [ -2, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %88, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %88

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16212
  %23 = icmp ult i32 %22, -32
  %24 = icmp eq ptr %0, null
  %25 = or i1 %24, %23
  br i1 %25, label %88, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = tail call ptr %6(ptr noundef %28, i32 noundef 1, i32 noundef 7160) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %88, label %31

31:                                               ; preds = %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, i8 0, i64 7160, i1 false)
  %32 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !tbaa !5
  %37 = load ptr, ptr %27, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !38
  %40 = shl nuw i32 1, %39
  %41 = tail call ptr %36(ptr noundef %37, i32 noundef %40, i32 noundef 1) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8, !tbaa !12
  %45 = load ptr, ptr %27, align 8, !tbaa !39
  tail call void %44(ptr noundef %45, ptr noundef nonnull %29) #9
  br label %88

46:                                               ; preds = %35, %31
  %47 = phi ptr [ %41, %35 ], [ null, %31 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %29, ptr noundef nonnull align 8 dereferenceable(7160) %14, i64 7160, i1 false)
  store ptr %0, ptr %29, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31
  %51 = icmp ult ptr %49, %50
  %52 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 31, i64 1443
  %53 = icmp ugt ptr %49, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = ptrtoint ptr %50 to i64
  br label %70

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %59 = ptrtoint ptr %49 to i64
  %60 = ptrtoint ptr %50 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 20
  store ptr %62, ptr %63, align 8, !tbaa !31
  %64 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %66, %60
  %68 = getelementptr inbounds i8, ptr %58, i64 %67
  %69 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 21
  store ptr %68, ptr %69, align 8, !tbaa !30
  br label %70

70:                                               ; preds = %55, %57
  %71 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %72 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 31
  %73 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 28
  %74 = load ptr, ptr %73, align 8, !tbaa !29
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %75, %71
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 28
  store ptr %77, ptr %78, align 8, !tbaa !29
  %79 = icmp eq ptr %47, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %32, align 8, !tbaa !37
  %82 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 12
  %83 = load i32, ptr %82, align 8, !tbaa !35
  %84 = zext i32 %83 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %81, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %80, %70
  %86 = getelementptr inbounds %struct.inflate_state, ptr %29, i64 0, i32 14
  store ptr %47, ptr %86, align 8, !tbaa !37
  %87 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %29, ptr %87, align 8, !tbaa !13
  br label %88

88:                                               ; preds = %12, %16, %2, %4, %8, %26, %19, %85, %43
  %89 = phi i32 [ -4, %43 ], [ 0, %85 ], [ -2, %19 ], [ -4, %26 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateUndermine(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 32
  store i32 1, ptr %25, align 8, !tbaa !32
  br label %26

26:                                               ; preds = %12, %16, %2, %4, %8, %19, %24
  %27 = phi i32 [ -3, %24 ], [ -2, %19 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflateValidate(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !16
  %22 = add i32 %21, -16180
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = icmp eq i32 %1, 0
  %26 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !20
  br i1 %25, label %28, label %30

28:                                               ; preds = %24
  %29 = and i32 %27, -5
  br label %34

30:                                               ; preds = %24
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = or i32 %27, 4
  store i32 %33, ptr %26, align 8, !tbaa !20
  br label %37

34:                                               ; preds = %28, %30
  %35 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.inflate_state, ptr %14, i64 0, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !20
  br label %37

37:                                               ; preds = %12, %16, %2, %4, %8, %32, %34, %19
  %38 = phi i32 [ -2, %19 ], [ 0, %34 ], [ 0, %32 ], [ -2, %8 ], [ -2, %4 ], [ -2, %2 ], [ -2, %16 ], [ -2, %12 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateMark(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 33
  %25 = load i32, ptr %24, align 4, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 16
  switch i32 %20, label %37 [
    i32 16195, label %28
    i32 16204, label %31
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %30 = load i32, ptr %29, align 4, !tbaa !62
  br label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 17
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = sub i32 %33, %35
  br label %37

37:                                               ; preds = %23, %31, %28
  %38 = phi i32 [ %30, %28 ], [ %36, %31 ], [ 0, %23 ]
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %27, %39
  br label %41

41:                                               ; preds = %11, %15, %1, %3, %7, %18, %37
  %42 = phi i64 [ %40, %37 ], [ -65536, %18 ], [ -65536, %7 ], [ -65536, %3 ], [ -65536, %1 ], [ -65536, %15 ], [ -65536, %11 ]
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @inflateCodesUsed(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = add i32 %20, -16180
  %22 = icmp ult i32 %21, 32
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 28
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds %struct.inflate_state, ptr %13, i64 0, i32 31
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 2
  br label %31

31:                                               ; preds = %11, %15, %1, %3, %7, %18, %23
  %32 = phi i64 [ %30, %23 ], [ -1, %18 ], [ -1, %7 ], [ -1, %3 ], [ -1, %1 ], [ -1, %15 ], [ -1, %11 ]
  ret i64 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 72}
!13 = !{!6, !7, i64 56}
!14 = !{!15, !7, i64 0}
!15 = !{!"inflate_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !7, i64 144, !8, i64 152, !8, i64 792, !8, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!16 = !{!15, !10, i64 8}
!17 = !{!15, !11, i64 40}
!18 = !{!6, !11, i64 16}
!19 = !{!6, !10, i64 88}
!20 = !{!15, !10, i64 16}
!21 = !{!6, !11, i64 96}
!22 = !{!15, !10, i64 12}
!23 = !{!15, !10, i64 20}
!24 = !{!15, !10, i64 24}
!25 = !{!15, !10, i64 28}
!26 = !{!15, !7, i64 48}
!27 = !{!15, !11, i64 80}
!28 = !{!15, !10, i64 88}
!29 = !{!15, !7, i64 144}
!30 = !{!15, !7, i64 112}
!31 = !{!15, !7, i64 104}
!32 = !{!15, !10, i64 7144}
!33 = !{!15, !10, i64 7148}
!34 = !{!15, !10, i64 60}
!35 = !{!15, !10, i64 64}
!36 = !{!15, !10, i64 68}
!37 = !{!15, !7, i64 72}
!38 = !{!15, !10, i64 56}
!39 = !{!6, !7, i64 80}
!40 = !{!8, !8, i64 0}
!41 = !{!6, !7, i64 48}
!42 = !{i32 -2, i32 1}
!43 = !{!6, !7, i64 24}
!44 = !{!6, !7, i64 0}
!45 = !{!6, !10, i64 8}
!46 = !{!6, !10, i64 32}
!47 = !{!15, !10, i64 100}
!48 = !{!15, !10, i64 140}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!15, !11, i64 32}
!52 = !{!53, !10, i64 72}
!53 = !{!"gz_header_s", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 20, !7, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !10, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !10, i64 72}
!54 = distinct !{!54, !50}
!55 = !{!53, !10, i64 0}
!56 = distinct !{!56, !50}
!57 = !{!53, !11, i64 8}
!58 = distinct !{!58, !50}
!59 = !{!53, !10, i64 16}
!60 = !{!53, !10, i64 20}
!61 = distinct !{!61, !50}
!62 = !{!15, !10, i64 92}
!63 = !{!53, !10, i64 32}
!64 = !{!53, !7, i64 24}
!65 = !{!53, !10, i64 36}
!66 = !{!53, !7, i64 40}
!67 = !{!53, !10, i64 48}
!68 = distinct !{!68, !50}
!69 = !{!53, !7, i64 56}
!70 = !{!53, !10, i64 64}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = !{!53, !10, i64 68}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = !{!15, !10, i64 132}
!78 = !{!15, !10, i64 136}
!79 = !{!15, !10, i64 128}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !8, i64 0}
!82 = distinct !{!82, !50}
!83 = distinct !{!83, !50}
!84 = !{!15, !10, i64 120}
!85 = !{i64 0, i64 1, !40, i64 1, i64 2, !80}
!86 = !{i64 0, i64 2, !80}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !50, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !50, !91}
!96 = distinct !{!96, !50}
!97 = !{!15, !10, i64 124}
!98 = !{i64 0, i64 1, !40, i64 1, i64 1, !40, i64 2, i64 2, !80}
!99 = distinct !{!99, !50}
!100 = !{!15, !10, i64 7152}
!101 = !{!15, !10, i64 96}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50, !91, !92}
!104 = distinct !{!104, !94}
!105 = distinct !{!105, !50, !91}
!106 = distinct !{!106, !50}
!107 = !{!6, !11, i64 40}
!108 = distinct !{!108, !50}
!109 = !{i32 0, i32 2}
!110 = !{!10, !10, i64 0}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !94}
!113 = distinct !{!113, !50}
