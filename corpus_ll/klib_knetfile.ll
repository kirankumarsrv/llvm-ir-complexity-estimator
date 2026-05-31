; ModuleID = 'corpus_src/klib/knetfile.c'
source_filename = "corpus_src/klib/knetfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.knetFile_s = type { i32, i32, i64, ptr, ptr, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.linger = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"USER anonymous\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"PASS kftp@\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TYPE I\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RETR %s\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SIZE %s\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%*d %lld\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"[kftp_connect_file] %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"REST %lld\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"GET %s HTTP/1.0\0D\0AHost: %s\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Range: bytes=%lld-\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"[khttp_connect_file] fail to open file (HTTP code: %d).\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"[kftp_open] only mode \22r\22 is supported.\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"[knet_seek] SEEK_END is not supported for HTTP. Offset is unchanged.\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"[knet_seek] %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"can't resolve %s:%s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"PASV\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"[kftp_pasv_connect] kftp_pasv_prep() is not called before hand.\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kftp_connect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = tail call fastcc i32 @socket_connect(ptr noundef %3, ptr noundef %5)
  %7 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !13
  %8 = icmp eq i32 %6, -1
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @kftp_get_response(ptr noundef nonnull %0)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef 1)
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi i32 [ 0, %9 ], [ -1, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @socket_connect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linger, align 8
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 1, ptr %3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.addrinfo, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !16
  %8 = call i32 @getaddrinfo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !15
  %12 = call ptr @gai_strerror(i32 noundef %8) #22
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef %1, ptr noundef %12) #23
  br label %48

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.addrinfo, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !18
  %18 = getelementptr inbounds %struct.addrinfo, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.addrinfo, ptr %15, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = call i32 @socket(i32 noundef %17, i32 noundef %19, i32 noundef %21) #22
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  call void @perror(ptr noundef nonnull @.str.24) #23
  %25 = load ptr, ptr %6, align 8, !tbaa !15
  call void @freeaddrinfo(ptr noundef %25) #22
  br label %48

26:                                               ; preds = %14
  %27 = call i32 @setsockopt(i32 noundef %22, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 4) #22
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  call void @perror(ptr noundef nonnull @.str.25) #23
  %30 = load ptr, ptr %6, align 8, !tbaa !15
  call void @freeaddrinfo(ptr noundef %30) #22
  br label %48

31:                                               ; preds = %26
  %32 = call i32 @setsockopt(i32 noundef %22, i32 noundef 1, i32 noundef 13, ptr noundef nonnull %4, i32 noundef 8) #22
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  call void @perror(ptr noundef nonnull @.str.25) #23
  %35 = load ptr, ptr %6, align 8, !tbaa !15
  call void @freeaddrinfo(ptr noundef %35) #22
  br label %48

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.addrinfo, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  %40 = getelementptr inbounds %struct.addrinfo, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !21
  %42 = call i32 @connect(i32 noundef %22, ptr noundef %39, i32 noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  call void @perror(ptr noundef nonnull @.str.26) #23
  %45 = load ptr, ptr %6, align 8, !tbaa !15
  call void @freeaddrinfo(ptr noundef %45) #22
  br label %48

46:                                               ; preds = %36
  %47 = load ptr, ptr %6, align 8, !tbaa !15
  call void @freeaddrinfo(ptr noundef %47) #22
  br label %48

48:                                               ; preds = %46, %44, %34, %29, %24, %10
  %49 = phi i32 [ -1, %10 ], [ -1, %24 ], [ -1, %29 ], [ -1, %34 ], [ -1, %44 ], [ %22, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @kftp_get_response(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.fd_set, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  store i64 5, ptr %3, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !25
  %9 = srem i32 %7, 64
  %10 = zext nneg i32 %9 to i64
  %11 = shl nuw i64 1, %10
  %12 = sdiv i32 %7, 64
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i64], ptr %2, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = or i64 %15, %11
  store i64 %16, ptr %14, align 8, !tbaa !25
  %17 = add nsw i32 %7, 1
  %18 = call i32 @select(i32 noundef %17, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #22
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @perror(ptr noundef nonnull @.str.27) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #22
  br label %100

21:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #22
  %22 = icmp slt i32 %18, 1
  br i1 %22, label %100, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %6, align 8, !tbaa !13
  %25 = call i64 @read(i32 noundef %24, ptr noundef nonnull %4, i64 noundef 1) #22
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %100, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 8
  %29 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 11
  br label %30

30:                                               ; preds = %27, %80
  %31 = phi i32 [ 0, %27 ], [ %81, %80 ]
  %32 = load i32, ptr %28, align 8, !tbaa !26
  %33 = icmp slt i32 %31, %32
  %34 = load ptr, ptr %29, align 8, !tbaa !27
  br i1 %33, label %41, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %32, 0
  %37 = shl i32 %32, 1
  %38 = select i1 %36, i32 256, i32 %37
  store i32 %38, ptr %28, align 8, !tbaa !26
  %39 = sext i32 %38 to i64
  %40 = call ptr @realloc(ptr noundef %34, i64 noundef %39) #24
  store ptr %40, ptr %29, align 8, !tbaa !27
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi ptr [ %40, %35 ], [ %34, %30 ]
  %43 = load i8, ptr %4, align 1, !tbaa !28
  %44 = add nsw i32 %31, 1
  %45 = sext i32 %31 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  store i8 %43, ptr %46, align 1, !tbaa !28
  %47 = icmp eq i8 %43, 10
  br i1 %47, label %48, label %80

48:                                               ; preds = %41
  %49 = icmp sgt i32 %31, 2
  br i1 %49, label %50, label %80

50:                                               ; preds = %48
  %51 = tail call ptr @__ctype_b_loc() #25
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  %53 = load ptr, ptr %29, align 8, !tbaa !27
  %54 = load i8, ptr %53, align 1, !tbaa !28
  %55 = sext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %52, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !29
  %58 = and i16 %57, 2048
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds i8, ptr %53, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !28
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds i16, ptr %52, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !29
  %66 = and i16 %65, 2048
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds i8, ptr %53, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !28
  %71 = sext i8 %70 to i64
  %72 = getelementptr inbounds i16, ptr %52, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !29
  %74 = and i16 %73, 2048
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds i8, ptr %53, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !28
  %79 = icmp eq i8 %78, 45
  br i1 %79, label %80, label %90

80:                                               ; preds = %48, %50, %60, %68, %76, %41
  %81 = phi i32 [ %44, %41 ], [ 0, %76 ], [ 0, %68 ], [ 0, %60 ], [ 0, %50 ], [ 0, %48 ]
  %82 = load i32, ptr %6, align 8, !tbaa !13
  %83 = call i64 @read(i32 noundef %82, ptr noundef nonnull %4, i64 noundef 1) #22
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %30, !llvm.loop !31

85:                                               ; preds = %80
  %86 = icmp slt i32 %81, 2
  br i1 %86, label %100, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !27
  br label %90

90:                                               ; preds = %76, %87
  %91 = phi ptr [ %89, %87 ], [ %53, %76 ]
  %92 = phi i32 [ %81, %87 ], [ %44, %76 ]
  %93 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 11
  %94 = zext nneg i32 %92 to i64
  %95 = getelementptr i8, ptr %91, i64 %94
  %96 = getelementptr i8, ptr %95, i64 -2
  store i8 0, ptr %96, align 1, !tbaa !28
  %97 = load ptr, ptr %93, align 8, !tbaa !27
  %98 = call i64 @strtol(ptr noundef %97, ptr noundef nonnull %5, i32 noundef 0) #22
  %99 = trunc i64 %98 to i32
  br label %100

100:                                              ; preds = %23, %20, %85, %21, %90
  %101 = phi i32 [ %99, %90 ], [ 0, %21 ], [ -1, %85 ], [ 0, %20 ], [ -1, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal fastcc void @kftp_send_cmd(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  store i64 5, ptr %5, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !25
  %9 = srem i32 %7, 64
  %10 = zext nneg i32 %9 to i64
  %11 = shl nuw i64 1, %10
  %12 = sdiv i32 %7, 64
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = or i64 %15, %11
  store i64 %16, ptr %14, align 8, !tbaa !25
  %17 = add nsw i32 %7, 1
  %18 = call i32 @select(i32 noundef %17, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #22
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @perror(ptr noundef nonnull @.str.27) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  br label %30

21:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  %22 = icmp slt i32 %18, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %6, align 8, !tbaa !13
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %26 = call i64 @write(i32 noundef %24, ptr noundef %1, i64 noundef %25) #22
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call fastcc i32 @kftp_get_response(ptr noundef nonnull %0)
  br label %30

30:                                               ; preds = %20, %28, %23, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kftp_reconnect(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @close(i32 noundef %3) #22
  store i32 -1, ptr %2, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = tail call i32 @close(i32 noundef %9) #22
  store i32 -1, ptr %8, align 4, !tbaa !33
  %11 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = tail call fastcc i32 @socket_connect(ptr noundef %12, ptr noundef %14)
  store i32 %15, ptr %2, align 8, !tbaa !13
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @kftp_get_response(ptr noundef nonnull %0)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef 1)
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ 0, %17 ], [ -1, %7 ]
  ret i32 %20
}

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @kftp_parse_url(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %0, ptr nonnull dereferenceable(7) @.str.3, i64 6)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 6
  br label %7

7:                                                ; preds = %10, %5
  %8 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %9 = load i8, ptr %8, align 1, !tbaa !28
  switch i8 %9, label %10 [
    i8 47, label %12
    i8 0, label %43
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !34

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #27
  store i32 2, ptr %16, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 1
  store i32 -1, ptr %17, align 4, !tbaa !33
  %18 = tail call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.4) #22
  %19 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !12
  %20 = shl i64 %15, 32
  %21 = add i64 %20, -21474836480
  %22 = ashr exact i64 %21, 32
  %23 = tail call noalias ptr @calloc(i64 noundef %22, i64 noundef 1) #27
  %24 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !5
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 99) #26
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 9
  store i32 1, ptr %28, align 4, !tbaa !36
  br label %29

29:                                               ; preds = %27, %12
  %30 = add i64 %20, -25769803776
  %31 = ashr exact i64 %30, 32
  %32 = tail call ptr @strncpy(ptr noundef %23, ptr noundef nonnull %6, i64 noundef %31) #22
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #26
  %34 = add i64 %33, 8
  %35 = tail call noalias ptr @calloc(i64 noundef %34, i64 noundef 1) #27
  %36 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 12
  store ptr %35, ptr %36, align 8, !tbaa !37
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %8) #22
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #26
  %39 = add i64 %38, 8
  %40 = tail call noalias ptr @calloc(i64 noundef %39, i64 noundef 1) #27
  %41 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 13
  store ptr %40, ptr %41, align 8, !tbaa !38
  %42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %8) #22
  br label %43

43:                                               ; preds = %7, %2, %29
  %44 = phi ptr [ %16, %29 ], [ null, %2 ], [ null, %7 ]
  ret ptr %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kftp_connect_file(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [80 x i8], align 16
  %3 = alloca [10 x i8], align 1
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %9 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @close(i32 noundef %10) #22
  %14 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !36
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @kftp_get_response(ptr noundef nonnull %0)
  br label %19

19:                                               ; preds = %12, %17, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i32 noundef 1)
  %20 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi ptr [ %21, %19 ], [ %26, %25 ]
  %24 = load i8, ptr %23, align 1, !tbaa !28
  switch i8 %24, label %25 [
    i8 40, label %27
    i8 0, label %42
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  br label %22, !llvm.loop !39

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  %29 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 1
  %30 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 2
  %31 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 3
  %32 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 4
  %33 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 5
  %34 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %28, ptr noundef nonnull @.str.29, ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33) #22
  %35 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %35, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false)
  %36 = load i32, ptr %32, align 16, !tbaa !14
  %37 = shl i32 %36, 8
  %38 = and i32 %37, 65280
  %39 = load i32, ptr %33, align 4, !tbaa !14
  %40 = add nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 7
  store i32 %40, ptr %41, align 4, !tbaa !40
  br label %42

42:                                               ; preds = %22, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %43 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  call fastcc void @kftp_send_cmd(ptr noundef %0, ptr noundef %44, i32 noundef 1)
  %45 = load ptr, ptr %20, align 8, !tbaa !27
  %46 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %45, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #22
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr @stderr, align 8, !tbaa !15
  %50 = load ptr, ptr %20, align 8, !tbaa !27
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef %50) #23
  br label %115

52:                                               ; preds = %42
  %53 = load i64, ptr %7, align 8, !tbaa !41
  %54 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 15
  store i64 %53, ptr %54, align 8, !tbaa !43
  %55 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !44
  %57 = icmp sgt i64 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.9, i64 noundef %56) #22
  call fastcc void @kftp_send_cmd(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  br label %60

60:                                               ; preds = %58, %52
  %61 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !37
  %63 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  store i64 5, ptr %5, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  store i64 0, ptr %65, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !25
  %66 = srem i32 %64, 64
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = sdiv i32 %64, 64
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !25
  %73 = or i64 %72, %68
  store i64 %73, ptr %71, align 8, !tbaa !25
  %74 = add nsw i32 %64, 1
  %75 = call i32 @select(i32 noundef %74, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #22
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  call void @perror(ptr noundef nonnull @.str.27) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  br label %84

78:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  %79 = icmp slt i32 %75, 1
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %63, align 8, !tbaa !13
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #26
  %83 = call i64 @write(i32 noundef %81, ptr noundef %62, i64 noundef %82) #22
  br label %84

84:                                               ; preds = %77, %78, %80
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #22
  %85 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 7
  %86 = load i32, ptr %85, align 4, !tbaa !40
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load ptr, ptr @stderr, align 8, !tbaa !15
  %90 = call i64 @fwrite(ptr nonnull @.str.30, i64 64, i64 1, ptr %89) #23
  br label %104

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !14
  %94 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 6, i64 1
  %95 = load i32, ptr %94, align 4, !tbaa !14
  %96 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 6, i64 2
  %97 = load i32, ptr %96, align 4, !tbaa !14
  %98 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 6, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !14
  %100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99) #22
  %101 = load i32, ptr %85, align 4, !tbaa !40
  %102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %101) #22
  %103 = call fastcc i32 @socket_connect(ptr noundef nonnull %2, ptr noundef nonnull %3)
  store i32 %103, ptr %9, align 4, !tbaa !33
  br label %104

104:                                              ; preds = %88, %91
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #22
  %105 = call fastcc i32 @kftp_get_response(ptr noundef nonnull %0)
  %106 = icmp eq i32 %105, 150
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @stderr, align 8, !tbaa !15
  %109 = load ptr, ptr %20, align 8, !tbaa !27
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.8, ptr noundef %109) #23
  %111 = load i32, ptr %9, align 4, !tbaa !33
  %112 = call i32 @close(i32 noundef %111) #22
  store i32 -1, ptr %9, align 4, !tbaa !33
  br label %115

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %114, align 8, !tbaa !45
  br label %115

115:                                              ; preds = %113, %107, %48
  %116 = phi i32 [ -1, %48 ], [ -1, %107 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret i32 %116
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @khttp_parse_url(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #2 {
  %3 = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %0, ptr nonnull dereferenceable(8) @.str.10, i64 7)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %75

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 7
  br label %7

7:                                                ; preds = %10, %5
  %8 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %9 = load i8, ptr %8, align 1, !tbaa !28
  switch i8 %9, label %10 [
    i8 0, label %12
    i8 47, label %12
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !46

12:                                               ; preds = %7, %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #27
  %17 = shl i64 %15, 32
  %18 = add i64 %17, -25769803776
  %19 = ashr exact i64 %18, 32
  %20 = tail call noalias ptr @calloc(i64 noundef %19, i64 noundef 1) #27
  %21 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 17
  store ptr %20, ptr %21, align 8, !tbaa !47
  %22 = add i64 %17, -30064771072
  %23 = ashr exact i64 %22, 32
  %24 = tail call ptr @strncpy(ptr noundef %20, ptr noundef nonnull %6, i64 noundef %23) #22
  %25 = getelementptr inbounds i8, ptr %20, i64 %23
  store i8 0, ptr %25, align 1, !tbaa !28
  br label %26

26:                                               ; preds = %29, %12
  %27 = phi ptr [ %20, %12 ], [ %30, %29 ]
  %28 = load i8, ptr %27, align 1, !tbaa !28
  switch i8 %28, label %29 [
    i8 58, label %31
    i8 0, label %33
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %27, i64 1
  br label %26, !llvm.loop !48

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 0, ptr %27, align 1, !tbaa !28
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %32, %31 ], [ %27, %26 ]
  %35 = tail call ptr @getenv(ptr noundef nonnull @.str.11) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = tail call noalias ptr @strdup(ptr noundef %20) #22
  %39 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 3
  store ptr %38, ptr %39, align 8, !tbaa !5
  %40 = load i8, ptr %34, align 1, !tbaa !28
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, ptr @.str.12, ptr %34
  %43 = tail call noalias ptr @strdup(ptr noundef nonnull %42) #22
  %44 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 4
  store ptr %43, ptr %44, align 8, !tbaa !12
  %45 = icmp eq i8 %9, 0
  %46 = select i1 %45, ptr @.str.13, ptr %8
  %47 = tail call noalias ptr @strdup(ptr noundef nonnull %46) #22
  br label %70

48:                                               ; preds = %33
  %49 = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %35, ptr nonnull dereferenceable(8) @.str.10, i64 7)
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i64 7, i64 0
  %52 = getelementptr inbounds i8, ptr %35, i64 %51
  %53 = tail call noalias ptr @strdup(ptr noundef nonnull %52) #22
  %54 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 3
  store ptr %53, ptr %54, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %58, %48
  %56 = phi ptr [ %53, %48 ], [ %59, %58 ]
  %57 = load i8, ptr %56, align 1, !tbaa !28
  switch i8 %57, label %58 [
    i8 58, label %60
    i8 0, label %65
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %56, i64 1
  br label %55, !llvm.loop !49

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 0, ptr %56, align 1, !tbaa !28
  %62 = load i8, ptr %61, align 1, !tbaa !28
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, ptr @.str.12, ptr %61
  br label %65

65:                                               ; preds = %55, %60
  %66 = phi ptr [ %64, %60 ], [ @.str.12, %55 ]
  %67 = tail call noalias ptr @strdup(ptr noundef nonnull %66) #22
  %68 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 4
  store ptr %67, ptr %68, align 8, !tbaa !12
  %69 = tail call noalias ptr @strdup(ptr noundef %0) #22
  br label %70

70:                                               ; preds = %65, %37
  %71 = phi ptr [ %69, %65 ], [ %47, %37 ]
  %72 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 16
  store ptr %71, ptr %72, align 8, !tbaa !50
  store i32 3, ptr %16, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 1
  store i32 -1, ptr %73, align 4, !tbaa !33
  %74 = getelementptr inbounds %struct.knetFile_s, ptr %16, i64 0, i32 5
  store i32 -1, ptr %74, align 8, !tbaa !13
  br label %75

75:                                               ; preds = %2, %70
  %76 = phi ptr [ %16, %70 ], [ null, %2 ]
  ret ptr %76
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @khttp_connect_file(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.fd_set, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !33
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @close(i32 noundef %6) #22
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = tail call fastcc i32 @socket_connect(ptr noundef %12, ptr noundef %14)
  store i32 %15, ptr %5, align 4, !tbaa !33
  %16 = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #27
  %17 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %18, ptr noundef %20) #22
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %16, i64 %22
  %24 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !44
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %25) #22
  %27 = add nsw i32 %26, %21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %16, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %29, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %30 = add nsw i32 %27, 2
  %31 = load i32, ptr %5, align 4, !tbaa !33
  %32 = sext i32 %30 to i64
  %33 = tail call i64 @write(i32 noundef %31, ptr noundef %16, i64 noundef %32) #22
  %34 = load i32, ptr %5, align 4, !tbaa !33
  %35 = tail call i64 @read(i32 noundef %34, ptr noundef %16, i64 noundef 1) #22
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %10
  %38 = load i32, ptr %5, align 4, !tbaa !33
  %39 = getelementptr inbounds i8, ptr %16, i64 1
  %40 = tail call i64 @read(i32 noundef %38, ptr noundef nonnull %39, i64 noundef 1) #22
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %5, align 4, !tbaa !33
  %44 = getelementptr inbounds i8, ptr %16, i64 2
  %45 = tail call i64 @read(i32 noundef %43, ptr noundef nonnull %44, i64 noundef 1) #22
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %5, align 4, !tbaa !33
  %49 = getelementptr inbounds i8, ptr %16, i64 3
  %50 = tail call i64 @read(i32 noundef %48, ptr noundef nonnull %49, i64 noundef 1) #22
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47, %61
  %53 = phi i64 [ %62, %61 ], [ 3, %47 ]
  %54 = phi ptr [ %64, %61 ], [ %49, %47 ]
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %56 = icmp eq i8 %55, 10
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %54, i64 -3
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(5) @.str.17, i64 noundef 4) #26
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %52
  %62 = add nuw i64 %53, 1
  %63 = load i32, ptr %5, align 4, !tbaa !33
  %64 = getelementptr inbounds i8, ptr %16, i64 %62
  %65 = tail call i64 @read(i32 noundef %63, ptr noundef nonnull %64, i64 noundef 1) #22
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %69, label %52, !llvm.loop !51

67:                                               ; preds = %10, %37, %42, %47
  %68 = phi ptr [ %49, %47 ], [ %44, %42 ], [ %39, %37 ], [ %16, %10 ]
  store i8 0, ptr %68, align 1, !tbaa !28
  br label %74

69:                                               ; preds = %57, %61
  %70 = phi i64 [ %53, %57 ], [ %62, %61 ]
  %71 = phi ptr [ %54, %57 ], [ %64, %61 ]
  %72 = trunc i64 %70 to i32
  %73 = icmp ult i32 %72, 14
  store i8 0, ptr %71, align 1, !tbaa !28
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %69
  %75 = load i32, ptr %5, align 4, !tbaa !33
  %76 = tail call i32 @close(i32 noundef %75) #22
  store i32 -1, ptr %5, align 4, !tbaa !33
  br label %126

77:                                               ; preds = %69
  %78 = getelementptr inbounds i8, ptr %16, i64 8
  %79 = call i64 @strtol(ptr noundef nonnull %78, ptr noundef nonnull %4, i32 noundef 0) #22
  %80 = trunc i64 %79 to i32
  switch i32 %80, label %119 [
    i32 200, label %81
    i32 206, label %124
  ]

81:                                               ; preds = %77
  %82 = load i64, ptr %24, align 8, !tbaa !44
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  br label %86

86:                                               ; preds = %84, %115
  %87 = phi i64 [ %82, %84 ], [ %117, %115 ]
  %88 = call i64 @llvm.smin.i64(i64 %87, i64 65536)
  %89 = load i32, ptr %5, align 4, !tbaa !33
  %90 = srem i32 %89, 64
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = sdiv i32 %89, 64
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i64], ptr %2, i64 0, i64 %94
  %96 = add nsw i32 %89, 1
  br label %97

97:                                               ; preds = %111, %86
  %98 = phi i64 [ 0, %86 ], [ %112, %111 ]
  %99 = phi i64 [ %88, %86 ], [ %113, %111 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  store i64 5, ptr %3, align 8, !tbaa !22
  store i64 0, ptr %85, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !25
  %100 = load i64, ptr %95, align 8, !tbaa !25
  %101 = or i64 %100, %92
  store i64 %101, ptr %95, align 8, !tbaa !25
  %102 = call i32 @select(i32 noundef %96, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #22
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  call void @perror(ptr noundef nonnull @.str.27) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #22
  br label %115

105:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #22
  %106 = icmp slt i32 %102, 1
  br i1 %106, label %115, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds i8, ptr %16, i64 %98
  %109 = call i64 @read(i32 noundef %89, ptr noundef %108, i64 noundef %99) #22
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = add nsw i64 %109, %98
  %113 = sub nsw i64 %99, %109
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %97, !llvm.loop !53

115:                                              ; preds = %105, %107, %111, %104
  %116 = phi i64 [ %98, %104 ], [ %98, %107 ], [ %98, %105 ], [ %112, %111 ]
  %117 = sub nsw i64 %87, %116
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %124, label %86, !llvm.loop !54

119:                                              ; preds = %77
  tail call void @free(ptr noundef nonnull %16) #22
  %120 = load ptr, ptr @stderr, align 8, !tbaa !15
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.18, i32 noundef %80) #23
  %122 = load i32, ptr %5, align 4, !tbaa !33
  %123 = tail call i32 @close(i32 noundef %122) #22
  store i32 -1, ptr %5, align 4, !tbaa !33
  br label %126

124:                                              ; preds = %115, %81, %77
  call void @free(ptr noundef %16) #22
  %125 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  store i32 1, ptr %125, align 8, !tbaa !45
  br label %126

126:                                              ; preds = %124, %119, %74
  %127 = phi i32 [ -1, %74 ], [ 0, %124 ], [ -1, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %127
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @knet_open(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !28
  %4 = icmp eq i8 %3, 114
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !15
  %7 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 40, i64 1, ptr %6) #23
  br label %50

8:                                                ; preds = %2
  %9 = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %0, ptr nonnull dereferenceable(7) @.str.3, i64 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = tail call ptr @kftp_parse_url(ptr noundef %0, ptr noundef nonnull %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.knetFile_s, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.knetFile_s, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = tail call fastcc i32 @socket_connect(ptr noundef %16, ptr noundef %18)
  %20 = getelementptr inbounds %struct.knetFile_s, ptr %12, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !13
  %21 = icmp eq i32 %19, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = tail call i32 @knet_close(ptr noundef nonnull %12)
  br label %50

24:                                               ; preds = %14
  %25 = tail call fastcc i32 @kftp_get_response(ptr noundef nonnull %12)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %12, ptr noundef nonnull @.str, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %12, ptr noundef nonnull @.str.1, i32 noundef 1)
  tail call fastcc void @kftp_send_cmd(ptr noundef nonnull %12, ptr noundef nonnull @.str.2, i32 noundef 1)
  %26 = tail call i32 @kftp_connect_file(ptr noundef nonnull %12), !range !55
  br label %43

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %0, ptr nonnull dereferenceable(8) @.str.10, i64 7)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = tail call ptr @khttp_parse_url(ptr noundef %0, ptr nonnull poison)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @khttp_connect_file(ptr noundef nonnull %31), !range !55
  br label %43

35:                                               ; preds = %27
  %36 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #22
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @perror(ptr noundef nonnull @.str.20) #23
  br label %50

39:                                               ; preds = %35
  %40 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #27
  store i32 1, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.knetFile_s, ptr %40, i64 0, i32 1
  store i32 %36, ptr %41, align 4, !tbaa !33
  %42 = getelementptr inbounds %struct.knetFile_s, ptr %40, i64 0, i32 5
  store i32 -1, ptr %42, align 8, !tbaa !13
  br label %43

43:                                               ; preds = %24, %33, %39
  %44 = phi ptr [ %12, %24 ], [ %31, %33 ], [ %40, %39 ]
  %45 = getelementptr inbounds %struct.knetFile_s, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !33
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 @knet_close(ptr noundef nonnull %44)
  br label %50

50:                                               ; preds = %38, %43, %30, %11, %48, %22, %5
  %51 = phi ptr [ null, %5 ], [ null, %22 ], [ null, %48 ], [ null, %11 ], [ null, %30 ], [ %44, %43 ], [ null, %38 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @knet_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @close(i32 noundef %5) #22
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !33
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @close(i32 noundef %11) #22
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @free(ptr noundef %17) #22
  %18 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  tail call void @free(ptr noundef %19) #22
  %20 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  tail call void @free(ptr noundef %21) #22
  %22 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  tail call void @free(ptr noundef %23) #22
  %24 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  tail call void @free(ptr noundef %25) #22
  %26 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  tail call void @free(ptr noundef %27) #22
  tail call void @free(ptr noundef nonnull %0) #22
  br label %28

28:                                               ; preds = %1, %15
  ret i32 0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @knet_dopen(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #14 {
  %3 = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #27
  store i32 1, ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.knetFile_s, ptr %3, i64 0, i32 1
  store i32 %0, ptr %4, align 4, !tbaa !33
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i64 @knet_read(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %91, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8, !tbaa !35
  switch i32 %10, label %31 [
    i32 2, label %11
    i32 3, label %23
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !36
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 @kftp_reconnect(ptr noundef nonnull %0), !range !55
  br label %21

21:                                               ; preds = %19, %15
  %22 = tail call i32 @kftp_connect_file(ptr noundef nonnull %0), !range !55
  br label %29

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !45
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = tail call i32 @khttp_connect_file(ptr noundef nonnull %0), !range !55
  br label %29

29:                                               ; preds = %21, %27
  %30 = load i32, ptr %0, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %29, %9
  %32 = phi i32 [ %30, %29 ], [ %10, %9 ]
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4, !tbaa !33
  br label %56

36:                                               ; preds = %31
  %37 = icmp eq i64 %2, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %36, %52
  %39 = phi i64 [ %54, %52 ], [ %2, %36 ]
  %40 = phi i64 [ %53, %52 ], [ 0, %36 ]
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  br label %42

42:                                               ; preds = %38, %46
  %43 = load i32, ptr %6, align 4, !tbaa !33
  %44 = tail call i64 @read(i32 noundef %43, ptr noundef %41, i64 noundef %39) #22
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call ptr @__errno_location() #25
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %42, label %91, !llvm.loop !56

50:                                               ; preds = %42
  %51 = icmp eq i64 %44, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %50
  %53 = add nuw nsw i64 %44, %40
  %54 = sub nsw i64 %39, %44
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %86, label %38, !llvm.loop !57

56:                                               ; preds = %34, %11, %23
  %57 = phi i32 [ %35, %34 ], [ %7, %11 ], [ %7, %23 ]
  %58 = icmp eq i64 %2, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  %61 = srem i32 %57, 64
  %62 = zext nneg i32 %61 to i64
  %63 = shl nuw i64 1, %62
  %64 = sdiv i32 %57, 64
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %65
  %67 = add nsw i32 %57, 1
  br label %68

68:                                               ; preds = %82, %59
  %69 = phi i64 [ 0, %59 ], [ %83, %82 ]
  %70 = phi i64 [ %2, %59 ], [ %84, %82 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  store i64 5, ptr %5, align 8, !tbaa !22
  store i64 0, ptr %60, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !25
  %71 = load i64, ptr %66, align 8, !tbaa !25
  %72 = or i64 %71, %63
  store i64 %72, ptr %66, align 8, !tbaa !25
  %73 = call i32 @select(i32 noundef %67, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #22
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  call void @perror(ptr noundef nonnull @.str.27) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  br label %86

76:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #22
  %77 = icmp slt i32 %73, 1
  br i1 %77, label %86, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %1, i64 %69
  %80 = call i64 @read(i32 noundef %57, ptr noundef %79, i64 noundef %70) #22
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = add nsw i64 %80, %69
  %84 = sub nsw i64 %70, %80
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %68, !llvm.loop !53

86:                                               ; preds = %82, %78, %76, %52, %50, %36, %75, %56
  %87 = phi i64 [ %69, %75 ], [ 0, %56 ], [ 0, %36 ], [ %53, %52 ], [ %40, %50 ], [ %69, %78 ], [ %69, %76 ], [ %83, %82 ]
  %88 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !44
  %90 = add nsw i64 %89, %87
  store i64 %90, ptr %88, align 8, !tbaa !44
  br label %91

91:                                               ; preds = %46, %3, %86
  %92 = phi i64 [ %87, %86 ], [ 0, %3 ], [ -1, %46 ]
  ret i64 %92
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @knet_seek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i64 %7, %1
  br i1 %8, label %55, label %9

9:                                                ; preds = %5, %3
  %10 = load i32, ptr %0, align 8, !tbaa !35
  switch i32 %10, label %50 [
    i32 1, label %11
    i32 2, label %18
    i32 3, label %36
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = tail call i64 @lseek(i32 noundef %13, i64 noundef %1, i32 noundef %2) #22
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %55, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  store i64 %14, ptr %17, align 8, !tbaa !44
  br label %55

18:                                               ; preds = %9
  %19 = icmp eq i32 %2, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !44
  %23 = add nsw i64 %22, %1
  store i64 %23, ptr %21, align 8, !tbaa !44
  br label %34

24:                                               ; preds = %18
  br i1 %4, label %25, label %27

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  store i64 %1, ptr %26, align 8, !tbaa !44
  br label %34

27:                                               ; preds = %24
  %28 = icmp eq i32 %2, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 15
  %31 = load i64, ptr %30, align 8, !tbaa !43
  %32 = add nsw i64 %31, %1
  %33 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  store i64 %32, ptr %33, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %25, %29, %27, %20
  %35 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %35, align 8, !tbaa !45
  br label %55

36:                                               ; preds = %9
  switch i32 %2, label %45 [
    i32 2, label %37
    i32 1, label %41
  ]

37:                                               ; preds = %36
  %38 = load ptr, ptr @stderr, align 8, !tbaa !15
  %39 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 69, i64 1, ptr %38) #23
  %40 = tail call ptr @__errno_location() #25
  store i32 29, ptr %40, align 4, !tbaa !14
  br label %55

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !44
  %44 = add nsw i64 %43, %1
  store i64 %44, ptr %42, align 8, !tbaa !44
  br label %48

45:                                               ; preds = %36
  br i1 %4, label %46, label %48

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 2
  store i64 %1, ptr %47, align 8, !tbaa !44
  br label %48

48:                                               ; preds = %45, %46, %41
  %49 = getelementptr inbounds %struct.knetFile_s, ptr %0, i64 0, i32 10
  store i32 0, ptr %49, align 8, !tbaa !45
  br label %55

50:                                               ; preds = %9
  %51 = tail call ptr @__errno_location() #25
  store i32 22, ptr %51, align 4, !tbaa !14
  %52 = load ptr, ptr @stderr, align 8, !tbaa !15
  %53 = tail call ptr @strerror(i32 noundef 22) #22
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.22, ptr noundef %53) #23
  br label %55

55:                                               ; preds = %16, %11, %5, %50, %48, %37, %34
  %56 = phi i64 [ %1, %34 ], [ -1, %37 ], [ %1, %48 ], [ -1, %50 ], [ 0, %5 ], [ %1, %16 ], [ -1, %11 ]
  ret i64 %56
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !11, i64 16}
!6 = !{!"knetFile_s", !7, i64 0, !7, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !8, i64 36, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !11, i64 120}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !11, i64 24}
!13 = !{!6, !7, i64 32}
!14 = !{!7, !7, i64 0}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !7, i64 8}
!17 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!18 = !{!17, !7, i64 4}
!19 = !{!17, !7, i64 12}
!20 = !{!17, !11, i64 24}
!21 = !{!17, !7, i64 16}
!22 = !{!23, !10, i64 0}
!23 = !{!"timeval", !10, i64 0, !10, i64 8}
!24 = !{!23, !10, i64 8}
!25 = !{!10, !10, i64 0}
!26 = !{!6, !7, i64 56}
!27 = !{!6, !11, i64 72}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !8, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!6, !7, i64 4}
!34 = distinct !{!34, !32}
!35 = !{!6, !7, i64 0}
!36 = !{!6, !7, i64 60}
!37 = !{!6, !11, i64 80}
!38 = !{!6, !11, i64 88}
!39 = distinct !{!39, !32}
!40 = !{!6, !7, i64 52}
!41 = !{!42, !42, i64 0}
!42 = !{!"long long", !8, i64 0}
!43 = !{!6, !10, i64 104}
!44 = !{!6, !10, i64 8}
!45 = !{!6, !7, i64 64}
!46 = distinct !{!46, !32}
!47 = !{!6, !11, i64 120}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = !{!6, !11, i64 112}
!51 = distinct !{!51, !32, !52}
!52 = !{!"llvm.loop.peeled.count", i32 3}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !32}
!55 = !{i32 -1, i32 1}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
