; ModuleID = 'corpus_src/sha1/sha1.c'
source_filename = "corpus_src/sha1/sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA1_CTX = type { [5 x i32], [2 x i32], [64 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @SHA1Transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 1
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = load i32, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load i32, ptr %6, align 1
  %8 = getelementptr inbounds i8, ptr %1, i64 12
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %1, i64 16
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %1, i64 20
  %13 = load i32, ptr %12, align 1
  %14 = getelementptr inbounds i8, ptr %1, i64 24
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %1, i64 28
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds i8, ptr %1, i64 32
  %19 = load i32, ptr %18, align 1
  %20 = getelementptr inbounds i8, ptr %1, i64 36
  %21 = load i32, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %1, i64 40
  %23 = load i32, ptr %22, align 1
  %24 = getelementptr inbounds i8, ptr %1, i64 44
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %1, i64 48
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds i8, ptr %1, i64 52
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds i8, ptr %1, i64 56
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr inbounds i8, ptr %1, i64 60
  %33 = load i32, ptr %32, align 1
  %34 = load i32, ptr %0, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %0, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %0, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, ptr %0, i64 3
  %40 = load i32, ptr %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, ptr %0, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = xor i32 %40, %38
  %44 = and i32 %43, %36
  %45 = xor i32 %44, %40
  %46 = tail call i32 @llvm.bswap.i32(i32 %3)
  %47 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 5)
  %48 = add i32 %46, 1518500249
  %49 = add i32 %48, %47
  %50 = add i32 %49, %42
  %51 = add i32 %50, %45
  %52 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 30)
  %53 = xor i32 %52, %38
  %54 = and i32 %53, %34
  %55 = xor i32 %54, %38
  %56 = tail call i32 @llvm.bswap.i32(i32 %5)
  %57 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 5)
  %58 = add i32 %56, 1518500249
  %59 = add i32 %58, %40
  %60 = add i32 %59, %55
  %61 = add i32 %60, %57
  %62 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 30)
  %63 = xor i32 %52, %62
  %64 = and i32 %51, %63
  %65 = xor i32 %64, %52
  %66 = tail call i32 @llvm.bswap.i32(i32 %7)
  %67 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 5)
  %68 = add i32 %66, 1518500249
  %69 = add i32 %68, %38
  %70 = add i32 %69, %65
  %71 = add i32 %70, %67
  %72 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 30)
  %73 = xor i32 %72, %62
  %74 = and i32 %61, %73
  %75 = xor i32 %74, %62
  %76 = tail call i32 @llvm.bswap.i32(i32 %9)
  %77 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 5)
  %78 = add i32 %76, 1518500249
  %79 = add i32 %78, %52
  %80 = add i32 %79, %75
  %81 = add i32 %80, %77
  %82 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 30)
  %83 = xor i32 %82, %72
  %84 = and i32 %71, %83
  %85 = xor i32 %84, %72
  %86 = tail call i32 @llvm.bswap.i32(i32 %11)
  %87 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 5)
  %88 = add i32 %86, 1518500249
  %89 = add i32 %88, %62
  %90 = add i32 %89, %85
  %91 = add i32 %90, %87
  %92 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 30)
  %93 = xor i32 %92, %82
  %94 = and i32 %81, %93
  %95 = xor i32 %94, %82
  %96 = tail call i32 @llvm.bswap.i32(i32 %13)
  %97 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 5)
  %98 = add i32 %96, 1518500249
  %99 = add i32 %98, %72
  %100 = add i32 %99, %95
  %101 = add i32 %100, %97
  %102 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 30)
  %103 = xor i32 %102, %92
  %104 = and i32 %91, %103
  %105 = xor i32 %104, %92
  %106 = tail call i32 @llvm.bswap.i32(i32 %15)
  %107 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 5)
  %108 = add i32 %106, 1518500249
  %109 = add i32 %108, %82
  %110 = add i32 %109, %105
  %111 = add i32 %110, %107
  %112 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 30)
  %113 = xor i32 %112, %102
  %114 = and i32 %101, %113
  %115 = xor i32 %114, %102
  %116 = tail call i32 @llvm.bswap.i32(i32 %17)
  %117 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 5)
  %118 = add i32 %116, 1518500249
  %119 = add i32 %118, %92
  %120 = add i32 %119, %115
  %121 = add i32 %120, %117
  %122 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 30)
  %123 = xor i32 %122, %112
  %124 = and i32 %111, %123
  %125 = xor i32 %124, %112
  %126 = tail call i32 @llvm.bswap.i32(i32 %19)
  %127 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 5)
  %128 = add i32 %126, 1518500249
  %129 = add i32 %128, %102
  %130 = add i32 %129, %125
  %131 = add i32 %130, %127
  %132 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 30)
  %133 = xor i32 %132, %122
  %134 = and i32 %121, %133
  %135 = xor i32 %134, %122
  %136 = tail call i32 @llvm.bswap.i32(i32 %21)
  %137 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 5)
  %138 = add i32 %136, 1518500249
  %139 = add i32 %138, %112
  %140 = add i32 %139, %135
  %141 = add i32 %140, %137
  %142 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 30)
  %143 = xor i32 %142, %132
  %144 = and i32 %131, %143
  %145 = xor i32 %144, %132
  %146 = tail call i32 @llvm.bswap.i32(i32 %23)
  %147 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 5)
  %148 = add i32 %146, 1518500249
  %149 = add i32 %148, %122
  %150 = add i32 %149, %145
  %151 = add i32 %150, %147
  %152 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 30)
  %153 = xor i32 %152, %142
  %154 = and i32 %141, %153
  %155 = xor i32 %154, %142
  %156 = tail call i32 @llvm.bswap.i32(i32 %25)
  %157 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 5)
  %158 = add i32 %156, 1518500249
  %159 = add i32 %158, %132
  %160 = add i32 %159, %155
  %161 = add i32 %160, %157
  %162 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 30)
  %163 = xor i32 %162, %152
  %164 = and i32 %151, %163
  %165 = xor i32 %164, %152
  %166 = tail call i32 @llvm.bswap.i32(i32 %27)
  %167 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 5)
  %168 = add i32 %166, 1518500249
  %169 = add i32 %168, %142
  %170 = add i32 %169, %165
  %171 = add i32 %170, %167
  %172 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 30)
  %173 = xor i32 %172, %162
  %174 = and i32 %161, %173
  %175 = xor i32 %174, %162
  %176 = tail call i32 @llvm.bswap.i32(i32 %29)
  %177 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 5)
  %178 = add i32 %176, 1518500249
  %179 = add i32 %178, %152
  %180 = add i32 %179, %175
  %181 = add i32 %180, %177
  %182 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 30)
  %183 = xor i32 %182, %172
  %184 = and i32 %171, %183
  %185 = xor i32 %184, %172
  %186 = tail call i32 @llvm.bswap.i32(i32 %31)
  %187 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 5)
  %188 = add i32 %186, 1518500249
  %189 = add i32 %188, %162
  %190 = add i32 %189, %185
  %191 = add i32 %190, %187
  %192 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 30)
  %193 = xor i32 %192, %182
  %194 = and i32 %181, %193
  %195 = xor i32 %194, %182
  %196 = tail call i32 @llvm.bswap.i32(i32 %33)
  %197 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 5)
  %198 = add i32 %196, 1518500249
  %199 = add i32 %198, %172
  %200 = add i32 %199, %195
  %201 = add i32 %200, %197
  %202 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 30)
  %203 = xor i32 %202, %192
  %204 = and i32 %191, %203
  %205 = xor i32 %204, %192
  %206 = xor i32 %66, %46
  %207 = xor i32 %206, %126
  %208 = xor i32 %207, %176
  %209 = tail call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 1)
  %210 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 5)
  %211 = add i32 %209, 1518500249
  %212 = add i32 %211, %182
  %213 = add i32 %212, %205
  %214 = add i32 %213, %210
  %215 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 30)
  %216 = xor i32 %215, %202
  %217 = and i32 %201, %216
  %218 = xor i32 %217, %202
  %219 = xor i32 %76, %56
  %220 = xor i32 %219, %136
  %221 = xor i32 %220, %186
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 1)
  %223 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 5)
  %224 = add i32 %222, 1518500249
  %225 = add i32 %224, %192
  %226 = add i32 %225, %218
  %227 = add i32 %226, %223
  %228 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 30)
  %229 = xor i32 %228, %215
  %230 = and i32 %214, %229
  %231 = xor i32 %230, %215
  %232 = xor i32 %86, %66
  %233 = xor i32 %232, %146
  %234 = xor i32 %233, %196
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 1)
  %236 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 5)
  %237 = add i32 %235, 1518500249
  %238 = add i32 %237, %202
  %239 = add i32 %238, %231
  %240 = add i32 %239, %236
  %241 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 30)
  %242 = xor i32 %241, %228
  %243 = and i32 %227, %242
  %244 = xor i32 %243, %228
  %245 = xor i32 %96, %76
  %246 = xor i32 %245, %156
  %247 = xor i32 %246, %209
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 1)
  %249 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 5)
  %250 = add i32 %248, 1518500249
  %251 = add i32 %250, %215
  %252 = add i32 %251, %244
  %253 = add i32 %252, %249
  %254 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 30)
  %255 = xor i32 %254, %241
  %256 = xor i32 %255, %240
  %257 = xor i32 %106, %86
  %258 = xor i32 %257, %166
  %259 = xor i32 %258, %222
  %260 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 1)
  %261 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 5)
  %262 = add i32 %260, 1859775393
  %263 = add i32 %262, %228
  %264 = add i32 %263, %256
  %265 = add i32 %264, %261
  %266 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 30)
  %267 = xor i32 %266, %254
  %268 = xor i32 %267, %253
  %269 = xor i32 %116, %96
  %270 = xor i32 %269, %176
  %271 = xor i32 %270, %235
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 1)
  %273 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 5)
  %274 = add i32 %272, 1859775393
  %275 = add i32 %274, %241
  %276 = add i32 %275, %268
  %277 = add i32 %276, %273
  %278 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 30)
  %279 = xor i32 %278, %266
  %280 = xor i32 %279, %265
  %281 = xor i32 %126, %106
  %282 = xor i32 %281, %186
  %283 = xor i32 %282, %248
  %284 = tail call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 1)
  %285 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 5)
  %286 = add i32 %284, 1859775393
  %287 = add i32 %286, %254
  %288 = add i32 %287, %280
  %289 = add i32 %288, %285
  %290 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 30)
  %291 = xor i32 %290, %278
  %292 = xor i32 %291, %277
  %293 = xor i32 %136, %116
  %294 = xor i32 %293, %196
  %295 = xor i32 %294, %260
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 1)
  %297 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 5)
  %298 = add i32 %296, 1859775393
  %299 = add i32 %298, %266
  %300 = add i32 %299, %292
  %301 = add i32 %300, %297
  %302 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 30)
  %303 = xor i32 %302, %290
  %304 = xor i32 %303, %289
  %305 = xor i32 %146, %126
  %306 = xor i32 %305, %209
  %307 = xor i32 %306, %272
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 1)
  %309 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 5)
  %310 = add i32 %308, 1859775393
  %311 = add i32 %310, %278
  %312 = add i32 %311, %304
  %313 = add i32 %312, %309
  %314 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 30)
  %315 = xor i32 %314, %302
  %316 = xor i32 %315, %301
  %317 = xor i32 %156, %136
  %318 = xor i32 %317, %222
  %319 = xor i32 %318, %284
  %320 = tail call i32 @llvm.fshl.i32(i32 %319, i32 %319, i32 1)
  %321 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 5)
  %322 = add i32 %320, 1859775393
  %323 = add i32 %322, %290
  %324 = add i32 %323, %316
  %325 = add i32 %324, %321
  %326 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 30)
  %327 = xor i32 %326, %314
  %328 = xor i32 %327, %313
  %329 = xor i32 %166, %146
  %330 = xor i32 %329, %235
  %331 = xor i32 %330, %296
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 1)
  %333 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 5)
  %334 = add i32 %332, 1859775393
  %335 = add i32 %334, %302
  %336 = add i32 %335, %328
  %337 = add i32 %336, %333
  %338 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 30)
  %339 = xor i32 %338, %326
  %340 = xor i32 %339, %325
  %341 = xor i32 %176, %156
  %342 = xor i32 %341, %248
  %343 = xor i32 %342, %308
  %344 = tail call i32 @llvm.fshl.i32(i32 %343, i32 %343, i32 1)
  %345 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 5)
  %346 = add i32 %344, 1859775393
  %347 = add i32 %346, %314
  %348 = add i32 %347, %340
  %349 = add i32 %348, %345
  %350 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 30)
  %351 = xor i32 %350, %338
  %352 = xor i32 %351, %337
  %353 = xor i32 %186, %166
  %354 = xor i32 %353, %260
  %355 = xor i32 %354, %320
  %356 = tail call i32 @llvm.fshl.i32(i32 %355, i32 %355, i32 1)
  %357 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 5)
  %358 = add i32 %356, 1859775393
  %359 = add i32 %358, %326
  %360 = add i32 %359, %352
  %361 = add i32 %360, %357
  %362 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 30)
  %363 = xor i32 %362, %350
  %364 = xor i32 %363, %349
  %365 = xor i32 %196, %176
  %366 = xor i32 %365, %272
  %367 = xor i32 %366, %332
  %368 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 1)
  %369 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 5)
  %370 = add i32 %368, 1859775393
  %371 = add i32 %370, %338
  %372 = add i32 %371, %364
  %373 = add i32 %372, %369
  %374 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 30)
  %375 = xor i32 %374, %362
  %376 = xor i32 %375, %361
  %377 = xor i32 %209, %186
  %378 = xor i32 %377, %284
  %379 = xor i32 %378, %344
  %380 = tail call i32 @llvm.fshl.i32(i32 %379, i32 %379, i32 1)
  %381 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 5)
  %382 = add i32 %380, 1859775393
  %383 = add i32 %382, %350
  %384 = add i32 %383, %376
  %385 = add i32 %384, %381
  %386 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 30)
  %387 = xor i32 %386, %374
  %388 = xor i32 %387, %373
  %389 = xor i32 %222, %196
  %390 = xor i32 %389, %296
  %391 = xor i32 %390, %356
  %392 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 1)
  %393 = tail call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 5)
  %394 = add i32 %392, 1859775393
  %395 = add i32 %394, %362
  %396 = add i32 %395, %388
  %397 = add i32 %396, %393
  %398 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 30)
  %399 = xor i32 %398, %386
  %400 = xor i32 %399, %385
  %401 = xor i32 %235, %209
  %402 = xor i32 %401, %308
  %403 = xor i32 %402, %368
  %404 = tail call i32 @llvm.fshl.i32(i32 %403, i32 %403, i32 1)
  %405 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 5)
  %406 = add i32 %404, 1859775393
  %407 = add i32 %406, %374
  %408 = add i32 %407, %400
  %409 = add i32 %408, %405
  %410 = tail call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 30)
  %411 = xor i32 %410, %398
  %412 = xor i32 %411, %397
  %413 = xor i32 %248, %222
  %414 = xor i32 %413, %320
  %415 = xor i32 %414, %380
  %416 = tail call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 1)
  %417 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 5)
  %418 = add i32 %416, 1859775393
  %419 = add i32 %418, %386
  %420 = add i32 %419, %412
  %421 = add i32 %420, %417
  %422 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 30)
  %423 = xor i32 %422, %410
  %424 = xor i32 %423, %409
  %425 = xor i32 %260, %235
  %426 = xor i32 %425, %332
  %427 = xor i32 %426, %392
  %428 = tail call i32 @llvm.fshl.i32(i32 %427, i32 %427, i32 1)
  %429 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 5)
  %430 = add i32 %428, 1859775393
  %431 = add i32 %430, %398
  %432 = add i32 %431, %424
  %433 = add i32 %432, %429
  %434 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 30)
  %435 = xor i32 %434, %422
  %436 = xor i32 %435, %421
  %437 = xor i32 %272, %248
  %438 = xor i32 %437, %344
  %439 = xor i32 %438, %404
  %440 = tail call i32 @llvm.fshl.i32(i32 %439, i32 %439, i32 1)
  %441 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 5)
  %442 = add i32 %440, 1859775393
  %443 = add i32 %442, %410
  %444 = add i32 %443, %436
  %445 = add i32 %444, %441
  %446 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 30)
  %447 = xor i32 %446, %434
  %448 = xor i32 %447, %433
  %449 = xor i32 %284, %260
  %450 = xor i32 %449, %356
  %451 = xor i32 %450, %416
  %452 = tail call i32 @llvm.fshl.i32(i32 %451, i32 %451, i32 1)
  %453 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 5)
  %454 = add i32 %452, 1859775393
  %455 = add i32 %454, %422
  %456 = add i32 %455, %448
  %457 = add i32 %456, %453
  %458 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 30)
  %459 = xor i32 %458, %446
  %460 = xor i32 %459, %445
  %461 = xor i32 %296, %272
  %462 = xor i32 %461, %368
  %463 = xor i32 %462, %428
  %464 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 1)
  %465 = tail call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 5)
  %466 = add i32 %464, 1859775393
  %467 = add i32 %466, %434
  %468 = add i32 %467, %460
  %469 = add i32 %468, %465
  %470 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 30)
  %471 = xor i32 %470, %458
  %472 = xor i32 %471, %457
  %473 = xor i32 %308, %284
  %474 = xor i32 %473, %380
  %475 = xor i32 %474, %440
  %476 = tail call i32 @llvm.fshl.i32(i32 %475, i32 %475, i32 1)
  %477 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 5)
  %478 = add i32 %476, 1859775393
  %479 = add i32 %478, %446
  %480 = add i32 %479, %472
  %481 = add i32 %480, %477
  %482 = tail call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 30)
  %483 = xor i32 %482, %470
  %484 = xor i32 %483, %469
  %485 = xor i32 %320, %296
  %486 = xor i32 %485, %392
  %487 = xor i32 %486, %452
  %488 = tail call i32 @llvm.fshl.i32(i32 %487, i32 %487, i32 1)
  %489 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 5)
  %490 = add i32 %488, 1859775393
  %491 = add i32 %490, %458
  %492 = add i32 %491, %484
  %493 = add i32 %492, %489
  %494 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 30)
  %495 = or i32 %481, %494
  %496 = and i32 %495, %482
  %497 = and i32 %481, %494
  %498 = or i32 %496, %497
  %499 = xor i32 %332, %308
  %500 = xor i32 %499, %404
  %501 = xor i32 %500, %464
  %502 = tail call i32 @llvm.fshl.i32(i32 %501, i32 %501, i32 1)
  %503 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 5)
  %504 = add i32 %502, -1894007588
  %505 = add i32 %504, %470
  %506 = add i32 %505, %498
  %507 = add i32 %506, %503
  %508 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 30)
  %509 = or i32 %493, %508
  %510 = and i32 %509, %494
  %511 = and i32 %493, %508
  %512 = or i32 %510, %511
  %513 = xor i32 %344, %320
  %514 = xor i32 %513, %416
  %515 = xor i32 %514, %476
  %516 = tail call i32 @llvm.fshl.i32(i32 %515, i32 %515, i32 1)
  %517 = tail call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 5)
  %518 = add i32 %516, -1894007588
  %519 = add i32 %518, %482
  %520 = add i32 %519, %512
  %521 = add i32 %520, %517
  %522 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 30)
  %523 = or i32 %507, %522
  %524 = and i32 %523, %508
  %525 = and i32 %507, %522
  %526 = or i32 %524, %525
  %527 = xor i32 %356, %332
  %528 = xor i32 %527, %428
  %529 = xor i32 %528, %488
  %530 = tail call i32 @llvm.fshl.i32(i32 %529, i32 %529, i32 1)
  %531 = tail call i32 @llvm.fshl.i32(i32 %521, i32 %521, i32 5)
  %532 = add i32 %530, -1894007588
  %533 = add i32 %532, %494
  %534 = add i32 %533, %526
  %535 = add i32 %534, %531
  %536 = tail call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 30)
  %537 = or i32 %521, %536
  %538 = and i32 %537, %522
  %539 = and i32 %521, %536
  %540 = or i32 %538, %539
  %541 = xor i32 %368, %344
  %542 = xor i32 %541, %440
  %543 = xor i32 %542, %502
  %544 = tail call i32 @llvm.fshl.i32(i32 %543, i32 %543, i32 1)
  %545 = tail call i32 @llvm.fshl.i32(i32 %535, i32 %535, i32 5)
  %546 = add i32 %544, -1894007588
  %547 = add i32 %546, %508
  %548 = add i32 %547, %540
  %549 = add i32 %548, %545
  %550 = tail call i32 @llvm.fshl.i32(i32 %521, i32 %521, i32 30)
  %551 = or i32 %535, %550
  %552 = and i32 %551, %536
  %553 = and i32 %535, %550
  %554 = or i32 %552, %553
  %555 = xor i32 %380, %356
  %556 = xor i32 %555, %452
  %557 = xor i32 %556, %516
  %558 = tail call i32 @llvm.fshl.i32(i32 %557, i32 %557, i32 1)
  %559 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 5)
  %560 = add i32 %558, -1894007588
  %561 = add i32 %560, %522
  %562 = add i32 %561, %554
  %563 = add i32 %562, %559
  %564 = tail call i32 @llvm.fshl.i32(i32 %535, i32 %535, i32 30)
  %565 = or i32 %549, %564
  %566 = and i32 %565, %550
  %567 = and i32 %549, %564
  %568 = or i32 %566, %567
  %569 = xor i32 %392, %368
  %570 = xor i32 %569, %464
  %571 = xor i32 %570, %530
  %572 = tail call i32 @llvm.fshl.i32(i32 %571, i32 %571, i32 1)
  %573 = tail call i32 @llvm.fshl.i32(i32 %563, i32 %563, i32 5)
  %574 = add i32 %572, -1894007588
  %575 = add i32 %574, %536
  %576 = add i32 %575, %568
  %577 = add i32 %576, %573
  %578 = tail call i32 @llvm.fshl.i32(i32 %549, i32 %549, i32 30)
  %579 = or i32 %563, %578
  %580 = and i32 %579, %564
  %581 = and i32 %563, %578
  %582 = or i32 %580, %581
  %583 = xor i32 %404, %380
  %584 = xor i32 %583, %476
  %585 = xor i32 %584, %544
  %586 = tail call i32 @llvm.fshl.i32(i32 %585, i32 %585, i32 1)
  %587 = tail call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 5)
  %588 = add i32 %586, -1894007588
  %589 = add i32 %588, %550
  %590 = add i32 %589, %582
  %591 = add i32 %590, %587
  %592 = tail call i32 @llvm.fshl.i32(i32 %563, i32 %563, i32 30)
  %593 = or i32 %577, %592
  %594 = and i32 %593, %578
  %595 = and i32 %577, %592
  %596 = or i32 %594, %595
  %597 = xor i32 %416, %392
  %598 = xor i32 %597, %488
  %599 = xor i32 %598, %558
  %600 = tail call i32 @llvm.fshl.i32(i32 %599, i32 %599, i32 1)
  %601 = tail call i32 @llvm.fshl.i32(i32 %591, i32 %591, i32 5)
  %602 = add i32 %600, -1894007588
  %603 = add i32 %602, %564
  %604 = add i32 %603, %596
  %605 = add i32 %604, %601
  %606 = tail call i32 @llvm.fshl.i32(i32 %577, i32 %577, i32 30)
  %607 = or i32 %591, %606
  %608 = and i32 %607, %592
  %609 = and i32 %591, %606
  %610 = or i32 %608, %609
  %611 = xor i32 %428, %404
  %612 = xor i32 %611, %502
  %613 = xor i32 %612, %572
  %614 = tail call i32 @llvm.fshl.i32(i32 %613, i32 %613, i32 1)
  %615 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 5)
  %616 = add i32 %614, -1894007588
  %617 = add i32 %616, %578
  %618 = add i32 %617, %610
  %619 = add i32 %618, %615
  %620 = tail call i32 @llvm.fshl.i32(i32 %591, i32 %591, i32 30)
  %621 = or i32 %605, %620
  %622 = and i32 %621, %606
  %623 = and i32 %605, %620
  %624 = or i32 %622, %623
  %625 = xor i32 %440, %416
  %626 = xor i32 %625, %516
  %627 = xor i32 %626, %586
  %628 = tail call i32 @llvm.fshl.i32(i32 %627, i32 %627, i32 1)
  %629 = tail call i32 @llvm.fshl.i32(i32 %619, i32 %619, i32 5)
  %630 = add i32 %628, -1894007588
  %631 = add i32 %630, %592
  %632 = add i32 %631, %624
  %633 = add i32 %632, %629
  %634 = tail call i32 @llvm.fshl.i32(i32 %605, i32 %605, i32 30)
  %635 = or i32 %619, %634
  %636 = and i32 %635, %620
  %637 = and i32 %619, %634
  %638 = or i32 %636, %637
  %639 = xor i32 %452, %428
  %640 = xor i32 %639, %530
  %641 = xor i32 %640, %600
  %642 = tail call i32 @llvm.fshl.i32(i32 %641, i32 %641, i32 1)
  %643 = tail call i32 @llvm.fshl.i32(i32 %633, i32 %633, i32 5)
  %644 = add i32 %642, -1894007588
  %645 = add i32 %644, %606
  %646 = add i32 %645, %638
  %647 = add i32 %646, %643
  %648 = tail call i32 @llvm.fshl.i32(i32 %619, i32 %619, i32 30)
  %649 = or i32 %633, %648
  %650 = and i32 %649, %634
  %651 = and i32 %633, %648
  %652 = or i32 %650, %651
  %653 = xor i32 %464, %440
  %654 = xor i32 %653, %544
  %655 = xor i32 %654, %614
  %656 = tail call i32 @llvm.fshl.i32(i32 %655, i32 %655, i32 1)
  %657 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 5)
  %658 = add i32 %656, -1894007588
  %659 = add i32 %658, %620
  %660 = add i32 %659, %652
  %661 = add i32 %660, %657
  %662 = tail call i32 @llvm.fshl.i32(i32 %633, i32 %633, i32 30)
  %663 = or i32 %647, %662
  %664 = and i32 %663, %648
  %665 = and i32 %647, %662
  %666 = or i32 %664, %665
  %667 = xor i32 %476, %452
  %668 = xor i32 %667, %558
  %669 = xor i32 %668, %628
  %670 = tail call i32 @llvm.fshl.i32(i32 %669, i32 %669, i32 1)
  %671 = tail call i32 @llvm.fshl.i32(i32 %661, i32 %661, i32 5)
  %672 = add i32 %670, -1894007588
  %673 = add i32 %672, %634
  %674 = add i32 %673, %666
  %675 = add i32 %674, %671
  %676 = tail call i32 @llvm.fshl.i32(i32 %647, i32 %647, i32 30)
  %677 = or i32 %661, %676
  %678 = and i32 %677, %662
  %679 = and i32 %661, %676
  %680 = or i32 %678, %679
  %681 = xor i32 %488, %464
  %682 = xor i32 %681, %572
  %683 = xor i32 %682, %642
  %684 = tail call i32 @llvm.fshl.i32(i32 %683, i32 %683, i32 1)
  %685 = tail call i32 @llvm.fshl.i32(i32 %675, i32 %675, i32 5)
  %686 = add i32 %684, -1894007588
  %687 = add i32 %686, %648
  %688 = add i32 %687, %680
  %689 = add i32 %688, %685
  %690 = tail call i32 @llvm.fshl.i32(i32 %661, i32 %661, i32 30)
  %691 = or i32 %675, %690
  %692 = and i32 %691, %676
  %693 = and i32 %675, %690
  %694 = or i32 %692, %693
  %695 = xor i32 %502, %476
  %696 = xor i32 %695, %586
  %697 = xor i32 %696, %656
  %698 = tail call i32 @llvm.fshl.i32(i32 %697, i32 %697, i32 1)
  %699 = tail call i32 @llvm.fshl.i32(i32 %689, i32 %689, i32 5)
  %700 = add i32 %698, -1894007588
  %701 = add i32 %700, %662
  %702 = add i32 %701, %694
  %703 = add i32 %702, %699
  %704 = tail call i32 @llvm.fshl.i32(i32 %675, i32 %675, i32 30)
  %705 = or i32 %689, %704
  %706 = and i32 %705, %690
  %707 = and i32 %689, %704
  %708 = or i32 %706, %707
  %709 = xor i32 %516, %488
  %710 = xor i32 %709, %600
  %711 = xor i32 %710, %670
  %712 = tail call i32 @llvm.fshl.i32(i32 %711, i32 %711, i32 1)
  %713 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 5)
  %714 = add i32 %712, -1894007588
  %715 = add i32 %714, %676
  %716 = add i32 %715, %708
  %717 = add i32 %716, %713
  %718 = tail call i32 @llvm.fshl.i32(i32 %689, i32 %689, i32 30)
  %719 = or i32 %703, %718
  %720 = and i32 %719, %704
  %721 = and i32 %703, %718
  %722 = or i32 %720, %721
  %723 = xor i32 %530, %502
  %724 = xor i32 %723, %614
  %725 = xor i32 %724, %684
  %726 = tail call i32 @llvm.fshl.i32(i32 %725, i32 %725, i32 1)
  %727 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 5)
  %728 = add i32 %726, -1894007588
  %729 = add i32 %728, %690
  %730 = add i32 %729, %722
  %731 = add i32 %730, %727
  %732 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 30)
  %733 = or i32 %717, %732
  %734 = and i32 %733, %718
  %735 = and i32 %717, %732
  %736 = or i32 %734, %735
  %737 = xor i32 %544, %516
  %738 = xor i32 %737, %628
  %739 = xor i32 %738, %698
  %740 = tail call i32 @llvm.fshl.i32(i32 %739, i32 %739, i32 1)
  %741 = tail call i32 @llvm.fshl.i32(i32 %731, i32 %731, i32 5)
  %742 = add i32 %740, -1894007588
  %743 = add i32 %742, %704
  %744 = add i32 %743, %736
  %745 = add i32 %744, %741
  %746 = tail call i32 @llvm.fshl.i32(i32 %717, i32 %717, i32 30)
  %747 = or i32 %731, %746
  %748 = and i32 %747, %732
  %749 = and i32 %731, %746
  %750 = or i32 %748, %749
  %751 = xor i32 %558, %530
  %752 = xor i32 %751, %642
  %753 = xor i32 %752, %712
  %754 = tail call i32 @llvm.fshl.i32(i32 %753, i32 %753, i32 1)
  %755 = tail call i32 @llvm.fshl.i32(i32 %745, i32 %745, i32 5)
  %756 = add i32 %754, -1894007588
  %757 = add i32 %756, %718
  %758 = add i32 %757, %750
  %759 = add i32 %758, %755
  %760 = tail call i32 @llvm.fshl.i32(i32 %731, i32 %731, i32 30)
  %761 = or i32 %745, %760
  %762 = and i32 %761, %746
  %763 = and i32 %745, %760
  %764 = or i32 %762, %763
  %765 = xor i32 %572, %544
  %766 = xor i32 %765, %656
  %767 = xor i32 %766, %726
  %768 = tail call i32 @llvm.fshl.i32(i32 %767, i32 %767, i32 1)
  %769 = tail call i32 @llvm.fshl.i32(i32 %759, i32 %759, i32 5)
  %770 = add i32 %768, -1894007588
  %771 = add i32 %770, %732
  %772 = add i32 %771, %764
  %773 = add i32 %772, %769
  %774 = tail call i32 @llvm.fshl.i32(i32 %745, i32 %745, i32 30)
  %775 = xor i32 %774, %760
  %776 = xor i32 %775, %759
  %777 = xor i32 %586, %558
  %778 = xor i32 %777, %670
  %779 = xor i32 %778, %740
  %780 = tail call i32 @llvm.fshl.i32(i32 %779, i32 %779, i32 1)
  %781 = tail call i32 @llvm.fshl.i32(i32 %773, i32 %773, i32 5)
  %782 = add i32 %780, -899497514
  %783 = add i32 %782, %746
  %784 = add i32 %783, %776
  %785 = add i32 %784, %781
  %786 = tail call i32 @llvm.fshl.i32(i32 %759, i32 %759, i32 30)
  %787 = xor i32 %786, %774
  %788 = xor i32 %787, %773
  %789 = xor i32 %600, %572
  %790 = xor i32 %789, %684
  %791 = xor i32 %790, %754
  %792 = tail call i32 @llvm.fshl.i32(i32 %791, i32 %791, i32 1)
  %793 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 5)
  %794 = add i32 %792, -899497514
  %795 = add i32 %794, %760
  %796 = add i32 %795, %788
  %797 = add i32 %796, %793
  %798 = tail call i32 @llvm.fshl.i32(i32 %773, i32 %773, i32 30)
  %799 = xor i32 %798, %786
  %800 = xor i32 %799, %785
  %801 = xor i32 %614, %586
  %802 = xor i32 %801, %698
  %803 = xor i32 %802, %768
  %804 = tail call i32 @llvm.fshl.i32(i32 %803, i32 %803, i32 1)
  %805 = tail call i32 @llvm.fshl.i32(i32 %797, i32 %797, i32 5)
  %806 = add i32 %804, -899497514
  %807 = add i32 %806, %774
  %808 = add i32 %807, %800
  %809 = add i32 %808, %805
  %810 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 30)
  %811 = xor i32 %810, %798
  %812 = xor i32 %811, %797
  %813 = xor i32 %628, %600
  %814 = xor i32 %813, %712
  %815 = xor i32 %814, %780
  %816 = tail call i32 @llvm.fshl.i32(i32 %815, i32 %815, i32 1)
  %817 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 5)
  %818 = add i32 %816, -899497514
  %819 = add i32 %818, %786
  %820 = add i32 %819, %812
  %821 = add i32 %820, %817
  %822 = tail call i32 @llvm.fshl.i32(i32 %797, i32 %797, i32 30)
  %823 = xor i32 %822, %810
  %824 = xor i32 %823, %809
  %825 = xor i32 %642, %614
  %826 = xor i32 %825, %726
  %827 = xor i32 %826, %792
  %828 = tail call i32 @llvm.fshl.i32(i32 %827, i32 %827, i32 1)
  %829 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 5)
  %830 = add i32 %828, -899497514
  %831 = add i32 %830, %798
  %832 = add i32 %831, %824
  %833 = add i32 %832, %829
  %834 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 30)
  %835 = xor i32 %834, %822
  %836 = xor i32 %835, %821
  %837 = xor i32 %656, %628
  %838 = xor i32 %837, %740
  %839 = xor i32 %838, %804
  %840 = tail call i32 @llvm.fshl.i32(i32 %839, i32 %839, i32 1)
  %841 = tail call i32 @llvm.fshl.i32(i32 %833, i32 %833, i32 5)
  %842 = add i32 %840, -899497514
  %843 = add i32 %842, %810
  %844 = add i32 %843, %836
  %845 = add i32 %844, %841
  %846 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 30)
  %847 = xor i32 %846, %834
  %848 = xor i32 %847, %833
  %849 = xor i32 %670, %642
  %850 = xor i32 %849, %754
  %851 = xor i32 %850, %816
  %852 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 1)
  %853 = tail call i32 @llvm.fshl.i32(i32 %845, i32 %845, i32 5)
  %854 = add i32 %852, -899497514
  %855 = add i32 %854, %822
  %856 = add i32 %855, %848
  %857 = add i32 %856, %853
  %858 = tail call i32 @llvm.fshl.i32(i32 %833, i32 %833, i32 30)
  %859 = xor i32 %858, %846
  %860 = xor i32 %859, %845
  %861 = xor i32 %684, %656
  %862 = xor i32 %861, %768
  %863 = xor i32 %862, %828
  %864 = tail call i32 @llvm.fshl.i32(i32 %863, i32 %863, i32 1)
  %865 = tail call i32 @llvm.fshl.i32(i32 %857, i32 %857, i32 5)
  %866 = add i32 %864, -899497514
  %867 = add i32 %866, %834
  %868 = add i32 %867, %860
  %869 = add i32 %868, %865
  %870 = tail call i32 @llvm.fshl.i32(i32 %845, i32 %845, i32 30)
  %871 = xor i32 %870, %858
  %872 = xor i32 %871, %857
  %873 = xor i32 %698, %670
  %874 = xor i32 %873, %780
  %875 = xor i32 %874, %840
  %876 = tail call i32 @llvm.fshl.i32(i32 %875, i32 %875, i32 1)
  %877 = tail call i32 @llvm.fshl.i32(i32 %869, i32 %869, i32 5)
  %878 = add i32 %876, -899497514
  %879 = add i32 %878, %846
  %880 = add i32 %879, %872
  %881 = add i32 %880, %877
  %882 = tail call i32 @llvm.fshl.i32(i32 %857, i32 %857, i32 30)
  %883 = xor i32 %882, %870
  %884 = xor i32 %883, %869
  %885 = xor i32 %712, %684
  %886 = xor i32 %885, %792
  %887 = xor i32 %886, %852
  %888 = tail call i32 @llvm.fshl.i32(i32 %887, i32 %887, i32 1)
  %889 = tail call i32 @llvm.fshl.i32(i32 %881, i32 %881, i32 5)
  %890 = add i32 %888, -899497514
  %891 = add i32 %890, %858
  %892 = add i32 %891, %884
  %893 = add i32 %892, %889
  %894 = tail call i32 @llvm.fshl.i32(i32 %869, i32 %869, i32 30)
  %895 = xor i32 %894, %882
  %896 = xor i32 %895, %881
  %897 = xor i32 %726, %698
  %898 = xor i32 %897, %804
  %899 = xor i32 %898, %864
  %900 = tail call i32 @llvm.fshl.i32(i32 %899, i32 %899, i32 1)
  %901 = tail call i32 @llvm.fshl.i32(i32 %893, i32 %893, i32 5)
  %902 = add i32 %900, -899497514
  %903 = add i32 %902, %870
  %904 = add i32 %903, %896
  %905 = add i32 %904, %901
  %906 = tail call i32 @llvm.fshl.i32(i32 %881, i32 %881, i32 30)
  %907 = xor i32 %906, %894
  %908 = xor i32 %907, %893
  %909 = xor i32 %740, %712
  %910 = xor i32 %909, %816
  %911 = xor i32 %910, %876
  %912 = tail call i32 @llvm.fshl.i32(i32 %911, i32 %911, i32 1)
  %913 = tail call i32 @llvm.fshl.i32(i32 %905, i32 %905, i32 5)
  %914 = add i32 %912, -899497514
  %915 = add i32 %914, %882
  %916 = add i32 %915, %908
  %917 = add i32 %916, %913
  %918 = tail call i32 @llvm.fshl.i32(i32 %893, i32 %893, i32 30)
  %919 = xor i32 %918, %906
  %920 = xor i32 %919, %905
  %921 = xor i32 %754, %726
  %922 = xor i32 %921, %828
  %923 = xor i32 %922, %888
  %924 = tail call i32 @llvm.fshl.i32(i32 %923, i32 %923, i32 1)
  %925 = tail call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 5)
  %926 = add i32 %924, -899497514
  %927 = add i32 %926, %894
  %928 = add i32 %927, %920
  %929 = add i32 %928, %925
  %930 = tail call i32 @llvm.fshl.i32(i32 %905, i32 %905, i32 30)
  %931 = xor i32 %930, %918
  %932 = xor i32 %931, %917
  %933 = xor i32 %768, %740
  %934 = xor i32 %933, %840
  %935 = xor i32 %934, %900
  %936 = tail call i32 @llvm.fshl.i32(i32 %935, i32 %935, i32 1)
  %937 = tail call i32 @llvm.fshl.i32(i32 %929, i32 %929, i32 5)
  %938 = add i32 %936, -899497514
  %939 = add i32 %938, %906
  %940 = add i32 %939, %932
  %941 = add i32 %940, %937
  %942 = tail call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 30)
  %943 = xor i32 %942, %930
  %944 = xor i32 %943, %929
  %945 = xor i32 %780, %754
  %946 = xor i32 %945, %852
  %947 = xor i32 %946, %912
  %948 = tail call i32 @llvm.fshl.i32(i32 %947, i32 %947, i32 1)
  %949 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 5)
  %950 = add i32 %948, -899497514
  %951 = add i32 %950, %918
  %952 = add i32 %951, %944
  %953 = add i32 %952, %949
  %954 = tail call i32 @llvm.fshl.i32(i32 %929, i32 %929, i32 30)
  %955 = xor i32 %954, %942
  %956 = xor i32 %955, %941
  %957 = xor i32 %792, %768
  %958 = xor i32 %957, %864
  %959 = xor i32 %958, %924
  %960 = tail call i32 @llvm.fshl.i32(i32 %959, i32 %959, i32 1)
  %961 = tail call i32 @llvm.fshl.i32(i32 %953, i32 %953, i32 5)
  %962 = add i32 %960, -899497514
  %963 = add i32 %962, %930
  %964 = add i32 %963, %956
  %965 = add i32 %964, %961
  %966 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 30)
  %967 = xor i32 %966, %954
  %968 = xor i32 %967, %953
  %969 = xor i32 %804, %780
  %970 = xor i32 %969, %876
  %971 = xor i32 %970, %936
  %972 = tail call i32 @llvm.fshl.i32(i32 %971, i32 %971, i32 1)
  %973 = tail call i32 @llvm.fshl.i32(i32 %965, i32 %965, i32 5)
  %974 = add i32 %972, -899497514
  %975 = add i32 %974, %942
  %976 = add i32 %975, %968
  %977 = add i32 %976, %973
  %978 = tail call i32 @llvm.fshl.i32(i32 %953, i32 %953, i32 30)
  %979 = xor i32 %978, %966
  %980 = xor i32 %979, %965
  %981 = xor i32 %816, %792
  %982 = xor i32 %981, %888
  %983 = xor i32 %982, %948
  %984 = tail call i32 @llvm.fshl.i32(i32 %983, i32 %983, i32 1)
  %985 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 5)
  %986 = add i32 %984, -899497514
  %987 = add i32 %986, %954
  %988 = add i32 %987, %980
  %989 = add i32 %988, %985
  %990 = tail call i32 @llvm.fshl.i32(i32 %965, i32 %965, i32 30)
  %991 = xor i32 %990, %978
  %992 = xor i32 %991, %977
  %993 = xor i32 %828, %804
  %994 = xor i32 %993, %900
  %995 = xor i32 %994, %960
  %996 = tail call i32 @llvm.fshl.i32(i32 %995, i32 %995, i32 1)
  %997 = tail call i32 @llvm.fshl.i32(i32 %989, i32 %989, i32 5)
  %998 = add i32 %996, -899497514
  %999 = add i32 %998, %966
  %1000 = add i32 %999, %992
  %1001 = add i32 %1000, %997
  %1002 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 30)
  %1003 = xor i32 %1002, %990
  %1004 = xor i32 %1003, %989
  %1005 = xor i32 %840, %816
  %1006 = xor i32 %1005, %912
  %1007 = xor i32 %1006, %972
  %1008 = tail call i32 @llvm.fshl.i32(i32 %1007, i32 %1007, i32 1)
  %1009 = tail call i32 @llvm.fshl.i32(i32 %1001, i32 %1001, i32 5)
  %1010 = tail call i32 @llvm.fshl.i32(i32 %989, i32 %989, i32 30)
  %1011 = add i32 %34, -899497514
  %1012 = add i32 %1011, %1008
  %1013 = add i32 %1012, %978
  %1014 = add i32 %1013, %1004
  %1015 = add i32 %1014, %1009
  store i32 %1015, ptr %0, align 4, !tbaa !5
  %1016 = add i32 %1001, %36
  store i32 %1016, ptr %35, align 4, !tbaa !5
  %1017 = add i32 %1010, %38
  store i32 %1017, ptr %37, align 4, !tbaa !5
  %1018 = add i32 %1002, %40
  store i32 %1018, ptr %39, align 4, !tbaa !5
  %1019 = add i32 %990, %42
  store i32 %1019, ptr %41, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1Init(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds [5 x i32], ptr %0, i64 0, i64 4
  store i32 -1009589776, ptr %2, align 4, !tbaa !5
  %3 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1, i64 1
  store i32 0, ptr %4, align 4, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = shl i32 %2, 3
  %7 = add i32 %5, %6
  store i32 %7, ptr %4, align 4, !tbaa !5
  %8 = icmp ult i32 %7, %5
  %9 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = zext i1 %8 to i32
  %12 = add i32 %10, %11
  %13 = lshr i32 %2, 29
  %14 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 1, i64 1
  %15 = add i32 %12, %13
  store i32 %15, ptr %14, align 4, !tbaa !5
  %16 = lshr i32 %5, 3
  %17 = and i32 %16, 63
  %18 = add i32 %17, %2
  %19 = icmp ugt i32 %18, 63
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2
  %22 = zext nneg i32 %17 to i64
  %23 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2, i64 %22
  %24 = sub nuw nsw i32 64, %17
  %25 = zext nneg i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %25, i1 false)
  tail call void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %21)
  %26 = xor i32 %17, 127
  %27 = icmp ult i32 %26, %2
  br i1 %27, label %28, label %37

28:                                               ; preds = %20, %28
  %29 = phi i32 [ %32, %28 ], [ %24, %20 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  tail call void @SHA1Transform(ptr noundef %0, ptr noundef %31)
  %32 = add i32 %29, 64
  %33 = add i32 %29, 127
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %28, label %37, !llvm.loop !9

35:                                               ; preds = %3
  %36 = zext nneg i32 %17 to i64
  br label %37

37:                                               ; preds = %28, %20, %35
  %38 = phi i32 [ 0, %35 ], [ %24, %20 ], [ %32, %28 ]
  %39 = phi i64 [ %36, %35 ], [ 0, %20 ], [ 0, %28 ]
  %40 = getelementptr inbounds %struct.SHA1_CTX, ptr %0, i64 0, i32 2, i64 %39
  %41 = zext i32 %38 to i64
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = sub i32 %2, %38
  %44 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %42, i64 %44, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Final(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = lshr i32 %5, 24
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 1, i64 0
  %9 = load i32, ptr %8, align 4, !tbaa !5
  store i8 -128, ptr %3, align 1, !tbaa !11
  %10 = add i32 %9, 8
  store i32 %10, ptr %8, align 4, !tbaa !5
  %11 = icmp ugt i32 %9, -9
  %12 = zext i1 %11 to i32
  %13 = add i32 %5, %12
  store i32 %13, ptr %4, align 4, !tbaa !5
  %14 = lshr i32 %9, 3
  %15 = and i32 %14, 63
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2, i64 63
  %20 = load i8, ptr %3, align 1
  store i8 %20, ptr %19, align 1
  tail call void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull %18)
  br label %23

21:                                               ; preds = %2
  %22 = zext nneg i32 %15 to i64
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %17 ]
  %25 = phi i64 [ %22, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2, i64 %25
  %27 = zext nneg i32 %24 to i64
  %28 = getelementptr inbounds i8, ptr %3, i64 %27
  %29 = xor i32 %24, 1
  %30 = zext nneg i32 %29 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %28, i64 %30, i1 false)
  %31 = load i32, ptr %8, align 4, !tbaa !5
  %32 = and i32 %31, 504
  %33 = icmp eq i32 %32, 448
  br i1 %33, label %61, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2
  %36 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2, i64 63
  br label %37

37:                                               ; preds = %34, %50
  %38 = phi i32 [ %31, %34 ], [ %58, %50 ]
  store i8 0, ptr %3, align 1, !tbaa !11
  %39 = add i32 %38, 8
  store i32 %39, ptr %8, align 4, !tbaa !5
  %40 = icmp ugt i32 %38, -9
  %41 = load i32, ptr %4, align 4, !tbaa !5
  %42 = zext i1 %40 to i32
  %43 = add i32 %41, %42
  store i32 %43, ptr %4, align 4, !tbaa !5
  %44 = lshr i32 %38, 3
  %45 = and i32 %44, 63
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i8 0, ptr %36, align 1
  tail call void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull %35)
  br label %50

48:                                               ; preds = %37
  %49 = zext nneg i32 %45 to i64
  br label %50

50:                                               ; preds = %47, %48
  %51 = phi i32 [ 0, %48 ], [ 1, %47 ]
  %52 = phi i64 [ %49, %48 ], [ 0, %47 ]
  %53 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2, i64 %52
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds i8, ptr %3, i64 %54
  %56 = xor i32 %51, 1
  %57 = zext nneg i32 %56 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr nonnull align 1 %55, i64 %57, i1 false)
  %58 = load i32, ptr %8, align 4, !tbaa !5
  %59 = and i32 %58, 504
  %60 = icmp eq i32 %59, 448
  br i1 %60, label %61, label %37, !llvm.loop !12

61:                                               ; preds = %50, %23
  %62 = phi i32 [ %31, %23 ], [ %58, %50 ]
  %63 = add i32 %62, 64
  store i32 %63, ptr %8, align 4, !tbaa !5
  %64 = icmp ugt i32 %62, -65
  %65 = load i32, ptr %4, align 4, !tbaa !5
  %66 = zext i1 %64 to i32
  %67 = add i32 %65, %66
  store i32 %67, ptr %4, align 4, !tbaa !5
  %68 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2
  %69 = getelementptr inbounds %struct.SHA1_CTX, ptr %1, i64 0, i32 2, i64 56
  %70 = zext i32 %9 to i64
  %71 = tail call i64 @llvm.bswap.i64(i64 %70)
  %72 = shl i32 %5, 24
  %73 = zext i32 %72 to i64
  %74 = or disjoint i64 %71, %73
  %75 = shl i32 %5, 8
  %76 = and i32 %75, 16711680
  %77 = zext nneg i32 %76 to i64
  %78 = or disjoint i64 %74, %77
  %79 = lshr i32 %5, 8
  %80 = and i32 %79, 65280
  %81 = zext nneg i32 %80 to i64
  %82 = or disjoint i64 %78, %81
  %83 = or disjoint i64 %82, %7
  store i64 %83, ptr %69, align 1
  tail call void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull %68)
  br label %84

84:                                               ; preds = %84, %61
  %85 = phi i64 [ 0, %61 ], [ %109, %84 ]
  %86 = lshr i64 %85, 2
  %87 = and i64 %86, 1073741823
  %88 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = trunc i64 %85 to i32
  %91 = shl i32 %90, 3
  %92 = and i32 %91, 16
  %93 = xor i32 %92, 24
  %94 = lshr i32 %89, %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %0, i64 %85
  store i8 %95, ptr %96, align 1, !tbaa !11
  %97 = or disjoint i64 %85, 1
  %98 = lshr i64 %85, 2
  %99 = and i64 %98, 1073741823
  %100 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !5
  %102 = trunc i64 %85 to i32
  %103 = shl i32 %102, 3
  %104 = and i32 %103, 16
  %105 = xor i32 %104, 16
  %106 = lshr i32 %101, %105
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds i8, ptr %0, i64 %97
  store i8 %107, ptr %108, align 1, !tbaa !11
  %109 = add nuw nsw i64 %85, 2
  %110 = icmp eq i64 %109, 20
  br i1 %110, label %111, label %84, !llvm.loop !13

111:                                              ; preds = %84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %1, i8 0, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca %struct.SHA1_CTX, align 16
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %4) #7
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %4, align 16, !tbaa !5
  %5 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 4
  store i32 -1009589776, ptr %5, align 16, !tbaa !5
  %6 = getelementptr inbounds %struct.SHA1_CTX, ptr %4, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SHA1_CTX, ptr %4, i64 0, i32 1, i64 1
  store i32 0, ptr %7, align 8, !tbaa !5
  store i32 0, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SHA1_CTX, ptr %4, i64 0, i32 2
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds %struct.SHA1_CTX, ptr %4, i64 0, i32 2, i64 63
  br label %13

13:                                               ; preds = %9, %29
  %14 = phi i64 [ 0, %9 ], [ %37, %29 ]
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i32, ptr %6, align 4, !tbaa !5
  %17 = add i32 %16, 8
  store i32 %17, ptr %6, align 4, !tbaa !5
  %18 = icmp ugt i32 %16, -9
  %19 = load i32, ptr %7, align 8, !tbaa !5
  %20 = zext i1 %18 to i32
  %21 = add i32 %19, %20
  store i32 %21, ptr %7, align 8, !tbaa !5
  %22 = lshr i32 %16, 3
  %23 = and i32 %22, 63
  %24 = icmp eq i32 %23, 63
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i8, ptr %15, align 1
  store i8 %26, ptr %12, align 1
  call void @SHA1Transform(ptr noundef nonnull %4, ptr noundef nonnull %10)
  br label %29

27:                                               ; preds = %13
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i32 [ 0, %27 ], [ 1, %25 ]
  %31 = phi i64 [ %28, %27 ], [ 0, %25 ]
  %32 = getelementptr inbounds %struct.SHA1_CTX, ptr %4, i64 0, i32 2, i64 %31
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds i8, ptr %15, i64 %33
  %35 = xor i32 %30, 1
  %36 = zext nneg i32 %35 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr align 1 %34, i64 %36, i1 false)
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %13, !llvm.loop !14

39:                                               ; preds = %29, %3
  call void @SHA1Final(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
