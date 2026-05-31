; ModuleID = 'corpus_src/zlib/adler32.c'
source_filename = "corpus_src/zlib/adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i64 %0, 16
  %5 = and i64 %4, 65535
  %6 = and i64 %0, 65535
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %6, %10
  %12 = icmp ugt i64 %11, 65520
  %13 = add nsw i64 %11, -65521
  %14 = select i1 %12, i64 %13, i64 %11
  %15 = add nuw nsw i64 %14, %5
  %16 = icmp ugt i64 %15, 65520
  %17 = shl nsw i64 %15, 16
  %18 = add nsw i64 %17, -4293984256
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = or i64 %19, %14
  br label %352

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %352, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %2, 16
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %2, 5551
  br i1 %26, label %90, label %192

27:                                               ; preds = %23
  %28 = icmp eq i64 %2, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %27
  %30 = and i64 %2, 3
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %43, %32 ], [ %5, %29 ]
  %34 = phi i64 [ %38, %32 ], [ %2, %29 ]
  %35 = phi ptr [ %39, %32 ], [ %1, %29 ]
  %36 = phi i64 [ %42, %32 ], [ %6, %29 ]
  %37 = phi i64 [ %44, %32 ], [ 0, %29 ]
  %38 = add i64 %34, -1
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  %40 = load i8, ptr %35, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = add i64 %36, %41
  %43 = add i64 %42, %33
  %44 = add i64 %37, 1
  %45 = icmp eq i64 %44, %30
  br i1 %45, label %46, label %32, !llvm.loop !8

46:                                               ; preds = %32, %29
  %47 = phi i64 [ undef, %29 ], [ %42, %32 ]
  %48 = phi i64 [ undef, %29 ], [ %43, %32 ]
  %49 = phi i64 [ %5, %29 ], [ %43, %32 ]
  %50 = phi i64 [ %2, %29 ], [ %38, %32 ]
  %51 = phi ptr [ %1, %29 ], [ %39, %32 ]
  %52 = phi i64 [ %6, %29 ], [ %42, %32 ]
  %53 = icmp ult i64 %2, 4
  br i1 %53, label %81, label %54

54:                                               ; preds = %46, %54
  %55 = phi i64 [ %79, %54 ], [ %49, %46 ]
  %56 = phi i64 [ %74, %54 ], [ %50, %46 ]
  %57 = phi ptr [ %75, %54 ], [ %51, %46 ]
  %58 = phi i64 [ %78, %54 ], [ %52, %46 ]
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  %60 = load i8, ptr %57, align 1, !tbaa !5
  %61 = zext i8 %60 to i64
  %62 = add i64 %58, %61
  %63 = add i64 %62, %55
  %64 = getelementptr inbounds i8, ptr %57, i64 2
  %65 = load i8, ptr %59, align 1, !tbaa !5
  %66 = zext i8 %65 to i64
  %67 = add i64 %62, %66
  %68 = add i64 %67, %63
  %69 = getelementptr inbounds i8, ptr %57, i64 3
  %70 = load i8, ptr %64, align 1, !tbaa !5
  %71 = zext i8 %70 to i64
  %72 = add i64 %67, %71
  %73 = add i64 %72, %68
  %74 = add i64 %56, -4
  %75 = getelementptr inbounds i8, ptr %57, i64 4
  %76 = load i8, ptr %69, align 1, !tbaa !5
  %77 = zext i8 %76 to i64
  %78 = add i64 %72, %77
  %79 = add i64 %78, %73
  %80 = icmp eq i64 %74, 0
  br i1 %80, label %81, label %54, !llvm.loop !10

81:                                               ; preds = %46, %54, %27
  %82 = phi i64 [ %6, %27 ], [ %47, %46 ], [ %78, %54 ]
  %83 = phi i64 [ %5, %27 ], [ %48, %46 ], [ %79, %54 ]
  %84 = icmp ugt i64 %82, 65520
  %85 = add i64 %82, -65521
  %86 = select i1 %84, i64 %85, i64 %82
  %87 = urem i64 %83, 65521
  %88 = shl nuw nsw i64 %87, 16
  %89 = or i64 %88, %86
  br label %352

90:                                               ; preds = %25, %183
  %91 = phi i64 [ %186, %183 ], [ %5, %25 ]
  %92 = phi i64 [ %95, %183 ], [ %2, %25 ]
  %93 = phi ptr [ %184, %183 ], [ %1, %25 ]
  %94 = phi i64 [ %185, %183 ], [ %6, %25 ]
  %95 = add i64 %92, -5552
  br label %96

96:                                               ; preds = %96, %90
  %97 = phi i64 [ %94, %90 ], [ %178, %96 ]
  %98 = phi ptr [ %93, %90 ], [ %180, %96 ]
  %99 = phi i64 [ %91, %90 ], [ %179, %96 ]
  %100 = phi i32 [ 347, %90 ], [ %181, %96 ]
  %101 = load i8, ptr %98, align 1, !tbaa !5
  %102 = zext i8 %101 to i64
  %103 = add i64 %97, %102
  %104 = add i64 %103, %99
  %105 = getelementptr inbounds i8, ptr %98, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = zext i8 %106 to i64
  %108 = add i64 %103, %107
  %109 = add i64 %104, %108
  %110 = getelementptr inbounds i8, ptr %98, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !5
  %112 = zext i8 %111 to i64
  %113 = add i64 %108, %112
  %114 = add i64 %109, %113
  %115 = getelementptr inbounds i8, ptr %98, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !5
  %117 = zext i8 %116 to i64
  %118 = add i64 %113, %117
  %119 = add i64 %114, %118
  %120 = getelementptr inbounds i8, ptr %98, i64 4
  %121 = load i8, ptr %120, align 1, !tbaa !5
  %122 = zext i8 %121 to i64
  %123 = add i64 %118, %122
  %124 = add i64 %119, %123
  %125 = getelementptr inbounds i8, ptr %98, i64 5
  %126 = load i8, ptr %125, align 1, !tbaa !5
  %127 = zext i8 %126 to i64
  %128 = add i64 %123, %127
  %129 = add i64 %124, %128
  %130 = getelementptr inbounds i8, ptr %98, i64 6
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = zext i8 %131 to i64
  %133 = add i64 %128, %132
  %134 = add i64 %129, %133
  %135 = getelementptr inbounds i8, ptr %98, i64 7
  %136 = load i8, ptr %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = add i64 %133, %137
  %139 = add i64 %134, %138
  %140 = getelementptr inbounds i8, ptr %98, i64 8
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = zext i8 %141 to i64
  %143 = add i64 %138, %142
  %144 = add i64 %139, %143
  %145 = getelementptr inbounds i8, ptr %98, i64 9
  %146 = load i8, ptr %145, align 1, !tbaa !5
  %147 = zext i8 %146 to i64
  %148 = add i64 %143, %147
  %149 = add i64 %144, %148
  %150 = getelementptr inbounds i8, ptr %98, i64 10
  %151 = load i8, ptr %150, align 1, !tbaa !5
  %152 = zext i8 %151 to i64
  %153 = add i64 %148, %152
  %154 = add i64 %149, %153
  %155 = getelementptr inbounds i8, ptr %98, i64 11
  %156 = load i8, ptr %155, align 1, !tbaa !5
  %157 = zext i8 %156 to i64
  %158 = add i64 %153, %157
  %159 = add i64 %154, %158
  %160 = getelementptr inbounds i8, ptr %98, i64 12
  %161 = load i8, ptr %160, align 1, !tbaa !5
  %162 = zext i8 %161 to i64
  %163 = add i64 %158, %162
  %164 = add i64 %159, %163
  %165 = getelementptr inbounds i8, ptr %98, i64 13
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = zext i8 %166 to i64
  %168 = add i64 %163, %167
  %169 = add i64 %164, %168
  %170 = getelementptr inbounds i8, ptr %98, i64 14
  %171 = load i8, ptr %170, align 1, !tbaa !5
  %172 = zext i8 %171 to i64
  %173 = add i64 %168, %172
  %174 = add i64 %169, %173
  %175 = getelementptr inbounds i8, ptr %98, i64 15
  %176 = load i8, ptr %175, align 1, !tbaa !5
  %177 = zext i8 %176 to i64
  %178 = add i64 %173, %177
  %179 = add i64 %174, %178
  %180 = getelementptr inbounds i8, ptr %98, i64 16
  %181 = add nsw i32 %100, -1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %96, !llvm.loop !12

183:                                              ; preds = %96
  %184 = getelementptr i8, ptr %93, i64 5552
  %185 = urem i64 %178, 65521
  %186 = urem i64 %179, 65521
  %187 = icmp ugt i64 %95, 5551
  br i1 %187, label %90, label %188, !llvm.loop !13

188:                                              ; preds = %183
  %189 = icmp eq i64 %95, 0
  br i1 %189, label %347, label %190

190:                                              ; preds = %188
  %191 = icmp ugt i64 %95, 15
  br i1 %191, label %192, label %199

192:                                              ; preds = %25, %190
  %193 = phi i64 [ %5, %25 ], [ %186, %190 ]
  %194 = phi i64 [ %2, %25 ], [ %95, %190 ]
  %195 = phi ptr [ %1, %25 ], [ %184, %190 ]
  %196 = phi i64 [ %6, %25 ], [ %185, %190 ]
  br label %228

197:                                              ; preds = %228
  %198 = icmp eq i64 %233, 0
  br i1 %198, label %342, label %199

199:                                              ; preds = %190, %197
  %200 = phi i64 [ %186, %190 ], [ %312, %197 ]
  %201 = phi i64 [ %95, %190 ], [ %233, %197 ]
  %202 = phi ptr [ %184, %190 ], [ %313, %197 ]
  %203 = phi i64 [ %185, %190 ], [ %311, %197 ]
  %204 = and i64 %201, 3
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %199, %206
  %207 = phi i64 [ %217, %206 ], [ %200, %199 ]
  %208 = phi i64 [ %212, %206 ], [ %201, %199 ]
  %209 = phi ptr [ %213, %206 ], [ %202, %199 ]
  %210 = phi i64 [ %216, %206 ], [ %203, %199 ]
  %211 = phi i64 [ %218, %206 ], [ 0, %199 ]
  %212 = add i64 %208, -1
  %213 = getelementptr inbounds i8, ptr %209, i64 1
  %214 = load i8, ptr %209, align 1, !tbaa !5
  %215 = zext i8 %214 to i64
  %216 = add i64 %210, %215
  %217 = add i64 %216, %207
  %218 = add i64 %211, 1
  %219 = icmp eq i64 %218, %204
  br i1 %219, label %220, label %206, !llvm.loop !14

220:                                              ; preds = %206, %199
  %221 = phi i64 [ undef, %199 ], [ %216, %206 ]
  %222 = phi i64 [ undef, %199 ], [ %217, %206 ]
  %223 = phi i64 [ %200, %199 ], [ %217, %206 ]
  %224 = phi i64 [ %201, %199 ], [ %212, %206 ]
  %225 = phi ptr [ %202, %199 ], [ %213, %206 ]
  %226 = phi i64 [ %203, %199 ], [ %216, %206 ]
  %227 = icmp ult i64 %201, 4
  br i1 %227, label %342, label %315

228:                                              ; preds = %192, %228
  %229 = phi i64 [ %312, %228 ], [ %193, %192 ]
  %230 = phi i64 [ %233, %228 ], [ %194, %192 ]
  %231 = phi ptr [ %313, %228 ], [ %195, %192 ]
  %232 = phi i64 [ %311, %228 ], [ %196, %192 ]
  %233 = add nsw i64 %230, -16
  %234 = load i8, ptr %231, align 1, !tbaa !5
  %235 = zext i8 %234 to i64
  %236 = add i64 %232, %235
  %237 = add i64 %236, %229
  %238 = getelementptr inbounds i8, ptr %231, i64 1
  %239 = load i8, ptr %238, align 1, !tbaa !5
  %240 = zext i8 %239 to i64
  %241 = add i64 %236, %240
  %242 = add i64 %237, %241
  %243 = getelementptr inbounds i8, ptr %231, i64 2
  %244 = load i8, ptr %243, align 1, !tbaa !5
  %245 = zext i8 %244 to i64
  %246 = add i64 %241, %245
  %247 = add i64 %242, %246
  %248 = getelementptr inbounds i8, ptr %231, i64 3
  %249 = load i8, ptr %248, align 1, !tbaa !5
  %250 = zext i8 %249 to i64
  %251 = add i64 %246, %250
  %252 = add i64 %247, %251
  %253 = getelementptr inbounds i8, ptr %231, i64 4
  %254 = load i8, ptr %253, align 1, !tbaa !5
  %255 = zext i8 %254 to i64
  %256 = add i64 %251, %255
  %257 = add i64 %252, %256
  %258 = getelementptr inbounds i8, ptr %231, i64 5
  %259 = load i8, ptr %258, align 1, !tbaa !5
  %260 = zext i8 %259 to i64
  %261 = add i64 %256, %260
  %262 = add i64 %257, %261
  %263 = getelementptr inbounds i8, ptr %231, i64 6
  %264 = load i8, ptr %263, align 1, !tbaa !5
  %265 = zext i8 %264 to i64
  %266 = add i64 %261, %265
  %267 = add i64 %262, %266
  %268 = getelementptr inbounds i8, ptr %231, i64 7
  %269 = load i8, ptr %268, align 1, !tbaa !5
  %270 = zext i8 %269 to i64
  %271 = add i64 %266, %270
  %272 = add i64 %267, %271
  %273 = getelementptr inbounds i8, ptr %231, i64 8
  %274 = load i8, ptr %273, align 1, !tbaa !5
  %275 = zext i8 %274 to i64
  %276 = add i64 %271, %275
  %277 = add i64 %272, %276
  %278 = getelementptr inbounds i8, ptr %231, i64 9
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = zext i8 %279 to i64
  %281 = add i64 %276, %280
  %282 = add i64 %277, %281
  %283 = getelementptr inbounds i8, ptr %231, i64 10
  %284 = load i8, ptr %283, align 1, !tbaa !5
  %285 = zext i8 %284 to i64
  %286 = add i64 %281, %285
  %287 = add i64 %282, %286
  %288 = getelementptr inbounds i8, ptr %231, i64 11
  %289 = load i8, ptr %288, align 1, !tbaa !5
  %290 = zext i8 %289 to i64
  %291 = add i64 %286, %290
  %292 = add i64 %287, %291
  %293 = getelementptr inbounds i8, ptr %231, i64 12
  %294 = load i8, ptr %293, align 1, !tbaa !5
  %295 = zext i8 %294 to i64
  %296 = add i64 %291, %295
  %297 = add i64 %292, %296
  %298 = getelementptr inbounds i8, ptr %231, i64 13
  %299 = load i8, ptr %298, align 1, !tbaa !5
  %300 = zext i8 %299 to i64
  %301 = add i64 %296, %300
  %302 = add i64 %297, %301
  %303 = getelementptr inbounds i8, ptr %231, i64 14
  %304 = load i8, ptr %303, align 1, !tbaa !5
  %305 = zext i8 %304 to i64
  %306 = add i64 %301, %305
  %307 = add i64 %302, %306
  %308 = getelementptr inbounds i8, ptr %231, i64 15
  %309 = load i8, ptr %308, align 1, !tbaa !5
  %310 = zext i8 %309 to i64
  %311 = add i64 %306, %310
  %312 = add i64 %307, %311
  %313 = getelementptr inbounds i8, ptr %231, i64 16
  %314 = icmp ugt i64 %233, 15
  br i1 %314, label %228, label %197, !llvm.loop !15

315:                                              ; preds = %220, %315
  %316 = phi i64 [ %340, %315 ], [ %223, %220 ]
  %317 = phi i64 [ %335, %315 ], [ %224, %220 ]
  %318 = phi ptr [ %336, %315 ], [ %225, %220 ]
  %319 = phi i64 [ %339, %315 ], [ %226, %220 ]
  %320 = getelementptr inbounds i8, ptr %318, i64 1
  %321 = load i8, ptr %318, align 1, !tbaa !5
  %322 = zext i8 %321 to i64
  %323 = add i64 %319, %322
  %324 = add i64 %323, %316
  %325 = getelementptr inbounds i8, ptr %318, i64 2
  %326 = load i8, ptr %320, align 1, !tbaa !5
  %327 = zext i8 %326 to i64
  %328 = add i64 %323, %327
  %329 = add i64 %328, %324
  %330 = getelementptr inbounds i8, ptr %318, i64 3
  %331 = load i8, ptr %325, align 1, !tbaa !5
  %332 = zext i8 %331 to i64
  %333 = add i64 %328, %332
  %334 = add i64 %333, %329
  %335 = add i64 %317, -4
  %336 = getelementptr inbounds i8, ptr %318, i64 4
  %337 = load i8, ptr %330, align 1, !tbaa !5
  %338 = zext i8 %337 to i64
  %339 = add i64 %333, %338
  %340 = add i64 %339, %334
  %341 = icmp eq i64 %335, 0
  br i1 %341, label %342, label %315, !llvm.loop !16

342:                                              ; preds = %220, %315, %197
  %343 = phi i64 [ %311, %197 ], [ %221, %220 ], [ %339, %315 ]
  %344 = phi i64 [ %312, %197 ], [ %222, %220 ], [ %340, %315 ]
  %345 = urem i64 %343, 65521
  %346 = urem i64 %344, 65521
  br label %347

347:                                              ; preds = %342, %188
  %348 = phi i64 [ %345, %342 ], [ %185, %188 ]
  %349 = phi i64 [ %346, %342 ], [ %186, %188 ]
  %350 = shl nuw nsw i64 %349, 16
  %351 = or disjoint i64 %350, %348
  br label %352

352:                                              ; preds = %21, %347, %81, %8
  %353 = phi i64 [ %20, %8 ], [ %89, %81 ], [ %351, %347 ], [ 1, %21 ]
  ret i64 %353
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = tail call i64 @adler32_z(i64 noundef %0, ptr noundef %1, i64 noundef %4)
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp slt i64 %2, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = urem i64 %2, 65521
  %7 = and i64 %0, 65535
  %8 = mul nuw nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = urem i32 %9, 65521
  %11 = zext nneg i32 %10 to i64
  %12 = and i64 %1, 65535
  %13 = add nuw nsw i64 %7, 65520
  %14 = add nuw nsw i64 %13, %12
  %15 = lshr i64 %0, 16
  %16 = and i64 %15, 65535
  %17 = lshr i64 %1, 16
  %18 = and i64 %17, 65535
  %19 = add nuw nsw i64 %16, 65521
  %20 = add nuw nsw i64 %19, %18
  %21 = sub nuw nsw i64 %20, %6
  %22 = add nuw nsw i64 %21, %11
  %23 = icmp ugt i64 %14, 65520
  %24 = add nsw i64 %14, -65521
  %25 = select i1 %23, i64 %24, i64 65520
  %26 = icmp ugt i64 %25, 65520
  %27 = add nsw i64 %25, -65521
  %28 = select i1 %26, i64 %27, i64 %25
  %29 = icmp ugt i64 %22, 131041
  %30 = add nsw i64 %22, -131042
  %31 = select i1 %29, i64 %30, i64 %22
  %32 = icmp ugt i64 %31, 65520
  %33 = shl nsw i64 %31, 16
  %34 = add i64 %33, -4293984256
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = or i64 %35, %28
  br label %37

37:                                               ; preds = %3, %5
  %38 = phi i64 [ %36, %5 ], [ 4294967295, %3 ]
  ret i64 %38
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
