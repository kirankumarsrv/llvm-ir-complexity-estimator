; ModuleID = 'corpus_src/klib/keigen.c'
source_filename = "corpus_src/klib/keigen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @ke_core_strq(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %0, -1
  %6 = getelementptr double, ptr %1, i64 -1
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %323

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds double, ptr %1, i64 %9
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds double, ptr %3, i64 1
  %13 = add nsw i64 %11, -2
  %14 = getelementptr i8, ptr %1, i64 8
  br label %22

15:                                               ; preds = %317
  br i1 %7, label %16, label %323

16:                                               ; preds = %15
  %17 = getelementptr i8, ptr %3, i64 8
  %18 = zext nneg i32 %5 to i64
  %19 = shl nuw nsw i64 %18, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %3, ptr align 8 %17, i64 %19, i1 false), !tbaa !5
  %20 = zext nneg i32 %5 to i64
  %21 = getelementptr inbounds double, ptr %3, i64 %20
  store double 0.000000e+00, ptr %21, align 8, !tbaa !5
  store double 0.000000e+00, ptr %2, align 8, !tbaa !5
  br label %327

22:                                               ; preds = %8, %317
  %23 = phi i64 [ 0, %8 ], [ %322, %317 ]
  %24 = phi i32 [ 0, %8 ], [ %321, %317 ]
  %25 = phi i64 [ %11, %8 ], [ %34, %317 ]
  %26 = xor i64 %23, -1
  %27 = add i64 %26, %11
  %28 = xor i32 %24, -1
  %29 = add i32 %28, %0
  %30 = mul i32 %29, %0
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = getelementptr i8, ptr %1, i64 %32
  %34 = add nsw i64 %25, -1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i64 %34, 1
  br i1 %36, label %90, label %37

37:                                               ; preds = %22
  %38 = sub i64 %13, %23
  %39 = trunc i64 %34 to i32
  %40 = mul i32 %39, %0
  %41 = zext i32 %40 to i64
  %42 = getelementptr double, ptr %1, i64 %41
  %43 = and i64 %27, 3
  %44 = icmp ult i64 %38, 3
  br i1 %44, label %69, label %45

45:                                               ; preds = %37
  %46 = and i64 %27, -4
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 0, %45 ], [ %66, %47 ]
  %49 = phi double [ 0.000000e+00, %45 ], [ %65, %47 ]
  %50 = phi i64 [ 0, %45 ], [ %67, %47 ]
  %51 = getelementptr double, ptr %42, i64 %48
  %52 = load double, ptr %51, align 8, !tbaa !5
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %49)
  %54 = or disjoint i64 %48, 1
  %55 = getelementptr double, ptr %42, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !5
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %53)
  %58 = or disjoint i64 %48, 2
  %59 = getelementptr double, ptr %42, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !5
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %57)
  %62 = or disjoint i64 %48, 3
  %63 = getelementptr double, ptr %42, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !5
  %65 = tail call double @llvm.fmuladd.f64(double %64, double %64, double %61)
  %66 = add nuw nsw i64 %48, 4
  %67 = add i64 %50, 4
  %68 = icmp eq i64 %67, %46
  br i1 %68, label %69, label %47, !llvm.loop !9

69:                                               ; preds = %47, %37
  %70 = phi double [ undef, %37 ], [ %65, %47 ]
  %71 = phi i64 [ 0, %37 ], [ %66, %47 ]
  %72 = phi double [ 0.000000e+00, %37 ], [ %65, %47 ]
  %73 = icmp eq i64 %43, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69, %74
  %75 = phi i64 [ %81, %74 ], [ %71, %69 ]
  %76 = phi double [ %80, %74 ], [ %72, %69 ]
  %77 = phi i64 [ %82, %74 ], [ 0, %69 ]
  %78 = getelementptr double, ptr %42, i64 %75
  %79 = load double, ptr %78, align 8, !tbaa !5
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %79, double %76)
  %81 = add nuw nsw i64 %75, 1
  %82 = add i64 %77, 1
  %83 = icmp eq i64 %82, %43
  br i1 %83, label %84, label %74, !llvm.loop !11

84:                                               ; preds = %74, %69
  %85 = phi double [ %70, %69 ], [ %80, %74 ]
  %86 = fadd double %85, 1.000000e+00
  %87 = fcmp oeq double %86, 1.000000e+00
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds double, ptr %3, i64 %34
  store double 0.000000e+00, ptr %89, align 8, !tbaa !5
  br label %317

90:                                               ; preds = %22
  store double 0.000000e+00, ptr %12, align 8, !tbaa !5
  %91 = load double, ptr %10, align 8, !tbaa !5
  store double %91, ptr %12, align 8, !tbaa !5
  br label %317

92:                                               ; preds = %84
  %93 = tail call double @sqrt(double noundef %85) #9
  %94 = getelementptr inbounds double, ptr %3, i64 %34
  store double %93, ptr %94, align 8, !tbaa !5
  %95 = mul nsw i64 %34, %11
  %96 = mul nsw i32 %35, %0
  %97 = sext i32 %96 to i64
  %98 = getelementptr double, ptr %6, i64 %34
  %99 = getelementptr double, ptr %98, i64 %97
  %100 = load double, ptr %99, align 8, !tbaa !5
  %101 = fcmp ogt double %100, 0.000000e+00
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = fneg double %93
  store double %103, ptr %94, align 8, !tbaa !5
  %104 = load double, ptr %99, align 8, !tbaa !5
  br label %105

105:                                              ; preds = %92, %102
  %106 = phi double [ %103, %102 ], [ %93, %92 ]
  %107 = phi double [ %104, %102 ], [ %100, %92 ]
  %108 = fneg double %107
  %109 = tail call double @llvm.fmuladd.f64(double %108, double %106, double %85)
  %110 = fsub double %107, %106
  store double %110, ptr %99, align 8, !tbaa !5
  %111 = and i64 %95, 4294967295
  %112 = getelementptr double, ptr %1, i64 %95
  %113 = getelementptr double, ptr %1, i64 %34
  %114 = getelementptr double, ptr %1, i64 %111
  %115 = getelementptr double, ptr %1, i64 %111
  br label %116

116:                                              ; preds = %105, %197
  %117 = phi i64 [ 0, %105 ], [ %180, %197 ]
  %118 = phi i64 [ 1, %105 ], [ %203, %197 ]
  %119 = phi double [ 0.000000e+00, %105 ], [ %202, %197 ]
  %120 = getelementptr double, ptr %112, i64 %117
  %121 = load double, ptr %120, align 8, !tbaa !5
  %122 = fdiv double %121, %109
  %123 = mul nsw i64 %117, %11
  %124 = getelementptr double, ptr %113, i64 %123
  store double %122, ptr %124, align 8, !tbaa !5
  %125 = and i64 %123, 4294967295
  %126 = getelementptr double, ptr %1, i64 %125
  %127 = and i64 %118, 3
  %128 = icmp ult i64 %117, 3
  br i1 %128, label %161, label %129

129:                                              ; preds = %116
  %130 = and i64 %118, 9223372036854775804
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %158, %131 ]
  %133 = phi double [ 0.000000e+00, %129 ], [ %157, %131 ]
  %134 = phi i64 [ 0, %129 ], [ %159, %131 ]
  %135 = getelementptr double, ptr %126, i64 %132
  %136 = load double, ptr %135, align 8, !tbaa !5
  %137 = getelementptr double, ptr %114, i64 %132
  %138 = load double, ptr %137, align 8, !tbaa !5
  %139 = tail call double @llvm.fmuladd.f64(double %136, double %138, double %133)
  %140 = or disjoint i64 %132, 1
  %141 = getelementptr double, ptr %126, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !5
  %143 = getelementptr double, ptr %114, i64 %140
  %144 = load double, ptr %143, align 8, !tbaa !5
  %145 = tail call double @llvm.fmuladd.f64(double %142, double %144, double %139)
  %146 = or disjoint i64 %132, 2
  %147 = getelementptr double, ptr %126, i64 %146
  %148 = load double, ptr %147, align 8, !tbaa !5
  %149 = getelementptr double, ptr %114, i64 %146
  %150 = load double, ptr %149, align 8, !tbaa !5
  %151 = tail call double @llvm.fmuladd.f64(double %148, double %150, double %145)
  %152 = or disjoint i64 %132, 3
  %153 = getelementptr double, ptr %126, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !5
  %155 = getelementptr double, ptr %114, i64 %152
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %154, double %156, double %151)
  %158 = add nuw nsw i64 %132, 4
  %159 = add i64 %134, 4
  %160 = icmp eq i64 %159, %130
  br i1 %160, label %161, label %131, !llvm.loop !13

161:                                              ; preds = %131, %116
  %162 = phi double [ undef, %116 ], [ %157, %131 ]
  %163 = phi i64 [ 0, %116 ], [ %158, %131 ]
  %164 = phi double [ 0.000000e+00, %116 ], [ %157, %131 ]
  %165 = icmp eq i64 %127, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %161, %166
  %167 = phi i64 [ %175, %166 ], [ %163, %161 ]
  %168 = phi double [ %174, %166 ], [ %164, %161 ]
  %169 = phi i64 [ %176, %166 ], [ 0, %161 ]
  %170 = getelementptr double, ptr %126, i64 %167
  %171 = load double, ptr %170, align 8, !tbaa !5
  %172 = getelementptr double, ptr %114, i64 %167
  %173 = load double, ptr %172, align 8, !tbaa !5
  %174 = tail call double @llvm.fmuladd.f64(double %171, double %173, double %168)
  %175 = add nuw nsw i64 %167, 1
  %176 = add i64 %169, 1
  %177 = icmp eq i64 %176, %127
  br i1 %177, label %178, label %166, !llvm.loop !14

178:                                              ; preds = %166, %161
  %179 = phi double [ %162, %161 ], [ %174, %166 ]
  %180 = add nuw nsw i64 %117, 1
  %181 = icmp slt i64 %180, %34
  br i1 %181, label %182, label %197

182:                                              ; preds = %178
  %183 = getelementptr double, ptr %1, i64 %117
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ %118, %182 ], [ %193, %184 ]
  %186 = phi double [ %179, %182 ], [ %192, %184 ]
  %187 = mul nsw i64 %185, %11
  %188 = getelementptr double, ptr %183, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr double, ptr %115, i64 %185
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %186)
  %193 = add nuw nsw i64 %185, 1
  %194 = shl i64 %193, 32
  %195 = ashr exact i64 %194, 32
  %196 = icmp slt i64 %195, %34
  br i1 %196, label %184, label %197, !llvm.loop !15

197:                                              ; preds = %184, %178
  %198 = phi double [ %179, %178 ], [ %192, %184 ]
  %199 = fdiv double %198, %109
  %200 = getelementptr inbounds double, ptr %3, i64 %117
  store double %199, ptr %200, align 8, !tbaa !5
  %201 = load double, ptr %124, align 8, !tbaa !5
  %202 = tail call double @llvm.fmuladd.f64(double %198, double %201, double %119)
  %203 = add nuw nsw i64 %118, 1
  %204 = icmp eq i64 %180, %34
  br i1 %204, label %205, label %116, !llvm.loop !16

205:                                              ; preds = %197
  %206 = fadd double %109, %109
  %207 = fneg double %202
  %208 = fdiv double %207, %206
  %209 = and i64 %95, 4294967295
  %210 = getelementptr double, ptr %1, i64 %209
  %211 = getelementptr double, ptr %1, i64 %209
  %212 = getelementptr i8, ptr %14, i64 %32
  br label %213

213:                                              ; preds = %205, %313
  %214 = phi i64 [ 0, %205 ], [ %314, %313 ]
  %215 = phi i64 [ 1, %205 ], [ %315, %313 ]
  %216 = getelementptr double, ptr %210, i64 %214
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = getelementptr inbounds double, ptr %3, i64 %214
  %219 = load double, ptr %218, align 8, !tbaa !5
  %220 = tail call double @llvm.fmuladd.f64(double %208, double %217, double %219)
  store double %220, ptr %218, align 8, !tbaa !5
  %221 = fneg double %217
  %222 = fneg double %220
  %223 = trunc i64 %214 to i32
  %224 = mul i32 %223, %0
  %225 = zext i32 %224 to i64
  %226 = getelementptr double, ptr %1, i64 %225
  %227 = icmp ult i64 %215, 4
  br i1 %227, label %275, label %228

228:                                              ; preds = %213
  %229 = shl i64 %214, 3
  %230 = getelementptr i8, ptr %212, i64 %229
  %231 = add i64 %229, 8
  %232 = getelementptr i8, ptr %3, i64 %231
  %233 = getelementptr i8, ptr %1, i64 %231
  %234 = trunc i64 %214 to i32
  %235 = mul i32 %234, %0
  %236 = zext i32 %235 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = getelementptr i8, ptr %233, i64 %237
  %239 = getelementptr i8, ptr %1, i64 %237
  %240 = icmp ult ptr %239, %232
  %241 = icmp ugt ptr %238, %3
  %242 = and i1 %240, %241
  %243 = icmp ult ptr %239, %230
  %244 = icmp ult ptr %33, %238
  %245 = and i1 %243, %244
  %246 = or i1 %242, %245
  br i1 %246, label %275, label %247

247:                                              ; preds = %228
  %248 = and i64 %215, -4
  %249 = insertelement <2 x double> poison, double %221, i64 0
  %250 = shufflevector <2 x double> %249, <2 x double> poison, <2 x i32> zeroinitializer
  %251 = insertelement <2 x double> poison, double %222, i64 0
  %252 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> zeroinitializer
  br label %253

253:                                              ; preds = %253, %247
  %254 = phi i64 [ 0, %247 ], [ %271, %253 ]
  %255 = getelementptr double, ptr %226, i64 %254
  %256 = getelementptr double, ptr %255, i64 2
  %257 = load <2 x double>, ptr %255, align 8, !tbaa !5, !alias.scope !17, !noalias !20
  %258 = load <2 x double>, ptr %256, align 8, !tbaa !5, !alias.scope !17, !noalias !20
  %259 = getelementptr inbounds double, ptr %3, i64 %254
  %260 = getelementptr inbounds double, ptr %259, i64 2
  %261 = load <2 x double>, ptr %259, align 8, !tbaa !5, !alias.scope !23
  %262 = load <2 x double>, ptr %260, align 8, !tbaa !5, !alias.scope !23
  %263 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %250, <2 x double> %261, <2 x double> %257)
  %264 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %250, <2 x double> %262, <2 x double> %258)
  %265 = getelementptr double, ptr %211, i64 %254
  %266 = getelementptr double, ptr %265, i64 2
  %267 = load <2 x double>, ptr %265, align 8, !tbaa !5, !alias.scope !24
  %268 = load <2 x double>, ptr %266, align 8, !tbaa !5, !alias.scope !24
  %269 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %252, <2 x double> %267, <2 x double> %263)
  %270 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %252, <2 x double> %268, <2 x double> %264)
  store <2 x double> %269, ptr %255, align 8, !tbaa !5, !alias.scope !17, !noalias !20
  store <2 x double> %270, ptr %256, align 8, !tbaa !5, !alias.scope !17, !noalias !20
  %271 = add nuw i64 %254, 4
  %272 = icmp eq i64 %271, %248
  br i1 %272, label %273, label %253, !llvm.loop !25

273:                                              ; preds = %253
  %274 = icmp eq i64 %215, %248
  br i1 %274, label %313, label %275

275:                                              ; preds = %228, %213, %273
  %276 = phi i64 [ 0, %228 ], [ 0, %213 ], [ %248, %273 ]
  %277 = and i64 %215, 1
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %289, label %279

279:                                              ; preds = %275
  %280 = getelementptr double, ptr %226, i64 %276
  %281 = load double, ptr %280, align 8, !tbaa !5
  %282 = getelementptr inbounds double, ptr %3, i64 %276
  %283 = load double, ptr %282, align 8, !tbaa !5
  %284 = tail call double @llvm.fmuladd.f64(double %221, double %283, double %281)
  %285 = getelementptr double, ptr %211, i64 %276
  %286 = load double, ptr %285, align 8, !tbaa !5
  %287 = tail call double @llvm.fmuladd.f64(double %222, double %286, double %284)
  store double %287, ptr %280, align 8, !tbaa !5
  %288 = or disjoint i64 %276, 1
  br label %289

289:                                              ; preds = %279, %275
  %290 = phi i64 [ %276, %275 ], [ %288, %279 ]
  %291 = icmp eq i64 %214, %276
  br i1 %291, label %313, label %292

292:                                              ; preds = %289, %292
  %293 = phi i64 [ %311, %292 ], [ %290, %289 ]
  %294 = getelementptr double, ptr %226, i64 %293
  %295 = load double, ptr %294, align 8, !tbaa !5
  %296 = getelementptr inbounds double, ptr %3, i64 %293
  %297 = load double, ptr %296, align 8, !tbaa !5
  %298 = tail call double @llvm.fmuladd.f64(double %221, double %297, double %295)
  %299 = getelementptr double, ptr %211, i64 %293
  %300 = load double, ptr %299, align 8, !tbaa !5
  %301 = tail call double @llvm.fmuladd.f64(double %222, double %300, double %298)
  store double %301, ptr %294, align 8, !tbaa !5
  %302 = add nuw nsw i64 %293, 1
  %303 = getelementptr double, ptr %226, i64 %302
  %304 = load double, ptr %303, align 8, !tbaa !5
  %305 = getelementptr inbounds double, ptr %3, i64 %302
  %306 = load double, ptr %305, align 8, !tbaa !5
  %307 = tail call double @llvm.fmuladd.f64(double %221, double %306, double %304)
  %308 = getelementptr double, ptr %211, i64 %302
  %309 = load double, ptr %308, align 8, !tbaa !5
  %310 = tail call double @llvm.fmuladd.f64(double %222, double %309, double %307)
  store double %310, ptr %303, align 8, !tbaa !5
  %311 = add nuw nsw i64 %293, 2
  %312 = icmp eq i64 %311, %215
  br i1 %312, label %313, label %292, !llvm.loop !28

313:                                              ; preds = %289, %292, %273
  %314 = add nuw nsw i64 %214, 1
  %315 = add nuw i64 %215, 1
  %316 = icmp eq i64 %314, %34
  br i1 %316, label %317, label %213, !llvm.loop !29

317:                                              ; preds = %313, %90, %88
  %318 = phi double [ 0.000000e+00, %88 ], [ 0.000000e+00, %90 ], [ %109, %313 ]
  %319 = getelementptr inbounds double, ptr %2, i64 %34
  store double %318, ptr %319, align 8, !tbaa !5
  %320 = icmp sgt i64 %25, 2
  %321 = add i32 %24, 1
  %322 = add i64 %23, 1
  br i1 %320, label %22, label %15, !llvm.loop !30

323:                                              ; preds = %4, %15
  %324 = sext i32 %5 to i64
  %325 = getelementptr inbounds double, ptr %3, i64 %324
  store double 0.000000e+00, ptr %325, align 8, !tbaa !5
  store double 0.000000e+00, ptr %2, align 8, !tbaa !5
  %326 = icmp sgt i32 %0, 0
  br i1 %326, label %327, label %498

327:                                              ; preds = %16, %323
  %328 = zext nneg i32 %0 to i64
  %329 = zext nneg i32 %0 to i64
  %330 = add nuw i32 %0, 1
  %331 = add nuw i32 %0, 1
  br label %332

332:                                              ; preds = %327, %495
  %333 = phi i64 [ 0, %327 ], [ %496, %495 ]
  %334 = add nsw i64 %333, -1
  %335 = add nsw i64 %333, -1
  %336 = trunc i64 %333 to i32
  %337 = getelementptr inbounds double, ptr %2, i64 %333
  %338 = load double, ptr %337, align 8, !tbaa !5
  %339 = fcmp oeq double %338, 0.000000e+00
  %340 = icmp eq i64 %333, 0
  %341 = or i1 %340, %339
  %342 = mul nsw i64 %333, %328
  br i1 %341, label %449, label %343

343:                                              ; preds = %332
  %344 = and i64 %342, 4294967295
  %345 = getelementptr double, ptr %1, i64 %344
  %346 = getelementptr double, ptr %1, i64 %333
  %347 = and i64 %333, 3
  %348 = icmp ult i64 %335, 3
  %349 = and i64 %333, 9223372036854775804
  %350 = icmp eq i64 %347, 0
  %351 = and i64 %333, 1
  %352 = icmp eq i64 %333, 1
  %353 = and i64 %333, 9223372036854775806
  %354 = icmp eq i64 %351, 0
  br label %355

355:                                              ; preds = %343, %441
  %356 = phi i64 [ 0, %343 ], [ %442, %441 ]
  %357 = getelementptr double, ptr %1, i64 %356
  br i1 %348, label %358, label %379

358:                                              ; preds = %379, %355
  %359 = phi double [ undef, %355 ], [ %409, %379 ]
  %360 = phi i64 [ 0, %355 ], [ %410, %379 ]
  %361 = phi double [ 0.000000e+00, %355 ], [ %409, %379 ]
  br i1 %350, label %375, label %362

362:                                              ; preds = %358, %362
  %363 = phi i64 [ %372, %362 ], [ %360, %358 ]
  %364 = phi double [ %371, %362 ], [ %361, %358 ]
  %365 = phi i64 [ %373, %362 ], [ 0, %358 ]
  %366 = getelementptr double, ptr %345, i64 %363
  %367 = load double, ptr %366, align 8, !tbaa !5
  %368 = mul nsw i64 %363, %328
  %369 = getelementptr double, ptr %357, i64 %368
  %370 = load double, ptr %369, align 8, !tbaa !5
  %371 = tail call double @llvm.fmuladd.f64(double %367, double %370, double %364)
  %372 = add nuw nsw i64 %363, 1
  %373 = add i64 %365, 1
  %374 = icmp eq i64 %373, %347
  br i1 %374, label %375, label %362, !llvm.loop !31

375:                                              ; preds = %362, %358
  %376 = phi double [ %359, %358 ], [ %371, %362 ]
  %377 = fneg double %376
  %378 = getelementptr double, ptr %1, i64 %356
  br i1 %352, label %432, label %413

379:                                              ; preds = %355, %379
  %380 = phi i64 [ %410, %379 ], [ 0, %355 ]
  %381 = phi double [ %409, %379 ], [ 0.000000e+00, %355 ]
  %382 = phi i64 [ %411, %379 ], [ 0, %355 ]
  %383 = getelementptr double, ptr %345, i64 %380
  %384 = load double, ptr %383, align 8, !tbaa !5
  %385 = mul nsw i64 %380, %328
  %386 = getelementptr double, ptr %357, i64 %385
  %387 = load double, ptr %386, align 8, !tbaa !5
  %388 = tail call double @llvm.fmuladd.f64(double %384, double %387, double %381)
  %389 = or disjoint i64 %380, 1
  %390 = getelementptr double, ptr %345, i64 %389
  %391 = load double, ptr %390, align 8, !tbaa !5
  %392 = mul nsw i64 %389, %328
  %393 = getelementptr double, ptr %357, i64 %392
  %394 = load double, ptr %393, align 8, !tbaa !5
  %395 = tail call double @llvm.fmuladd.f64(double %391, double %394, double %388)
  %396 = or disjoint i64 %380, 2
  %397 = getelementptr double, ptr %345, i64 %396
  %398 = load double, ptr %397, align 8, !tbaa !5
  %399 = mul nsw i64 %396, %328
  %400 = getelementptr double, ptr %357, i64 %399
  %401 = load double, ptr %400, align 8, !tbaa !5
  %402 = tail call double @llvm.fmuladd.f64(double %398, double %401, double %395)
  %403 = or disjoint i64 %380, 3
  %404 = getelementptr double, ptr %345, i64 %403
  %405 = load double, ptr %404, align 8, !tbaa !5
  %406 = mul nsw i64 %403, %328
  %407 = getelementptr double, ptr %357, i64 %406
  %408 = load double, ptr %407, align 8, !tbaa !5
  %409 = tail call double @llvm.fmuladd.f64(double %405, double %408, double %402)
  %410 = add nuw nsw i64 %380, 4
  %411 = add i64 %382, 4
  %412 = icmp eq i64 %411, %349
  br i1 %412, label %358, label %379, !llvm.loop !32

413:                                              ; preds = %375, %413
  %414 = phi i64 [ %429, %413 ], [ 0, %375 ]
  %415 = phi i64 [ %430, %413 ], [ 0, %375 ]
  %416 = mul nsw i64 %414, %328
  %417 = getelementptr double, ptr %378, i64 %416
  %418 = load double, ptr %417, align 8, !tbaa !5
  %419 = getelementptr double, ptr %346, i64 %416
  %420 = load double, ptr %419, align 8, !tbaa !5
  %421 = tail call double @llvm.fmuladd.f64(double %377, double %420, double %418)
  store double %421, ptr %417, align 8, !tbaa !5
  %422 = or disjoint i64 %414, 1
  %423 = mul nsw i64 %422, %328
  %424 = getelementptr double, ptr %378, i64 %423
  %425 = load double, ptr %424, align 8, !tbaa !5
  %426 = getelementptr double, ptr %346, i64 %423
  %427 = load double, ptr %426, align 8, !tbaa !5
  %428 = tail call double @llvm.fmuladd.f64(double %377, double %427, double %425)
  store double %428, ptr %424, align 8, !tbaa !5
  %429 = add nuw nsw i64 %414, 2
  %430 = add i64 %415, 2
  %431 = icmp eq i64 %430, %353
  br i1 %431, label %432, label %413, !llvm.loop !33

432:                                              ; preds = %413, %375
  %433 = phi i64 [ 0, %375 ], [ %429, %413 ]
  br i1 %354, label %441, label %434

434:                                              ; preds = %432
  %435 = mul nsw i64 %433, %328
  %436 = getelementptr double, ptr %378, i64 %435
  %437 = load double, ptr %436, align 8, !tbaa !5
  %438 = getelementptr double, ptr %346, i64 %435
  %439 = load double, ptr %438, align 8, !tbaa !5
  %440 = tail call double @llvm.fmuladd.f64(double %377, double %439, double %437)
  store double %440, ptr %436, align 8, !tbaa !5
  br label %441

441:                                              ; preds = %432, %434
  %442 = add nuw nsw i64 %356, 1
  %443 = icmp eq i64 %442, %333
  br i1 %443, label %444, label %355, !llvm.loop !34

444:                                              ; preds = %441
  %445 = mul i32 %330, %336
  %446 = zext nneg i32 %445 to i64
  %447 = getelementptr inbounds double, ptr %1, i64 %446
  %448 = load double, ptr %447, align 8, !tbaa !5
  store double %448, ptr %337, align 8, !tbaa !5
  store double 1.000000e+00, ptr %447, align 8, !tbaa !5
  br label %454

449:                                              ; preds = %332
  %450 = mul i32 %331, %336
  %451 = zext nneg i32 %450 to i64
  %452 = getelementptr inbounds double, ptr %1, i64 %451
  %453 = load double, ptr %452, align 8, !tbaa !5
  store double %453, ptr %337, align 8, !tbaa !5
  store double 1.000000e+00, ptr %452, align 8, !tbaa !5
  br i1 %340, label %495, label %454

454:                                              ; preds = %444, %449
  %455 = and i64 %342, 4294967295
  %456 = getelementptr double, ptr %1, i64 %455
  %457 = getelementptr double, ptr %1, i64 %333
  %458 = and i64 %333, 3
  %459 = icmp ult i64 %334, 3
  br i1 %459, label %483, label %460

460:                                              ; preds = %454
  %461 = and i64 %333, 9223372036854775804
  br label %462

462:                                              ; preds = %462, %460
  %463 = phi i64 [ 0, %460 ], [ %480, %462 ]
  %464 = phi i64 [ 0, %460 ], [ %481, %462 ]
  %465 = getelementptr double, ptr %456, i64 %463
  store double 0.000000e+00, ptr %465, align 8, !tbaa !5
  %466 = mul nsw i64 %463, %328
  %467 = getelementptr double, ptr %457, i64 %466
  store double 0.000000e+00, ptr %467, align 8, !tbaa !5
  %468 = or disjoint i64 %463, 1
  %469 = getelementptr double, ptr %456, i64 %468
  store double 0.000000e+00, ptr %469, align 8, !tbaa !5
  %470 = mul nsw i64 %468, %328
  %471 = getelementptr double, ptr %457, i64 %470
  store double 0.000000e+00, ptr %471, align 8, !tbaa !5
  %472 = or disjoint i64 %463, 2
  %473 = getelementptr double, ptr %456, i64 %472
  store double 0.000000e+00, ptr %473, align 8, !tbaa !5
  %474 = mul nsw i64 %472, %328
  %475 = getelementptr double, ptr %457, i64 %474
  store double 0.000000e+00, ptr %475, align 8, !tbaa !5
  %476 = or disjoint i64 %463, 3
  %477 = getelementptr double, ptr %456, i64 %476
  store double 0.000000e+00, ptr %477, align 8, !tbaa !5
  %478 = mul nsw i64 %476, %328
  %479 = getelementptr double, ptr %457, i64 %478
  store double 0.000000e+00, ptr %479, align 8, !tbaa !5
  %480 = add nuw nsw i64 %463, 4
  %481 = add i64 %464, 4
  %482 = icmp eq i64 %481, %461
  br i1 %482, label %483, label %462, !llvm.loop !35

483:                                              ; preds = %462, %454
  %484 = phi i64 [ 0, %454 ], [ %480, %462 ]
  %485 = icmp eq i64 %458, 0
  br i1 %485, label %495, label %486

486:                                              ; preds = %483, %486
  %487 = phi i64 [ %492, %486 ], [ %484, %483 ]
  %488 = phi i64 [ %493, %486 ], [ 0, %483 ]
  %489 = getelementptr double, ptr %456, i64 %487
  store double 0.000000e+00, ptr %489, align 8, !tbaa !5
  %490 = mul nsw i64 %487, %328
  %491 = getelementptr double, ptr %457, i64 %490
  store double 0.000000e+00, ptr %491, align 8, !tbaa !5
  %492 = add nuw nsw i64 %487, 1
  %493 = add i64 %488, 1
  %494 = icmp eq i64 %493, %458
  br i1 %494, label %495, label %486, !llvm.loop !36

495:                                              ; preds = %483, %486, %449
  %496 = add nuw nsw i64 %333, 1
  %497 = icmp eq i64 %496, %329
  br i1 %497, label %498, label %332, !llvm.loop !37

498:                                              ; preds = %495, %323
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ke_core_sstq(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = sext i32 %0 to i64
  %9 = getelementptr double, ptr %2, i64 %8
  %10 = getelementptr double, ptr %9, i64 -1
  store double 0.000000e+00, ptr %10, align 8, !tbaa !5
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %12, label %261

12:                                               ; preds = %7
  %13 = icmp eq i32 %4, 0
  %14 = zext nneg i32 %0 to i64
  br label %23

15:                                               ; preds = %193
  br i1 %11, label %16, label %261

16:                                               ; preds = %15
  %17 = add nsw i32 %0, -1
  %18 = zext nneg i32 %0 to i64
  %19 = and i64 %14, 1
  %20 = icmp eq i32 %0, 1
  %21 = and i64 %14, 2147483646
  %22 = icmp eq i64 %19, 0
  br label %199

23:                                               ; preds = %12, %193
  %24 = phi i64 [ 1, %12 ], [ %197, %193 ]
  %25 = phi i64 [ 0, %12 ], [ %56, %193 ]
  %26 = phi double [ 0.000000e+00, %12 ], [ %195, %193 ]
  %27 = phi double [ 0.000000e+00, %12 ], [ %39, %193 ]
  %28 = xor i64 %25, -1
  %29 = add nsw i64 %28, %14
  %30 = getelementptr inbounds double, ptr %1, i64 %25
  %31 = load double, ptr %30, align 8, !tbaa !5
  %32 = tail call double @llvm.fabs.f64(double %31)
  %33 = getelementptr inbounds double, ptr %2, i64 %25
  %34 = load double, ptr %33, align 8, !tbaa !5
  %35 = tail call double @llvm.fabs.f64(double %34)
  %36 = fadd double %32, %35
  %37 = fmul double %36, %5
  %38 = fcmp ogt double %37, %27
  %39 = select i1 %38, double %37, double %27
  br label %40

40:                                               ; preds = %23, %49
  %41 = phi i64 [ %25, %23 ], [ %50, %49 ]
  %42 = getelementptr inbounds double, ptr %2, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !5
  %44 = tail call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %39
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = trunc i64 %41 to i32
  %48 = and i64 %41, 4294967295
  br label %52

49:                                               ; preds = %40
  %50 = add nuw nsw i64 %41, 1
  %51 = icmp eq i64 %50, %14
  br i1 %51, label %52, label %40, !llvm.loop !38

52:                                               ; preds = %49, %46
  %53 = phi i64 [ %48, %46 ], [ %14, %49 ]
  %54 = phi i32 [ %47, %46 ], [ %0, %49 ]
  %55 = icmp eq i64 %53, %25
  %56 = add nuw nsw i64 %25, 1
  br i1 %55, label %193, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds double, ptr %1, i64 %56
  %59 = icmp slt i64 %56, %8
  %60 = getelementptr inbounds double, ptr %1, i64 %53
  %61 = sext i32 %54 to i64
  %62 = icmp slt i64 %25, %61
  %63 = icmp ult i64 %29, 4
  %64 = and i64 %29, -4
  %65 = add i64 %24, %64
  %66 = getelementptr double, ptr %1, i64 %24
  %67 = icmp eq i64 %29, %64
  br label %68

68:                                               ; preds = %57, %183
  %69 = phi double [ %190, %183 ], [ %34, %57 ]
  %70 = phi double [ %189, %183 ], [ %31, %57 ]
  %71 = phi i32 [ %75, %183 ], [ 0, %57 ]
  %72 = phi double [ %113, %183 ], [ %26, %57 ]
  %73 = icmp eq i32 %71, %6
  br i1 %73, label %261, label %74

74:                                               ; preds = %68
  %75 = add nuw nsw i32 %71, 1
  %76 = load double, ptr %58, align 8, !tbaa !5
  %77 = fsub double %76, %70
  %78 = fmul double %69, 2.000000e+00
  %79 = fdiv double %77, %78
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %79, double 1.000000e+00)
  %81 = tail call double @llvm.sqrt.f64(double %80)
  %82 = fcmp ult double %79, 0.000000e+00
  %83 = fneg double %81
  %84 = select i1 %82, double %83, double %81
  %85 = fadd double %79, %84
  %86 = fdiv double %69, %85
  store double %86, ptr %30, align 8, !tbaa !5
  %87 = fsub double %70, %86
  br i1 %59, label %88, label %112

88:                                               ; preds = %74
  br i1 %63, label %103, label %89

89:                                               ; preds = %88
  %90 = insertelement <2 x double> poison, double %87, i64 0
  %91 = shufflevector <2 x double> %90, <2 x double> poison, <2 x i32> zeroinitializer
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi i64 [ 0, %89 ], [ %100, %92 ]
  %94 = getelementptr double, ptr %66, i64 %93
  %95 = getelementptr inbounds double, ptr %94, i64 2
  %96 = load <2 x double>, ptr %94, align 8, !tbaa !5
  %97 = load <2 x double>, ptr %95, align 8, !tbaa !5
  %98 = fsub <2 x double> %96, %91
  %99 = fsub <2 x double> %97, %91
  store <2 x double> %98, ptr %94, align 8, !tbaa !5
  store <2 x double> %99, ptr %95, align 8, !tbaa !5
  %100 = add nuw i64 %93, 4
  %101 = icmp eq i64 %100, %64
  br i1 %101, label %102, label %92, !llvm.loop !39

102:                                              ; preds = %92
  br i1 %67, label %112, label %103

103:                                              ; preds = %88, %102
  %104 = phi i64 [ %24, %88 ], [ %65, %102 ]
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i64 [ %110, %105 ], [ %104, %103 ]
  %107 = getelementptr inbounds double, ptr %1, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !5
  %109 = fsub double %108, %87
  store double %109, ptr %107, align 8, !tbaa !5
  %110 = add nuw nsw i64 %106, 1
  %111 = icmp eq i64 %110, %14
  br i1 %111, label %112, label %105, !llvm.loop !40

112:                                              ; preds = %105, %102, %74
  %113 = fadd double %72, %87
  %114 = load double, ptr %60, align 8, !tbaa !5
  br i1 %62, label %115, label %183

115:                                              ; preds = %112, %181
  %116 = phi i64 [ %120, %181 ], [ %61, %112 ]
  %117 = phi double [ %154, %181 ], [ 0.000000e+00, %112 ]
  %118 = phi double [ %157, %181 ], [ 1.000000e+00, %112 ]
  %119 = phi double [ %158, %181 ], [ %114, %112 ]
  %120 = add nsw i64 %116, -1
  %121 = getelementptr inbounds double, ptr %2, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !5
  %123 = fmul double %118, %122
  %124 = fmul double %119, %118
  %125 = tail call double @llvm.fabs.f64(double %119)
  %126 = tail call double @llvm.fabs.f64(double %122)
  %127 = fcmp ult double %125, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %115
  %129 = fdiv double %122, %119
  %130 = tail call double @llvm.fmuladd.f64(double %129, double %129, double 1.000000e+00)
  %131 = tail call double @llvm.sqrt.f64(double %130)
  %132 = fmul double %119, %117
  %133 = fmul double %132, %131
  %134 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %129, i64 1
  %135 = insertelement <2 x double> poison, double %131, i64 0
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer
  %137 = fdiv <2 x double> %134, %136
  br label %148

138:                                              ; preds = %115
  %139 = fdiv double %119, %122
  %140 = tail call double @llvm.fmuladd.f64(double %139, double %139, double 1.000000e+00)
  %141 = tail call double @llvm.sqrt.f64(double %140)
  %142 = fmul double %117, %122
  %143 = fmul double %141, %142
  %144 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %139, i64 0
  %145 = insertelement <2 x double> poison, double %141, i64 0
  %146 = shufflevector <2 x double> %145, <2 x double> poison, <2 x i32> zeroinitializer
  %147 = fdiv <2 x double> %144, %146
  br label %148

148:                                              ; preds = %138, %128
  %149 = phi double [ %143, %138 ], [ %133, %128 ]
  %150 = phi <2 x double> [ %147, %138 ], [ %137, %128 ]
  %151 = getelementptr inbounds double, ptr %2, i64 %116
  store double %149, ptr %151, align 8
  %152 = getelementptr inbounds double, ptr %1, i64 %120
  %153 = load double, ptr %152, align 8, !tbaa !5
  %154 = extractelement <2 x double> %150, i64 1
  %155 = fneg double %154
  %156 = fmul double %123, %155
  %157 = extractelement <2 x double> %150, i64 0
  %158 = tail call double @llvm.fmuladd.f64(double %157, double %153, double %156)
  %159 = fmul double %154, %153
  %160 = tail call double @llvm.fmuladd.f64(double %157, double %123, double %159)
  %161 = tail call double @llvm.fmuladd.f64(double %154, double %160, double %124)
  %162 = getelementptr inbounds double, ptr %1, i64 %116
  store double %161, ptr %162, align 8, !tbaa !5
  br i1 %13, label %181, label %163

163:                                              ; preds = %148
  %164 = getelementptr double, ptr %3, i64 %120
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi i64 [ 0, %163 ], [ %179, %165 ]
  %167 = mul nsw i64 %166, %8
  %168 = add i64 %167, %116
  %169 = shl i64 %168, 32
  %170 = ashr exact i64 %169, 32
  %171 = getelementptr inbounds double, ptr %3, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !5
  %173 = getelementptr double, ptr %164, i64 %167
  %174 = load double, ptr %173, align 8, !tbaa !5
  %175 = fmul double %157, %172
  %176 = tail call double @llvm.fmuladd.f64(double %154, double %174, double %175)
  store double %176, ptr %171, align 8, !tbaa !5
  %177 = fmul double %172, %155
  %178 = tail call double @llvm.fmuladd.f64(double %157, double %174, double %177)
  store double %178, ptr %173, align 8, !tbaa !5
  %179 = add nuw nsw i64 %166, 1
  %180 = icmp eq i64 %179, %14
  br i1 %180, label %181, label %165, !llvm.loop !41

181:                                              ; preds = %165, %148
  %182 = icmp sgt i64 %120, %25
  br i1 %182, label %115, label %183, !llvm.loop !42

183:                                              ; preds = %181, %112
  %184 = phi double [ %114, %112 ], [ %158, %181 ]
  %185 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %112 ], [ %150, %181 ]
  %186 = extractelement <2 x double> %185, i64 1
  %187 = fmul double %184, %186
  store double %187, ptr %33, align 8, !tbaa !5
  %188 = extractelement <2 x double> %185, i64 0
  %189 = fmul double %184, %188
  store double %189, ptr %30, align 8, !tbaa !5
  %190 = load double, ptr %33, align 8, !tbaa !5
  %191 = tail call double @llvm.fabs.f64(double %190)
  %192 = fcmp ogt double %191, %39
  br i1 %192, label %68, label %193, !llvm.loop !43

193:                                              ; preds = %183, %52
  %194 = phi double [ %31, %52 ], [ %189, %183 ]
  %195 = phi double [ %26, %52 ], [ %113, %183 ]
  %196 = fadd double %195, %194
  store double %196, ptr %30, align 8, !tbaa !5
  %197 = add nuw nsw i64 %24, 1
  %198 = icmp eq i64 %56, %14
  br i1 %198, label %15, label %23, !llvm.loop !44

199:                                              ; preds = %16, %258
  %200 = phi i64 [ 0, %16 ], [ %204, %258 ]
  %201 = phi i64 [ 1, %16 ], [ %259, %258 ]
  %202 = getelementptr inbounds double, ptr %1, i64 %200
  %203 = load double, ptr %202, align 8, !tbaa !5
  %204 = add nuw nsw i64 %200, 1
  %205 = icmp slt i64 %204, %8
  br i1 %205, label %206, label %258

206:                                              ; preds = %199
  %207 = getelementptr inbounds double, ptr %1, i64 %201
  %208 = load double, ptr %207, align 8, !tbaa !5
  %209 = fcmp ugt double %208, %203
  br i1 %209, label %219, label %210

210:                                              ; preds = %206, %215
  %211 = phi double [ %217, %215 ], [ %208, %206 ]
  %212 = phi i64 [ %213, %215 ], [ %201, %206 ]
  %213 = add nuw nsw i64 %212, 1
  %214 = icmp eq i64 %213, %18
  br i1 %214, label %223, label %215, !llvm.loop !45

215:                                              ; preds = %210
  %216 = getelementptr inbounds double, ptr %1, i64 %213
  %217 = load double, ptr %216, align 8, !tbaa !5
  %218 = fcmp ugt double %217, %211
  br i1 %218, label %219, label %210, !llvm.loop !45

219:                                              ; preds = %215, %206
  %220 = phi double [ %203, %206 ], [ %211, %215 ]
  %221 = phi i64 [ %200, %206 ], [ %212, %215 ]
  %222 = trunc i64 %221 to i32
  br label %223

223:                                              ; preds = %210, %219
  %224 = phi i32 [ %222, %219 ], [ %17, %210 ]
  %225 = phi double [ %220, %219 ], [ %211, %210 ]
  %226 = zext i32 %224 to i64
  %227 = icmp eq i64 %200, %226
  br i1 %227, label %258, label %228

228:                                              ; preds = %223
  %229 = sext i32 %224 to i64
  %230 = getelementptr inbounds double, ptr %1, i64 %229
  store double %203, ptr %230, align 8, !tbaa !5
  store double %225, ptr %202, align 8, !tbaa !5
  %231 = getelementptr double, ptr %3, i64 %200
  %232 = getelementptr double, ptr %3, i64 %229
  br i1 %20, label %250, label %233

233:                                              ; preds = %228, %233
  %234 = phi i64 [ %247, %233 ], [ 0, %228 ]
  %235 = phi i64 [ %248, %233 ], [ 0, %228 ]
  %236 = mul nsw i64 %234, %8
  %237 = getelementptr double, ptr %231, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !5
  %239 = getelementptr double, ptr %232, i64 %236
  %240 = load double, ptr %239, align 8, !tbaa !5
  store double %240, ptr %237, align 8, !tbaa !5
  store double %238, ptr %239, align 8, !tbaa !5
  %241 = or disjoint i64 %234, 1
  %242 = mul nsw i64 %241, %8
  %243 = getelementptr double, ptr %231, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !5
  %245 = getelementptr double, ptr %232, i64 %242
  %246 = load double, ptr %245, align 8, !tbaa !5
  store double %246, ptr %243, align 8, !tbaa !5
  store double %244, ptr %245, align 8, !tbaa !5
  %247 = add nuw nsw i64 %234, 2
  %248 = add i64 %235, 2
  %249 = icmp eq i64 %248, %21
  br i1 %249, label %250, label %233, !llvm.loop !46

250:                                              ; preds = %233, %228
  %251 = phi i64 [ 0, %228 ], [ %247, %233 ]
  br i1 %22, label %258, label %252

252:                                              ; preds = %250
  %253 = mul nsw i64 %251, %8
  %254 = getelementptr double, ptr %231, i64 %253
  %255 = load double, ptr %254, align 8, !tbaa !5
  %256 = getelementptr double, ptr %232, i64 %253
  %257 = load double, ptr %256, align 8, !tbaa !5
  store double %257, ptr %254, align 8, !tbaa !5
  store double %255, ptr %256, align 8, !tbaa !5
  br label %258

258:                                              ; preds = %252, %250, %199, %223
  %259 = add nuw nsw i64 %201, 1
  %260 = icmp eq i64 %204, %18
  br i1 %260, label %261, label %199, !llvm.loop !47

261:                                              ; preds = %68, %258, %7, %15
  %262 = phi i32 [ 0, %15 ], [ 0, %7 ], [ 0, %258 ], [ -1, %68 ]
  ret i32 %262
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ke_eigen_sd(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = fadd double %4, 1.000000e+00
  %8 = fcmp ugt double %7, 1.000000e+00
  %9 = select i1 %8, double %4, double 0x3E7AD7F29ABCAF48
  %10 = icmp slt i32 %5, 1
  %11 = select i1 %10, i32 50, i32 %5
  %12 = sext i32 %0 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #10
  tail call void @ke_core_strq(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %14)
  %15 = tail call i32 @ke_core_sstq(i32 noundef %0, ptr noundef %2, ptr noundef %14, ptr noundef %1, i32 noundef %3, double noundef %9, i32 noundef %11), !range !48
  tail call void @free(ptr noundef %14) #9
  ret i32 %15
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!21}
!24 = !{!22}
!25 = distinct !{!25, !10, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !10, !26}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10, !26, !27}
!40 = distinct !{!40, !10, !27, !26}
!41 = distinct !{!41, !10, !26}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{i32 -1, i32 1}
