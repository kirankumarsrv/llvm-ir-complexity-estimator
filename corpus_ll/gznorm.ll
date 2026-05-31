; ModuleID = 'corpus_zlib/examples/gznorm.c'
source_filename = "corpus_zlib/examples/gznorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"gznorm error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\1F\8B\08\00\00\00\00\00\00\FF\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"input invalid: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"overflow error\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"input invalid: incomplete gzip stream\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"i/o error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %4 = load ptr, ptr @stdin, align 8
  %5 = load ptr, ptr @stdout, align 8
  %6 = call i32 @gzip_normalize(ptr noundef %4, ptr noundef %5, ptr noundef %2)
  store i32 %6, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load ptr, ptr @stderr, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str, ptr noundef %11)
  br label %13

13:                                               ; preds = %9, %0
  %14 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %14) #6
  %15 = load i32, ptr %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gzip_normalize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.z_stream_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [16384 x i8], align 16
  %21 = alloca [16384 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 9
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 10
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  store ptr null, ptr %33, align 8
  %34 = call i32 @inflateInit2_(ptr noundef %8, i32 noundef 31, ptr noundef @.str.1, i32 noundef 112)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36
  %38 = call i32 @inflateEnd(ptr noundef %8)
  %39 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.2)
  %40 = load ptr, ptr %7, align 8
  store ptr %39, ptr %40, align 8
  store i32 1, ptr %4, align 4
  br label %535

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %3
  store i32 0, ptr %9, align 4
  store i64 0, ptr %10, align 8
  store i64 0, ptr %11, align 8
  store i64 0, ptr %12, align 8
  store i32 0, ptr %13, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = call i64 @fwrite(ptr noundef @.str.3, i64 noundef 1, i64 noundef 10, ptr noundef %43)
  br label %45

45:                                               ; preds = %443, %42
  %46 = getelementptr inbounds [16384 x i8], ptr %20, i64 0, i64 0
  %47 = load ptr, ptr %5, align 8
  %48 = call i64 @fread(ptr noundef %46, i64 noundef 1, i64 noundef 16384, ptr noundef %47)
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %446

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 16384
  %59 = zext i1 %58 to i32
  store i32 %59, ptr %14, align 4
  %60 = getelementptr inbounds [16384 x i8], ptr %20, i64 0, i64 0
  store ptr %60, ptr %15, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  store ptr %60, ptr %61, align 8
  br label %62

62:                                               ; preds = %438, %55
  br label %63

63:                                               ; preds = %130, %62
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  store i32 16384, ptr %64, align 8
  %65 = getelementptr inbounds [16384 x i8], ptr %21, i64 0, i64 0
  %66 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 3
  store ptr %65, ptr %66, align 8
  %67 = call i32 @inflate(ptr noundef %8, i32 noundef 5)
  store i32 %67, ptr %22, align 4
  %68 = load i32, ptr %22, align 4
  %69 = icmp eq i32 %68, -4
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = call i32 @inflateEnd(ptr noundef %8)
  %73 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.2)
  %74 = load ptr, ptr %7, align 8
  store ptr %73, ptr %74, align 8
  store i32 1, ptr %4, align 4
  br label %535

75:                                               ; No predecessors!
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, ptr %22, align 4
  %78 = icmp eq i32 %77, -3
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79
  %81 = call i32 @inflateEnd(ptr noundef %8)
  %82 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.4, ptr noundef %83)
  %85 = load ptr, ptr %7, align 8
  store ptr %84, ptr %85, align 8
  store i32 1, ptr %4, align 4
  br label %535

86:                                               ; No predecessors!
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, ptr %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, ptr %22, align 4
  %92 = icmp ne i32 %91, -5
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, ptr %22, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96
  %98 = call i32 @inflateEnd(ptr noundef %8)
  %99 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.5)
  %100 = load ptr, ptr %7, align 8
  store ptr %99, ptr %100, align 8
  store i32 1, ptr %4, align 4
  br label %535

101:                                              ; No predecessors!
  br label %102

102:                                              ; preds = %101, %93, %90, %87
  %103 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  %105 = sub i32 16384, %104
  store i32 %105, ptr %23, align 4
  %106 = load i32, ptr %23, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, ptr %17, align 8
  %109 = add i64 %108, %107
  store i64 %109, ptr %17, align 8
  %110 = load i64, ptr %17, align 8
  %111 = load i32, ptr %23, align 4
  %112 = zext i32 %111 to i64
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114
  %116 = call i32 @inflateEnd(ptr noundef %8)
  %117 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.6)
  %118 = load ptr, ptr %7, align 8
  store ptr %117, ptr %118, align 8
  store i32 1, ptr %4, align 4
  br label %535

119:                                              ; No predecessors!
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 128
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %125, %121
  %131 = phi i1 [ false, %121 ], [ %129, %125 ]
  br i1 %131, label %63, label %132, !llvm.loop !6

132:                                              ; preds = %130
  %133 = load i32, ptr %9, align 4
  switch i32 %133, label %437 [
    i32 0, label %134
    i32 1, label %135
    i32 2, label %145
    i32 3, label %373
  ]

134:                                              ; preds = %132
  store i32 1, ptr %9, align 4
  br label %135

135:                                              ; preds = %132, %134
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 128
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %15, align 8
  %143 = load i32, ptr %13, align 4
  store i32 %143, ptr %16, align 4
  store i64 0, ptr %17, align 8
  store i32 2, ptr %9, align 4
  br label %144

144:                                              ; preds = %140, %135
  br label %437

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 31
  store i32 %148, ptr %24, align 4
  %149 = load i32, ptr %16, align 4
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %255

151:                                              ; preds = %145
  %152 = load i32, ptr %13, align 4
  %153 = load i32, ptr %16, align 4
  %154 = sub nsw i32 %152, %153
  %155 = icmp slt i32 %154, 3
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load ptr, ptr %15, align 8
  %158 = getelementptr inbounds i8, ptr %157, i32 1
  store ptr %158, ptr %15, align 8
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i64
  %161 = load i32, ptr %13, align 4
  %162 = zext i32 %161 to i64
  %163 = shl i64 %160, %162
  %164 = load i64, ptr %12, align 8
  %165 = add i64 %164, %163
  store i64 %165, ptr %12, align 8
  %166 = load i32, ptr %13, align 4
  %167 = add nsw i32 %166, 8
  store i32 %167, ptr %13, align 4
  br label %168

168:                                              ; preds = %156, %151
  %169 = load i32, ptr %16, align 4
  %170 = zext i32 %169 to i64
  %171 = shl i64 1, %170
  store i64 %171, ptr %25, align 8
  %172 = load i64, ptr %12, align 8
  %173 = load i32, ptr %16, align 4
  %174 = zext i32 %173 to i64
  %175 = lshr i64 %172, %174
  %176 = and i64 %175, 7
  %177 = icmp eq i64 %176, 3
  br i1 %177, label %178, label %215

178:                                              ; preds = %168
  %179 = load i32, ptr %13, align 4
  %180 = load i32, ptr %16, align 4
  %181 = sub nsw i32 %179, %180
  %182 = icmp slt i32 %181, 10
  br i1 %182, label %183, label %201

183:                                              ; preds = %178
  %184 = load ptr, ptr %15, align 8
  %185 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = icmp eq ptr %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %437

189:                                              ; preds = %183
  %190 = load ptr, ptr %15, align 8
  %191 = getelementptr inbounds i8, ptr %190, i32 1
  store ptr %191, ptr %15, align 8
  %192 = load i8, ptr %190, align 1
  %193 = zext i8 %192 to i64
  %194 = load i32, ptr %13, align 4
  %195 = zext i32 %194 to i64
  %196 = shl i64 %193, %195
  %197 = load i64, ptr %12, align 8
  %198 = add i64 %197, %196
  store i64 %198, ptr %12, align 8
  %199 = load i32, ptr %13, align 4
  %200 = add nsw i32 %199, 8
  store i32 %200, ptr %13, align 4
  br label %201

201:                                              ; preds = %189, %178
  %202 = load i64, ptr %12, align 8
  %203 = load i32, ptr %16, align 4
  %204 = zext i32 %203 to i64
  %205 = lshr i64 %202, %204
  %206 = and i64 %205, 1023
  %207 = icmp eq i64 %206, 3
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load i32, ptr %16, align 4
  store i32 %209, ptr %13, align 4
  %210 = load i64, ptr %25, align 8
  %211 = sub i64 %210, 1
  %212 = load i64, ptr %12, align 8
  %213 = and i64 %212, %211
  store i64 %213, ptr %12, align 8
  br label %214

214:                                              ; preds = %208, %201
  br label %231

215:                                              ; preds = %168
  %216 = load i64, ptr %12, align 8
  %217 = load i32, ptr %16, align 4
  %218 = zext i32 %217 to i64
  %219 = lshr i64 %216, %218
  %220 = and i64 %219, 6
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load i32, ptr %16, align 4
  %224 = add nsw i32 %223, 10
  %225 = and i32 %224, -8
  store i32 %225, ptr %13, align 4
  %226 = load i64, ptr %25, align 8
  %227 = sub i64 %226, 1
  %228 = load i64, ptr %12, align 8
  %229 = and i64 %228, %227
  store i64 %229, ptr %12, align 8
  br label %230

230:                                              ; preds = %222, %215
  br label %231

231:                                              ; preds = %230, %214
  %232 = load i64, ptr %25, align 8
  %233 = xor i64 %232, -1
  %234 = load i64, ptr %12, align 8
  %235 = and i64 %234, %233
  store i64 %235, ptr %12, align 8
  br label %236

236:                                              ; preds = %239, %231
  %237 = load i32, ptr %13, align 4
  %238 = icmp sge i32 %237, 8
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i64, ptr %12, align 8
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr %6, align 8
  %243 = call i32 @putc(i32 noundef %241, ptr noundef %242)
  %244 = load i64, ptr %12, align 8
  %245 = lshr i64 %244, 8
  store i64 %245, ptr %12, align 8
  %246 = load i32, ptr %13, align 4
  %247 = sub nsw i32 %246, 8
  store i32 %247, ptr %13, align 4
  br label %236, !llvm.loop !8

248:                                              ; preds = %236
  %249 = load ptr, ptr %15, align 8
  %250 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  %251 = load ptr, ptr %250, align 8
  %252 = icmp eq ptr %249, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 0, ptr %24, align 4
  br label %254

254:                                              ; preds = %253, %248
  br label %255

255:                                              ; preds = %254, %145
  %256 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 128
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load i32, ptr %24, align 4
  %262 = icmp ne i32 %261, 0
  br label %263

263:                                              ; preds = %260, %255
  %264 = phi i1 [ false, %255 ], [ %262, %260 ]
  %265 = zext i1 %264 to i32
  store i32 %265, ptr %26, align 4
  %266 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  %267 = load ptr, ptr %266, align 8
  %268 = load i32, ptr %26, align 4
  %269 = sext i32 %268 to i64
  %270 = sub i64 0, %269
  %271 = getelementptr inbounds i8, ptr %267, i64 %270
  store ptr %271, ptr %27, align 8
  %272 = load ptr, ptr %15, align 8
  %273 = load ptr, ptr %27, align 8
  %274 = icmp ult ptr %272, %273
  br i1 %274, label %275, label %311

275:                                              ; preds = %263
  %276 = load i32, ptr %13, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %300

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %295, %278
  %280 = load ptr, ptr %15, align 8
  %281 = getelementptr inbounds i8, ptr %280, i32 1
  store ptr %281, ptr %15, align 8
  %282 = load i8, ptr %280, align 1
  %283 = zext i8 %282 to i32
  %284 = load i32, ptr %13, align 4
  %285 = shl i32 %283, %284
  %286 = zext i32 %285 to i64
  %287 = load i64, ptr %12, align 8
  %288 = add i64 %287, %286
  store i64 %288, ptr %12, align 8
  %289 = load i64, ptr %12, align 8
  %290 = trunc i64 %289 to i32
  %291 = load ptr, ptr %6, align 8
  %292 = call i32 @putc(i32 noundef %290, ptr noundef %291)
  %293 = load i64, ptr %12, align 8
  %294 = lshr i64 %293, 8
  store i64 %294, ptr %12, align 8
  br label %295

295:                                              ; preds = %279
  %296 = load ptr, ptr %15, align 8
  %297 = load ptr, ptr %27, align 8
  %298 = icmp ult ptr %296, %297
  br i1 %298, label %279, label %299, !llvm.loop !9

299:                                              ; preds = %295
  br label %310

300:                                              ; preds = %275
  %301 = load ptr, ptr %15, align 8
  %302 = load ptr, ptr %27, align 8
  %303 = load ptr, ptr %15, align 8
  %304 = ptrtoint ptr %302 to i64
  %305 = ptrtoint ptr %303 to i64
  %306 = sub i64 %304, %305
  %307 = load ptr, ptr %6, align 8
  %308 = call i64 @fwrite(ptr noundef %301, i64 noundef 1, i64 noundef %306, ptr noundef %307)
  %309 = load ptr, ptr %27, align 8
  store ptr %309, ptr %15, align 8
  br label %310

310:                                              ; preds = %300, %299
  br label %311

311:                                              ; preds = %310, %263
  %312 = load i32, ptr %26, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %357

314:                                              ; preds = %311
  %315 = load ptr, ptr %15, align 8
  %316 = getelementptr inbounds i8, ptr %315, i32 1
  store ptr %316, ptr %15, align 8
  %317 = load i8, ptr %315, align 1
  %318 = zext i8 %317 to i32
  %319 = load i32, ptr %13, align 4
  %320 = shl i32 %318, %319
  %321 = zext i32 %320 to i64
  %322 = load i64, ptr %12, align 8
  %323 = add i64 %322, %321
  store i64 %323, ptr %12, align 8
  %324 = load i32, ptr %13, align 4
  %325 = add nsw i32 %324, 8
  store i32 %325, ptr %13, align 4
  %326 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %327 = load i32, ptr %326, align 8
  %328 = and i32 %327, 64
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %352

330:                                              ; preds = %314
  %331 = load i32, ptr %24, align 4
  %332 = load i32, ptr %13, align 4
  %333 = sub nsw i32 %332, %331
  store i32 %333, ptr %13, align 4
  %334 = load i32, ptr %13, align 4
  %335 = icmp sge i32 %334, 8
  br i1 %335, label %336, label %345

336:                                              ; preds = %330
  %337 = load i64, ptr %12, align 8
  %338 = trunc i64 %337 to i32
  %339 = load ptr, ptr %6, align 8
  %340 = call i32 @putc(i32 noundef %338, ptr noundef %339)
  %341 = load i32, ptr %13, align 4
  %342 = sub nsw i32 %341, 8
  store i32 %342, ptr %13, align 4
  %343 = load i64, ptr %12, align 8
  %344 = lshr i64 %343, 8
  store i64 %344, ptr %12, align 8
  br label %345

345:                                              ; preds = %336, %330
  %346 = load i32, ptr %13, align 4
  %347 = zext i32 %346 to i64
  %348 = shl i64 1, %347
  %349 = sub i64 %348, 1
  %350 = load i64, ptr %12, align 8
  %351 = and i64 %350, %349
  store i64 %351, ptr %12, align 8
  br label %356

352:                                              ; preds = %314
  %353 = load i32, ptr %13, align 4
  %354 = load i32, ptr %24, align 4
  %355 = sub nsw i32 %353, %354
  store i32 %355, ptr %16, align 4
  br label %356

356:                                              ; preds = %352, %345
  br label %366

357:                                              ; preds = %311
  %358 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 128
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i32, ptr %13, align 4
  store i32 %363, ptr %16, align 4
  br label %365

364:                                              ; preds = %357
  store i32 -1, ptr %16, align 4
  br label %365

365:                                              ; preds = %364, %362
  br label %366

366:                                              ; preds = %365, %356
  %367 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 11
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 192
  %370 = icmp eq i32 %369, 192
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  store i64 0, ptr %18, align 8
  store i64 0, ptr %19, align 8
  store i32 3, ptr %9, align 4
  br label %372

372:                                              ; preds = %371, %366
  br label %437

373:                                              ; preds = %132
  br label %374

374:                                              ; preds = %431, %373
  %375 = load i64, ptr %19, align 8
  %376 = lshr i64 %375, 8
  %377 = load ptr, ptr %15, align 8
  %378 = getelementptr inbounds i8, ptr %377, i32 1
  store ptr %378, ptr %15, align 8
  %379 = load i8, ptr %377, align 1
  %380 = zext i8 %379 to i64
  %381 = shl i64 %380, 24
  %382 = add i64 %376, %381
  store i64 %382, ptr %19, align 8
  %383 = load i64, ptr %18, align 8
  %384 = add i64 %383, 1
  store i64 %384, ptr %18, align 8
  %385 = load i64, ptr %18, align 8
  %386 = icmp eq i64 %385, 4
  br i1 %386, label %387, label %413

387:                                              ; preds = %374
  %388 = load i64, ptr %17, align 8
  store i64 %388, ptr %28, align 8
  %389 = load i64, ptr %28, align 8
  %390 = icmp slt i64 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %387
  %392 = load i64, ptr %28, align 8
  %393 = load i64, ptr %17, align 8
  %394 = icmp ne i64 %392, %393
  br i1 %394, label %395, label %401

395:                                              ; preds = %391, %387
  br label %396

396:                                              ; preds = %395
  %397 = call i32 @inflateEnd(ptr noundef %8)
  %398 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.6)
  %399 = load ptr, ptr %7, align 8
  store ptr %398, ptr %399, align 8
  store i32 1, ptr %4, align 4
  br label %535

400:                                              ; No predecessors!
  br label %401

401:                                              ; preds = %400, %391
  %402 = load i64, ptr %10, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %401
  %405 = load i64, ptr %10, align 8
  %406 = load i64, ptr %19, align 8
  %407 = load i64, ptr %28, align 8
  %408 = call i64 @crc32_combine(i64 noundef %405, i64 noundef %406, i64 noundef %407)
  br label %411

409:                                              ; preds = %401
  %410 = load i64, ptr %19, align 8
  br label %411

411:                                              ; preds = %409, %404
  %412 = phi i64 [ %408, %404 ], [ %410, %409 ]
  store i64 %412, ptr %10, align 8
  store i64 0, ptr %19, align 8
  br label %430

413:                                              ; preds = %374
  %414 = load i64, ptr %18, align 8
  %415 = icmp eq i64 %414, 8
  br i1 %415, label %416, label %429

416:                                              ; preds = %413
  %417 = load i64, ptr %19, align 8
  %418 = load i64, ptr %11, align 8
  %419 = add i64 %418, %417
  store i64 %419, ptr %11, align 8
  %420 = call i32 @inflateReset(ptr noundef %8)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %416
  br label %423

423:                                              ; preds = %422
  %424 = call i32 @inflateEnd(ptr noundef %8)
  %425 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.5)
  %426 = load ptr, ptr %7, align 8
  store ptr %425, ptr %426, align 8
  store i32 1, ptr %4, align 4
  br label %535

427:                                              ; No predecessors!
  br label %428

428:                                              ; preds = %427, %416
  store i32 0, ptr %9, align 4
  br label %436

429:                                              ; preds = %413
  br label %430

430:                                              ; preds = %429, %411
  br label %431

431:                                              ; preds = %430
  %432 = load ptr, ptr %15, align 8
  %433 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  %434 = load ptr, ptr %433, align 8
  %435 = icmp ult ptr %432, %434
  br i1 %435, label %374, label %436, !llvm.loop !10

436:                                              ; preds = %431, %428
  br label %437

437:                                              ; preds = %132, %436, %372, %188, %144
  br label %438

438:                                              ; preds = %437
  %439 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  %440 = load i32, ptr %439, align 8
  %441 = icmp ugt i32 %440, 0
  br i1 %441, label %62, label %442, !llvm.loop !11

442:                                              ; preds = %438
  br label %443

443:                                              ; preds = %442
  %444 = load i32, ptr %14, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %45, label %446, !llvm.loop !12

446:                                              ; preds = %443, %54
  %447 = call i32 @inflateEnd(ptr noundef %8)
  %448 = load i32, ptr %9, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %456

450:                                              ; preds = %446
  br label %451

451:                                              ; preds = %450
  %452 = call i32 @inflateEnd(ptr noundef %8)
  %453 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.7)
  %454 = load ptr, ptr %7, align 8
  store ptr %453, ptr %454, align 8
  store i32 1, ptr %4, align 4
  br label %535

455:                                              ; No predecessors!
  br label %456

456:                                              ; preds = %455, %446
  %457 = load i32, ptr %13, align 4
  %458 = zext i32 %457 to i64
  %459 = shl i64 3, %458
  %460 = load i64, ptr %12, align 8
  %461 = add i64 %460, %459
  store i64 %461, ptr %12, align 8
  %462 = load i64, ptr %12, align 8
  %463 = trunc i64 %462 to i32
  %464 = load ptr, ptr %6, align 8
  %465 = call i32 @putc(i32 noundef %463, ptr noundef %464)
  %466 = load i64, ptr %12, align 8
  %467 = lshr i64 %466, 8
  %468 = trunc i64 %467 to i32
  %469 = load ptr, ptr %6, align 8
  %470 = call i32 @putc(i32 noundef %468, ptr noundef %469)
  %471 = load i32, ptr %13, align 4
  %472 = icmp sgt i32 %471, 6
  br i1 %472, label %473, label %476

473:                                              ; preds = %456
  %474 = load ptr, ptr %6, align 8
  %475 = call i32 @putc(i32 noundef 0, ptr noundef %474)
  br label %476

476:                                              ; preds = %473, %456
  %477 = load i64, ptr %10, align 8
  %478 = trunc i64 %477 to i32
  %479 = load ptr, ptr %6, align 8
  %480 = call i32 @putc(i32 noundef %478, ptr noundef %479)
  %481 = load i64, ptr %10, align 8
  %482 = lshr i64 %481, 8
  %483 = trunc i64 %482 to i32
  %484 = load ptr, ptr %6, align 8
  %485 = call i32 @putc(i32 noundef %483, ptr noundef %484)
  %486 = load i64, ptr %10, align 8
  %487 = lshr i64 %486, 16
  %488 = trunc i64 %487 to i32
  %489 = load ptr, ptr %6, align 8
  %490 = call i32 @putc(i32 noundef %488, ptr noundef %489)
  %491 = load i64, ptr %10, align 8
  %492 = lshr i64 %491, 24
  %493 = trunc i64 %492 to i32
  %494 = load ptr, ptr %6, align 8
  %495 = call i32 @putc(i32 noundef %493, ptr noundef %494)
  %496 = load i64, ptr %11, align 8
  %497 = trunc i64 %496 to i32
  %498 = load ptr, ptr %6, align 8
  %499 = call i32 @putc(i32 noundef %497, ptr noundef %498)
  %500 = load i64, ptr %11, align 8
  %501 = lshr i64 %500, 8
  %502 = trunc i64 %501 to i32
  %503 = load ptr, ptr %6, align 8
  %504 = call i32 @putc(i32 noundef %502, ptr noundef %503)
  %505 = load i64, ptr %11, align 8
  %506 = lshr i64 %505, 16
  %507 = trunc i64 %506 to i32
  %508 = load ptr, ptr %6, align 8
  %509 = call i32 @putc(i32 noundef %507, ptr noundef %508)
  %510 = load i64, ptr %11, align 8
  %511 = lshr i64 %510, 24
  %512 = trunc i64 %511 to i32
  %513 = load ptr, ptr %6, align 8
  %514 = call i32 @putc(i32 noundef %512, ptr noundef %513)
  %515 = load ptr, ptr %6, align 8
  %516 = call i32 @fflush(ptr noundef %515)
  %517 = load ptr, ptr %5, align 8
  %518 = call i32 @ferror(ptr noundef %517) #6
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %524, label %520

520:                                              ; preds = %476
  %521 = load ptr, ptr %6, align 8
  %522 = call i32 @ferror(ptr noundef %521) #6
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %533

524:                                              ; preds = %520, %476
  br label %525

525:                                              ; preds = %524
  %526 = call i32 @inflateEnd(ptr noundef %8)
  %527 = call ptr @__errno_location() #7
  %528 = load i32, ptr %527, align 4
  %529 = call ptr @strerror(i32 noundef %528) #6
  %530 = call ptr (ptr, ...) @aprintf(ptr noundef @.str.8, ptr noundef %529)
  %531 = load ptr, ptr %7, align 8
  store ptr %530, ptr %531, align 8
  store i32 1, ptr %4, align 4
  br label %535

532:                                              ; No predecessors!
  br label %533

533:                                              ; preds = %532, %520
  %534 = load ptr, ptr %7, align 8
  store ptr null, ptr %534, align 8
  store i32 0, ptr %4, align 4
  br label %535

535:                                              ; preds = %533, %525, %451, %423, %396, %115, %97, %80, %71, %37
  %536 = load i32, ptr %4, align 4
  ret i32 %536
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @inflateEnd(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @aprintf(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start(ptr %7)
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %10 = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %8, ptr noundef %9) #6
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end(ptr %11)
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = call noalias ptr @malloc(i64 noundef %18) #8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store ptr null, ptr %2, align 8
  br label %34

23:                                               ; preds = %15
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start(ptr %24)
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %31 = call i32 @vsnprintf(ptr noundef %25, i64 noundef %28, ptr noundef %29, ptr noundef %30) #6
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end(ptr %32)
  %33 = load ptr, ptr %6, align 8
  store ptr %33, ptr %2, align 8
  br label %34

34:                                               ; preds = %23, %22, %14
  %35 = load ptr, ptr %2, align 8
  ret ptr %35
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i64 @crc32_combine(i64 noundef, i64 noundef, i64 noundef) #1

declare i32 @inflateReset(ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
