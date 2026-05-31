; ModuleID = 'corpus_src/zlib/infback.c'
source_filename = "corpus_src/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@inflateBack.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBackInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1, !tbaa !5
  %9 = icmp ne i8 %8, 49
  %10 = icmp ne i32 %4, 112
  %11 = or i1 %10, %9
  br i1 %11, label %47, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  %14 = icmp eq ptr %2, null
  %15 = or i1 %13, %14
  %16 = add i32 %1, -16
  %17 = icmp ult i32 %16, -8
  %18 = or i1 %17, %15
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %20, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store ptr @zcalloc, ptr %21, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %25, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ @zcalloc, %24 ], [ %22, %19 ]
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr @zcfree, ptr %28, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %35, ptr %38, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 6
  store i32 32768, ptr %39, align 4, !tbaa !17
  %40 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 10
  store i32 %1, ptr %40, align 8, !tbaa !19
  %41 = shl nuw nsw i32 1, %1
  %42 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 11
  store i32 %41, ptr %42, align 4, !tbaa !20
  %43 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 14
  store ptr %2, ptr %43, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 13
  store i32 0, ptr %44, align 4, !tbaa !22
  %45 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 12
  store i32 0, ptr %45, align 8, !tbaa !23
  %46 = getelementptr inbounds %struct.inflate_state, ptr %35, i64 0, i32 32
  store i32 1, ptr %46, align 8, !tbaa !24
  br label %47

47:                                               ; preds = %32, %12, %5, %7, %37
  %48 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %32 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @inflateBack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1231, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1231, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 1
  store i32 16191, ptr %14, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !26
  %16 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 12
  store i32 0, ptr %16, align 8, !tbaa !23
  %17 = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %17, ptr %6, align 8, !tbaa !28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !29
  br label %22

22:                                               ; preds = %12, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 11
  %27 = load i32, ptr %26, align 4, !tbaa !20
  %28 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 25
  %29 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 26
  %30 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 24
  %31 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 27
  %32 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 31
  %33 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 28
  %34 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 20
  %35 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 22
  %36 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29
  %37 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 30
  %38 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 256
  %39 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 21
  %40 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 23
  %41 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 17
  %42 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 19
  %43 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 18
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %46 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 15
  %48 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 16
  br label %49

49:                                               ; preds = %1205, %22
  %50 = phi i32 [ 16191, %22 ], [ %1211, %1205 ]
  %51 = phi ptr [ %25, %22 ], [ %1206, %1205 ]
  %52 = phi i32 [ %23, %22 ], [ %1207, %1205 ]
  %53 = phi i32 [ %27, %22 ], [ %1208, %1205 ]
  %54 = phi i64 [ 0, %22 ], [ %1209, %1205 ]
  %55 = phi i32 [ 0, %22 ], [ %1210, %1205 ]
  switch i32 %50, label %1214 [
    i32 16191, label %60
    i32 16193, label %102
    i32 16196, label %56
    i32 16200, label %647
    i32 16208, label %1212
    i32 16209, label %1213
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %205

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %183

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !26
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %87

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %73, label %77

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = zext nneg i32 %69 to i64
  %71 = lshr i64 %54, %70
  %72 = and i32 %55, -8
  store i32 16208, ptr %14, align 8, !tbaa !25
  br label %1205

73:                                               ; preds = %65
  %74 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

77:                                               ; preds = %73, %65
  %78 = phi i32 [ %74, %73 ], [ %52, %65 ]
  %79 = add i32 %78, -1
  %80 = load ptr, ptr %6, align 8, !tbaa !28
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %81, ptr %6, align 8, !tbaa !28
  %82 = load i8, ptr %80, align 1, !tbaa !5
  %83 = zext i8 %82 to i64
  %84 = zext nneg i32 %55 to i64
  %85 = shl nuw nsw i64 %83, %84
  %86 = add i64 %85, %54
  br label %87

87:                                               ; preds = %77, %63
  %88 = phi i32 [ %79, %77 ], [ %52, %63 ]
  %89 = phi i64 [ %86, %77 ], [ %54, %63 ]
  %90 = phi i32 [ %66, %77 ], [ %55, %63 ]
  %91 = trunc i64 %89 to i32
  %92 = and i32 %91, 1
  store i32 %92, ptr %15, align 4, !tbaa !26
  %93 = lshr i32 %91, 1
  %94 = and i32 %93, 3
  switch i32 %94, label %97 [
    i32 0, label %98
    i32 1, label %95
    i32 2, label %96
  ]

95:                                               ; preds = %87
  call void @inflate_fixed(ptr noundef nonnull %10) #5
  br label %98

96:                                               ; preds = %87
  br label %98

97:                                               ; preds = %87
  store ptr @.str.1, ptr %13, align 8, !tbaa !8
  br label %98

98:                                               ; preds = %87, %95, %96, %97
  %99 = phi i32 [ 16200, %95 ], [ 16196, %96 ], [ 16209, %97 ], [ 16193, %87 ]
  store i32 %99, ptr %14, align 8, !tbaa !25
  %100 = lshr i64 %89, 3
  %101 = add i32 %90, -3
  br label %1205

102:                                              ; preds = %49
  %103 = and i32 %55, 7
  %104 = zext nneg i32 %103 to i64
  %105 = lshr i64 %54, %104
  %106 = and i32 %55, -8
  %107 = icmp ult i32 %106, 32
  br i1 %107, label %108, label %133

108:                                              ; preds = %102
  %109 = and i32 %55, -8
  %110 = zext i32 %109 to i64
  br label %111

111:                                              ; preds = %108, %120
  %112 = phi i64 [ %110, %108 ], [ %129, %120 ]
  %113 = phi i64 [ %105, %108 ], [ %128, %120 ]
  %114 = phi i32 [ %52, %108 ], [ %122, %120 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %117, %116 ], [ %114, %111 ]
  %122 = add i32 %121, -1
  %123 = load ptr, ptr %6, align 8, !tbaa !28
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %124, ptr %6, align 8, !tbaa !28
  %125 = load i8, ptr %123, align 1, !tbaa !5
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, %112
  %128 = add i64 %127, %113
  %129 = add nuw nsw i64 %112, 8
  %130 = icmp ult i64 %112, 24
  br i1 %130, label %111, label %131, !llvm.loop !30

131:                                              ; preds = %120
  %132 = trunc i64 %129 to i32
  br label %133

133:                                              ; preds = %131, %102
  %134 = phi i32 [ %52, %102 ], [ %122, %131 ]
  %135 = phi i64 [ %105, %102 ], [ %128, %131 ]
  %136 = phi i32 [ %106, %102 ], [ %132, %131 ]
  %137 = and i64 %135, 65535
  %138 = lshr i64 %135, 16
  %139 = xor i64 %138, %137
  %140 = icmp eq i64 %139, 65535
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  store ptr @.str.2, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

142:                                              ; preds = %133
  %143 = trunc i64 %135 to i32
  %144 = and i32 %143, 65535
  store i32 %144, ptr %41, align 4, !tbaa !32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %179, label %146

146:                                              ; preds = %142, %164
  %147 = phi i32 [ %174, %164 ], [ %53, %142 ]
  %148 = phi i32 [ %171, %164 ], [ %134, %142 ]
  %149 = phi ptr [ %175, %164 ], [ %51, %142 ]
  %150 = phi i32 [ %177, %164 ], [ %144, %142 ]
  %151 = icmp eq i32 %148, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

156:                                              ; preds = %146, %152
  %157 = phi i32 [ %153, %152 ], [ %148, %146 ]
  %158 = icmp eq i32 %147, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load ptr, ptr %24, align 8, !tbaa !21
  %161 = load i32, ptr %26, align 4, !tbaa !20
  store i32 %161, ptr %16, align 8, !tbaa !23
  %162 = call i32 %3(ptr noundef %4, ptr noundef %160, i32 noundef %161) #5
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %1214

164:                                              ; preds = %159, %156
  %165 = phi ptr [ %160, %159 ], [ %149, %156 ]
  %166 = phi i32 [ %161, %159 ], [ %147, %156 ]
  %167 = call i32 @llvm.umin.i32(i32 %150, i32 %157)
  %168 = call i32 @llvm.umin.i32(i32 %167, i32 %166)
  %169 = load ptr, ptr %6, align 8, !tbaa !28
  %170 = zext i32 %168 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %169, i64 %170, i1 false)
  %171 = sub i32 %157, %168
  %172 = load ptr, ptr %6, align 8, !tbaa !28
  %173 = getelementptr inbounds i8, ptr %172, i64 %170
  store ptr %173, ptr %6, align 8, !tbaa !28
  %174 = sub i32 %166, %168
  %175 = getelementptr inbounds i8, ptr %165, i64 %170
  %176 = load i32, ptr %41, align 4, !tbaa !32
  %177 = sub i32 %176, %168
  store i32 %177, ptr %41, align 4, !tbaa !32
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %146, !llvm.loop !33

179:                                              ; preds = %164, %142
  %180 = phi ptr [ %51, %142 ], [ %175, %164 ]
  %181 = phi i32 [ %134, %142 ], [ %171, %164 ]
  %182 = phi i32 [ %53, %142 ], [ %174, %164 ]
  store i32 16191, ptr %14, align 8, !tbaa !25
  br label %1205

183:                                              ; preds = %58, %192
  %184 = phi i64 [ %59, %58 ], [ %201, %192 ]
  %185 = phi i64 [ %54, %58 ], [ %200, %192 ]
  %186 = phi i32 [ %52, %58 ], [ %194, %192 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

192:                                              ; preds = %188, %183
  %193 = phi i32 [ %189, %188 ], [ %186, %183 ]
  %194 = add i32 %193, -1
  %195 = load ptr, ptr %6, align 8, !tbaa !28
  %196 = getelementptr inbounds i8, ptr %195, i64 1
  store ptr %196, ptr %6, align 8, !tbaa !28
  %197 = load i8, ptr %195, align 1, !tbaa !5
  %198 = zext i8 %197 to i64
  %199 = shl nuw nsw i64 %198, %184
  %200 = add i64 %199, %185
  %201 = add nuw nsw i64 %184, 8
  %202 = icmp ult i64 %184, 6
  br i1 %202, label %183, label %203, !llvm.loop !34

203:                                              ; preds = %192
  %204 = trunc i64 %201 to i32
  br label %205

205:                                              ; preds = %203, %56
  %206 = phi i32 [ %52, %56 ], [ %194, %203 ]
  %207 = phi i64 [ %54, %56 ], [ %200, %203 ]
  %208 = phi i32 [ %55, %56 ], [ %204, %203 ]
  %209 = trunc i64 %207 to i32
  %210 = and i32 %209, 31
  %211 = add nuw nsw i32 %210, 257
  store i32 %211, ptr %28, align 4, !tbaa !35
  %212 = lshr i32 %209, 5
  %213 = and i32 %212, 31
  %214 = add nuw nsw i32 %213, 1
  store i32 %214, ptr %29, align 8, !tbaa !36
  %215 = lshr i32 %209, 10
  %216 = and i32 %215, 15
  %217 = add nuw nsw i32 %216, 4
  store i32 %217, ptr %30, align 8, !tbaa !37
  %218 = lshr i64 %207, 14
  %219 = add i32 %208, -14
  %220 = icmp ugt i32 %210, 29
  %221 = icmp ugt i32 %213, 29
  %222 = or i1 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %205
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

224:                                              ; preds = %205
  store i32 0, ptr %31, align 4, !tbaa !38
  br label %229

225:                                              ; preds = %259
  %226 = icmp ult i32 %268, 19
  br i1 %226, label %227, label %287

227:                                              ; preds = %225
  %228 = zext nneg i32 %268 to i64
  br label %277

229:                                              ; preds = %224, %259
  %230 = phi i32 [ %260, %259 ], [ %217, %224 ]
  %231 = phi i32 [ %261, %259 ], [ %217, %224 ]
  %232 = phi i32 [ %268, %259 ], [ 0, %224 ]
  %233 = phi i32 [ %275, %259 ], [ %219, %224 ]
  %234 = phi i64 [ %274, %259 ], [ %218, %224 ]
  %235 = phi i32 [ %263, %259 ], [ %206, %224 ]
  %236 = icmp ult i32 %233, 3
  br i1 %236, label %237, label %259

237:                                              ; preds = %229
  %238 = or disjoint i32 %233, 8
  %239 = icmp eq i32 %235, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %31, align 4, !tbaa !38
  %245 = load i32, ptr %30, align 8, !tbaa !37
  br label %247

246:                                              ; preds = %240
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

247:                                              ; preds = %243, %237
  %248 = phi i32 [ %245, %243 ], [ %230, %237 ]
  %249 = phi i32 [ %244, %243 ], [ %232, %237 ]
  %250 = phi i32 [ %241, %243 ], [ %235, %237 ]
  %251 = add i32 %250, -1
  %252 = load ptr, ptr %6, align 8, !tbaa !28
  %253 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %253, ptr %6, align 8, !tbaa !28
  %254 = load i8, ptr %252, align 1, !tbaa !5
  %255 = zext i8 %254 to i64
  %256 = zext nneg i32 %233 to i64
  %257 = shl nuw nsw i64 %255, %256
  %258 = add nuw nsw i64 %257, %234
  br label %259

259:                                              ; preds = %247, %229
  %260 = phi i32 [ %248, %247 ], [ %230, %229 ]
  %261 = phi i32 [ %248, %247 ], [ %231, %229 ]
  %262 = phi i32 [ %249, %247 ], [ %232, %229 ]
  %263 = phi i32 [ %251, %247 ], [ %235, %229 ]
  %264 = phi i64 [ %258, %247 ], [ %234, %229 ]
  %265 = phi i32 [ %238, %247 ], [ %233, %229 ]
  %266 = trunc i64 %264 to i16
  %267 = and i16 %266, 7
  %268 = add i32 %262, 1
  store i32 %268, ptr %31, align 4, !tbaa !38
  %269 = zext i32 %262 to i64
  %270 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !39
  %272 = zext i16 %271 to i64
  %273 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %272
  store i16 %267, ptr %273, align 2, !tbaa !39
  %274 = lshr i64 %264, 3
  %275 = add i32 %265, -3
  %276 = icmp ult i32 %268, %261
  br i1 %276, label %229, label %225, !llvm.loop !41

277:                                              ; preds = %227, %277
  %278 = phi i64 [ %228, %227 ], [ %279, %277 ]
  %279 = add nuw nsw i64 %278, 1
  %280 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %278
  %281 = load i16, ptr %280, align 2, !tbaa !39
  %282 = zext i16 %281 to i64
  %283 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %282
  store i16 0, ptr %283, align 2, !tbaa !39
  %284 = and i64 %279, 4294967295
  %285 = icmp eq i64 %284, 19
  br i1 %285, label %286, label %277, !llvm.loop !42

286:                                              ; preds = %277
  store i32 19, ptr %31, align 4, !tbaa !38
  br label %287

287:                                              ; preds = %286, %225
  store ptr %32, ptr %33, align 8, !tbaa !43
  store ptr %32, ptr %34, align 8, !tbaa !44
  store i32 7, ptr %35, align 8, !tbaa !45
  %288 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %36, i32 noundef 19, ptr noundef nonnull %33, ptr noundef nonnull %35, ptr noundef nonnull %37) #5
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

291:                                              ; preds = %287
  store i32 0, ptr %31, align 4, !tbaa !38
  %292 = load i32, ptr %28, align 4, !tbaa !35
  %293 = load i32, ptr %29, align 8, !tbaa !36
  %294 = sub i32 0, %292
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %622, label %296

296:                                              ; preds = %291, %614
  %297 = phi i32 [ %620, %614 ], [ %275, %291 ]
  %298 = phi i64 [ %619, %614 ], [ %274, %291 ]
  %299 = phi i32 [ %618, %614 ], [ %263, %291 ]
  %300 = load ptr, ptr %34, align 8, !tbaa !44
  %301 = trunc i64 %298 to i32
  %302 = load i32, ptr %35, align 8, !tbaa !45
  %303 = shl nsw i32 -1, %302
  %304 = xor i32 %303, -1
  %305 = and i32 %304, %301
  %306 = zext nneg i32 %305 to i64
  %307 = getelementptr inbounds %struct.code, ptr %300, i64 %306
  %308 = getelementptr inbounds i8, ptr %307, i64 1
  %309 = load i8, ptr %308, align 1, !tbaa.struct !46
  %310 = zext i8 %309 to i32
  %311 = icmp ult i32 %297, %310
  br i1 %311, label %312, label %353

312:                                              ; preds = %296
  %313 = zext nneg i32 %297 to i64
  br label %314

314:                                              ; preds = %312, %328
  %315 = phi i32 [ %302, %312 ], [ %329, %328 ]
  %316 = phi ptr [ %300, %312 ], [ %330, %328 ]
  %317 = phi i64 [ %313, %312 ], [ %339, %328 ]
  %318 = phi i64 [ %298, %312 ], [ %338, %328 ]
  %319 = phi i32 [ %299, %312 ], [ %332, %328 ]
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %314
  %322 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %34, align 8, !tbaa !44
  %326 = load i32, ptr %35, align 8, !tbaa !45
  br label %328

327:                                              ; preds = %321
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

328:                                              ; preds = %324, %314
  %329 = phi i32 [ %326, %324 ], [ %315, %314 ]
  %330 = phi ptr [ %325, %324 ], [ %316, %314 ]
  %331 = phi i32 [ %322, %324 ], [ %319, %314 ]
  %332 = add i32 %331, -1
  %333 = load ptr, ptr %6, align 8, !tbaa !28
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store ptr %334, ptr %6, align 8, !tbaa !28
  %335 = load i8, ptr %333, align 1, !tbaa !5
  %336 = zext i8 %335 to i64
  %337 = shl i64 %336, %317
  %338 = add i64 %337, %318
  %339 = add nuw nsw i64 %317, 8
  %340 = trunc i64 %338 to i32
  %341 = shl nsw i32 -1, %329
  %342 = xor i32 %341, -1
  %343 = and i32 %342, %340
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds %struct.code, ptr %330, i64 %344
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa.struct !46
  %348 = zext i8 %347 to i64
  %349 = icmp ult i64 %339, %348
  br i1 %349, label %314, label %350

350:                                              ; preds = %328
  %351 = zext i8 %347 to i32
  %352 = trunc i64 %339 to i32
  br label %353

353:                                              ; preds = %350, %296
  %354 = phi i32 [ %310, %296 ], [ %351, %350 ]
  %355 = phi i32 [ %299, %296 ], [ %332, %350 ]
  %356 = phi i64 [ %298, %296 ], [ %338, %350 ]
  %357 = phi i32 [ %297, %296 ], [ %352, %350 ]
  %358 = phi i8 [ %309, %296 ], [ %347, %350 ]
  %359 = phi ptr [ %307, %296 ], [ %345, %350 ]
  %360 = getelementptr inbounds i8, ptr %359, i64 2
  %361 = load i16, ptr %360, align 2
  %362 = icmp ult i16 %361, 16
  br i1 %362, label %363, label %374

363:                                              ; preds = %353
  %364 = zext nneg i8 %358 to i64
  %365 = lshr i64 %356, %364
  %366 = sub i32 %357, %354
  %367 = load i32, ptr %31, align 4, !tbaa !38
  %368 = add i32 %367, 1
  store i32 %368, ptr %31, align 4, !tbaa !38
  %369 = zext i32 %367 to i64
  %370 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %369
  store i16 %361, ptr %370, align 2, !tbaa !39
  %371 = load i32, ptr %28, align 4, !tbaa !35
  %372 = load i32, ptr %29, align 8, !tbaa !36
  %373 = add i32 %372, %371
  br label %614

374:                                              ; preds = %353
  switch i16 %361, label %387 [
    i16 16, label %381
    i16 17, label %375
  ]

375:                                              ; preds = %374
  %376 = add nuw nsw i32 %354, 3
  %377 = icmp ult i32 %357, %376
  br i1 %377, label %378, label %457

378:                                              ; preds = %375
  %379 = zext nneg i32 %357 to i64
  %380 = zext nneg i32 %376 to i64
  br label %435

381:                                              ; preds = %374
  %382 = add nuw nsw i32 %354, 2
  %383 = icmp ult i32 %357, %382
  br i1 %383, label %384, label %415

384:                                              ; preds = %381
  %385 = zext nneg i32 %357 to i64
  %386 = zext nneg i32 %382 to i64
  br label %393

387:                                              ; preds = %374
  %388 = add nuw nsw i32 %354, 7
  %389 = icmp ult i32 %357, %388
  br i1 %389, label %390, label %491

390:                                              ; preds = %387
  %391 = zext nneg i32 %357 to i64
  %392 = zext nneg i32 %388 to i64
  br label %469

393:                                              ; preds = %384, %402
  %394 = phi i64 [ %385, %384 ], [ %411, %402 ]
  %395 = phi i64 [ %356, %384 ], [ %410, %402 ]
  %396 = phi i32 [ %355, %384 ], [ %404, %402 ]
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

402:                                              ; preds = %398, %393
  %403 = phi i32 [ %399, %398 ], [ %396, %393 ]
  %404 = add i32 %403, -1
  %405 = load ptr, ptr %6, align 8, !tbaa !28
  %406 = getelementptr inbounds i8, ptr %405, i64 1
  store ptr %406, ptr %6, align 8, !tbaa !28
  %407 = load i8, ptr %405, align 1, !tbaa !5
  %408 = zext i8 %407 to i64
  %409 = shl i64 %408, %394
  %410 = add i64 %409, %395
  %411 = add nuw nsw i64 %394, 8
  %412 = icmp ult i64 %411, %386
  br i1 %412, label %393, label %413, !llvm.loop !47

413:                                              ; preds = %402
  %414 = trunc i64 %411 to i32
  br label %415

415:                                              ; preds = %413, %381
  %416 = phi i32 [ %355, %381 ], [ %404, %413 ]
  %417 = phi i64 [ %356, %381 ], [ %410, %413 ]
  %418 = phi i32 [ %357, %381 ], [ %414, %413 ]
  %419 = zext nneg i8 %358 to i64
  %420 = lshr i64 %417, %419
  %421 = sub i32 %418, %354
  %422 = load i32, ptr %31, align 4, !tbaa !38
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %415
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

425:                                              ; preds = %415
  %426 = add i32 %422, -1
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !39
  %430 = trunc i64 %420 to i32
  %431 = and i32 %430, 3
  %432 = add nuw nsw i32 %431, 3
  %433 = lshr i64 %420, 2
  %434 = add i32 %421, -2
  br label %503

435:                                              ; preds = %378, %444
  %436 = phi i64 [ %379, %378 ], [ %453, %444 ]
  %437 = phi i64 [ %356, %378 ], [ %452, %444 ]
  %438 = phi i32 [ %355, %378 ], [ %446, %444 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

444:                                              ; preds = %440, %435
  %445 = phi i32 [ %441, %440 ], [ %438, %435 ]
  %446 = add i32 %445, -1
  %447 = load ptr, ptr %6, align 8, !tbaa !28
  %448 = getelementptr inbounds i8, ptr %447, i64 1
  store ptr %448, ptr %6, align 8, !tbaa !28
  %449 = load i8, ptr %447, align 1, !tbaa !5
  %450 = zext i8 %449 to i64
  %451 = shl i64 %450, %436
  %452 = add i64 %451, %437
  %453 = add nuw nsw i64 %436, 8
  %454 = icmp ult i64 %453, %380
  br i1 %454, label %435, label %455, !llvm.loop !48

455:                                              ; preds = %444
  %456 = trunc i64 %453 to i32
  br label %457

457:                                              ; preds = %455, %375
  %458 = phi i32 [ %355, %375 ], [ %446, %455 ]
  %459 = phi i64 [ %356, %375 ], [ %452, %455 ]
  %460 = phi i32 [ %357, %375 ], [ %456, %455 ]
  %461 = zext nneg i8 %358 to i64
  %462 = lshr i64 %459, %461
  %463 = trunc i64 %462 to i32
  %464 = and i32 %463, 7
  %465 = add nuw nsw i32 %464, 3
  %466 = lshr i64 %462, 3
  %467 = sub i32 %460, %354
  %468 = add i32 %467, -3
  br label %503

469:                                              ; preds = %390, %478
  %470 = phi i64 [ %391, %390 ], [ %487, %478 ]
  %471 = phi i64 [ %356, %390 ], [ %486, %478 ]
  %472 = phi i32 [ %355, %390 ], [ %480, %478 ]
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %469
  %475 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

478:                                              ; preds = %474, %469
  %479 = phi i32 [ %475, %474 ], [ %472, %469 ]
  %480 = add i32 %479, -1
  %481 = load ptr, ptr %6, align 8, !tbaa !28
  %482 = getelementptr inbounds i8, ptr %481, i64 1
  store ptr %482, ptr %6, align 8, !tbaa !28
  %483 = load i8, ptr %481, align 1, !tbaa !5
  %484 = zext i8 %483 to i64
  %485 = shl i64 %484, %470
  %486 = add i64 %485, %471
  %487 = add nuw nsw i64 %470, 8
  %488 = icmp ult i64 %487, %392
  br i1 %488, label %469, label %489, !llvm.loop !49

489:                                              ; preds = %478
  %490 = trunc i64 %487 to i32
  br label %491

491:                                              ; preds = %489, %387
  %492 = phi i32 [ %355, %387 ], [ %480, %489 ]
  %493 = phi i64 [ %356, %387 ], [ %486, %489 ]
  %494 = phi i32 [ %357, %387 ], [ %490, %489 ]
  %495 = zext nneg i8 %358 to i64
  %496 = lshr i64 %493, %495
  %497 = trunc i64 %496 to i32
  %498 = and i32 %497, 127
  %499 = add nuw nsw i32 %498, 11
  %500 = lshr i64 %496, 7
  %501 = sub i32 %494, %354
  %502 = add i32 %501, -7
  br label %503

503:                                              ; preds = %457, %491, %425
  %504 = phi i32 [ %416, %425 ], [ %458, %457 ], [ %492, %491 ]
  %505 = phi i64 [ %433, %425 ], [ %466, %457 ], [ %500, %491 ]
  %506 = phi i32 [ %434, %425 ], [ %468, %457 ], [ %502, %491 ]
  %507 = phi i32 [ %432, %425 ], [ %465, %457 ], [ %499, %491 ]
  %508 = phi i16 [ %429, %425 ], [ 0, %457 ], [ 0, %491 ]
  %509 = load i32, ptr %31, align 4, !tbaa !38
  %510 = add i32 %509, %507
  %511 = load i32, ptr %28, align 4, !tbaa !35
  %512 = load i32, ptr %29, align 8, !tbaa !36
  %513 = add i32 %512, %511
  %514 = icmp ugt i32 %510, %513
  br i1 %514, label %594, label %515

515:                                              ; preds = %503
  %516 = icmp ult i32 %507, 16
  %517 = sub nsw i32 0, %507
  %518 = icmp ugt i32 %509, %517
  %519 = select i1 %516, i1 true, i1 %518
  br i1 %519, label %573, label %520

520:                                              ; preds = %515
  %521 = and i32 %507, -16
  %522 = and i32 %507, 15
  %523 = add i32 %509, %521
  %524 = insertelement <8 x i16> poison, i16 %508, i64 0
  %525 = shufflevector <8 x i16> %524, <8 x i16> poison, <8 x i32> zeroinitializer
  %526 = zext i32 %509 to i64
  %527 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %526
  %528 = getelementptr inbounds i16, ptr %527, i64 8
  store <8 x i16> %525, ptr %527, align 2, !tbaa !39
  store <8 x i16> %525, ptr %528, align 2, !tbaa !39
  %529 = icmp eq i32 %521, 16
  br i1 %529, label %571, label %530, !llvm.loop !50

530:                                              ; preds = %520
  %531 = add i32 %509, 16
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %532
  %534 = getelementptr inbounds i16, ptr %533, i64 8
  store <8 x i16> %525, ptr %533, align 2, !tbaa !39
  store <8 x i16> %525, ptr %534, align 2, !tbaa !39
  %535 = icmp eq i32 %521, 32
  br i1 %535, label %571, label %536, !llvm.loop !50

536:                                              ; preds = %530
  %537 = add i32 %509, 32
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %538
  %540 = getelementptr inbounds i16, ptr %539, i64 8
  store <8 x i16> %525, ptr %539, align 2, !tbaa !39
  store <8 x i16> %525, ptr %540, align 2, !tbaa !39
  %541 = icmp eq i32 %521, 48
  br i1 %541, label %571, label %542, !llvm.loop !50

542:                                              ; preds = %536
  %543 = add i32 %509, 48
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %544
  %546 = getelementptr inbounds i16, ptr %545, i64 8
  store <8 x i16> %525, ptr %545, align 2, !tbaa !39
  store <8 x i16> %525, ptr %546, align 2, !tbaa !39
  %547 = icmp eq i32 %521, 64
  br i1 %547, label %571, label %548, !llvm.loop !50

548:                                              ; preds = %542
  %549 = add i32 %509, 64
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %550
  %552 = getelementptr inbounds i16, ptr %551, i64 8
  store <8 x i16> %525, ptr %551, align 2, !tbaa !39
  store <8 x i16> %525, ptr %552, align 2, !tbaa !39
  %553 = icmp eq i32 %521, 80
  br i1 %553, label %571, label %554, !llvm.loop !50

554:                                              ; preds = %548
  %555 = add i32 %509, 80
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %556
  %558 = getelementptr inbounds i16, ptr %557, i64 8
  store <8 x i16> %525, ptr %557, align 2, !tbaa !39
  store <8 x i16> %525, ptr %558, align 2, !tbaa !39
  %559 = icmp eq i32 %521, 96
  br i1 %559, label %571, label %560, !llvm.loop !50

560:                                              ; preds = %554
  %561 = add i32 %509, 96
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %562
  %564 = getelementptr inbounds i16, ptr %563, i64 8
  store <8 x i16> %525, ptr %563, align 2, !tbaa !39
  store <8 x i16> %525, ptr %564, align 2, !tbaa !39
  %565 = icmp eq i32 %521, 112
  br i1 %565, label %571, label %566, !llvm.loop !50

566:                                              ; preds = %560
  %567 = add i32 %509, 112
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %568
  %570 = getelementptr inbounds i16, ptr %569, i64 8
  store <8 x i16> %525, ptr %569, align 2, !tbaa !39
  store <8 x i16> %525, ptr %570, align 2, !tbaa !39
  br label %571

571:                                              ; preds = %566, %560, %554, %548, %542, %536, %530, %520
  %572 = icmp eq i32 %507, %521
  br i1 %572, label %612, label %573

573:                                              ; preds = %515, %571
  %574 = phi i32 [ %507, %515 ], [ %522, %571 ]
  %575 = phi i32 [ %509, %515 ], [ %523, %571 ]
  %576 = add nsw i32 %574, -1
  %577 = and i32 %574, 3
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %589, label %579

579:                                              ; preds = %573, %579
  %580 = phi i32 [ %583, %579 ], [ %574, %573 ]
  %581 = phi i32 [ %584, %579 ], [ %575, %573 ]
  %582 = phi i32 [ %587, %579 ], [ 0, %573 ]
  %583 = add nsw i32 %580, -1
  %584 = add i32 %581, 1
  %585 = zext i32 %581 to i64
  %586 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %585
  store i16 %508, ptr %586, align 2, !tbaa !39
  %587 = add i32 %582, 1
  %588 = icmp eq i32 %587, %577
  br i1 %588, label %589, label %579, !llvm.loop !53

589:                                              ; preds = %579, %573
  %590 = phi i32 [ undef, %573 ], [ %584, %579 ]
  %591 = phi i32 [ %574, %573 ], [ %583, %579 ]
  %592 = phi i32 [ %575, %573 ], [ %584, %579 ]
  %593 = icmp ult i32 %576, 3
  br i1 %593, label %612, label %595

594:                                              ; preds = %503
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

595:                                              ; preds = %589, %595
  %596 = phi i32 [ %607, %595 ], [ %591, %589 ]
  %597 = phi i32 [ %608, %595 ], [ %592, %589 ]
  %598 = add i32 %597, 1
  %599 = zext i32 %597 to i64
  %600 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %599
  store i16 %508, ptr %600, align 2, !tbaa !39
  %601 = add i32 %597, 2
  %602 = zext i32 %598 to i64
  %603 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %602
  store i16 %508, ptr %603, align 2, !tbaa !39
  %604 = add i32 %597, 3
  %605 = zext i32 %601 to i64
  %606 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %605
  store i16 %508, ptr %606, align 2, !tbaa !39
  %607 = add nsw i32 %596, -4
  %608 = add i32 %597, 4
  %609 = zext i32 %604 to i64
  %610 = getelementptr inbounds %struct.inflate_state, ptr %10, i64 0, i32 29, i64 %609
  store i16 %508, ptr %610, align 2, !tbaa !39
  %611 = icmp eq i32 %607, 0
  br i1 %611, label %612, label %595, !llvm.loop !55

612:                                              ; preds = %589, %595, %571
  %613 = phi i32 [ %523, %571 ], [ %590, %589 ], [ %608, %595 ]
  store i32 %613, ptr %31, align 4, !tbaa !38
  br label %614

614:                                              ; preds = %612, %363
  %615 = phi i32 [ %513, %612 ], [ %373, %363 ]
  %616 = phi i32 [ %511, %612 ], [ %371, %363 ]
  %617 = phi i32 [ %613, %612 ], [ %368, %363 ]
  %618 = phi i32 [ %504, %612 ], [ %355, %363 ]
  %619 = phi i64 [ %505, %612 ], [ %365, %363 ]
  %620 = phi i32 [ %506, %612 ], [ %366, %363 ]
  %621 = icmp ult i32 %617, %615
  br i1 %621, label %296, label %622, !llvm.loop !56

622:                                              ; preds = %614, %291
  %623 = phi i32 [ %292, %291 ], [ %616, %614 ]
  %624 = phi i32 [ %263, %291 ], [ %618, %614 ]
  %625 = phi i64 [ %274, %291 ], [ %619, %614 ]
  %626 = phi i32 [ %275, %291 ], [ %620, %614 ]
  %627 = load i32, ptr %14, align 8, !tbaa !25
  %628 = icmp eq i32 %627, 16209
  br i1 %628, label %1205, label %629

629:                                              ; preds = %622
  %630 = load i16, ptr %38, align 8, !tbaa !39
  %631 = icmp eq i16 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %629
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

633:                                              ; preds = %629
  store ptr %32, ptr %33, align 8, !tbaa !43
  store ptr %32, ptr %34, align 8, !tbaa !44
  store i32 9, ptr %35, align 8, !tbaa !45
  %634 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %36, i32 noundef %623, ptr noundef nonnull %33, ptr noundef nonnull %35, ptr noundef nonnull %37) #5
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %633
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

637:                                              ; preds = %633
  %638 = load ptr, ptr %33, align 8, !tbaa !43
  store ptr %638, ptr %39, align 8, !tbaa !57
  store i32 6, ptr %40, align 4, !tbaa !58
  %639 = load i32, ptr %28, align 4, !tbaa !35
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i16, ptr %36, i64 %640
  %642 = load i32, ptr %29, align 8, !tbaa !36
  %643 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %641, i32 noundef %642, ptr noundef nonnull %33, ptr noundef nonnull %40, ptr noundef nonnull %37) #5
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %637
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

646:                                              ; preds = %637
  store i32 16200, ptr %14, align 8, !tbaa !25
  br label %647

647:                                              ; preds = %49, %646
  %648 = phi i32 [ %52, %49 ], [ %624, %646 ]
  %649 = phi i64 [ %54, %49 ], [ %625, %646 ]
  %650 = phi i32 [ %55, %49 ], [ %626, %646 ]
  %651 = icmp ugt i32 %648, 5
  %652 = icmp ugt i32 %53, 257
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %669, label %654

654:                                              ; preds = %647
  %655 = load ptr, ptr %34, align 8, !tbaa !44
  %656 = trunc i64 %649 to i32
  %657 = load i32, ptr %35, align 8, !tbaa !45
  %658 = shl nsw i32 -1, %657
  %659 = xor i32 %658, -1
  %660 = and i32 %659, %656
  %661 = zext nneg i32 %660 to i64
  %662 = getelementptr inbounds %struct.code, ptr %655, i64 %661
  %663 = getelementptr inbounds i8, ptr %662, i64 1
  %664 = load i8, ptr %663, align 1, !tbaa.struct !46
  %665 = zext i8 %664 to i32
  %666 = icmp ult i32 %650, %665
  br i1 %666, label %667, label %717

667:                                              ; preds = %654
  %668 = zext nneg i32 %650 to i64
  br label %678

669:                                              ; preds = %647
  store ptr %51, ptr %44, align 8, !tbaa !59
  store i32 %53, ptr %45, align 8, !tbaa !60
  %670 = load ptr, ptr %6, align 8, !tbaa !28
  store ptr %670, ptr %0, align 8, !tbaa !27
  store i32 %648, ptr %46, align 8, !tbaa !29
  store i64 %649, ptr %47, align 8, !tbaa !61
  store i32 %650, ptr %48, align 8, !tbaa !62
  %671 = load i32, ptr %26, align 4, !tbaa !20
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %671) #5
  %672 = load ptr, ptr %44, align 8, !tbaa !59
  %673 = load i32, ptr %45, align 8, !tbaa !60
  %674 = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %674, ptr %6, align 8, !tbaa !28
  %675 = load i32, ptr %46, align 8, !tbaa !29
  %676 = load i64, ptr %47, align 8, !tbaa !61
  %677 = load i32, ptr %48, align 8, !tbaa !62
  br label %1205

678:                                              ; preds = %667, %692
  %679 = phi i32 [ %657, %667 ], [ %693, %692 ]
  %680 = phi ptr [ %655, %667 ], [ %694, %692 ]
  %681 = phi i64 [ %668, %667 ], [ %703, %692 ]
  %682 = phi i64 [ %649, %667 ], [ %702, %692 ]
  %683 = phi i32 [ %648, %667 ], [ %696, %692 ]
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %692

685:                                              ; preds = %678
  %686 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %691, label %688

688:                                              ; preds = %685
  %689 = load ptr, ptr %34, align 8, !tbaa !44
  %690 = load i32, ptr %35, align 8, !tbaa !45
  br label %692

691:                                              ; preds = %685
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

692:                                              ; preds = %688, %678
  %693 = phi i32 [ %690, %688 ], [ %679, %678 ]
  %694 = phi ptr [ %689, %688 ], [ %680, %678 ]
  %695 = phi i32 [ %686, %688 ], [ %683, %678 ]
  %696 = add i32 %695, -1
  %697 = load ptr, ptr %6, align 8, !tbaa !28
  %698 = getelementptr inbounds i8, ptr %697, i64 1
  store ptr %698, ptr %6, align 8, !tbaa !28
  %699 = load i8, ptr %697, align 1, !tbaa !5
  %700 = zext i8 %699 to i64
  %701 = shl i64 %700, %681
  %702 = add i64 %701, %682
  %703 = add nuw nsw i64 %681, 8
  %704 = trunc i64 %702 to i32
  %705 = shl nsw i32 -1, %693
  %706 = xor i32 %705, -1
  %707 = and i32 %706, %704
  %708 = zext nneg i32 %707 to i64
  %709 = getelementptr inbounds %struct.code, ptr %694, i64 %708
  %710 = getelementptr inbounds i8, ptr %709, i64 1
  %711 = load i8, ptr %710, align 1, !tbaa.struct !46
  %712 = zext i8 %711 to i64
  %713 = icmp ult i64 %703, %712
  br i1 %713, label %678, label %714

714:                                              ; preds = %692
  %715 = zext i8 %711 to i32
  %716 = trunc i64 %703 to i32
  br label %717

717:                                              ; preds = %714, %654
  %718 = phi ptr [ %655, %654 ], [ %694, %714 ]
  %719 = phi i32 [ %648, %654 ], [ %696, %714 ]
  %720 = phi i64 [ %649, %654 ], [ %702, %714 ]
  %721 = phi i32 [ %650, %654 ], [ %716, %714 ]
  %722 = phi ptr [ %662, %654 ], [ %709, %714 ]
  %723 = phi i8 [ %664, %654 ], [ %711, %714 ]
  %724 = phi i32 [ %665, %654 ], [ %715, %714 ]
  %725 = getelementptr inbounds i8, ptr %722, i64 2
  %726 = load i16, ptr %725, align 2
  %727 = load i8, ptr %722, align 2, !tbaa.struct !63
  %728 = add i8 %727, -1
  %729 = icmp ult i8 %728, 15
  br i1 %729, label %730, label %798

730:                                              ; preds = %717
  %731 = zext nneg i8 %727 to i32
  %732 = zext i16 %726 to i32
  %733 = add nuw nsw i32 %724, %731
  %734 = shl nsw i32 -1, %733
  %735 = xor i32 %734, -1
  %736 = trunc i64 %720 to i32
  %737 = and i32 %736, %735
  %738 = lshr i32 %737, %724
  %739 = add nuw i32 %738, %732
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds %struct.code, ptr %718, i64 %740
  %742 = getelementptr inbounds i8, ptr %741, i64 1
  %743 = load i8, ptr %742, align 1, !tbaa.struct !46
  %744 = zext i8 %743 to i32
  %745 = add nuw nsw i32 %724, %744
  %746 = icmp ugt i32 %745, %721
  br i1 %746, label %747, label %786

747:                                              ; preds = %730
  %748 = zext nneg i32 %721 to i64
  br label %749

749:                                              ; preds = %747, %761
  %750 = phi ptr [ %718, %747 ], [ %762, %761 ]
  %751 = phi i64 [ %748, %747 ], [ %771, %761 ]
  %752 = phi i64 [ %720, %747 ], [ %770, %761 ]
  %753 = phi i32 [ %719, %747 ], [ %764, %761 ]
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %761

755:                                              ; preds = %749
  %756 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %760, label %758

758:                                              ; preds = %755
  %759 = load ptr, ptr %34, align 8, !tbaa !44
  br label %761

760:                                              ; preds = %755
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

761:                                              ; preds = %758, %749
  %762 = phi ptr [ %759, %758 ], [ %750, %749 ]
  %763 = phi i32 [ %756, %758 ], [ %753, %749 ]
  %764 = add i32 %763, -1
  %765 = load ptr, ptr %6, align 8, !tbaa !28
  %766 = getelementptr inbounds i8, ptr %765, i64 1
  store ptr %766, ptr %6, align 8, !tbaa !28
  %767 = load i8, ptr %765, align 1, !tbaa !5
  %768 = zext i8 %767 to i64
  %769 = shl i64 %768, %751
  %770 = add i64 %769, %752
  %771 = add nuw nsw i64 %751, 8
  %772 = trunc i64 %770 to i32
  %773 = and i32 %772, %735
  %774 = lshr i32 %773, %724
  %775 = add nuw i32 %774, %732
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds %struct.code, ptr %762, i64 %776
  %778 = getelementptr inbounds i8, ptr %777, i64 1
  %779 = load i8, ptr %778, align 1, !tbaa.struct !46
  %780 = zext i8 %779 to i32
  %781 = add nuw nsw i32 %724, %780
  %782 = zext nneg i32 %781 to i64
  %783 = icmp ult i64 %771, %782
  br i1 %783, label %749, label %784

784:                                              ; preds = %761
  %785 = trunc i64 %771 to i32
  br label %786

786:                                              ; preds = %784, %730
  %787 = phi i32 [ %719, %730 ], [ %764, %784 ]
  %788 = phi i64 [ %720, %730 ], [ %770, %784 ]
  %789 = phi i32 [ %721, %730 ], [ %785, %784 ]
  %790 = phi ptr [ %741, %730 ], [ %777, %784 ]
  %791 = phi i8 [ %743, %730 ], [ %779, %784 ]
  %792 = getelementptr inbounds i8, ptr %790, i64 2
  %793 = load i16, ptr %792, align 2, !tbaa.struct !64
  %794 = load i8, ptr %790, align 2, !tbaa.struct !63
  %795 = zext nneg i8 %723 to i64
  %796 = lshr i64 %788, %795
  %797 = sub i32 %789, %724
  br label %798

798:                                              ; preds = %717, %786
  %799 = phi i32 [ %787, %786 ], [ %719, %717 ]
  %800 = phi i64 [ %796, %786 ], [ %720, %717 ]
  %801 = phi i32 [ %797, %786 ], [ %721, %717 ]
  %802 = phi i16 [ %793, %786 ], [ %726, %717 ]
  %803 = phi i8 [ %791, %786 ], [ %723, %717 ]
  %804 = phi i8 [ %794, %786 ], [ %727, %717 ]
  %805 = zext i8 %803 to i32
  %806 = zext nneg i8 %803 to i64
  %807 = lshr i64 %800, %806
  %808 = sub i32 %801, %805
  %809 = zext i16 %802 to i32
  store i32 %809, ptr %41, align 4, !tbaa !32
  %810 = zext i8 %804 to i32
  %811 = icmp eq i8 %804, 0
  br i1 %811, label %812, label %828

812:                                              ; preds = %798
  %813 = icmp eq i32 %53, 0
  br i1 %813, label %814, label %821

814:                                              ; preds = %812
  %815 = load ptr, ptr %24, align 8, !tbaa !21
  %816 = load i32, ptr %26, align 4, !tbaa !20
  store i32 %816, ptr %16, align 8, !tbaa !23
  %817 = call i32 %3(ptr noundef %4, ptr noundef %815, i32 noundef %816) #5
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %1214

819:                                              ; preds = %814
  %820 = load i32, ptr %41, align 4, !tbaa !32
  br label %821

821:                                              ; preds = %819, %812
  %822 = phi i32 [ %820, %819 ], [ %809, %812 ]
  %823 = phi ptr [ %815, %819 ], [ %51, %812 ]
  %824 = phi i32 [ %816, %819 ], [ %53, %812 ]
  %825 = trunc i32 %822 to i8
  %826 = getelementptr inbounds i8, ptr %823, i64 1
  store i8 %825, ptr %823, align 1, !tbaa !5
  %827 = add i32 %824, -1
  store i32 16200, ptr %14, align 8, !tbaa !25
  br label %1205

828:                                              ; preds = %798
  %829 = and i32 %810, 32
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %832, label %831

831:                                              ; preds = %828
  store i32 16191, ptr %14, align 8, !tbaa !25
  br label %1205

832:                                              ; preds = %828
  %833 = and i32 %810, 64
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %836, label %835

835:                                              ; preds = %832
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

836:                                              ; preds = %832
  %837 = and i32 %810, 15
  store i32 %837, ptr %42, align 4, !tbaa !65
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %882, label %839

839:                                              ; preds = %836
  %840 = icmp ult i32 %808, %837
  br i1 %840, label %841, label %868

841:                                              ; preds = %839, %853
  %842 = phi i32 [ %854, %853 ], [ %837, %839 ]
  %843 = phi i32 [ %864, %853 ], [ %808, %839 ]
  %844 = phi i64 [ %863, %853 ], [ %807, %839 ]
  %845 = phi i32 [ %856, %853 ], [ %799, %839 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %853

847:                                              ; preds = %841
  %848 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %852, label %850

850:                                              ; preds = %847
  %851 = load i32, ptr %42, align 4, !tbaa !65
  br label %853

852:                                              ; preds = %847
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

853:                                              ; preds = %850, %841
  %854 = phi i32 [ %851, %850 ], [ %842, %841 ]
  %855 = phi i32 [ %848, %850 ], [ %845, %841 ]
  %856 = add i32 %855, -1
  %857 = load ptr, ptr %6, align 8, !tbaa !28
  %858 = getelementptr inbounds i8, ptr %857, i64 1
  store ptr %858, ptr %6, align 8, !tbaa !28
  %859 = load i8, ptr %857, align 1, !tbaa !5
  %860 = zext i8 %859 to i64
  %861 = zext nneg i32 %843 to i64
  %862 = shl i64 %860, %861
  %863 = add i64 %862, %844
  %864 = add i32 %843, 8
  %865 = icmp ult i32 %864, %854
  br i1 %865, label %841, label %866, !llvm.loop !66

866:                                              ; preds = %853
  %867 = load i32, ptr %41, align 4, !tbaa !32
  br label %868

868:                                              ; preds = %866, %839
  %869 = phi i32 [ %809, %839 ], [ %867, %866 ]
  %870 = phi i32 [ %799, %839 ], [ %856, %866 ]
  %871 = phi i64 [ %807, %839 ], [ %863, %866 ]
  %872 = phi i32 [ %808, %839 ], [ %864, %866 ]
  %873 = phi i32 [ %837, %839 ], [ %854, %866 ]
  %874 = trunc i64 %871 to i32
  %875 = shl nsw i32 -1, %873
  %876 = xor i32 %875, -1
  %877 = and i32 %876, %874
  %878 = add i32 %869, %877
  store i32 %878, ptr %41, align 4, !tbaa !32
  %879 = zext nneg i32 %873 to i64
  %880 = lshr i64 %871, %879
  %881 = sub i32 %872, %873
  br label %882

882:                                              ; preds = %868, %836
  %883 = phi i32 [ %870, %868 ], [ %799, %836 ]
  %884 = phi i64 [ %880, %868 ], [ %807, %836 ]
  %885 = phi i32 [ %881, %868 ], [ %808, %836 ]
  %886 = load ptr, ptr %39, align 8, !tbaa !57
  %887 = trunc i64 %884 to i32
  %888 = load i32, ptr %40, align 4, !tbaa !58
  %889 = shl nsw i32 -1, %888
  %890 = xor i32 %889, -1
  %891 = and i32 %890, %887
  %892 = zext nneg i32 %891 to i64
  %893 = getelementptr inbounds %struct.code, ptr %886, i64 %892
  %894 = getelementptr inbounds i8, ptr %893, i64 1
  %895 = load i8, ptr %894, align 1, !tbaa.struct !46
  %896 = zext i8 %895 to i32
  %897 = icmp ult i32 %885, %896
  br i1 %897, label %898, label %939

898:                                              ; preds = %882
  %899 = zext nneg i32 %885 to i64
  br label %900

900:                                              ; preds = %898, %914
  %901 = phi i32 [ %888, %898 ], [ %915, %914 ]
  %902 = phi ptr [ %886, %898 ], [ %916, %914 ]
  %903 = phi i64 [ %899, %898 ], [ %925, %914 ]
  %904 = phi i64 [ %884, %898 ], [ %924, %914 ]
  %905 = phi i32 [ %883, %898 ], [ %918, %914 ]
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %914

907:                                              ; preds = %900
  %908 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %913, label %910

910:                                              ; preds = %907
  %911 = load ptr, ptr %39, align 8, !tbaa !57
  %912 = load i32, ptr %40, align 4, !tbaa !58
  br label %914

913:                                              ; preds = %907
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

914:                                              ; preds = %910, %900
  %915 = phi i32 [ %912, %910 ], [ %901, %900 ]
  %916 = phi ptr [ %911, %910 ], [ %902, %900 ]
  %917 = phi i32 [ %908, %910 ], [ %905, %900 ]
  %918 = add i32 %917, -1
  %919 = load ptr, ptr %6, align 8, !tbaa !28
  %920 = getelementptr inbounds i8, ptr %919, i64 1
  store ptr %920, ptr %6, align 8, !tbaa !28
  %921 = load i8, ptr %919, align 1, !tbaa !5
  %922 = zext i8 %921 to i64
  %923 = shl i64 %922, %903
  %924 = add i64 %923, %904
  %925 = add nuw nsw i64 %903, 8
  %926 = trunc i64 %924 to i32
  %927 = shl nsw i32 -1, %915
  %928 = xor i32 %927, -1
  %929 = and i32 %928, %926
  %930 = zext nneg i32 %929 to i64
  %931 = getelementptr inbounds %struct.code, ptr %916, i64 %930
  %932 = getelementptr inbounds i8, ptr %931, i64 1
  %933 = load i8, ptr %932, align 1, !tbaa.struct !46
  %934 = zext i8 %933 to i64
  %935 = icmp ult i64 %925, %934
  br i1 %935, label %900, label %936

936:                                              ; preds = %914
  %937 = zext i8 %933 to i32
  %938 = trunc i64 %925 to i32
  br label %939

939:                                              ; preds = %936, %882
  %940 = phi ptr [ %886, %882 ], [ %916, %936 ]
  %941 = phi i32 [ %883, %882 ], [ %918, %936 ]
  %942 = phi i64 [ %884, %882 ], [ %924, %936 ]
  %943 = phi i32 [ %885, %882 ], [ %938, %936 ]
  %944 = phi ptr [ %893, %882 ], [ %931, %936 ]
  %945 = phi i8 [ %895, %882 ], [ %933, %936 ]
  %946 = phi i32 [ %896, %882 ], [ %937, %936 ]
  %947 = getelementptr inbounds i8, ptr %944, i64 2
  %948 = load i16, ptr %947, align 2
  %949 = load i8, ptr %944, align 2, !tbaa.struct !63
  %950 = icmp ult i8 %949, 16
  br i1 %950, label %951, label %1019

951:                                              ; preds = %939
  %952 = zext nneg i8 %949 to i32
  %953 = zext i16 %948 to i32
  %954 = add nuw nsw i32 %946, %952
  %955 = shl nsw i32 -1, %954
  %956 = xor i32 %955, -1
  %957 = trunc i64 %942 to i32
  %958 = and i32 %957, %956
  %959 = lshr i32 %958, %946
  %960 = add nuw i32 %959, %953
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds %struct.code, ptr %940, i64 %961
  %963 = getelementptr inbounds i8, ptr %962, i64 1
  %964 = load i8, ptr %963, align 1, !tbaa.struct !46
  %965 = zext i8 %964 to i32
  %966 = add nuw nsw i32 %946, %965
  %967 = icmp ugt i32 %966, %943
  br i1 %967, label %968, label %1007

968:                                              ; preds = %951
  %969 = zext nneg i32 %943 to i64
  br label %970

970:                                              ; preds = %968, %982
  %971 = phi ptr [ %940, %968 ], [ %983, %982 ]
  %972 = phi i64 [ %969, %968 ], [ %992, %982 ]
  %973 = phi i64 [ %942, %968 ], [ %991, %982 ]
  %974 = phi i32 [ %941, %968 ], [ %985, %982 ]
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %982

976:                                              ; preds = %970
  %977 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %981, label %979

979:                                              ; preds = %976
  %980 = load ptr, ptr %39, align 8, !tbaa !57
  br label %982

981:                                              ; preds = %976
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

982:                                              ; preds = %979, %970
  %983 = phi ptr [ %980, %979 ], [ %971, %970 ]
  %984 = phi i32 [ %977, %979 ], [ %974, %970 ]
  %985 = add i32 %984, -1
  %986 = load ptr, ptr %6, align 8, !tbaa !28
  %987 = getelementptr inbounds i8, ptr %986, i64 1
  store ptr %987, ptr %6, align 8, !tbaa !28
  %988 = load i8, ptr %986, align 1, !tbaa !5
  %989 = zext i8 %988 to i64
  %990 = shl i64 %989, %972
  %991 = add i64 %990, %973
  %992 = add nuw nsw i64 %972, 8
  %993 = trunc i64 %991 to i32
  %994 = and i32 %993, %956
  %995 = lshr i32 %994, %946
  %996 = add nuw i32 %995, %953
  %997 = zext i32 %996 to i64
  %998 = getelementptr inbounds %struct.code, ptr %983, i64 %997
  %999 = getelementptr inbounds i8, ptr %998, i64 1
  %1000 = load i8, ptr %999, align 1, !tbaa.struct !46
  %1001 = zext i8 %1000 to i32
  %1002 = add nuw nsw i32 %946, %1001
  %1003 = zext nneg i32 %1002 to i64
  %1004 = icmp ult i64 %992, %1003
  br i1 %1004, label %970, label %1005

1005:                                             ; preds = %982
  %1006 = trunc i64 %992 to i32
  br label %1007

1007:                                             ; preds = %1005, %951
  %1008 = phi i32 [ %941, %951 ], [ %985, %1005 ]
  %1009 = phi i64 [ %942, %951 ], [ %991, %1005 ]
  %1010 = phi i32 [ %943, %951 ], [ %1006, %1005 ]
  %1011 = phi ptr [ %962, %951 ], [ %998, %1005 ]
  %1012 = phi i8 [ %964, %951 ], [ %1000, %1005 ]
  %1013 = getelementptr inbounds i8, ptr %1011, i64 2
  %1014 = load i16, ptr %1013, align 2, !tbaa.struct !64
  %1015 = load i8, ptr %1011, align 2, !tbaa.struct !63
  %1016 = zext nneg i8 %945 to i64
  %1017 = lshr i64 %1009, %1016
  %1018 = sub i32 %1010, %946
  br label %1019

1019:                                             ; preds = %939, %1007
  %1020 = phi i32 [ %1008, %1007 ], [ %941, %939 ]
  %1021 = phi i64 [ %1017, %1007 ], [ %942, %939 ]
  %1022 = phi i32 [ %1018, %1007 ], [ %943, %939 ]
  %1023 = phi i16 [ %1014, %1007 ], [ %948, %939 ]
  %1024 = phi i8 [ %1012, %1007 ], [ %945, %939 ]
  %1025 = phi i8 [ %1015, %1007 ], [ %949, %939 ]
  %1026 = zext i8 %1024 to i32
  %1027 = zext nneg i8 %1024 to i64
  %1028 = lshr i64 %1021, %1027
  %1029 = sub i32 %1022, %1026
  %1030 = zext i8 %1025 to i32
  %1031 = and i32 %1030, 64
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1034, label %1033

1033:                                             ; preds = %1019
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

1034:                                             ; preds = %1019
  %1035 = zext i16 %1023 to i32
  store i32 %1035, ptr %43, align 8, !tbaa !67
  %1036 = and i32 %1030, 15
  store i32 %1036, ptr %42, align 4, !tbaa !65
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1081, label %1038

1038:                                             ; preds = %1034
  %1039 = icmp ult i32 %1029, %1036
  br i1 %1039, label %1040, label %1067

1040:                                             ; preds = %1038, %1052
  %1041 = phi i32 [ %1053, %1052 ], [ %1036, %1038 ]
  %1042 = phi i32 [ %1063, %1052 ], [ %1029, %1038 ]
  %1043 = phi i64 [ %1062, %1052 ], [ %1028, %1038 ]
  %1044 = phi i32 [ %1055, %1052 ], [ %1020, %1038 ]
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1052

1046:                                             ; preds = %1040
  %1047 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1051, label %1049

1049:                                             ; preds = %1046
  %1050 = load i32, ptr %42, align 4, !tbaa !65
  br label %1052

1051:                                             ; preds = %1046
  store ptr null, ptr %6, align 8, !tbaa !28
  br label %1214

1052:                                             ; preds = %1049, %1040
  %1053 = phi i32 [ %1050, %1049 ], [ %1041, %1040 ]
  %1054 = phi i32 [ %1047, %1049 ], [ %1044, %1040 ]
  %1055 = add i32 %1054, -1
  %1056 = load ptr, ptr %6, align 8, !tbaa !28
  %1057 = getelementptr inbounds i8, ptr %1056, i64 1
  store ptr %1057, ptr %6, align 8, !tbaa !28
  %1058 = load i8, ptr %1056, align 1, !tbaa !5
  %1059 = zext i8 %1058 to i64
  %1060 = zext nneg i32 %1042 to i64
  %1061 = shl i64 %1059, %1060
  %1062 = add i64 %1061, %1043
  %1063 = add i32 %1042, 8
  %1064 = icmp ult i32 %1063, %1053
  br i1 %1064, label %1040, label %1065, !llvm.loop !68

1065:                                             ; preds = %1052
  %1066 = load i32, ptr %43, align 8, !tbaa !67
  br label %1067

1067:                                             ; preds = %1065, %1038
  %1068 = phi i32 [ %1035, %1038 ], [ %1066, %1065 ]
  %1069 = phi i32 [ %1020, %1038 ], [ %1055, %1065 ]
  %1070 = phi i64 [ %1028, %1038 ], [ %1062, %1065 ]
  %1071 = phi i32 [ %1029, %1038 ], [ %1063, %1065 ]
  %1072 = phi i32 [ %1036, %1038 ], [ %1053, %1065 ]
  %1073 = trunc i64 %1070 to i32
  %1074 = shl nsw i32 -1, %1072
  %1075 = xor i32 %1074, -1
  %1076 = and i32 %1075, %1073
  %1077 = add i32 %1068, %1076
  store i32 %1077, ptr %43, align 8, !tbaa !67
  %1078 = zext nneg i32 %1072 to i64
  %1079 = lshr i64 %1070, %1078
  %1080 = sub i32 %1071, %1072
  br label %1081

1081:                                             ; preds = %1067, %1034
  %1082 = phi i32 [ %1077, %1067 ], [ %1035, %1034 ]
  %1083 = phi i32 [ %1069, %1067 ], [ %1020, %1034 ]
  %1084 = phi i64 [ %1079, %1067 ], [ %1028, %1034 ]
  %1085 = phi i32 [ %1080, %1067 ], [ %1029, %1034 ]
  %1086 = load i32, ptr %26, align 4, !tbaa !20
  %1087 = load i32, ptr %16, align 8, !tbaa !23
  %1088 = icmp ult i32 %1087, %1086
  %1089 = select i1 %1088, i32 %53, i32 0
  %1090 = sub i32 %1086, %1089
  %1091 = icmp ugt i32 %1082, %1090
  br i1 %1091, label %1092, label %1093

1092:                                             ; preds = %1081
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !25
  br label %1205

1093:                                             ; preds = %1081, %1200
  %1094 = phi ptr [ %1201, %1200 ], [ %51, %1081 ]
  %1095 = phi i32 [ %1202, %1200 ], [ %53, %1081 ]
  %1096 = icmp eq i32 %1095, 0
  %1097 = load i32, ptr %26, align 4, !tbaa !20
  br i1 %1096, label %1098, label %1104

1098:                                             ; preds = %1093
  %1099 = load ptr, ptr %24, align 8, !tbaa !21
  store i32 %1097, ptr %16, align 8, !tbaa !23
  %1100 = call i32 %3(ptr noundef %4, ptr noundef %1099, i32 noundef %1097) #5
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1214

1102:                                             ; preds = %1098
  %1103 = load i32, ptr %26, align 4, !tbaa !20
  br label %1104

1104:                                             ; preds = %1102, %1093
  %1105 = phi i32 [ %1103, %1102 ], [ %1097, %1093 ]
  %1106 = phi ptr [ %1099, %1102 ], [ %1094, %1093 ]
  %1107 = phi i32 [ %1097, %1102 ], [ %1095, %1093 ]
  %1108 = load i32, ptr %43, align 8, !tbaa !67
  %1109 = sub i32 %1105, %1108
  %1110 = icmp ult i32 %1109, %1107
  %1111 = zext i32 %1109 to i64
  %1112 = zext i32 %1108 to i64
  %1113 = sub nsw i64 0, %1112
  %1114 = select i1 %1110, i32 %1109, i32 0
  %1115 = sub i32 %1107, %1114
  %1116 = select i1 %1110, i64 %1111, i64 %1113
  %1117 = getelementptr i8, ptr %1106, i64 %1116
  %1118 = load i32, ptr %41, align 4, !tbaa !32
  %1119 = call i32 @llvm.umin.i32(i32 %1115, i32 %1118)
  %1120 = sub i32 %1118, %1119
  store i32 %1120, ptr %41, align 4, !tbaa !32
  %1121 = add i32 %1119, -1
  %1122 = zext i32 %1121 to i64
  %1123 = add nuw nsw i64 %1122, 1
  %1124 = icmp ult i32 %1121, 31
  %1125 = add nsw i64 %1116, 31
  %1126 = icmp ult i64 %1125, 32
  %1127 = select i1 %1124, i1 true, i1 %1126
  br i1 %1127, label %1146, label %1128

1128:                                             ; preds = %1104
  %1129 = and i64 %1123, 8589934560
  %1130 = getelementptr i8, ptr %1106, i64 %1129
  %1131 = trunc i64 %1129 to i32
  %1132 = sub i32 %1119, %1131
  %1133 = getelementptr i8, ptr %1117, i64 %1129
  br label %1134

1134:                                             ; preds = %1134, %1128
  %1135 = phi i64 [ 0, %1128 ], [ %1142, %1134 ]
  %1136 = getelementptr i8, ptr %1106, i64 %1135
  %1137 = getelementptr i8, ptr %1117, i64 %1135
  %1138 = getelementptr i8, ptr %1137, i64 16
  %1139 = load <16 x i8>, ptr %1137, align 1, !tbaa !5
  %1140 = load <16 x i8>, ptr %1138, align 1, !tbaa !5
  %1141 = getelementptr i8, ptr %1136, i64 16
  store <16 x i8> %1139, ptr %1136, align 1, !tbaa !5
  store <16 x i8> %1140, ptr %1141, align 1, !tbaa !5
  %1142 = add nuw i64 %1135, 32
  %1143 = icmp eq i64 %1142, %1129
  br i1 %1143, label %1144, label %1134, !llvm.loop !69

1144:                                             ; preds = %1134
  %1145 = icmp eq i64 %1123, %1129
  br i1 %1145, label %1200, label %1146

1146:                                             ; preds = %1104, %1144
  %1147 = phi ptr [ %1106, %1104 ], [ %1130, %1144 ]
  %1148 = phi i32 [ %1119, %1104 ], [ %1132, %1144 ]
  %1149 = phi ptr [ %1117, %1104 ], [ %1133, %1144 ]
  %1150 = add i32 %1148, -1
  %1151 = and i32 %1148, 7
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1164, label %1153

1153:                                             ; preds = %1146, %1153
  %1154 = phi ptr [ %1160, %1153 ], [ %1147, %1146 ]
  %1155 = phi i32 [ %1161, %1153 ], [ %1148, %1146 ]
  %1156 = phi ptr [ %1158, %1153 ], [ %1149, %1146 ]
  %1157 = phi i32 [ %1162, %1153 ], [ 0, %1146 ]
  %1158 = getelementptr inbounds i8, ptr %1156, i64 1
  %1159 = load i8, ptr %1156, align 1, !tbaa !5
  %1160 = getelementptr inbounds i8, ptr %1154, i64 1
  store i8 %1159, ptr %1154, align 1, !tbaa !5
  %1161 = add i32 %1155, -1
  %1162 = add i32 %1157, 1
  %1163 = icmp eq i32 %1162, %1151
  br i1 %1163, label %1164, label %1153, !llvm.loop !70

1164:                                             ; preds = %1153, %1146
  %1165 = phi ptr [ undef, %1146 ], [ %1160, %1153 ]
  %1166 = phi ptr [ %1147, %1146 ], [ %1160, %1153 ]
  %1167 = phi i32 [ %1148, %1146 ], [ %1161, %1153 ]
  %1168 = phi ptr [ %1149, %1146 ], [ %1158, %1153 ]
  %1169 = icmp ult i32 %1150, 7
  br i1 %1169, label %1200, label %1170

1170:                                             ; preds = %1164, %1170
  %1171 = phi ptr [ %1197, %1170 ], [ %1166, %1164 ]
  %1172 = phi i32 [ %1198, %1170 ], [ %1167, %1164 ]
  %1173 = phi ptr [ %1195, %1170 ], [ %1168, %1164 ]
  %1174 = getelementptr inbounds i8, ptr %1173, i64 1
  %1175 = load i8, ptr %1173, align 1, !tbaa !5
  %1176 = getelementptr inbounds i8, ptr %1171, i64 1
  store i8 %1175, ptr %1171, align 1, !tbaa !5
  %1177 = getelementptr inbounds i8, ptr %1173, i64 2
  %1178 = load i8, ptr %1174, align 1, !tbaa !5
  %1179 = getelementptr inbounds i8, ptr %1171, i64 2
  store i8 %1178, ptr %1176, align 1, !tbaa !5
  %1180 = getelementptr inbounds i8, ptr %1173, i64 3
  %1181 = load i8, ptr %1177, align 1, !tbaa !5
  %1182 = getelementptr inbounds i8, ptr %1171, i64 3
  store i8 %1181, ptr %1179, align 1, !tbaa !5
  %1183 = getelementptr inbounds i8, ptr %1173, i64 4
  %1184 = load i8, ptr %1180, align 1, !tbaa !5
  %1185 = getelementptr inbounds i8, ptr %1171, i64 4
  store i8 %1184, ptr %1182, align 1, !tbaa !5
  %1186 = getelementptr inbounds i8, ptr %1173, i64 5
  %1187 = load i8, ptr %1183, align 1, !tbaa !5
  %1188 = getelementptr inbounds i8, ptr %1171, i64 5
  store i8 %1187, ptr %1185, align 1, !tbaa !5
  %1189 = getelementptr inbounds i8, ptr %1173, i64 6
  %1190 = load i8, ptr %1186, align 1, !tbaa !5
  %1191 = getelementptr inbounds i8, ptr %1171, i64 6
  store i8 %1190, ptr %1188, align 1, !tbaa !5
  %1192 = getelementptr inbounds i8, ptr %1173, i64 7
  %1193 = load i8, ptr %1189, align 1, !tbaa !5
  %1194 = getelementptr inbounds i8, ptr %1171, i64 7
  store i8 %1193, ptr %1191, align 1, !tbaa !5
  %1195 = getelementptr inbounds i8, ptr %1173, i64 8
  %1196 = load i8, ptr %1192, align 1, !tbaa !5
  %1197 = getelementptr inbounds i8, ptr %1171, i64 8
  store i8 %1196, ptr %1194, align 1, !tbaa !5
  %1198 = add i32 %1172, -8
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1200, label %1170, !llvm.loop !71

1200:                                             ; preds = %1164, %1170, %1144
  %1201 = phi ptr [ %1130, %1144 ], [ %1165, %1164 ], [ %1197, %1170 ]
  %1202 = sub i32 %1107, %1119
  %1203 = load i32, ptr %41, align 4, !tbaa !32
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1205, label %1093, !llvm.loop !72

1205:                                             ; preds = %1200, %424, %594, %622, %1092, %1033, %835, %831, %821, %669, %645, %636, %632, %290, %223, %179, %141, %98, %68
  %1206 = phi ptr [ %672, %669 ], [ %826, %821 ], [ %51, %831 ], [ %51, %835 ], [ %51, %1033 ], [ %51, %1092 ], [ %51, %223 ], [ %51, %290 ], [ %51, %622 ], [ %51, %632 ], [ %51, %636 ], [ %51, %645 ], [ %51, %141 ], [ %180, %179 ], [ %51, %68 ], [ %51, %98 ], [ %51, %594 ], [ %51, %424 ], [ %1201, %1200 ]
  %1207 = phi i32 [ %675, %669 ], [ %799, %821 ], [ %799, %831 ], [ %799, %835 ], [ %1020, %1033 ], [ %1083, %1092 ], [ %206, %223 ], [ %263, %290 ], [ %624, %622 ], [ %624, %632 ], [ %624, %636 ], [ %624, %645 ], [ %134, %141 ], [ %181, %179 ], [ %52, %68 ], [ %88, %98 ], [ %504, %594 ], [ %416, %424 ], [ %1083, %1200 ]
  %1208 = phi i32 [ %673, %669 ], [ %827, %821 ], [ %53, %831 ], [ %53, %835 ], [ %53, %1033 ], [ %53, %1092 ], [ %53, %223 ], [ %53, %290 ], [ %53, %622 ], [ %53, %632 ], [ %53, %636 ], [ %53, %645 ], [ %53, %141 ], [ %182, %179 ], [ %53, %68 ], [ %53, %98 ], [ %53, %594 ], [ %53, %424 ], [ %1202, %1200 ]
  %1209 = phi i64 [ %676, %669 ], [ %807, %821 ], [ %807, %831 ], [ %807, %835 ], [ %1028, %1033 ], [ %1084, %1092 ], [ %218, %223 ], [ %274, %290 ], [ %625, %622 ], [ %625, %632 ], [ %625, %636 ], [ %625, %645 ], [ %135, %141 ], [ 0, %179 ], [ %71, %68 ], [ %100, %98 ], [ %505, %594 ], [ %420, %424 ], [ %1084, %1200 ]
  %1210 = phi i32 [ %677, %669 ], [ %808, %821 ], [ %808, %831 ], [ %808, %835 ], [ %1029, %1033 ], [ %1085, %1092 ], [ %219, %223 ], [ %275, %290 ], [ %626, %622 ], [ %626, %632 ], [ %626, %636 ], [ %626, %645 ], [ %136, %141 ], [ 0, %179 ], [ %72, %68 ], [ %101, %98 ], [ %506, %594 ], [ %421, %424 ], [ %1085, %1200 ]
  %1211 = load i32, ptr %14, align 8, !tbaa !25
  br label %49

1212:                                             ; preds = %49
  br label %1214

1213:                                             ; preds = %49
  br label %1214

1214:                                             ; preds = %814, %1098, %159, %49, %1213, %1212, %1051, %981, %913, %852, %760, %691, %477, %443, %401, %327, %246, %191, %155, %119, %76
  %1215 = phi i32 [ 0, %852 ], [ 0, %1051 ], [ 0, %981 ], [ 0, %913 ], [ 0, %760 ], [ 0, %691 ], [ 0, %191 ], [ 0, %246 ], [ 0, %401 ], [ 0, %443 ], [ 0, %477 ], [ 0, %327 ], [ 0, %119 ], [ 0, %155 ], [ 0, %76 ], [ %52, %1212 ], [ %52, %49 ], [ %157, %159 ], [ %1083, %1098 ], [ %799, %814 ], [ %52, %1213 ]
  %1216 = phi i32 [ %53, %852 ], [ %53, %1051 ], [ %53, %981 ], [ %53, %913 ], [ %53, %760 ], [ %53, %691 ], [ %53, %191 ], [ %53, %246 ], [ %53, %401 ], [ %53, %443 ], [ %53, %477 ], [ %53, %327 ], [ %53, %119 ], [ %147, %155 ], [ %53, %76 ], [ %53, %1212 ], [ %53, %49 ], [ %161, %159 ], [ %1097, %1098 ], [ %816, %814 ], [ %53, %1213 ]
  %1217 = phi i1 [ false, %852 ], [ false, %1051 ], [ false, %981 ], [ false, %913 ], [ false, %760 ], [ false, %691 ], [ false, %191 ], [ false, %246 ], [ false, %401 ], [ false, %443 ], [ false, %477 ], [ false, %327 ], [ false, %119 ], [ false, %155 ], [ false, %76 ], [ true, %1212 ], [ false, %49 ], [ false, %159 ], [ false, %1098 ], [ false, %814 ], [ false, %1213 ]
  %1218 = phi i32 [ -5, %852 ], [ -5, %1051 ], [ -5, %981 ], [ -5, %913 ], [ -5, %760 ], [ -5, %691 ], [ -5, %191 ], [ -5, %246 ], [ -5, %401 ], [ -5, %443 ], [ -5, %477 ], [ -5, %327 ], [ -5, %119 ], [ -5, %155 ], [ -5, %76 ], [ 1, %1212 ], [ -2, %49 ], [ -5, %159 ], [ -5, %1098 ], [ -5, %814 ], [ -3, %1213 ]
  %1219 = load i32, ptr %26, align 4, !tbaa !20
  %1220 = icmp ult i32 %1216, %1219
  br i1 %1220, label %1221, label %1228

1221:                                             ; preds = %1214
  %1222 = load ptr, ptr %24, align 8, !tbaa !21
  %1223 = sub i32 %1219, %1216
  %1224 = call i32 %3(ptr noundef %4, ptr noundef %1222, i32 noundef %1223) #5
  %1225 = icmp ne i32 %1224, 0
  %1226 = and i1 %1217, %1225
  %1227 = select i1 %1226, i32 -5, i32 %1218
  br label %1228

1228:                                             ; preds = %1221, %1214
  %1229 = phi i32 [ %1227, %1221 ], [ %1218, %1214 ]
  %1230 = load ptr, ptr %6, align 8, !tbaa !28
  store ptr %1230, ptr %0, align 8, !tbaa !27
  store i32 %1215, ptr %46, align 8, !tbaa !29
  br label %1231

1231:                                             ; preds = %5, %8, %1228
  %1232 = phi i32 [ %1229, %1228 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %1232
}

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBackEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #5
  store ptr null, ptr %4, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 64}
!14 = !{!9, !10, i64 80}
!15 = !{!9, !10, i64 72}
!16 = !{!9, !10, i64 56}
!17 = !{!18, !11, i64 28}
!18 = !{!"inflate_state", !10, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !12, i64 40, !10, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !10, i64 72, !12, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !10, i64 104, !10, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !10, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !11, i64 7144, !11, i64 7148, !11, i64 7152}
!19 = !{!18, !11, i64 56}
!20 = !{!18, !11, i64 60}
!21 = !{!18, !10, i64 72}
!22 = !{!18, !11, i64 68}
!23 = !{!18, !11, i64 64}
!24 = !{!18, !11, i64 7144}
!25 = !{!18, !11, i64 8}
!26 = !{!18, !11, i64 12}
!27 = !{!9, !10, i64 0}
!28 = !{!10, !10, i64 0}
!29 = !{!9, !11, i64 8}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!18, !11, i64 92}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = !{!18, !11, i64 132}
!36 = !{!18, !11, i64 136}
!37 = !{!18, !11, i64 128}
!38 = !{!18, !11, i64 140}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
!43 = !{!18, !10, i64 144}
!44 = !{!18, !10, i64 104}
!45 = !{!18, !11, i64 120}
!46 = !{i64 0, i64 1, !5, i64 1, i64 2, !39}
!47 = distinct !{!47, !31}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !31, !51}
!56 = distinct !{!56, !31}
!57 = !{!18, !10, i64 112}
!58 = !{!18, !11, i64 124}
!59 = !{!9, !10, i64 24}
!60 = !{!9, !11, i64 32}
!61 = !{!18, !12, i64 80}
!62 = !{!18, !11, i64 88}
!63 = !{i64 0, i64 1, !5, i64 1, i64 1, !5, i64 2, i64 2, !39}
!64 = !{i64 0, i64 2, !39}
!65 = !{!18, !11, i64 100}
!66 = distinct !{!66, !31}
!67 = !{!18, !11, i64 96}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31, !51, !52}
!70 = distinct !{!70, !54}
!71 = distinct !{!71, !31, !51}
!72 = distinct !{!72, !31}
