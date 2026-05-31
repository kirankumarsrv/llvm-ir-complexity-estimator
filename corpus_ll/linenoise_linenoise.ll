; ModuleID = 'corpus_src/linenoise/linenoise.c'
source_filename = "corpus_src/linenoise/linenoise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.linenoiseCompletions = type { i64, ptr }
%struct.linenoiseState = type { i32, i64, i32, i32, ptr, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i32, i32, i32, [16 x i64], [16 x i64] }
%struct.abuf = type { ptr, i32 }
%struct.linenoiseFolds = type { i32, [16 x %struct.linenoiseFold] }
%struct.linenoiseFold = type { i64, i64, [64 x i8], i64 }
%struct.winsize = type { i16, i16, i16, i16 }

@maskmode = internal unnamed_addr global i1 false, align 4
@mlmode = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\1B[H\1B[2J\00", align 1
@completionCallback = internal unnamed_addr global ptr null, align 8
@hintsCallback = internal unnamed_addr global ptr null, align 8
@freeHintsCallback = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\1B[%d;%d;49m\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@history_len = internal unnamed_addr global i32 0, align 4
@history = internal unnamed_addr global ptr null, align 8
@rawmode_output = internal unnamed_addr global i32 1, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"LINENOISE_ASSUME_TTY\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [187 x i8] c"If you see this, you are misusing the API: when linenoiseEditFeed() is called, if it returns linenoiseEditMore the user is yet editing the line. See the README file for more information.\00", align 1
@linenoiseEditMore = dso_local local_unnamed_addr global ptr @.str.6, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"'%c' %02x (%d) (type quit to exit)\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@history_max_len = internal unnamed_addr global i32 100, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"\1B[%dB\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0D\1B[0K\1B[1A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"\0D\1B[0K\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\1B[%dA\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\0D\1B[%dC\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"[... %zu pasted lines ...]\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"[... %zu pasted chars ...]\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1
@rawmode = internal unnamed_addr global i1 false, align 4
@atexit_registered = internal unnamed_addr global i1 false, align 4
@orig_termios = internal global %struct.termios zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"\1B[?2004h\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"LINENOISE_COLS\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\1B[999C\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\1B[%dD\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\1B[6n\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%d;%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@linenoiseEditPaste.END = internal constant [7 x i8] c"\1B[201~\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"\1B[?2004l\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"cons25\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@str = private unnamed_addr constant [99 x i8] c"Linenoise key codes debugging mode.\0APress keys to see scan codes. Type 'quit' at any time to exit.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseMaskModeEnable() local_unnamed_addr #0 {
  store i1 true, ptr @maskmode, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseMaskModeDisable() local_unnamed_addr #0 {
  store i1 false, ptr @maskmode, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseSetMultiLine(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @mlmode, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @linenoiseClearScreen() local_unnamed_addr #1 {
  %1 = tail call i64 @write(i32 noundef 1, ptr noundef nonnull @.str, i64 noundef 7) #27
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseSetCompletionCallback(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @completionCallback, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseSetHintsCallback(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @hintsCallback, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @linenoiseSetFreeHintsCallback(ptr noundef %0) local_unnamed_addr #0 {
  store ptr %0, ptr @freeHintsCallback, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @linenoiseAddCompletion(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %4 = add i64 %3, 1
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %1, i64 %4, i1 false)
  %8 = getelementptr inbounds %struct.linenoiseCompletions, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load i64, ptr %0, align 8, !tbaa !14
  %11 = shl i64 %10, 3
  %12 = add i64 %11, 8
  %13 = tail call ptr @realloc(ptr noundef %9, i64 noundef %12) #30
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %5) #27
  br label %20

16:                                               ; preds = %7
  store ptr %13, ptr %8, align 8, !tbaa !11
  %17 = load i64, ptr %0, align 8, !tbaa !14
  %18 = add i64 %17, 1
  store i64 %18, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds ptr, ptr %13, i64 %17
  store ptr %5, ptr %19, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %2, %16, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @refreshShowHints(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #10 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr @hintsCallback, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %169, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 -1, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  store i32 0, ptr %7, align 4, !tbaa !5
  %11 = sext i32 %2 to i64
  %12 = add i64 %11, %3
  %13 = getelementptr inbounds %struct.linenoiseState, ptr %1, i64 0, i32 12
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %168

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = call ptr %8(ptr noundef %18, ptr noundef nonnull %6, ptr noundef nonnull %7) #27
  %20 = icmp eq ptr %19, null
  br i1 %20, label %168, label %21

21:                                               ; preds = %16
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #28
  %23 = call fastcc i64 @utf8StrWidth(ptr noundef nonnull %19, i64 noundef %22)
  %24 = load i64, ptr %13, align 8, !tbaa !15
  %25 = sub i64 %24, %12
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %21, %89
  %28 = phi i64 [ %94, %89 ], [ 0, %21 ]
  %29 = phi i64 [ %92, %89 ], [ 0, %21 ]
  %30 = icmp ult i64 %28, %22
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = call fastcc i64 @utf8NextCharLen(ptr noundef nonnull %19, i64 noundef %28, i64 noundef %22)
  %33 = getelementptr inbounds i8, ptr %19, i64 %28
  %34 = icmp eq i64 %32, 0
  br i1 %34, label %89, label %35

35:                                               ; preds = %31
  %36 = load i8, ptr %33, align 1, !tbaa !18
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i8 %36, -1
  br i1 %38, label %86, label %39

39:                                               ; preds = %35
  %40 = and i32 %37, 224
  %41 = icmp eq i32 %40, 192
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = and i8 %36, 31
  %44 = zext nneg i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 6
  br label %78

46:                                               ; preds = %39
  %47 = and i32 %37, 240
  %48 = icmp eq i32 %47, 224
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = and i8 %36, 15
  %51 = zext nneg i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 12
  %53 = getelementptr inbounds i8, ptr %33, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !18
  %55 = and i8 %54, 63
  %56 = zext nneg i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 6
  %58 = or disjoint i32 %57, %52
  br label %78

59:                                               ; preds = %46
  %60 = and i32 %37, 248
  %61 = icmp eq i32 %60, 240
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = and i8 %36, 7
  %64 = zext nneg i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 18
  %66 = getelementptr inbounds i8, ptr %33, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !18
  %68 = and i8 %67, 63
  %69 = zext nneg i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 12
  %71 = or disjoint i32 %70, %65
  %72 = getelementptr inbounds i8, ptr %33, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !18
  %74 = and i8 %73, 63
  %75 = zext nneg i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 6
  %77 = or disjoint i32 %71, %76
  br label %78

78:                                               ; preds = %62, %49, %42
  %79 = phi i64 [ 1, %42 ], [ 2, %49 ], [ 3, %62 ]
  %80 = phi i32 [ %45, %42 ], [ %58, %49 ], [ %77, %62 ]
  %81 = getelementptr inbounds i8, ptr %33, i64 %79
  %82 = load i8, ptr %81, align 1, !tbaa !18
  %83 = and i8 %82, 63
  %84 = zext nneg i8 %83 to i32
  %85 = or disjoint i32 %80, %84
  br label %86

86:                                               ; preds = %78, %59, %35
  %87 = phi i32 [ %37, %35 ], [ %37, %59 ], [ %85, %78 ]
  %88 = call fastcc i32 @utf8CharWidth(i32 noundef %87), !range !19
  br label %89

89:                                               ; preds = %31, %86
  %90 = phi i32 [ %88, %86 ], [ 0, %31 ]
  %91 = zext nneg i32 %90 to i64
  %92 = add i64 %29, %91
  %93 = icmp ugt i64 %92, %25
  %94 = add i64 %32, %28
  br i1 %93, label %95, label %27

95:                                               ; preds = %89, %27, %21
  %96 = phi i64 [ %22, %21 ], [ %28, %27 ], [ %28, %89 ]
  %97 = load i32, ptr %7, align 4
  %98 = icmp eq i32 %97, 1
  %99 = load i32, ptr %6, align 4
  %100 = icmp eq i32 %99, -1
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 37, ptr %6, align 4, !tbaa !5
  br label %107

103:                                              ; preds = %95
  %104 = icmp ne i32 %99, -1
  %105 = icmp ne i32 %97, 0
  %106 = or i1 %105, %104
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %103
  %108 = phi i32 [ 37, %102 ], [ %99, %103 ]
  %109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %97, i32 noundef %108) #27
  br label %111

110:                                              ; preds = %103
  store i8 0, ptr %5, align 16, !tbaa !18
  br label %111

111:                                              ; preds = %110, %107
  %112 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #28
  %113 = trunc i64 %112 to i32
  %114 = load ptr, ptr %0, align 8, !tbaa !20
  %115 = getelementptr inbounds %struct.abuf, ptr %0, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !22
  %117 = add nsw i32 %116, %113
  %118 = sext i32 %117 to i64
  %119 = call ptr @realloc(ptr noundef %114, i64 noundef %118) #30
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load ptr, ptr %0, align 8, !tbaa !20
  %123 = load i32, ptr %115, align 8, !tbaa !22
  br label %131

124:                                              ; preds = %111
  %125 = load i32, ptr %115, align 8, !tbaa !22
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %119, i64 %126
  %128 = shl i64 %112, 32
  %129 = ashr exact i64 %128, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %127, ptr nonnull align 16 %5, i64 %129, i1 false)
  store ptr %119, ptr %0, align 8, !tbaa !20
  %130 = add nsw i32 %125, %113
  store i32 %130, ptr %115, align 8, !tbaa !22
  br label %131

131:                                              ; preds = %121, %124
  %132 = phi i32 [ %123, %121 ], [ %130, %124 ]
  %133 = phi ptr [ %122, %121 ], [ %119, %124 ]
  %134 = trunc i64 %96 to i32
  %135 = add nsw i32 %132, %134
  %136 = sext i32 %135 to i64
  %137 = call ptr @realloc(ptr noundef %133, i64 noundef %136) #30
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %131
  %140 = load i32, ptr %115, align 8, !tbaa !22
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %137, i64 %141
  %143 = shl i64 %96, 32
  %144 = ashr exact i64 %143, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %142, ptr nonnull align 1 %19, i64 %144, i1 false)
  store ptr %137, ptr %0, align 8, !tbaa !20
  %145 = add nsw i32 %140, %134
  store i32 %145, ptr %115, align 8, !tbaa !22
  br label %146

146:                                              ; preds = %131, %139
  %147 = load i32, ptr %6, align 4, !tbaa !5
  %148 = icmp ne i32 %147, -1
  %149 = load i32, ptr %7, align 4
  %150 = icmp ne i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = load ptr, ptr %0, align 8, !tbaa !20
  %154 = load i32, ptr %115, align 8, !tbaa !22
  %155 = add nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = call ptr @realloc(ptr noundef %153, i64 noundef %156) #30
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %152
  %160 = load i32, ptr %115, align 8, !tbaa !22
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %157, i64 %161
  store i32 1831885595, ptr %162, align 1
  store ptr %157, ptr %0, align 8, !tbaa !20
  %163 = add nsw i32 %160, 4
  store i32 %163, ptr %115, align 8, !tbaa !22
  br label %164

164:                                              ; preds = %159, %152, %146
  %165 = load ptr, ptr @freeHintsCallback, align 8, !tbaa !9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  call void %165(ptr noundef nonnull %19) #27
  br label %168

168:                                              ; preds = %16, %167, %164, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #27
  br label %169

169:                                              ; preds = %168, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @utf8StrWidth(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #11 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %115, label %4

4:                                                ; preds = %2, %109
  %5 = phi i64 [ %112, %109 ], [ 0, %2 ]
  %6 = phi i64 [ %113, %109 ], [ 0, %2 ]
  %7 = phi i32 [ %110, %109 ], [ 0, %2 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %6
  %9 = load i8, ptr %8, align 1, !tbaa !18
  %10 = zext i8 %9 to i32
  %11 = icmp sgt i8 %9, -1
  br i1 %11, label %60, label %12

12:                                               ; preds = %4
  %13 = and i32 %10, 224
  %14 = icmp eq i32 %13, 192
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = and i8 %9, 31
  %17 = zext nneg i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 6
  br label %51

19:                                               ; preds = %12
  %20 = and i32 %10, 240
  %21 = icmp eq i32 %20, 224
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = and i8 %9, 15
  %24 = zext nneg i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 12
  %26 = getelementptr inbounds i8, ptr %8, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !18
  %28 = and i8 %27, 63
  %29 = zext nneg i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 6
  %31 = or disjoint i32 %30, %25
  br label %51

32:                                               ; preds = %19
  %33 = and i32 %10, 248
  %34 = icmp eq i32 %33, 240
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = and i8 %9, 7
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 18
  %39 = getelementptr inbounds i8, ptr %8, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !18
  %41 = and i8 %40, 63
  %42 = zext nneg i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 12
  %44 = or disjoint i32 %43, %38
  %45 = getelementptr inbounds i8, ptr %8, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !18
  %47 = and i8 %46, 63
  %48 = zext nneg i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 6
  %50 = or disjoint i32 %44, %49
  br label %51

51:                                               ; preds = %35, %22, %15
  %52 = phi i64 [ 1, %15 ], [ 2, %22 ], [ 3, %35 ]
  %53 = phi i32 [ %18, %15 ], [ %31, %22 ], [ %50, %35 ]
  %54 = phi i64 [ 2, %15 ], [ 3, %22 ], [ 4, %35 ]
  %55 = getelementptr inbounds i8, ptr %8, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !18
  %57 = and i8 %56, 63
  %58 = zext nneg i8 %57 to i32
  %59 = or disjoint i32 %53, %58
  br label %60

60:                                               ; preds = %51, %32, %4
  %61 = phi i64 [ 1, %4 ], [ 1, %32 ], [ %54, %51 ]
  %62 = phi i32 [ %10, %4 ], [ %10, %32 ], [ %59, %51 ]
  %63 = icmp eq i32 %62, 27
  br i1 %63, label %64, label %99

64:                                               ; preds = %60
  %65 = sub i64 %1, %6
  %66 = icmp ult i64 %65, 2
  br i1 %66, label %99, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %8, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !18
  %70 = icmp eq i8 %69, 91
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = icmp eq i64 %65, 2
  br i1 %72, label %82, label %73

73:                                               ; preds = %71, %79
  %74 = phi i64 [ %80, %79 ], [ 2, %71 ]
  %75 = getelementptr inbounds i8, ptr %8, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !18
  %77 = and i8 %76, -16
  %78 = icmp eq i8 %77, 48
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = add nuw i64 %74, 1
  %81 = icmp eq i64 %80, %65
  br i1 %81, label %99, label %73, !llvm.loop !23

82:                                               ; preds = %73, %71
  %83 = phi i64 [ 2, %71 ], [ %74, %73 ]
  %84 = icmp ult i64 %83, %65
  br i1 %84, label %85, label %99

85:                                               ; preds = %82, %91
  %86 = phi i64 [ %92, %91 ], [ %83, %82 ]
  %87 = getelementptr inbounds i8, ptr %8, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !18
  %89 = and i8 %88, -16
  %90 = icmp eq i8 %89, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = add i64 %86, 1
  %93 = icmp eq i64 %92, %65
  br i1 %93, label %99, label %85, !llvm.loop !25

94:                                               ; preds = %85
  %95 = add i8 %88, -127
  %96 = icmp ult i8 %95, -63
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = add nuw i64 %86, 1
  br label %109

99:                                               ; preds = %79, %91, %94, %82, %64, %67, %60
  %100 = icmp eq i32 %7, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = tail call fastcc i32 @utf8CharWidth(i32 noundef %62), !range !19
  %103 = zext nneg i32 %102 to i64
  %104 = add i64 %5, %103
  br label %105

105:                                              ; preds = %99, %101
  %106 = phi i64 [ %104, %101 ], [ %5, %99 ]
  %107 = icmp eq i32 %62, 8205
  %108 = zext i1 %107 to i32
  br label %109

109:                                              ; preds = %97, %105
  %110 = phi i32 [ %108, %105 ], [ %7, %97 ]
  %111 = phi i64 [ %61, %105 ], [ %98, %97 ]
  %112 = phi i64 [ %106, %105 ], [ %5, %97 ]
  %113 = add i64 %111, %6
  %114 = icmp ult i64 %113, %1
  br i1 %114, label %4, label %115

115:                                              ; preds = %109, %2
  %116 = phi i64 [ 0, %2 ], [ %112, %109 ]
  ret i64 %116
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @utf8NextCharLen(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
  %4 = icmp ult i64 %1, %2
  br i1 %4, label %5, label %187

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %0, i64 %1
  %7 = load i8, ptr %6, align 1, !tbaa !18
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i8 %7, -1
  br i1 %9, label %58, label %10

10:                                               ; preds = %5
  %11 = and i32 %8, 224
  %12 = icmp eq i32 %11, 192
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = and i8 %7, 31
  %15 = zext nneg i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 6
  br label %49

17:                                               ; preds = %10
  %18 = and i32 %8, 240
  %19 = icmp eq i32 %18, 224
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = and i8 %7, 15
  %22 = zext nneg i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 12
  %24 = getelementptr inbounds i8, ptr %6, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !18
  %26 = and i8 %25, 63
  %27 = zext nneg i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 6
  %29 = or disjoint i32 %28, %23
  br label %49

30:                                               ; preds = %17
  %31 = and i32 %8, 248
  %32 = icmp eq i32 %31, 240
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = and i8 %7, 7
  %35 = zext nneg i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 18
  %37 = getelementptr inbounds i8, ptr %6, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !18
  %39 = and i8 %38, 63
  %40 = zext nneg i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 12
  %42 = or disjoint i32 %41, %36
  %43 = getelementptr inbounds i8, ptr %6, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !18
  %45 = and i8 %44, 63
  %46 = zext nneg i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 6
  %48 = or disjoint i32 %42, %47
  br label %49

49:                                               ; preds = %33, %20, %13
  %50 = phi i64 [ 1, %13 ], [ 2, %20 ], [ 3, %33 ]
  %51 = phi i32 [ %16, %13 ], [ %29, %20 ], [ %48, %33 ]
  %52 = phi i64 [ 2, %13 ], [ 3, %20 ], [ 4, %33 ]
  %53 = getelementptr inbounds i8, ptr %6, i64 %50
  %54 = load i8, ptr %53, align 1, !tbaa !18
  %55 = and i8 %54, 63
  %56 = zext nneg i8 %55 to i32
  %57 = or disjoint i32 %51, %56
  br label %58

58:                                               ; preds = %49, %30, %5
  %59 = phi i64 [ 1, %5 ], [ 1, %30 ], [ %52, %49 ]
  %60 = phi i32 [ %8, %5 ], [ %8, %30 ], [ %57, %49 ]
  %61 = add i64 %59, %1
  %62 = icmp ult i64 %61, %2
  br i1 %62, label %63, label %187

63:                                               ; preds = %58
  %64 = add nsw i32 %60, -127462
  %65 = icmp ult i32 %64, 26
  %66 = zext i1 %65 to i32
  br label %67

67:                                               ; preds = %63, %182
  %68 = phi i32 [ %185, %182 ], [ %66, %63 ]
  %69 = phi i64 [ %184, %182 ], [ %61, %63 ]
  %70 = phi i64 [ %183, %182 ], [ %59, %63 ]
  %71 = getelementptr inbounds i8, ptr %0, i64 %69
  %72 = load i8, ptr %71, align 1, !tbaa !18
  %73 = zext i8 %72 to i32
  %74 = icmp sgt i8 %72, -1
  br i1 %74, label %152, label %75

75:                                               ; preds = %67
  %76 = and i32 %73, 224
  %77 = icmp eq i32 %76, 192
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = and i8 %72, 31
  %80 = zext nneg i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 6
  %82 = getelementptr inbounds i8, ptr %71, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !18
  %84 = and i8 %83, 63
  %85 = zext nneg i8 %84 to i32
  %86 = or disjoint i32 %81, %85
  br label %152

87:                                               ; preds = %75
  %88 = and i32 %73, 240
  %89 = icmp eq i32 %88, 224
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = and i8 %72, 15
  %92 = zext nneg i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 12
  %94 = getelementptr inbounds i8, ptr %71, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !18
  %96 = and i8 %95, 63
  %97 = zext nneg i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 6
  br label %117

99:                                               ; preds = %87
  %100 = and i32 %73, 248
  %101 = icmp eq i32 %100, 240
  br i1 %101, label %102, label %152

102:                                              ; preds = %99
  %103 = and i8 %72, 7
  %104 = zext nneg i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 18
  %106 = getelementptr inbounds i8, ptr %71, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !18
  %108 = and i8 %107, 63
  %109 = zext nneg i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 12
  %111 = or disjoint i32 %110, %105
  %112 = getelementptr inbounds i8, ptr %71, i64 2
  %113 = load i8, ptr %112, align 1, !tbaa !18
  %114 = and i8 %113, 63
  %115 = zext nneg i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 6
  br label %117

117:                                              ; preds = %90, %102
  %118 = phi i32 [ %93, %90 ], [ %116, %102 ]
  %119 = phi i32 [ %98, %90 ], [ %111, %102 ]
  %120 = phi i64 [ 2, %90 ], [ 3, %102 ]
  %121 = phi i64 [ 3, %90 ], [ 4, %102 ]
  %122 = or disjoint i32 %119, %118
  %123 = getelementptr inbounds i8, ptr %71, i64 %120
  %124 = load i8, ptr %123, align 1, !tbaa !18
  %125 = and i8 %124, 63
  %126 = zext nneg i8 %125 to i32
  %127 = or disjoint i32 %122, %126
  %128 = icmp eq i32 %127, 8205
  br i1 %128, label %129, label %152

129:                                              ; preds = %117
  %130 = add i64 %121, %69
  %131 = icmp ult i64 %130, %2
  br i1 %131, label %132, label %170

132:                                              ; preds = %129
  %133 = add i64 %121, %70
  %134 = getelementptr inbounds i8, ptr %0, i64 %130
  %135 = load i8, ptr %134, align 1, !tbaa !18
  %136 = zext i8 %135 to i32
  %137 = icmp sgt i8 %135, -1
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  %139 = and i32 %136, 224
  %140 = icmp eq i32 %139, 192
  br i1 %140, label %148, label %141

141:                                              ; preds = %138
  %142 = and i32 %136, 240
  %143 = icmp eq i32 %142, 224
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = and i32 %136, 248
  %146 = icmp eq i32 %145, 240
  %147 = select i1 %146, i64 4, i64 1
  br label %148

148:                                              ; preds = %141, %138, %144, %132
  %149 = phi i64 [ 1, %132 ], [ %147, %144 ], [ 2, %138 ], [ 3, %141 ]
  %150 = add i64 %133, %149
  %151 = add i64 %149, %130
  br label %182, !llvm.loop !26

152:                                              ; preds = %99, %67, %78, %117
  %153 = phi i32 [ %127, %117 ], [ %73, %99 ], [ %73, %67 ], [ %86, %78 ]
  %154 = phi i64 [ %121, %117 ], [ 1, %99 ], [ 1, %67 ], [ 2, %78 ]
  switch i32 %153, label %155 [
    i32 127999, label %170
    i32 127998, label %170
    i32 127997, label %170
    i32 127996, label %170
    i32 127995, label %170
    i32 65039, label %170
    i32 65038, label %170
    i32 8205, label %170
  ]

155:                                              ; preds = %152
  %156 = add nsw i32 %153, -768
  %157 = icmp ult i32 %156, 112
  %158 = add nsw i32 %153, -6832
  %159 = icmp ult i32 %158, 80
  %160 = or i1 %157, %159
  %161 = and i32 %153, -64
  %162 = icmp eq i32 %161, 7616
  %163 = or i1 %162, %160
  %164 = add nsw i32 %153, -8400
  %165 = icmp ult i32 %164, 48
  %166 = or i1 %165, %163
  %167 = and i32 %153, -16
  %168 = icmp eq i32 %167, 65056
  %169 = or i1 %168, %166
  br i1 %169, label %170, label %174

170:                                              ; preds = %129, %152, %152, %152, %152, %152, %152, %152, %152, %155
  %171 = phi i64 [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %155 ], [ %121, %129 ]
  %172 = add i64 %171, %70
  %173 = add i64 %171, %69
  br label %182, !llvm.loop !26

174:                                              ; preds = %155
  %175 = icmp eq i32 %68, 0
  %176 = add nsw i32 %153, -127488
  %177 = icmp ult i32 %176, -26
  %178 = or i1 %175, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %174
  %180 = add i64 %154, %70
  %181 = add i64 %154, %69
  br label %182, !llvm.loop !26

182:                                              ; preds = %179, %170, %148
  %183 = phi i64 [ %150, %148 ], [ %172, %170 ], [ %180, %179 ]
  %184 = phi i64 [ %151, %148 ], [ %173, %170 ], [ %181, %179 ]
  %185 = phi i32 [ %68, %148 ], [ %68, %170 ], [ 0, %179 ]
  %186 = icmp ult i64 %184, %2
  br i1 %186, label %67, label %187

187:                                              ; preds = %182, %174, %58, %3
  %188 = phi i64 [ 0, %3 ], [ %59, %58 ], [ %183, %182 ], [ %70, %174 ]
  ret i64 %188
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseHide(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr @mlmode, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @refreshMultiLine(ptr noundef %0, i32 noundef 1)
  br label %6

5:                                                ; preds = %1
  tail call fastcc void @refreshSingleLine(ptr noundef %0, i32 noundef 1)
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @refreshMultiLine(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.abuf, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %8 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !28
  %12 = tail call fastcc i64 @utf8StrWidth(ptr noundef %9, i64 noundef %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr null, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %13 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 13
  %16 = load i64, ptr %15, align 8, !tbaa !30
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  %20 = call fastcc i32 @linenoiseRenderBuffer(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !32
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %255, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8, !tbaa !9
  %24 = load i64, ptr %5, align 8, !tbaa !33
  %25 = tail call fastcc i64 @utf8StrWidth(ptr noundef %23, i64 noundef %24)
  %26 = load i64, ptr %6, align 8, !tbaa !33
  %27 = tail call fastcc i64 @utf8StrWidth(ptr noundef %23, i64 noundef %26)
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 12
  %29 = load i64, ptr %28, align 8, !tbaa !15
  %30 = add i64 %12, -1
  %31 = add i64 %30, %25
  %32 = add i64 %31, %29
  %33 = udiv i64 %32, %29
  %34 = trunc i64 %33 to i32
  %35 = shl i64 %33, 32
  %36 = ashr exact i64 %35, 32
  store i64 %36, ptr %15, align 8, !tbaa !30
  store ptr null, ptr %7, align 8, !tbaa !20
  %37 = getelementptr inbounds %struct.abuf, ptr %7, i64 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !22
  %38 = and i32 %1, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %22
  %41 = sub nsw i32 %17, %14
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %41) #27
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = tail call ptr @malloc(i64 %47)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = trunc i64 %45 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr nonnull align 16 %3, i64 %47, i1 false)
  br label %52

52:                                               ; preds = %50, %43, %40
  %53 = phi i32 [ %51, %50 ], [ 0, %43 ], [ 0, %40 ]
  %54 = phi ptr [ %48, %50 ], [ null, %43 ], [ null, %40 ]
  %55 = icmp sgt i32 %17, 1
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = add nsw i32 %17, -2
  br label %58

58:                                               ; preds = %56, %73
  %59 = phi i32 [ %76, %73 ], [ 0, %56 ]
  %60 = phi ptr [ %75, %73 ], [ %54, %56 ]
  %61 = phi i32 [ %74, %73 ], [ %53, %56 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = tail call ptr @realloc(ptr noundef %60, i64 noundef %65) #30
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = sext i32 %61 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = shl i64 %62, 32
  %72 = ashr exact i64 %71, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %70, ptr nonnull align 16 %3, i64 %72, i1 false)
  br label %73

73:                                               ; preds = %58, %68
  %74 = phi i32 [ %61, %58 ], [ %64, %68 ]
  %75 = phi ptr [ %60, %58 ], [ %66, %68 ]
  %76 = add nuw nsw i32 %59, 1
  %77 = icmp eq i32 %59, %57
  br i1 %77, label %78, label %58, !llvm.loop !34

78:                                               ; preds = %73, %52
  %79 = phi i32 [ %53, %52 ], [ %74, %73 ]
  %80 = phi ptr [ %54, %52 ], [ %75, %73 ]
  store ptr %80, ptr %7, align 8, !tbaa !20
  store i32 %79, ptr %37, align 8, !tbaa !22
  br label %81

81:                                               ; preds = %78, %22
  %82 = phi i32 [ %79, %78 ], [ 0, %22 ]
  %83 = phi ptr [ %80, %78 ], [ null, %22 ]
  %84 = and i32 %1, 3
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, i64 6, i1 false)
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 %82, %88
  %90 = sext i32 %89 to i64
  %91 = tail call ptr @realloc(ptr noundef %83, i64 noundef %90) #30
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = sext i32 %82 to i64
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = shl i64 %87, 32
  %97 = ashr exact i64 %96, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %95, ptr nonnull align 16 %3, i64 %97, i1 false)
  store ptr %91, ptr %7, align 8, !tbaa !20
  store i32 %89, ptr %37, align 8, !tbaa !22
  br label %98

98:                                               ; preds = %93, %86, %81
  %99 = phi i32 [ %89, %93 ], [ %82, %86 ], [ %82, %81 ]
  %100 = phi ptr [ %91, %93 ], [ %83, %86 ], [ %83, %81 ]
  %101 = and i32 %1, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %105 = load i64, ptr %104, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 10
  store i64 %105, ptr %106, align 8, !tbaa !36
  br label %250

107:                                              ; preds = %98
  %108 = load ptr, ptr %8, align 8, !tbaa !27
  %109 = load i64, ptr %10, align 8, !tbaa !28
  %110 = trunc i64 %109 to i32
  %111 = add nsw i32 %99, %110
  %112 = sext i32 %111 to i64
  %113 = tail call ptr @realloc(ptr noundef %100, i64 noundef %112) #30
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = sext i32 %99 to i64
  %117 = getelementptr inbounds i8, ptr %113, i64 %116
  %118 = shl i64 %109, 32
  %119 = ashr exact i64 %118, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %117, ptr align 1 %108, i64 %119, i1 false)
  store ptr %113, ptr %7, align 8, !tbaa !20
  store i32 %111, ptr %37, align 8, !tbaa !22
  br label %120

120:                                              ; preds = %107, %115
  %121 = phi i32 [ %99, %107 ], [ %111, %115 ]
  %122 = phi ptr [ %100, %107 ], [ %113, %115 ]
  %123 = load i1, ptr @maskmode, align 4
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = icmp eq i64 %24, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %124, %137
  %127 = phi i64 [ %141, %137 ], [ 0, %124 ]
  %128 = phi ptr [ %139, %137 ], [ %122, %124 ]
  %129 = phi i32 [ %138, %137 ], [ %121, %124 ]
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = tail call ptr @realloc(ptr noundef %128, i64 noundef %131) #30
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = sext i32 %129 to i64
  %136 = getelementptr inbounds i8, ptr %132, i64 %135
  store i8 42, ptr %136, align 1
  br label %137

137:                                              ; preds = %126, %134
  %138 = phi i32 [ %129, %126 ], [ %130, %134 ]
  %139 = phi ptr [ %128, %126 ], [ %132, %134 ]
  %140 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %23, i64 noundef %127, i64 noundef %24)
  %141 = add i64 %140, %127
  %142 = icmp ult i64 %141, %24
  br i1 %142, label %126, label %154, !llvm.loop !37

143:                                              ; preds = %120
  %144 = trunc i64 %24 to i32
  %145 = add nsw i32 %121, %144
  %146 = sext i32 %145 to i64
  %147 = tail call ptr @realloc(ptr noundef %122, i64 noundef %146) #30
  %148 = icmp eq ptr %147, null
  br i1 %148, label %157, label %149

149:                                              ; preds = %143
  %150 = sext i32 %121 to i64
  %151 = getelementptr inbounds i8, ptr %147, i64 %150
  %152 = shl i64 %24, 32
  %153 = ashr exact i64 %152, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %151, ptr align 1 %23, i64 %153, i1 false)
  br label %154

154:                                              ; preds = %124, %137, %149
  %155 = phi ptr [ %147, %149 ], [ %122, %124 ], [ %139, %137 ]
  %156 = phi i32 [ %145, %149 ], [ %121, %124 ], [ %138, %137 ]
  store ptr %155, ptr %7, align 8, !tbaa !20
  store i32 %156, ptr %37, align 8, !tbaa !22
  br label %157

157:                                              ; preds = %154, %143
  %158 = trunc i64 %12 to i32
  call void @refreshShowHints(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %158, i64 noundef %25)
  %159 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %160 = load i64, ptr %159, align 8, !tbaa !35
  %161 = icmp ne i64 %160, 0
  %162 = icmp eq i64 %26, %24
  %163 = and i1 %162, %161
  %164 = add i64 %27, %12
  br i1 %163, label %165, label %200

165:                                              ; preds = %157
  %166 = load i64, ptr %28, align 8, !tbaa !15
  %167 = urem i64 %164, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %200

169:                                              ; preds = %165
  %170 = load ptr, ptr %7, align 8, !tbaa !20
  %171 = load i32, ptr %37, align 8, !tbaa !22
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = tail call ptr @realloc(ptr noundef %170, i64 noundef %173) #30
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = sext i32 %171 to i64
  %178 = getelementptr inbounds i8, ptr %174, i64 %177
  store i8 10, ptr %178, align 1
  store ptr %174, ptr %7, align 8, !tbaa !20
  store i32 %172, ptr %37, align 8, !tbaa !22
  br label %179

179:                                              ; preds = %169, %176
  %180 = phi i32 [ %171, %169 ], [ %172, %176 ]
  %181 = phi ptr [ %170, %169 ], [ %174, %176 ]
  store i16 13, ptr %3, align 16
  %182 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %183 = trunc i64 %182 to i32
  %184 = add nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = tail call ptr @realloc(ptr noundef %181, i64 noundef %185) #30
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %179
  %189 = sext i32 %180 to i64
  %190 = getelementptr inbounds i8, ptr %186, i64 %189
  %191 = shl i64 %182, 32
  %192 = ashr exact i64 %191, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %190, ptr nonnull align 16 %3, i64 %192, i1 false)
  store ptr %186, ptr %7, align 8, !tbaa !20
  store i32 %184, ptr %37, align 8, !tbaa !22
  br label %193

193:                                              ; preds = %179, %188
  %194 = add nsw i32 %34, 1
  %195 = load i64, ptr %15, align 8, !tbaa !30
  %196 = trunc i64 %195 to i32
  %197 = icmp slt i32 %34, %196
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = sext i32 %194 to i64
  store i64 %199, ptr %15, align 8, !tbaa !30
  br label %200

200:                                              ; preds = %157, %193, %198, %165
  %201 = phi i32 [ %194, %193 ], [ %194, %198 ], [ %34, %165 ], [ %34, %157 ]
  %202 = load i64, ptr %28, align 8, !tbaa !15
  %203 = add i64 %202, %164
  %204 = udiv i64 %203, %202
  %205 = trunc i64 %204 to i32
  %206 = sub nsw i32 %201, %205
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %200
  %209 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64, ptr noundef nonnull @.str.19, i32 noundef %206) #27
  %210 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %211 = trunc i64 %210 to i32
  %212 = load ptr, ptr %7, align 8, !tbaa !20
  %213 = load i32, ptr %37, align 8, !tbaa !22
  %214 = add nsw i32 %213, %211
  %215 = sext i32 %214 to i64
  %216 = tail call ptr @realloc(ptr noundef %212, i64 noundef %215) #30
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %208
  %219 = sext i32 %213 to i64
  %220 = getelementptr inbounds i8, ptr %216, i64 %219
  %221 = shl i64 %210, 32
  %222 = ashr exact i64 %221, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %220, ptr nonnull align 16 %3, i64 %222, i1 false)
  store ptr %216, ptr %7, align 8, !tbaa !20
  store i32 %214, ptr %37, align 8, !tbaa !22
  br label %223

223:                                              ; preds = %218, %208, %200
  %224 = load i64, ptr %28, align 8, !tbaa !15
  %225 = urem i64 %164, %224
  %226 = trunc i64 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %226) #27
  br label %231

230:                                              ; preds = %223
  store i16 13, ptr %3, align 16
  br label %231

231:                                              ; preds = %230, %228
  %232 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %233 = trunc i64 %232 to i32
  %234 = load ptr, ptr %7, align 8, !tbaa !20
  %235 = load i32, ptr %37, align 8, !tbaa !22
  %236 = add nsw i32 %235, %233
  %237 = sext i32 %236 to i64
  %238 = tail call ptr @realloc(ptr noundef %234, i64 noundef %237) #30
  %239 = icmp eq ptr %238, null
  br i1 %239, label %245, label %240

240:                                              ; preds = %231
  %241 = sext i32 %235 to i64
  %242 = getelementptr inbounds i8, ptr %238, i64 %241
  %243 = shl i64 %232, 32
  %244 = ashr exact i64 %243, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %242, ptr nonnull align 16 %3, i64 %244, i1 false)
  br label %245

245:                                              ; preds = %240, %231
  %246 = phi i32 [ %236, %240 ], [ %235, %231 ]
  %247 = phi ptr [ %238, %240 ], [ %234, %231 ]
  %248 = load i64, ptr %159, align 8, !tbaa !35
  %249 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 10
  store i64 %248, ptr %249, align 8, !tbaa !36
  store i32 %205, ptr %13, align 8, !tbaa !29
  br label %250

250:                                              ; preds = %103, %245
  %251 = phi i32 [ %99, %103 ], [ %246, %245 ]
  %252 = phi ptr [ %100, %103 ], [ %247, %245 ]
  %253 = sext i32 %251 to i64
  %254 = tail call i64 @write(i32 noundef %19, ptr noundef %252, i64 noundef %253) #27
  tail call void @free(ptr noundef %252) #27
  tail call void @free(ptr noundef %23) #27
  br label %255

255:                                              ; preds = %2, %250
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @refreshSingleLine(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.abuf, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %8 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !28
  %12 = tail call fastcc i64 @utf8StrWidth(ptr noundef %9, i64 noundef %11)
  %13 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr null, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  %15 = call fastcc i32 @linenoiseRenderBuffer(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !32
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %287, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !tbaa !9
  %19 = load i64, ptr %6, align 8, !tbaa !33
  %20 = tail call fastcc i64 @utf8StrWidth(ptr noundef %18, i64 noundef %19)
  %21 = load i64, ptr %5, align 8, !tbaa !33
  %22 = tail call fastcc i64 @utf8StrWidth(ptr noundef %18, i64 noundef %21)
  %23 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !15
  %25 = add i64 %20, %12
  %26 = icmp ult i64 %25, %24
  br i1 %26, label %27, label %35

27:                                               ; preds = %97, %17
  %28 = phi i64 [ %19, %17 ], [ %101, %97 ]
  %29 = phi i64 [ %21, %17 ], [ %100, %97 ]
  %30 = phi i64 [ %22, %17 ], [ %104, %97 ]
  %31 = phi ptr [ %18, %17 ], [ %99, %97 ]
  %32 = phi i64 [ %25, %17 ], [ %105, %97 ]
  store i64 %29, ptr %5, align 8, !tbaa !33
  store i64 %28, ptr %6, align 8, !tbaa !33
  %33 = add i64 %30, %12
  %34 = icmp ugt i64 %33, %24
  br i1 %34, label %107, label %176

35:                                               ; preds = %17, %97
  %36 = phi ptr [ %99, %97 ], [ %18, %17 ]
  %37 = phi i64 [ %103, %97 ], [ %20, %17 ]
  %38 = phi i64 [ %104, %97 ], [ %22, %17 ]
  %39 = phi i64 [ %100, %97 ], [ %21, %17 ]
  %40 = phi i64 [ %101, %97 ], [ %19, %17 ]
  %41 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %36, i64 noundef 0, i64 noundef %39)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %97, label %43

43:                                               ; preds = %35
  %44 = load i8, ptr %36, align 1, !tbaa !18
  %45 = zext i8 %44 to i32
  %46 = icmp sgt i8 %44, -1
  br i1 %46, label %94, label %47

47:                                               ; preds = %43
  %48 = and i32 %45, 224
  %49 = icmp eq i32 %48, 192
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = and i8 %44, 31
  %52 = zext nneg i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 6
  br label %86

54:                                               ; preds = %47
  %55 = and i32 %45, 240
  %56 = icmp eq i32 %55, 224
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = and i8 %44, 15
  %59 = zext nneg i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 12
  %61 = getelementptr inbounds i8, ptr %36, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !18
  %63 = and i8 %62, 63
  %64 = zext nneg i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 6
  %66 = or disjoint i32 %65, %60
  br label %86

67:                                               ; preds = %54
  %68 = and i32 %45, 248
  %69 = icmp eq i32 %68, 240
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = and i8 %44, 7
  %72 = zext nneg i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 18
  %74 = getelementptr inbounds i8, ptr %36, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !18
  %76 = and i8 %75, 63
  %77 = zext nneg i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 12
  %79 = or disjoint i32 %78, %73
  %80 = getelementptr inbounds i8, ptr %36, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !18
  %82 = and i8 %81, 63
  %83 = zext nneg i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 6
  %85 = or disjoint i32 %79, %84
  br label %86

86:                                               ; preds = %70, %57, %50
  %87 = phi i64 [ 1, %50 ], [ 2, %57 ], [ 3, %70 ]
  %88 = phi i32 [ %53, %50 ], [ %66, %57 ], [ %85, %70 ]
  %89 = getelementptr inbounds i8, ptr %36, i64 %87
  %90 = load i8, ptr %89, align 1, !tbaa !18
  %91 = and i8 %90, 63
  %92 = zext nneg i8 %91 to i32
  %93 = or disjoint i32 %88, %92
  br label %94

94:                                               ; preds = %86, %67, %43
  %95 = phi i32 [ %45, %43 ], [ %45, %67 ], [ %93, %86 ]
  %96 = tail call fastcc i32 @utf8CharWidth(i32 noundef %95), !range !19
  br label %97

97:                                               ; preds = %35, %94
  %98 = phi i32 [ %96, %94 ], [ 0, %35 ]
  %99 = getelementptr inbounds i8, ptr %36, i64 %41
  %100 = sub i64 %39, %41
  %101 = sub i64 %40, %41
  %102 = zext nneg i32 %98 to i64
  %103 = sub i64 %37, %102
  %104 = sub i64 %38, %102
  %105 = add i64 %103, %12
  %106 = icmp ult i64 %105, %24
  br i1 %106, label %27, label %35, !llvm.loop !38

107:                                              ; preds = %27, %169
  %108 = phi i64 [ %173, %169 ], [ %30, %27 ]
  %109 = phi i64 [ %171, %169 ], [ %29, %27 ]
  %110 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %31, i64 noundef %109)
  %111 = getelementptr inbounds i8, ptr %31, i64 %109
  %112 = sub i64 0, %110
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  %114 = icmp eq i64 %110, 0
  br i1 %114, label %169, label %115

115:                                              ; preds = %107
  %116 = load i8, ptr %113, align 1, !tbaa !18
  %117 = zext i8 %116 to i32
  %118 = icmp sgt i8 %116, -1
  br i1 %118, label %166, label %119

119:                                              ; preds = %115
  %120 = and i32 %117, 224
  %121 = icmp eq i32 %120, 192
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = and i8 %116, 31
  %124 = zext nneg i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 6
  br label %158

126:                                              ; preds = %119
  %127 = and i32 %117, 240
  %128 = icmp eq i32 %127, 224
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = and i8 %116, 15
  %131 = zext nneg i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 12
  %133 = getelementptr inbounds i8, ptr %113, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !18
  %135 = and i8 %134, 63
  %136 = zext nneg i8 %135 to i32
  %137 = shl nuw nsw i32 %136, 6
  %138 = or disjoint i32 %137, %132
  br label %158

139:                                              ; preds = %126
  %140 = and i32 %117, 248
  %141 = icmp eq i32 %140, 240
  br i1 %141, label %142, label %166

142:                                              ; preds = %139
  %143 = and i8 %116, 7
  %144 = zext nneg i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 18
  %146 = getelementptr inbounds i8, ptr %113, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !18
  %148 = and i8 %147, 63
  %149 = zext nneg i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 12
  %151 = or disjoint i32 %150, %145
  %152 = getelementptr inbounds i8, ptr %113, i64 2
  %153 = load i8, ptr %152, align 1, !tbaa !18
  %154 = and i8 %153, 63
  %155 = zext nneg i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 6
  %157 = or disjoint i32 %151, %156
  br label %158

158:                                              ; preds = %142, %129, %122
  %159 = phi i64 [ 1, %122 ], [ 2, %129 ], [ 3, %142 ]
  %160 = phi i32 [ %125, %122 ], [ %138, %129 ], [ %157, %142 ]
  %161 = getelementptr inbounds i8, ptr %113, i64 %159
  %162 = load i8, ptr %161, align 1, !tbaa !18
  %163 = and i8 %162, 63
  %164 = zext nneg i8 %163 to i32
  %165 = or disjoint i32 %160, %164
  br label %166

166:                                              ; preds = %158, %139, %115
  %167 = phi i32 [ %117, %115 ], [ %117, %139 ], [ %165, %158 ]
  %168 = tail call fastcc i32 @utf8CharWidth(i32 noundef %167), !range !19
  br label %169

169:                                              ; preds = %107, %166
  %170 = phi i32 [ %168, %166 ], [ 0, %107 ]
  %171 = sub i64 %109, %110
  store i64 %171, ptr %5, align 8, !tbaa !33
  %172 = zext nneg i32 %170 to i64
  %173 = sub i64 %108, %172
  %174 = add i64 %173, %12
  %175 = icmp ugt i64 %174, %24
  br i1 %175, label %107, label %176, !llvm.loop !39

176:                                              ; preds = %169, %27
  %177 = phi i64 [ %29, %27 ], [ %171, %169 ]
  store ptr null, ptr %7, align 8, !tbaa !20
  %178 = getelementptr inbounds %struct.abuf, ptr %7, i64 0, i32 1
  store i32 0, ptr %178, align 8, !tbaa !22
  store i16 13, ptr %3, align 16
  %179 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %180 = shl i64 %179, 32
  %181 = ashr exact i64 %180, 32
  %182 = tail call ptr @malloc(i64 %181)
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %176
  %185 = trunc i64 %179 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %182, ptr nonnull align 16 %3, i64 %181, i1 false)
  store ptr %182, ptr %7, align 8, !tbaa !20
  store i32 %185, ptr %178, align 8, !tbaa !22
  br label %186

186:                                              ; preds = %176, %184
  %187 = phi i32 [ 0, %176 ], [ %185, %184 ]
  %188 = and i32 %1, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %266, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %8, align 8, !tbaa !27
  %192 = load i64, ptr %10, align 8, !tbaa !28
  %193 = trunc i64 %192 to i32
  %194 = add nsw i32 %187, %193
  %195 = sext i32 %194 to i64
  %196 = tail call ptr @realloc(ptr noundef %182, i64 noundef %195) #30
  %197 = icmp eq ptr %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %190
  %199 = sext i32 %187 to i64
  %200 = getelementptr inbounds i8, ptr %196, i64 %199
  %201 = shl i64 %192, 32
  %202 = ashr exact i64 %201, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %200, ptr align 1 %191, i64 %202, i1 false)
  store ptr %196, ptr %7, align 8, !tbaa !20
  store i32 %194, ptr %178, align 8, !tbaa !22
  br label %203

203:                                              ; preds = %190, %198
  %204 = phi i32 [ %187, %190 ], [ %194, %198 ]
  %205 = phi ptr [ %182, %190 ], [ %196, %198 ]
  %206 = load i1, ptr @maskmode, align 4
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = icmp eq i64 %177, 0
  br i1 %208, label %237, label %209

209:                                              ; preds = %207, %220
  %210 = phi i64 [ %224, %220 ], [ 0, %207 ]
  %211 = phi ptr [ %222, %220 ], [ %205, %207 ]
  %212 = phi i32 [ %221, %220 ], [ %204, %207 ]
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = tail call ptr @realloc(ptr noundef %211, i64 noundef %214) #30
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = sext i32 %212 to i64
  %219 = getelementptr inbounds i8, ptr %215, i64 %218
  store i8 42, ptr %219, align 1
  br label %220

220:                                              ; preds = %209, %217
  %221 = phi i32 [ %212, %209 ], [ %213, %217 ]
  %222 = phi ptr [ %211, %209 ], [ %215, %217 ]
  %223 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %31, i64 noundef %210, i64 noundef %177)
  %224 = add i64 %223, %210
  %225 = icmp ult i64 %224, %177
  br i1 %225, label %209, label %237, !llvm.loop !40

226:                                              ; preds = %203
  %227 = trunc i64 %177 to i32
  %228 = add nsw i32 %204, %227
  %229 = sext i32 %228 to i64
  %230 = tail call ptr @realloc(ptr noundef %205, i64 noundef %229) #30
  %231 = icmp eq ptr %230, null
  br i1 %231, label %240, label %232

232:                                              ; preds = %226
  %233 = sext i32 %204 to i64
  %234 = getelementptr inbounds i8, ptr %230, i64 %233
  %235 = shl i64 %177, 32
  %236 = ashr exact i64 %235, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %234, ptr align 1 %31, i64 %236, i1 false)
  br label %237

237:                                              ; preds = %207, %220, %232
  %238 = phi ptr [ %230, %232 ], [ %205, %207 ], [ %222, %220 ]
  %239 = phi i32 [ %228, %232 ], [ %204, %207 ], [ %221, %220 ]
  store ptr %238, ptr %7, align 8, !tbaa !20
  store i32 %239, ptr %178, align 8, !tbaa !22
  br label %240

240:                                              ; preds = %237, %226
  %241 = trunc i64 %12 to i32
  call void @refreshShowHints(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %241, i64 noundef %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %242 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %243 = trunc i64 %242 to i32
  %244 = load ptr, ptr %7, align 8, !tbaa !20
  %245 = load i32, ptr %178, align 8, !tbaa !22
  %246 = add nsw i32 %245, %243
  %247 = sext i32 %246 to i64
  %248 = tail call ptr @realloc(ptr noundef %244, i64 noundef %247) #30
  %249 = icmp eq ptr %248, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %240
  %251 = sext i32 %245 to i64
  %252 = getelementptr inbounds i8, ptr %248, i64 %251
  %253 = shl i64 %242, 32
  %254 = ashr exact i64 %253, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 16 %3, i64 %254, i1 false)
  br label %255

255:                                              ; preds = %250, %240
  %256 = phi i32 [ %246, %250 ], [ %245, %240 ]
  %257 = phi ptr [ %248, %250 ], [ %244, %240 ]
  %258 = trunc i64 %32 to i32
  %259 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %258) #27
  %260 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %261 = trunc i64 %260 to i32
  %262 = add nsw i32 %256, %261
  %263 = sext i32 %262 to i64
  %264 = tail call ptr @realloc(ptr noundef %257, i64 noundef %263) #30
  %265 = icmp eq ptr %264, null
  br i1 %265, label %282, label %273

266:                                              ; preds = %186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %267 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %268 = trunc i64 %267 to i32
  %269 = add nsw i32 %187, %268
  %270 = sext i32 %269 to i64
  %271 = tail call ptr @realloc(ptr noundef %182, i64 noundef %270) #30
  %272 = icmp eq ptr %271, null
  br i1 %272, label %282, label %273

273:                                              ; preds = %266, %255
  %274 = phi i32 [ %256, %255 ], [ %187, %266 ]
  %275 = phi ptr [ %264, %255 ], [ %271, %266 ]
  %276 = phi i64 [ %260, %255 ], [ %267, %266 ]
  %277 = phi i32 [ %262, %255 ], [ %269, %266 ]
  %278 = sext i32 %274 to i64
  %279 = getelementptr inbounds i8, ptr %275, i64 %278
  %280 = shl i64 %276, 32
  %281 = ashr exact i64 %280, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %279, ptr nonnull align 16 %3, i64 %281, i1 false)
  br label %282

282:                                              ; preds = %273, %266, %255
  %283 = phi i32 [ %187, %266 ], [ %256, %255 ], [ %277, %273 ]
  %284 = phi ptr [ %182, %266 ], [ %257, %255 ], [ %275, %273 ]
  %285 = sext i32 %283 to i64
  %286 = tail call i64 @write(i32 noundef %14, ptr noundef %284, i64 noundef %285) #27
  tail call void @free(ptr noundef %284) #27
  tail call void @free(ptr noundef %18) #27
  br label %287

287:                                              ; preds = %2, %282
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseShow(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !41
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @refreshLineWithCompletion(ptr noundef nonnull %0, ptr noundef null, i32 noundef 2)
  br label %10

5:                                                ; preds = %1
  %6 = load i32, ptr @mlmode, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 2)
  br label %10

9:                                                ; preds = %5
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 2)
  br label %10

10:                                               ; preds = %9, %8, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @refreshLineWithCompletion(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #10 {
  %4 = alloca %struct.linenoiseCompletions, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr @completionCallback, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  call void %7(ptr noundef %9, ptr noundef nonnull %4) #27
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %4, %6 ], [ %1, %3 ]
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = load i64, ptr %11, align 8, !tbaa !14
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = getelementptr inbounds i8, ptr %0, i64 24
  %18 = load ptr, ptr %17, align 8, !tbaa.struct !43
  %19 = getelementptr inbounds i8, ptr %0, i64 64
  %20 = load i64, ptr %19, align 8, !tbaa.struct !44
  %21 = getelementptr inbounds i8, ptr %0, i64 80
  %22 = load i64, ptr %21, align 8, !tbaa.struct !45
  %23 = getelementptr inbounds i8, ptr %0, i64 112
  %24 = load i32, ptr %23, align 8, !tbaa.struct !46
  %25 = getelementptr inbounds %struct.linenoiseCompletions, ptr %11, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds ptr, ptr %26, i64 %13
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #28
  store i64 %29, ptr %19, align 8, !tbaa !35
  store i64 %29, ptr %21, align 8, !tbaa !47
  store ptr %28, ptr %17, align 8, !tbaa !17
  store i32 0, ptr %23, align 8, !tbaa !48
  %30 = load i32, ptr @mlmode, align 4, !tbaa !5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef %2)
  br label %34

33:                                               ; preds = %16
  call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef %2)
  br label %34

34:                                               ; preds = %32, %33
  store i64 %22, ptr %21, align 8, !tbaa !47
  store i64 %20, ptr %19, align 8, !tbaa !35
  store ptr %18, ptr %17, align 8, !tbaa !17
  store i32 %24, ptr %23, align 8, !tbaa !48
  br label %40

35:                                               ; preds = %10
  %36 = load i32, ptr @mlmode, align 4, !tbaa !5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef %2)
  br label %40

39:                                               ; preds = %35
  call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef %2)
  br label %40

40:                                               ; preds = %39, %38, %34
  %41 = icmp eq ptr %11, %4
  br i1 %41, label %60, label %42

42:                                               ; preds = %40
  %43 = load i64, ptr %4, align 8, !tbaa !14
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i64 0, i32 1
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %52, %47 ]
  %49 = load ptr, ptr %46, align 8, !tbaa !11
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  call void @free(ptr noundef %51) #27
  %52 = add nuw i64 %48, 1
  %53 = load i64, ptr %4, align 8, !tbaa !14
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %47, label %55, !llvm.loop !49

55:                                               ; preds = %47, %42
  %56 = getelementptr inbounds %struct.linenoiseCompletions, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @free(ptr noundef nonnull %57) #27
  br label %60

60:                                               ; preds = %59, %55, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linenoiseEditInsert(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %5 = load i64, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %7 = load i64, ptr %6, align 8, !tbaa !35
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %9, label %60

9:                                                ; preds = %3
  %10 = tail call ptr @memchr(ptr noundef %1, i32 noundef 10, i64 noundef %2) #28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call ptr @memchr(ptr noundef %1, i32 noundef 13, i64 noundef %2) #28
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ true, %9 ], [ %14, %12 ]
  %17 = tail call fastcc i32 @linenoiseEditInsertNoRefresh(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2), !range !32
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr @mlmode, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %16, i1 true, i1 %21
  %23 = load ptr, ptr @hintsCallback, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %56, label %26

26:                                               ; preds = %19
  %27 = load i1, ptr @maskmode, align 4
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !48
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %28, %26
  %33 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = load i64, ptr %4, align 8, !tbaa !47
  %36 = tail call fastcc i64 @utf8StrWidth(ptr noundef %34, i64 noundef %35)
  %37 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !28
  %41 = tail call fastcc i64 @utf8StrWidth(ptr noundef %38, i64 noundef %40)
  %42 = add i64 %41, %36
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 12
  %44 = load i64, ptr %43, align 8, !tbaa !15
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !31
  br i1 %27, label %49, label %52

49:                                               ; preds = %46
  %50 = tail call i64 @write(i32 noundef %48, ptr noundef nonnull @.str.3, i64 noundef 1) #27
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %68, label %55

52:                                               ; preds = %46
  %53 = tail call i64 @write(i32 noundef %48, ptr noundef %1, i64 noundef %2) #27
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %68, label %55

55:                                               ; preds = %52, %49
  br label %68

56:                                               ; preds = %19
  %57 = icmp eq i32 %20, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %68

59:                                               ; preds = %28, %32, %56
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %68

60:                                               ; preds = %3
  %61 = tail call fastcc i32 @linenoiseEditInsertNoRefresh(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2), !range !32
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr @mlmode, align 4, !tbaa !5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %68

67:                                               ; preds = %63
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %68

68:                                               ; preds = %59, %58, %55, %49, %52, %66, %67, %15, %60
  %69 = phi i32 [ 0, %60 ], [ 0, %15 ], [ 0, %67 ], [ 0, %66 ], [ -1, %52 ], [ -1, %49 ], [ 0, %55 ], [ 0, %58 ], [ 0, %59 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @linenoiseEditInsertNoRefresh(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %7 = load i64, ptr %6, align 8, !tbaa !47
  %8 = xor i64 %7, -1
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %110, label %10

10:                                               ; preds = %3
  %11 = add i64 %7, %2
  %12 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !50
  %14 = icmp ult i64 %13, %11
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !51
  %18 = icmp ult i64 %17, %11
  br i1 %18, label %110, label %19

19:                                               ; preds = %15
  %20 = icmp eq i64 %13, 0
  %21 = select i1 %20, i64 16, i64 %13
  %22 = lshr i64 %17, 1
  %23 = icmp ult i64 %21, %11
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %27
  %25 = phi i64 [ %28, %27 ], [ %21, %19 ]
  %26 = icmp ugt i64 %25, %22
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = shl nuw i64 %25, 1
  %29 = icmp ult i64 %28, %11
  br i1 %29, label %24, label %30, !llvm.loop !52

30:                                               ; preds = %27, %24, %19
  %31 = phi i64 [ %21, %19 ], [ %28, %27 ], [ %17, %24 ]
  %32 = icmp ult i64 %31, %11
  %33 = icmp eq i64 %31, -1
  %34 = or i1 %32, %33
  br i1 %34, label %110, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = add nuw i64 %31, 1
  %39 = tail call ptr @realloc(ptr noundef %37, i64 noundef %38) #30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %110, label %41

41:                                               ; preds = %35
  store ptr %39, ptr %36, align 8, !tbaa !17
  store i64 %31, ptr %12, align 8, !tbaa !50
  %42 = load i64, ptr %6, align 8, !tbaa !47
  %43 = load i64, ptr %4, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %41, %10
  %45 = phi i64 [ %43, %41 ], [ %5, %10 ]
  %46 = phi i64 [ %42, %41 ], [ %7, %10 ]
  %47 = icmp eq i64 %46, %45
  %48 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = getelementptr inbounds i8, ptr %49, i64 %45
  br i1 %47, label %57, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %50, i64 %2
  %53 = sub i64 %46, %45
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %52, ptr align 1 %50, i64 %53, i1 false)
  %54 = load ptr, ptr %48, align 8, !tbaa !17
  %55 = load i64, ptr %4, align 8, !tbaa !35
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  br label %57

57:                                               ; preds = %44, %51
  %58 = phi ptr [ %56, %51 ], [ %50, %44 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %1, i64 %2, i1 false)
  %59 = load i64, ptr %4, align 8, !tbaa !35
  %60 = add i64 %59, %2
  store i64 %60, ptr %4, align 8, !tbaa !35
  %61 = load i64, ptr %6, align 8, !tbaa !47
  %62 = add i64 %61, %2
  store i64 %62, ptr %6, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  %65 = getelementptr inbounds i8, ptr %64, i64 %62
  store i8 0, ptr %65, align 1, !tbaa !18
  %66 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17
  %71 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18
  br label %72

72:                                               ; preds = %106, %69
  %73 = phi i32 [ %67, %69 ], [ %107, %106 ]
  %74 = phi i32 [ 0, %69 ], [ %108, %106 ]
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !33
  %78 = icmp ult i64 %77, %5
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = add i64 %77, %2
  store i64 %80, ptr %76, align 8, !tbaa !33
  %81 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %75
  %82 = load i64, ptr %81, align 8, !tbaa !33
  %83 = add i64 %82, %2
  store i64 %83, ptr %81, align 8, !tbaa !33
  %84 = add nsw i32 %74, 1
  br label %106

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %75
  %87 = load i64, ptr %86, align 8, !tbaa !33
  %88 = icmp ugt i64 %87, %5
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = getelementptr inbounds i64, ptr %70, i64 %75
  %91 = getelementptr inbounds i64, ptr %90, i64 1
  %92 = xor i32 %74, -1
  %93 = add i32 %73, %92
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %90, ptr nonnull align 8 %91, i64 %95, i1 false)
  %96 = getelementptr inbounds i64, ptr %71, i64 %75
  %97 = getelementptr inbounds i64, ptr %96, i64 1
  %98 = load i32, ptr %66, align 8, !tbaa !48
  %99 = add i32 %98, %92
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %96, ptr nonnull align 8 %97, i64 %101, i1 false)
  %102 = load i32, ptr %66, align 8, !tbaa !48
  %103 = add nsw i32 %102, -1
  store i32 %103, ptr %66, align 8, !tbaa !48
  br label %106

104:                                              ; preds = %85
  %105 = add nsw i32 %74, 1
  br label %106

106:                                              ; preds = %104, %89, %79
  %107 = phi i32 [ %73, %79 ], [ %103, %89 ], [ %73, %104 ]
  %108 = phi i32 [ %84, %79 ], [ %74, %89 ], [ %105, %104 ]
  %109 = icmp slt i32 %108, %107
  br i1 %109, label %72, label %110, !llvm.loop !53

110:                                              ; preds = %106, %35, %30, %15, %57, %3
  %111 = phi i32 [ -1, %3 ], [ 0, %57 ], [ -1, %15 ], [ -1, %30 ], [ -1, %35 ], [ 0, %106 ]
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal fastcc void @refreshLine(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr @mlmode, align 4, !tbaa !5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @refreshMultiLine(ptr noundef %0, i32 noundef 3)
  br label %6

5:                                                ; preds = %1
  tail call fastcc void @refreshSingleLine(ptr noundef %0, i32 noundef 3)
  br label %6

6:                                                ; preds = %4, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditMoveLeft(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseFolds, align 8
  %3 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %2) #27
  %7 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 8, !tbaa !55
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = zext nneg i32 %10 to i64
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %13
  br i1 %16, label %26, label %17, !llvm.loop !57

17:                                               ; preds = %14, %12
  %18 = phi i64 [ 0, %12 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %18, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !58
  %21 = icmp eq i64 %20, %4
  br i1 %21, label %22, label %14

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %18
  %24 = load i64, ptr %23, align 8, !tbaa !60
  %25 = sub i64 %4, %24
  br label %30

26:                                               ; preds = %14, %9, %6
  %27 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %28, i64 noundef %4)
  br label %30

30:                                               ; preds = %22, %26
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %2) #27
  %32 = load i64, ptr %3, align 8, !tbaa !35
  %33 = sub i64 %32, %31
  store i64 %33, ptr %3, align 8, !tbaa !35
  %34 = load i32, ptr @mlmode, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %38

37:                                               ; preds = %30
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %38

38:                                               ; preds = %37, %36, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @linenoiseEditPrevLen(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.linenoiseFolds, align 8
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %3) #27
  %4 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef %0, ptr noundef nonnull %3), !range !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !55
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %23, label %14, !llvm.loop !57

14:                                               ; preds = %9, %11
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %15, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %15
  %21 = load i64, ptr %20, align 8, !tbaa !60
  %22 = sub i64 %1, %21
  br label %27

23:                                               ; preds = %11, %6, %2
  %24 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %25, i64 noundef %1)
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %22, %19 ], [ %26, %23 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %3) #27
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditMoveRight(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseFolds, align 8
  %3 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %6 = load i64, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %2) #27
  %9 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 8, !tbaa !55
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %28, label %19, !llvm.loop !61

19:                                               ; preds = %16, %14
  %20 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !60
  %23 = icmp eq i64 %22, %4
  br i1 %23, label %24, label %16

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %20, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = sub i64 %26, %4
  br label %33

28:                                               ; preds = %16, %11, %8
  %29 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = load i64, ptr %5, align 8, !tbaa !47
  %32 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %30, i64 noundef %4, i64 noundef %31)
  br label %33

33:                                               ; preds = %24, %28
  %34 = phi i64 [ %27, %24 ], [ %32, %28 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %2) #27
  %35 = load i64, ptr %3, align 8, !tbaa !35
  %36 = add i64 %35, %34
  store i64 %36, ptr %3, align 8, !tbaa !35
  %37 = load i32, ptr @mlmode, align 4, !tbaa !5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %41

40:                                               ; preds = %33
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %41

41:                                               ; preds = %40, %39, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @linenoiseEditNextLen(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.linenoiseFolds, align 8
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %3) #27
  %4 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef %0, ptr noundef nonnull %3), !range !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !55
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %23, label %14, !llvm.loop !61

14:                                               ; preds = %9, %11
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !60
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %15, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !58
  %22 = sub i64 %21, %1
  br label %29

23:                                               ; preds = %11, %6, %2
  %24 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %27 = load i64, ptr %26, align 8, !tbaa !47
  %28 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %25, i64 noundef %1, i64 noundef %27)
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i64 [ %22, %19 ], [ %28, %23 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %3) #27
  ret i64 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditMoveHome(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !35
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !tbaa !35
  %6 = load i32, ptr @mlmode, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %10

9:                                                ; preds = %5
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %10

10:                                               ; preds = %9, %8, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditMoveEnd(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %3 = load i64, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %5 = load i64, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  store i64 %5, ptr %2, align 8, !tbaa !35
  %8 = load i32, ptr @mlmode, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %12

11:                                               ; preds = %7
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %12

12:                                               ; preds = %11, %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditHistoryNext(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = alloca %struct.linenoiseFold, align 8
  %4 = load i32, ptr @history_len, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %232

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #27
  %7 = load ptr, ptr @history, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = xor i32 %9, -1
  %11 = add i32 %4, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %7, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  tail call void @free(ptr noundef %14) #27
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = tail call noalias ptr @strdup(ptr noundef %16) #27
  %18 = load i32, ptr %8, align 4, !tbaa !62
  %19 = xor i32 %18, -1
  %20 = add i32 %4, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %7, i64 %21
  store ptr %17, ptr %22, align 8, !tbaa !9
  %23 = icmp eq i32 %1, 1
  %24 = select i1 %23, i32 1, i32 -1
  %25 = add nsw i32 %18, %24
  store i32 %25, ptr %8, align 4, !tbaa !62
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, ptr %8, align 4, !tbaa !62
  br label %231

28:                                               ; preds = %6
  %29 = icmp ult i32 %25, %4
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %4, -1
  store i32 %31, ptr %8, align 4, !tbaa !62
  br label %231

32:                                               ; preds = %28
  %33 = xor i32 %25, -1
  %34 = add nsw i32 %4, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %7, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #28
  %39 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  %40 = load i64, ptr %39, align 8, !tbaa !50
  %41 = icmp ult i64 %40, %38
  br i1 %41, label %42, label %73

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 6
  %44 = load i64, ptr %43, align 8, !tbaa !51
  %45 = icmp ult i64 %44, %38
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = icmp eq i64 %40, 0
  %48 = select i1 %47, i64 16, i64 %40
  %49 = lshr i64 %44, 1
  %50 = icmp ult i64 %48, %38
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %54
  %52 = phi i64 [ %55, %54 ], [ %48, %46 ]
  %53 = icmp ugt i64 %52, %49
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = shl nuw i64 %52, 1
  %56 = icmp ult i64 %55, %38
  br i1 %56, label %51, label %57, !llvm.loop !52

57:                                               ; preds = %54, %51, %46
  %58 = phi i64 [ %48, %46 ], [ %55, %54 ], [ %44, %51 ]
  %59 = icmp ult i64 %58, %38
  %60 = icmp eq i64 %58, -1
  %61 = or i1 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %15, align 8, !tbaa !17
  %64 = add nuw i64 %58, 1
  %65 = tail call ptr @realloc(ptr noundef %63, i64 noundef %64) #30
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, ptr %39, align 8, !tbaa !50
  br label %70

69:                                               ; preds = %62
  store ptr %65, ptr %15, align 8, !tbaa !17
  store i64 %58, ptr %39, align 8, !tbaa !50
  br label %73

70:                                               ; preds = %67, %42, %57
  %71 = phi i64 [ %68, %67 ], [ %40, %42 ], [ %40, %57 ]
  %72 = tail call i64 @llvm.umin.i64(i64 %38, i64 %71)
  br label %73

73:                                               ; preds = %69, %32, %70
  %74 = phi i64 [ %72, %70 ], [ %38, %32 ], [ %38, %69 ]
  %75 = load ptr, ptr %15, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %75, ptr align 1 %37, i64 %74, i1 false)
  %76 = load ptr, ptr %15, align 8, !tbaa !17
  %77 = getelementptr inbounds i8, ptr %76, i64 %74
  store i8 0, ptr %77, align 1, !tbaa !18
  %78 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  store i64 %74, ptr %78, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  store i64 %74, ptr %79, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  store i32 0, ptr %80, align 8, !tbaa !48
  %81 = getelementptr inbounds %struct.linenoiseFold, ptr %3, i64 0, i32 1
  store i64 0, ptr %3, align 8
  %82 = icmp eq i64 %74, 0
  %83 = load i1, ptr @maskmode, align 4
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %226, label %85

85:                                               ; preds = %73
  %86 = load ptr, ptr %15, align 8, !tbaa !17
  %87 = tail call ptr @memchr(ptr noundef %86, i32 noundef 10, i64 noundef %74) #28
  %88 = icmp eq ptr %87, null
  %89 = icmp ult i64 %74, 200
  %90 = and i1 %89, %88
  br i1 %90, label %226, label %91

91:                                               ; preds = %85
  store i64 %74, ptr %81, align 8, !tbaa !58
  %92 = icmp ugt i64 %74, 16
  br i1 %92, label %93, label %146

93:                                               ; preds = %91, %102
  %94 = phi i64 [ %100, %102 ], [ 0, %91 ]
  %95 = phi i32 [ %106, %102 ], [ 0, %91 ]
  %96 = phi i64 [ %107, %102 ], [ 0, %91 ]
  %97 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %86, i64 noundef %94, i64 noundef %74)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = add i64 %97, %94
  %101 = icmp ugt i64 %100, %74
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, ptr %86, i64 %94
  %104 = load i8, ptr %103, align 1, !tbaa !18
  %105 = icmp eq i8 %104, 10
  %106 = select i1 %105, i32 1, i32 %95
  %107 = add nuw nsw i64 %96, 1
  %108 = icmp ult i64 %100, %74
  %109 = icmp ult i64 %96, 7
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %93, label %111

111:                                              ; preds = %102, %99, %93
  %112 = phi i32 [ %95, %93 ], [ %95, %99 ], [ %106, %102 ]
  %113 = phi i64 [ %94, %93 ], [ %94, %99 ], [ %100, %102 ]
  %114 = icmp eq i32 %112, 0
  %115 = select i1 %114, i64 %113, i64 0
  store i64 %115, ptr %3, align 8, !tbaa !60
  br label %116

116:                                              ; preds = %123, %111
  %117 = phi i64 [ %74, %111 ], [ %124, %123 ]
  %118 = phi i32 [ 0, %111 ], [ %128, %123 ]
  %119 = phi i64 [ 0, %111 ], [ %129, %123 ]
  %120 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %86, i64 noundef %117)
  %121 = add i64 %120, -1
  %122 = icmp ult i64 %121, %117
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = sub i64 %117, %120
  %125 = getelementptr inbounds i8, ptr %86, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !18
  %127 = icmp eq i8 %126, 10
  %128 = select i1 %127, i32 1, i32 %118
  %129 = add nuw nsw i64 %119, 1
  %130 = icmp ne i64 %124, 0
  %131 = icmp ult i64 %119, 7
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %116, label %133

133:                                              ; preds = %123, %116
  %134 = phi i32 [ %118, %116 ], [ %128, %123 ]
  %135 = phi i64 [ %117, %116 ], [ %124, %123 ]
  %136 = icmp eq i32 %134, 0
  %137 = select i1 %136, i64 %135, i64 %74
  store i64 %137, ptr %81, align 8, !tbaa !58
  %138 = icmp ult i64 %115, %137
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  store i64 0, ptr %3, align 8, !tbaa !60
  store i64 %74, ptr %81, align 8, !tbaa !58
  br label %140

140:                                              ; preds = %139, %133
  %141 = phi i64 [ %115, %133 ], [ 0, %139 ]
  %142 = phi i64 [ %137, %133 ], [ %74, %139 ]
  %143 = sub i64 %142, %141
  %144 = getelementptr inbounds i8, ptr %86, i64 %141
  %145 = icmp eq i64 %142, %141
  br i1 %145, label %191, label %146

146:                                              ; preds = %140, %91
  %147 = phi ptr [ %144, %140 ], [ %86, %91 ]
  %148 = phi i64 [ %143, %140 ], [ %74, %91 ]
  %149 = icmp ult i64 %148, 4
  br i1 %149, label %172, label %150

150:                                              ; preds = %146
  %151 = and i64 %148, -4
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi i64 [ 0, %150 ], [ %166, %152 ]
  %154 = phi <2 x i64> [ <i64 1, i64 0>, %150 ], [ %164, %152 ]
  %155 = phi <2 x i64> [ zeroinitializer, %150 ], [ %165, %152 ]
  %156 = getelementptr inbounds i8, ptr %147, i64 %153
  %157 = getelementptr inbounds i8, ptr %156, i64 2
  %158 = load <2 x i8>, ptr %156, align 1, !tbaa !18
  %159 = load <2 x i8>, ptr %157, align 1, !tbaa !18
  %160 = icmp eq <2 x i8> %158, <i8 10, i8 10>
  %161 = icmp eq <2 x i8> %159, <i8 10, i8 10>
  %162 = zext <2 x i1> %160 to <2 x i64>
  %163 = zext <2 x i1> %161 to <2 x i64>
  %164 = add <2 x i64> %154, %162
  %165 = add <2 x i64> %155, %163
  %166 = add nuw i64 %153, 4
  %167 = icmp eq i64 %166, %151
  br i1 %167, label %168, label %152, !llvm.loop !63

168:                                              ; preds = %152
  %169 = add <2 x i64> %165, %164
  %170 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %169)
  %171 = icmp eq i64 %148, %151
  br i1 %171, label %185, label %172

172:                                              ; preds = %146, %168
  %173 = phi i64 [ 0, %146 ], [ %151, %168 ]
  %174 = phi i64 [ 1, %146 ], [ %170, %168 ]
  br label %175

175:                                              ; preds = %172, %175
  %176 = phi i64 [ %183, %175 ], [ %173, %172 ]
  %177 = phi i64 [ %182, %175 ], [ %174, %172 ]
  %178 = getelementptr inbounds i8, ptr %147, i64 %176
  %179 = load i8, ptr %178, align 1, !tbaa !18
  %180 = icmp eq i8 %179, 10
  %181 = zext i1 %180 to i64
  %182 = add i64 %177, %181
  %183 = add nuw i64 %176, 1
  %184 = icmp eq i64 %183, %148
  br i1 %184, label %185, label %175, !llvm.loop !66

185:                                              ; preds = %175, %168
  %186 = phi i64 [ %170, %168 ], [ %182, %175 ]
  %187 = icmp ugt i64 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.linenoiseFold, ptr %3, i64 0, i32 2
  %190 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %189, i64 noundef 64, ptr noundef nonnull @.str.21, i64 noundef %186) #27
  br label %195

191:                                              ; preds = %185, %140
  %192 = phi i64 [ %148, %185 ], [ %143, %140 ]
  %193 = getelementptr inbounds %struct.linenoiseFold, ptr %3, i64 0, i32 2
  %194 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %193, i64 noundef 64, ptr noundef nonnull @.str.22, i64 noundef %192) #27
  br label %195

195:                                              ; preds = %191, %188
  %196 = load i64, ptr %3, align 8, !tbaa !60
  %197 = load i64, ptr %81, align 8, !tbaa !58
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %195
  %200 = load i32, ptr %80, align 8, !tbaa !48
  %201 = icmp eq i32 %200, 16
  br i1 %201, label %226, label %202

202:                                              ; preds = %199
  %203 = icmp sgt i32 %200, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %202
  %205 = zext nneg i32 %200 to i64
  br label %206

206:                                              ; preds = %212, %204
  %207 = phi i64 [ %205, %204 ], [ %208, %212 ]
  %208 = add nsw i64 %207, -1
  %209 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !33
  %211 = icmp ugt i64 %210, %196
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %207
  store i64 %210, ptr %213, align 8, !tbaa !33
  %214 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %208
  %215 = load i64, ptr %214, align 8, !tbaa !33
  %216 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %207
  store i64 %215, ptr %216, align 8, !tbaa !33
  %217 = icmp ugt i64 %207, 1
  br i1 %217, label %206, label %220, !llvm.loop !67

218:                                              ; preds = %206
  %219 = trunc i64 %207 to i32
  br label %220

220:                                              ; preds = %212, %218, %202
  %221 = phi i32 [ %200, %202 ], [ %219, %218 ], [ 0, %212 ]
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %222
  store i64 %196, ptr %223, align 8, !tbaa !33
  %224 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %222
  store i64 %197, ptr %224, align 8, !tbaa !33
  %225 = add nsw i32 %200, 1
  store i32 %225, ptr %80, align 8, !tbaa !48
  br label %226

226:                                              ; preds = %85, %73, %220, %199, %195
  %227 = load i32, ptr @mlmode, align 4, !tbaa !5
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  tail call fastcc void @refreshMultiLine(ptr noundef %0, i32 noundef 3)
  br label %231

230:                                              ; preds = %226
  tail call fastcc void @refreshSingleLine(ptr noundef %0, i32 noundef 3)
  br label %231

231:                                              ; preds = %230, %229, %30, %27
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #27
  br label %232

232:                                              ; preds = %231, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditDelete(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseFolds, align 8
  %3 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = icmp ult i64 %8, %4
  br i1 %9, label %10, label %103

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %2) #27
  %11 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !55
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  br label %21

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1
  %20 = icmp eq i64 %19, %17
  br i1 %20, label %30, label %21, !llvm.loop !61

21:                                               ; preds = %18, %16
  %22 = phi i64 [ 0, %16 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !60
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %22, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !58
  %29 = sub i64 %28, %8
  br label %35

30:                                               ; preds = %18, %13, %10
  %31 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = load i64, ptr %3, align 8, !tbaa !47
  %34 = tail call fastcc i64 @utf8NextCharLen(ptr noundef %32, i64 noundef %8, i64 noundef %33)
  br label %35

35:                                               ; preds = %26, %30
  %36 = phi i64 [ %29, %26 ], [ %34, %30 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %2) #27
  %37 = load i64, ptr %7, align 8, !tbaa !35
  %38 = add i64 %37, %36
  %39 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17
  %44 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18
  br label %45

45:                                               ; preds = %79, %42
  %46 = phi i32 [ %40, %42 ], [ %80, %79 ]
  %47 = phi i32 [ 0, %42 ], [ %81, %79 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !33
  %51 = icmp ugt i64 %38, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = sub i64 %50, %36
  store i64 %53, ptr %49, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %48
  %55 = load i64, ptr %54, align 8, !tbaa !33
  %56 = sub i64 %55, %36
  store i64 %56, ptr %54, align 8, !tbaa !33
  %57 = add nsw i32 %47, 1
  br label %79

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %48
  %60 = load i64, ptr %59, align 8, !tbaa !33
  %61 = icmp ugt i64 %60, %37
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = add nsw i32 %47, 1
  br label %79

64:                                               ; preds = %58
  %65 = getelementptr inbounds i64, ptr %43, i64 %48
  %66 = getelementptr inbounds i64, ptr %65, i64 1
  %67 = xor i32 %47, -1
  %68 = add i32 %46, %67
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %65, ptr nonnull align 8 %66, i64 %70, i1 false)
  %71 = getelementptr inbounds i64, ptr %44, i64 %48
  %72 = getelementptr inbounds i64, ptr %71, i64 1
  %73 = load i32, ptr %39, align 8, !tbaa !48
  %74 = add i32 %73, %67
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %71, ptr nonnull align 8 %72, i64 %76, i1 false)
  %77 = load i32, ptr %39, align 8, !tbaa !48
  %78 = add nsw i32 %77, -1
  store i32 %78, ptr %39, align 8, !tbaa !48
  br label %79

79:                                               ; preds = %64, %62, %52
  %80 = phi i32 [ %46, %52 ], [ %46, %62 ], [ %78, %64 ]
  %81 = phi i32 [ %57, %52 ], [ %63, %62 ], [ %47, %64 ]
  %82 = icmp slt i32 %81, %80
  br i1 %82, label %45, label %83, !llvm.loop !68

83:                                               ; preds = %79
  %84 = load i64, ptr %7, align 8, !tbaa !35
  %85 = add i64 %84, %36
  br label %86

86:                                               ; preds = %83, %35
  %87 = phi i64 [ %85, %83 ], [ %38, %35 ]
  %88 = phi i64 [ %84, %83 ], [ %37, %35 ]
  %89 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !17
  %91 = getelementptr inbounds i8, ptr %90, i64 %88
  %92 = getelementptr inbounds i8, ptr %91, i64 %36
  %93 = load i64, ptr %3, align 8, !tbaa !47
  %94 = sub i64 %93, %87
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %91, ptr align 1 %92, i64 %94, i1 false)
  %95 = load i64, ptr %3, align 8, !tbaa !47
  %96 = sub i64 %95, %36
  store i64 %96, ptr %3, align 8, !tbaa !47
  %97 = load ptr, ptr %89, align 8, !tbaa !17
  %98 = getelementptr inbounds i8, ptr %97, i64 %96
  store i8 0, ptr %98, align 1, !tbaa !18
  %99 = load i32, ptr @mlmode, align 4, !tbaa !5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %86
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %103

102:                                              ; preds = %86
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %103

103:                                              ; preds = %102, %101, %6, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @linenoiseAdjustFoldsAfterDelete(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #14 {
  %4 = add i64 %2, %1
  %5 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18
  br label %11

11:                                               ; preds = %8, %45
  %12 = phi i32 [ %6, %8 ], [ %46, %45 ]
  %13 = phi i32 [ 0, %8 ], [ %47, %45 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !33
  %17 = icmp ugt i64 %4, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = sub i64 %16, %2
  store i64 %19, ptr %15, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %14
  %21 = load i64, ptr %20, align 8, !tbaa !33
  %22 = sub i64 %21, %2
  store i64 %22, ptr %20, align 8, !tbaa !33
  %23 = add nsw i32 %13, 1
  br label %45

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %14
  %26 = load i64, ptr %25, align 8, !tbaa !33
  %27 = icmp ugt i64 %26, %1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = add nsw i32 %13, 1
  br label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds i64, ptr %9, i64 %14
  %32 = getelementptr inbounds i64, ptr %31, i64 1
  %33 = xor i32 %13, -1
  %34 = add i32 %12, %33
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %31, ptr nonnull align 8 %32, i64 %36, i1 false)
  %37 = getelementptr inbounds i64, ptr %10, i64 %14
  %38 = getelementptr inbounds i64, ptr %37, i64 1
  %39 = load i32, ptr %5, align 8, !tbaa !48
  %40 = add i32 %39, %33
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %37, ptr nonnull align 8 %38, i64 %42, i1 false)
  %43 = load i32, ptr %5, align 8, !tbaa !48
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %5, align 8, !tbaa !48
  br label %45

45:                                               ; preds = %28, %30, %18
  %46 = phi i32 [ %12, %18 ], [ %12, %28 ], [ %44, %30 ]
  %47 = phi i32 [ %23, %18 ], [ %29, %28 ], [ %13, %30 ]
  %48 = icmp slt i32 %47, %46
  br i1 %48, label %11, label %49, !llvm.loop !68

49:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditBackspace(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseFolds, align 8
  %3 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %8 = load i64, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %103, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %2) #27
  %11 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !55
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  br label %21

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1
  %20 = icmp eq i64 %19, %17
  br i1 %20, label %30, label %21, !llvm.loop !57

21:                                               ; preds = %18, %16
  %22 = phi i64 [ 0, %16 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %22, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !58
  %25 = icmp eq i64 %24, %4
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %22
  %28 = load i64, ptr %27, align 8, !tbaa !60
  %29 = sub i64 %4, %28
  br label %34

30:                                               ; preds = %18, %13, %10
  %31 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %32, i64 noundef %4)
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %2) #27
  %36 = load i64, ptr %3, align 8, !tbaa !35
  %37 = sub i64 %36, %35
  %38 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !48
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17
  %43 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18
  br label %44

44:                                               ; preds = %78, %41
  %45 = phi i32 [ %39, %41 ], [ %79, %78 ]
  %46 = phi i32 [ 0, %41 ], [ %80, %78 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !33
  %50 = icmp ugt i64 %36, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = sub i64 %49, %35
  store i64 %52, ptr %48, align 8, !tbaa !33
  %53 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %47
  %54 = load i64, ptr %53, align 8, !tbaa !33
  %55 = sub i64 %54, %35
  store i64 %55, ptr %53, align 8, !tbaa !33
  %56 = add nsw i32 %46, 1
  br label %78

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %47
  %59 = load i64, ptr %58, align 8, !tbaa !33
  %60 = icmp ugt i64 %59, %37
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = add nsw i32 %46, 1
  br label %78

63:                                               ; preds = %57
  %64 = getelementptr inbounds i64, ptr %42, i64 %47
  %65 = getelementptr inbounds i64, ptr %64, i64 1
  %66 = xor i32 %46, -1
  %67 = add i32 %45, %66
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %64, ptr nonnull align 8 %65, i64 %69, i1 false)
  %70 = getelementptr inbounds i64, ptr %43, i64 %47
  %71 = getelementptr inbounds i64, ptr %70, i64 1
  %72 = load i32, ptr %38, align 8, !tbaa !48
  %73 = add i32 %72, %66
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %70, ptr nonnull align 8 %71, i64 %75, i1 false)
  %76 = load i32, ptr %38, align 8, !tbaa !48
  %77 = add nsw i32 %76, -1
  store i32 %77, ptr %38, align 8, !tbaa !48
  br label %78

78:                                               ; preds = %63, %61, %51
  %79 = phi i32 [ %45, %51 ], [ %45, %61 ], [ %77, %63 ]
  %80 = phi i32 [ %56, %51 ], [ %62, %61 ], [ %46, %63 ]
  %81 = icmp slt i32 %80, %79
  br i1 %81, label %44, label %82, !llvm.loop !68

82:                                               ; preds = %78
  %83 = load i64, ptr %3, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %82, %34
  %85 = phi i64 [ %83, %82 ], [ %36, %34 ]
  %86 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !17
  %88 = getelementptr inbounds i8, ptr %87, i64 %85
  %89 = sub i64 0, %35
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = load i64, ptr %7, align 8, !tbaa !47
  %92 = sub i64 %91, %85
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %90, ptr align 1 %88, i64 %92, i1 false)
  %93 = load i64, ptr %3, align 8, !tbaa !35
  %94 = sub i64 %93, %35
  store i64 %94, ptr %3, align 8, !tbaa !35
  %95 = load i64, ptr %7, align 8, !tbaa !47
  %96 = sub i64 %95, %35
  store i64 %96, ptr %7, align 8, !tbaa !47
  %97 = load ptr, ptr %86, align 8, !tbaa !17
  %98 = getelementptr inbounds i8, ptr %97, i64 %96
  store i8 0, ptr %98, align 1, !tbaa !18
  %99 = load i32, ptr @mlmode, align 4, !tbaa !5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %84
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %103

102:                                              ; preds = %84
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %103

103:                                              ; preds = %102, %101, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditDeletePrevWord(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseFolds, align 8
  %3 = alloca %struct.linenoiseFolds, align 8
  %4 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %78, label %8

8:                                                ; preds = %1, %38
  %9 = phi i64 [ %41, %38 ], [ %5, %1 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !17
  %11 = getelementptr i8, ptr %10, i64 %9
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !18
  %14 = icmp eq i8 %13, 32
  br i1 %14, label %15, label %43

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %3) #27
  %16 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %3), !range !54
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 8, !tbaa !55
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = zext nneg i32 %19 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %35, label %26, !llvm.loop !57

26:                                               ; preds = %23, %21
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %27, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !58
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %31, label %23

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.linenoiseFolds, ptr %3, i64 0, i32 1, i64 %27
  %33 = load i64, ptr %32, align 8, !tbaa !60
  %34 = sub i64 %9, %33
  br label %38

35:                                               ; preds = %23, %18, %15
  %36 = load ptr, ptr %6, align 8, !tbaa !17
  %37 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %36, i64 noundef %9)
  br label %38

38:                                               ; preds = %31, %35
  %39 = phi i64 [ %34, %31 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %3) #27
  %40 = load i64, ptr %4, align 8, !tbaa !35
  %41 = sub i64 %40, %39
  store i64 %41, ptr %4, align 8, !tbaa !35
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %78, label %8, !llvm.loop !69

43:                                               ; preds = %8, %73
  %44 = phi i64 [ %76, %73 ], [ %9, %8 ]
  %45 = load ptr, ptr %6, align 8, !tbaa !17
  %46 = getelementptr i8, ptr %45, i64 %44
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %49 = icmp eq i8 %48, 32
  br i1 %49, label %78, label %50

50:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %2) #27
  %51 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 8, !tbaa !55
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = zext nneg i32 %54 to i64
  br label %61

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, %57
  br i1 %60, label %70, label %61, !llvm.loop !57

61:                                               ; preds = %58, %56
  %62 = phi i64 [ 0, %56 ], [ %59, %58 ]
  %63 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %62, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !58
  %65 = icmp eq i64 %64, %44
  br i1 %65, label %66, label %58

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.linenoiseFolds, ptr %2, i64 0, i32 1, i64 %62
  %68 = load i64, ptr %67, align 8, !tbaa !60
  %69 = sub i64 %44, %68
  br label %73

70:                                               ; preds = %58, %53, %50
  %71 = load ptr, ptr %6, align 8, !tbaa !17
  %72 = tail call fastcc i64 @utf8PrevCharLen(ptr noundef %71, i64 noundef %44)
  br label %73

73:                                               ; preds = %66, %70
  %74 = phi i64 [ %69, %66 ], [ %72, %70 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %2) #27
  %75 = load i64, ptr %4, align 8, !tbaa !35
  %76 = sub i64 %75, %74
  store i64 %76, ptr %4, align 8, !tbaa !35
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %43, !llvm.loop !70

78:                                               ; preds = %38, %43, %73, %1
  %79 = phi i64 [ 0, %1 ], [ 0, %73 ], [ %44, %43 ], [ 0, %38 ]
  %80 = sub i64 %5, %79
  %81 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %82 = load i32, ptr %81, align 8, !tbaa !48
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17
  %86 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18
  br label %87

87:                                               ; preds = %121, %84
  %88 = phi i32 [ %82, %84 ], [ %122, %121 ]
  %89 = phi i32 [ 0, %84 ], [ %123, %121 ]
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !33
  %93 = icmp ugt i64 %5, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = sub i64 %92, %80
  store i64 %95, ptr %91, align 8, !tbaa !33
  %96 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %90
  %97 = load i64, ptr %96, align 8, !tbaa !33
  %98 = sub i64 %97, %80
  store i64 %98, ptr %96, align 8, !tbaa !33
  %99 = add nsw i32 %89, 1
  br label %121

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %90
  %102 = load i64, ptr %101, align 8, !tbaa !33
  %103 = icmp ugt i64 %102, %79
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = add nsw i32 %89, 1
  br label %121

106:                                              ; preds = %100
  %107 = getelementptr inbounds i64, ptr %85, i64 %90
  %108 = getelementptr inbounds i64, ptr %107, i64 1
  %109 = xor i32 %89, -1
  %110 = add i32 %88, %109
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %107, ptr nonnull align 8 %108, i64 %112, i1 false)
  %113 = getelementptr inbounds i64, ptr %86, i64 %90
  %114 = getelementptr inbounds i64, ptr %113, i64 1
  %115 = load i32, ptr %81, align 8, !tbaa !48
  %116 = add i32 %115, %109
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %113, ptr nonnull align 8 %114, i64 %118, i1 false)
  %119 = load i32, ptr %81, align 8, !tbaa !48
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %81, align 8, !tbaa !48
  br label %121

121:                                              ; preds = %106, %104, %94
  %122 = phi i32 [ %88, %94 ], [ %88, %104 ], [ %120, %106 ]
  %123 = phi i32 [ %99, %94 ], [ %105, %104 ], [ %89, %106 ]
  %124 = icmp slt i32 %123, %122
  br i1 %124, label %87, label %125, !llvm.loop !68

125:                                              ; preds = %121
  %126 = load i64, ptr %4, align 8, !tbaa !35
  br label %127

127:                                              ; preds = %125, %78
  %128 = phi i64 [ %126, %125 ], [ %79, %78 ]
  %129 = load ptr, ptr %6, align 8, !tbaa !17
  %130 = getelementptr inbounds i8, ptr %129, i64 %128
  %131 = getelementptr inbounds i8, ptr %129, i64 %5
  %132 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %133 = load i64, ptr %132, align 8, !tbaa !47
  %134 = sub i64 %133, %5
  %135 = add i64 %134, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %130, ptr align 1 %131, i64 %135, i1 false)
  %136 = load i64, ptr %132, align 8, !tbaa !47
  %137 = sub i64 %136, %80
  store i64 %137, ptr %132, align 8, !tbaa !47
  %138 = load i32, ptr @mlmode, align 4, !tbaa !5
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %127
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %142

141:                                              ; preds = %127
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %142

142:                                              ; preds = %140, %141
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linenoiseEditStart(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #10 {
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.winsize, align 2
  %14 = alloca [32 x i8], align 16
  store i32 0, ptr %0, align 8, !tbaa !41
  %15 = icmp eq i32 %1, -1
  %16 = select i1 %15, i32 0, i32 %1
  %17 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !71
  %18 = icmp eq i32 %2, -1
  %19 = select i1 %18, i32 1, i32 %2
  %20 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !31
  %21 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  store ptr %3, ptr %21, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  store i64 %4, ptr %22, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 6
  store i64 0, ptr %23, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 7
  store ptr %5, ptr %24, align 8, !tbaa !27
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #28
  %26 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 8
  store i64 %25, ptr %26, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  store i32 0, ptr %28, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  store i32 %19, ptr @rawmode_output, align 4, !tbaa !5
  %29 = tail call fastcc i32 @enableRawMode(i32 noundef %16), !range !32
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %141, label %31

31:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  %32 = tail call ptr @getenv(ptr noundef nonnull @.str.25) #27
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @strtol(ptr nocapture noundef nonnull %32, ptr noundef null, i32 noundef 10) #27
  %36 = trunc i64 %35 to i32
  br label %118

37:                                               ; preds = %31
  %38 = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %13) #27
  %39 = icmp eq i32 %38, -1
  %40 = getelementptr inbounds %struct.winsize, ptr %13, i64 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  %45 = call i64 @write(i32 noundef %2, ptr noundef nonnull @.str.28, i64 noundef 4) #27
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %50, label %72

47:                                               ; preds = %55
  %48 = add nuw nsw i64 %51, 1
  %49 = icmp eq i64 %48, 31
  br i1 %49, label %58, label %50, !llvm.loop !72

50:                                               ; preds = %44, %47
  %51 = phi i64 [ %48, %47 ], [ 0, %44 ]
  %52 = getelementptr inbounds i8, ptr %10, i64 %51
  %53 = call i64 @read(i32 noundef %1, ptr noundef nonnull %52, i64 noundef 1) #27
  %54 = icmp eq i64 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8, ptr %52, align 1, !tbaa !18
  %57 = icmp eq i8 %56, 82
  br i1 %57, label %58, label %47

58:                                               ; preds = %55, %50, %47
  %59 = phi i64 [ %51, %55 ], [ %51, %50 ], [ 31, %47 ]
  %60 = getelementptr inbounds [32 x i8], ptr %10, i64 0, i64 %59
  store i8 0, ptr %60, align 1, !tbaa !18
  %61 = load i8, ptr %10, align 16, !tbaa !18
  %62 = icmp ne i8 %61, 27
  %63 = getelementptr inbounds [32 x i8], ptr %10, i64 0, i64 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp ne i8 %64, 91
  %66 = select i1 %62, i1 true, i1 %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds i8, ptr %10, i64 2
  %69 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %68, ptr noundef nonnull @.str.29, ptr noundef nonnull %12, ptr noundef nonnull %11) #27
  %70 = icmp eq i32 %69, 2
  %71 = load i32, ptr %11, align 4
  br i1 %70, label %73, label %72

72:                                               ; preds = %67, %58, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br label %118

73:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  %74 = icmp eq i32 %71, -1
  br i1 %74, label %118, label %75

75:                                               ; preds = %73
  %76 = call i64 @write(i32 noundef %2, ptr noundef nonnull @.str.26, i64 noundef 6) #27
  %77 = icmp eq i64 %76, 6
  br i1 %77, label %78, label %118

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %79 = call i64 @write(i32 noundef %2, ptr noundef nonnull @.str.28, i64 noundef 4) #27
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %84, label %106

81:                                               ; preds = %89
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %82, 31
  br i1 %83, label %92, label %84, !llvm.loop !72

84:                                               ; preds = %78, %81
  %85 = phi i64 [ %82, %81 ], [ 0, %78 ]
  %86 = getelementptr inbounds i8, ptr %7, i64 %85
  %87 = call i64 @read(i32 noundef %1, ptr noundef nonnull %86, i64 noundef 1) #27
  %88 = icmp eq i64 %87, 1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8, ptr %86, align 1, !tbaa !18
  %91 = icmp eq i8 %90, 82
  br i1 %91, label %92, label %81

92:                                               ; preds = %89, %84, %81
  %93 = phi i64 [ %85, %89 ], [ %85, %84 ], [ 31, %81 ]
  %94 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %93
  store i8 0, ptr %94, align 1, !tbaa !18
  %95 = load i8, ptr %7, align 16, !tbaa !18
  %96 = icmp ne i8 %95, 27
  %97 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  %98 = load i8, ptr %97, align 1
  %99 = icmp ne i8 %98, 91
  %100 = select i1 %96, i1 true, i1 %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds i8, ptr %7, i64 2
  %103 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %102, ptr noundef nonnull @.str.29, ptr noundef nonnull %9, ptr noundef nonnull %8) #27
  %104 = icmp eq i32 %103, 2
  %105 = load i32, ptr %8, align 4
  br i1 %104, label %107, label %106

106:                                              ; preds = %101, %92, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  br label %118

107:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  %108 = icmp eq i32 %105, -1
  br i1 %108, label %118, label %109

109:                                              ; preds = %107
  %110 = icmp sgt i32 %105, %71
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #27
  %112 = sub nsw i32 %105, %71
  %113 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %14, i64 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %112) #27
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #28
  %115 = call i64 @write(i32 noundef %2, ptr noundef nonnull %14, i64 noundef %114) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  br label %118

116:                                              ; preds = %37
  %117 = zext i16 %41 to i32
  br label %118

118:                                              ; preds = %34, %72, %73, %75, %106, %107, %109, %111, %116
  %119 = phi i32 [ %36, %34 ], [ %117, %116 ], [ %105, %111 ], [ %105, %109 ], [ 80, %73 ], [ 80, %75 ], [ 80, %107 ], [ 80, %72 ], [ 80, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 12
  store i64 %120, ptr %121, align 8, !tbaa !15
  %122 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 13
  store i64 0, ptr %122, align 8, !tbaa !30
  %123 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 14
  store i32 1, ptr %123, align 8, !tbaa !29
  %124 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 15
  store i32 0, ptr %124, align 4, !tbaa !62
  %125 = load ptr, ptr %21, align 8, !tbaa !17
  store i8 0, ptr %125, align 1, !tbaa !18
  %126 = load i64, ptr %22, align 8, !tbaa !50
  %127 = add i64 %126, -1
  store i64 %127, ptr %22, align 8, !tbaa !50
  %128 = load i32, ptr %17, align 8, !tbaa !71
  %129 = call i32 @isatty(i32 noundef %128) #27
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %118
  %132 = call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %131, %118
  %135 = call i32 @linenoiseHistoryAdd(ptr noundef nonnull @.str.5), !range !54
  %136 = load i32, ptr %20, align 4, !tbaa !31
  %137 = load i64, ptr %26, align 8, !tbaa !28
  %138 = call i64 @write(i32 noundef %136, ptr noundef %5, i64 noundef %137) #27
  %139 = icmp eq i64 %138, -1
  %140 = sext i1 %139 to i32
  br label %141

141:                                              ; preds = %134, %131, %6
  %142 = phi i32 [ -1, %6 ], [ 0, %131 ], [ %140, %134 ]
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @enableRawMode(i32 noundef %0) unnamed_addr #10 {
  %2 = alloca %struct.termios, align 16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #27
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i1 true, ptr @rawmode, align 4
  br label %30

6:                                                ; preds = %1
  %7 = tail call i32 @isatty(i32 noundef 0) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = load i1, ptr @atexit_registered, align 4
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @atexit(ptr noundef nonnull @linenoiseAtExit) #27
  store i1 true, ptr @atexit_registered, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = tail call i32 @tcgetattr(i32 noundef %0, ptr noundef nonnull @orig_termios) #27
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %2, ptr noundef nonnull align 4 dereferenceable(60) @orig_termios, i64 60, i1 false), !tbaa.struct !73
  %17 = load <4 x i32>, ptr %2, align 16, !tbaa !5
  %18 = and <4 x i32> %17, <i32 -1331, i32 -2, i32 poison, i32 -32780>
  %19 = or <4 x i32> %17, <i32 poison, i32 poison, i32 48, i32 poison>
  %20 = shufflevector <4 x i32> %18, <4 x i32> %19, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x i32> %20, ptr %2, align 16, !tbaa !5
  %21 = getelementptr inbounds %struct.termios, ptr %2, i64 0, i32 5, i64 6
  store i8 1, ptr %21, align 1, !tbaa !18
  %22 = getelementptr inbounds %struct.termios, ptr %2, i64 0, i32 5, i64 5
  store i8 0, ptr %22, align 2, !tbaa !18
  %23 = call i32 @tcsetattr(i32 noundef %0, i32 noundef 2, ptr noundef nonnull %2) #27
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  store i1 true, ptr @rawmode, align 4
  %26 = load i32, ptr @rawmode_output, align 4, !tbaa !5
  %27 = call i64 @write(i32 noundef %26, ptr noundef nonnull @.str.24, i64 noundef 8) #27
  br label %30

28:                                               ; preds = %16, %13, %6
  %29 = tail call ptr @__errno_location() #31
  store i32 25, ptr %29, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %28, %25, %5
  %31 = phi i32 [ 0, %5 ], [ -1, %28 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #27
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noundef i32 @linenoiseHistoryAdd(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @history_max_len, align 4, !tbaa !5
  %3 = load ptr, ptr @history, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr @calloc(i64 1, i64 %7)
  store ptr %8, ptr @history, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %3, %1 ], [ %8, %5 ]
  %12 = load i32, ptr @history_len, align 4, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  %16 = getelementptr ptr, ptr %11, i64 %15
  %17 = getelementptr ptr, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %0) #28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %14, %10
  %22 = tail call noalias ptr @strdup(ptr noundef %0) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %12, %2
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = load ptr, ptr %11, align 8, !tbaa !9
  tail call void @free(ptr noundef %27) #27
  %28 = getelementptr inbounds ptr, ptr %11, i64 1
  %29 = add nsw i32 %2, -1
  %30 = zext nneg i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull align 8 %28, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %26, %24
  %33 = phi i32 [ %29, %26 ], [ %12, %24 ]
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %11, i64 %34
  store ptr %22, ptr %35, align 8, !tbaa !9
  %36 = add nsw i32 %33, 1
  store i32 %36, ptr @history_len, align 4, !tbaa !5
  br label %37

37:                                               ; preds = %21, %14, %5, %32
  %38 = phi i32 [ 1, %32 ], [ 0, %5 ], [ 0, %14 ], [ 0, %21 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local ptr @linenoiseEditFeed(ptr noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseCompletions, align 8
  %3 = alloca i8, align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [32 x i8], align 16
  %6 = alloca [8 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca [4 x i8], align 1
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = tail call i32 @isatty(i32 noundef %10) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr @stdin, align 8, !tbaa !9
  %18 = tail call fastcc ptr @linenoiseReadLine(ptr noundef %17, ptr noundef null)
  br label %383

19:                                               ; preds = %13, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #27
  %20 = load i32, ptr %9, align 8, !tbaa !71
  %21 = call i64 @read(i32 noundef %20, ptr noundef nonnull %3, i64 noundef 1) #27
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = tail call ptr @__errno_location() #31
  %26 = load i32, ptr %25, align 4, !tbaa !5
  %27 = icmp eq i32 %26, 11
  %28 = load ptr, ptr @linenoiseEditMore, align 8
  %29 = select i1 %27, ptr %28, ptr null
  br label %381

30:                                               ; preds = %19
  %31 = icmp eq i32 %22, 0
  br i1 %31, label %381, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %0, align 8, !tbaa !41
  %34 = icmp ne i32 %33, 0
  %35 = load i8, ptr %3, align 1
  %36 = icmp eq i8 %35, 9
  %37 = select i1 %34, i1 true, i1 %36
  %38 = load ptr, ptr @completionCallback, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %137

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  call void %38(ptr noundef %43, ptr noundef nonnull %2) #27
  %44 = load i64, ptr %2, align 8, !tbaa !14
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %48 = call i32 @fputc(i32 7, ptr %47)
  %49 = load ptr, ptr @stderr, align 8, !tbaa !9
  %50 = call i32 @fflush(ptr noundef %49)
  store i32 0, ptr %0, align 8, !tbaa !41
  br label %113

51:                                               ; preds = %41
  switch i8 %35, label %73 [
    i8 9, label %52
    i8 27, label %64
  ]

52:                                               ; preds = %51
  %53 = load i32, ptr %0, align 8, !tbaa !41
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  store i32 1, ptr %0, align 8, !tbaa !41
  %56 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 1
  store i64 0, ptr %56, align 8, !tbaa !42
  br label %100

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !42
  %60 = add i64 %59, 1
  %61 = add i64 %44, 1
  %62 = urem i64 %60, %61
  store i64 %62, ptr %58, align 8, !tbaa !42
  %63 = icmp eq i64 %62, %44
  br i1 %63, label %90, label %100

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !42
  %67 = icmp ult i64 %66, %44
  br i1 %67, label %68, label %105

68:                                               ; preds = %64
  %69 = load i32, ptr @mlmode, align 4, !tbaa !5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %105

72:                                               ; preds = %68
  call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %105

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !42
  %76 = icmp ult i64 %75, %44
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load ptr, ptr %42, align 8, !tbaa !17
  %79 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  %80 = load i64, ptr %79, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.linenoiseCompletions, ptr %2, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = getelementptr inbounds ptr, ptr %82, i64 %75
  %84 = load ptr, ptr %83, align 8, !tbaa !9
  %85 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %78, i64 noundef %80, ptr noundef nonnull @.str.13, ptr noundef %84) #27
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  store i64 %86, ptr %87, align 8, !tbaa !35
  %88 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  store i64 %86, ptr %88, align 8, !tbaa !47
  %89 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  store i32 0, ptr %89, align 8, !tbaa !48
  br label %105

90:                                               ; preds = %57
  %91 = load ptr, ptr @stderr, align 8, !tbaa !9
  %92 = call i32 @fputc(i32 7, ptr %91)
  %93 = load ptr, ptr @stderr, align 8, !tbaa !9
  %94 = call i32 @fflush(ptr noundef %93)
  %95 = load i32, ptr %0, align 8, !tbaa !41
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %90
  %98 = load i64, ptr %58, align 8, !tbaa !42
  %99 = load i64, ptr %2, align 8, !tbaa !14
  br label %100

100:                                              ; preds = %57, %97, %55
  %101 = phi i64 [ %44, %55 ], [ %99, %97 ], [ %44, %57 ]
  %102 = phi i64 [ 0, %55 ], [ %98, %97 ], [ %62, %57 ]
  %103 = icmp ult i64 %102, %101
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  call fastcc void @refreshLineWithCompletion(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 3)
  br label %113

105:                                              ; preds = %77, %73, %72, %71, %64
  %106 = phi i8 [ 0, %72 ], [ 0, %71 ], [ 0, %64 ], [ %35, %77 ], [ %35, %73 ]
  store i32 0, ptr %0, align 8, !tbaa !41
  br label %107

107:                                              ; preds = %105, %100, %90
  %108 = phi i8 [ 0, %100 ], [ 0, %90 ], [ %106, %105 ]
  %109 = load i32, ptr @mlmode, align 4, !tbaa !5
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %113

112:                                              ; preds = %107
  call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %113

113:                                              ; preds = %112, %111, %104, %46
  %114 = phi i8 [ 0, %46 ], [ 0, %104 ], [ %108, %111 ], [ %108, %112 ]
  %115 = load i64, ptr %2, align 8, !tbaa !14
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.linenoiseCompletions, ptr %2, i64 0, i32 1
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i64 [ 0, %117 ], [ %124, %119 ]
  %121 = load ptr, ptr %118, align 8, !tbaa !11
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !9
  call void @free(ptr noundef %123) #27
  %124 = add nuw i64 %120, 1
  %125 = load i64, ptr %2, align 8, !tbaa !14
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %119, label %127, !llvm.loop !49

127:                                              ; preds = %119, %113
  %128 = getelementptr inbounds %struct.linenoiseCompletions, ptr %2, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  call void @free(ptr noundef nonnull %129) #27
  br label %132

132:                                              ; preds = %127, %131
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #27
  %133 = icmp eq i8 %114, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = load ptr, ptr @linenoiseEditMore, align 8, !tbaa !9
  br label %381

136:                                              ; preds = %132
  store i8 %114, ptr %3, align 1, !tbaa !18
  br label %137

137:                                              ; preds = %32, %136
  %138 = phi i8 [ %114, %136 ], [ %35, %32 ]
  switch i8 %138, label %329 [
    i8 13, label %139
    i8 3, label %157
    i8 127, label %159
    i8 8, label %159
    i8 4, label %160
    i8 20, label %173
    i8 2, label %225
    i8 6, label %226
    i8 16, label %227
    i8 14, label %228
    i8 27, label %229
    i8 21, label %357
    i8 11, label %363
    i8 1, label %374
    i8 5, label %375
    i8 12, label %376
    i8 23, label %378
  ]

139:                                              ; preds = %137
  %140 = load i32, ptr @history_len, align 4, !tbaa !5
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr @history_len, align 4, !tbaa !5
  %142 = load ptr, ptr @history, align 8, !tbaa !9
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !9
  call void @free(ptr noundef %145) #27
  %146 = load i32, ptr @mlmode, align 4, !tbaa !5
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  call void @linenoiseEditMoveEnd(ptr noundef nonnull %0)
  br label %149

149:                                              ; preds = %148, %139
  %150 = load ptr, ptr @hintsCallback, align 8, !tbaa !9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  store ptr null, ptr @hintsCallback, align 8, !tbaa !9
  call fastcc void @refreshLine(ptr noundef nonnull %0)
  store ptr %150, ptr @hintsCallback, align 8, !tbaa !9
  br label %153

153:                                              ; preds = %152, %149
  %154 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !17
  %156 = call noalias ptr @strdup(ptr noundef %155) #27
  br label %381

157:                                              ; preds = %137
  %158 = tail call ptr @__errno_location() #31
  store i32 11, ptr %158, align 4, !tbaa !5
  br label %381

159:                                              ; preds = %137, %137
  call void @linenoiseEditBackspace(ptr noundef nonnull %0)
  br label %379

160:                                              ; preds = %137
  %161 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %162 = load i64, ptr %161, align 8, !tbaa !47
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void @linenoiseEditDelete(ptr noundef nonnull %0)
  br label %379

165:                                              ; preds = %160
  %166 = load i32, ptr @history_len, align 4, !tbaa !5
  %167 = add nsw i32 %166, -1
  store i32 %167, ptr @history_len, align 4, !tbaa !5
  %168 = load ptr, ptr @history, align 8, !tbaa !9
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !9
  call void @free(ptr noundef %171) #27
  %172 = tail call ptr @__errno_location() #31
  store i32 2, ptr %172, align 4, !tbaa !5
  br label %381

173:                                              ; preds = %137
  %174 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %175 = load i64, ptr %174, align 8, !tbaa !35
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %379, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %179 = load i64, ptr %178, align 8, !tbaa !47
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %181, label %379

181:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  %182 = call fastcc i64 @linenoiseEditPrevLen(ptr noundef nonnull %0, i64 noundef %175)
  %183 = load i64, ptr %174, align 8, !tbaa !35
  %184 = call fastcc i64 @linenoiseEditNextLen(ptr noundef nonnull %0, i64 noundef %183)
  %185 = load i64, ptr %174, align 8, !tbaa !35
  %186 = sub i64 %185, %182
  %187 = icmp ugt i64 %182, 32
  %188 = icmp ugt i64 %184, 32
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %224, label %190

190:                                              ; preds = %181
  %191 = add i64 %185, %184
  %192 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %193 = load i32, ptr %192, align 8, !tbaa !48
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = zext nneg i32 %193 to i64
  br label %197

197:                                              ; preds = %206, %195
  %198 = phi i64 [ 0, %195 ], [ %207, %206 ]
  %199 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %198
  %200 = load i64, ptr %199, align 8, !tbaa !33
  %201 = icmp ugt i64 %191, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %198
  %204 = load i64, ptr %203, align 8, !tbaa !33
  %205 = icmp ugt i64 %204, %186
  br i1 %205, label %209, label %206

206:                                              ; preds = %202, %197
  %207 = add nuw nsw i64 %198, 1
  %208 = icmp eq i64 %207, %196
  br i1 %208, label %210, label %197, !llvm.loop !74

209:                                              ; preds = %202
  call fastcc void @linenoiseBeep()
  br label %224

210:                                              ; preds = %206, %190
  %211 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !17
  %213 = getelementptr inbounds i8, ptr %212, i64 %185
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %213, i64 %184, i1 false)
  %214 = getelementptr inbounds i8, ptr %212, i64 %186
  %215 = getelementptr inbounds i8, ptr %214, i64 %184
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %215, ptr align 1 %214, i64 %182, i1 false)
  %216 = load ptr, ptr %211, align 8, !tbaa !17
  %217 = getelementptr inbounds i8, ptr %216, i64 %186
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr nonnull align 16 %5, i64 %184, i1 false)
  %218 = load i64, ptr %174, align 8, !tbaa !35
  %219 = add i64 %218, %184
  %220 = load i64, ptr %178, align 8, !tbaa !47
  %221 = icmp ugt i64 %219, %220
  br i1 %221, label %223, label %222

222:                                              ; preds = %210
  store i64 %219, ptr %174, align 8, !tbaa !35
  br label %223

223:                                              ; preds = %222, %210
  call fastcc void @refreshLine(ptr noundef nonnull %0)
  br label %224

224:                                              ; preds = %181, %223, %209
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  br label %379

225:                                              ; preds = %137
  call void @linenoiseEditMoveLeft(ptr noundef nonnull %0)
  br label %379

226:                                              ; preds = %137
  call void @linenoiseEditMoveRight(ptr noundef nonnull %0)
  br label %379

227:                                              ; preds = %137
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %0, i32 noundef 1)
  br label %379

228:                                              ; preds = %137
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %0, i32 noundef 0)
  br label %379

229:                                              ; preds = %137
  %230 = load i32, ptr %9, align 8, !tbaa !71
  %231 = call i64 @read(i32 noundef %230, ptr noundef nonnull %4, i64 noundef 1) #27
  %232 = icmp eq i64 %231, -1
  br i1 %232, label %379, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %9, align 8, !tbaa !71
  %235 = getelementptr inbounds i8, ptr %4, i64 1
  %236 = call i64 @read(i32 noundef %234, ptr noundef nonnull %235, i64 noundef 1) #27
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %379, label %238

238:                                              ; preds = %233
  %239 = load i8, ptr %4, align 1, !tbaa !18
  switch i8 %239, label %379 [
    i8 91, label %240
    i8 79, label %325
  ]

240:                                              ; preds = %238
  %241 = load i8, ptr %235, align 1
  %242 = add i8 %241, -48
  %243 = icmp ult i8 %242, 10
  br i1 %243, label %244, label %318

244:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  store i8 %241, ptr %6, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %245 = load i32, ptr %9, align 8, !tbaa !71
  %246 = call i64 @read(i32 noundef %245, ptr noundef nonnull %7, i64 noundef 1) #27
  %247 = icmp eq i64 %246, 1
  br i1 %247, label %249, label %248

248:                                              ; preds = %295, %287, %279, %271, %262, %253, %244
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  br label %317

249:                                              ; preds = %244
  %250 = load i8, ptr %7, align 1
  %251 = add i8 %250, -58
  %252 = icmp ult i8 %251, -10
  br i1 %252, label %304, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 1
  store i8 %250, ptr %254, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %255 = load i32, ptr %9, align 8, !tbaa !71
  %256 = call i64 @read(i32 noundef %255, ptr noundef nonnull %7, i64 noundef 1) #27
  %257 = icmp eq i64 %256, 1
  br i1 %257, label %258, label %248

258:                                              ; preds = %253
  %259 = load i8, ptr %7, align 1
  %260 = add i8 %259, -48
  %261 = icmp ult i8 %260, 10
  br i1 %261, label %262, label %304

262:                                              ; preds = %258
  %263 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 2
  store i8 %259, ptr %263, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %264 = load i32, ptr %9, align 8, !tbaa !71
  %265 = call i64 @read(i32 noundef %264, ptr noundef nonnull %7, i64 noundef 1) #27
  %266 = icmp eq i64 %265, 1
  br i1 %266, label %267, label %248

267:                                              ; preds = %262
  %268 = load i8, ptr %7, align 1
  %269 = add i8 %268, -48
  %270 = icmp ult i8 %269, 10
  br i1 %270, label %271, label %304

271:                                              ; preds = %267
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %272 = load i32, ptr %9, align 8, !tbaa !71
  %273 = call i64 @read(i32 noundef %272, ptr noundef nonnull %7, i64 noundef 1) #27
  %274 = icmp eq i64 %273, 1
  br i1 %274, label %275, label %248

275:                                              ; preds = %271
  %276 = load i8, ptr %7, align 1
  %277 = add i8 %276, -48
  %278 = icmp ult i8 %277, 10
  br i1 %278, label %279, label %304

279:                                              ; preds = %275
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %280 = load i32, ptr %9, align 8, !tbaa !71
  %281 = call i64 @read(i32 noundef %280, ptr noundef nonnull %7, i64 noundef 1) #27
  %282 = icmp eq i64 %281, 1
  br i1 %282, label %283, label %248

283:                                              ; preds = %279
  %284 = load i8, ptr %7, align 1
  %285 = add i8 %284, -48
  %286 = icmp ult i8 %285, 10
  br i1 %286, label %287, label %304

287:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %288 = load i32, ptr %9, align 8, !tbaa !71
  %289 = call i64 @read(i32 noundef %288, ptr noundef nonnull %7, i64 noundef 1) #27
  %290 = icmp eq i64 %289, 1
  br i1 %290, label %291, label %248

291:                                              ; preds = %287
  %292 = load i8, ptr %7, align 1
  %293 = add i8 %292, -48
  %294 = icmp ult i8 %293, 10
  br i1 %294, label %295, label %304

295:                                              ; preds = %291
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %296 = load i32, ptr %9, align 8, !tbaa !71
  %297 = call i64 @read(i32 noundef %296, ptr noundef nonnull %7, i64 noundef 1) #27
  %298 = icmp eq i64 %297, 1
  br i1 %298, label %299, label %248

299:                                              ; preds = %295
  %300 = load i8, ptr %7, align 1
  %301 = add i8 %300, -48
  %302 = icmp ult i8 %301, 10
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  br label %317

304:                                              ; preds = %299, %291, %283, %275, %267, %258, %249
  %305 = phi i8 [ %250, %249 ], [ %259, %258 ], [ %268, %267 ], [ %276, %275 ], [ %284, %283 ], [ %292, %291 ], [ %300, %299 ]
  %306 = phi i1 [ false, %249 ], [ false, %258 ], [ true, %267 ], [ false, %275 ], [ false, %283 ], [ false, %291 ], [ false, %299 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  %307 = icmp eq i8 %305, 126
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  %309 = icmp eq i8 %241, 51
  %310 = and i1 %252, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  call void @linenoiseEditDelete(ptr noundef nonnull %0)
  br label %317

312:                                              ; preds = %308
  br i1 %306, label %313, label %317

313:                                              ; preds = %312
  %314 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %6, ptr noundef nonnull dereferenceable(3) @.str.7, i64 3)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  call fastcc void @linenoiseEditPaste(ptr noundef nonnull %0)
  br label %317

317:                                              ; preds = %303, %248, %311, %316, %313, %312, %304
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %379

318:                                              ; preds = %240
  switch i8 %241, label %379 [
    i8 65, label %319
    i8 66, label %320
    i8 67, label %321
    i8 68, label %322
    i8 72, label %323
    i8 70, label %324
  ]

319:                                              ; preds = %318
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %0, i32 noundef 1)
  br label %379

320:                                              ; preds = %318
  call void @linenoiseEditHistoryNext(ptr noundef nonnull %0, i32 noundef 0)
  br label %379

321:                                              ; preds = %318
  call void @linenoiseEditMoveRight(ptr noundef nonnull %0)
  br label %379

322:                                              ; preds = %318
  call void @linenoiseEditMoveLeft(ptr noundef nonnull %0)
  br label %379

323:                                              ; preds = %318
  call void @linenoiseEditMoveHome(ptr noundef nonnull %0)
  br label %379

324:                                              ; preds = %318
  call void @linenoiseEditMoveEnd(ptr noundef nonnull %0)
  br label %379

325:                                              ; preds = %238
  %326 = load i8, ptr %235, align 1, !tbaa !18
  switch i8 %326, label %379 [
    i8 72, label %327
    i8 70, label %328
  ]

327:                                              ; preds = %325
  call void @linenoiseEditMoveHome(ptr noundef nonnull %0)
  br label %379

328:                                              ; preds = %325
  call void @linenoiseEditMoveEnd(ptr noundef nonnull %0)
  br label %379

329:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %330 = zext i8 %138 to i32
  %331 = icmp sgt i8 %138, -1
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = and i32 %330, 224
  %334 = icmp eq i32 %333, 192
  br i1 %334, label %342, label %335

335:                                              ; preds = %332
  %336 = and i32 %330, 240
  %337 = icmp eq i32 %336, 224
  br i1 %337, label %342, label %338

338:                                              ; preds = %335
  %339 = and i32 %330, 248
  %340 = icmp eq i32 %339, 240
  br i1 %340, label %342, label %341

341:                                              ; preds = %329, %338
  store i8 %138, ptr %8, align 1, !tbaa !18
  br label %353

342:                                              ; preds = %338, %332, %335
  %343 = phi i64 [ 2, %332 ], [ 3, %335 ], [ 4, %338 ]
  store i8 %138, ptr %8, align 1, !tbaa !18
  br label %344

344:                                              ; preds = %344, %342
  %345 = phi i64 [ 1, %342 ], [ %350, %344 ]
  %346 = load i32, ptr %9, align 8, !tbaa !71
  %347 = getelementptr inbounds i8, ptr %8, i64 %345
  %348 = call i64 @read(i32 noundef %346, ptr noundef nonnull %347, i64 noundef 1) #27
  %349 = icmp ne i64 %348, 1
  %350 = add nuw nsw i64 %345, 1
  %351 = icmp eq i64 %350, %343
  %352 = select i1 %349, i1 true, i1 %351
  br i1 %352, label %353, label %344, !llvm.loop !75

353:                                              ; preds = %344, %341
  %354 = phi i64 [ 1, %341 ], [ %343, %344 ]
  %355 = call i32 @linenoiseEditInsert(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef %354)
  %356 = icmp eq i32 %355, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br i1 %356, label %379, label %381

357:                                              ; preds = %137
  %358 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !17
  store i8 0, ptr %359, align 1, !tbaa !18
  %360 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  store i64 0, ptr %360, align 8, !tbaa !47
  %361 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  store i64 0, ptr %361, align 8, !tbaa !35
  %362 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  store i32 0, ptr %362, align 8, !tbaa !48
  call fastcc void @refreshLine(ptr noundef nonnull %0)
  br label %379

363:                                              ; preds = %137
  %364 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %365 = load i64, ptr %364, align 8, !tbaa !35
  %366 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %367 = load i64, ptr %366, align 8, !tbaa !47
  %368 = sub i64 %367, %365
  call fastcc void @linenoiseAdjustFoldsAfterDelete(ptr noundef nonnull %0, i64 noundef %365, i64 noundef %368)
  %369 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %370 = load ptr, ptr %369, align 8, !tbaa !17
  %371 = load i64, ptr %364, align 8, !tbaa !35
  %372 = getelementptr inbounds i8, ptr %370, i64 %371
  store i8 0, ptr %372, align 1, !tbaa !18
  %373 = load i64, ptr %364, align 8, !tbaa !35
  store i64 %373, ptr %366, align 8, !tbaa !47
  call fastcc void @refreshLine(ptr noundef nonnull %0)
  br label %379

374:                                              ; preds = %137
  call void @linenoiseEditMoveHome(ptr noundef nonnull %0)
  br label %379

375:                                              ; preds = %137
  call void @linenoiseEditMoveEnd(ptr noundef nonnull %0)
  br label %379

376:                                              ; preds = %137
  %377 = call i64 @write(i32 noundef 1, ptr noundef nonnull @.str, i64 noundef 7) #27
  call fastcc void @refreshLine(ptr noundef nonnull %0)
  br label %379

378:                                              ; preds = %137
  call void @linenoiseEditDeletePrevWord(ptr noundef nonnull %0)
  br label %379

379:                                              ; preds = %238, %224, %353, %319, %320, %321, %322, %323, %324, %318, %317, %327, %328, %325, %233, %229, %173, %177, %378, %376, %375, %374, %363, %357, %228, %227, %226, %225, %164, %159
  %380 = load ptr, ptr @linenoiseEditMore, align 8, !tbaa !9
  br label %381

381:                                              ; preds = %134, %30, %353, %379, %165, %157, %153, %24
  %382 = phi ptr [ %29, %24 ], [ %380, %379 ], [ null, %353 ], [ null, %165 ], [ null, %157 ], [ %156, %153 ], [ null, %30 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  br label %383

383:                                              ; preds = %381, %16
  %384 = phi ptr [ %382, %381 ], [ %18, %16 ]
  ret ptr %384
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @linenoiseBeep() unnamed_addr #1 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = tail call i32 @fputc(i32 7, ptr %1)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = tail call i32 @fflush(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @linenoiseEditPaste(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr null, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store i64 0, ptr %4, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !51
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i64 [ %11, %9 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = tail call i64 @llvm.usub.sat.i64(i64 %13, i64 %15)
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 1048576)
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = icmp eq i32 %19, 16
  %21 = select i1 %20, i64 0, i64 %17
  %22 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %58, %12
  %24 = phi i32 [ %59, %58 ], [ 0, %12 ]
  %25 = phi i64 [ %60, %58 ], [ 0, %12 ]
  br label %26

26:                                               ; preds = %23, %37
  %27 = phi i64 [ %38, %37 ], [ %25, %23 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  %28 = load i32, ptr %22, align 8, !tbaa !71
  %29 = call i64 @read(i32 noundef %28, ptr noundef nonnull %5, i64 noundef 1) #27
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  br label %61

32:                                               ; preds = %26
  %33 = load i8, ptr %5, align 1, !tbaa !18
  %34 = getelementptr inbounds [7 x i8], ptr @linenoiseEditPaste.END, i64 0, i64 %27
  %35 = load i8, ptr %34, align 1, !tbaa !18
  %36 = icmp eq i8 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = add i64 %27, 1
  %39 = icmp eq i64 %38, 6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  br i1 %39, label %61, label %26

40:                                               ; preds = %32
  %41 = icmp eq i64 %27, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %24, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = call fastcc i32 @pasteBufferAppend(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @linenoiseEditPaste.END, i64 noundef %27, i64 noundef %21), !range !32
  %46 = icmp eq i32 %45, -1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i32 [ 1, %42 ], [ %47, %44 ]
  %50 = icmp eq i8 %33, 27
  br i1 %50, label %58, label %51

51:                                               ; preds = %48, %40
  %52 = phi i32 [ %49, %48 ], [ %24, %40 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = call fastcc i32 @pasteBufferAppend(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1, i64 noundef %21), !range !32
  %56 = icmp eq i32 %55, -1
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %54, %51, %48
  %59 = phi i32 [ %49, %48 ], [ 1, %51 ], [ %57, %54 ]
  %60 = phi i64 [ 1, %48 ], [ 0, %51 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  br label %23

61:                                               ; preds = %37, %31
  %62 = icmp eq i32 %24, 0
  %63 = load ptr, ptr %2, align 8, !tbaa !9
  br i1 %62, label %69, label %64

64:                                               ; preds = %61
  tail call void @free(ptr noundef %63) #27
  %65 = load ptr, ptr @stderr, align 8, !tbaa !9
  %66 = tail call i32 @fputc(i32 7, ptr %65)
  %67 = load ptr, ptr @stderr, align 8, !tbaa !9
  %68 = tail call i32 @fflush(ptr noundef %67)
  br label %152

69:                                               ; preds = %61
  %70 = icmp eq ptr %63, null
  br i1 %70, label %152, label %71

71:                                               ; preds = %69
  %72 = load i64, ptr %4, align 8, !tbaa !33
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %71, %91
  %75 = phi i64 [ %93, %91 ], [ 0, %71 ]
  %76 = phi i64 [ %94, %91 ], [ 0, %71 ]
  %77 = getelementptr inbounds i8, ptr %63, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !18
  %79 = icmp eq i8 %78, 13
  %80 = getelementptr inbounds i8, ptr %63, i64 %75
  br i1 %79, label %81, label %90

81:                                               ; preds = %74
  store i8 10, ptr %80, align 1, !tbaa !18
  %82 = add nuw i64 %76, 1
  %83 = icmp ult i64 %82, %72
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %63, i64 %82
  %86 = load i8, ptr %85, align 1, !tbaa !18
  %87 = freeze i8 %86
  %88 = icmp eq i8 %87, 10
  %89 = select i1 %88, i64 2, i64 1
  br label %91

90:                                               ; preds = %74
  store i8 %78, ptr %80, align 1, !tbaa !18
  br label %91

91:                                               ; preds = %84, %81, %90
  %92 = phi i64 [ 1, %90 ], [ 1, %81 ], [ %89, %84 ]
  %93 = add i64 %75, 1
  %94 = add i64 %92, %76
  %95 = icmp ult i64 %94, %72
  br i1 %95, label %74, label %96, !llvm.loop !76

96:                                               ; preds = %91, %71
  %97 = phi i64 [ 0, %71 ], [ %93, %91 ]
  %98 = load i1, ptr @maskmode, align 4
  br i1 %98, label %149, label %99

99:                                               ; preds = %96
  %100 = tail call ptr @memchr(ptr noundef nonnull %63, i32 noundef 10, i64 noundef %97) #28
  %101 = icmp eq ptr %100, null
  %102 = icmp ult i64 %97, 200
  %103 = and i1 %102, %101
  br i1 %103, label %149, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %106 = load i64, ptr %105, align 8, !tbaa !35
  %107 = tail call fastcc i32 @linenoiseEditInsertNoRefresh(ptr noundef %0, ptr noundef nonnull %63, i64 noundef %97), !range !32
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  tail call void @free(ptr noundef nonnull %63) #27
  %110 = load ptr, ptr @stderr, align 8, !tbaa !9
  %111 = tail call i32 @fputc(i32 7, ptr %110)
  %112 = load ptr, ptr @stderr, align 8, !tbaa !9
  %113 = tail call i32 @fflush(ptr noundef %112)
  br label %152

114:                                              ; preds = %104
  %115 = add i64 %106, %97
  %116 = icmp ult i64 %106, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %114
  %118 = load i32, ptr %18, align 8, !tbaa !48
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %144, label %120

120:                                              ; preds = %117
  %121 = icmp sgt i32 %118, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %120
  %123 = zext nneg i32 %118 to i64
  br label %124

124:                                              ; preds = %130, %122
  %125 = phi i64 [ %123, %122 ], [ %126, %130 ]
  %126 = add nsw i64 %125, -1
  %127 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !33
  %129 = icmp ugt i64 %128, %106
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %125
  store i64 %128, ptr %131, align 8, !tbaa !33
  %132 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %126
  %133 = load i64, ptr %132, align 8, !tbaa !33
  %134 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %125
  store i64 %133, ptr %134, align 8, !tbaa !33
  %135 = icmp ugt i64 %125, 1
  br i1 %135, label %124, label %138, !llvm.loop !67

136:                                              ; preds = %124
  %137 = trunc i64 %125 to i32
  br label %138

138:                                              ; preds = %130, %136, %120
  %139 = phi i32 [ %118, %120 ], [ %137, %136 ], [ 0, %130 ]
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %140
  store i64 %106, ptr %141, align 8, !tbaa !33
  %142 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %140
  store i64 %115, ptr %142, align 8, !tbaa !33
  %143 = add nsw i32 %118, 1
  store i32 %143, ptr %18, align 8, !tbaa !48
  br label %144

144:                                              ; preds = %114, %117, %138
  %145 = load i32, ptr @mlmode, align 4, !tbaa !5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call fastcc void @refreshMultiLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %151

148:                                              ; preds = %144
  tail call fastcc void @refreshSingleLine(ptr noundef nonnull %0, i32 noundef 3)
  br label %151

149:                                              ; preds = %99, %96
  %150 = tail call i32 @linenoiseEditInsert(ptr noundef %0, ptr noundef nonnull %63, i64 noundef %97)
  br label %151

151:                                              ; preds = %147, %148, %149
  tail call void @free(ptr noundef %63) #27
  br label %152

152:                                              ; preds = %109, %69, %151, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @linenoiseEditStop(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !71
  %4 = tail call i32 @isatty(i32 noundef %3) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6, %1
  %10 = load i32, ptr %2, align 8, !tbaa !71
  %11 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i1, ptr @rawmode, align 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = tail call i32 @tcsetattr(i32 noundef %10, i32 noundef 2, ptr noundef nonnull @orig_termios) #27
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr @rawmode_output, align 4, !tbaa !5
  %20 = tail call i64 @write(i32 noundef %19, ptr noundef nonnull @.str.31, i64 noundef 8) #27
  br label %21

21:                                               ; preds = %18, %9
  store i1 false, ptr @rawmode, align 4
  br label %22

22:                                               ; preds = %13, %15, %21
  %23 = tail call i32 @putchar(i32 10)
  br label %24

24:                                               ; preds = %6, %22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @linenoisePrintKeyCodes() local_unnamed_addr #10 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 1, ptr @rawmode_output, align 4, !tbaa !5
  %4 = tail call fastcc i32 @enableRawMode(i32 noundef 0), !range !32
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %44, label %6

6:                                                ; preds = %0
  store i32 538976288, ptr %1, align 4
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = getelementptr inbounds i8, ptr %1, i64 3
  br label %9

9:                                                ; preds = %31, %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #27
  %10 = call i64 @read(i32 noundef 0, ptr noundef nonnull %2, i64 noundef 1) #27
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) %7, i64 3, i1 false)
  %14 = load i8, ptr %2, align 1
  store i8 %14, ptr %8, align 1, !tbaa !18
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, 1953068401
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @__ctype_b_loc() #31
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = sext i8 %14 to i32
  %21 = sext i8 %14 to i64
  %22 = getelementptr inbounds i16, ptr %19, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !77
  %24 = and i16 %23, 16384
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, i32 63, i32 %20
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %26, i32 noundef %20, i32 noundef %20)
  %28 = tail call i32 @putchar(i32 13)
  %29 = load ptr, ptr @stdout, align 8, !tbaa !9
  %30 = tail call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %9, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #27
  br label %9

32:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #27
  %33 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i1, ptr @rawmode, align 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 2, ptr noundef nonnull @orig_termios) #27
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @rawmode_output, align 4, !tbaa !5
  %42 = tail call i64 @write(i32 noundef %41, ptr noundef nonnull @.str.31, i64 noundef 8) #27
  br label %43

43:                                               ; preds = %40, %32
  store i1 false, ptr @rawmode, align 4
  br label %44

44:                                               ; preds = %43, %37, %35, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @linenoise(ptr noundef %0) local_unnamed_addr #10 {
  %2 = alloca %struct.linenoiseState, align 8
  %3 = tail call i32 @isatty(i32 noundef 0) #27
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @stdin, align 8, !tbaa !9
  %10 = tail call fastcc ptr @linenoiseReadLine(ptr noundef %9, ptr noundef null)
  br label %63

11:                                               ; preds = %5, %1
  %12 = tail call ptr @getenv(ptr noundef nonnull @.str.32) #27
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcasecmp(ptr noundef nonnull %12, ptr noundef nonnull @.str.33) #28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcasecmp(ptr noundef nonnull %12, ptr noundef nonnull @.str.34) #28
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcasecmp(ptr noundef nonnull %12, ptr noundef nonnull @.str.35) #28
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17, %14, %20
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %0)
  %25 = load ptr, ptr @stdout, align 8, !tbaa !9
  %26 = tail call i32 @fflush(ptr noundef %25)
  %27 = load ptr, ptr @stdin, align 8, !tbaa !9
  %28 = tail call fastcc ptr @linenoiseReadLine(ptr noundef %27, ptr noundef null)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %23
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #28
  %32 = getelementptr i8, ptr %28, i64 -1
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %30, %39
  %35 = phi i64 [ %40, %39 ], [ %31, %30 ]
  %36 = getelementptr i8, ptr %32, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !18
  %38 = icmp eq i8 %37, 13
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = add i64 %35, -1
  %41 = getelementptr inbounds i8, ptr %28, i64 %40
  store i8 0, ptr %41, align 1, !tbaa !18
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %63, label %34, !llvm.loop !79

43:                                               ; preds = %11, %20
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %2) #27
  %44 = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #31
  store i32 12, ptr %47, align 4, !tbaa !5
  br label %61

48:                                               ; preds = %43
  %49 = call i32 @linenoiseEditStart(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %44, i64 noundef 4096, ptr noundef %0), !range !32
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %44) #27
  br label %61

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.linenoiseState, ptr %2, i64 0, i32 6
  store i64 1048576, ptr %53, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %54, %52
  %55 = call ptr @linenoiseEditFeed(ptr noundef nonnull %2)
  %56 = load ptr, ptr @linenoiseEditMore, align 8, !tbaa !9
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %54, label %58, !llvm.loop !80

58:                                               ; preds = %54
  call void @linenoiseEditStop(ptr noundef nonnull %2)
  %59 = getelementptr inbounds %struct.linenoiseState, ptr %2, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  call void @free(ptr noundef %60) #27
  br label %61

61:                                               ; preds = %46, %51, %58
  %62 = phi ptr [ null, %46 ], [ null, %51 ], [ %55, %58 ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #27
  br label %63

63:                                               ; preds = %34, %39, %30, %23, %61, %8
  %64 = phi ptr [ %62, %61 ], [ %10, %8 ], [ null, %23 ], [ %28, %30 ], [ %28, %39 ], [ %28, %34 ]
  ret ptr %64
}

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @linenoiseFree(ptr noundef %0) local_unnamed_addr #19 {
  %2 = load ptr, ptr @linenoiseEditMore, align 8, !tbaa !9
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #27
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linenoiseHistorySetMaxLen(i32 noundef %0) local_unnamed_addr #10 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @history, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  %6 = load i32, ptr @history_len, align 4, !tbaa !5
  br i1 %5, label %32, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %0 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %6, %0
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = sub nsw i32 %6, %0
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = zext nneg i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %23, %19 ]
  %21 = getelementptr inbounds ptr, ptr %4, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  tail call void @free(ptr noundef %22) #27
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %18
  br i1 %24, label %25, label %19, !llvm.loop !81

25:                                               ; preds = %19, %12, %14
  %26 = phi i32 [ %15, %14 ], [ 0, %12 ], [ %15, %19 ]
  %27 = phi i32 [ %0, %14 ], [ %6, %12 ], [ %0, %19 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %10, i8 0, i64 %9, i1 false)
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %4, i64 %28
  %30 = sext i32 %27 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %10, ptr nonnull align 8 %29, i64 %31, i1 false)
  tail call void @free(ptr noundef nonnull %4) #27
  store ptr %10, ptr @history, align 8, !tbaa !9
  br label %32

32:                                               ; preds = %25, %3
  store i32 %0, ptr @history_max_len, align 4, !tbaa !5
  %33 = icmp sgt i32 %6, %0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store i32 %0, ptr @history_len, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %7, %32, %34, %1
  %36 = phi i32 [ 0, %1 ], [ 1, %34 ], [ 1, %32 ], [ 0, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linenoiseHistorySave(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = tail call i32 @umask(i32 noundef 127) #27
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14)
  %4 = tail call i32 @umask(i32 noundef %2) #27
  %5 = icmp eq ptr %3, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @fileno(ptr noundef nonnull %3) #27
  %8 = tail call i32 @fchmod(i32 noundef %7, i32 noundef 384) #27
  %9 = load i32, ptr @history_len, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6, %25
  %12 = phi i64 [ %27, %25 ], [ 0, %6 ]
  %13 = load ptr, ptr @history, align 8, !tbaa !9
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %21, %11
  %17 = phi ptr [ %15, %11 ], [ %24, %21 ]
  %18 = load i8, ptr %17, align 1, !tbaa !18
  switch i8 %18, label %19 [
    i8 0, label %25
    i8 10, label %21
  ]

19:                                               ; preds = %16
  %20 = sext i8 %18 to i32
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi i32 [ %20, %19 ], [ 13, %16 ]
  %23 = tail call i32 @fputc(i32 noundef %22, ptr noundef nonnull %3)
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br label %16, !llvm.loop !82

25:                                               ; preds = %16
  %26 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %3)
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr @history_len, align 4, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %11, label %31, !llvm.loop !83

31:                                               ; preds = %25, %6
  %32 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %33

33:                                               ; preds = %1, %31
  %34 = phi i32 [ 0, %31 ], [ -1, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linenoiseHistoryLoad(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = alloca i32, align 4
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  store i32 0, ptr %2, align 4, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = call fastcc ptr @linenoiseReadLine(ptr noundef nonnull %3, ptr noundef nonnull %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %5 ]
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi i64 [ %16, %15 ], [ 0, %8 ]
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !18
  switch i8 %13, label %15 [
    i8 0, label %17
    i8 13, label %14
  ]

14:                                               ; preds = %10
  store i8 10, ptr %12, align 1, !tbaa !18
  br label %15

15:                                               ; preds = %10, %14
  %16 = add i64 %11, 1
  br label %10, !llvm.loop !84

17:                                               ; preds = %10
  %18 = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %9), !range !54
  call void @free(ptr noundef nonnull %9) #27
  %19 = call fastcc ptr @linenoiseReadLine(ptr noundef nonnull %3, ptr noundef nonnull %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !85

21:                                               ; preds = %17, %5
  %22 = load i32, ptr %2, align 4, !tbaa !5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @ferror(ptr noundef nonnull %3) #27
  %26 = icmp ne i32 %25, 0
  %27 = sext i1 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ -1, %21 ], [ %27, %24 ]
  %30 = call i32 @fclose(ptr noundef nonnull %3)
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i32 [ -1, %1 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @linenoiseReadLine(ptr nocapture noundef %0, ptr noundef writeonly %1) unnamed_addr #10 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %5

5:                                                ; preds = %4, %2
  br label %6

6:                                                ; preds = %5, %41
  %7 = phi i64 [ %31, %41 ], [ 0, %5 ]
  %8 = phi i64 [ %43, %41 ], [ 0, %5 ]
  %9 = phi ptr [ %32, %41 ], [ null, %5 ]
  %10 = phi ptr [ %44, %41 ], [ undef, %5 ]
  %11 = add i64 %8, 1
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %30, label %13

13:                                               ; preds = %6
  %14 = icmp eq i64 %7, 0
  %15 = shl i64 %7, 1
  %16 = select i1 %14, i64 16, i64 %15
  %17 = icmp ugt i64 %16, %7
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  tail call void @free(ptr noundef %9) #27
  br i1 %3, label %20, label %19

19:                                               ; preds = %18
  store i32 1, ptr %1, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %19, %18
  %21 = tail call ptr @__errno_location() #31
  store i32 12, ptr %21, align 4, !tbaa !5
  br label %46

22:                                               ; preds = %13
  %23 = tail call ptr @realloc(ptr noundef %9, i64 noundef %16) #30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = icmp eq ptr %9, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @free(ptr noundef nonnull %9) #27
  br label %28

28:                                               ; preds = %27, %25
  br i1 %3, label %46, label %29

29:                                               ; preds = %28
  store i32 1, ptr %1, align 4, !tbaa !5
  br label %46

30:                                               ; preds = %22, %6
  %31 = phi i64 [ %7, %6 ], [ %16, %22 ]
  %32 = phi ptr [ %9, %6 ], [ %23, %22 ]
  %33 = tail call i32 @fgetc(ptr noundef %0)
  switch i32 %33, label %39 [
    i32 -1, label %34
    i32 10, label %34
  ]

34:                                               ; preds = %30, %30
  %35 = icmp eq i32 %33, -1
  %36 = icmp eq i64 %8, 0
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void @free(ptr noundef %32) #27
  br label %46

39:                                               ; preds = %30
  %40 = trunc i32 %33 to i8
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi i8 [ %40, %39 ], [ 0, %34 ]
  %43 = phi i64 [ %11, %39 ], [ %8, %34 ]
  %44 = phi ptr [ %10, %39 ], [ %32, %34 ]
  %45 = getelementptr inbounds i8, ptr %32, i64 %8
  store i8 %42, ptr %45, align 1, !tbaa !18
  switch i32 %33, label %6 [
    i32 -1, label %46
    i32 10, label %46
  ]

46:                                               ; preds = %41, %41, %28, %29, %20, %38
  %47 = phi ptr [ null, %38 ], [ null, %20 ], [ null, %29 ], [ null, %28 ], [ %44, %41 ], [ %44, %41 ]
  ret ptr %47
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @utf8CharWidth(i32 noundef %0) unnamed_addr #20 {
  %2 = icmp ult i32 %0, 32
  %3 = add i32 %0, -127
  %4 = icmp ult i32 %3, 33
  %5 = or i1 %2, %4
  br i1 %5, label %85, label %6

6:                                                ; preds = %1
  %7 = add i32 %0, -768
  %8 = icmp ult i32 %7, 112
  %9 = add i32 %0, -6832
  %10 = icmp ult i32 %9, 80
  %11 = or i1 %8, %10
  %12 = and i32 %0, -64
  %13 = icmp eq i32 %12, 7616
  %14 = or i1 %13, %11
  %15 = add i32 %0, -8400
  %16 = icmp ult i32 %15, 48
  %17 = or i1 %16, %14
  %18 = and i32 %0, -16
  %19 = icmp eq i32 %18, 65056
  %20 = or i1 %19, %17
  br i1 %20, label %85, label %21

21:                                               ; preds = %6
  %22 = and i32 %0, -2
  switch i32 %0, label %23 [
    i32 127999, label %85
    i32 127998, label %85
    i32 127997, label %85
    i32 127996, label %85
    i32 127995, label %85
    i32 65039, label %85
    i32 65038, label %85
    i32 8205, label %85
  ]

23:                                               ; preds = %21
  %24 = icmp ugt i32 %0, 4351
  br i1 %24, label %25, label %84

25:                                               ; preds = %23
  %26 = icmp ult i32 %0, 4448
  %27 = add i32 %0, -9001
  %28 = icmp ult i32 %27, 2
  %29 = icmp eq i32 %22, 8986
  %30 = insertelement <4 x i32> poison, i32 %0, i64 0
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> zeroinitializer
  %32 = add <4 x i32> %31, <i32 -9193, i32 -9208, i32 -9654, i32 -9723>
  %33 = icmp eq i32 %22, 9642
  %34 = icmp ult <4 x i32> %32, <i32 11, i32 3, i32 11, i32 4>
  %35 = and i32 %0, -256
  %36 = icmp eq i32 %35, 9728
  %37 = add i32 %0, -9984
  %38 = icmp ult i32 %37, 192
  %39 = icmp eq i32 %22, 10548
  %40 = add i32 %0, -11013
  %41 = icmp ult i32 %40, 3
  %42 = bitcast <4 x i1> %34 to i4
  %43 = icmp ne i4 %42, 0
  %44 = or i1 %43, %28
  %45 = or i1 %26, %38
  %46 = or i1 %41, %29
  %47 = or i1 %33, %36
  %48 = or i1 %44, %45
  %49 = or i1 %46, %47
  %50 = or i1 %48, %49
  %51 = or i1 %50, %39
  br i1 %51, label %85, label %52

52:                                               ; preds = %25
  switch i32 %0, label %53 [
    i32 11093, label %85
    i32 11088, label %85
    i32 11036, label %85
    i32 11035, label %85
  ]

53:                                               ; preds = %52
  %54 = add i32 %0, -11904
  %55 = icmp ult i32 %54, 30288
  %56 = icmp ne i32 %0, 12351
  %57 = and i1 %56, %55
  %58 = add <4 x i32> %31, <i32 -44032, i32 -63744, i32 -65072, i32 -65280>
  %59 = icmp eq i32 %18, 65040
  %60 = icmp ult <4 x i32> %58, <i32 11172, i32 512, i32 64, i32 97>
  %61 = add i32 %0, -65504
  %62 = icmp ult i32 %61, 7
  %63 = add i32 %0, -127462
  %64 = icmp ult i32 %63, 26
  %65 = add i32 %0, -127744
  %66 = icmp ult i32 %65, 848
  %67 = and i32 %0, -128
  %68 = icmp eq i32 %67, 128640
  %69 = icmp eq i32 %35, 129280
  %70 = icmp eq i32 %35, 129536
  %71 = and i32 %0, -65536
  %72 = icmp eq i32 %71, 131072
  %73 = bitcast <4 x i1> %60 to i4
  %74 = icmp ne i4 %73, 0
  %75 = or i1 %74, %62
  %76 = or i1 %64, %66
  %77 = or i1 %59, %68
  %78 = or i1 %69, %70
  %79 = or i1 %72, %57
  %80 = or i1 %75, %76
  %81 = or i1 %77, %78
  %82 = or i1 %80, %81
  %83 = or i1 %82, %79
  br i1 %83, label %85, label %84

84:                                               ; preds = %53, %23
  br label %85

85:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %25, %53, %52, %52, %52, %52, %6, %1, %84
  %86 = phi i32 [ 1, %84 ], [ 0, %1 ], [ 0, %6 ], [ 0, %21 ], [ 2, %52 ], [ 2, %52 ], [ 2, %52 ], [ 2, %52 ], [ 2, %53 ], [ 2, %25 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ]
  ret i32 %86
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @linenoiseRenderBuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = alloca %struct.linenoiseFolds, align 8
  call void @llvm.lifetime.start.p0(i64 1416, ptr nonnull %5) #27
  %6 = call fastcc i32 @linenoiseGetRenderFolds(ptr noundef %0, ptr noundef nonnull %5), !range !54
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %9 = load i64, ptr %8, align 8, !tbaa !47
  br i1 %7, label %10, label %20

10:                                               ; preds = %4
  %11 = add i64 %9, 1
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %181, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %16, i64 %9, i1 false)
  %17 = getelementptr inbounds i8, ptr %12, i64 %9
  store i8 0, ptr %17, align 1, !tbaa !18
  store ptr %12, ptr %1, align 8, !tbaa !9
  store i64 %9, ptr %2, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !35
  br label %179

20:                                               ; preds = %4
  %21 = load i32, ptr %5, align 8, !tbaa !55
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.linenoiseFolds, ptr %5, i64 0, i32 1
  %25 = zext nneg i32 %21 to i64
  %26 = and i64 %25, 1
  %27 = icmp eq i32 %21, 1
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = and i64 %25, 2147483646
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %53, %30 ]
  %32 = phi i64 [ %9, %28 ], [ %52, %30 ]
  %33 = phi i64 [ 0, %28 ], [ %54, %30 ]
  %34 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %31
  %35 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %31, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !58
  %37 = load i64, ptr %34, align 8, !tbaa !60
  %38 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %31, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !86
  %40 = sub i64 %32, %36
  %41 = add i64 %40, %37
  %42 = add i64 %41, %39
  %43 = or disjoint i64 %31, 1
  %44 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %43
  %45 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %43, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !58
  %47 = load i64, ptr %44, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %43, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !86
  %50 = sub i64 %42, %46
  %51 = add i64 %50, %47
  %52 = add i64 %51, %49
  %53 = add nuw nsw i64 %31, 2
  %54 = add i64 %33, 2
  %55 = icmp eq i64 %54, %29
  br i1 %55, label %56, label %30, !llvm.loop !87

56:                                               ; preds = %30, %23
  %57 = phi i64 [ undef, %23 ], [ %52, %30 ]
  %58 = phi i64 [ 0, %23 ], [ %53, %30 ]
  %59 = phi i64 [ %9, %23 ], [ %52, %30 ]
  %60 = icmp eq i64 %26, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %58
  %63 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %58, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !58
  %65 = load i64, ptr %62, align 8, !tbaa !60
  %66 = getelementptr inbounds %struct.linenoiseFold, ptr %24, i64 %58, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !86
  %68 = sub i64 %59, %64
  %69 = add i64 %68, %65
  %70 = add i64 %69, %67
  br label %71

71:                                               ; preds = %56, %61
  %72 = phi i64 [ %57, %56 ], [ %70, %61 ]
  %73 = add i64 %72, 1
  %74 = tail call noalias ptr @malloc(i64 noundef %73) #29
  %75 = icmp eq ptr %74, null
  br i1 %75, label %181, label %80

76:                                               ; preds = %20
  %77 = add i64 %9, 1
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #29
  %79 = icmp eq ptr %78, null
  br i1 %79, label %181, label %157

80:                                               ; preds = %71
  br i1 %22, label %81, label %157

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.linenoiseFolds, ptr %5, i64 0, i32 1
  %83 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %84 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %85 = zext nneg i32 %21 to i64
  br label %86

86:                                               ; preds = %138, %81
  %87 = phi i64 [ 0, %81 ], [ %139, %138 ]
  %88 = phi i64 [ 0, %81 ], [ %140, %138 ]
  %89 = phi i64 [ 0, %81 ], [ %141, %138 ]
  %90 = phi i32 [ 0, %81 ], [ %142, %138 ]
  %91 = phi i64 [ 0, %81 ], [ %143, %138 ]
  %92 = phi i64 [ 0, %81 ], [ %144, %138 ]
  %93 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87
  %94 = load i64, ptr %93, align 8, !tbaa !60
  %95 = sub i64 %94, %92
  %96 = icmp eq i32 %90, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load i64, ptr %83, align 8, !tbaa !35
  %99 = icmp ugt i64 %98, %94
  br i1 %99, label %114, label %100

100:                                              ; preds = %97
  %101 = add i64 %91, %88
  %102 = add i64 %101, %98
  br label %103

103:                                              ; preds = %86, %100
  %104 = phi i64 [ %102, %100 ], [ %89, %86 ]
  %105 = getelementptr inbounds i8, ptr %74, i64 %91
  %106 = load ptr, ptr %84, align 8, !tbaa !17
  %107 = getelementptr inbounds i8, ptr %106, i64 %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %105, ptr align 1 %107, i64 %95, i1 false)
  %108 = add i64 %95, %91
  %109 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !86
  %111 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !58
  %113 = add i64 %110, %108
  br label %145

114:                                              ; preds = %97
  %115 = getelementptr inbounds i8, ptr %74, i64 %91
  %116 = load ptr, ptr %84, align 8, !tbaa !17
  %117 = getelementptr inbounds i8, ptr %116, i64 %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %115, ptr align 1 %117, i64 %95, i1 false)
  %118 = add i64 %95, %91
  %119 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !58
  %121 = icmp ult i64 %98, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !86
  %125 = add i64 %124, %118
  br label %145

126:                                              ; preds = %114
  %127 = getelementptr inbounds i8, ptr %74, i64 %118
  %128 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 2
  %129 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 3
  %130 = load i64, ptr %129, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %127, ptr nonnull align 8 %128, i64 %130, i1 false)
  %131 = add i64 %130, %118
  %132 = icmp eq i64 %98, %120
  %133 = zext i1 %132 to i32
  %134 = select i1 %132, i64 %131, i64 %89
  %135 = add nuw nsw i64 %87, 1
  %136 = sub i64 0, %120
  %137 = icmp eq i64 %135, %85
  br i1 %137, label %156, label %138

138:                                              ; preds = %126, %145
  %139 = phi i64 [ %135, %126 ], [ %153, %145 ]
  %140 = phi i64 [ %136, %126 ], [ %154, %145 ]
  %141 = phi i64 [ %134, %126 ], [ %150, %145 ]
  %142 = phi i32 [ %133, %126 ], [ 1, %145 ]
  %143 = phi i64 [ %131, %126 ], [ %146, %145 ]
  %144 = phi i64 [ %120, %126 ], [ %147, %145 ]
  br label %86, !llvm.loop !88

145:                                              ; preds = %103, %122
  %146 = phi i64 [ %125, %122 ], [ %113, %103 ]
  %147 = phi i64 [ %120, %122 ], [ %112, %103 ]
  %148 = phi i64 [ %124, %122 ], [ %110, %103 ]
  %149 = phi i64 [ %118, %122 ], [ %108, %103 ]
  %150 = phi i64 [ %125, %122 ], [ %104, %103 ]
  %151 = getelementptr inbounds i8, ptr %74, i64 %149
  %152 = getelementptr inbounds %struct.linenoiseFold, ptr %82, i64 %87, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %151, ptr nonnull align 8 %152, i64 %148, i1 false)
  %153 = add nuw nsw i64 %87, 1
  %154 = sub i64 0, %147
  %155 = icmp eq i64 %153, %85
  br i1 %155, label %167, label %138

156:                                              ; preds = %126
  br i1 %132, label %167, label %157

157:                                              ; preds = %76, %80, %156
  %158 = phi i64 [ %136, %156 ], [ 0, %80 ], [ 0, %76 ]
  %159 = phi i64 [ %131, %156 ], [ 0, %80 ], [ 0, %76 ]
  %160 = phi i64 [ %120, %156 ], [ 0, %80 ], [ 0, %76 ]
  %161 = phi ptr [ %74, %156 ], [ %74, %80 ], [ %78, %76 ]
  %162 = phi i64 [ %72, %156 ], [ %72, %80 ], [ %9, %76 ]
  %163 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 9
  %164 = load i64, ptr %163, align 8, !tbaa !35
  %165 = add i64 %159, %158
  %166 = add i64 %165, %164
  br label %167

167:                                              ; preds = %145, %157, %156
  %168 = phi i64 [ %131, %156 ], [ %159, %157 ], [ %146, %145 ]
  %169 = phi i64 [ %120, %156 ], [ %160, %157 ], [ %147, %145 ]
  %170 = phi ptr [ %74, %156 ], [ %161, %157 ], [ %74, %145 ]
  %171 = phi i64 [ %72, %156 ], [ %162, %157 ], [ %72, %145 ]
  %172 = phi i64 [ %134, %156 ], [ %166, %157 ], [ %150, %145 ]
  %173 = getelementptr inbounds i8, ptr %170, i64 %168
  %174 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !17
  %176 = getelementptr inbounds i8, ptr %175, i64 %169
  %177 = sub i64 %9, %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %173, ptr align 1 %176, i64 %177, i1 false)
  %178 = getelementptr inbounds i8, ptr %170, i64 %171
  store i8 0, ptr %178, align 1, !tbaa !18
  store ptr %170, ptr %1, align 8, !tbaa !9
  store i64 %171, ptr %2, align 8, !tbaa !33
  br label %179

179:                                              ; preds = %14, %167
  %180 = phi i64 [ %172, %167 ], [ %19, %14 ]
  store i64 %180, ptr %3, align 8, !tbaa !33
  br label %181

181:                                              ; preds = %179, %76, %71, %10
  %182 = phi i32 [ -1, %10 ], [ -1, %71 ], [ -1, %76 ], [ 0, %179 ]
  call void @llvm.lifetime.end.p0(i64 1416, ptr nonnull %5) #27
  ret i32 %182
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @linenoiseGetRenderFolds(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 {
  store i32 0, ptr %1, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %4 = load i64, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i64 %4, 0
  %6 = load i1, ptr @maskmode, align 4
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %94, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.linenoiseFolds, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %85
  %16 = phi i32 [ %10, %12 ], [ %86, %85 ]
  %17 = phi i64 [ 0, %12 ], [ %87, %85 ]
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 17, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 18, i64 %17
  %21 = load i64, ptr %20, align 8, !tbaa !33
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %15
  %24 = load i64, ptr %3, align 8, !tbaa !47
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %85, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 8, !tbaa !55
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %1, align 8, !tbaa !55
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.linenoiseFold, ptr %13, i64 %29
  store i64 %19, ptr %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.linenoiseFold, ptr %13, i64 %29, i32 1
  store i64 %21, ptr %31, align 8, !tbaa !58
  %32 = load ptr, ptr %14, align 8, !tbaa !17
  %33 = sub i64 %21, %19
  %34 = getelementptr inbounds i8, ptr %32, i64 %19
  %35 = icmp ult i64 %33, 4
  br i1 %35, label %58, label %36

36:                                               ; preds = %26
  %37 = and i64 %33, -4
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %52, %38 ]
  %40 = phi <2 x i64> [ <i64 1, i64 0>, %36 ], [ %50, %38 ]
  %41 = phi <2 x i64> [ zeroinitializer, %36 ], [ %51, %38 ]
  %42 = getelementptr inbounds i8, ptr %34, i64 %39
  %43 = getelementptr inbounds i8, ptr %42, i64 2
  %44 = load <2 x i8>, ptr %42, align 1, !tbaa !18
  %45 = load <2 x i8>, ptr %43, align 1, !tbaa !18
  %46 = icmp eq <2 x i8> %44, <i8 10, i8 10>
  %47 = icmp eq <2 x i8> %45, <i8 10, i8 10>
  %48 = zext <2 x i1> %46 to <2 x i64>
  %49 = zext <2 x i1> %47 to <2 x i64>
  %50 = add <2 x i64> %40, %48
  %51 = add <2 x i64> %41, %49
  %52 = add nuw i64 %39, 4
  %53 = icmp eq i64 %52, %37
  br i1 %53, label %54, label %38, !llvm.loop !89

54:                                               ; preds = %38
  %55 = add <2 x i64> %51, %50
  %56 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %55)
  %57 = icmp eq i64 %33, %37
  br i1 %57, label %71, label %58

58:                                               ; preds = %26, %54
  %59 = phi i64 [ 0, %26 ], [ %37, %54 ]
  %60 = phi i64 [ 1, %26 ], [ %56, %54 ]
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ %69, %61 ], [ %59, %58 ]
  %63 = phi i64 [ %68, %61 ], [ %60, %58 ]
  %64 = getelementptr inbounds i8, ptr %34, i64 %62
  %65 = load i8, ptr %64, align 1, !tbaa !18
  %66 = icmp eq i8 %65, 10
  %67 = zext i1 %66 to i64
  %68 = add i64 %63, %67
  %69 = add nuw i64 %62, 1
  %70 = icmp eq i64 %69, %33
  br i1 %70, label %71, label %61, !llvm.loop !90

71:                                               ; preds = %61, %54
  %72 = phi i64 [ %56, %54 ], [ %68, %61 ]
  %73 = icmp ugt i64 %72, 1
  %74 = getelementptr inbounds %struct.linenoiseFold, ptr %13, i64 %29, i32 2
  br i1 %73, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %74, i64 noundef 64, ptr noundef nonnull @.str.21, i64 noundef %72) #27
  br label %79

77:                                               ; preds = %71
  %78 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %74, i64 noundef 64, ptr noundef nonnull @.str.22, i64 noundef %33) #27
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0)
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %struct.linenoiseFold, ptr %13, i64 %29, i32 3
  store i64 %82, ptr %83, align 8, !tbaa !86
  %84 = load i32, ptr %9, align 8, !tbaa !48
  br label %85

85:                                               ; preds = %15, %23, %79
  %86 = phi i32 [ %16, %15 ], [ %16, %23 ], [ %84, %79 ]
  %87 = add nuw nsw i64 %17, 1
  %88 = sext i32 %86 to i64
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %15, label %90, !llvm.loop !91

90:                                               ; preds = %85
  %91 = load i32, ptr %1, align 8, !tbaa !55
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %8, %90, %2
  %95 = phi i32 [ 0, %2 ], [ %93, %90 ], [ 0, %8 ]
  ret i32 %95
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @utf8PrevCharLen(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #14 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = call fastcc i32 @utf8DecodePrev(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !range !92
  %8 = load i64, ptr %3, align 8, !tbaa !33
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %6
  %11 = sub i64 %1, %8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %10, %60
  %14 = phi i32 [ %63, %60 ], [ %7, %10 ]
  %15 = phi i64 [ %62, %60 ], [ %11, %10 ]
  %16 = phi i64 [ %61, %60 ], [ %8, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %17 = call fastcc i32 @utf8DecodePrev(ptr noundef %0, i64 noundef %15, ptr noundef nonnull %4), !range !92
  %18 = load i64, ptr %4, align 8, !tbaa !33
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %13
  %21 = icmp eq i32 %17, 8205
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = add i64 %18, %16
  %24 = sub i64 %15, %18
  %25 = call fastcc i32 @utf8DecodePrev(ptr noundef %0, i64 noundef %24, ptr noundef nonnull %4), !range !92
  %26 = load i64, ptr %4, align 8, !tbaa !33
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = add i64 %26, %23
  %30 = sub i64 %24, %26
  br label %60, !llvm.loop !93

31:                                               ; preds = %20
  switch i32 %14, label %32 [
    i32 127999, label %47
    i32 127998, label %47
    i32 127997, label %47
    i32 127996, label %47
    i32 127995, label %47
    i32 65039, label %47
    i32 65038, label %47
    i32 8205, label %47
  ]

32:                                               ; preds = %31
  %33 = add nsw i32 %14, -768
  %34 = icmp ult i32 %33, 112
  %35 = add nsw i32 %14, -6832
  %36 = icmp ult i32 %35, 80
  %37 = or i1 %34, %36
  %38 = and i32 %14, -64
  %39 = icmp eq i32 %38, 7616
  %40 = or i1 %39, %37
  %41 = add nsw i32 %14, -8400
  %42 = icmp ult i32 %41, 48
  %43 = or i1 %42, %40
  %44 = and i32 %14, -16
  %45 = icmp eq i32 %44, 65056
  %46 = or i1 %45, %43
  br i1 %46, label %47, label %50

47:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %32
  %48 = add i64 %18, %16
  %49 = sub i64 %15, %18
  br label %60, !llvm.loop !93

50:                                               ; preds = %32
  %51 = add nsw i32 %14, -127488
  %52 = icmp ult i32 %51, -26
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = add nsw i32 %17, -127488
  %55 = icmp ult i32 %54, -26
  %56 = select i1 %55, i64 0, i64 %18
  %57 = add i64 %56, %16
  br label %58

58:                                               ; preds = %13, %22, %53, %50
  %59 = phi i64 [ %16, %50 ], [ %57, %53 ], [ %16, %13 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %65

60:                                               ; preds = %47, %28
  %61 = phi i64 [ %29, %28 ], [ %48, %47 ]
  %62 = phi i64 [ %30, %28 ], [ %49, %47 ]
  %63 = phi i32 [ %25, %28 ], [ %17, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %64 = icmp eq i64 %62, 0
  br i1 %64, label %65, label %13

65:                                               ; preds = %60, %10, %58, %6
  %66 = phi i64 [ 0, %6 ], [ %59, %58 ], [ %8, %10 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %67

67:                                               ; preds = %2, %65
  %68 = phi i64 [ %66, %65 ], [ 0, %2 ]
  ret i64 %68
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @utf8DecodePrev(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = add i64 %1, -1
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 3)
  %8 = add nuw nsw i64 %7, 1
  %9 = add i64 %1, -1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %35, label %12

11:                                               ; preds = %3
  store i64 0, ptr %2, align 8, !tbaa !33
  br label %97

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %0, i64 %9
  %14 = load i8, ptr %13, align 1, !tbaa !18
  %15 = and i8 %14, -64
  %16 = icmp eq i8 %15, -128
  br i1 %16, label %17, label %35, !llvm.loop !94

17:                                               ; preds = %12
  %18 = add i64 %1, -2
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %0, i64 %18
  %22 = load i8, ptr %21, align 1, !tbaa !18
  %23 = and i8 %22, -64
  %24 = icmp eq i8 %23, -128
  br i1 %24, label %25, label %35, !llvm.loop !94

25:                                               ; preds = %20
  %26 = add i64 %1, -3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !18
  %31 = and i8 %30, -64
  %32 = icmp eq i8 %31, -128
  br i1 %32, label %33, label %35, !llvm.loop !94

33:                                               ; preds = %28
  %34 = add i64 %1, -4
  br label %35

35:                                               ; preds = %33, %28, %25, %20, %17, %5, %12
  %36 = phi i64 [ %1, %5 ], [ %1, %12 ], [ %9, %17 ], [ %9, %20 ], [ %18, %25 ], [ %18, %28 ], [ %26, %33 ]
  %37 = phi i64 [ %9, %5 ], [ %9, %12 ], [ %18, %17 ], [ %18, %20 ], [ %26, %25 ], [ %26, %28 ], [ %34, %33 ]
  %38 = phi i64 [ %8, %5 ], [ 1, %12 ], [ %8, %17 ], [ 2, %20 ], [ %8, %25 ], [ 3, %28 ], [ %8, %33 ]
  store i64 %38, ptr %2, align 8, !tbaa !33
  %39 = getelementptr inbounds i8, ptr %0, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !18
  %41 = zext i8 %40 to i32
  %42 = icmp sgt i8 %40, -1
  br i1 %42, label %97, label %43

43:                                               ; preds = %35
  %44 = and i32 %41, 224
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = and i8 %40, 31
  %48 = zext nneg i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 6
  %50 = getelementptr inbounds i8, ptr %0, i64 %36
  %51 = load i8, ptr %50, align 1, !tbaa !18
  %52 = and i8 %51, 63
  %53 = zext nneg i8 %52 to i32
  %54 = or disjoint i32 %49, %53
  br label %97

55:                                               ; preds = %43
  %56 = and i32 %41, 240
  %57 = icmp eq i32 %56, 224
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = and i8 %40, 15
  %60 = zext nneg i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 12
  %62 = getelementptr inbounds i8, ptr %0, i64 %36
  %63 = load i8, ptr %62, align 1, !tbaa !18
  %64 = and i8 %63, 63
  %65 = zext nneg i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 6
  %67 = or disjoint i32 %66, %61
  %68 = getelementptr inbounds i8, ptr %39, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !18
  %70 = and i8 %69, 63
  %71 = zext nneg i8 %70 to i32
  %72 = or disjoint i32 %67, %71
  br label %97

73:                                               ; preds = %55
  %74 = and i32 %41, 248
  %75 = icmp eq i32 %74, 240
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = and i8 %40, 7
  %78 = zext nneg i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 18
  %80 = getelementptr inbounds i8, ptr %0, i64 %36
  %81 = load i8, ptr %80, align 1, !tbaa !18
  %82 = and i8 %81, 63
  %83 = zext nneg i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 12
  %85 = or disjoint i32 %84, %79
  %86 = getelementptr inbounds i8, ptr %39, i64 2
  %87 = load i8, ptr %86, align 1, !tbaa !18
  %88 = and i8 %87, 63
  %89 = zext nneg i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 6
  %91 = or disjoint i32 %85, %90
  %92 = getelementptr inbounds i8, ptr %39, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !18
  %94 = and i8 %93, 63
  %95 = zext nneg i8 %94 to i32
  %96 = or disjoint i32 %91, %95
  br label %97

97:                                               ; preds = %76, %58, %46, %35, %73, %11
  %98 = phi i32 [ 0, %11 ], [ %54, %46 ], [ %72, %58 ], [ %96, %76 ], [ %41, %35 ], [ %41, %73 ]
  ret i32 %98
}

; Function Attrs: nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal void @linenoiseAtExit() #10 {
  %1 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #27
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i1, ptr @rawmode, align 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 2, ptr noundef nonnull @orig_termios) #27
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr @rawmode_output, align 4, !tbaa !5
  %10 = tail call i64 @write(i32 noundef %9, ptr noundef nonnull @.str.31, i64 noundef 8) #27
  br label %11

11:                                               ; preds = %8, %0
  store i1 false, ptr @rawmode, align 4
  br label %12

12:                                               ; preds = %3, %5, %11
  %13 = load ptr, ptr @history, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @history_len, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %24, %20 ]
  %22 = getelementptr inbounds ptr, ptr %13, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  tail call void @free(ptr noundef %23) #27
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %19
  br i1 %25, label %26, label %20, !llvm.loop !95

26:                                               ; preds = %20, %15
  tail call void @free(ptr noundef nonnull %13) #27
  br label %27

27:                                               ; preds = %12, %26
  ret void
}

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pasteBufferAppend(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5, i64 noundef %6) unnamed_addr #10 {
  %8 = load i64, ptr %3, align 8, !tbaa !33
  %9 = icmp ugt i64 %8, %6
  %10 = sub i64 %6, %8
  %11 = icmp ult i64 %10, %5
  %12 = or i1 %9, %11
  %13 = xor i64 %5, -1
  %14 = icmp ugt i64 %8, %13
  %15 = or i1 %14, %12
  br i1 %15, label %87, label %16

16:                                               ; preds = %7
  %17 = add i64 %8, %5
  %18 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 11
  %19 = load i64, ptr %18, align 8, !tbaa !47
  %20 = xor i64 %17, -1
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %87, label %22

22:                                               ; preds = %16
  %23 = add i64 %19, %17
  %24 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = icmp ult i64 %25, %23
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !51
  %30 = icmp ult i64 %29, %23
  br i1 %30, label %87, label %31

31:                                               ; preds = %27
  %32 = icmp eq i64 %25, 0
  %33 = select i1 %32, i64 16, i64 %25
  %34 = lshr i64 %29, 1
  %35 = icmp ult i64 %33, %23
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %39
  %37 = phi i64 [ %40, %39 ], [ %33, %31 ]
  %38 = icmp ugt i64 %37, %34
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = shl nuw i64 %37, 1
  %41 = icmp ult i64 %40, %23
  br i1 %41, label %36, label %42, !llvm.loop !52

42:                                               ; preds = %39, %36, %31
  %43 = phi i64 [ %33, %31 ], [ %40, %39 ], [ %29, %36 ]
  %44 = icmp ult i64 %43, %23
  %45 = icmp eq i64 %43, -1
  %46 = or i1 %44, %45
  br i1 %46, label %87, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.linenoiseState, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = add nuw i64 %43, 1
  %51 = tail call ptr @realloc(ptr noundef %49, i64 noundef %50) #30
  %52 = icmp eq ptr %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %47
  store ptr %51, ptr %48, align 8, !tbaa !17
  store i64 %43, ptr %24, align 8, !tbaa !50
  %54 = load i64, ptr %3, align 8, !tbaa !33
  %55 = add i64 %54, %5
  br label %56

56:                                               ; preds = %53, %22
  %57 = phi i64 [ %55, %53 ], [ %17, %22 ]
  %58 = phi i64 [ %54, %53 ], [ %8, %22 ]
  %59 = load i64, ptr %2, align 8, !tbaa !33
  %60 = icmp ult i64 %59, %57
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %1, align 8, !tbaa !9
  br label %83

63:                                               ; preds = %56
  %64 = icmp eq i64 %59, 0
  %65 = select i1 %64, i64 64, i64 %59
  br label %66

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %65, %63 ], [ %70, %69 ]
  %68 = icmp ult i64 %67, %57
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = shl i64 %67, 1
  %71 = icmp slt i64 %67, 1
  %72 = icmp ugt i64 %70, 1048576
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %66

74:                                               ; preds = %69, %66
  %75 = phi i64 [ 1048576, %69 ], [ %67, %66 ]
  %76 = icmp ult i64 %75, %57
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %1, align 8, !tbaa !9
  %79 = tail call ptr @realloc(ptr noundef %78, i64 noundef %75) #30
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  store ptr %79, ptr %1, align 8, !tbaa !9
  store i64 %75, ptr %2, align 8, !tbaa !33
  %82 = load i64, ptr %3, align 8, !tbaa !33
  br label %83

83:                                               ; preds = %61, %81
  %84 = phi i64 [ %58, %61 ], [ %82, %81 ]
  %85 = phi ptr [ %62, %61 ], [ %79, %81 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %4, i64 %5, i1 false)
  store i64 %17, ptr %3, align 8, !tbaa !33
  br label %87

87:                                               ; preds = %77, %74, %47, %42, %27, %16, %7, %83
  %88 = phi i32 [ 0, %83 ], [ -1, %7 ], [ -1, %16 ], [ -1, %27 ], [ -1, %42 ], [ -1, %47 ], [ -1, %74 ], [ -1, %77 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"linenoiseCompletions", !13, i64 0, !10, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !13, i64 0}
!15 = !{!16, !13, i64 88}
!16 = !{!"linenoiseState", !6, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !10, i64 24, !13, i64 32, !13, i64 40, !10, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !7, i64 120, !7, i64 248}
!17 = !{!16, !10, i64 24}
!18 = !{!7, !7, i64 0}
!19 = !{i32 0, i32 3}
!20 = !{!21, !10, i64 0}
!21 = !{!"abuf", !10, i64 0, !6, i64 8}
!22 = !{!21, !6, i64 8}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = !{!16, !10, i64 48}
!28 = !{!16, !13, i64 56}
!29 = !{!16, !6, i64 104}
!30 = !{!16, !13, i64 96}
!31 = !{!16, !6, i64 20}
!32 = !{i32 -1, i32 1}
!33 = !{!13, !13, i64 0}
!34 = distinct !{!34, !24}
!35 = !{!16, !13, i64 64}
!36 = !{!16, !13, i64 72}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = !{!16, !6, i64 0}
!42 = !{!16, !13, i64 8}
!43 = !{i64 0, i64 8, !9, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !9, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 8, !33, i64 56, i64 8, !33, i64 64, i64 8, !33, i64 72, i64 8, !33, i64 80, i64 4, !5, i64 84, i64 4, !5, i64 88, i64 4, !5, i64 96, i64 128, !18, i64 224, i64 128, !18}
!44 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 4, !5, i64 56, i64 128, !18, i64 184, i64 128, !18}
!45 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 40, i64 128, !18, i64 168, i64 128, !18}
!46 = !{i64 0, i64 4, !5, i64 8, i64 128, !18, i64 136, i64 128, !18}
!47 = !{!16, !13, i64 80}
!48 = !{!16, !6, i64 112}
!49 = distinct !{!49, !24}
!50 = !{!16, !13, i64 32}
!51 = !{!16, !13, i64 40}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = !{i32 0, i32 2}
!55 = !{!56, !6, i64 0}
!56 = !{!"linenoiseFolds", !6, i64 0, !7, i64 8}
!57 = distinct !{!57, !24}
!58 = !{!59, !13, i64 8}
!59 = !{!"linenoiseFold", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 80}
!60 = !{!59, !13, i64 0}
!61 = distinct !{!61, !24}
!62 = !{!16, !6, i64 108}
!63 = distinct !{!63, !24, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !24, !65, !64}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !24}
!71 = !{!16, !6, i64 16}
!72 = distinct !{!72, !24}
!73 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 1, !18, i64 17, i64 32, !18, i64 52, i64 4, !5, i64 56, i64 4, !5}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !7, i64 0}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = !{!59, !13, i64 80}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24, !64, !65}
!90 = distinct !{!90, !24, !65, !64}
!91 = distinct !{!91, !24}
!92 = !{i32 0, i32 2097152}
!93 = distinct !{!93, !24}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
