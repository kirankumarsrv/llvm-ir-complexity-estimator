; ModuleID = 'corpus_src/inih/ini.c'
source_filename = "corpus_src/inih/ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ini_parse_string_ctx = type { ptr, i64 }

@.str = private unnamed_addr constant [15 x i8] c"reader != NULL\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"corpus_src/inih/ini.c\00", align 1
@__PRETTY_FUNCTION__.ini_parse_stream = private unnamed_addr constant [62 x i8] c"int ini_parse_stream(ini_reader, void *, ini_handler, void *)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stream != NULL\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"handler != NULL\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ini_parse_stream(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [200 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %6, i8 0, i64 50, i1 false)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %7, i8 0, i64 50, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.ini_parse_stream) #9
  unreachable

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.ini_parse_stream) #9
  unreachable

14:                                               ; preds = %11
  %15 = icmp eq ptr %2, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = call ptr %0(ptr noundef nonnull %5, i32 noundef 200, ptr noundef nonnull %1) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %361, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [200 x i8], ptr %5, i64 0, i64 198
  %21 = getelementptr inbounds i8, ptr %5, i64 1
  %22 = getelementptr inbounds i8, ptr %5, i64 2
  br label %24

23:                                               ; preds = %14
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 129, ptr noundef nonnull @__PRETTY_FUNCTION__.ini_parse_stream) #9
  unreachable

24:                                               ; preds = %19, %357
  %25 = phi i32 [ 0, %19 ], [ %358, %357 ]
  %26 = phi i32 [ 0, %19 ], [ %28, %357 ]
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #10
  %28 = add nuw nsw i32 %26, 1
  %29 = icmp ne i64 %27, 199
  %30 = load i8, ptr %20, align 2
  %31 = icmp eq i8 %30, 10
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %24
  %34 = call ptr %0(ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %1) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33, %47
  %37 = phi i32 [ %39, %47 ], [ %25, %33 ]
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %28, i32 %37
  %40 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #10
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = add i64 %40, -1
  %44 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 10
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %36
  %48 = call ptr %0(ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %1) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36, !llvm.loop !8

50:                                               ; preds = %42, %47, %33, %24
  %51 = phi i32 [ %25, %24 ], [ %25, %33 ], [ %39, %47 ], [ %39, %42 ]
  %52 = icmp eq i32 %26, 0
  %53 = load i8, ptr %5, align 16
  %54 = icmp eq i8 %53, -17
  %55 = select i1 %52, i1 %54, i1 false
  %56 = load i8, ptr %21, align 1
  %57 = icmp eq i8 %56, -69
  %58 = select i1 %55, i1 %57, i1 false
  %59 = load i8, ptr %22, align 2
  %60 = icmp eq i8 %59, -65
  %61 = select i1 %58, i1 %60, i1 false
  %62 = select i1 %61, i64 3, i64 0
  %63 = getelementptr inbounds i8, ptr %5, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %50
  %67 = tail call ptr @__ctype_b_loc() #11
  %68 = load ptr, ptr %67, align 8, !tbaa !10
  br label %69

69:                                               ; preds = %77, %66
  %70 = phi i8 [ %64, %66 ], [ %79, %77 ]
  %71 = phi ptr [ %63, %66 ], [ %78, %77 ]
  %72 = zext i8 %70 to i64
  %73 = getelementptr inbounds i16, ptr %68, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !12
  %75 = and i16 %74, 8192
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds i8, ptr %71, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !5
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %69, !llvm.loop !14

81:                                               ; preds = %69, %77, %50
  %82 = phi i8 [ 0, %50 ], [ %70, %69 ], [ 0, %77 ]
  %83 = phi ptr [ %63, %50 ], [ %71, %69 ], [ %78, %77 ]
  %84 = getelementptr inbounds i8, ptr %5, i64 %27
  %85 = icmp ugt ptr %84, %83
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = tail call ptr @__ctype_b_loc() #11
  br label %88

88:                                               ; preds = %98, %86
  %89 = phi ptr [ %84, %86 ], [ %91, %98 ]
  %90 = load ptr, ptr %87, align 8, !tbaa !10
  %91 = getelementptr inbounds i8, ptr %89, i64 -1
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i16, ptr %90, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !12
  %96 = and i16 %95, 8192
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %88
  store i8 0, ptr %91, align 1, !tbaa !5
  %99 = icmp ugt ptr %91, %83
  br i1 %99, label %88, label %100, !llvm.loop !15

100:                                              ; preds = %98, %88
  %101 = load i8, ptr %83, align 1, !tbaa !5
  br label %102

102:                                              ; preds = %100, %81
  %103 = phi i8 [ %101, %100 ], [ %82, %81 ]
  %104 = zext nneg i8 %103 to i64
  %105 = icmp ugt i8 %103, 63
  %106 = shl nuw i64 1, %104
  %107 = and i64 %106, 576460786663161857
  %108 = icmp eq i64 %107, 0
  %109 = select i1 %105, i1 true, i1 %108
  br i1 %109, label %110, label %357

110:                                              ; preds = %102
  %111 = load i8, ptr %7, align 16, !tbaa !5
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %158, label %113

113:                                              ; preds = %110
  %114 = icmp ne i8 %103, 0
  %115 = icmp ugt ptr %83, %5
  %116 = and i1 %115, %114
  br i1 %116, label %117, label %158

117:                                              ; preds = %113, %124
  %118 = phi i8 [ %133, %124 ], [ %103, %113 ]
  %119 = phi i32 [ %131, %124 ], [ 0, %113 ]
  %120 = phi ptr [ %132, %124 ], [ %83, %113 ]
  %121 = icmp ne i32 %119, 0
  %122 = icmp eq i8 %118, 59
  %123 = and i1 %122, %121
  br i1 %123, label %135, label %124

124:                                              ; preds = %117
  %125 = tail call ptr @__ctype_b_loc() #11
  %126 = load ptr, ptr %125, align 8, !tbaa !10
  %127 = zext i8 %118 to i64
  %128 = getelementptr inbounds i16, ptr %126, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !12
  %130 = and i16 %129, 8192
  %131 = zext nneg i16 %130 to i32
  %132 = getelementptr inbounds i8, ptr %120, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %117, !llvm.loop !16

135:                                              ; preds = %117, %124
  %136 = phi ptr [ %120, %117 ], [ %132, %124 ]
  store i8 0, ptr %136, align 1, !tbaa !5
  %137 = icmp ugt ptr %136, %83
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = tail call ptr @__ctype_b_loc() #11
  br label %140

140:                                              ; preds = %150, %138
  %141 = phi ptr [ %136, %138 ], [ %143, %150 ]
  %142 = load ptr, ptr %139, align 8, !tbaa !10
  %143 = getelementptr inbounds i8, ptr %141, i64 -1
  %144 = load i8, ptr %143, align 1, !tbaa !5
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds i16, ptr %142, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !12
  %148 = and i16 %147, 8192
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %140
  store i8 0, ptr %143, align 1, !tbaa !5
  %151 = icmp ugt ptr %143, %83
  br i1 %151, label %140, label %152, !llvm.loop !15

152:                                              ; preds = %140, %150, %135
  %153 = call i32 %2(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %83) #8
  %154 = icmp ne i32 %153, 0
  %155 = icmp ne i32 %51, 0
  %156 = select i1 %154, i1 true, i1 %155
  %157 = select i1 %156, i32 %51, i32 %28
  br label %357

158:                                              ; preds = %113, %110
  switch i8 %103, label %218 [
    i8 91, label %159
    i8 0, label %357
  ]

159:                                              ; preds = %158
  %160 = getelementptr inbounds i8, ptr %83, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !5
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %215, label %163

163:                                              ; preds = %159, %172
  %164 = phi i8 [ %181, %172 ], [ %161, %159 ]
  %165 = phi i32 [ %179, %172 ], [ 0, %159 ]
  %166 = phi ptr [ %180, %172 ], [ %160, %159 ]
  %167 = icmp eq i8 %164, 93
  br i1 %167, label %183, label %168

168:                                              ; preds = %163
  %169 = icmp ne i32 %165, 0
  %170 = icmp eq i8 %164, 59
  %171 = and i1 %170, %169
  br i1 %171, label %215, label %172

172:                                              ; preds = %168
  %173 = tail call ptr @__ctype_b_loc() #11
  %174 = load ptr, ptr %173, align 8, !tbaa !10
  %175 = zext i8 %164 to i64
  %176 = getelementptr inbounds i16, ptr %174, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !12
  %178 = and i16 %177, 8192
  %179 = zext nneg i16 %178 to i32
  %180 = getelementptr inbounds i8, ptr %166, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !5
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %215, label %163, !llvm.loop !16

183:                                              ; preds = %163
  store i8 0, ptr %166, align 1, !tbaa !5
  br label %184

184:                                              ; preds = %209, %183
  %185 = phi i64 [ 0, %183 ], [ %211, %209 ]
  %186 = getelementptr inbounds i8, ptr %160, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !5
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %212, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds i8, ptr %6, i64 %185
  store i8 %187, ptr %190, align 4, !tbaa !5
  %191 = or disjoint i64 %185, 1
  %192 = icmp eq i64 %191, 49
  br i1 %192, label %212, label %193, !llvm.loop !17

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %160, i64 %191
  %195 = load i8, ptr %194, align 1, !tbaa !5
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %212, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, ptr %6, i64 %191
  store i8 %195, ptr %198, align 1, !tbaa !5
  %199 = or disjoint i64 %185, 2
  %200 = getelementptr inbounds i8, ptr %160, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !5
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds i8, ptr %6, i64 %199
  store i8 %201, ptr %204, align 2, !tbaa !5
  %205 = or disjoint i64 %185, 3
  %206 = getelementptr inbounds i8, ptr %160, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !5
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds i8, ptr %6, i64 %205
  store i8 %207, ptr %210, align 1, !tbaa !5
  %211 = add nuw nsw i64 %185, 4
  br label %184

212:                                              ; preds = %203, %197, %193, %184, %189
  %213 = phi i64 [ 49, %189 ], [ %185, %184 ], [ %191, %193 ], [ %199, %197 ], [ %205, %203 ]
  %214 = getelementptr inbounds i8, ptr %6, i64 %213
  store i8 0, ptr %214, align 1, !tbaa !5
  store i8 0, ptr %7, align 16, !tbaa !5
  br label %357

215:                                              ; preds = %172, %168, %159
  %216 = icmp eq i32 %51, 0
  %217 = select i1 %216, i32 %28, i32 %51
  br label %357

218:                                              ; preds = %158, %232
  %219 = phi i8 [ %240, %232 ], [ %103, %158 ]
  %220 = phi i32 [ %238, %232 ], [ 0, %158 ]
  %221 = phi ptr [ %239, %232 ], [ %83, %158 ]
  %222 = zext i8 %219 to i64
  %223 = icmp ugt i8 %219, 63
  %224 = shl nuw i64 1, %222
  %225 = and i64 %224, 2594073385365405697
  %226 = icmp eq i64 %225, 0
  %227 = select i1 %223, i1 true, i1 %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %218
  %229 = icmp ne i32 %220, 0
  %230 = icmp eq i8 %219, 59
  %231 = and i1 %230, %229
  br i1 %231, label %354, label %232

232:                                              ; preds = %228
  %233 = tail call ptr @__ctype_b_loc() #11
  %234 = load ptr, ptr %233, align 8, !tbaa !10
  %235 = getelementptr inbounds i16, ptr %234, i64 %222
  %236 = load i16, ptr %235, align 2, !tbaa !12
  %237 = and i16 %236, 8192
  %238 = zext nneg i16 %237 to i32
  %239 = getelementptr inbounds i8, ptr %221, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !5
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %354, label %218, !llvm.loop !16

242:                                              ; preds = %218
  switch i8 %219, label %354 [
    i8 61, label %243
    i8 58, label %243
  ]

243:                                              ; preds = %242, %242
  store i8 0, ptr %221, align 1, !tbaa !5
  %244 = icmp ugt ptr %221, %83
  br i1 %244, label %245, label %259

245:                                              ; preds = %243
  %246 = tail call ptr @__ctype_b_loc() #11
  br label %247

247:                                              ; preds = %257, %245
  %248 = phi ptr [ %221, %245 ], [ %250, %257 ]
  %249 = load ptr, ptr %246, align 8, !tbaa !10
  %250 = getelementptr inbounds i8, ptr %248, i64 -1
  %251 = load i8, ptr %250, align 1, !tbaa !5
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds i16, ptr %249, i64 %252
  %254 = load i16, ptr %253, align 2, !tbaa !12
  %255 = and i16 %254, 8192
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %247
  store i8 0, ptr %250, align 1, !tbaa !5
  %258 = icmp ugt ptr %250, %83
  br i1 %258, label %247, label %259, !llvm.loop !15

259:                                              ; preds = %247, %257, %243
  %260 = getelementptr inbounds i8, ptr %221, i64 1
  %261 = load i8, ptr %260, align 1, !tbaa !5
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %281, label %263

263:                                              ; preds = %259, %270
  %264 = phi i8 [ %279, %270 ], [ %261, %259 ]
  %265 = phi i32 [ %277, %270 ], [ 0, %259 ]
  %266 = phi ptr [ %278, %270 ], [ %260, %259 ]
  %267 = icmp ne i32 %265, 0
  %268 = icmp eq i8 %264, 59
  %269 = and i1 %268, %267
  br i1 %269, label %281, label %270

270:                                              ; preds = %263
  %271 = tail call ptr @__ctype_b_loc() #11
  %272 = load ptr, ptr %271, align 8, !tbaa !10
  %273 = zext i8 %264 to i64
  %274 = getelementptr inbounds i16, ptr %272, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !12
  %276 = and i16 %275, 8192
  %277 = zext nneg i16 %276 to i32
  %278 = getelementptr inbounds i8, ptr %266, i64 1
  %279 = load i8, ptr %278, align 1, !tbaa !5
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %263, !llvm.loop !16

281:                                              ; preds = %263, %270, %259
  %282 = phi ptr [ %260, %259 ], [ %278, %270 ], [ %266, %263 ]
  store i8 0, ptr %282, align 1, !tbaa !5
  %283 = load i8, ptr %260, align 1, !tbaa !5
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %300, label %285

285:                                              ; preds = %281
  %286 = tail call ptr @__ctype_b_loc() #11
  %287 = load ptr, ptr %286, align 8, !tbaa !10
  br label %288

288:                                              ; preds = %296, %285
  %289 = phi i8 [ %283, %285 ], [ %298, %296 ]
  %290 = phi ptr [ %260, %285 ], [ %297, %296 ]
  %291 = zext i8 %289 to i64
  %292 = getelementptr inbounds i16, ptr %287, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !12
  %294 = and i16 %293, 8192
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %288
  %297 = getelementptr inbounds i8, ptr %290, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !5
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %288, !llvm.loop !14

300:                                              ; preds = %288, %296, %281
  %301 = phi ptr [ %260, %281 ], [ %290, %288 ], [ %297, %296 ]
  %302 = icmp ugt ptr %282, %301
  br i1 %302, label %303, label %317

303:                                              ; preds = %300
  %304 = tail call ptr @__ctype_b_loc() #11
  br label %305

305:                                              ; preds = %315, %303
  %306 = phi ptr [ %282, %303 ], [ %308, %315 ]
  %307 = load ptr, ptr %304, align 8, !tbaa !10
  %308 = getelementptr inbounds i8, ptr %306, i64 -1
  %309 = load i8, ptr %308, align 1, !tbaa !5
  %310 = zext i8 %309 to i64
  %311 = getelementptr inbounds i16, ptr %307, i64 %310
  %312 = load i16, ptr %311, align 2, !tbaa !12
  %313 = and i16 %312, 8192
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %305
  store i8 0, ptr %308, align 1, !tbaa !5
  %316 = icmp ugt ptr %308, %301
  br i1 %316, label %305, label %317, !llvm.loop !15

317:                                              ; preds = %305, %315, %300
  br label %318

318:                                              ; preds = %343, %317
  %319 = phi i64 [ 0, %317 ], [ %345, %343 ]
  %320 = getelementptr inbounds i8, ptr %83, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !5
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %346, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %7, i64 %319
  store i8 %321, ptr %324, align 4, !tbaa !5
  %325 = or disjoint i64 %319, 1
  %326 = icmp eq i64 %325, 49
  br i1 %326, label %346, label %327, !llvm.loop !17

327:                                              ; preds = %323
  %328 = getelementptr inbounds i8, ptr %83, i64 %325
  %329 = load i8, ptr %328, align 1, !tbaa !5
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %346, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %7, i64 %325
  store i8 %329, ptr %332, align 1, !tbaa !5
  %333 = or disjoint i64 %319, 2
  %334 = getelementptr inbounds i8, ptr %83, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !5
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds i8, ptr %7, i64 %333
  store i8 %335, ptr %338, align 2, !tbaa !5
  %339 = or disjoint i64 %319, 3
  %340 = getelementptr inbounds i8, ptr %83, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !5
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %337
  %344 = getelementptr inbounds i8, ptr %7, i64 %339
  store i8 %341, ptr %344, align 1, !tbaa !5
  %345 = add nuw nsw i64 %319, 4
  br label %318

346:                                              ; preds = %337, %331, %327, %318, %323
  %347 = phi i64 [ 49, %323 ], [ %319, %318 ], [ %325, %327 ], [ %333, %331 ], [ %339, %337 ]
  %348 = getelementptr inbounds i8, ptr %7, i64 %347
  store i8 0, ptr %348, align 1, !tbaa !5
  %349 = call i32 %2(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef %301) #8
  %350 = icmp ne i32 %349, 0
  %351 = icmp ne i32 %51, 0
  %352 = select i1 %350, i1 true, i1 %351
  %353 = select i1 %352, i32 %51, i32 %28
  br label %357

354:                                              ; preds = %228, %232, %242
  %355 = icmp eq i32 %51, 0
  %356 = select i1 %355, i32 %28, i32 %51
  br label %357

357:                                              ; preds = %354, %346, %215, %152, %158, %212, %102
  %358 = phi i32 [ %51, %102 ], [ %51, %212 ], [ %157, %152 ], [ %217, %215 ], [ %51, %158 ], [ %353, %346 ], [ %356, %354 ]
  %359 = call ptr %0(ptr noundef nonnull %5, i32 noundef 200, ptr noundef nonnull %1) #8
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %24, !llvm.loop !18

361:                                              ; preds = %357, %16
  %362 = phi i32 [ 0, %16 ], [ %358, %357 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #8
  ret i32 %362
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ini_parse_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @ini_parse_stream(ptr noundef nonnull @fgets, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ini_parse(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @ini_parse_stream(ptr noundef nonnull @fgets, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  %8 = tail call i32 @fclose(ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i32 [ %7, %6 ], [ -1, %3 ]
  ret i32 %10
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ini_parse_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ini_parse_string_ctx, align 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store ptr %0, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.ini_parse_string_ctx, ptr %4, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !22
  %7 = call i32 @ini_parse_stream(ptr noundef nonnull @ini_reader_string, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ini_parse_string_length(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ini_parse_string_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.ini_parse_string_ctx, ptr %5, i64 0, i32 1
  store i64 %1, ptr %6, align 8, !tbaa !22
  %7 = call i32 @ini_parse_stream(ptr noundef nonnull @ini_reader_string, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @ini_reader_string(ptr noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2) #6 {
  %4 = getelementptr inbounds %struct.ini_parse_string_ctx, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  %7 = icmp slt i32 %1, 2
  %8 = or i1 %7, %6
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !19
  br label %16

11:                                               ; preds = %16
  %12 = add nsw i32 %20, -1
  %13 = icmp sgt i32 %20, 2
  %14 = icmp ne i64 %23, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %26, !llvm.loop !23

16:                                               ; preds = %9, %11
  %17 = phi ptr [ %24, %11 ], [ %0, %9 ]
  %18 = phi i64 [ %23, %11 ], [ %5, %9 ]
  %19 = phi ptr [ %21, %11 ], [ %10, %9 ]
  %20 = phi i32 [ %12, %11 ], [ %1, %9 ]
  %21 = getelementptr inbounds i8, ptr %19, i64 1
  %22 = load i8, ptr %19, align 1, !tbaa !5
  %23 = add i64 %18, -1
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %22, ptr %17, align 1, !tbaa !5
  %25 = icmp eq i8 %22, 10
  br i1 %25, label %26, label %11

26:                                               ; preds = %16, %11
  store i8 0, ptr %24, align 1, !tbaa !5
  store ptr %21, ptr %2, align 8, !tbaa !19
  store i64 %23, ptr %4, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %3, %26
  %28 = phi ptr [ %0, %26 ], [ null, %3 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = !{!20, !11, i64 0}
!20 = !{!"", !11, i64 0, !21, i64 8}
!21 = !{!"long", !6, i64 0}
!22 = !{!20, !21, i64 8}
!23 = distinct !{!23, !9}
