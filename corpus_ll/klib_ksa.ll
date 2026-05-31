; ModuleID = 'corpus_src/klib/ksa.c'
source_filename = "corpus_src/klib/ksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ksa_core(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %4, %2
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = sub nsw i32 %2, %4
  %12 = icmp slt i32 %11, %4
  %13 = select i1 %12, i32 0, i32 %4
  br label %24

14:                                               ; preds = %6
  %15 = icmp eq i32 %5, 1
  %16 = zext i1 %15 to i32
  %17 = shl i32 %4, %16
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %703, label %22

22:                                               ; preds = %14
  %23 = select i1 %15, i32 %4, i32 0
  br label %24

24:                                               ; preds = %22, %8
  %25 = phi i32 [ %23, %22 ], [ %13, %8 ]
  %26 = phi ptr [ %20, %22 ], [ %10, %8 ]
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = icmp sgt i32 %4, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = zext nneg i32 %4 to i64
  %32 = shl nuw nsw i64 %31, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %26, i8 0, i64 %32, i1 false), !tbaa !5
  br label %33

33:                                               ; preds = %30, %24
  %34 = icmp sgt i32 %3, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %33
  %36 = icmp eq i32 %5, 4
  %37 = zext nneg i32 %3 to i64
  br label %38

38:                                               ; preds = %52, %35
  %39 = phi i64 [ 0, %35 ], [ %59, %52 ]
  br i1 %36, label %40, label %43

40:                                               ; preds = %38
  %41 = getelementptr inbounds i32, ptr %0, i64 %39
  %42 = load i32, ptr %41, align 4, !tbaa !5
  br label %52

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %0, i64 %39
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = zext i8 %45 to i32
  br label %52

49:                                               ; preds = %43
  %50 = trunc i64 %39 to i32
  %51 = add i32 %50, -2147483647
  br label %52

52:                                               ; preds = %49, %47, %40
  %53 = phi i32 [ %42, %40 ], [ %48, %47 ], [ %51, %49 ]
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %26, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !5
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !5
  %59 = add nuw nsw i64 %39, 1
  %60 = icmp eq i64 %59, %37
  br i1 %60, label %61, label %38, !llvm.loop !10

61:                                               ; preds = %52, %33
  br i1 %29, label %62, label %109

62:                                               ; preds = %61
  %63 = zext nneg i32 %4 to i64
  %64 = and i64 %63, 3
  %65 = icmp ult i32 %4, 4
  br i1 %65, label %94, label %66

66:                                               ; preds = %62
  %67 = and i64 %63, 2147483644
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %91, %68 ]
  %70 = phi i32 [ 0, %66 ], [ %89, %68 ]
  %71 = phi i64 [ 0, %66 ], [ %92, %68 ]
  %72 = getelementptr inbounds i32, ptr %26, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !5
  %74 = add nsw i32 %73, %70
  %75 = getelementptr inbounds i32, ptr %28, i64 %69
  store i32 %74, ptr %75, align 4, !tbaa !5
  %76 = or disjoint i64 %69, 1
  %77 = getelementptr inbounds i32, ptr %26, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = add nsw i32 %78, %74
  %80 = getelementptr inbounds i32, ptr %28, i64 %76
  store i32 %79, ptr %80, align 4, !tbaa !5
  %81 = or disjoint i64 %69, 2
  %82 = getelementptr inbounds i32, ptr %26, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = add nsw i32 %83, %79
  %85 = getelementptr inbounds i32, ptr %28, i64 %81
  store i32 %84, ptr %85, align 4, !tbaa !5
  %86 = or disjoint i64 %69, 3
  %87 = getelementptr inbounds i32, ptr %26, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !5
  %89 = add nsw i32 %88, %84
  %90 = getelementptr inbounds i32, ptr %28, i64 %86
  store i32 %89, ptr %90, align 4, !tbaa !5
  %91 = add nuw nsw i64 %69, 4
  %92 = add i64 %71, 4
  %93 = icmp eq i64 %92, %67
  br i1 %93, label %94, label %68, !llvm.loop !12

94:                                               ; preds = %68, %62
  %95 = phi i64 [ 0, %62 ], [ %91, %68 ]
  %96 = phi i32 [ 0, %62 ], [ %89, %68 ]
  %97 = icmp eq i64 %64, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %94, %98
  %99 = phi i64 [ %106, %98 ], [ %95, %94 ]
  %100 = phi i32 [ %104, %98 ], [ %96, %94 ]
  %101 = phi i64 [ %107, %98 ], [ 0, %94 ]
  %102 = getelementptr inbounds i32, ptr %26, i64 %99
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = add nsw i32 %103, %100
  %105 = getelementptr inbounds i32, ptr %28, i64 %99
  store i32 %104, ptr %105, align 4, !tbaa !5
  %106 = add nuw nsw i64 %99, 1
  %107 = add i64 %101, 1
  %108 = icmp eq i64 %107, %64
  br i1 %108, label %109, label %98, !llvm.loop !13

109:                                              ; preds = %94, %98, %61
  br i1 %34, label %110, label %113

110:                                              ; preds = %109
  %111 = zext nneg i32 %3 to i64
  %112 = shl nuw nsw i64 %111, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %112, i1 false), !tbaa !5
  br label %113

113:                                              ; preds = %110, %109
  %114 = add i32 %3, -2
  %115 = icmp eq i32 %5, 4
  %116 = sext i32 %3 to i64
  br i1 %115, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr i32, ptr %0, i64 %116
  %119 = getelementptr i32, ptr %118, i64 -1
  %120 = load i32, ptr %119, align 4, !tbaa !5
  br label %130

121:                                              ; preds = %113
  %122 = getelementptr i8, ptr %0, i64 %116
  %123 = getelementptr i8, ptr %122, i64 -1
  %124 = load i8, ptr %123, align 1, !tbaa !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = zext i8 %124 to i32
  br label %130

128:                                              ; preds = %121
  %129 = or i32 %3, -2147483648
  br label %130

130:                                              ; preds = %126, %128, %117
  %131 = phi i32 [ %120, %117 ], [ %127, %126 ], [ %129, %128 ]
  %132 = icmp sgt i32 %3, 1
  br i1 %132, label %133, label %171

133:                                              ; preds = %130
  %134 = zext nneg i32 %114 to i64
  br label %135

135:                                              ; preds = %133, %167
  %136 = phi i64 [ %134, %133 ], [ %169, %167 ]
  %137 = phi i32 [ %131, %133 ], [ %152, %167 ]
  %138 = phi i32 [ 1, %133 ], [ %168, %167 ]
  br i1 %115, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds i32, ptr %0, i64 %136
  %141 = load i32, ptr %140, align 4, !tbaa !5
  br label %151

142:                                              ; preds = %135
  %143 = getelementptr inbounds i8, ptr %0, i64 %136
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = zext i8 %144 to i32
  br label %151

148:                                              ; preds = %142
  %149 = trunc i64 %136 to i32
  %150 = add i32 %149, -2147483647
  br label %151

151:                                              ; preds = %146, %148, %139
  %152 = phi i32 [ %141, %139 ], [ %147, %146 ], [ %150, %148 ]
  %153 = add nsw i32 %137, %138
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %151
  %156 = icmp eq i32 %138, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %155
  %158 = tail call i32 @llvm.smax.i32(i32 %137, i32 0)
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds i32, ptr %28, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = add nsw i32 %161, -1
  store i32 %162, ptr %160, align 4, !tbaa !5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %1, i64 %163
  %165 = trunc i64 %136 to i32
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 4, !tbaa !5
  br label %167

167:                                              ; preds = %151, %157, %155
  %168 = phi i32 [ 0, %157 ], [ 0, %155 ], [ 1, %151 ]
  %169 = add nsw i64 %136, -1
  %170 = icmp sgt i64 %136, 0
  br i1 %170, label %135, label %171, !llvm.loop !15

171:                                              ; preds = %167, %130
  tail call fastcc void @induceSA(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %26, ptr noundef %28, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br i1 %7, label %172, label %173

172:                                              ; preds = %171
  tail call void @free(ptr noundef %26) #7
  br label %173

173:                                              ; preds = %172, %171
  %174 = getelementptr i8, ptr %0, i64 -1
  %175 = getelementptr i32, ptr %0, i64 -1
  br i1 %34, label %176, label %179

176:                                              ; preds = %173
  %177 = add nsw i32 %3, -1
  %178 = zext nneg i32 %3 to i64
  br label %191

179:                                              ; preds = %258, %173
  %180 = phi i32 [ 0, %173 ], [ %259, %258 ]
  %181 = icmp slt i32 %180, %3
  br i1 %181, label %182, label %262

182:                                              ; preds = %179
  %183 = sext i32 %180 to i64
  %184 = shl nsw i64 %183, 2
  %185 = getelementptr i8, ptr %1, i64 %184
  %186 = xor i32 %180, -1
  %187 = add i32 %186, %3
  %188 = zext i32 %187 to i64
  %189 = shl nuw nsw i64 %188, 2
  %190 = add nuw nsw i64 %189, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %185, i8 0, i64 %190, i1 false), !tbaa !5
  br label %262

191:                                              ; preds = %176, %258
  %192 = phi i64 [ 0, %176 ], [ %260, %258 ]
  %193 = phi i32 [ 0, %176 ], [ %259, %258 ]
  %194 = getelementptr inbounds i32, ptr %1, i64 %192
  %195 = load i32, ptr %194, align 4, !tbaa !5
  %196 = icmp eq i32 %195, %177
  br i1 %196, label %253, label %197

197:                                              ; preds = %191
  %198 = icmp sgt i32 %195, 0
  br i1 %198, label %199, label %258

199:                                              ; preds = %197
  %200 = zext nneg i32 %195 to i64
  br i1 %115, label %211, label %201

201:                                              ; preds = %199
  %202 = getelementptr i8, ptr %174, i64 %200
  %203 = load i8, ptr %202, align 1, !tbaa !9
  %204 = icmp eq i8 %203, 0
  %205 = or disjoint i32 %195, -2147483648
  %206 = zext i8 %203 to i32
  %207 = select i1 %204, i32 %205, i32 %206
  %208 = getelementptr inbounds i8, ptr %0, i64 %200
  %209 = load i8, ptr %208, align 1, !tbaa !9
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %218, label %216

211:                                              ; preds = %199
  %212 = getelementptr i32, ptr %175, i64 %200
  %213 = load i32, ptr %212, align 4, !tbaa !5
  %214 = getelementptr inbounds i32, ptr %0, i64 %200
  %215 = load i32, ptr %214, align 4, !tbaa !5
  br label %220

216:                                              ; preds = %201
  %217 = zext i8 %209 to i32
  br label %220

218:                                              ; preds = %201
  %219 = add nsw i32 %195, -2147483647
  br label %220

220:                                              ; preds = %216, %218, %211
  %221 = phi i32 [ %213, %211 ], [ %207, %216 ], [ %207, %218 ]
  %222 = phi i32 [ %215, %211 ], [ %217, %216 ], [ %219, %218 ]
  %223 = icmp sgt i32 %221, %222
  %224 = add nuw i32 %195, 1
  %225 = icmp slt i32 %224, %3
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %258

227:                                              ; preds = %220
  %228 = zext i32 %224 to i64
  br label %234

229:                                              ; preds = %248
  %230 = add nuw nsw i64 %235, 1
  %231 = trunc i64 %230 to i32
  %232 = icmp slt i32 %231, %3
  %233 = trunc i64 %235 to i32
  br i1 %232, label %234, label %258, !llvm.loop !16

234:                                              ; preds = %227, %229
  %235 = phi i64 [ %228, %227 ], [ %230, %229 ]
  %236 = phi i32 [ %195, %227 ], [ %233, %229 ]
  br i1 %115, label %237, label %240

237:                                              ; preds = %234
  %238 = getelementptr inbounds i32, ptr %0, i64 %235
  %239 = load i32, ptr %238, align 4, !tbaa !5
  br label %248

240:                                              ; preds = %234
  %241 = getelementptr inbounds i8, ptr %0, i64 %235
  %242 = load i8, ptr %241, align 1, !tbaa !9
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = zext i8 %242 to i32
  br label %248

246:                                              ; preds = %240
  %247 = add nsw i32 %236, -2147483646
  br label %248

248:                                              ; preds = %244, %246, %237
  %249 = phi i32 [ %239, %237 ], [ %245, %244 ], [ %247, %246 ]
  %250 = icmp eq i32 %222, %249
  br i1 %250, label %229, label %251, !llvm.loop !16

251:                                              ; preds = %248
  %252 = icmp slt i32 %222, %249
  br i1 %252, label %253, label %258

253:                                              ; preds = %251, %191
  %254 = phi i32 [ %177, %191 ], [ %195, %251 ]
  %255 = add nsw i32 %193, 1
  %256 = sext i32 %193 to i64
  %257 = getelementptr inbounds i32, ptr %1, i64 %256
  store i32 %254, ptr %257, align 4, !tbaa !5
  br label %258

258:                                              ; preds = %229, %253, %197, %220, %251
  %259 = phi i32 [ %193, %251 ], [ %193, %220 ], [ %193, %197 ], [ %255, %253 ], [ %193, %229 ]
  %260 = add nuw nsw i64 %192, 1
  %261 = icmp eq i64 %260, %178
  br i1 %261, label %179, label %191, !llvm.loop !17

262:                                              ; preds = %182, %179
  %263 = sext i32 %3 to i64
  br i1 %115, label %264, label %268

264:                                              ; preds = %262
  %265 = getelementptr i32, ptr %0, i64 %263
  %266 = getelementptr i32, ptr %265, i64 -1
  %267 = load i32, ptr %266, align 4, !tbaa !5
  br label %277

268:                                              ; preds = %262
  %269 = getelementptr i8, ptr %0, i64 %263
  %270 = getelementptr i8, ptr %269, i64 -1
  %271 = load i8, ptr %270, align 1, !tbaa !9
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %268
  %274 = zext i8 %271 to i32
  br label %277

275:                                              ; preds = %268
  %276 = or i32 %3, -2147483648
  br label %277

277:                                              ; preds = %273, %275, %264
  %278 = phi i32 [ %267, %264 ], [ %274, %273 ], [ %276, %275 ]
  br i1 %132, label %279, label %281

279:                                              ; preds = %277
  %280 = zext nneg i32 %114 to i64
  br label %285

281:                                              ; preds = %318, %277
  %282 = icmp sgt i32 %180, 0
  br i1 %282, label %283, label %389

283:                                              ; preds = %281
  %284 = zext nneg i32 %180 to i64
  br label %323

285:                                              ; preds = %279, %318
  %286 = phi i64 [ %280, %279 ], [ %321, %318 ]
  %287 = phi i32 [ %278, %279 ], [ %303, %318 ]
  %288 = phi i32 [ 1, %279 ], [ %320, %318 ]
  %289 = phi i32 [ %3, %279 ], [ %319, %318 ]
  br i1 %115, label %290, label %293

290:                                              ; preds = %285
  %291 = getelementptr inbounds i32, ptr %0, i64 %286
  %292 = load i32, ptr %291, align 4, !tbaa !5
  br label %302

293:                                              ; preds = %285
  %294 = getelementptr inbounds i8, ptr %0, i64 %286
  %295 = load i8, ptr %294, align 1, !tbaa !9
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = zext i8 %295 to i32
  br label %302

299:                                              ; preds = %293
  %300 = trunc i64 %286 to i32
  %301 = add i32 %300, -2147483647
  br label %302

302:                                              ; preds = %297, %299, %290
  %303 = phi i32 [ %292, %290 ], [ %298, %297 ], [ %301, %299 ]
  %304 = add nsw i32 %287, %288
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %318, label %306

306:                                              ; preds = %302
  %307 = icmp eq i32 %288, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %306
  %309 = trunc i64 %286 to i32
  %310 = xor i32 %309, -1
  %311 = add i32 %289, %310
  %312 = trunc i64 %286 to i32
  %313 = add i32 %312, 1
  %314 = lshr i32 %313, 1
  %315 = add nsw i32 %314, %180
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, ptr %1, i64 %316
  store i32 %311, ptr %317, align 4, !tbaa !5
  br label %318

318:                                              ; preds = %302, %308, %306
  %319 = phi i32 [ %313, %308 ], [ %289, %306 ], [ %289, %302 ]
  %320 = phi i32 [ 0, %308 ], [ 0, %306 ], [ 1, %302 ]
  %321 = add nsw i64 %286, -1
  %322 = icmp sgt i64 %286, 0
  br i1 %322, label %285, label %281, !llvm.loop !18

323:                                              ; preds = %283, %383
  %324 = phi i64 [ 0, %283 ], [ %387, %383 ]
  %325 = phi i32 [ 0, %283 ], [ %386, %383 ]
  %326 = phi i32 [ 0, %283 ], [ %385, %383 ]
  %327 = phi i32 [ %3, %283 ], [ %384, %383 ]
  %328 = getelementptr inbounds i32, ptr %1, i64 %324
  %329 = load i32, ptr %328, align 4, !tbaa !5
  %330 = ashr i32 %329, 1
  %331 = add nsw i32 %330, %180
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, ptr %1, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !5
  %335 = icmp eq i32 %334, %326
  br i1 %335, label %336, label %381

336:                                              ; preds = %323
  %337 = icmp sgt i32 %326, 0
  br i1 %337, label %338, label %378

338:                                              ; preds = %336
  %339 = sext i32 %329 to i64
  %340 = sext i32 %327 to i64
  %341 = zext nneg i32 %326 to i64
  %342 = getelementptr i32, ptr %0, i64 %339
  %343 = getelementptr i32, ptr %0, i64 %340
  br label %344

344:                                              ; preds = %338, %373
  %345 = phi i64 [ 0, %338 ], [ %374, %373 ]
  br i1 %115, label %359, label %346

346:                                              ; preds = %344
  %347 = add nsw i64 %345, %339
  %348 = getelementptr inbounds i8, ptr %0, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !9
  %350 = icmp eq i8 %349, 0
  %351 = zext i8 %349 to i32
  %352 = trunc i64 %347 to i32
  %353 = add i32 %352, -2147483647
  %354 = select i1 %350, i32 %353, i32 %351
  %355 = add nsw i64 %345, %340
  %356 = getelementptr inbounds i8, ptr %0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !9
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %366, label %364

359:                                              ; preds = %344
  %360 = getelementptr i32, ptr %342, i64 %345
  %361 = load i32, ptr %360, align 4, !tbaa !5
  %362 = getelementptr i32, ptr %343, i64 %345
  %363 = load i32, ptr %362, align 4, !tbaa !5
  br label %369

364:                                              ; preds = %346
  %365 = zext i8 %357 to i32
  br label %369

366:                                              ; preds = %346
  %367 = trunc i64 %355 to i32
  %368 = add i32 %367, -2147483647
  br label %369

369:                                              ; preds = %364, %366, %359
  %370 = phi i32 [ %361, %359 ], [ %354, %364 ], [ %354, %366 ]
  %371 = phi i32 [ %363, %359 ], [ %365, %364 ], [ %368, %366 ]
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = add nuw nsw i64 %345, 1
  %375 = icmp eq i64 %374, %341
  br i1 %375, label %383, label %344, !llvm.loop !19

376:                                              ; preds = %369
  %377 = trunc i64 %345 to i32
  br label %378

378:                                              ; preds = %376, %336
  %379 = phi i32 [ 0, %336 ], [ %377, %376 ]
  %380 = icmp eq i32 %379, %326
  br i1 %380, label %383, label %381

381:                                              ; preds = %323, %378
  %382 = add nsw i32 %325, 1
  br label %383

383:                                              ; preds = %373, %381, %378
  %384 = phi i32 [ %329, %381 ], [ %327, %378 ], [ %327, %373 ]
  %385 = phi i32 [ %334, %381 ], [ %326, %378 ], [ %326, %373 ]
  %386 = phi i32 [ %382, %381 ], [ %325, %378 ], [ %325, %373 ]
  store i32 %386, ptr %333, align 4, !tbaa !5
  %387 = add nuw nsw i64 %324, 1
  %388 = icmp eq i64 %387, %284
  br i1 %388, label %389, label %323, !llvm.loop !20

389:                                              ; preds = %383, %281
  %390 = phi i32 [ 0, %281 ], [ %386, %383 ]
  %391 = icmp slt i32 %390, %180
  br i1 %391, label %392, label %562

392:                                              ; preds = %389
  %393 = sext i32 %3 to i64
  %394 = getelementptr inbounds i32, ptr %1, i64 %393
  %395 = sext i32 %2 to i64
  %396 = getelementptr inbounds i32, ptr %394, i64 %395
  %397 = sext i32 %180 to i64
  %398 = sub nsw i64 0, %397
  %399 = getelementptr inbounds i32, ptr %396, i64 %398
  %400 = getelementptr inbounds i32, ptr %399, i64 -1
  %401 = add nsw i32 %3, -1
  %402 = add nsw i32 %180, -1
  br i1 %181, label %403, label %446

403:                                              ; preds = %392
  %404 = sub nsw i64 %393, %397
  %405 = and i64 %404, 1
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %403
  %408 = add nsw i64 %393, -1
  %409 = getelementptr inbounds i32, ptr %1, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !5
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %407
  %413 = add nsw i32 %180, -2
  %414 = sext i32 %402 to i64
  %415 = getelementptr inbounds i32, ptr %400, i64 %414
  store i32 %410, ptr %415, align 4, !tbaa !5
  br label %416

416:                                              ; preds = %407, %412, %403
  %417 = phi i64 [ %393, %403 ], [ %408, %412 ], [ %408, %407 ]
  %418 = phi i32 [ %402, %403 ], [ %413, %412 ], [ %402, %407 ]
  %419 = add nsw i64 %393, -1
  %420 = icmp eq i64 %419, %397
  br i1 %420, label %446, label %421

421:                                              ; preds = %416
  %422 = getelementptr i32, ptr %1, i64 -1
  br label %423

423:                                              ; preds = %443, %421
  %424 = phi i64 [ %417, %421 ], [ %435, %443 ]
  %425 = phi i32 [ %418, %421 ], [ %444, %443 ]
  %426 = getelementptr i32, ptr %422, i64 %424
  %427 = load i32, ptr %426, align 4, !tbaa !5
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %433, label %429

429:                                              ; preds = %423
  %430 = add nsw i32 %425, -1
  %431 = sext i32 %425 to i64
  %432 = getelementptr inbounds i32, ptr %400, i64 %431
  store i32 %427, ptr %432, align 4, !tbaa !5
  br label %433

433:                                              ; preds = %423, %429
  %434 = phi i32 [ %430, %429 ], [ %425, %423 ]
  %435 = add nsw i64 %424, -2
  %436 = getelementptr inbounds i32, ptr %1, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !5
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %443, label %439

439:                                              ; preds = %433
  %440 = add nsw i32 %434, -1
  %441 = sext i32 %434 to i64
  %442 = getelementptr inbounds i32, ptr %400, i64 %441
  store i32 %437, ptr %442, align 4, !tbaa !5
  br label %443

443:                                              ; preds = %439, %433
  %444 = phi i32 [ %440, %439 ], [ %434, %433 ]
  %445 = icmp sgt i64 %435, %397
  br i1 %445, label %423, label %446, !llvm.loop !21

446:                                              ; preds = %416, %443, %392
  %447 = getelementptr inbounds i32, ptr %400, i64 %397
  store i32 0, ptr %447, align 4, !tbaa !5
  %448 = add i32 %2, -2
  %449 = add i32 %448, %3
  %450 = shl i32 %180, 1
  %451 = sub i32 %449, %450
  %452 = add nsw i32 %180, 1
  %453 = add nsw i32 %390, 1
  %454 = tail call i32 @ksa_core(ptr noundef nonnull %400, ptr noundef %1, i32 noundef %451, i32 noundef %452, i32 noundef %453, i32 noundef 4), !range !22
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %703

456:                                              ; preds = %446
  %457 = sext i32 %401 to i64
  br i1 %115, label %458, label %461

458:                                              ; preds = %456
  %459 = getelementptr inbounds i32, ptr %0, i64 %457
  %460 = load i32, ptr %459, align 4, !tbaa !5
  br label %469

461:                                              ; preds = %456
  %462 = getelementptr inbounds i8, ptr %0, i64 %457
  %463 = load i8, ptr %462, align 1, !tbaa !9
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %467, label %465

465:                                              ; preds = %461
  %466 = zext i8 %463 to i32
  br label %469

467:                                              ; preds = %461
  %468 = or i32 %3, -2147483648
  br label %469

469:                                              ; preds = %465, %467, %458
  %470 = phi i32 [ %460, %458 ], [ %466, %465 ], [ %468, %467 ]
  br i1 %132, label %471, label %473

471:                                              ; preds = %469
  %472 = zext nneg i32 %114 to i64
  br label %480

473:                                              ; preds = %509, %469
  br i1 %282, label %474, label %562

474:                                              ; preds = %473
  %475 = zext nneg i32 %180 to i64
  %476 = and i64 %475, 3
  %477 = icmp ult i32 %180, 4
  br i1 %477, label %547, label %478

478:                                              ; preds = %474
  %479 = and i64 %475, 2147483644
  br label %514

480:                                              ; preds = %471, %509
  %481 = phi i64 [ %472, %471 ], [ %512, %509 ]
  %482 = phi i32 [ %470, %471 ], [ %498, %509 ]
  %483 = phi i32 [ 1, %471 ], [ %511, %509 ]
  %484 = phi i32 [ %402, %471 ], [ %510, %509 ]
  br i1 %115, label %485, label %488

485:                                              ; preds = %480
  %486 = getelementptr inbounds i32, ptr %0, i64 %481
  %487 = load i32, ptr %486, align 4, !tbaa !5
  br label %497

488:                                              ; preds = %480
  %489 = getelementptr inbounds i8, ptr %0, i64 %481
  %490 = load i8, ptr %489, align 1, !tbaa !9
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %494, label %492

492:                                              ; preds = %488
  %493 = zext i8 %490 to i32
  br label %497

494:                                              ; preds = %488
  %495 = trunc i64 %481 to i32
  %496 = add i32 %495, -2147483647
  br label %497

497:                                              ; preds = %492, %494, %485
  %498 = phi i32 [ %487, %485 ], [ %493, %492 ], [ %496, %494 ]
  %499 = add nsw i32 %482, %483
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %509, label %501

501:                                              ; preds = %497
  %502 = icmp eq i32 %483, 0
  br i1 %502, label %509, label %503

503:                                              ; preds = %501
  %504 = add nsw i32 %484, -1
  %505 = sext i32 %484 to i64
  %506 = getelementptr inbounds i32, ptr %400, i64 %505
  %507 = trunc i64 %481 to i32
  %508 = add i32 %507, 1
  store i32 %508, ptr %506, align 4, !tbaa !5
  br label %509

509:                                              ; preds = %497, %503, %501
  %510 = phi i32 [ %504, %503 ], [ %484, %501 ], [ %484, %497 ]
  %511 = phi i32 [ 0, %503 ], [ 0, %501 ], [ 1, %497 ]
  %512 = add nsw i64 %481, -1
  %513 = icmp sgt i64 %481, 0
  br i1 %513, label %480, label %473, !llvm.loop !23

514:                                              ; preds = %514, %478
  %515 = phi i64 [ 0, %478 ], [ %538, %514 ]
  %516 = phi i64 [ 0, %478 ], [ %545, %514 ]
  %517 = or disjoint i64 %515, 1
  %518 = getelementptr inbounds i32, ptr %1, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !5
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, ptr %400, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !5
  %523 = getelementptr inbounds i32, ptr %1, i64 %515
  store i32 %522, ptr %523, align 4, !tbaa !5
  %524 = or disjoint i64 %515, 2
  %525 = getelementptr inbounds i32, ptr %1, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !5
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, ptr %400, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !5
  %530 = getelementptr inbounds i32, ptr %1, i64 %517
  store i32 %529, ptr %530, align 4, !tbaa !5
  %531 = or disjoint i64 %515, 3
  %532 = getelementptr inbounds i32, ptr %1, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !5
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, ptr %400, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !5
  %537 = getelementptr inbounds i32, ptr %1, i64 %524
  store i32 %536, ptr %537, align 4, !tbaa !5
  %538 = add nuw nsw i64 %515, 4
  %539 = getelementptr inbounds i32, ptr %1, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !5
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, ptr %400, i64 %541
  %543 = load i32, ptr %542, align 4, !tbaa !5
  %544 = getelementptr inbounds i32, ptr %1, i64 %531
  store i32 %543, ptr %544, align 4, !tbaa !5
  %545 = add nuw nsw i64 %516, 4
  %546 = icmp eq i64 %545, %479
  br i1 %546, label %547, label %514, !llvm.loop !24

547:                                              ; preds = %514, %474
  %548 = phi i64 [ 0, %474 ], [ %538, %514 ]
  %549 = icmp eq i64 %476, 0
  br i1 %549, label %562, label %550

550:                                              ; preds = %547, %550
  %551 = phi i64 [ %553, %550 ], [ %548, %547 ]
  %552 = phi i64 [ %560, %550 ], [ 0, %547 ]
  %553 = add nuw nsw i64 %551, 1
  %554 = getelementptr inbounds i32, ptr %1, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !5
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, ptr %400, i64 %556
  %558 = load i32, ptr %557, align 4, !tbaa !5
  %559 = getelementptr inbounds i32, ptr %1, i64 %551
  store i32 %558, ptr %559, align 4, !tbaa !5
  %560 = add i64 %552, 1
  %561 = icmp eq i64 %560, %476
  br i1 %561, label %562, label %550, !llvm.loop !25

562:                                              ; preds = %547, %550, %473, %389
  br i1 %7, label %569, label %563

563:                                              ; preds = %562
  %564 = sext i32 %3 to i64
  %565 = getelementptr inbounds i32, ptr %1, i64 %564
  %566 = sub nsw i32 %2, %4
  %567 = icmp slt i32 %566, %4
  %568 = select i1 %567, i32 0, i32 %4
  br label %579

569:                                              ; preds = %562
  %570 = icmp eq i32 %5, 1
  %571 = zext i1 %570 to i32
  %572 = shl i32 %4, %571
  %573 = sext i32 %572 to i64
  %574 = shl nsw i64 %573, 2
  %575 = tail call noalias ptr @malloc(i64 noundef %574) #6
  %576 = icmp eq ptr %575, null
  br i1 %576, label %703, label %577

577:                                              ; preds = %569
  %578 = select i1 %570, i32 %4, i32 0
  br label %579

579:                                              ; preds = %577, %563
  %580 = phi i32 [ %578, %577 ], [ %568, %563 ]
  %581 = phi ptr [ %575, %577 ], [ %565, %563 ]
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds i32, ptr %581, i64 %582
  br i1 %29, label %584, label %587

584:                                              ; preds = %579
  %585 = zext nneg i32 %4 to i64
  %586 = shl nuw nsw i64 %585, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %581, i8 0, i64 %586, i1 false), !tbaa !5
  br label %587

587:                                              ; preds = %584, %579
  br i1 %34, label %588, label %613

588:                                              ; preds = %587
  %589 = zext nneg i32 %3 to i64
  br label %590

590:                                              ; preds = %604, %588
  %591 = phi i64 [ 0, %588 ], [ %611, %604 ]
  br i1 %115, label %592, label %595

592:                                              ; preds = %590
  %593 = getelementptr inbounds i32, ptr %0, i64 %591
  %594 = load i32, ptr %593, align 4, !tbaa !5
  br label %604

595:                                              ; preds = %590
  %596 = getelementptr inbounds i8, ptr %0, i64 %591
  %597 = load i8, ptr %596, align 1, !tbaa !9
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %601, label %599

599:                                              ; preds = %595
  %600 = zext i8 %597 to i32
  br label %604

601:                                              ; preds = %595
  %602 = trunc i64 %591 to i32
  %603 = add i32 %602, -2147483647
  br label %604

604:                                              ; preds = %601, %599, %592
  %605 = phi i32 [ %594, %592 ], [ %600, %599 ], [ %603, %601 ]
  %606 = tail call i32 @llvm.smax.i32(i32 %605, i32 0)
  %607 = zext nneg i32 %606 to i64
  %608 = getelementptr inbounds i32, ptr %581, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !5
  %610 = add nsw i32 %609, 1
  store i32 %610, ptr %608, align 4, !tbaa !5
  %611 = add nuw nsw i64 %591, 1
  %612 = icmp eq i64 %611, %589
  br i1 %612, label %613, label %590, !llvm.loop !10

613:                                              ; preds = %604, %587
  br i1 %29, label %614, label %661

614:                                              ; preds = %613
  %615 = zext nneg i32 %4 to i64
  %616 = and i64 %615, 3
  %617 = icmp ult i32 %4, 4
  br i1 %617, label %646, label %618

618:                                              ; preds = %614
  %619 = and i64 %615, 2147483644
  br label %620

620:                                              ; preds = %620, %618
  %621 = phi i64 [ 0, %618 ], [ %643, %620 ]
  %622 = phi i32 [ 0, %618 ], [ %641, %620 ]
  %623 = phi i64 [ 0, %618 ], [ %644, %620 ]
  %624 = getelementptr inbounds i32, ptr %581, i64 %621
  %625 = load i32, ptr %624, align 4, !tbaa !5
  %626 = add nsw i32 %625, %622
  %627 = getelementptr inbounds i32, ptr %583, i64 %621
  store i32 %626, ptr %627, align 4, !tbaa !5
  %628 = or disjoint i64 %621, 1
  %629 = getelementptr inbounds i32, ptr %581, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !5
  %631 = add nsw i32 %630, %626
  %632 = getelementptr inbounds i32, ptr %583, i64 %628
  store i32 %631, ptr %632, align 4, !tbaa !5
  %633 = or disjoint i64 %621, 2
  %634 = getelementptr inbounds i32, ptr %581, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !5
  %636 = add nsw i32 %635, %631
  %637 = getelementptr inbounds i32, ptr %583, i64 %633
  store i32 %636, ptr %637, align 4, !tbaa !5
  %638 = or disjoint i64 %621, 3
  %639 = getelementptr inbounds i32, ptr %581, i64 %638
  %640 = load i32, ptr %639, align 4, !tbaa !5
  %641 = add nsw i32 %640, %636
  %642 = getelementptr inbounds i32, ptr %583, i64 %638
  store i32 %641, ptr %642, align 4, !tbaa !5
  %643 = add nuw nsw i64 %621, 4
  %644 = add i64 %623, 4
  %645 = icmp eq i64 %644, %619
  br i1 %645, label %646, label %620, !llvm.loop !12

646:                                              ; preds = %620, %614
  %647 = phi i64 [ 0, %614 ], [ %643, %620 ]
  %648 = phi i32 [ 0, %614 ], [ %641, %620 ]
  %649 = icmp eq i64 %616, 0
  br i1 %649, label %661, label %650

650:                                              ; preds = %646, %650
  %651 = phi i64 [ %658, %650 ], [ %647, %646 ]
  %652 = phi i32 [ %656, %650 ], [ %648, %646 ]
  %653 = phi i64 [ %659, %650 ], [ 0, %646 ]
  %654 = getelementptr inbounds i32, ptr %581, i64 %651
  %655 = load i32, ptr %654, align 4, !tbaa !5
  %656 = add nsw i32 %655, %652
  %657 = getelementptr inbounds i32, ptr %583, i64 %651
  store i32 %656, ptr %657, align 4, !tbaa !5
  %658 = add nuw nsw i64 %651, 1
  %659 = add i64 %653, 1
  %660 = icmp eq i64 %659, %616
  br i1 %660, label %661, label %650, !llvm.loop !26

661:                                              ; preds = %646, %650, %613
  br i1 %181, label %662, label %671

662:                                              ; preds = %661
  %663 = sext i32 %180 to i64
  %664 = shl nsw i64 %663, 2
  %665 = getelementptr i8, ptr %1, i64 %664
  %666 = xor i32 %180, -1
  %667 = add i32 %666, %3
  %668 = zext i32 %667 to i64
  %669 = shl nuw nsw i64 %668, 2
  %670 = add nuw nsw i64 %669, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %665, i8 0, i64 %670, i1 false), !tbaa !5
  br label %671

671:                                              ; preds = %662, %661
  br i1 %282, label %672, label %701

672:                                              ; preds = %671
  %673 = zext nneg i32 %180 to i64
  br label %674

674:                                              ; preds = %672, %691
  %675 = phi i64 [ %673, %672 ], [ %676, %691 ]
  %676 = add nsw i64 %675, -1
  %677 = getelementptr inbounds i32, ptr %1, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !5
  store i32 0, ptr %677, align 4, !tbaa !5
  %679 = sext i32 %678 to i64
  br i1 %115, label %680, label %683

680:                                              ; preds = %674
  %681 = getelementptr inbounds i32, ptr %0, i64 %679
  %682 = load i32, ptr %681, align 4, !tbaa !5
  br label %691

683:                                              ; preds = %674
  %684 = getelementptr inbounds i8, ptr %0, i64 %679
  %685 = load i8, ptr %684, align 1, !tbaa !9
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %689, label %687

687:                                              ; preds = %683
  %688 = zext i8 %685 to i32
  br label %691

689:                                              ; preds = %683
  %690 = add nsw i32 %678, -2147483647
  br label %691

691:                                              ; preds = %687, %689, %680
  %692 = phi i32 [ %682, %680 ], [ %688, %687 ], [ %690, %689 ]
  %693 = tail call i32 @llvm.smax.i32(i32 %692, i32 0)
  %694 = zext nneg i32 %693 to i64
  %695 = getelementptr inbounds i32, ptr %583, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !5
  %697 = add nsw i32 %696, -1
  store i32 %697, ptr %695, align 4, !tbaa !5
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, ptr %1, i64 %698
  store i32 %678, ptr %699, align 4, !tbaa !5
  %700 = icmp ugt i64 %675, 1
  br i1 %700, label %674, label %701, !llvm.loop !27

701:                                              ; preds = %691, %671
  tail call fastcc void @induceSA(ptr noundef %0, ptr noundef %1, ptr noundef %581, ptr noundef %583, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br i1 %7, label %702, label %703

702:                                              ; preds = %701
  tail call void @free(ptr noundef %581) #7
  br label %703

703:                                              ; preds = %446, %701, %702, %569, %14
  %704 = phi i32 [ -2, %14 ], [ -2, %569 ], [ 0, %702 ], [ 0, %701 ], [ -2, %446 ]
  ret i32 %704
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @induceSA(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 {
  %8 = icmp eq ptr %2, %3
  br i1 %8, label %9, label %42

9:                                                ; preds = %7
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = zext nneg i32 %5 to i64
  %13 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %13, i1 false), !tbaa !5
  br label %14

14:                                               ; preds = %11, %9
  %15 = icmp sgt i32 %4, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %14
  %17 = icmp eq i32 %6, 4
  %18 = zext nneg i32 %4 to i64
  br label %19

19:                                               ; preds = %33, %16
  %20 = phi i64 [ 0, %16 ], [ %40, %33 ]
  br i1 %17, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds i32, ptr %0, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !5
  br label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %0, i64 %20
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = zext i8 %26 to i32
  br label %33

30:                                               ; preds = %24
  %31 = trunc i64 %20 to i32
  %32 = add i32 %31, -2147483647
  br label %33

33:                                               ; preds = %30, %28, %21
  %34 = phi i32 [ %23, %21 ], [ %29, %28 ], [ %32, %30 ]
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %2, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !5
  %40 = add nuw nsw i64 %20, 1
  %41 = icmp eq i64 %40, %18
  br i1 %41, label %42, label %19, !llvm.loop !10

42:                                               ; preds = %33, %14, %7
  %43 = icmp sgt i32 %5, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %42
  %45 = zext nneg i32 %5 to i64
  %46 = and i64 %45, 3
  %47 = icmp ult i32 %5, 4
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = and i64 %45, 2147483644
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ 0, %48 ], [ %73, %50 ]
  %52 = phi i32 [ 0, %48 ], [ %71, %50 ]
  %53 = phi i64 [ 0, %48 ], [ %74, %50 ]
  %54 = getelementptr inbounds i32, ptr %2, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !5
  %56 = add nsw i32 %55, %52
  %57 = getelementptr inbounds i32, ptr %3, i64 %51
  store i32 %52, ptr %57, align 4, !tbaa !5
  %58 = or disjoint i64 %51, 1
  %59 = getelementptr inbounds i32, ptr %2, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, %56
  %62 = getelementptr inbounds i32, ptr %3, i64 %58
  store i32 %56, ptr %62, align 4, !tbaa !5
  %63 = or disjoint i64 %51, 2
  %64 = getelementptr inbounds i32, ptr %2, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = add nsw i32 %65, %61
  %67 = getelementptr inbounds i32, ptr %3, i64 %63
  store i32 %61, ptr %67, align 4, !tbaa !5
  %68 = or disjoint i64 %51, 3
  %69 = getelementptr inbounds i32, ptr %2, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = add nsw i32 %70, %66
  %72 = getelementptr inbounds i32, ptr %3, i64 %68
  store i32 %66, ptr %72, align 4, !tbaa !5
  %73 = add nuw nsw i64 %51, 4
  %74 = add i64 %53, 4
  %75 = icmp eq i64 %74, %49
  br i1 %75, label %76, label %50, !llvm.loop !28

76:                                               ; preds = %50, %44
  %77 = phi i64 [ 0, %44 ], [ %73, %50 ]
  %78 = phi i32 [ 0, %44 ], [ %71, %50 ]
  %79 = icmp eq i64 %46, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %88, %80 ], [ %77, %76 ]
  %82 = phi i32 [ %86, %80 ], [ %78, %76 ]
  %83 = phi i64 [ %89, %80 ], [ 0, %76 ]
  %84 = getelementptr inbounds i32, ptr %2, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = add nsw i32 %85, %82
  %87 = getelementptr inbounds i32, ptr %3, i64 %81
  store i32 %82, ptr %87, align 4, !tbaa !5
  %88 = add nuw nsw i64 %81, 1
  %89 = add i64 %83, 1
  %90 = icmp eq i64 %89, %46
  br i1 %90, label %91, label %80, !llvm.loop !29

91:                                               ; preds = %76, %80, %42
  %92 = getelementptr i8, ptr %0, i64 -2
  %93 = getelementptr i32, ptr %0, i64 -2
  %94 = icmp sgt i32 %4, 0
  br i1 %94, label %95, label %168

95:                                               ; preds = %91
  %96 = icmp eq i32 %6, 4
  %97 = ptrtoint ptr %1 to i64
  %98 = zext nneg i32 %4 to i64
  br label %99

99:                                               ; preds = %95, %163
  %100 = phi i64 [ 0, %95 ], [ %166, %163 ]
  %101 = phi i32 [ -1, %95 ], [ %165, %163 ]
  %102 = phi ptr [ null, %95 ], [ %164, %163 ]
  %103 = getelementptr inbounds i32, ptr %1, i64 %100
  %104 = load i32, ptr %103, align 4, !tbaa !5
  %105 = xor i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !5
  %106 = icmp sgt i32 %104, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %99
  %108 = add nsw i32 %104, -1
  %109 = zext nneg i32 %108 to i64
  br i1 %96, label %110, label %113

110:                                              ; preds = %107
  %111 = getelementptr inbounds i32, ptr %0, i64 %109
  %112 = load i32, ptr %111, align 4, !tbaa !5
  br label %121

113:                                              ; preds = %107
  %114 = getelementptr inbounds i8, ptr %0, i64 %109
  %115 = load i8, ptr %114, align 1, !tbaa !9
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = zext i8 %115 to i32
  br label %121

119:                                              ; preds = %113
  %120 = or disjoint i32 %104, -2147483648
  br label %121

121:                                              ; preds = %117, %119, %110
  %122 = phi i32 [ %112, %110 ], [ %118, %117 ], [ %120, %119 ]
  %123 = icmp eq i32 %122, %101
  br i1 %123, label %138, label %124

124:                                              ; preds = %121
  %125 = ptrtoint ptr %102 to i64
  %126 = sub i64 %125, %97
  %127 = lshr exact i64 %126, 2
  %128 = trunc i64 %127 to i32
  %129 = tail call i32 @llvm.smax.i32(i32 %101, i32 0)
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds i32, ptr %3, i64 %130
  store i32 %128, ptr %131, align 4, !tbaa !5
  %132 = tail call i32 @llvm.smax.i32(i32 %122, i32 0)
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %3, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !5
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %1, i64 %136
  br label %138

138:                                              ; preds = %124, %121
  %139 = phi ptr [ %137, %124 ], [ %102, %121 ]
  %140 = phi i32 [ %122, %124 ], [ %101, %121 ]
  %141 = icmp eq i32 %104, 1
  br i1 %141, label %160, label %142

142:                                              ; preds = %138
  %143 = zext nneg i32 %104 to i64
  br i1 %96, label %144, label %147

144:                                              ; preds = %142
  %145 = getelementptr i32, ptr %93, i64 %143
  %146 = load i32, ptr %145, align 4, !tbaa !5
  br label %155

147:                                              ; preds = %142
  %148 = getelementptr i8, ptr %92, i64 %143
  %149 = load i8, ptr %148, align 1, !tbaa !9
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = zext i8 %149 to i32
  br label %155

153:                                              ; preds = %147
  %154 = add nuw i32 %104, 2147483647
  br label %155

155:                                              ; preds = %151, %153, %144
  %156 = phi i32 [ %146, %144 ], [ %152, %151 ], [ %154, %153 ]
  %157 = icmp slt i32 %156, %140
  %158 = sub nsw i32 0, %104
  %159 = select i1 %157, i32 %158, i32 %108
  br label %160

160:                                              ; preds = %155, %138
  %161 = phi i32 [ 0, %138 ], [ %159, %155 ]
  %162 = getelementptr inbounds i32, ptr %139, i64 1
  store i32 %161, ptr %139, align 4, !tbaa !5
  br label %163

163:                                              ; preds = %99, %160
  %164 = phi ptr [ %162, %160 ], [ %102, %99 ]
  %165 = phi i32 [ %140, %160 ], [ %101, %99 ]
  %166 = add nuw nsw i64 %100, 1
  %167 = icmp eq i64 %166, %98
  br i1 %167, label %168, label %99, !llvm.loop !30

168:                                              ; preds = %163, %91
  br i1 %8, label %169, label %200

169:                                              ; preds = %168
  br i1 %43, label %170, label %173

170:                                              ; preds = %169
  %171 = zext nneg i32 %5 to i64
  %172 = shl nuw nsw i64 %171, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %172, i1 false), !tbaa !5
  br label %173

173:                                              ; preds = %170, %169
  br i1 %94, label %174, label %200

174:                                              ; preds = %173
  %175 = icmp eq i32 %6, 4
  %176 = zext nneg i32 %4 to i64
  br label %177

177:                                              ; preds = %191, %174
  %178 = phi i64 [ 0, %174 ], [ %198, %191 ]
  br i1 %175, label %179, label %182

179:                                              ; preds = %177
  %180 = getelementptr inbounds i32, ptr %0, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !5
  br label %191

182:                                              ; preds = %177
  %183 = getelementptr inbounds i8, ptr %0, i64 %178
  %184 = load i8, ptr %183, align 1, !tbaa !9
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = zext i8 %184 to i32
  br label %191

188:                                              ; preds = %182
  %189 = trunc i64 %178 to i32
  %190 = add i32 %189, -2147483647
  br label %191

191:                                              ; preds = %188, %186, %179
  %192 = phi i32 [ %181, %179 ], [ %187, %186 ], [ %190, %188 ]
  %193 = tail call i32 @llvm.smax.i32(i32 %192, i32 0)
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %2, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !5
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %195, align 4, !tbaa !5
  %198 = add nuw nsw i64 %178, 1
  %199 = icmp eq i64 %198, %176
  br i1 %199, label %200, label %177, !llvm.loop !10

200:                                              ; preds = %191, %173, %168
  br i1 %43, label %201, label %248

201:                                              ; preds = %200
  %202 = zext nneg i32 %5 to i64
  %203 = and i64 %202, 3
  %204 = icmp ult i32 %5, 4
  br i1 %204, label %233, label %205

205:                                              ; preds = %201
  %206 = and i64 %202, 2147483644
  br label %207

207:                                              ; preds = %207, %205
  %208 = phi i64 [ 0, %205 ], [ %230, %207 ]
  %209 = phi i32 [ 0, %205 ], [ %228, %207 ]
  %210 = phi i64 [ 0, %205 ], [ %231, %207 ]
  %211 = getelementptr inbounds i32, ptr %2, i64 %208
  %212 = load i32, ptr %211, align 4, !tbaa !5
  %213 = add nsw i32 %212, %209
  %214 = getelementptr inbounds i32, ptr %3, i64 %208
  store i32 %213, ptr %214, align 4, !tbaa !5
  %215 = or disjoint i64 %208, 1
  %216 = getelementptr inbounds i32, ptr %2, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !5
  %218 = add nsw i32 %217, %213
  %219 = getelementptr inbounds i32, ptr %3, i64 %215
  store i32 %218, ptr %219, align 4, !tbaa !5
  %220 = or disjoint i64 %208, 2
  %221 = getelementptr inbounds i32, ptr %2, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !5
  %223 = add nsw i32 %222, %218
  %224 = getelementptr inbounds i32, ptr %3, i64 %220
  store i32 %223, ptr %224, align 4, !tbaa !5
  %225 = or disjoint i64 %208, 3
  %226 = getelementptr inbounds i32, ptr %2, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !5
  %228 = add nsw i32 %227, %223
  %229 = getelementptr inbounds i32, ptr %3, i64 %225
  store i32 %228, ptr %229, align 4, !tbaa !5
  %230 = add nuw nsw i64 %208, 4
  %231 = add i64 %210, 4
  %232 = icmp eq i64 %231, %206
  br i1 %232, label %233, label %207, !llvm.loop !12

233:                                              ; preds = %207, %201
  %234 = phi i64 [ 0, %201 ], [ %230, %207 ]
  %235 = phi i32 [ 0, %201 ], [ %228, %207 ]
  %236 = icmp eq i64 %203, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %233, %237
  %238 = phi i64 [ %245, %237 ], [ %234, %233 ]
  %239 = phi i32 [ %243, %237 ], [ %235, %233 ]
  %240 = phi i64 [ %246, %237 ], [ 0, %233 ]
  %241 = getelementptr inbounds i32, ptr %2, i64 %238
  %242 = load i32, ptr %241, align 4, !tbaa !5
  %243 = add nsw i32 %242, %239
  %244 = getelementptr inbounds i32, ptr %3, i64 %238
  store i32 %243, ptr %244, align 4, !tbaa !5
  %245 = add nuw nsw i64 %238, 1
  %246 = add i64 %240, 1
  %247 = icmp eq i64 %246, %203
  br i1 %247, label %248, label %237, !llvm.loop !31

248:                                              ; preds = %233, %237, %200
  br i1 %94, label %249, label %325

249:                                              ; preds = %248
  %250 = icmp eq i32 %6, 4
  %251 = ptrtoint ptr %1 to i64
  %252 = zext nneg i32 %4 to i64
  br label %253

253:                                              ; preds = %249, %321
  %254 = phi i64 [ %252, %249 ], [ %257, %321 ]
  %255 = phi i32 [ -1, %249 ], [ %323, %321 ]
  %256 = phi ptr [ null, %249 ], [ %322, %321 ]
  %257 = add nsw i64 %254, -1
  %258 = getelementptr inbounds i32, ptr %1, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !5
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %319

261:                                              ; preds = %253
  %262 = add nsw i32 %259, -1
  %263 = zext nneg i32 %262 to i64
  br i1 %250, label %264, label %267

264:                                              ; preds = %261
  %265 = getelementptr inbounds i32, ptr %0, i64 %263
  %266 = load i32, ptr %265, align 4, !tbaa !5
  br label %275

267:                                              ; preds = %261
  %268 = getelementptr inbounds i8, ptr %0, i64 %263
  %269 = load i8, ptr %268, align 1, !tbaa !9
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = zext i8 %269 to i32
  br label %275

273:                                              ; preds = %267
  %274 = or disjoint i32 %259, -2147483648
  br label %275

275:                                              ; preds = %271, %273, %264
  %276 = phi i32 [ %266, %264 ], [ %272, %271 ], [ %274, %273 ]
  %277 = icmp eq i32 %276, %255
  br i1 %277, label %292, label %278

278:                                              ; preds = %275
  %279 = ptrtoint ptr %256 to i64
  %280 = sub i64 %279, %251
  %281 = lshr exact i64 %280, 2
  %282 = trunc i64 %281 to i32
  %283 = tail call i32 @llvm.smax.i32(i32 %255, i32 0)
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds i32, ptr %3, i64 %284
  store i32 %282, ptr %285, align 4, !tbaa !5
  %286 = tail call i32 @llvm.smax.i32(i32 %276, i32 0)
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds i32, ptr %3, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !5
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %1, i64 %290
  br label %292

292:                                              ; preds = %278, %275
  %293 = phi ptr [ %291, %278 ], [ %256, %275 ]
  %294 = phi i32 [ %276, %278 ], [ %255, %275 ]
  %295 = icmp sgt i32 %276, 0
  br i1 %295, label %296, label %321

296:                                              ; preds = %292
  %297 = icmp eq i32 %262, 0
  br i1 %297, label %314, label %298

298:                                              ; preds = %296
  %299 = zext nneg i32 %259 to i64
  br i1 %250, label %300, label %303

300:                                              ; preds = %298
  %301 = getelementptr i32, ptr %93, i64 %299
  %302 = load i32, ptr %301, align 4, !tbaa !5
  br label %311

303:                                              ; preds = %298
  %304 = getelementptr i8, ptr %92, i64 %299
  %305 = load i8, ptr %304, align 1, !tbaa !9
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %303
  %308 = zext i8 %305 to i32
  br label %311

309:                                              ; preds = %303
  %310 = add nuw i32 %259, 2147483647
  br label %311

311:                                              ; preds = %307, %309, %300
  %312 = phi i32 [ %302, %300 ], [ %308, %307 ], [ %310, %309 ]
  %313 = icmp sgt i32 %312, %294
  br i1 %313, label %314, label %316

314:                                              ; preds = %311, %296
  %315 = sub nsw i32 0, %259
  br label %316

316:                                              ; preds = %311, %314
  %317 = phi i32 [ %315, %314 ], [ %262, %311 ]
  %318 = getelementptr inbounds i32, ptr %293, i64 -1
  store i32 %317, ptr %318, align 4, !tbaa !5
  br label %321

319:                                              ; preds = %253
  %320 = xor i32 %259, -1
  store i32 %320, ptr %258, align 4, !tbaa !5
  br label %321

321:                                              ; preds = %319, %316, %292
  %322 = phi ptr [ %318, %316 ], [ %293, %292 ], [ %256, %319 ]
  %323 = phi i32 [ %294, %316 ], [ %294, %292 ], [ %255, %319 ]
  %324 = icmp ugt i64 %254, 1
  br i1 %324, label %253, label %325, !llvm.loop !32

325:                                              ; preds = %321, %248
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ksa_sa(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = sext i32 %2 to i64
  %10 = getelementptr i8, ptr %0, i64 %9
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp ne i8 %12, 0
  %14 = icmp slt i32 %2, 1
  %15 = or i1 %14, %13
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @llvm.umin.i32(i32 %3, i32 256)
  %18 = tail call i32 @ksa_core(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %2, i32 noundef %17, i32 noundef 1), !range !22
  br label %19

19:                                               ; preds = %4, %8, %16
  %20 = phi i32 [ %18, %16 ], [ -1, %8 ], [ -1, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ksa_bwt(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #6
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %0, null
  %9 = or i1 %8, %7
  br i1 %9, label %95, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i64 %4
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp ne i8 %13, 0
  %15 = icmp slt i32 %1, 1
  %16 = or i1 %15, %14
  br i1 %16, label %95, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @llvm.umin.i32(i32 %2, i32 256)
  %19 = tail call i32 @ksa_core(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %1, i32 noundef %18, i32 noundef 1), !range !22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i64 -1
  %23 = zext i32 %1 to i64
  %24 = and i64 %23, 1
  %25 = icmp eq i32 %1, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = and i64 %23, 4294967294
  br label %61

28:                                               ; preds = %82, %21
  %29 = phi i64 [ 0, %21 ], [ %83, %82 ]
  %30 = icmp eq i64 %24, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds i32, ptr %6, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = sext i32 %33 to i64
  %37 = getelementptr i8, ptr %22, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  store i32 %39, ptr %32, align 4, !tbaa !5
  br label %40

40:                                               ; preds = %31, %35, %28
  %41 = zext nneg i32 %1 to i64
  %42 = icmp ult i32 %1, 8
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = and i64 %23, 4294967288
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %55, %45 ]
  %47 = getelementptr inbounds i32, ptr %6, i64 %46
  %48 = getelementptr inbounds i32, ptr %47, i64 4
  %49 = load <4 x i32>, ptr %47, align 4, !tbaa !5
  %50 = load <4 x i32>, ptr %48, align 4, !tbaa !5
  %51 = trunc <4 x i32> %49 to <4 x i8>
  %52 = trunc <4 x i32> %50 to <4 x i8>
  %53 = getelementptr inbounds i8, ptr %0, i64 %46
  %54 = getelementptr inbounds i8, ptr %53, i64 4
  store <4 x i8> %51, ptr %53, align 1, !tbaa !9
  store <4 x i8> %52, ptr %54, align 1, !tbaa !9
  %55 = add nuw i64 %46, 8
  %56 = icmp eq i64 %55, %44
  br i1 %56, label %57, label %45, !llvm.loop !33

57:                                               ; preds = %45
  %58 = icmp eq i64 %44, %23
  br i1 %58, label %94, label %59

59:                                               ; preds = %40, %57
  %60 = phi i64 [ 0, %40 ], [ %44, %57 ]
  br label %86

61:                                               ; preds = %82, %26
  %62 = phi i64 [ 0, %26 ], [ %83, %82 ]
  %63 = phi i64 [ 0, %26 ], [ %84, %82 ]
  %64 = getelementptr inbounds i32, ptr %6, i64 %62
  %65 = load i32, ptr %64, align 4, !tbaa !5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = sext i32 %65 to i64
  %69 = getelementptr i8, ptr %22, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  store i32 %71, ptr %64, align 4, !tbaa !5
  br label %72

72:                                               ; preds = %61, %67
  %73 = or disjoint i64 %62, 1
  %74 = getelementptr inbounds i32, ptr %6, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = sext i32 %75 to i64
  %79 = getelementptr i8, ptr %22, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = zext i8 %80 to i32
  store i32 %81, ptr %74, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %77, %72
  %83 = add nuw nsw i64 %62, 2
  %84 = add i64 %63, 2
  %85 = icmp eq i64 %84, %27
  br i1 %85, label %28, label %61, !llvm.loop !36

86:                                               ; preds = %59, %86
  %87 = phi i64 [ %92, %86 ], [ %60, %59 ]
  %88 = getelementptr inbounds i32, ptr %6, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 %90, ptr %91, align 1, !tbaa !9
  %92 = add nuw nsw i64 %87, 1
  %93 = icmp eq i64 %92, %41
  br i1 %93, label %94, label %86, !llvm.loop !37

94:                                               ; preds = %86, %57
  tail call void @free(ptr noundef nonnull %6) #7
  br label %95

95:                                               ; preds = %10, %17, %3, %94
  %96 = phi i32 [ 0, %94 ], [ -1, %3 ], [ %19, %17 ], [ -1, %10 ]
  ret i32 %96
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{i32 -2, i32 1}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11, !35, !34}
