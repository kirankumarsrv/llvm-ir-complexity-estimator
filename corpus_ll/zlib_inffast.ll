; ModuleID = 'corpus_src/zlib/inffast.c'
source_filename = "corpus_src/zlib/inffast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @inflate_fast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = add i32 %7, -5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = ptrtoint ptr %12 to i64
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = sub i32 %1, %15
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %12, i64 %18
  %20 = add i32 %15, -257
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 11
  %24 = load i32, ptr %23, align 4, !tbaa !16
  %25 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 13
  %28 = load i32, ptr %27, align 4, !tbaa !19
  %29 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  %31 = ptrtoint ptr %30 to i64
  %32 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 15
  %33 = load i64, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 16
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 21
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 22
  %41 = load i32, ptr %40, align 8, !tbaa !25
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 23
  %45 = load i32, ptr %44, align 4, !tbaa !26
  %46 = shl nsw i32 -1, %45
  %47 = xor i32 %46, -1
  %48 = zext nneg i32 %43 to i64
  %49 = zext nneg i32 %47 to i64
  %50 = ptrtoint ptr %19 to i64
  %51 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 32
  %52 = icmp eq i32 %28, 0
  %53 = add i32 %28, %24
  %54 = trunc i64 %13 to i32
  %55 = add i32 %15, %54
  %56 = xor i32 %1, -1
  %57 = add i32 %55, %56
  %58 = zext i32 %28 to i64
  %59 = trunc i64 %13 to i32
  %60 = add i32 %15, %59
  %61 = xor i32 %28, -1
  %62 = add i32 %60, %61
  %63 = sub i32 %62, %1
  %64 = trunc i64 %13 to i32
  %65 = add i32 %15, %64
  %66 = xor i32 %1, -1
  %67 = add i32 %65, %66
  %68 = icmp ult i32 %28, 32
  %69 = and i64 %58, 4294967264
  %70 = trunc i64 %69 to i32
  %71 = sub i32 %28, %70
  %72 = getelementptr i8, ptr %30, i64 %69
  %73 = icmp eq i64 %69, %58
  br label %74

74:                                               ; preds = %750, %2
  %75 = phi i32 [ %35, %2 ], [ %751, %750 ]
  %76 = phi i64 [ %33, %2 ], [ %752, %750 ]
  %77 = phi ptr [ %12, %2 ], [ %753, %750 ]
  %78 = phi ptr [ %5, %2 ], [ %754, %750 ]
  %79 = icmp ult i32 %75, 15
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, ptr %78, i64 1
  %82 = load i8, ptr %78, align 1, !tbaa !27
  %83 = zext i8 %82 to i64
  %84 = zext nneg i32 %75 to i64
  %85 = shl nuw nsw i64 %83, %84
  %86 = add i64 %85, %76
  %87 = add nuw nsw i32 %75, 8
  %88 = getelementptr inbounds i8, ptr %78, i64 2
  %89 = load i8, ptr %81, align 1, !tbaa !27
  %90 = zext i8 %89 to i64
  %91 = zext nneg i32 %87 to i64
  %92 = shl nuw nsw i64 %90, %91
  %93 = add i64 %86, %92
  %94 = or disjoint i32 %75, 16
  br label %95

95:                                               ; preds = %80, %74
  %96 = phi i32 [ %94, %80 ], [ %75, %74 ]
  %97 = phi i64 [ %93, %80 ], [ %76, %74 ]
  %98 = phi ptr [ %88, %80 ], [ %78, %74 ]
  %99 = and i64 %97, %48
  %100 = getelementptr inbounds %struct.code, ptr %37, i64 %99
  %101 = getelementptr inbounds %struct.code, ptr %37, i64 %99, i32 1
  %102 = load i8, ptr %101, align 1, !tbaa !28
  %103 = zext i8 %102 to i32
  %104 = zext nneg i8 %102 to i64
  %105 = lshr i64 %97, %104
  %106 = sub i32 %96, %103
  %107 = load i8, ptr %100, align 2, !tbaa !31
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %729, %95
  %110 = phi ptr [ %100, %95 ], [ %738, %729 ]
  %111 = phi i64 [ %105, %95 ], [ %743, %729 ]
  %112 = phi i32 [ %106, %95 ], [ %744, %729 ]
  %113 = getelementptr inbounds %struct.code, ptr %110, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !32
  %115 = trunc i16 %114 to i8
  %116 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %115, ptr %77, align 1, !tbaa !27
  br label %750

117:                                              ; preds = %95, %729
  %118 = phi i8 [ %745, %729 ], [ %107, %95 ]
  %119 = phi i32 [ %744, %729 ], [ %106, %95 ]
  %120 = phi i64 [ %743, %729 ], [ %105, %95 ]
  %121 = phi ptr [ %738, %729 ], [ %100, %95 ]
  %122 = zext i8 %118 to i32
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %726, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.code, ptr %121, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !32
  %128 = zext i16 %127 to i32
  %129 = and i32 %122, 15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %125
  %132 = icmp ult i32 %119, %129
  br i1 %132, label %133, label %141

133:                                              ; preds = %131
  %134 = getelementptr inbounds i8, ptr %98, i64 1
  %135 = load i8, ptr %98, align 1, !tbaa !27
  %136 = zext i8 %135 to i64
  %137 = zext nneg i32 %119 to i64
  %138 = shl nuw nsw i64 %136, %137
  %139 = add i64 %138, %120
  %140 = add nuw nsw i32 %119, 8
  br label %141

141:                                              ; preds = %133, %131
  %142 = phi i32 [ %140, %133 ], [ %119, %131 ]
  %143 = phi i64 [ %139, %133 ], [ %120, %131 ]
  %144 = phi ptr [ %134, %133 ], [ %98, %131 ]
  %145 = trunc i64 %143 to i32
  %146 = shl nsw i32 -1, %129
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = add nuw nsw i32 %148, %128
  %150 = zext nneg i32 %129 to i64
  %151 = lshr i64 %143, %150
  %152 = sub i32 %142, %129
  br label %153

153:                                              ; preds = %141, %125
  %154 = phi i32 [ %152, %141 ], [ %119, %125 ]
  %155 = phi i64 [ %151, %141 ], [ %120, %125 ]
  %156 = phi ptr [ %144, %141 ], [ %98, %125 ]
  %157 = phi i32 [ %149, %141 ], [ %128, %125 ]
  %158 = icmp ult i32 %154, 15
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = getelementptr inbounds i8, ptr %156, i64 1
  %161 = load i8, ptr %156, align 1, !tbaa !27
  %162 = zext i8 %161 to i64
  %163 = zext nneg i32 %154 to i64
  %164 = shl nuw nsw i64 %162, %163
  %165 = add i64 %164, %155
  %166 = add nuw nsw i32 %154, 8
  %167 = getelementptr inbounds i8, ptr %156, i64 2
  %168 = load i8, ptr %160, align 1, !tbaa !27
  %169 = zext i8 %168 to i64
  %170 = zext nneg i32 %166 to i64
  %171 = shl nuw nsw i64 %169, %170
  %172 = add i64 %165, %171
  %173 = or disjoint i32 %154, 16
  br label %174

174:                                              ; preds = %159, %153
  %175 = phi i32 [ %173, %159 ], [ %154, %153 ]
  %176 = phi i64 [ %172, %159 ], [ %155, %153 ]
  %177 = phi ptr [ %167, %159 ], [ %156, %153 ]
  %178 = and i64 %176, %49
  %179 = getelementptr inbounds %struct.code, ptr %39, i64 %178
  %180 = getelementptr inbounds %struct.code, ptr %39, i64 %178, i32 1
  %181 = load i8, ptr %180, align 1, !tbaa !28
  %182 = zext i8 %181 to i32
  %183 = zext nneg i8 %181 to i64
  %184 = lshr i64 %176, %183
  %185 = sub i32 %175, %182
  %186 = load i8, ptr %179, align 2, !tbaa !31
  %187 = zext i8 %186 to i32
  %188 = and i32 %187, 16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %699, label %190

190:                                              ; preds = %706, %174
  %191 = phi ptr [ %179, %174 ], [ %715, %706 ]
  %192 = phi i64 [ %184, %174 ], [ %720, %706 ]
  %193 = phi i32 [ %185, %174 ], [ %721, %706 ]
  %194 = phi i32 [ %187, %174 ], [ %723, %706 ]
  %195 = getelementptr inbounds %struct.code, ptr %191, i64 0, i32 2
  %196 = load i16, ptr %195, align 2, !tbaa !32
  %197 = zext i16 %196 to i32
  %198 = and i32 %194, 15
  %199 = icmp ult i32 %193, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %190
  %201 = getelementptr inbounds i8, ptr %177, i64 1
  %202 = load i8, ptr %177, align 1, !tbaa !27
  %203 = zext i8 %202 to i64
  %204 = zext nneg i32 %193 to i64
  %205 = shl nuw nsw i64 %203, %204
  %206 = add i64 %205, %192
  %207 = add nuw nsw i32 %193, 8
  %208 = icmp ult i32 %207, %198
  br i1 %208, label %209, label %217

209:                                              ; preds = %200
  %210 = getelementptr inbounds i8, ptr %177, i64 2
  %211 = load i8, ptr %201, align 1, !tbaa !27
  %212 = zext i8 %211 to i64
  %213 = zext nneg i32 %207 to i64
  %214 = shl nuw nsw i64 %212, %213
  %215 = add i64 %214, %206
  %216 = add nuw nsw i32 %193, 16
  br label %217

217:                                              ; preds = %200, %209, %190
  %218 = phi i32 [ %216, %209 ], [ %207, %200 ], [ %193, %190 ]
  %219 = phi i64 [ %215, %209 ], [ %206, %200 ], [ %192, %190 ]
  %220 = phi ptr [ %210, %209 ], [ %201, %200 ], [ %177, %190 ]
  %221 = trunc i64 %219 to i32
  %222 = shl nsw i32 -1, %198
  %223 = xor i32 %222, -1
  %224 = and i32 %221, %223
  %225 = add nuw nsw i32 %224, %197
  %226 = zext nneg i32 %198 to i64
  %227 = lshr i64 %219, %226
  %228 = sub i32 %218, %198
  %229 = ptrtoint ptr %77 to i64
  %230 = sub i64 %229, %50
  %231 = trunc i64 %230 to i32
  %232 = icmp ugt i32 %225, %231
  br i1 %232, label %233, label %670

233:                                              ; preds = %217
  %234 = sub nsw i32 %225, %231
  %235 = icmp ugt i32 %234, %26
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, ptr %51, align 8, !tbaa !33
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %758

239:                                              ; preds = %236, %233
  br i1 %52, label %240, label %335

240:                                              ; preds = %239
  %241 = sub i32 %24, %234
  %242 = zext i32 %241 to i64
  %243 = getelementptr i8, ptr %30, i64 %242
  %244 = icmp ult i32 %234, %157
  br i1 %244, label %245, label %604

245:                                              ; preds = %240
  %246 = add i32 %57, %224
  %247 = add i32 %246, %197
  %248 = trunc i64 %229 to i32
  %249 = sub i32 %247, %248
  %250 = zext i32 %249 to i64
  %251 = add nuw nsw i64 %250, 1
  %252 = icmp ult i32 %249, 31
  br i1 %252, label %275, label %253

253:                                              ; preds = %245
  %254 = add i64 %31, %242
  %255 = sub i64 %229, %254
  %256 = icmp ult i64 %255, 32
  br i1 %256, label %275, label %257

257:                                              ; preds = %253
  %258 = and i64 %251, 8589934560
  %259 = getelementptr i8, ptr %77, i64 %258
  %260 = trunc i64 %258 to i32
  %261 = sub i32 %234, %260
  %262 = getelementptr i8, ptr %243, i64 %258
  br label %263

263:                                              ; preds = %263, %257
  %264 = phi i64 [ 0, %257 ], [ %271, %263 ]
  %265 = getelementptr i8, ptr %77, i64 %264
  %266 = getelementptr i8, ptr %243, i64 %264
  %267 = getelementptr i8, ptr %266, i64 16
  %268 = load <16 x i8>, ptr %266, align 1, !tbaa !27
  %269 = load <16 x i8>, ptr %267, align 1, !tbaa !27
  %270 = getelementptr i8, ptr %265, i64 16
  store <16 x i8> %268, ptr %265, align 1, !tbaa !27
  store <16 x i8> %269, ptr %270, align 1, !tbaa !27
  %271 = add nuw i64 %264, 32
  %272 = icmp eq i64 %271, %258
  br i1 %272, label %273, label %263, !llvm.loop !34

273:                                              ; preds = %263
  %274 = icmp eq i64 %251, %258
  br i1 %274, label %329, label %275

275:                                              ; preds = %253, %245, %273
  %276 = phi ptr [ %77, %253 ], [ %77, %245 ], [ %259, %273 ]
  %277 = phi i32 [ %234, %253 ], [ %234, %245 ], [ %261, %273 ]
  %278 = phi ptr [ %243, %253 ], [ %243, %245 ], [ %262, %273 ]
  %279 = add i32 %277, -1
  %280 = and i32 %277, 7
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %293, label %282

282:                                              ; preds = %275, %282
  %283 = phi ptr [ %289, %282 ], [ %276, %275 ]
  %284 = phi i32 [ %290, %282 ], [ %277, %275 ]
  %285 = phi ptr [ %287, %282 ], [ %278, %275 ]
  %286 = phi i32 [ %291, %282 ], [ 0, %275 ]
  %287 = getelementptr inbounds i8, ptr %285, i64 1
  %288 = load i8, ptr %285, align 1, !tbaa !27
  %289 = getelementptr inbounds i8, ptr %283, i64 1
  store i8 %288, ptr %283, align 1, !tbaa !27
  %290 = add i32 %284, -1
  %291 = add i32 %286, 1
  %292 = icmp eq i32 %291, %280
  br i1 %292, label %293, label %282, !llvm.loop !38

293:                                              ; preds = %282, %275
  %294 = phi ptr [ undef, %275 ], [ %289, %282 ]
  %295 = phi ptr [ %276, %275 ], [ %289, %282 ]
  %296 = phi i32 [ %277, %275 ], [ %290, %282 ]
  %297 = phi ptr [ %278, %275 ], [ %287, %282 ]
  %298 = icmp ult i32 %279, 7
  br i1 %298, label %329, label %299

299:                                              ; preds = %293, %299
  %300 = phi ptr [ %326, %299 ], [ %295, %293 ]
  %301 = phi i32 [ %327, %299 ], [ %296, %293 ]
  %302 = phi ptr [ %324, %299 ], [ %297, %293 ]
  %303 = getelementptr inbounds i8, ptr %302, i64 1
  %304 = load i8, ptr %302, align 1, !tbaa !27
  %305 = getelementptr inbounds i8, ptr %300, i64 1
  store i8 %304, ptr %300, align 1, !tbaa !27
  %306 = getelementptr inbounds i8, ptr %302, i64 2
  %307 = load i8, ptr %303, align 1, !tbaa !27
  %308 = getelementptr inbounds i8, ptr %300, i64 2
  store i8 %307, ptr %305, align 1, !tbaa !27
  %309 = getelementptr inbounds i8, ptr %302, i64 3
  %310 = load i8, ptr %306, align 1, !tbaa !27
  %311 = getelementptr inbounds i8, ptr %300, i64 3
  store i8 %310, ptr %308, align 1, !tbaa !27
  %312 = getelementptr inbounds i8, ptr %302, i64 4
  %313 = load i8, ptr %309, align 1, !tbaa !27
  %314 = getelementptr inbounds i8, ptr %300, i64 4
  store i8 %313, ptr %311, align 1, !tbaa !27
  %315 = getelementptr inbounds i8, ptr %302, i64 5
  %316 = load i8, ptr %312, align 1, !tbaa !27
  %317 = getelementptr inbounds i8, ptr %300, i64 5
  store i8 %316, ptr %314, align 1, !tbaa !27
  %318 = getelementptr inbounds i8, ptr %302, i64 6
  %319 = load i8, ptr %315, align 1, !tbaa !27
  %320 = getelementptr inbounds i8, ptr %300, i64 6
  store i8 %319, ptr %317, align 1, !tbaa !27
  %321 = getelementptr inbounds i8, ptr %302, i64 7
  %322 = load i8, ptr %318, align 1, !tbaa !27
  %323 = getelementptr inbounds i8, ptr %300, i64 7
  store i8 %322, ptr %320, align 1, !tbaa !27
  %324 = getelementptr inbounds i8, ptr %302, i64 8
  %325 = load i8, ptr %321, align 1, !tbaa !27
  %326 = getelementptr inbounds i8, ptr %300, i64 8
  store i8 %325, ptr %323, align 1, !tbaa !27
  %327 = add i32 %301, -8
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %299, !llvm.loop !40

329:                                              ; preds = %293, %299, %273
  %330 = phi ptr [ %259, %273 ], [ %294, %293 ], [ %326, %299 ]
  %331 = sub nsw i32 %157, %234
  %332 = zext nneg i32 %225 to i64
  %333 = sub nsw i64 0, %332
  %334 = getelementptr inbounds i8, ptr %330, i64 %333
  br label %604

335:                                              ; preds = %239
  %336 = icmp ult i32 %28, %234
  br i1 %336, label %337, label %509

337:                                              ; preds = %335
  %338 = sub i32 %53, %234
  %339 = zext i32 %338 to i64
  %340 = getelementptr i8, ptr %30, i64 %339
  %341 = sub i32 %234, %28
  %342 = icmp ult i32 %341, %157
  br i1 %342, label %343, label %604

343:                                              ; preds = %337
  %344 = add i32 %63, %224
  %345 = add i32 %344, %197
  %346 = trunc i64 %229 to i32
  %347 = sub i32 %345, %346
  %348 = zext i32 %347 to i64
  %349 = add nuw nsw i64 %348, 1
  %350 = icmp ult i32 %347, 31
  br i1 %350, label %374, label %351

351:                                              ; preds = %343
  %352 = add i64 %31, %339
  %353 = sub i64 %229, %352
  %354 = icmp ult i64 %353, 32
  br i1 %354, label %374, label %355

355:                                              ; preds = %351
  %356 = and i64 %349, 8589934560
  %357 = getelementptr i8, ptr %77, i64 %356
  %358 = trunc i64 %356 to i32
  %359 = sub i32 %341, %358
  %360 = getelementptr i8, ptr %340, i64 %356
  br label %361

361:                                              ; preds = %361, %355
  %362 = phi i64 [ 0, %355 ], [ %369, %361 ]
  %363 = getelementptr i8, ptr %77, i64 %362
  %364 = getelementptr i8, ptr %340, i64 %362
  %365 = getelementptr i8, ptr %364, i64 16
  %366 = load <16 x i8>, ptr %364, align 1, !tbaa !27
  %367 = load <16 x i8>, ptr %365, align 1, !tbaa !27
  %368 = getelementptr i8, ptr %363, i64 16
  store <16 x i8> %366, ptr %363, align 1, !tbaa !27
  store <16 x i8> %367, ptr %368, align 1, !tbaa !27
  %369 = add nuw i64 %362, 32
  %370 = icmp eq i64 %369, %356
  br i1 %370, label %371, label %361, !llvm.loop !41

371:                                              ; preds = %361
  %372 = icmp eq i64 %349, %356
  %373 = add nsw i64 %356, -1
  br i1 %372, label %425, label %374

374:                                              ; preds = %351, %343, %371
  %375 = phi i64 [ 0, %351 ], [ 0, %343 ], [ %356, %371 ]
  %376 = phi ptr [ %77, %351 ], [ %77, %343 ], [ %357, %371 ]
  %377 = phi i32 [ %341, %351 ], [ %341, %343 ], [ %359, %371 ]
  %378 = phi ptr [ %340, %351 ], [ %340, %343 ], [ %360, %371 ]
  %379 = add i32 %377, -1
  %380 = and i32 %377, 3
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

382:                                              ; preds = %374, %382
  %383 = phi i64 [ %392, %382 ], [ %375, %374 ]
  %384 = phi ptr [ %390, %382 ], [ %376, %374 ]
  %385 = phi i32 [ %391, %382 ], [ %377, %374 ]
  %386 = phi ptr [ %388, %382 ], [ %378, %374 ]
  %387 = phi i32 [ %393, %382 ], [ 0, %374 ]
  %388 = getelementptr inbounds i8, ptr %386, i64 1
  %389 = load i8, ptr %386, align 1, !tbaa !27
  %390 = getelementptr i8, ptr %384, i64 1
  store i8 %389, ptr %384, align 1, !tbaa !27
  %391 = add i32 %385, -1
  %392 = add i64 %383, 1
  %393 = add i32 %387, 1
  %394 = icmp eq i32 %393, %380
  br i1 %394, label %395, label %382, !llvm.loop !42

395:                                              ; preds = %382, %374
  %396 = phi i64 [ undef, %374 ], [ %383, %382 ]
  %397 = phi ptr [ undef, %374 ], [ %390, %382 ]
  %398 = phi i64 [ %375, %374 ], [ %392, %382 ]
  %399 = phi ptr [ %376, %374 ], [ %390, %382 ]
  %400 = phi i32 [ %377, %374 ], [ %391, %382 ]
  %401 = phi ptr [ %378, %374 ], [ %388, %382 ]
  %402 = icmp ult i32 %379, 3
  br i1 %402, label %425, label %403

403:                                              ; preds = %395, %403
  %404 = phi i64 [ %422, %403 ], [ %398, %395 ]
  %405 = phi ptr [ %419, %403 ], [ %399, %395 ]
  %406 = phi i32 [ %420, %403 ], [ %400, %395 ]
  %407 = phi ptr [ %417, %403 ], [ %401, %395 ]
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  %409 = load i8, ptr %407, align 1, !tbaa !27
  %410 = getelementptr i8, ptr %405, i64 1
  store i8 %409, ptr %405, align 1, !tbaa !27
  %411 = getelementptr inbounds i8, ptr %407, i64 2
  %412 = load i8, ptr %408, align 1, !tbaa !27
  %413 = getelementptr i8, ptr %405, i64 2
  store i8 %412, ptr %410, align 1, !tbaa !27
  %414 = getelementptr inbounds i8, ptr %407, i64 3
  %415 = load i8, ptr %411, align 1, !tbaa !27
  %416 = getelementptr i8, ptr %405, i64 3
  store i8 %415, ptr %413, align 1, !tbaa !27
  %417 = getelementptr inbounds i8, ptr %407, i64 4
  %418 = load i8, ptr %414, align 1, !tbaa !27
  %419 = getelementptr i8, ptr %405, i64 4
  store i8 %418, ptr %416, align 1, !tbaa !27
  %420 = add i32 %406, -4
  %421 = icmp eq i32 %420, 0
  %422 = add i64 %404, 4
  br i1 %421, label %423, label %403, !llvm.loop !43

423:                                              ; preds = %403
  %424 = add i64 %404, 3
  br label %425

425:                                              ; preds = %423, %395, %371
  %426 = phi i64 [ %373, %371 ], [ %396, %395 ], [ %424, %423 ]
  %427 = phi ptr [ %357, %371 ], [ %397, %395 ], [ %419, %423 ]
  %428 = sub nsw i32 %157, %341
  %429 = icmp ult i32 %28, %428
  br i1 %429, label %430, label %604

430:                                              ; preds = %425
  br i1 %68, label %449, label %431

431:                                              ; preds = %430
  %432 = sub i64 %229, %31
  %433 = add i64 %432, 1
  %434 = add i64 %426, %433
  %435 = icmp ult i64 %434, 32
  br i1 %435, label %449, label %436

436:                                              ; preds = %431
  %437 = getelementptr i8, ptr %427, i64 %69
  br label %438

438:                                              ; preds = %438, %436
  %439 = phi i64 [ 0, %436 ], [ %446, %438 ]
  %440 = getelementptr i8, ptr %427, i64 %439
  %441 = getelementptr i8, ptr %30, i64 %439
  %442 = getelementptr i8, ptr %441, i64 16
  %443 = load <16 x i8>, ptr %441, align 1, !tbaa !27
  %444 = load <16 x i8>, ptr %442, align 1, !tbaa !27
  %445 = getelementptr i8, ptr %440, i64 16
  store <16 x i8> %443, ptr %440, align 1, !tbaa !27
  store <16 x i8> %444, ptr %445, align 1, !tbaa !27
  %446 = add nuw i64 %439, 32
  %447 = icmp eq i64 %446, %69
  br i1 %447, label %448, label %438, !llvm.loop !44

448:                                              ; preds = %438
  br i1 %73, label %503, label %449

449:                                              ; preds = %431, %430, %448
  %450 = phi ptr [ %427, %431 ], [ %427, %430 ], [ %437, %448 ]
  %451 = phi i32 [ %28, %431 ], [ %28, %430 ], [ %71, %448 ]
  %452 = phi ptr [ %30, %431 ], [ %30, %430 ], [ %72, %448 ]
  %453 = add i32 %451, -1
  %454 = and i32 %451, 7
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %467, label %456

456:                                              ; preds = %449, %456
  %457 = phi ptr [ %463, %456 ], [ %450, %449 ]
  %458 = phi i32 [ %464, %456 ], [ %451, %449 ]
  %459 = phi ptr [ %461, %456 ], [ %452, %449 ]
  %460 = phi i32 [ %465, %456 ], [ 0, %449 ]
  %461 = getelementptr inbounds i8, ptr %459, i64 1
  %462 = load i8, ptr %459, align 1, !tbaa !27
  %463 = getelementptr inbounds i8, ptr %457, i64 1
  store i8 %462, ptr %457, align 1, !tbaa !27
  %464 = add i32 %458, -1
  %465 = add i32 %460, 1
  %466 = icmp eq i32 %465, %454
  br i1 %466, label %467, label %456, !llvm.loop !45

467:                                              ; preds = %456, %449
  %468 = phi ptr [ undef, %449 ], [ %463, %456 ]
  %469 = phi ptr [ %450, %449 ], [ %463, %456 ]
  %470 = phi i32 [ %451, %449 ], [ %464, %456 ]
  %471 = phi ptr [ %452, %449 ], [ %461, %456 ]
  %472 = icmp ult i32 %453, 7
  br i1 %472, label %503, label %473

473:                                              ; preds = %467, %473
  %474 = phi ptr [ %500, %473 ], [ %469, %467 ]
  %475 = phi i32 [ %501, %473 ], [ %470, %467 ]
  %476 = phi ptr [ %498, %473 ], [ %471, %467 ]
  %477 = getelementptr inbounds i8, ptr %476, i64 1
  %478 = load i8, ptr %476, align 1, !tbaa !27
  %479 = getelementptr inbounds i8, ptr %474, i64 1
  store i8 %478, ptr %474, align 1, !tbaa !27
  %480 = getelementptr inbounds i8, ptr %476, i64 2
  %481 = load i8, ptr %477, align 1, !tbaa !27
  %482 = getelementptr inbounds i8, ptr %474, i64 2
  store i8 %481, ptr %479, align 1, !tbaa !27
  %483 = getelementptr inbounds i8, ptr %476, i64 3
  %484 = load i8, ptr %480, align 1, !tbaa !27
  %485 = getelementptr inbounds i8, ptr %474, i64 3
  store i8 %484, ptr %482, align 1, !tbaa !27
  %486 = getelementptr inbounds i8, ptr %476, i64 4
  %487 = load i8, ptr %483, align 1, !tbaa !27
  %488 = getelementptr inbounds i8, ptr %474, i64 4
  store i8 %487, ptr %485, align 1, !tbaa !27
  %489 = getelementptr inbounds i8, ptr %476, i64 5
  %490 = load i8, ptr %486, align 1, !tbaa !27
  %491 = getelementptr inbounds i8, ptr %474, i64 5
  store i8 %490, ptr %488, align 1, !tbaa !27
  %492 = getelementptr inbounds i8, ptr %476, i64 6
  %493 = load i8, ptr %489, align 1, !tbaa !27
  %494 = getelementptr inbounds i8, ptr %474, i64 6
  store i8 %493, ptr %491, align 1, !tbaa !27
  %495 = getelementptr inbounds i8, ptr %476, i64 7
  %496 = load i8, ptr %492, align 1, !tbaa !27
  %497 = getelementptr inbounds i8, ptr %474, i64 7
  store i8 %496, ptr %494, align 1, !tbaa !27
  %498 = getelementptr inbounds i8, ptr %476, i64 8
  %499 = load i8, ptr %495, align 1, !tbaa !27
  %500 = getelementptr inbounds i8, ptr %474, i64 8
  store i8 %499, ptr %497, align 1, !tbaa !27
  %501 = add i32 %475, -8
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %473, !llvm.loop !46

503:                                              ; preds = %467, %473, %448
  %504 = phi ptr [ %437, %448 ], [ %468, %467 ], [ %500, %473 ]
  %505 = sub i32 %428, %28
  %506 = zext nneg i32 %225 to i64
  %507 = sub nsw i64 0, %506
  %508 = getelementptr inbounds i8, ptr %504, i64 %507
  br label %604

509:                                              ; preds = %335
  %510 = sub i32 %28, %234
  %511 = zext i32 %510 to i64
  %512 = getelementptr i8, ptr %30, i64 %511
  %513 = icmp ult i32 %234, %157
  br i1 %513, label %514, label %604

514:                                              ; preds = %509
  %515 = add i32 %67, %224
  %516 = add i32 %515, %197
  %517 = trunc i64 %229 to i32
  %518 = sub i32 %516, %517
  %519 = zext i32 %518 to i64
  %520 = add nuw nsw i64 %519, 1
  %521 = icmp ult i32 %518, 31
  br i1 %521, label %544, label %522

522:                                              ; preds = %514
  %523 = add i64 %31, %511
  %524 = sub i64 %229, %523
  %525 = icmp ult i64 %524, 32
  br i1 %525, label %544, label %526

526:                                              ; preds = %522
  %527 = and i64 %520, 8589934560
  %528 = getelementptr i8, ptr %77, i64 %527
  %529 = trunc i64 %527 to i32
  %530 = sub i32 %234, %529
  %531 = getelementptr i8, ptr %512, i64 %527
  br label %532

532:                                              ; preds = %532, %526
  %533 = phi i64 [ 0, %526 ], [ %540, %532 ]
  %534 = getelementptr i8, ptr %77, i64 %533
  %535 = getelementptr i8, ptr %512, i64 %533
  %536 = getelementptr i8, ptr %535, i64 16
  %537 = load <16 x i8>, ptr %535, align 1, !tbaa !27
  %538 = load <16 x i8>, ptr %536, align 1, !tbaa !27
  %539 = getelementptr i8, ptr %534, i64 16
  store <16 x i8> %537, ptr %534, align 1, !tbaa !27
  store <16 x i8> %538, ptr %539, align 1, !tbaa !27
  %540 = add nuw i64 %533, 32
  %541 = icmp eq i64 %540, %527
  br i1 %541, label %542, label %532, !llvm.loop !47

542:                                              ; preds = %532
  %543 = icmp eq i64 %520, %527
  br i1 %543, label %598, label %544

544:                                              ; preds = %522, %514, %542
  %545 = phi ptr [ %77, %522 ], [ %77, %514 ], [ %528, %542 ]
  %546 = phi i32 [ %234, %522 ], [ %234, %514 ], [ %530, %542 ]
  %547 = phi ptr [ %512, %522 ], [ %512, %514 ], [ %531, %542 ]
  %548 = add i32 %546, -1
  %549 = and i32 %546, 7
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %562, label %551

551:                                              ; preds = %544, %551
  %552 = phi ptr [ %558, %551 ], [ %545, %544 ]
  %553 = phi i32 [ %559, %551 ], [ %546, %544 ]
  %554 = phi ptr [ %556, %551 ], [ %547, %544 ]
  %555 = phi i32 [ %560, %551 ], [ 0, %544 ]
  %556 = getelementptr inbounds i8, ptr %554, i64 1
  %557 = load i8, ptr %554, align 1, !tbaa !27
  %558 = getelementptr inbounds i8, ptr %552, i64 1
  store i8 %557, ptr %552, align 1, !tbaa !27
  %559 = add i32 %553, -1
  %560 = add i32 %555, 1
  %561 = icmp eq i32 %560, %549
  br i1 %561, label %562, label %551, !llvm.loop !48

562:                                              ; preds = %551, %544
  %563 = phi ptr [ undef, %544 ], [ %558, %551 ]
  %564 = phi ptr [ %545, %544 ], [ %558, %551 ]
  %565 = phi i32 [ %546, %544 ], [ %559, %551 ]
  %566 = phi ptr [ %547, %544 ], [ %556, %551 ]
  %567 = icmp ult i32 %548, 7
  br i1 %567, label %598, label %568

568:                                              ; preds = %562, %568
  %569 = phi ptr [ %595, %568 ], [ %564, %562 ]
  %570 = phi i32 [ %596, %568 ], [ %565, %562 ]
  %571 = phi ptr [ %593, %568 ], [ %566, %562 ]
  %572 = getelementptr inbounds i8, ptr %571, i64 1
  %573 = load i8, ptr %571, align 1, !tbaa !27
  %574 = getelementptr inbounds i8, ptr %569, i64 1
  store i8 %573, ptr %569, align 1, !tbaa !27
  %575 = getelementptr inbounds i8, ptr %571, i64 2
  %576 = load i8, ptr %572, align 1, !tbaa !27
  %577 = getelementptr inbounds i8, ptr %569, i64 2
  store i8 %576, ptr %574, align 1, !tbaa !27
  %578 = getelementptr inbounds i8, ptr %571, i64 3
  %579 = load i8, ptr %575, align 1, !tbaa !27
  %580 = getelementptr inbounds i8, ptr %569, i64 3
  store i8 %579, ptr %577, align 1, !tbaa !27
  %581 = getelementptr inbounds i8, ptr %571, i64 4
  %582 = load i8, ptr %578, align 1, !tbaa !27
  %583 = getelementptr inbounds i8, ptr %569, i64 4
  store i8 %582, ptr %580, align 1, !tbaa !27
  %584 = getelementptr inbounds i8, ptr %571, i64 5
  %585 = load i8, ptr %581, align 1, !tbaa !27
  %586 = getelementptr inbounds i8, ptr %569, i64 5
  store i8 %585, ptr %583, align 1, !tbaa !27
  %587 = getelementptr inbounds i8, ptr %571, i64 6
  %588 = load i8, ptr %584, align 1, !tbaa !27
  %589 = getelementptr inbounds i8, ptr %569, i64 6
  store i8 %588, ptr %586, align 1, !tbaa !27
  %590 = getelementptr inbounds i8, ptr %571, i64 7
  %591 = load i8, ptr %587, align 1, !tbaa !27
  %592 = getelementptr inbounds i8, ptr %569, i64 7
  store i8 %591, ptr %589, align 1, !tbaa !27
  %593 = getelementptr inbounds i8, ptr %571, i64 8
  %594 = load i8, ptr %590, align 1, !tbaa !27
  %595 = getelementptr inbounds i8, ptr %569, i64 8
  store i8 %594, ptr %592, align 1, !tbaa !27
  %596 = add i32 %570, -8
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %568, !llvm.loop !49

598:                                              ; preds = %562, %568, %542
  %599 = phi ptr [ %528, %542 ], [ %563, %562 ], [ %595, %568 ]
  %600 = sub nsw i32 %157, %234
  %601 = zext nneg i32 %225 to i64
  %602 = sub nsw i64 0, %601
  %603 = getelementptr inbounds i8, ptr %599, i64 %602
  br label %604

604:                                              ; preds = %425, %503, %337, %598, %509, %240, %329
  %605 = phi ptr [ %330, %329 ], [ %77, %240 ], [ %504, %503 ], [ %427, %425 ], [ %77, %337 ], [ %599, %598 ], [ %77, %509 ]
  %606 = phi i32 [ %331, %329 ], [ %157, %240 ], [ %505, %503 ], [ %428, %425 ], [ %157, %337 ], [ %600, %598 ], [ %157, %509 ]
  %607 = phi ptr [ %334, %329 ], [ %243, %240 ], [ %508, %503 ], [ %30, %425 ], [ %340, %337 ], [ %603, %598 ], [ %512, %509 ]
  %608 = icmp ugt i32 %606, 2
  br i1 %608, label %609, label %657

609:                                              ; preds = %604
  %610 = add i32 %606, -3
  %611 = udiv i32 %610, 3
  %612 = and i32 %611, 1
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %625

614:                                              ; preds = %609
  %615 = getelementptr inbounds i8, ptr %607, i64 1
  %616 = load i8, ptr %607, align 1, !tbaa !27
  %617 = getelementptr inbounds i8, ptr %605, i64 1
  store i8 %616, ptr %605, align 1, !tbaa !27
  %618 = getelementptr inbounds i8, ptr %607, i64 2
  %619 = load i8, ptr %615, align 1, !tbaa !27
  %620 = getelementptr inbounds i8, ptr %605, i64 2
  store i8 %619, ptr %617, align 1, !tbaa !27
  %621 = getelementptr inbounds i8, ptr %607, i64 3
  %622 = load i8, ptr %618, align 1, !tbaa !27
  %623 = getelementptr inbounds i8, ptr %605, i64 3
  store i8 %622, ptr %620, align 1, !tbaa !27
  %624 = add i32 %606, -3
  br label %625

625:                                              ; preds = %614, %609
  %626 = phi ptr [ %607, %609 ], [ %621, %614 ]
  %627 = phi i32 [ %606, %609 ], [ %624, %614 ]
  %628 = phi ptr [ %605, %609 ], [ %623, %614 ]
  %629 = phi ptr [ undef, %609 ], [ %621, %614 ]
  %630 = phi ptr [ undef, %609 ], [ %623, %614 ]
  %631 = phi i32 [ undef, %609 ], [ %624, %614 ]
  %632 = icmp ult i32 %610, 3
  br i1 %632, label %657, label %633

633:                                              ; preds = %625, %633
  %634 = phi ptr [ %652, %633 ], [ %626, %625 ]
  %635 = phi i32 [ %655, %633 ], [ %627, %625 ]
  %636 = phi ptr [ %654, %633 ], [ %628, %625 ]
  %637 = getelementptr inbounds i8, ptr %634, i64 1
  %638 = load i8, ptr %634, align 1, !tbaa !27
  %639 = getelementptr inbounds i8, ptr %636, i64 1
  store i8 %638, ptr %636, align 1, !tbaa !27
  %640 = getelementptr inbounds i8, ptr %634, i64 2
  %641 = load i8, ptr %637, align 1, !tbaa !27
  %642 = getelementptr inbounds i8, ptr %636, i64 2
  store i8 %641, ptr %639, align 1, !tbaa !27
  %643 = getelementptr inbounds i8, ptr %634, i64 3
  %644 = load i8, ptr %640, align 1, !tbaa !27
  %645 = getelementptr inbounds i8, ptr %636, i64 3
  store i8 %644, ptr %642, align 1, !tbaa !27
  %646 = getelementptr inbounds i8, ptr %634, i64 4
  %647 = load i8, ptr %643, align 1, !tbaa !27
  %648 = getelementptr inbounds i8, ptr %636, i64 4
  store i8 %647, ptr %645, align 1, !tbaa !27
  %649 = getelementptr inbounds i8, ptr %634, i64 5
  %650 = load i8, ptr %646, align 1, !tbaa !27
  %651 = getelementptr inbounds i8, ptr %636, i64 5
  store i8 %650, ptr %648, align 1, !tbaa !27
  %652 = getelementptr inbounds i8, ptr %634, i64 6
  %653 = load i8, ptr %649, align 1, !tbaa !27
  %654 = getelementptr inbounds i8, ptr %636, i64 6
  store i8 %653, ptr %651, align 1, !tbaa !27
  %655 = add i32 %635, -6
  %656 = icmp ugt i32 %655, 2
  br i1 %656, label %633, label %657, !llvm.loop !50

657:                                              ; preds = %625, %633, %604
  %658 = phi ptr [ %605, %604 ], [ %630, %625 ], [ %654, %633 ]
  %659 = phi i32 [ %606, %604 ], [ %631, %625 ], [ %655, %633 ]
  %660 = phi ptr [ %607, %604 ], [ %629, %625 ], [ %652, %633 ]
  %661 = icmp eq i32 %659, 0
  br i1 %661, label %750, label %662

662:                                              ; preds = %657
  %663 = load i8, ptr %660, align 1, !tbaa !27
  %664 = getelementptr inbounds i8, ptr %658, i64 1
  store i8 %663, ptr %658, align 1, !tbaa !27
  %665 = icmp eq i32 %659, 2
  br i1 %665, label %666, label %750

666:                                              ; preds = %662
  %667 = getelementptr inbounds i8, ptr %660, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !27
  %669 = getelementptr inbounds i8, ptr %658, i64 2
  store i8 %668, ptr %664, align 1, !tbaa !27
  br label %750

670:                                              ; preds = %217
  %671 = zext nneg i32 %225 to i64
  %672 = sub nsw i64 0, %671
  %673 = getelementptr inbounds i8, ptr %77, i64 %672
  br label %674

674:                                              ; preds = %674, %670
  %675 = phi ptr [ %77, %670 ], [ %686, %674 ]
  %676 = phi i32 [ %157, %670 ], [ %687, %674 ]
  %677 = phi ptr [ %673, %670 ], [ %684, %674 ]
  %678 = getelementptr inbounds i8, ptr %677, i64 1
  %679 = load i8, ptr %677, align 1, !tbaa !27
  %680 = getelementptr inbounds i8, ptr %675, i64 1
  store i8 %679, ptr %675, align 1, !tbaa !27
  %681 = getelementptr inbounds i8, ptr %677, i64 2
  %682 = load i8, ptr %678, align 1, !tbaa !27
  %683 = getelementptr inbounds i8, ptr %675, i64 2
  store i8 %682, ptr %680, align 1, !tbaa !27
  %684 = getelementptr inbounds i8, ptr %677, i64 3
  %685 = load i8, ptr %681, align 1, !tbaa !27
  %686 = getelementptr inbounds i8, ptr %675, i64 3
  store i8 %685, ptr %683, align 1, !tbaa !27
  %687 = add i32 %676, -3
  %688 = icmp ugt i32 %687, 2
  br i1 %688, label %674, label %689, !llvm.loop !51

689:                                              ; preds = %674
  %690 = icmp eq i32 %687, 0
  br i1 %690, label %750, label %691

691:                                              ; preds = %689
  %692 = load i8, ptr %684, align 1, !tbaa !27
  %693 = getelementptr inbounds i8, ptr %675, i64 4
  store i8 %692, ptr %686, align 1, !tbaa !27
  %694 = icmp eq i32 %687, 2
  br i1 %694, label %695, label %750

695:                                              ; preds = %691
  %696 = getelementptr inbounds i8, ptr %677, i64 4
  %697 = load i8, ptr %696, align 1, !tbaa !27
  %698 = getelementptr inbounds i8, ptr %675, i64 5
  store i8 %697, ptr %693, align 1, !tbaa !27
  br label %750

699:                                              ; preds = %174, %706
  %700 = phi i32 [ %723, %706 ], [ %187, %174 ]
  %701 = phi i32 [ %721, %706 ], [ %185, %174 ]
  %702 = phi i64 [ %720, %706 ], [ %184, %174 ]
  %703 = phi ptr [ %715, %706 ], [ %179, %174 ]
  %704 = and i32 %700, 64
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %758

706:                                              ; preds = %699
  %707 = getelementptr inbounds %struct.code, ptr %703, i64 0, i32 2
  %708 = load i16, ptr %707, align 2, !tbaa !32
  %709 = zext i16 %708 to i64
  %710 = getelementptr inbounds %struct.code, ptr %39, i64 %709
  %711 = shl nsw i32 -1, %700
  %712 = xor i32 %711, -1
  %713 = zext nneg i32 %712 to i64
  %714 = and i64 %702, %713
  %715 = getelementptr inbounds %struct.code, ptr %710, i64 %714
  %716 = getelementptr inbounds %struct.code, ptr %710, i64 %714, i32 1
  %717 = load i8, ptr %716, align 1, !tbaa !28
  %718 = zext i8 %717 to i32
  %719 = zext nneg i8 %717 to i64
  %720 = lshr i64 %702, %719
  %721 = sub i32 %701, %718
  %722 = load i8, ptr %715, align 2, !tbaa !31
  %723 = zext i8 %722 to i32
  %724 = and i32 %723, 16
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %699, label %190

726:                                              ; preds = %117
  %727 = and i32 %122, 64
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %747

729:                                              ; preds = %726
  %730 = getelementptr inbounds %struct.code, ptr %121, i64 0, i32 2
  %731 = load i16, ptr %730, align 2, !tbaa !32
  %732 = zext i16 %731 to i64
  %733 = getelementptr inbounds %struct.code, ptr %37, i64 %732
  %734 = shl nsw i32 -1, %122
  %735 = xor i32 %734, -1
  %736 = zext nneg i32 %735 to i64
  %737 = and i64 %120, %736
  %738 = getelementptr inbounds %struct.code, ptr %733, i64 %737
  %739 = getelementptr inbounds %struct.code, ptr %733, i64 %737, i32 1
  %740 = load i8, ptr %739, align 1, !tbaa !28
  %741 = zext i8 %740 to i32
  %742 = zext nneg i8 %740 to i64
  %743 = lshr i64 %120, %742
  %744 = sub i32 %119, %741
  %745 = load i8, ptr %738, align 2, !tbaa !31
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %109, label %117

747:                                              ; preds = %726
  %748 = and i32 %122, 32
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %758, label %764

750:                                              ; preds = %109, %689, %695, %691, %657, %666, %662
  %751 = phi i32 [ %112, %109 ], [ %228, %666 ], [ %228, %662 ], [ %228, %657 ], [ %228, %695 ], [ %228, %691 ], [ %228, %689 ]
  %752 = phi i64 [ %111, %109 ], [ %227, %666 ], [ %227, %662 ], [ %227, %657 ], [ %227, %695 ], [ %227, %691 ], [ %227, %689 ]
  %753 = phi ptr [ %116, %109 ], [ %669, %666 ], [ %664, %662 ], [ %658, %657 ], [ %698, %695 ], [ %693, %691 ], [ %686, %689 ]
  %754 = phi ptr [ %98, %109 ], [ %220, %666 ], [ %220, %662 ], [ %220, %657 ], [ %220, %695 ], [ %220, %691 ], [ %220, %689 ]
  %755 = icmp ult ptr %754, %10
  %756 = icmp ult ptr %753, %22
  %757 = select i1 %755, i1 %756, i1 false
  br i1 %757, label %74, label %770, !llvm.loop !52

758:                                              ; preds = %236, %699, %747
  %759 = phi ptr [ @.str.2, %747 ], [ @.str.1, %699 ], [ @.str, %236 ]
  %760 = phi i32 [ %119, %747 ], [ %701, %699 ], [ %228, %236 ]
  %761 = phi i64 [ %120, %747 ], [ %702, %699 ], [ %227, %236 ]
  %762 = phi ptr [ %98, %747 ], [ %177, %699 ], [ %220, %236 ]
  %763 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %759, ptr %763, align 8, !tbaa !53
  br label %764

764:                                              ; preds = %758, %747
  %765 = phi i32 [ 16191, %747 ], [ 16209, %758 ]
  %766 = phi i32 [ %119, %747 ], [ %760, %758 ]
  %767 = phi i64 [ %120, %747 ], [ %761, %758 ]
  %768 = phi ptr [ %98, %747 ], [ %762, %758 ]
  %769 = getelementptr inbounds %struct.inflate_state, ptr %4, i64 0, i32 1
  store i32 %765, ptr %769, align 8, !tbaa !54
  br label %770

770:                                              ; preds = %750, %764
  %771 = phi i32 [ %766, %764 ], [ %751, %750 ]
  %772 = phi i64 [ %767, %764 ], [ %752, %750 ]
  %773 = phi ptr [ %77, %764 ], [ %753, %750 ]
  %774 = phi ptr [ %768, %764 ], [ %754, %750 ]
  %775 = lshr i32 %771, 3
  %776 = zext nneg i32 %775 to i64
  %777 = sub nsw i64 0, %776
  %778 = getelementptr inbounds i8, ptr %774, i64 %777
  store ptr %778, ptr %0, align 8, !tbaa !12
  store ptr %773, ptr %11, align 8, !tbaa !14
  %779 = ptrtoint ptr %10 to i64
  %780 = ptrtoint ptr %778 to i64
  %781 = sub i64 %779, %780
  %782 = trunc i64 %781 to i32
  %783 = add i32 %782, 5
  store i32 %783, ptr %6, align 8, !tbaa !13
  %784 = ptrtoint ptr %22 to i64
  %785 = ptrtoint ptr %773 to i64
  %786 = sub i64 %784, %785
  %787 = and i32 %771, 7
  %788 = shl nsw i32 -1, %787
  %789 = xor i32 %788, -1
  %790 = zext nneg i32 %789 to i64
  %791 = and i64 %772, %790
  %792 = trunc i64 %786 to i32
  %793 = add i32 %792, 257
  store i32 %793, ptr %14, align 8, !tbaa !15
  store i64 %791, ptr %32, align 8, !tbaa !21
  store i32 %787, ptr %34, align 8, !tbaa !22
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 56}
!6 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !10, i64 32}
!16 = !{!17, !10, i64 60}
!17 = !{!"inflate_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !11, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !7, i64 144, !8, i64 152, !8, i64 792, !8, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!18 = !{!17, !10, i64 64}
!19 = !{!17, !10, i64 68}
!20 = !{!17, !7, i64 72}
!21 = !{!17, !11, i64 80}
!22 = !{!17, !10, i64 88}
!23 = !{!17, !7, i64 104}
!24 = !{!17, !7, i64 112}
!25 = !{!17, !10, i64 120}
!26 = !{!17, !10, i64 124}
!27 = !{!8, !8, i64 0}
!28 = !{!29, !8, i64 1}
!29 = !{!"", !8, i64 0, !8, i64 1, !30, i64 2}
!30 = !{!"short", !8, i64 0}
!31 = !{!29, !8, i64 0}
!32 = !{!29, !30, i64 2}
!33 = !{!17, !10, i64 7144}
!34 = distinct !{!34, !35, !36, !37}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !35, !36}
!41 = distinct !{!41, !35, !36, !37}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !35, !36}
!44 = distinct !{!44, !35, !36, !37}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !35, !36}
!47 = distinct !{!47, !35, !36, !37}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !35, !36}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = !{!6, !7, i64 48}
!54 = !{!17, !10, i64 8}
