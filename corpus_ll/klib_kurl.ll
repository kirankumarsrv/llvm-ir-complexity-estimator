; ModuleID = 'corpus_src/klib/kurl.c'
source_filename = "corpus_src/klib/kurl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kurl_t = type { ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, ptr }
%struct.s3aux_t = type { ptr, ptr, ptr }
%struct.kurl_opt_t = type { ptr, ptr, ptr }
%struct.sha1nfo = type { %union.anon, i8, %union.anon.0, i32, [64 x i8], [20 x i8] }
%union.anon = type { [16 x i32] }
%union.anon.0 = type { [5 x i32] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"s3://\00", align 1
@__const.sha1_init.table = private unnamed_addr constant [20 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\F0\E1\D2\C3", align 16
@.str.3 = private unnamed_addr constant [18 x i8] c".s3.amazonaws.com\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%a, %d %b %Y %H:%M:%S +0000\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"GET\0A\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Authorization: AWS \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ku->p_buf == ku->l_buf\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"corpus_src/klib/kurl.c\00", align 1
@__PRETTY_FUNCTION__.fill_buffer = private unnamed_addr constant [26 x i8] c"int fill_buffer(kurl_t *)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"/.awssecret\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @kurl_init() local_unnamed_addr #0 {
  %1 = tail call i32 @curl_global_init(i64 noundef 3) #27
  ret i32 %1
}

declare i32 @curl_global_init(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @kurl_destroy() local_unnamed_addr #0 {
  tail call void @curl_global_cleanup() #27
  ret void
}

declare void @curl_global_cleanup() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kurl_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = tail call i32 @curl_multi_remove_handle(ptr noundef %8, ptr noundef %10) #27
  %12 = load ptr, ptr %9, align 8, !tbaa !13
  tail call void @curl_easy_cleanup(ptr noundef %12) #27
  %13 = load ptr, ptr %0, align 8, !tbaa !12
  %14 = tail call i32 @curl_multi_cleanup(ptr noundef %13) #27
  %15 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  tail call void @curl_slist_free_all(ptr noundef nonnull %16) #27
  br label %21

19:                                               ; preds = %3
  %20 = tail call i32 @close(i32 noundef %5) #27
  br label %21

21:                                               ; preds = %7, %18, %19
  %22 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  tail call void @free(ptr noundef %23) #27
  tail call void @free(ptr noundef nonnull %0) #27
  br label %24

24:                                               ; preds = %1, %21
  ret i32 0
}

declare i32 @curl_multi_remove_handle(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @curl_easy_cleanup(ptr noundef) local_unnamed_addr #1

declare i32 @curl_multi_cleanup(ptr noundef) local_unnamed_addr #1

declare void @curl_slist_free_all(ptr noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kurl_open(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.s3aux_t, align 8
  %4 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str) #28
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1, !tbaa !16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %4, %0
  br i1 %10, label %34, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @__ctype_b_loc() #29
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  br label %17

14:                                               ; preds = %17
  %15 = getelementptr inbounds i8, ptr %18, i64 1
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %34, label %17, !llvm.loop !18

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %0, %11 ], [ %15, %14 ]
  %19 = load i8, ptr %18, align 1, !tbaa !16
  %20 = sext i8 %19 to i64
  %21 = getelementptr inbounds i16, ptr %13, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !20
  %23 = and i16 %22, 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %14

25:                                               ; preds = %17, %6, %2
  %26 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #27
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %117, label %28

28:                                               ; preds = %25
  %29 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30
  %30 = getelementptr inbounds %struct.kurl_t, ptr %29, i64 0, i32 4
  store i32 %26, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.kurl_t, ptr %29, i64 0, i32 5
  store i32 32768, ptr %31, align 4, !tbaa !22
  %32 = tail call noalias dereferenceable_or_null(32768) ptr @calloc(i64 noundef 32768, i64 noundef 1) #30
  %33 = getelementptr inbounds %struct.kurl_t, ptr %29, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !15
  br label %110

34:                                               ; preds = %14, %9
  %35 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30
  %36 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 4
  store i32 -1, ptr %36, align 8, !tbaa !5
  %37 = tail call ptr @curl_multi_init() #27
  store ptr %37, ptr %35, align 8, !tbaa !12
  %38 = tail call ptr @curl_easy_init() #27
  %39 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !13
  %40 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1, i64 5)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  %43 = icmp eq ptr %1, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %1, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.kurl_opt_t, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct.kurl_opt_t, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  br label %50

50:                                               ; preds = %42, %44
  %51 = phi ptr [ %47, %44 ], [ null, %42 ]
  %52 = phi ptr [ %45, %44 ], [ null, %42 ]
  %53 = phi ptr [ %49, %44 ], [ null, %42 ]
  call void @s3_parse(ptr dead_on_unwind nonnull writable sret(%struct.s3aux_t) align 8 %3, ptr noundef %0, ptr noundef %52, ptr noundef %51, ptr noundef %53)
  %54 = load ptr, ptr %3, align 8, !tbaa.struct !27
  %55 = getelementptr inbounds i8, ptr %3, i64 8
  %56 = load ptr, ptr %55, align 8, !tbaa.struct !28
  %57 = getelementptr inbounds i8, ptr %3, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa.struct !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  %59 = icmp eq ptr %54, null
  %60 = icmp eq ptr %56, null
  %61 = select i1 %59, i1 true, i1 %60
  %62 = icmp eq ptr %58, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %114, label %64

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = tail call ptr @curl_slist_append(ptr noundef %66, ptr noundef nonnull %56) #27
  store ptr %67, ptr %65, align 8, !tbaa !14
  %68 = tail call ptr @curl_slist_append(ptr noundef %67, ptr noundef nonnull %58) #27
  store ptr %68, ptr %65, align 8, !tbaa !14
  %69 = load ptr, ptr %39, align 8, !tbaa !13
  %70 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %69, i32 noundef 10002, ptr noundef nonnull %54) #27
  %71 = load ptr, ptr %39, align 8, !tbaa !13
  %72 = load ptr, ptr %65, align 8, !tbaa !14
  %73 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %71, i32 noundef 10023, ptr noundef %72) #27
  tail call void @free(ptr noundef nonnull %56) #27
  tail call void @free(ptr noundef nonnull %58) #27
  tail call void @free(ptr noundef nonnull %54) #27
  br label %76

74:                                               ; preds = %34
  %75 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %38, i32 noundef 10002, ptr noundef %0) #27
  br label %76

76:                                               ; preds = %74, %64
  %77 = load ptr, ptr %39, align 8, !tbaa !13
  %78 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %77, i32 noundef 10001, ptr noundef nonnull %35) #27
  %79 = load ptr, ptr %39, align 8, !tbaa !13
  %80 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %79, i32 noundef 41, i64 noundef 0) #27
  %81 = load ptr, ptr %39, align 8, !tbaa !13
  %82 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %81, i32 noundef 99, i64 noundef 1) #27
  %83 = load ptr, ptr %39, align 8, !tbaa !13
  %84 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %83, i32 noundef 20011, ptr noundef nonnull @write_cb) #27
  %85 = load ptr, ptr %39, align 8, !tbaa !13
  %86 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %85, i32 noundef 64, i64 noundef 0) #27
  %87 = load ptr, ptr %39, align 8, !tbaa !13
  %88 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %87, i32 noundef 81, i64 noundef 0) #27
  %89 = load ptr, ptr %39, align 8, !tbaa !13
  %90 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %89, i32 noundef 52, i64 noundef 1) #27
  %91 = load i32, ptr %36, align 8, !tbaa !5
  %92 = icmp sgt i32 %91, -1
  %93 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 5
  store i32 32768, ptr %93, align 4, !tbaa !22
  %94 = tail call noalias dereferenceable_or_null(32768) ptr @calloc(i64 noundef 32768, i64 noundef 1) #30
  %95 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !15
  br i1 %92, label %110, label %96

96:                                               ; preds = %76
  %97 = load ptr, ptr %35, align 8, !tbaa !12
  %98 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !13
  %100 = tail call i32 @curl_multi_remove_handle(ptr noundef %97, ptr noundef %99) #27
  %101 = load ptr, ptr %98, align 8, !tbaa !13
  %102 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 3
  %103 = load i64, ptr %102, align 8, !tbaa !30
  %104 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %101, i32 noundef 21, i64 noundef %103) #27
  %105 = load ptr, ptr %35, align 8, !tbaa !12
  %106 = load ptr, ptr %98, align 8, !tbaa !13
  %107 = tail call i32 @curl_multi_add_handle(ptr noundef %105, ptr noundef %106) #27
  %108 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 6
  store i32 0, ptr %108, align 8, !tbaa !31
  %109 = getelementptr inbounds %struct.kurl_t, ptr %35, i64 0, i32 7
  store i32 0, ptr %109, align 4, !tbaa !32
  br label %110

110:                                              ; preds = %76, %28, %96
  %111 = phi ptr [ %35, %96 ], [ %29, %28 ], [ %35, %76 ]
  %112 = tail call fastcc i32 @fill_buffer(ptr noundef nonnull %111)
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110, %50
  %115 = phi ptr [ %35, %50 ], [ %111, %110 ]
  %116 = tail call i32 @kurl_close(ptr noundef nonnull %115)
  br label %117

117:                                              ; preds = %114, %110, %25
  %118 = phi ptr [ null, %25 ], [ %111, %110 ], [ null, %114 ]
  ret ptr %118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare ptr @curl_multi_init() local_unnamed_addr #1

declare ptr @curl_easy_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @s3_parse(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.s3aux_t) align 8 %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.sha1nfo, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [29 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.1, i64 5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %470

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %1, i64 5
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi ptr [ %15, %14 ], [ %20, %19 ]
  %18 = load i8, ptr %17, align 1, !tbaa !16
  switch i8 %18, label %19 [
    i8 0, label %470
    i8 47, label %21
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  br label %16, !llvm.loop !33

21:                                               ; preds = %16
  %22 = icmp eq ptr %2, null
  %23 = icmp eq ptr %3, null
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #27
  %26 = icmp eq ptr %4, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = tail call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.14)
  br label %40

29:                                               ; preds = %25
  %30 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #28
  %34 = add i64 %33, 12
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #31
  %36 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %30) #27
  %37 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %35)
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %38, ptr noundef nonnull align 1 dereferenceable(12) @.str.13, i64 12, i1 false)
  %39 = tail call noalias ptr @fopen(ptr noundef %35, ptr noundef nonnull @.str.14)
  tail call void @free(ptr noundef nonnull %35) #27
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi ptr [ %28, %27 ], [ %39, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 127, ptr noundef nonnull %41)
  %45 = tail call i32 @fclose(ptr noundef nonnull %41)
  %46 = shl i64 %44, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !16
  br label %49

49:                                               ; preds = %52, %43
  %50 = phi ptr [ %7, %43 ], [ %53, %52 ]
  %51 = load i8, ptr %50, align 1, !tbaa !16
  switch i8 %51, label %52 [
    i8 0, label %59
    i8 10, label %54
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  br label %49, !llvm.loop !34

54:                                               ; preds = %49
  store i8 0, ptr %50, align 1, !tbaa !16
  br label %55

55:                                               ; preds = %55, %54
  %56 = phi ptr [ %50, %54 ], [ %57, %55 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !16
  switch i8 %58, label %55 [
    i8 0, label %60
    i8 10, label %60
  ], !llvm.loop !35

59:                                               ; preds = %49, %40, %29
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #27
  br label %470

60:                                               ; preds = %55, %55
  store i8 0, ptr %57, align 1, !tbaa !16
  %61 = ptrtoint ptr %57 to i64
  %62 = ptrtoint ptr %7 to i64
  %63 = sub i64 %61, %62
  %64 = shl i64 %63, 32
  %65 = add i64 %64, 4294967296
  %66 = ashr exact i64 %65, 32
  %67 = call noalias ptr @malloc(i64 noundef %66) #31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr nonnull align 16 %7, i64 %66, i1 false)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #27
  %68 = icmp eq ptr %67, null
  br i1 %68, label %470, label %69

69:                                               ; preds = %60
  %70 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #28
  %71 = getelementptr inbounds i8, ptr %67, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  br label %73

73:                                               ; preds = %21, %69
  %74 = phi ptr [ %72, %69 ], [ %3, %21 ]
  %75 = phi ptr [ %67, %69 ], [ %2, %21 ]
  %76 = call dereferenceable_or_null(16) ptr @malloc(i64 16)
  store i64 3400000511170344040, ptr %76, align 1
  %77 = getelementptr inbounds i8, ptr %76, i64 8
  store i8 0, ptr %77, align 1, !tbaa !16
  %78 = ptrtoint ptr %17 to i64
  %79 = ptrtoint ptr %15 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = add i32 %81, 9
  %83 = icmp slt i32 %82, 16
  br i1 %83, label %98, label %84

84:                                               ; preds = %73
  %85 = lshr i32 %82, 1
  %86 = or i32 %85, %82
  %87 = lshr i32 %86, 2
  %88 = or i32 %87, %86
  %89 = lshr i32 %88, 4
  %90 = or i32 %89, %88
  %91 = lshr i32 %90, 8
  %92 = or i32 %91, %90
  %93 = lshr i32 %92, 16
  %94 = or i32 %93, %92
  %95 = add nuw nsw i32 %94, 1
  %96 = zext nneg i32 %95 to i64
  %97 = call ptr @realloc(ptr noundef nonnull %76, i64 noundef %96) #32
  br label %98

98:                                               ; preds = %73, %84
  %99 = phi i32 [ %95, %84 ], [ 16, %73 ]
  %100 = phi ptr [ %97, %84 ], [ %76, %73 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  %102 = shl i64 %80, 32
  %103 = ashr exact i64 %102, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %101, ptr nonnull align 1 %15, i64 %103, i1 false)
  %104 = add i64 %102, 34359738368
  %105 = ashr exact i64 %104, 32
  %106 = getelementptr inbounds i8, ptr %100, i64 %105
  store i8 0, ptr %106, align 1, !tbaa !16
  %107 = add i32 %81, 26
  %108 = icmp slt i32 %107, %99
  br i1 %108, label %123, label %109

109:                                              ; preds = %98
  %110 = lshr i32 %107, 1
  %111 = or i32 %110, %107
  %112 = lshr i32 %111, 2
  %113 = or i32 %112, %111
  %114 = lshr i32 %113, 4
  %115 = or i32 %114, %113
  %116 = lshr i32 %115, 8
  %117 = or i32 %116, %115
  %118 = lshr i32 %117, 16
  %119 = or i32 %118, %117
  %120 = add nuw nsw i32 %119, 1
  %121 = zext nneg i32 %120 to i64
  %122 = call ptr @realloc(ptr noundef nonnull %100, i64 noundef %121) #32
  br label %123

123:                                              ; preds = %98, %109
  %124 = phi i32 [ %120, %109 ], [ %99, %98 ]
  %125 = phi ptr [ %122, %109 ], [ %100, %98 ]
  %126 = getelementptr inbounds i8, ptr %125, i64 %105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %126, ptr noundef nonnull align 1 dereferenceable(17) @.str.3, i64 17, i1 false)
  %127 = add nsw i32 %81, 25
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 %128
  store i8 0, ptr %129, align 1, !tbaa !16
  %130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #28
  %131 = trunc i64 %130 to i32
  %132 = add i32 %127, %131
  %133 = add i32 %132, 1
  %134 = icmp slt i32 %133, %124
  br i1 %134, label %149, label %135

135:                                              ; preds = %123
  %136 = lshr i32 %133, 1
  %137 = or i32 %136, %133
  %138 = lshr i32 %137, 2
  %139 = or i32 %138, %137
  %140 = lshr i32 %139, 4
  %141 = or i32 %140, %139
  %142 = lshr i32 %141, 8
  %143 = or i32 %142, %141
  %144 = lshr i32 %143, 16
  %145 = or i32 %144, %143
  %146 = add nuw nsw i32 %145, 1
  %147 = zext nneg i32 %146 to i64
  %148 = call ptr @realloc(ptr noundef nonnull %125, i64 noundef %147) #32
  br label %149

149:                                              ; preds = %123, %135
  %150 = phi ptr [ %148, %135 ], [ %125, %123 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 %128
  %152 = shl i64 %130, 32
  %153 = ashr exact i64 %152, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr nonnull align 1 %17, i64 %153, i1 false)
  %154 = sext i32 %132 to i64
  %155 = getelementptr inbounds i8, ptr %150, i64 %154
  store i8 0, ptr %155, align 1, !tbaa !16
  store ptr %150, ptr %0, align 8, !tbaa !23
  %156 = call i64 @time(ptr noundef null) #27
  store i64 %156, ptr %10, align 8, !tbaa !36
  %157 = call ptr @gmtime_r(ptr noundef nonnull %10, ptr noundef nonnull %11) #27
  %158 = call i64 @strftime(ptr noundef nonnull %8, i64 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %157) #27
  %159 = call dereferenceable_or_null(8) ptr @malloc(i64 8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %159, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %160 = getelementptr inbounds i8, ptr %159, i64 6
  store i8 0, ptr %160, align 1, !tbaa !16
  %161 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #28
  %162 = trunc i64 %161 to i32
  %163 = add i32 %162, 7
  %164 = icmp slt i32 %163, 8
  br i1 %164, label %179, label %165

165:                                              ; preds = %149
  %166 = lshr i32 %163, 1
  %167 = or i32 %166, %163
  %168 = lshr i32 %167, 2
  %169 = or i32 %168, %167
  %170 = lshr i32 %169, 4
  %171 = or i32 %170, %169
  %172 = lshr i32 %171, 8
  %173 = or i32 %172, %171
  %174 = lshr i32 %173, 16
  %175 = or i32 %174, %173
  %176 = add nuw nsw i32 %175, 1
  %177 = zext nneg i32 %176 to i64
  %178 = call ptr @realloc(ptr noundef nonnull %159, i64 noundef %177) #32
  br label %179

179:                                              ; preds = %149, %165
  %180 = phi ptr [ %178, %165 ], [ %159, %149 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 6
  %182 = shl i64 %161, 32
  %183 = ashr exact i64 %182, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %181, ptr nonnull align 16 %8, i64 %183, i1 false)
  %184 = add i64 %182, 25769803776
  %185 = ashr exact i64 %184, 32
  %186 = getelementptr inbounds i8, ptr %180, i64 %185
  store i8 0, ptr %186, align 1, !tbaa !16
  %187 = getelementptr inbounds %struct.s3aux_t, ptr %0, i64 0, i32 1
  store ptr %180, ptr %187, align 8, !tbaa !25
  %188 = call dereferenceable_or_null(8) ptr @malloc(i64 8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %188, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %189 = getelementptr inbounds i8, ptr %188, i64 6
  store i8 0, ptr %189, align 1, !tbaa !16
  %190 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #28
  %191 = trunc i64 %190 to i32
  %192 = add i32 %191, 7
  %193 = icmp slt i32 %192, 8
  br i1 %193, label %208, label %194

194:                                              ; preds = %179
  %195 = lshr i32 %192, 1
  %196 = or i32 %195, %192
  %197 = lshr i32 %196, 2
  %198 = or i32 %197, %196
  %199 = lshr i32 %198, 4
  %200 = or i32 %199, %198
  %201 = lshr i32 %200, 8
  %202 = or i32 %201, %200
  %203 = lshr i32 %202, 16
  %204 = or i32 %203, %202
  %205 = add nuw nsw i32 %204, 1
  %206 = zext nneg i32 %205 to i64
  %207 = call ptr @realloc(ptr noundef nonnull %188, i64 noundef %206) #32
  br label %208

208:                                              ; preds = %179, %194
  %209 = phi i32 [ %205, %194 ], [ 8, %179 ]
  %210 = phi ptr [ %207, %194 ], [ %188, %179 ]
  %211 = getelementptr inbounds i8, ptr %210, i64 6
  %212 = shl i64 %190, 32
  %213 = ashr exact i64 %212, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %211, ptr nonnull align 16 %8, i64 %213, i1 false)
  %214 = add i64 %212, 25769803776
  %215 = ashr exact i64 %214, 32
  %216 = getelementptr inbounds i8, ptr %210, i64 %215
  store i8 0, ptr %216, align 1, !tbaa !16
  %217 = add i32 %191, 8
  %218 = icmp slt i32 %217, %209
  br i1 %218, label %233, label %219

219:                                              ; preds = %208
  %220 = lshr i32 %217, 1
  %221 = or i32 %220, %217
  %222 = lshr i32 %221, 2
  %223 = or i32 %222, %221
  %224 = lshr i32 %223, 4
  %225 = or i32 %224, %223
  %226 = lshr i32 %225, 8
  %227 = or i32 %226, %225
  %228 = lshr i32 %227, 16
  %229 = or i32 %228, %227
  %230 = add nuw nsw i32 %229, 1
  %231 = zext nneg i32 %230 to i64
  %232 = call ptr @realloc(ptr noundef nonnull %210, i64 noundef %231) #32
  br label %233

233:                                              ; preds = %208, %219
  %234 = phi i32 [ %230, %219 ], [ %209, %208 ]
  %235 = phi ptr [ %232, %219 ], [ %210, %208 ]
  %236 = getelementptr inbounds i8, ptr %235, i64 %215
  store i8 10, ptr %236, align 1
  %237 = sext i32 %192 to i64
  %238 = getelementptr inbounds i8, ptr %235, i64 %237
  store i8 0, ptr %238, align 1, !tbaa !16
  %239 = getelementptr inbounds i8, ptr %1, i64 4
  %240 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %239) #28
  %241 = trunc i64 %240 to i32
  %242 = add i32 %192, %241
  %243 = add i32 %242, 1
  %244 = icmp slt i32 %243, %234
  br i1 %244, label %259, label %245

245:                                              ; preds = %233
  %246 = lshr i32 %243, 1
  %247 = or i32 %246, %243
  %248 = lshr i32 %247, 2
  %249 = or i32 %248, %247
  %250 = lshr i32 %249, 4
  %251 = or i32 %250, %249
  %252 = lshr i32 %251, 8
  %253 = or i32 %252, %251
  %254 = lshr i32 %253, 16
  %255 = or i32 %254, %253
  %256 = add nuw nsw i32 %255, 1
  %257 = zext nneg i32 %256 to i64
  %258 = call ptr @realloc(ptr noundef nonnull %235, i64 noundef %257) #32
  br label %259

259:                                              ; preds = %233, %245
  %260 = phi i32 [ %256, %245 ], [ %234, %233 ]
  %261 = phi ptr [ %258, %245 ], [ %235, %233 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 %237
  %263 = shl i64 %240, 32
  %264 = ashr exact i64 %263, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %262, ptr nonnull align 1 %239, i64 %264, i1 false)
  %265 = sext i32 %242 to i64
  %266 = getelementptr inbounds i8, ptr %261, i64 %265
  store i8 0, ptr %266, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %6) #27
  %267 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #28
  %268 = trunc i64 %267 to i32
  %269 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %269, i8 0, i64 64, i1 false)
  %270 = icmp sgt i32 %268, 64
  br i1 %270, label %271, label %286

271:                                              ; preds = %259
  %272 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %272, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %273 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 3
  store i32 0, ptr %273, align 4, !tbaa !37
  %274 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 1
  store i8 0, ptr %274, align 4, !tbaa !39
  br label %275

275:                                              ; preds = %275, %271
  %276 = phi i32 [ %268, %271 ], [ %278, %275 ]
  %277 = phi ptr [ %74, %271 ], [ %279, %275 ]
  %278 = add nsw i32 %276, -1
  %279 = getelementptr inbounds i8, ptr %277, i64 1
  %280 = load i8, ptr %277, align 1, !tbaa !16
  %281 = load i32, ptr %273, align 4, !tbaa !37
  %282 = add i32 %281, 1
  store i32 %282, ptr %273, align 4, !tbaa !37
  call fastcc void @sha1_add(ptr noundef nonnull %6, i8 noundef zeroext %280)
  %283 = icmp eq i32 %278, 0
  br i1 %283, label %284, label %275, !llvm.loop !40

284:                                              ; preds = %275
  %285 = call ptr @sha1_final(ptr noundef nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %269, ptr noundef nonnull align 1 dereferenceable(20) %285, i64 20, i1 false)
  br label %289

286:                                              ; preds = %259
  %287 = shl i64 %267, 32
  %288 = ashr exact i64 %287, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %269, ptr nonnull align 1 %74, i64 %288, i1 false)
  br label %289

289:                                              ; preds = %286, %284
  %290 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %290, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %291 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 3
  store i32 0, ptr %291, align 4, !tbaa !37
  %292 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 1
  store i8 0, ptr %292, align 4, !tbaa !39
  br label %293

293:                                              ; preds = %293, %289
  %294 = phi i64 [ 0, %289 ], [ %300, %293 ]
  %295 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 4, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !16
  %297 = xor i8 %296, 54
  %298 = load i32, ptr %291, align 4, !tbaa !37
  %299 = add i32 %298, 1
  store i32 %299, ptr %291, align 4, !tbaa !37
  call fastcc void @sha1_add(ptr noundef nonnull %6, i8 noundef zeroext %297)
  %300 = add nuw nsw i64 %294, 1
  %301 = icmp eq i64 %300, 64
  br i1 %301, label %302, label %293, !llvm.loop !41

302:                                              ; preds = %293
  %303 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %261) #28
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %314, label %305

305:                                              ; preds = %302, %305
  %306 = phi i64 [ %308, %305 ], [ %303, %302 ]
  %307 = phi ptr [ %309, %305 ], [ %261, %302 ]
  %308 = add i64 %306, -1
  %309 = getelementptr inbounds i8, ptr %307, i64 1
  %310 = load i8, ptr %307, align 1, !tbaa !16
  %311 = load i32, ptr %291, align 4, !tbaa !37
  %312 = add i32 %311, 1
  store i32 %312, ptr %291, align 4, !tbaa !37
  call fastcc void @sha1_add(ptr noundef nonnull %6, i8 noundef zeroext %310)
  %313 = icmp eq i64 %308, 0
  br i1 %313, label %314, label %305, !llvm.loop !42

314:                                              ; preds = %305, %302
  %315 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 5
  %316 = call ptr @sha1_final(ptr noundef nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %315, ptr noundef nonnull align 1 dereferenceable(20) %316, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %290, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  store i32 0, ptr %291, align 4, !tbaa !37
  store i8 0, ptr %292, align 4, !tbaa !39
  br label %317

317:                                              ; preds = %317, %314
  %318 = phi i64 [ 0, %314 ], [ %324, %317 ]
  %319 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 4, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !16
  %321 = xor i8 %320, 92
  %322 = load i32, ptr %291, align 4, !tbaa !37
  %323 = add i32 %322, 1
  store i32 %323, ptr %291, align 4, !tbaa !37
  call fastcc void @sha1_add(ptr noundef nonnull %6, i8 noundef zeroext %321)
  %324 = add nuw nsw i64 %318, 1
  %325 = icmp eq i64 %324, 64
  br i1 %325, label %326, label %317, !llvm.loop !43

326:                                              ; preds = %317, %326
  %327 = phi i64 [ %332, %326 ], [ 0, %317 ]
  %328 = getelementptr inbounds %struct.sha1nfo, ptr %6, i64 0, i32 5, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !16
  %330 = load i32, ptr %291, align 4, !tbaa !37
  %331 = add i32 %330, 1
  store i32 %331, ptr %291, align 4, !tbaa !37
  call fastcc void @sha1_add(ptr noundef nonnull %6, i8 noundef zeroext %329)
  %332 = add nuw nsw i64 %327, 1
  %333 = icmp eq i64 %332, 20
  br i1 %333, label %334, label %326, !llvm.loop !44

334:                                              ; preds = %326
  %335 = call noundef nonnull ptr @sha1_final(ptr noundef nonnull %6)
  %336 = getelementptr i8, ptr %335, i64 1
  br label %337

337:                                              ; preds = %378, %334
  %338 = phi i64 [ 0, %334 ], [ %381, %378 ]
  %339 = phi i32 [ 0, %334 ], [ %380, %378 ]
  %340 = phi i32 [ 8, %334 ], [ %379, %378 ]
  %341 = icmp slt i32 %340, 7
  br i1 %341, label %342, label %366

342:                                              ; preds = %337
  %343 = icmp eq i32 %339, 19
  br i1 %343, label %349, label %344

344:                                              ; preds = %342
  %345 = sext i32 %339 to i64
  %346 = getelementptr i8, ptr %336, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !16
  %348 = zext i8 %347 to i32
  br label %349

349:                                              ; preds = %344, %342
  %350 = phi i64 [ %345, %344 ], [ 19, %342 ]
  %351 = phi i32 [ %348, %344 ], [ 0, %342 ]
  %352 = getelementptr inbounds i8, ptr %335, i64 %350
  %353 = load i8, ptr %352, align 1, !tbaa !16
  %354 = zext i8 %353 to i32
  %355 = sub nuw nsw i32 6, %340
  %356 = shl nuw nsw i32 %354, %355
  %357 = and i32 %356, 63
  %358 = add nuw nsw i32 %340, 2
  %359 = lshr i32 %351, %358
  %360 = or i32 %357, %359
  %361 = zext nneg i32 %360 to i64
  %362 = getelementptr inbounds i8, ptr @.str.15, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !16
  %364 = getelementptr inbounds i8, ptr %9, i64 %338
  store i8 %363, ptr %364, align 1, !tbaa !16
  %365 = add nsw i32 %339, 1
  br label %378

366:                                              ; preds = %337
  %367 = sext i32 %339 to i64
  %368 = getelementptr inbounds i8, ptr %335, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !16
  %370 = zext i8 %369 to i32
  %371 = add nsw i32 %340, -6
  %372 = lshr i32 %370, %371
  %373 = and i32 %372, 63
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds i8, ptr @.str.15, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !16
  %377 = getelementptr inbounds i8, ptr %9, i64 %338
  store i8 %376, ptr %377, align 1, !tbaa !16
  br label %378

378:                                              ; preds = %366, %349
  %379 = phi i32 [ %358, %349 ], [ %371, %366 ]
  %380 = phi i32 [ %365, %349 ], [ %339, %366 ]
  %381 = add nuw i64 %338, 1
  %382 = icmp slt i32 %380, 20
  br i1 %382, label %337, label %383, !llvm.loop !45

383:                                              ; preds = %378
  %384 = and i64 %381, 4294967295
  %385 = getelementptr inbounds i8, ptr %9, i64 %384
  store i8 61, ptr %385, align 1, !tbaa !16
  %386 = getelementptr i8, ptr %385, i64 1
  store i8 0, ptr %386, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %6) #27
  %387 = icmp sgt i32 %260, 20
  br i1 %387, label %390, label %388

388:                                              ; preds = %383
  %389 = call dereferenceable_or_null(32) ptr @realloc(ptr noundef %261, i64 noundef 32) #32
  br label %390

390:                                              ; preds = %383, %388
  %391 = phi i32 [ 32, %388 ], [ %260, %383 ]
  %392 = phi ptr [ %389, %388 ], [ %261, %383 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %392, ptr noundef nonnull align 1 dereferenceable(19) @.str.8, i64 19, i1 false)
  %393 = getelementptr inbounds i8, ptr %392, i64 19
  store i8 0, ptr %393, align 1, !tbaa !16
  %394 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #28
  %395 = trunc i64 %394 to i32
  %396 = add i32 %395, 20
  %397 = icmp slt i32 %396, %391
  br i1 %397, label %412, label %398

398:                                              ; preds = %390
  %399 = lshr i32 %396, 1
  %400 = or i32 %399, %396
  %401 = lshr i32 %400, 2
  %402 = or i32 %401, %400
  %403 = lshr i32 %402, 4
  %404 = or i32 %403, %402
  %405 = lshr i32 %404, 8
  %406 = or i32 %405, %404
  %407 = lshr i32 %406, 16
  %408 = or i32 %407, %406
  %409 = add nuw nsw i32 %408, 1
  %410 = zext nneg i32 %409 to i64
  %411 = call ptr @realloc(ptr noundef nonnull %392, i64 noundef %410) #32
  br label %412

412:                                              ; preds = %390, %398
  %413 = phi i32 [ %409, %398 ], [ %391, %390 ]
  %414 = phi ptr [ %411, %398 ], [ %392, %390 ]
  %415 = getelementptr inbounds i8, ptr %414, i64 19
  %416 = shl i64 %394, 32
  %417 = ashr exact i64 %416, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %415, ptr align 1 %75, i64 %417, i1 false)
  %418 = add i64 %416, 81604378624
  %419 = ashr exact i64 %418, 32
  %420 = getelementptr inbounds i8, ptr %414, i64 %419
  store i8 0, ptr %420, align 1, !tbaa !16
  %421 = add i32 %395, 21
  %422 = icmp slt i32 %421, %413
  br i1 %422, label %437, label %423

423:                                              ; preds = %412
  %424 = lshr i32 %421, 1
  %425 = or i32 %424, %421
  %426 = lshr i32 %425, 2
  %427 = or i32 %426, %425
  %428 = lshr i32 %427, 4
  %429 = or i32 %428, %427
  %430 = lshr i32 %429, 8
  %431 = or i32 %430, %429
  %432 = lshr i32 %431, 16
  %433 = or i32 %432, %431
  %434 = add nuw nsw i32 %433, 1
  %435 = zext nneg i32 %434 to i64
  %436 = call ptr @realloc(ptr noundef nonnull %414, i64 noundef %435) #32
  br label %437

437:                                              ; preds = %412, %423
  %438 = phi i32 [ %434, %423 ], [ %413, %412 ]
  %439 = phi ptr [ %436, %423 ], [ %414, %412 ]
  %440 = getelementptr inbounds i8, ptr %439, i64 %419
  store i8 58, ptr %440, align 1
  %441 = sext i32 %396 to i64
  %442 = getelementptr inbounds i8, ptr %439, i64 %441
  store i8 0, ptr %442, align 1, !tbaa !16
  %443 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #28
  %444 = trunc i64 %443 to i32
  %445 = add i32 %396, %444
  %446 = add i32 %445, 1
  %447 = icmp slt i32 %446, %438
  br i1 %447, label %462, label %448

448:                                              ; preds = %437
  %449 = lshr i32 %446, 1
  %450 = or i32 %449, %446
  %451 = lshr i32 %450, 2
  %452 = or i32 %451, %450
  %453 = lshr i32 %452, 4
  %454 = or i32 %453, %452
  %455 = lshr i32 %454, 8
  %456 = or i32 %455, %454
  %457 = lshr i32 %456, 16
  %458 = or i32 %457, %456
  %459 = add nuw nsw i32 %458, 1
  %460 = zext nneg i32 %459 to i64
  %461 = call ptr @realloc(ptr noundef nonnull %439, i64 noundef %460) #32
  br label %462

462:                                              ; preds = %437, %448
  %463 = phi ptr [ %461, %448 ], [ %439, %437 ]
  %464 = getelementptr inbounds i8, ptr %463, i64 %441
  %465 = shl i64 %443, 32
  %466 = ashr exact i64 %465, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr nonnull align 16 %9, i64 %466, i1 false)
  %467 = sext i32 %445 to i64
  %468 = getelementptr inbounds i8, ptr %463, i64 %467
  store i8 0, ptr %468, align 1, !tbaa !16
  %469 = getelementptr inbounds %struct.s3aux_t, ptr %0, i64 0, i32 2
  store ptr %463, ptr %469, align 8, !tbaa !26
  br label %470

470:                                              ; preds = %16, %59, %60, %5, %462
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @curl_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @curl_easy_setopt(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i64 @write_cb(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef %3) #9 {
  %5 = mul i64 %2, %1
  %6 = getelementptr inbounds %struct.kurl_t, ptr %3, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = getelementptr inbounds %struct.kurl_t, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = sext i32 %11 to i64
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.kurl_t, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds i8, ptr %16, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %0, i64 %5, i1 false)
  %18 = load i32, ptr %6, align 8, !tbaa !31
  %19 = trunc i64 %5 to i32
  %20 = add i32 %18, %19
  store i32 %20, ptr %6, align 8, !tbaa !31
  br label %21

21:                                               ; preds = %4, %14
  %22 = phi i64 [ %5, %14 ], [ 268435457, %4 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fill_buffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd_set, align 8
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !32
  %13 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !31
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 81, ptr noundef nonnull @__PRETTY_FUNCTION__.fill_buffer) #33
  unreachable

17:                                               ; preds = %1
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !30
  %21 = add nsw i64 %20, %18
  store i64 %21, ptr %19, align 8, !tbaa !30
  store i32 0, ptr %13, align 8, !tbaa !31
  store i32 0, ptr %11, align 4, !tbaa !32
  %22 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %111

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !5
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !22
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %49
  %36 = phi i32 [ %31, %33 ], [ %48, %49 ]
  %37 = phi i32 [ 0, %33 ], [ %50, %49 ]
  %38 = load i32, ptr %26, align 8, !tbaa !5
  %39 = load ptr, ptr %34, align 8, !tbaa !15
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = sub nsw i32 %36, %37
  %43 = sext i32 %42 to i64
  %44 = tail call i64 @read(i32 noundef %38, ptr noundef %41, i64 noundef %43) #27
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr %13, align 8, !tbaa !31
  %48 = load i32, ptr %30, align 4, !tbaa !22
  br i1 %46, label %52, label %49

49:                                               ; preds = %35
  %50 = add nsw i32 %47, %45
  store i32 %50, ptr %13, align 8, !tbaa !31
  %51 = icmp slt i32 %50, %48
  br i1 %51, label %35, label %52

52:                                               ; preds = %49, %35, %29
  %53 = phi i32 [ %31, %29 ], [ %48, %35 ], [ %48, %49 ]
  %54 = phi i32 [ 0, %29 ], [ %50, %49 ], [ %47, %35 ]
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  store i32 1, ptr %22, align 8, !tbaa !46
  br label %111

57:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #27
  %58 = getelementptr inbounds %struct.timeval, ptr %8, i64 0, i32 1
  %59 = getelementptr inbounds %struct.timespec, ptr %9, i64 0, i32 1
  %60 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 1
  %61 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 5
  br label %62

62:                                               ; preds = %99, %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 -1, ptr %6, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  store i64 -1, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  store i64 10, ptr %8, align 8, !tbaa !48
  store i64 0, ptr %58, align 8, !tbaa !50
  %63 = load ptr, ptr %0, align 8, !tbaa !12
  %64 = call i32 @curl_multi_timeout(ptr noundef %63, ptr noundef nonnull %7) #27
  %65 = load i64, ptr %7, align 8, !tbaa !36
  %66 = freeze i64 %65
  %67 = icmp sgt i64 %66, -1
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = udiv i64 %66, 1000
  store i64 %69, ptr %8, align 8, !tbaa !48
  %70 = icmp ugt i64 %66, 1999
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i64 1, ptr %8, align 8, !tbaa !48
  br label %77

72:                                               ; preds = %68
  %73 = add nsw i64 %66, -1000
  %74 = icmp ult i64 %66, 1000
  %75 = select i1 %74, i64 %66, i64 %73
  %76 = mul nuw nsw i64 %75, 1000
  store i64 %76, ptr %58, align 8, !tbaa !50
  br label %77

77:                                               ; preds = %62, %72, %71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !36
  %78 = load ptr, ptr %0, align 8, !tbaa !12
  %79 = call i32 @curl_multi_fdset(ptr noundef %78, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %80 = load i32, ptr %6, align 4, !tbaa !47
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = add nuw nsw i32 %80, 1
  %84 = call i32 @select(i32 noundef %83, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8) #27
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %104

87:                                               ; preds = %82
  %88 = load i32, ptr %6, align 4, !tbaa !47
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77, %87
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  store i64 0, ptr %9, align 8, !tbaa !51
  store i64 100000000, ptr %59, align 8, !tbaa !53
  %91 = call i32 @nanosleep(ptr noundef nonnull %9, ptr noundef nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #27
  br label %92

92:                                               ; preds = %87, %90
  %93 = load ptr, ptr %60, align 8, !tbaa !13
  %94 = call i32 @curl_easy_pause(ptr noundef %93, i32 noundef 0) #27
  %95 = load ptr, ptr %0, align 8, !tbaa !12
  %96 = call i32 @curl_multi_perform(ptr noundef %95, ptr noundef nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  %97 = load i32, ptr %2, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr %13, align 8, !tbaa !31
  %101 = load i32, ptr %61, align 4, !tbaa !22
  %102 = add nsw i32 %101, -16384
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %62, label %104, !llvm.loop !54

104:                                              ; preds = %92, %99, %86
  %105 = load i32, ptr %13, align 8, !tbaa !31
  %106 = load i32, ptr %61, align 4, !tbaa !22
  %107 = add nsw i32 %106, -16384
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 1, ptr %22, align 8, !tbaa !46
  br label %110

110:                                              ; preds = %109, %104
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  br label %111

111:                                              ; preds = %110, %56, %52, %17
  %112 = phi i32 [ 0, %17 ], [ %54, %52 ], [ %54, %56 ], [ %105, %110 ]
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kurl_dopen(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30
  %3 = getelementptr inbounds %struct.kurl_t, ptr %2, i64 0, i32 4
  store i32 %0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.kurl_t, ptr %2, i64 0, i32 5
  store i32 32768, ptr %4, align 4, !tbaa !22
  %5 = tail call noalias dereferenceable_or_null(32768) ptr @calloc(i64 noundef 32768, i64 noundef 1) #30
  %6 = getelementptr inbounds %struct.kurl_t, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !15
  %7 = icmp sgt i32 %0, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @curl_multi_remove_handle(ptr noundef null, ptr noundef null) #27
  %10 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef null, i32 noundef 21, i64 noundef 0) #27
  %11 = tail call i32 @curl_multi_add_handle(ptr noundef null, ptr noundef null) #27
  br label %12

12:                                               ; preds = %8, %1
  %13 = tail call fastcc i32 @fill_buffer(ptr noundef nonnull %2)
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @kurl_close(ptr noundef nonnull %2)
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi ptr [ null, %15 ], [ %2, %12 ]
  ret ptr %18
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local i32 @kurl_buflen(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 5
  br label %34

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp slt i32 %12, 0
  %14 = icmp ult i32 %1, 32768
  %15 = and i1 %14, %13
  %16 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 5
  br i1 %15, label %34, label %17

17:                                               ; preds = %10
  %18 = add nsw i32 %1, -1
  %19 = lshr i32 %18, 1
  %20 = or i32 %19, %18
  %21 = lshr i32 %20, 2
  %22 = or i32 %21, %20
  %23 = lshr i32 %22, 4
  %24 = or i32 %23, %22
  %25 = lshr i32 %24, 8
  %26 = or i32 %25, %24
  %27 = lshr i32 %26, 16
  %28 = or i32 %27, %26
  %29 = add nuw nsw i32 %28, 1
  store i32 %29, ptr %16, align 4, !tbaa !22
  %30 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = zext nneg i32 %29 to i64
  %33 = tail call ptr @realloc(ptr noundef %31, i64 noundef %32) #32
  store ptr %33, ptr %30, align 8, !tbaa !15
  br label %34

34:                                               ; preds = %10, %17, %8
  %35 = phi ptr [ %9, %8 ], [ %16, %17 ], [ %16, %10 ]
  %36 = load i32, ptr %35, align 4, !tbaa !22
  ret i32 %36
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i64 @kurl_read(ptr nocapture noundef %0, ptr noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %3
  %8 = icmp eq i64 %2, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 7
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 2
  %13 = icmp ne ptr %1, null
  br label %14

14:                                               ; preds = %9, %52
  %15 = phi i64 [ %2, %9 ], [ %49, %52 ]
  %16 = load i32, ptr %4, align 8, !tbaa !31
  %17 = load i32, ptr %10, align 4, !tbaa !32
  %18 = sub nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  br i1 %11, label %29, label %22

22:                                               ; preds = %21
  %23 = sub i64 %2, %15
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = load ptr, ptr %12, align 8, !tbaa !15
  %26 = sext i32 %17 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %27, i64 %15, i1 false)
  %28 = load i32, ptr %10, align 4, !tbaa !32
  br label %29

29:                                               ; preds = %21, %22
  %30 = phi i32 [ %28, %22 ], [ %17, %21 ]
  %31 = trunc i64 %15 to i32
  %32 = add i32 %30, %31
  store i32 %32, ptr %10, align 4, !tbaa !32
  br label %54

33:                                               ; preds = %14
  %34 = icmp sgt i32 %16, %17
  %35 = and i1 %13, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = sub i64 %2, %15
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load ptr, ptr %12, align 8, !tbaa !15
  %40 = sext i32 %17 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %41, i64 %19, i1 false)
  %42 = load i32, ptr %4, align 8, !tbaa !31
  %43 = load i32, ptr %10, align 4, !tbaa !32
  %44 = sub nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %36, %33
  %47 = phi i64 [ %45, %36 ], [ %19, %33 ]
  %48 = phi i32 [ %42, %36 ], [ %16, %33 ]
  %49 = sub nsw i64 %15, %47
  store i32 %48, ptr %10, align 4, !tbaa !32
  %50 = tail call fastcc i32 @fill_buffer(ptr noundef nonnull %0)
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = icmp eq i64 %49, 0
  br i1 %53, label %54, label %14, !llvm.loop !55

54:                                               ; preds = %52, %46, %29, %7
  %55 = phi i64 [ 0, %7 ], [ 0, %29 ], [ %49, %46 ], [ 0, %52 ]
  %56 = sub i64 %2, %55
  br label %57

57:                                               ; preds = %3, %54
  %58 = phi i64 [ %56, %54 ], [ 0, %3 ]
  ret i64 %58
}

; Function Attrs: nounwind uwtable
define dso_local i64 @kurl_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !32
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  switch i32 %2, label %21 [
    i32 0, label %23
    i32 1, label %12
    i32 2, label %15
  ]

12:                                               ; preds = %5
  %13 = add i64 %1, -1
  %14 = add i64 %13, %11
  br label %23

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !5
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i64 @lseek(i32 noundef %17, i64 noundef %1, i32 noundef 2) #27
  br label %23

21:                                               ; preds = %5, %15
  %22 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 9
  store i32 2, ptr %22, align 4, !tbaa !56
  br label %103

23:                                               ; preds = %5, %12, %19
  %24 = phi i64 [ %14, %12 ], [ %20, %19 ], [ %1, %5 ]
  %25 = phi i1 [ false, %12 ], [ true, %19 ], [ false, %5 ]
  %26 = icmp slt i64 %24, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 9
  store i32 3, ptr %28, align 4, !tbaa !56
  br label %103

29:                                               ; preds = %23
  %30 = icmp slt i64 %24, %11
  %31 = select i1 %25, i1 true, i1 %30
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = sub nsw i64 %24, %11
  %34 = load i32, ptr %8, align 4, !tbaa !32
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !31
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = trunc i64 %36 to i32
  store i32 %42, ptr %8, align 4, !tbaa !32
  %43 = load i64, ptr %6, align 8, !tbaa !30
  %44 = shl i64 %36, 32
  %45 = ashr exact i64 %44, 32
  %46 = add nsw i64 %43, %45
  br label %103

47:                                               ; preds = %32
  %48 = icmp sgt i64 %33, 65536
  br i1 %48, label %49, label %73

49:                                               ; preds = %29, %47
  store i64 %24, ptr %6, align 8, !tbaa !30
  %50 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 8
  store i32 0, ptr %50, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !5
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = tail call i64 @lseek(i32 noundef %52, i64 noundef %24, i32 noundef 0) #27
  %56 = load i64, ptr %6, align 8, !tbaa !30
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %69, label %100

58:                                               ; preds = %49
  %59 = load ptr, ptr %0, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = tail call i32 @curl_multi_remove_handle(ptr noundef %59, ptr noundef %61) #27
  %63 = load ptr, ptr %60, align 8, !tbaa !13
  %64 = load i64, ptr %6, align 8, !tbaa !30
  %65 = tail call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %63, i32 noundef 21, i64 noundef %64) #27
  %66 = load ptr, ptr %0, align 8, !tbaa !12
  %67 = load ptr, ptr %60, align 8, !tbaa !13
  %68 = tail call i32 @curl_multi_add_handle(ptr noundef %66, ptr noundef %67) #27
  br label %69

69:                                               ; preds = %58, %54
  %70 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %70, align 8, !tbaa !31
  store i32 0, ptr %8, align 4, !tbaa !32
  %71 = tail call fastcc i32 @fill_buffer(ptr noundef nonnull %0)
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %100, label %103

73:                                               ; preds = %47
  %74 = icmp eq i32 %38, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %73
  %76 = icmp eq i64 %33, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %75, %91
  %78 = phi i64 [ %88, %91 ], [ %33, %75 ]
  %79 = load i32, ptr %37, align 8, !tbaa !31
  %80 = load i32, ptr %8, align 4, !tbaa !32
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = icmp sgt i64 %78, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = trunc i64 %78 to i32
  %86 = add i32 %80, %85
  store i32 %86, ptr %8, align 4, !tbaa !32
  br label %93

87:                                               ; preds = %77
  %88 = sub nsw i64 %78, %82
  store i32 %79, ptr %8, align 4, !tbaa !32
  %89 = tail call fastcc i32 @fill_buffer(ptr noundef nonnull %0)
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = icmp eq i64 %88, 0
  br i1 %92, label %93, label %77, !llvm.loop !55

93:                                               ; preds = %91, %87, %84, %75
  %94 = phi i64 [ 0, %75 ], [ 0, %84 ], [ 0, %91 ], [ %88, %87 ]
  %95 = sub i64 %33, %94
  br label %96

96:                                               ; preds = %73, %93
  %97 = phi i64 [ %95, %93 ], [ 0, %73 ]
  %98 = add nsw i64 %97, %11
  %99 = icmp eq i64 %98, %24
  br i1 %99, label %103, label %100

100:                                              ; preds = %54, %69, %96
  %101 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 9
  store i32 3, ptr %101, align 4, !tbaa !56
  store i32 0, ptr %8, align 4, !tbaa !32
  %102 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  store i32 0, ptr %102, align 8, !tbaa !31
  br label %103

103:                                              ; preds = %96, %100, %69, %3, %41, %27, %21
  %104 = phi i64 [ -1, %27 ], [ %46, %41 ], [ -1, %21 ], [ -1, %3 ], [ -1, %100 ], [ %24, %96 ], [ %24, %69 ]
  ret i64 %104
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @kurl_tell(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !32
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  br label %10

10:                                               ; preds = %1, %3
  %11 = phi i64 [ %9, %3 ], [ -1, %1 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @kurl_eof(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !31
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 1, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @kurl_fileno(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @kurl_error(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kurl_t, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !56
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sha1_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %3 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 4, !tbaa !37
  %4 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha1_write1(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !37
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef %0, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha1_add(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 4, !tbaa !39
  %5 = xor i8 %4, 3
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [64 x i8], ptr %0, i64 0, i64 %6
  store i8 %1, ptr %7, align 1, !tbaa !16
  %8 = load i8, ptr %3, align 4, !tbaa !39
  %9 = add i8 %8, 1
  store i8 %9, ptr %3, align 4, !tbaa !39
  %10 = icmp eq i8 %9, 64
  br i1 %10, label %11, label %94

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2, i32 0, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2, i32 0, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !16
  %18 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2, i32 0, i64 3
  %19 = load i32, ptr %18, align 4, !tbaa !16
  %20 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2, i32 0, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !16
  br label %22

22:                                               ; preds = %78, %11
  %23 = phi i64 [ %86, %78 ], [ 0, %11 ]
  %24 = phi i32 [ %25, %78 ], [ %21, %11 ]
  %25 = phi i32 [ %26, %78 ], [ %19, %11 ]
  %26 = phi i32 [ %85, %78 ], [ %17, %11 ]
  %27 = phi i32 [ %28, %78 ], [ %15, %11 ]
  %28 = phi i32 [ %84, %78 ], [ %13, %11 ]
  %29 = icmp ugt i64 %23, 15
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %23
  %32 = load i32, ptr %31, align 4, !tbaa !16
  br label %54

33:                                               ; preds = %22
  %34 = add nuw i64 %23, 13
  %35 = and i64 %34, 15
  %36 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !16
  %38 = and i64 %23, 15
  %39 = xor i64 %38, 8
  %40 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !16
  %42 = xor i32 %41, %37
  %43 = add nuw i64 %23, 2
  %44 = and i64 %43, 15
  %45 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !16
  %47 = xor i32 %42, %46
  %48 = and i64 %23, 15
  %49 = getelementptr inbounds [16 x i32], ptr %0, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !16
  %51 = xor i32 %47, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 1)
  store i32 %52, ptr %49, align 4, !tbaa !16
  %53 = icmp ult i64 %23, 20
  br i1 %53, label %54, label %60

54:                                               ; preds = %33, %30
  %55 = phi i32 [ %32, %30 ], [ %52, %33 ]
  %56 = xor i32 %26, %25
  %57 = and i32 %56, %27
  %58 = xor i32 %57, %25
  %59 = add i32 %58, 1518500249
  br label %78

60:                                               ; preds = %33
  %61 = icmp ult i64 %23, 40
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = xor i32 %26, %25
  %64 = xor i32 %63, %27
  %65 = add i32 %64, 1859775393
  br label %78

66:                                               ; preds = %60
  %67 = icmp ult i64 %23, 60
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  %69 = and i32 %27, %26
  %70 = or i32 %27, %26
  %71 = and i32 %70, %25
  %72 = or i32 %71, %69
  %73 = add i32 %72, -1894007588
  br label %78

74:                                               ; preds = %66
  %75 = xor i32 %26, %25
  %76 = xor i32 %75, %27
  %77 = add i32 %76, -899497514
  br label %78

78:                                               ; preds = %74, %68, %62, %54
  %79 = phi i32 [ %52, %62 ], [ %52, %74 ], [ %52, %68 ], [ %55, %54 ]
  %80 = phi i32 [ %65, %62 ], [ %77, %74 ], [ %73, %68 ], [ %59, %54 ]
  %81 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 5)
  %82 = add i32 %81, %24
  %83 = add i32 %82, %80
  %84 = add i32 %83, %79
  %85 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 30)
  %86 = add nuw nsw i64 %23, 1
  %87 = icmp eq i64 %86, 80
  br i1 %87, label %88, label %22, !llvm.loop !57

88:                                               ; preds = %78
  %89 = add i32 %84, %13
  store i32 %89, ptr %12, align 4, !tbaa !16
  %90 = add i32 %28, %15
  store i32 %90, ptr %14, align 4, !tbaa !16
  %91 = add i32 %85, %17
  store i32 %91, ptr %16, align 4, !tbaa !16
  %92 = add i32 %26, %19
  store i32 %92, ptr %18, align 4, !tbaa !16
  %93 = add i32 %25, %21
  store i32 %93, ptr %20, align 4, !tbaa !16
  store i8 0, ptr %3, align 4, !tbaa !39
  br label %94

94:                                               ; preds = %88, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %2, %5 ], [ %10, %7 ]
  %9 = phi ptr [ %1, %5 ], [ %11, %7 ]
  %10 = add i64 %8, -1
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = load i8, ptr %9, align 1, !tbaa !16
  %13 = load i32, ptr %6, align 4, !tbaa !37
  %14 = add i32 %13, 1
  store i32 %14, ptr %6, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef %0, i8 noundef zeroext %12)
  %15 = icmp eq i64 %10, 0
  br i1 %15, label %16, label %7, !llvm.loop !42

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef nonnull ptr @sha1_final(ptr noundef %0) local_unnamed_addr #15 {
  tail call fastcc void @sha1_add(ptr noundef %0, i8 noundef zeroext -128)
  %2 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4, !tbaa !39
  %4 = icmp eq i8 %3, 56
  br i1 %4, label %8, label %5

5:                                                ; preds = %1, %5
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext 0)
  %6 = load i8, ptr %2, align 4, !tbaa !39
  %7 = icmp eq i8 %6, 56
  br i1 %7, label %8, label %5, !llvm.loop !58

8:                                                ; preds = %5, %1
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext 0)
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext 0)
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext 0)
  %9 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !37
  %11 = lshr i32 %10, 29
  %12 = trunc i32 %11 to i8
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %12)
  %13 = load i32, ptr %9, align 4, !tbaa !37
  %14 = lshr i32 %13, 21
  %15 = trunc i32 %14 to i8
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %15)
  %16 = load i32, ptr %9, align 4, !tbaa !37
  %17 = lshr i32 %16, 13
  %18 = trunc i32 %17 to i8
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %18)
  %19 = load i32, ptr %9, align 4, !tbaa !37
  %20 = lshr i32 %19, 5
  %21 = trunc i32 %20 to i8
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %21)
  %22 = load i32, ptr %9, align 4, !tbaa !37
  %23 = trunc i32 %22 to i8
  %24 = shl i8 %23, 3
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %24)
  %25 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  %26 = load <4 x i32>, ptr %25, align 4, !tbaa !16
  %27 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %26)
  store <4 x i32> %27, ptr %25, align 4, !tbaa !16
  %28 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2, i32 0, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !16
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  store i32 %30, ptr %28, align 4, !tbaa !16
  ret ptr %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sha1_init_hmac(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %5 = icmp sgt i32 %2, 64
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %8 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !37
  %9 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %2, %6 ], [ %13, %10 ]
  %12 = phi ptr [ %1, %6 ], [ %14, %10 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !16
  %16 = load i32, ptr %8, align 4, !tbaa !37
  %17 = add i32 %16, 1
  store i32 %17, ptr %8, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %15)
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %10, !llvm.loop !40

19:                                               ; preds = %10
  %20 = tail call ptr @sha1_final(ptr noundef nonnull %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) %20, i64 20, i1 false)
  br label %23

21:                                               ; preds = %3
  %22 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr align 1 %1, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %21, %19
  %24 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %24, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %25 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %25, align 4, !tbaa !37
  %26 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  store i8 0, ptr %26, align 4, !tbaa !39
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %34, %27 ]
  %29 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 4, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %31 = xor i8 %30, 54
  %32 = load i32, ptr %25, align 4, !tbaa !37
  %33 = add i32 %32, 1
  store i32 %33, ptr %25, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %31)
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, 64
  br i1 %35, label %36, label %27, !llvm.loop !41

36:                                               ; preds = %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @sha1_final_hmac(ptr noundef %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 5
  %3 = tail call ptr @sha1_final(ptr noundef %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) %3, i64 20, i1 false)
  %4 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 16 dereferenceable(20) @__const.sha1_init.table, i64 20, i1 false)
  %5 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !37
  %6 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 4, !tbaa !39
  br label %7

7:                                                ; preds = %1, %7
  %8 = phi i64 [ 0, %1 ], [ %14, %7 ]
  %9 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 4, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !16
  %11 = xor i8 %10, 92
  %12 = load i32, ptr %5, align 4, !tbaa !37
  %13 = add i32 %12, 1
  store i32 %13, ptr %5, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %11)
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, 64
  br i1 %15, label %16, label %7, !llvm.loop !43

16:                                               ; preds = %7, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.sha1nfo, ptr %0, i64 0, i32 5, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !16
  %20 = load i32, ptr %5, align 4, !tbaa !37
  %21 = add i32 %20, 1
  store i32 %21, ptr %5, align 4, !tbaa !37
  tail call fastcc void @sha1_add(ptr noundef nonnull %0, i8 noundef zeroext %19)
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, 20
  br i1 %23, label %24, label %16, !llvm.loop !44

24:                                               ; preds = %16
  %25 = tail call ptr @sha1_final(ptr noundef nonnull %0)
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare i32 @curl_multi_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @curl_multi_fdset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @curl_easy_pause(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @curl_multi_perform(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @curl_multi_add_handle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #26

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !11, i64 32}
!6 = !{!"kurl_t", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 56}
!15 = !{!6, !7, i64 16}
!16 = !{!8, !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !8, i64 0}
!22 = !{!6, !11, i64 36}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!24, !7, i64 8}
!26 = !{!24, !7, i64 16}
!27 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!28 = !{i64 0, i64 8, !17, i64 8, i64 8, !17}
!29 = !{i64 0, i64 8, !17}
!30 = !{!6, !10, i64 24}
!31 = !{!6, !11, i64 40}
!32 = !{!6, !11, i64 44}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !11, i64 88}
!38 = !{!"sha1nfo", !8, i64 0, !8, i64 64, !8, i64 68, !11, i64 88, !8, i64 92, !8, i64 156}
!39 = !{!38, !8, i64 64}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = !{!6, !11, i64 48}
!47 = !{!11, !11, i64 0}
!48 = !{!49, !10, i64 0}
!49 = !{!"timeval", !10, i64 0, !10, i64 8}
!50 = !{!49, !10, i64 8}
!51 = !{!52, !10, i64 0}
!52 = !{!"timespec", !10, i64 0, !10, i64 8}
!53 = !{!52, !10, i64 8}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!6, !11, i64 52}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
