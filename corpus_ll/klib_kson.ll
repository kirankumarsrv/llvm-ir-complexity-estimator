; ModuleID = 'corpus_src/klib/kson.c'
source_filename = "corpus_src/klib/kson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kson_node_s = type { i64, ptr, %union.anon }
%union.anon = type { ptr }
%struct.kson_t = type { i64, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"\22%s\22:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @kson_parse_core(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  store i32 0, ptr %2, align 4, !tbaa !5
  %5 = load i8, ptr %0, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %348, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @__ctype_b_loc() #14
  br label %9

9:                                                ; preds = %7, %316
  %10 = phi i8 [ %5, %7 ], [ %325, %316 ]
  %11 = phi ptr [ null, %7 ], [ %323, %316 ]
  %12 = phi i64 [ 0, %7 ], [ %322, %316 ]
  %13 = phi i64 [ 0, %7 ], [ %321, %316 ]
  %14 = phi i64 [ 0, %7 ], [ %320, %316 ]
  %15 = phi i64 [ 0, %7 ], [ %319, %316 ]
  %16 = phi ptr [ %0, %7 ], [ %324, %316 ]
  %17 = phi ptr [ null, %7 ], [ %317, %316 ]
  %18 = ptrtoint ptr %11 to i64
  %19 = load ptr, ptr %8, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %9, %28
  %21 = phi ptr [ %16, %9 ], [ %29, %28 ]
  %22 = phi i8 [ %10, %9 ], [ %30, %28 ]
  %23 = sext i8 %22 to i64
  %24 = getelementptr inbounds i16, ptr %19, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !12
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds i8, ptr %21, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %348, label %20, !llvm.loop !14

32:                                               ; preds = %20
  switch i8 %22, label %215 [
    i8 58, label %197
    i8 44, label %316
    i8 91, label %33
    i8 123, label %33
    i8 93, label %84
    i8 125, label %84
  ]

33:                                               ; preds = %32, %32
  %34 = icmp eq i8 %22, 91
  %35 = select i1 %34, i32 -1, i32 -2
  %36 = icmp slt i64 %12, 2
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = add nsw i64 %12, -1
  %39 = getelementptr inbounds i64, ptr %11, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !16
  %41 = icmp eq i64 %40, -3
  br i1 %41, label %82, label %42

42:                                               ; preds = %33, %37
  %43 = icmp eq i64 %12, %13
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = icmp eq i64 %12, 0
  %46 = shl i64 %12, 1
  %47 = select i1 %45, i64 4, i64 %46
  %48 = shl i64 %47, 3
  %49 = tail call ptr @realloc(ptr noundef %11, i64 noundef %48) #15
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i64 [ %47, %44 ], [ %13, %42 ]
  %52 = phi ptr [ %49, %44 ], [ %11, %42 ]
  %53 = add nsw i64 %12, 1
  %54 = getelementptr inbounds i64, ptr %52, i64 %12
  store i64 %14, ptr %54, align 8, !tbaa !16
  %55 = icmp eq i64 %14, %15
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = icmp eq i64 %14, 0
  %58 = shl i64 %14, 1
  %59 = select i1 %57, i64 4, i64 %58
  %60 = mul i64 %59, 24
  %61 = tail call ptr @realloc(ptr noundef %17, i64 noundef %60) #15
  %62 = getelementptr inbounds %struct.kson_node_s, ptr %61, i64 %14
  %63 = sub nsw i64 %59, %14
  %64 = mul i64 %63, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 %64, i1 false)
  br label %65

65:                                               ; preds = %56, %50
  %66 = phi ptr [ %61, %56 ], [ %17, %50 ]
  %67 = phi i64 [ %59, %56 ], [ %15, %50 ]
  %68 = add nsw i64 %14, 1
  %69 = icmp eq i64 %53, %51
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = icmp eq i64 %51, 0
  %72 = shl i64 %51, 1
  %73 = select i1 %71, i64 4, i64 %72
  %74 = shl i64 %73, 3
  %75 = tail call ptr @realloc(ptr noundef nonnull %52, i64 noundef %74) #15
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i64 [ %73, %70 ], [ %51, %65 ]
  %78 = phi ptr [ %75, %70 ], [ %52, %65 ]
  %79 = sext i32 %35 to i64
  %80 = add nsw i64 %12, 2
  %81 = getelementptr inbounds i64, ptr %78, i64 %53
  store i64 %79, ptr %81, align 8, !tbaa !16
  br label %316

82:                                               ; preds = %37
  %83 = sext i32 %35 to i64
  store i64 %83, ptr %39, align 8, !tbaa !16
  br label %316

84:                                               ; preds = %32, %32
  %85 = icmp eq i8 %22, 93
  %86 = select i1 %85, i64 -1, i64 -2
  %87 = add nsw i64 %12, -1
  %88 = icmp sgt i64 %12, 0
  br i1 %88, label %89, label %327

89:                                               ; preds = %84, %96
  %90 = phi i64 [ %98, %96 ], [ 0, %84 ]
  %91 = phi i64 [ %95, %96 ], [ %87, %84 ]
  %92 = getelementptr inbounds i64, ptr %11, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !16
  %94 = icmp eq i64 %93, %86
  %95 = add nsw i64 %91, -1
  br i1 %94, label %99, label %96

96:                                               ; preds = %89
  %97 = icmp sgt i64 %91, 0
  %98 = add i64 %90, 1
  br i1 %97, label %89, label %327, !llvm.loop !18

99:                                               ; preds = %89
  %100 = getelementptr inbounds i64, ptr %11, i64 %95
  %101 = load i64, ptr %100, align 8, !tbaa !16
  %102 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %101
  %103 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %101, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !9
  %105 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %101, i32 1
  store ptr %104, ptr %105, align 8, !tbaa !19
  %106 = sub nsw i64 %87, %91
  %107 = load i64, ptr %102, align 8
  %108 = shl i64 %106, 3
  %109 = and i64 %107, 7
  %110 = or disjoint i64 %109, %108
  store i64 %110, ptr %102, align 8
  %111 = tail call noalias ptr @malloc(i64 noundef %108) #16
  %112 = ptrtoint ptr %111 to i64
  store ptr %111, ptr %103, align 8, !tbaa !9
  %113 = add nuw nsw i64 %91, 1
  %114 = icmp slt i64 %113, %12
  br i1 %114, label %115, label %189

115:                                              ; preds = %99
  %116 = icmp ult i64 %90, 8
  br i1 %116, label %141, label %117

117:                                              ; preds = %115
  %118 = mul i64 %12, -8
  %119 = sub i64 %118, %18
  %120 = shl i64 %90, 3
  %121 = add i64 %120, %119
  %122 = add i64 %121, %112
  %123 = icmp ult i64 %122, 32
  br i1 %123, label %141, label %124

124:                                              ; preds = %117
  %125 = and i64 %90, -4
  %126 = add i64 %113, %125
  %127 = add i64 %91, %125
  br label %128

128:                                              ; preds = %128, %124
  %129 = phi i64 [ 0, %124 ], [ %137, %128 ]
  %130 = add i64 %113, %129
  %131 = getelementptr inbounds i64, ptr %11, i64 %130
  %132 = getelementptr inbounds i64, ptr %131, i64 2
  %133 = load <2 x i64>, ptr %131, align 8, !tbaa !16
  %134 = load <2 x i64>, ptr %132, align 8, !tbaa !16
  %135 = getelementptr inbounds i64, ptr %111, i64 %129
  %136 = getelementptr inbounds i64, ptr %135, i64 2
  store <2 x i64> %133, ptr %135, align 8, !tbaa !16
  store <2 x i64> %134, ptr %136, align 8, !tbaa !16
  %137 = add nuw i64 %129, 4
  %138 = icmp eq i64 %137, %125
  br i1 %138, label %139, label %128, !llvm.loop !22

139:                                              ; preds = %128
  %140 = icmp eq i64 %90, %125
  br i1 %140, label %187, label %141

141:                                              ; preds = %117, %115, %139
  %142 = phi i64 [ %113, %117 ], [ %113, %115 ], [ %126, %139 ]
  %143 = phi i64 [ %91, %117 ], [ %91, %115 ], [ %127, %139 ]
  %144 = sub i64 %12, %142
  %145 = and i64 %144, 3
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %141, %147
  %148 = phi i64 [ %155, %147 ], [ %142, %141 ]
  %149 = phi i64 [ %148, %147 ], [ %143, %141 ]
  %150 = phi i64 [ %156, %147 ], [ 0, %141 ]
  %151 = getelementptr inbounds i64, ptr %11, i64 %148
  %152 = load i64, ptr %151, align 8, !tbaa !16
  %153 = sub nsw i64 %149, %91
  %154 = getelementptr inbounds i64, ptr %111, i64 %153
  store i64 %152, ptr %154, align 8, !tbaa !16
  %155 = add nuw nsw i64 %148, 1
  %156 = add i64 %150, 1
  %157 = icmp eq i64 %156, %145
  br i1 %157, label %158, label %147, !llvm.loop !25

158:                                              ; preds = %147, %141
  %159 = phi i64 [ %142, %141 ], [ %155, %147 ]
  %160 = phi i64 [ %143, %141 ], [ %148, %147 ]
  %161 = sub i64 %142, %12
  %162 = icmp ugt i64 %161, -4
  br i1 %162, label %187, label %163

163:                                              ; preds = %158, %163
  %164 = phi i64 [ %185, %163 ], [ %159, %158 ]
  %165 = phi i64 [ %180, %163 ], [ %160, %158 ]
  %166 = getelementptr inbounds i64, ptr %11, i64 %164
  %167 = load i64, ptr %166, align 8, !tbaa !16
  %168 = sub nsw i64 %165, %91
  %169 = getelementptr inbounds i64, ptr %111, i64 %168
  store i64 %167, ptr %169, align 8, !tbaa !16
  %170 = add nuw nsw i64 %164, 1
  %171 = getelementptr inbounds i64, ptr %11, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !16
  %173 = sub nsw i64 %164, %91
  %174 = getelementptr inbounds i64, ptr %111, i64 %173
  store i64 %172, ptr %174, align 8, !tbaa !16
  %175 = add nuw nsw i64 %164, 2
  %176 = getelementptr inbounds i64, ptr %11, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !16
  %178 = sub nsw i64 %170, %91
  %179 = getelementptr inbounds i64, ptr %111, i64 %178
  store i64 %177, ptr %179, align 8, !tbaa !16
  %180 = add nuw nsw i64 %164, 3
  %181 = getelementptr inbounds i64, ptr %11, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !16
  %183 = sub nsw i64 %175, %91
  %184 = getelementptr inbounds i64, ptr %111, i64 %183
  store i64 %182, ptr %184, align 8, !tbaa !16
  %185 = add nuw nsw i64 %164, 4
  %186 = icmp eq i64 %185, %12
  br i1 %186, label %187, label %163, !llvm.loop !27

187:                                              ; preds = %158, %163, %139
  %188 = load i64, ptr %102, align 8
  br label %189

189:                                              ; preds = %187, %99
  %190 = phi i64 [ %188, %187 ], [ %110, %99 ]
  %191 = load i8, ptr %21, align 1, !tbaa !9
  %192 = icmp eq i8 %191, 93
  %193 = select i1 %192, i64 4, i64 5
  %194 = and i64 %190, -8
  %195 = or disjoint i64 %194, %193
  store i64 %195, ptr %102, align 8
  %196 = icmp eq i64 %91, 1
  br i1 %196, label %329, label %316

197:                                              ; preds = %32
  %198 = icmp eq i64 %12, 0
  br i1 %198, label %327, label %199

199:                                              ; preds = %197
  %200 = add nsw i64 %12, -1
  %201 = getelementptr inbounds i64, ptr %11, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !16
  %203 = icmp eq i64 %202, -3
  br i1 %203, label %327, label %204

204:                                              ; preds = %199
  %205 = icmp eq i64 %12, %13
  br i1 %205, label %206, label %210

206:                                              ; preds = %204
  %207 = shl i64 %12, 1
  %208 = shl i64 %12, 4
  %209 = tail call ptr @realloc(ptr noundef nonnull %11, i64 noundef %208) #15
  br label %210

210:                                              ; preds = %206, %204
  %211 = phi i64 [ %207, %206 ], [ %13, %204 ]
  %212 = phi ptr [ %209, %206 ], [ %11, %204 ]
  %213 = add nsw i64 %12, 1
  %214 = getelementptr inbounds i64, ptr %212, i64 %12
  store i64 -3, ptr %214, align 8, !tbaa !16
  br label %316

215:                                              ; preds = %32
  %216 = icmp sgt i64 %12, 1
  br i1 %216, label %217, label %230

217:                                              ; preds = %215
  %218 = add nsw i64 %12, -1
  %219 = getelementptr inbounds i64, ptr %11, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !16
  %221 = icmp eq i64 %220, -3
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = add nsw i64 %12, -2
  %224 = getelementptr inbounds i64, ptr %11, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !16
  %226 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %225
  %227 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %225, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !9
  %229 = getelementptr inbounds %struct.kson_node_s, ptr %17, i64 %225, i32 1
  store ptr %228, ptr %229, align 8, !tbaa !19
  br label %258

230:                                              ; preds = %215, %217
  %231 = icmp eq i64 %12, %13
  br i1 %231, label %232, label %238

232:                                              ; preds = %230
  %233 = icmp eq i64 %12, 0
  %234 = shl i64 %12, 1
  %235 = select i1 %233, i64 4, i64 %234
  %236 = shl i64 %235, 3
  %237 = tail call ptr @realloc(ptr noundef %11, i64 noundef %236) #15
  br label %238

238:                                              ; preds = %232, %230
  %239 = phi i64 [ %235, %232 ], [ %13, %230 ]
  %240 = phi ptr [ %237, %232 ], [ %11, %230 ]
  %241 = add nsw i64 %12, 1
  %242 = getelementptr inbounds i64, ptr %240, i64 %12
  store i64 %14, ptr %242, align 8, !tbaa !16
  %243 = icmp eq i64 %14, %15
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = icmp eq i64 %14, 0
  %246 = shl i64 %14, 1
  %247 = select i1 %245, i64 4, i64 %246
  %248 = mul i64 %247, 24
  %249 = tail call ptr @realloc(ptr noundef %17, i64 noundef %248) #15
  %250 = getelementptr inbounds %struct.kson_node_s, ptr %249, i64 %14
  %251 = sub nsw i64 %247, %14
  %252 = mul i64 %251, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %250, i8 0, i64 %252, i1 false)
  br label %253

253:                                              ; preds = %244, %238
  %254 = phi ptr [ %249, %244 ], [ %17, %238 ]
  %255 = phi i64 [ %247, %244 ], [ %15, %238 ]
  %256 = add nsw i64 %14, 1
  %257 = getelementptr inbounds %struct.kson_node_s, ptr %254, i64 %14
  br label %258

258:                                              ; preds = %253, %222
  %259 = phi ptr [ %17, %222 ], [ %254, %253 ]
  %260 = phi ptr [ %226, %222 ], [ %257, %253 ]
  %261 = phi i64 [ %15, %222 ], [ %255, %253 ]
  %262 = phi i64 [ %14, %222 ], [ %256, %253 ]
  %263 = phi i64 [ %13, %222 ], [ %239, %253 ]
  %264 = phi i64 [ %218, %222 ], [ %241, %253 ]
  %265 = phi ptr [ %11, %222 ], [ %240, %253 ]
  %266 = icmp ne i8 %22, 39
  %267 = icmp ne i8 %22, 34
  %268 = and i1 %266, %267
  switch i8 %22, label %287 [
    i8 39, label %269
    i8 34, label %269
  ]

269:                                              ; preds = %258, %258
  %270 = getelementptr inbounds i8, ptr %21, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !9
  %272 = icmp eq i8 %271, 0
  %273 = icmp eq i8 %271, %22
  %274 = or i1 %272, %273
  br i1 %274, label %297, label %275

275:                                              ; preds = %269, %275
  %276 = phi i8 [ %283, %275 ], [ %271, %269 ]
  %277 = phi ptr [ %281, %275 ], [ %21, %269 ]
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  %279 = icmp eq i8 %276, 92
  %280 = zext i1 %279 to i64
  %281 = getelementptr inbounds i8, ptr %278, i64 %280
  %282 = getelementptr inbounds i8, ptr %281, i64 1
  %283 = load i8, ptr %282, align 1, !tbaa !9
  %284 = icmp eq i8 %283, 0
  %285 = icmp eq i8 %283, %22
  %286 = or i1 %284, %285
  br i1 %286, label %295, label %275, !llvm.loop !28

287:                                              ; preds = %258, %292
  %288 = phi ptr [ %294, %292 ], [ %21, %258 ]
  %289 = load i8, ptr %288, align 1, !tbaa !9
  switch i8 %289, label %292 [
    i8 0, label %297
    i8 93, label %297
    i8 125, label %297
    i8 44, label %297
    i8 58, label %297
    i8 10, label %297
    i8 92, label %290
  ]

290:                                              ; preds = %287
  %291 = getelementptr inbounds i8, ptr %288, i64 1
  br label %292

292:                                              ; preds = %287, %290
  %293 = phi ptr [ %291, %290 ], [ %288, %287 ]
  %294 = getelementptr inbounds i8, ptr %293, i64 1
  br label %287, !llvm.loop !29

295:                                              ; preds = %275
  %296 = getelementptr inbounds i8, ptr %281, i64 1
  br label %297

297:                                              ; preds = %287, %287, %287, %287, %287, %287, %295, %269
  %298 = phi ptr [ %270, %269 ], [ %270, %295 ], [ %21, %287 ], [ %21, %287 ], [ %21, %287 ], [ %21, %287 ], [ %21, %287 ], [ %21, %287 ]
  %299 = phi ptr [ %270, %269 ], [ %296, %295 ], [ %288, %287 ], [ %288, %287 ], [ %288, %287 ], [ %288, %287 ], [ %288, %287 ], [ %288, %287 ]
  %300 = ptrtoint ptr %299 to i64
  %301 = ptrtoint ptr %298 to i64
  %302 = sub i64 %300, %301
  %303 = add nsw i64 %302, 1
  %304 = tail call noalias ptr @malloc(i64 noundef %303) #16
  %305 = getelementptr inbounds %struct.kson_node_s, ptr %260, i64 0, i32 2
  store ptr %304, ptr %305, align 8, !tbaa !9
  %306 = tail call ptr @strncpy(ptr noundef %304, ptr noundef nonnull %298, i64 noundef %302) #17
  %307 = load ptr, ptr %305, align 8, !tbaa !9
  %308 = getelementptr inbounds i8, ptr %307, i64 %302
  store i8 0, ptr %308, align 1, !tbaa !9
  %309 = select i1 %267, i64 1, i64 3
  %310 = select i1 %266, i64 %309, i64 2
  %311 = load i64, ptr %260, align 8
  %312 = and i64 %311, -8
  %313 = or disjoint i64 %312, %310
  store i64 %313, ptr %260, align 8
  %314 = sext i1 %268 to i64
  %315 = getelementptr inbounds i8, ptr %299, i64 %314
  br label %316

316:                                              ; preds = %189, %32, %76, %82, %297, %210
  %317 = phi ptr [ %17, %210 ], [ %259, %297 ], [ %17, %32 ], [ %66, %76 ], [ %17, %82 ], [ %17, %189 ]
  %318 = phi ptr [ %21, %210 ], [ %315, %297 ], [ %21, %32 ], [ %21, %76 ], [ %21, %82 ], [ %21, %189 ]
  %319 = phi i64 [ %15, %210 ], [ %261, %297 ], [ %15, %32 ], [ %67, %76 ], [ %15, %82 ], [ %15, %189 ]
  %320 = phi i64 [ %14, %210 ], [ %262, %297 ], [ %14, %32 ], [ %68, %76 ], [ %14, %82 ], [ %14, %189 ]
  %321 = phi i64 [ %211, %210 ], [ %263, %297 ], [ %13, %32 ], [ %77, %76 ], [ %13, %82 ], [ %13, %189 ]
  %322 = phi i64 [ %213, %210 ], [ %264, %297 ], [ %12, %32 ], [ %80, %76 ], [ %12, %82 ], [ %91, %189 ]
  %323 = phi ptr [ %212, %210 ], [ %265, %297 ], [ %11, %32 ], [ %78, %76 ], [ %11, %82 ], [ %11, %189 ]
  %324 = getelementptr inbounds i8, ptr %318, i64 1
  %325 = load i8, ptr %324, align 1, !tbaa !9
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %348, label %9, !llvm.loop !30

327:                                              ; preds = %197, %199, %84, %96
  %328 = phi i32 [ 2, %96 ], [ 2, %84 ], [ 3, %199 ], [ 3, %197 ]
  store i32 %328, ptr %2, align 4, !tbaa !5
  br label %329

329:                                              ; preds = %189, %327
  %330 = phi i64 [ %12, %327 ], [ 1, %189 ]
  %331 = load i8, ptr %21, align 1, !tbaa !9
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %348, label %333

333:                                              ; preds = %329
  %334 = tail call ptr @__ctype_b_loc() #14
  %335 = load ptr, ptr %334, align 8, !tbaa !10
  br label %336

336:                                              ; preds = %333, %344
  %337 = phi i8 [ %331, %333 ], [ %346, %344 ]
  %338 = phi ptr [ %21, %333 ], [ %345, %344 ]
  %339 = sext i8 %337 to i64
  %340 = getelementptr inbounds i16, ptr %335, i64 %339
  %341 = load i16, ptr %340, align 2, !tbaa !12
  %342 = and i16 %341, 8192
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %336
  %345 = getelementptr inbounds i8, ptr %338, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !9
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %336, !llvm.loop !31

348:                                              ; preds = %316, %28, %336, %344, %4, %329
  %349 = phi i64 [ %330, %329 ], [ 0, %4 ], [ %330, %344 ], [ %330, %336 ], [ %12, %28 ], [ %322, %316 ]
  %350 = phi ptr [ %11, %329 ], [ null, %4 ], [ %11, %344 ], [ %11, %336 ], [ %11, %28 ], [ %323, %316 ]
  %351 = phi i64 [ %14, %329 ], [ 0, %4 ], [ %14, %344 ], [ %14, %336 ], [ %14, %28 ], [ %320, %316 ]
  %352 = phi ptr [ %17, %329 ], [ null, %4 ], [ %17, %344 ], [ %17, %336 ], [ %17, %28 ], [ %317, %316 ]
  %353 = phi ptr [ %21, %329 ], [ %0, %4 ], [ %338, %336 ], [ %345, %344 ], [ %29, %28 ], [ %324, %316 ]
  %354 = icmp eq ptr %3, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %348
  %356 = ptrtoint ptr %353 to i64
  %357 = ptrtoint ptr %0 to i64
  %358 = sub i64 %356, %357
  store i64 %358, ptr %3, align 8, !tbaa !16
  br label %359

359:                                              ; preds = %355, %348
  %360 = icmp eq i64 %349, 1
  br i1 %360, label %362, label %361

361:                                              ; preds = %359
  store i32 1, ptr %2, align 4, !tbaa !5
  br label %362

362:                                              ; preds = %361, %359
  %363 = icmp sgt i64 %351, 0
  br i1 %363, label %364, label %385

364:                                              ; preds = %362, %382
  %365 = phi i64 [ %383, %382 ], [ 0, %362 ]
  %366 = getelementptr inbounds %struct.kson_node_s, ptr %352, i64 %365
  %367 = getelementptr inbounds %struct.kson_node_s, ptr %352, i64 %365, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !9
  %369 = load i64, ptr %366, align 8
  %370 = icmp ult i64 %369, 8
  br i1 %370, label %382, label %371

371:                                              ; preds = %364, %371
  %372 = phi i64 [ %378, %371 ], [ 0, %364 ]
  %373 = getelementptr inbounds i64, ptr %368, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !16
  %375 = getelementptr inbounds %struct.kson_node_s, ptr %352, i64 %374
  %376 = load ptr, ptr %367, align 8, !tbaa !9
  %377 = getelementptr inbounds ptr, ptr %376, i64 %372
  store ptr %375, ptr %377, align 8, !tbaa !10
  %378 = add nuw nsw i64 %372, 1
  %379 = load i64, ptr %366, align 8
  %380 = lshr i64 %379, 3
  %381 = icmp ult i64 %378, %380
  br i1 %381, label %371, label %382, !llvm.loop !32

382:                                              ; preds = %371, %364
  %383 = add nuw nsw i64 %365, 1
  %384 = icmp eq i64 %383, %351
  br i1 %384, label %385, label %364, !llvm.loop !33

385:                                              ; preds = %382, %362
  tail call void @free(ptr noundef %350) #17
  store i64 %351, ptr %1, align 8, !tbaa !16
  ret ptr %352
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @kson_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8, !tbaa !34
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kson_t, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.kson_node_s, ptr %10, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  tail call void @free(ptr noundef %12) #17
  %13 = load ptr, ptr %7, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.kson_node_s, ptr %13, i64 %9, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  tail call void @free(ptr noundef %15) #17
  %16 = add nuw nsw i64 %9, 1
  %17 = load i64, ptr %0, align 8, !tbaa !34
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %8, label %19, !llvm.loop !37

19:                                               ; preds = %8, %3
  %20 = getelementptr inbounds %struct.kson_t, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !36
  tail call void @free(ptr noundef %21) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %22

22:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @kson_parse(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %3 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #18
  %4 = call ptr @kson_parse_core(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %2, ptr noundef null)
  %5 = getelementptr inbounds %struct.kson_t, ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !36
  %6 = load i32, ptr %2, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load i64, ptr %3, align 8, !tbaa !34
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8, %11
  %12 = phi i64 [ %17, %11 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.kson_node_s, ptr %4, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  tail call void @free(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.kson_node_s, ptr %4, i64 %12, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  tail call void @free(ptr noundef %16) #17
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %11, !llvm.loop !37

19:                                               ; preds = %11, %8
  tail call void @free(ptr noundef %4) #17
  tail call void @free(ptr noundef nonnull %3) #17
  br label %20

20:                                               ; preds = %1, %19
  %21 = phi ptr [ null, %19 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @kson_by_path(ptr noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #9 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp ne ptr %0, null
  %5 = icmp sgt i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %90

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 16
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 16
  %12 = load ptr, ptr %9, align 8
  br label %13

13:                                               ; preds = %7, %82
  %14 = phi ptr [ %12, %7 ], [ %83, %82 ]
  %15 = phi i32 [ %1, %7 ], [ %86, %82 ]
  %16 = phi ptr [ %0, %7 ], [ %85, %82 ]
  %17 = phi i32 [ %8, %7 ], [ %84, %82 ]
  %18 = load i64, ptr %16, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 7
  switch i32 %20, label %90 [
    i32 5, label %21
    i32 4, label %56
  ]

21:                                               ; preds = %13
  %22 = icmp ult i32 %17, 41
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = zext nneg i32 %17 to i64
  %25 = getelementptr i8, ptr %11, i64 %24
  %26 = add nuw nsw i32 %17, 8
  store i32 %26, ptr %3, align 16
  br label %29

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %14, i64 8
  store ptr %28, ptr %9, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %14, %23 ], [ %28, %27 ]
  %31 = phi i32 [ %26, %23 ], [ %17, %27 ]
  %32 = phi ptr [ %25, %23 ], [ %14, %27 ]
  %33 = load ptr, ptr %32, align 8
  %34 = load i64, ptr %16, align 8
  %35 = and i64 %34, 6
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %90

37:                                               ; preds = %29
  %38 = lshr i64 %34, 3
  %39 = icmp ult i64 %34, 8
  br i1 %39, label %90, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.kson_node_s, ptr %16, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  br label %43

43:                                               ; preds = %53, %40
  %44 = phi i64 [ 0, %40 ], [ %54, %53 ]
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = getelementptr inbounds %struct.kson_node_s, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %33) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %50, %43
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %38
  br i1 %55, label %90, label %43, !llvm.loop !38

56:                                               ; preds = %13
  %57 = icmp ult i32 %17, 41
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = zext nneg i32 %17 to i64
  %60 = getelementptr i8, ptr %11, i64 %59
  %61 = add nuw nsw i32 %17, 8
  store i32 %61, ptr %3, align 16
  br label %64

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %14, i64 8
  store ptr %63, ptr %9, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %14, %58 ], [ %63, %62 ]
  %66 = phi i32 [ %61, %58 ], [ %17, %62 ]
  %67 = phi ptr [ %60, %58 ], [ %14, %62 ]
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %16, align 8
  %70 = and i64 %69, 6
  %71 = icmp eq i64 %70, 4
  %72 = icmp sgt i64 %68, -1
  %73 = and i1 %72, %71
  %74 = lshr i64 %69, 3
  %75 = icmp ugt i64 %74, %68
  %76 = and i1 %75, %73
  br i1 %76, label %77, label %90

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.kson_node_s, ptr %16, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = getelementptr inbounds ptr, ptr %79, i64 %68
  %81 = load ptr, ptr %80, align 8, !tbaa !10
  br label %82

82:                                               ; preds = %50, %77
  %83 = phi ptr [ %65, %77 ], [ %30, %50 ]
  %84 = phi i32 [ %66, %77 ], [ %31, %50 ]
  %85 = phi ptr [ %81, %77 ], [ %46, %50 ]
  %86 = add nsw i32 %15, -1
  %87 = icmp ne ptr %85, null
  %88 = icmp sgt i32 %15, 1
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %13, label %90, !llvm.loop !39

90:                                               ; preds = %64, %37, %29, %82, %13, %53, %2
  %91 = phi ptr [ %0, %2 ], [ null, %53 ], [ null, %64 ], [ null, %37 ], [ null, %29 ], [ %16, %13 ], [ %85, %82 ]
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @kson_format_recur(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.kson_node_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %4)
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i64, ptr %0, align 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 7
  switch i32 %11, label %74 [
    i32 4, label %12
    i32 5, label %12
    i32 1, label %79
  ]

12:                                               ; preds = %8, %8
  %13 = and i64 %9, 7
  %14 = icmp eq i64 %13, 4
  %15 = select i1 %14, i32 91, i32 123
  %16 = load ptr, ptr @stdout, align 8, !tbaa !10
  %17 = tail call i32 @putc(i32 noundef %15, ptr noundef %16)
  %18 = load i64, ptr %0, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %69, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr @stdout, align 8, !tbaa !10
  %22 = tail call i32 @putc(i32 noundef 10, ptr noundef %21)
  %23 = sext i32 %1 to i64
  %24 = icmp slt i32 %1, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %31, %20
  %26 = load i64, ptr %0, align 8
  %27 = icmp ult i64 %26, 8
  br i1 %27, label %59, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.kson_node_s, ptr %0, i64 0, i32 2
  %30 = add i32 %1, 1
  br label %37

31:                                               ; preds = %20, %31
  %32 = phi i64 [ %35, %31 ], [ 0, %20 ]
  %33 = load ptr, ptr @stdout, align 8, !tbaa !10
  %34 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %33)
  %35 = add nuw nsw i64 %32, 1
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %25, label %31, !llvm.loop !40

37:                                               ; preds = %28, %51
  %38 = phi i64 [ 0, %28 ], [ %55, %51 ]
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @stdout, align 8, !tbaa !10
  %42 = tail call i32 @putc(i32 noundef 44, ptr noundef %41)
  %43 = load ptr, ptr @stdout, align 8, !tbaa !10
  %44 = tail call i32 @putc(i32 noundef 10, ptr noundef %43)
  br i1 %24, label %51, label %45

45:                                               ; preds = %40, %45
  %46 = phi i32 [ %49, %45 ], [ 0, %40 ]
  %47 = load ptr, ptr @stdout, align 8, !tbaa !10
  %48 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %47)
  %49 = add nuw i32 %46, 1
  %50 = icmp eq i32 %46, %1
  br i1 %50, label %51, label %45, !llvm.loop !41

51:                                               ; preds = %45, %40, %37
  %52 = load ptr, ptr %29, align 8, !tbaa !9
  %53 = getelementptr inbounds ptr, ptr %52, i64 %38
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  tail call void @kson_format_recur(ptr noundef %54, i32 noundef %30)
  %55 = add nuw nsw i64 %38, 1
  %56 = load i64, ptr %0, align 8
  %57 = lshr i64 %56, 3
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %37, label %59, !llvm.loop !42

59:                                               ; preds = %51, %25
  %60 = load ptr, ptr @stdout, align 8, !tbaa !10
  %61 = tail call i32 @putc(i32 noundef 10, ptr noundef %60)
  %62 = icmp sgt i32 %1, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %63
  %64 = phi i64 [ %67, %63 ], [ 0, %59 ]
  %65 = load ptr, ptr @stdout, align 8, !tbaa !10
  %66 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 2, i64 1, ptr %65)
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, %23
  br i1 %68, label %69, label %63, !llvm.loop !43

69:                                               ; preds = %63, %59, %12
  %70 = load i64, ptr %0, align 8
  %71 = and i64 %70, 7
  %72 = icmp eq i64 %71, 4
  %73 = select i1 %72, i32 93, i32 125
  br label %91

74:                                               ; preds = %8
  %75 = icmp eq i32 %11, 2
  %76 = select i1 %75, i32 39, i32 34
  %77 = load ptr, ptr @stdout, align 8, !tbaa !10
  %78 = tail call i32 @putc(i32 noundef %76, ptr noundef %77)
  br label %79

79:                                               ; preds = %8, %74
  %80 = getelementptr inbounds %struct.kson_node_s, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = load ptr, ptr @stdout, align 8, !tbaa !10
  %83 = tail call i32 @fputs(ptr noundef %81, ptr noundef %82)
  %84 = load i64, ptr %0, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 7
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = icmp eq i32 %86, 2
  %90 = select i1 %89, i32 39, i32 34
  br label %91

91:                                               ; preds = %69, %88
  %92 = phi i32 [ %90, %88 ], [ %73, %69 ]
  %93 = load ptr, ptr @stdout, align 8, !tbaa !10
  %94 = tail call i32 @putc(i32 noundef %92, ptr noundef %93)
  br label %95

95:                                               ; preds = %91, %79
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @kson_format(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  tail call void @kson_format_recur(ptr noundef %0, i32 noundef 0)
  %2 = load ptr, ptr @stdout, align 8, !tbaa !10
  %3 = tail call i32 @putc(i32 noundef 10, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = distinct !{!18, !15}
!19 = !{!20, !11, i64 8}
!20 = !{!"kson_node_s", !21, i64 0, !21, i64 0, !11, i64 8, !7, i64 16}
!21 = !{!"long long", !7, i64 0}
!22 = distinct !{!22, !15, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !15, !23}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = !{!35, !17, i64 0}
!35 = !{!"", !17, i64 0, !11, i64 8}
!36 = !{!35, !11, i64 8}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
