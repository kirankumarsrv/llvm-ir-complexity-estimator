; ModuleID = 'corpus_zlib/examples/zran.c'
source_filename = "corpus_zlib/examples/zran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.deflate_index = type { i32, i32, i64, ptr, %struct.z_stream_s }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.point = type { i64, i64, i32, i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deflate_index_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %11, %5
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.deflate_index, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.deflate_index, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.deflate_index, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %16, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.point, ptr %14, i64 %19
  %21 = getelementptr inbounds %struct.point, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  call void @free(ptr noundef %22) #7
  br label %6, !llvm.loop !6

23:                                               ; preds = %6
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.deflate_index, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26) #7
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.deflate_index, ptr %27, i32 0, i32 3
  store ptr null, ptr %28, align 8
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.deflate_index, ptr %29, i32 0, i32 4
  %31 = call i32 @inflateEnd(ptr noundef %30)
  %32 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @inflateEnd(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deflate_index_build(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [16384 x i8], align 16
  %10 = alloca [32768 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  store ptr null, ptr %18, align 8
  %19 = call noalias ptr @malloc(i64 noundef 136) #8
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -4, ptr %4, align 4
  br label %259

23:                                               ; preds = %3
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.deflate_index, ptr %24, i32 0, i32 0
  store i32 0, ptr %25, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.deflate_index, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds %struct.deflate_index, ptr %28, i32 0, i32 3
  store ptr null, ptr %29, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.deflate_index, ptr %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 7
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds %struct.deflate_index, ptr %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 1
  store i32 0, ptr %35, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds %struct.deflate_index, ptr %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 4
  store i32 0, ptr %38, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 32768, i1 false)
  store i64 0, ptr %11, align 8
  store i64 0, ptr %12, align 8
  store i64 0, ptr %13, align 8
  store i32 0, ptr %14, align 4
  br label %39

39:                                               ; preds = %232, %23
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct.deflate_index, ptr %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %129

45:                                               ; preds = %39
  %46 = getelementptr inbounds [16384 x i8], ptr %9, i64 0, i64 0
  %47 = load ptr, ptr %5, align 8
  %48 = call i64 @fread(ptr noundef %46, i64 noundef 1, i64 noundef 16384, ptr noundef %47)
  %49 = trunc i64 %48 to i32
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds %struct.deflate_index, ptr %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 1
  store i32 %49, ptr %52, align 8
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds %struct.deflate_index, ptr %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = zext i32 %56 to i64
  %58 = load i64, ptr %11, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, ptr %11, align 8
  %60 = getelementptr inbounds [16384 x i8], ptr %9, i64 0, i64 0
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %struct.deflate_index, ptr %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.z_stream_s, ptr %62, i32 0, i32 0
  store ptr %60, ptr %63, align 8
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds %struct.deflate_index, ptr %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.z_stream_s, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %68, 16384
  br i1 %69, label %70, label %75

70:                                               ; preds = %45
  %71 = load ptr, ptr %5, align 8
  %72 = call i32 @ferror(ptr noundef %71) #7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, ptr %15, align 4
  br label %235

75:                                               ; preds = %70, %45
  %76 = load i32, ptr %14, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %128

78:                                               ; preds = %75
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds %struct.deflate_index, ptr %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %109

85:                                               ; preds = %78
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds %struct.deflate_index, ptr %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.z_stream_s, ptr %87, i32 0, i32 0
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds i8, ptr %89, i64 0
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 15
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %107

96:                                               ; preds = %85
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr inbounds %struct.deflate_index, ptr %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.z_stream_s, ptr %98, i32 0, i32 0
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds i8, ptr %100, i64 0
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 31
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 31, i32 -15
  br label %107

107:                                              ; preds = %96, %95
  %108 = phi i32 [ 15, %95 ], [ %106, %96 ]
  br label %109

109:                                              ; preds = %107, %84
  %110 = phi i32 [ -15, %84 ], [ %108, %107 ]
  store i32 %110, ptr %14, align 4
  %111 = load ptr, ptr %8, align 8
  %112 = getelementptr inbounds %struct.deflate_index, ptr %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.z_stream_s, ptr %112, i32 0, i32 8
  store ptr null, ptr %113, align 8
  %114 = load ptr, ptr %8, align 8
  %115 = getelementptr inbounds %struct.deflate_index, ptr %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.z_stream_s, ptr %115, i32 0, i32 9
  store ptr null, ptr %116, align 8
  %117 = load ptr, ptr %8, align 8
  %118 = getelementptr inbounds %struct.deflate_index, ptr %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %118, i32 0, i32 10
  store ptr null, ptr %119, align 8
  %120 = load ptr, ptr %8, align 8
  %121 = getelementptr inbounds %struct.deflate_index, ptr %120, i32 0, i32 4
  %122 = load i32, ptr %14, align 4
  %123 = call i32 @inflateInit2_(ptr noundef %121, i32 noundef %122, ptr noundef @.str, i32 noundef 112)
  store i32 %123, ptr %15, align 4
  %124 = load i32, ptr %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  br label %235

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %75
  br label %129

129:                                              ; preds = %128, %39
  %130 = load ptr, ptr %8, align 8
  %131 = getelementptr inbounds %struct.deflate_index, ptr %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.z_stream_s, ptr %131, i32 0, i32 4
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load ptr, ptr %8, align 8
  %137 = getelementptr inbounds %struct.deflate_index, ptr %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.z_stream_s, ptr %137, i32 0, i32 4
  store i32 32768, ptr %138, align 8
  %139 = getelementptr inbounds [32768 x i8], ptr %10, i64 0, i64 0
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds %struct.deflate_index, ptr %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.z_stream_s, ptr %141, i32 0, i32 3
  store ptr %139, ptr %142, align 8
  br label %143

143:                                              ; preds = %135, %129
  %144 = load i32, ptr %14, align 4
  %145 = icmp eq i32 %144, -15
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8
  %148 = getelementptr inbounds %struct.deflate_index, ptr %147, i32 0, i32 0
  %149 = load i32, ptr %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load ptr, ptr %8, align 8
  %153 = getelementptr inbounds %struct.deflate_index, ptr %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.z_stream_s, ptr %153, i32 0, i32 11
  store i32 128, ptr %154, align 8
  br label %172

155:                                              ; preds = %146, %143
  %156 = load ptr, ptr %8, align 8
  %157 = getelementptr inbounds %struct.deflate_index, ptr %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 4
  %159 = load i32, ptr %158, align 8
  store i32 %159, ptr %17, align 4
  %160 = load ptr, ptr %8, align 8
  %161 = getelementptr inbounds %struct.deflate_index, ptr %160, i32 0, i32 4
  %162 = call i32 @inflate(ptr noundef %161, i32 noundef 5)
  store i32 %162, ptr %15, align 4
  %163 = load i32, ptr %17, align 4
  %164 = load ptr, ptr %8, align 8
  %165 = getelementptr inbounds %struct.deflate_index, ptr %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.z_stream_s, ptr %165, i32 0, i32 4
  %167 = load i32, ptr %166, align 8
  %168 = sub i32 %163, %167
  %169 = zext i32 %168 to i64
  %170 = load i64, ptr %12, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, ptr %12, align 8
  br label %172

172:                                              ; preds = %155, %151
  %173 = load ptr, ptr %8, align 8
  %174 = getelementptr inbounds %struct.deflate_index, ptr %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.z_stream_s, ptr %174, i32 0, i32 11
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 192
  %178 = icmp eq i32 %177, 128
  br i1 %178, label %179, label %208

179:                                              ; preds = %172
  %180 = load ptr, ptr %8, align 8
  %181 = getelementptr inbounds %struct.deflate_index, ptr %180, i32 0, i32 0
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = load i64, ptr %12, align 8
  %186 = load i64, ptr %16, align 8
  %187 = sub nsw i64 %185, %186
  %188 = load i64, ptr %6, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %184, %179
  %191 = load ptr, ptr %8, align 8
  %192 = load i64, ptr %11, align 8
  %193 = load ptr, ptr %8, align 8
  %194 = getelementptr inbounds %struct.deflate_index, ptr %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.z_stream_s, ptr %194, i32 0, i32 1
  %196 = load i32, ptr %195, align 8
  %197 = zext i32 %196 to i64
  %198 = sub nsw i64 %192, %197
  %199 = load i64, ptr %12, align 8
  %200 = load i64, ptr %13, align 8
  %201 = getelementptr inbounds [32768 x i8], ptr %10, i64 0, i64 0
  %202 = call ptr @add_point(ptr noundef %191, i64 noundef %198, i64 noundef %199, i64 noundef %200, ptr noundef %201)
  store ptr %202, ptr %8, align 8
  %203 = load ptr, ptr %8, align 8
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %206

205:                                              ; preds = %190
  store i32 -4, ptr %15, align 4
  br label %235

206:                                              ; preds = %190
  %207 = load i64, ptr %12, align 8
  store i64 %207, ptr %16, align 8
  br label %208

208:                                              ; preds = %206, %184, %172
  %209 = load i32, ptr %15, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load i32, ptr %14, align 4
  %213 = icmp eq i32 %212, 31
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load ptr, ptr %8, align 8
  %216 = getelementptr inbounds %struct.deflate_index, ptr %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.z_stream_s, ptr %216, i32 0, i32 1
  %218 = load i32, ptr %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %214
  %221 = load ptr, ptr %5, align 8
  %222 = call i32 @getc(ptr noundef %221)
  %223 = load ptr, ptr %5, align 8
  %224 = call i32 @ungetc(i32 noundef %222, ptr noundef %223)
  %225 = icmp ne i32 %224, -1
  br i1 %225, label %226, label %231

226:                                              ; preds = %220, %214
  %227 = load ptr, ptr %8, align 8
  %228 = getelementptr inbounds %struct.deflate_index, ptr %227, i32 0, i32 4
  %229 = call i32 @inflateReset2(ptr noundef %228, i32 noundef 31)
  store i32 %229, ptr %15, align 4
  %230 = load i64, ptr %12, align 8
  store i64 %230, ptr %13, align 8
  br label %231

231:                                              ; preds = %226, %220, %211, %208
  br label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %15, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %39, label %235, !llvm.loop !8

235:                                              ; preds = %232, %205, %126, %74
  %236 = load i32, ptr %15, align 4
  %237 = icmp ne i32 %236, 1
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load ptr, ptr %8, align 8
  call void @deflate_index_free(ptr noundef %239)
  %240 = load i32, ptr %15, align 4
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %245

243:                                              ; preds = %238
  %244 = load i32, ptr %15, align 4
  br label %245

245:                                              ; preds = %243, %242
  %246 = phi i32 [ -3, %242 ], [ %244, %243 ]
  store i32 %246, ptr %4, align 4
  br label %259

247:                                              ; preds = %235
  %248 = load i32, ptr %14, align 4
  %249 = load ptr, ptr %8, align 8
  %250 = getelementptr inbounds %struct.deflate_index, ptr %249, i32 0, i32 1
  store i32 %248, ptr %250, align 4
  %251 = load i64, ptr %12, align 8
  %252 = load ptr, ptr %8, align 8
  %253 = getelementptr inbounds %struct.deflate_index, ptr %252, i32 0, i32 2
  store i64 %251, ptr %253, align 8
  %254 = load ptr, ptr %8, align 8
  %255 = load ptr, ptr %7, align 8
  store ptr %254, ptr %255, align 8
  %256 = load ptr, ptr %8, align 8
  %257 = getelementptr inbounds %struct.deflate_index, ptr %256, i32 0, i32 0
  %258 = load i32, ptr %257, align 8
  store i32 %258, ptr %4, align 4
  br label %259

259:                                              ; preds = %247, %245, %22
  %260 = load i32, ptr %4, align 4
  ret i32 %260
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @inflate(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @add_point(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.deflate_index, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds %struct.deflate_index, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %5
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.deflate_index, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.deflate_index, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 1
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32 [ %32, %28 ], [ 8, %33 ]
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.deflate_index, ptr %36, i32 0, i32 1
  store i32 %35, ptr %37, align 4
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds %struct.deflate_index, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.deflate_index, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 32, %44
  %46 = call ptr @realloc(ptr noundef %40, i64 noundef %45) #9
  store ptr %46, ptr %12, align 8
  %47 = load ptr, ptr %12, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store ptr null, ptr %6, align 8
  br label %167

50:                                               ; preds = %34
  %51 = load ptr, ptr %12, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.deflate_index, ptr %52, i32 0, i32 3
  store ptr %51, ptr %53, align 8
  br label %54

54:                                               ; preds = %50, %5
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds %struct.deflate_index, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.deflate_index, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.point, ptr %57, i64 %62
  store ptr %63, ptr %13, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.deflate_index, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store ptr null, ptr %6, align 8
  br label %167

69:                                               ; preds = %54
  %70 = load i64, ptr %9, align 8
  %71 = load ptr, ptr %13, align 8
  %72 = getelementptr inbounds %struct.point, ptr %71, i32 0, i32 0
  store i64 %70, ptr %72, align 8
  %73 = load i64, ptr %8, align 8
  %74 = load ptr, ptr %13, align 8
  %75 = getelementptr inbounds %struct.point, ptr %74, i32 0, i32 1
  store i64 %73, ptr %75, align 8
  %76 = load ptr, ptr %7, align 8
  %77 = getelementptr inbounds %struct.deflate_index, ptr %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %77, i32 0, i32 11
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 7
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds %struct.point, ptr %81, i32 0, i32 2
  store i32 %80, ptr %82, align 8
  %83 = load i64, ptr %9, align 8
  %84 = load i64, ptr %10, align 8
  %85 = sub nsw i64 %83, %84
  %86 = icmp sgt i64 %85, 32768
  br i1 %86, label %87, label %88

87:                                               ; preds = %69
  br label %93

88:                                               ; preds = %69
  %89 = load i64, ptr %9, align 8
  %90 = load i64, ptr %10, align 8
  %91 = sub nsw i64 %89, %90
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %88, %87
  %94 = phi i32 [ 32768, %87 ], [ %92, %88 ]
  %95 = load ptr, ptr %13, align 8
  %96 = getelementptr inbounds %struct.point, ptr %95, i32 0, i32 3
  store i32 %94, ptr %96, align 4
  %97 = load ptr, ptr %13, align 8
  %98 = getelementptr inbounds %struct.point, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = zext i32 %99 to i64
  %101 = call noalias ptr @malloc(i64 noundef %100) #8
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds %struct.point, ptr %102, i32 0, i32 4
  store ptr %101, ptr %103, align 8
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds %struct.point, ptr %104, i32 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  store ptr null, ptr %6, align 8
  br label %167

109:                                              ; preds = %93
  %110 = load ptr, ptr %7, align 8
  %111 = getelementptr inbounds %struct.deflate_index, ptr %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %111, i32 0, i32 4
  %113 = load i32, ptr %112, align 8
  %114 = sub i32 32768, %113
  store i32 %114, ptr %14, align 4
  %115 = load i32, ptr %14, align 4
  %116 = load ptr, ptr %13, align 8
  %117 = getelementptr inbounds %struct.point, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load ptr, ptr %13, align 8
  %122 = getelementptr inbounds %struct.point, ptr %121, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  br label %126

124:                                              ; preds = %109
  %125 = load i32, ptr %14, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi i32 [ %123, %120 ], [ %125, %124 ]
  store i32 %127, ptr %15, align 4
  %128 = load ptr, ptr %13, align 8
  %129 = getelementptr inbounds %struct.point, ptr %128, i32 0, i32 4
  %130 = load ptr, ptr %129, align 8
  %131 = load ptr, ptr %13, align 8
  %132 = getelementptr inbounds %struct.point, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %130, i64 %134
  %136 = load i32, ptr %15, align 4
  %137 = zext i32 %136 to i64
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  %140 = load ptr, ptr %11, align 8
  %141 = load i32, ptr %14, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = load i32, ptr %15, align 4
  %145 = zext i32 %144 to i64
  %146 = sub i64 0, %145
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = load i32, ptr %15, align 4
  %149 = zext i32 %148 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 %147, i64 %149, i1 false)
  %150 = load ptr, ptr %13, align 8
  %151 = getelementptr inbounds %struct.point, ptr %150, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %15, align 4
  %154 = sub i32 %152, %153
  store i32 %154, ptr %15, align 4
  %155 = load ptr, ptr %13, align 8
  %156 = getelementptr inbounds %struct.point, ptr %155, i32 0, i32 4
  %157 = load ptr, ptr %156, align 8
  %158 = load ptr, ptr %11, align 8
  %159 = getelementptr inbounds i8, ptr %158, i64 32768
  %160 = load i32, ptr %15, align 4
  %161 = zext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i8, ptr %159, i64 %162
  %164 = load i32, ptr %15, align 4
  %165 = zext i32 %164 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %157, ptr align 1 %163, i64 %165, i1 false)
  %166 = load ptr, ptr %7, align 8
  store ptr %166, ptr %6, align 8
  br label %167

167:                                              ; preds = %126, %108, %68, %49
  %168 = load ptr, ptr %6, align 8
  ret ptr %168
}

declare i32 @ungetc(i32 noundef, ptr noundef) #2

declare i32 @getc(ptr noundef) #2

declare i32 @inflateReset2(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @deflate_index_extract(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [16384 x i8], align 16
  %19 = alloca [32768 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %5
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.deflate_index, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %struct.deflate_index, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.point, ptr %33, i64 0
  %35 = getelementptr inbounds %struct.point, ptr %34, i32 0, i32 0
  %36 = load i64, ptr %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.deflate_index, ptr %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %30, %25, %5
  store i64 -2, ptr %6, align 8
  br label %422

45:                                               ; preds = %38
  %46 = load i64, ptr %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load i64, ptr %9, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i64, ptr %9, align 8
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds %struct.deflate_index, ptr %53, i32 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %48, %45
  store i64 0, ptr %6, align 8
  br label %422

58:                                               ; preds = %51
  store i32 -1, ptr %12, align 4
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds %struct.deflate_index, ptr %59, i32 0, i32 0
  %61 = load i32, ptr %60, align 8
  store i32 %61, ptr %13, align 4
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds %struct.deflate_index, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %14, align 8
  br label %65

65:                                               ; preds = %87, %58
  %66 = load i32, ptr %13, align 4
  %67 = load i32, ptr %12, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i32, ptr %12, align 4
  %72 = load i32, ptr %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = ashr i32 %73, 1
  store i32 %74, ptr %15, align 4
  %75 = load i64, ptr %9, align 8
  %76 = load ptr, ptr %14, align 8
  %77 = load i32, ptr %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.point, ptr %76, i64 %78
  %80 = getelementptr inbounds %struct.point, ptr %79, i32 0, i32 0
  %81 = load i64, ptr %80, align 8
  %82 = icmp slt i64 %75, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, ptr %15, align 4
  store i32 %84, ptr %13, align 4
  br label %87

85:                                               ; preds = %70
  %86 = load i32, ptr %15, align 4
  store i32 %86, ptr %12, align 4
  br label %87

87:                                               ; preds = %85, %83
  br label %65, !llvm.loop !9

88:                                               ; preds = %65
  %89 = load i32, ptr %12, align 4
  %90 = load ptr, ptr %14, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds %struct.point, ptr %90, i64 %91
  store ptr %92, ptr %14, align 8
  %93 = load ptr, ptr %7, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = getelementptr inbounds %struct.point, ptr %94, i32 0, i32 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr inbounds %struct.point, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %96, %103
  %105 = call i32 @fseeko(ptr noundef %93, i64 noundef %104, i32 noundef 0)
  store i32 %105, ptr %16, align 4
  %106 = load i32, ptr %16, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %88
  store i64 -1, ptr %6, align 8
  br label %422

109:                                              ; preds = %88
  store i32 0, ptr %17, align 4
  %110 = load ptr, ptr %14, align 8
  %111 = getelementptr inbounds %struct.point, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load ptr, ptr %7, align 8
  %116 = call i32 @getc(ptr noundef %115)
  store i32 %116, ptr %17, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load ptr, ptr %7, align 8
  %120 = call i32 @ferror(ptr noundef %119) #7
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 -1, i32 -5
  %124 = sext i32 %123 to i64
  store i64 %124, ptr %6, align 8
  br label %422

125:                                              ; preds = %114, %109
  %126 = load ptr, ptr %8, align 8
  %127 = getelementptr inbounds %struct.deflate_index, ptr %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.z_stream_s, ptr %127, i32 0, i32 1
  store i32 0, ptr %128, align 8
  %129 = load ptr, ptr %8, align 8
  %130 = getelementptr inbounds %struct.deflate_index, ptr %129, i32 0, i32 4
  %131 = call i32 @inflateReset2(ptr noundef %130, i32 noundef -15)
  store i32 %131, ptr %16, align 4
  %132 = load i32, ptr %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, ptr %16, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, ptr %6, align 8
  br label %422

137:                                              ; preds = %125
  %138 = load ptr, ptr %14, align 8
  %139 = getelementptr inbounds %struct.point, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load ptr, ptr %8, align 8
  %144 = getelementptr inbounds %struct.deflate_index, ptr %143, i32 0, i32 4
  %145 = load ptr, ptr %14, align 8
  %146 = getelementptr inbounds %struct.point, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 8
  %148 = load i32, ptr %17, align 4
  %149 = load ptr, ptr %14, align 8
  %150 = getelementptr inbounds %struct.point, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = sub nsw i32 8, %151
  %153 = ashr i32 %148, %152
  %154 = call i32 @inflatePrime(ptr noundef %144, i32 noundef %147, i32 noundef %153)
  br label %155

155:                                              ; preds = %142, %137
  %156 = load ptr, ptr %8, align 8
  %157 = getelementptr inbounds %struct.deflate_index, ptr %156, i32 0, i32 4
  %158 = load ptr, ptr %14, align 8
  %159 = getelementptr inbounds %struct.point, ptr %158, i32 0, i32 4
  %160 = load ptr, ptr %159, align 8
  %161 = load ptr, ptr %14, align 8
  %162 = getelementptr inbounds %struct.point, ptr %161, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = call i32 @inflateSetDictionary(ptr noundef %157, ptr noundef %160, i32 noundef %163)
  %165 = load ptr, ptr %14, align 8
  %166 = getelementptr inbounds %struct.point, ptr %165, i32 0, i32 0
  %167 = load i64, ptr %166, align 8
  %168 = load i64, ptr %9, align 8
  %169 = sub nsw i64 %168, %167
  store i64 %169, ptr %9, align 8
  %170 = load i64, ptr %11, align 8
  store i64 %170, ptr %20, align 8
  br label %171

171:                                              ; preds = %404, %155
  %172 = load i64, ptr %9, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = load i64, ptr %9, align 8
  %176 = icmp slt i64 %175, 32768
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, ptr %9, align 8
  %179 = trunc i64 %178 to i32
  br label %181

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %177
  %182 = phi i32 [ %179, %177 ], [ 32768, %180 ]
  %183 = load ptr, ptr %8, align 8
  %184 = getelementptr inbounds %struct.deflate_index, ptr %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.z_stream_s, ptr %184, i32 0, i32 4
  store i32 %182, ptr %185, align 8
  %186 = getelementptr inbounds [32768 x i8], ptr %19, i64 0, i64 0
  %187 = load ptr, ptr %8, align 8
  %188 = getelementptr inbounds %struct.deflate_index, ptr %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %188, i32 0, i32 3
  store ptr %186, ptr %189, align 8
  br label %211

190:                                              ; preds = %171
  %191 = load i64, ptr %20, align 8
  %192 = icmp ult i64 %191, 4294967295
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i64, ptr %20, align 8
  %195 = trunc i64 %194 to i32
  br label %197

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %193
  %198 = phi i32 [ %195, %193 ], [ -1, %196 ]
  %199 = load ptr, ptr %8, align 8
  %200 = getelementptr inbounds %struct.deflate_index, ptr %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.z_stream_s, ptr %200, i32 0, i32 4
  store i32 %198, ptr %201, align 8
  %202 = load ptr, ptr %10, align 8
  %203 = load i64, ptr %11, align 8
  %204 = getelementptr inbounds i8, ptr %202, i64 %203
  %205 = load i64, ptr %20, align 8
  %206 = sub i64 0, %205
  %207 = getelementptr inbounds i8, ptr %204, i64 %206
  %208 = load ptr, ptr %8, align 8
  %209 = getelementptr inbounds %struct.deflate_index, ptr %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.z_stream_s, ptr %209, i32 0, i32 3
  store ptr %207, ptr %210, align 8
  br label %211

211:                                              ; preds = %197, %181
  %212 = load ptr, ptr %8, align 8
  %213 = getelementptr inbounds %struct.deflate_index, ptr %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.z_stream_s, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %211
  %218 = getelementptr inbounds [16384 x i8], ptr %18, i64 0, i64 0
  %219 = load ptr, ptr %7, align 8
  %220 = call i64 @fread(ptr noundef %218, i64 noundef 1, i64 noundef 16384, ptr noundef %219)
  %221 = trunc i64 %220 to i32
  %222 = load ptr, ptr %8, align 8
  %223 = getelementptr inbounds %struct.deflate_index, ptr %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.z_stream_s, ptr %223, i32 0, i32 1
  store i32 %221, ptr %224, align 8
  %225 = load ptr, ptr %8, align 8
  %226 = getelementptr inbounds %struct.deflate_index, ptr %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.z_stream_s, ptr %226, i32 0, i32 1
  %228 = load i32, ptr %227, align 8
  %229 = icmp ult i32 %228, 16384
  br i1 %229, label %230, label %235

230:                                              ; preds = %217
  %231 = load ptr, ptr %7, align 8
  %232 = call i32 @ferror(ptr noundef %231) #7
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 -1, ptr %16, align 4
  br label %407

235:                                              ; preds = %230, %217
  %236 = getelementptr inbounds [16384 x i8], ptr %18, i64 0, i64 0
  %237 = load ptr, ptr %8, align 8
  %238 = getelementptr inbounds %struct.deflate_index, ptr %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.z_stream_s, ptr %238, i32 0, i32 0
  store ptr %236, ptr %239, align 8
  br label %240

240:                                              ; preds = %235, %211
  %241 = load ptr, ptr %8, align 8
  %242 = getelementptr inbounds %struct.deflate_index, ptr %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.z_stream_s, ptr %242, i32 0, i32 4
  %244 = load i32, ptr %243, align 8
  store i32 %244, ptr %21, align 4
  %245 = load ptr, ptr %8, align 8
  %246 = getelementptr inbounds %struct.deflate_index, ptr %245, i32 0, i32 4
  %247 = call i32 @inflate(ptr noundef %246, i32 noundef 0)
  store i32 %247, ptr %16, align 4
  %248 = load ptr, ptr %8, align 8
  %249 = getelementptr inbounds %struct.deflate_index, ptr %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.z_stream_s, ptr %249, i32 0, i32 4
  %251 = load i32, ptr %250, align 8
  %252 = load i32, ptr %21, align 4
  %253 = sub i32 %252, %251
  store i32 %253, ptr %21, align 4
  %254 = load i64, ptr %9, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %240
  %257 = load i32, ptr %21, align 4
  %258 = zext i32 %257 to i64
  %259 = load i64, ptr %9, align 8
  %260 = sub nsw i64 %259, %258
  store i64 %260, ptr %9, align 8
  br label %270

261:                                              ; preds = %240
  %262 = load i32, ptr %21, align 4
  %263 = zext i32 %262 to i64
  %264 = load i64, ptr %20, align 8
  %265 = sub i64 %264, %263
  store i64 %265, ptr %20, align 8
  %266 = load i64, ptr %20, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %261
  br label %407

269:                                              ; preds = %261
  br label %270

270:                                              ; preds = %269, %256
  %271 = load i32, ptr %16, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %403

273:                                              ; preds = %270
  %274 = load ptr, ptr %8, align 8
  %275 = getelementptr inbounds %struct.deflate_index, ptr %274, i32 0, i32 1
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, 31
  br i1 %277, label %278, label %403

278:                                              ; preds = %273
  store i32 8, ptr %22, align 4
  %279 = load ptr, ptr %8, align 8
  %280 = getelementptr inbounds %struct.deflate_index, ptr %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.z_stream_s, ptr %280, i32 0, i32 1
  %282 = load i32, ptr %281, align 8
  %283 = load i32, ptr %22, align 4
  %284 = icmp uge i32 %282, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %278
  %286 = load i32, ptr %22, align 4
  %287 = load ptr, ptr %8, align 8
  %288 = getelementptr inbounds %struct.deflate_index, ptr %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.z_stream_s, ptr %288, i32 0, i32 1
  %290 = load i32, ptr %289, align 8
  %291 = sub i32 %290, %286
  store i32 %291, ptr %289, align 8
  %292 = load i32, ptr %22, align 4
  %293 = load ptr, ptr %8, align 8
  %294 = getelementptr inbounds %struct.deflate_index, ptr %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.z_stream_s, ptr %294, i32 0, i32 0
  %296 = load ptr, ptr %295, align 8
  %297 = zext i32 %292 to i64
  %298 = getelementptr inbounds i8, ptr %296, i64 %297
  store ptr %298, ptr %295, align 8
  br label %326

299:                                              ; preds = %278
  %300 = load ptr, ptr %8, align 8
  %301 = getelementptr inbounds %struct.deflate_index, ptr %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.z_stream_s, ptr %301, i32 0, i32 1
  %303 = load i32, ptr %302, align 8
  %304 = load i32, ptr %22, align 4
  %305 = sub i32 %304, %303
  store i32 %305, ptr %22, align 4
  %306 = load ptr, ptr %8, align 8
  %307 = getelementptr inbounds %struct.deflate_index, ptr %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.z_stream_s, ptr %307, i32 0, i32 1
  store i32 0, ptr %308, align 8
  br label %309

309:                                              ; preds = %321, %299
  %310 = load ptr, ptr %7, align 8
  %311 = call i32 @getc(ptr noundef %310)
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = load ptr, ptr %7, align 8
  %315 = call i32 @ferror(ptr noundef %314) #7
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 -1, i32 -5
  %319 = sext i32 %318 to i64
  store i64 %319, ptr %6, align 8
  br label %422

320:                                              ; preds = %309
  br label %321

321:                                              ; preds = %320
  %322 = load i32, ptr %22, align 4
  %323 = add i32 %322, -1
  store i32 %323, ptr %22, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %309, label %325, !llvm.loop !10

325:                                              ; preds = %321
  br label %326

326:                                              ; preds = %325, %285
  %327 = load ptr, ptr %8, align 8
  %328 = getelementptr inbounds %struct.deflate_index, ptr %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.z_stream_s, ptr %328, i32 0, i32 1
  %330 = load i32, ptr %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load ptr, ptr %7, align 8
  %334 = call i32 @getc(ptr noundef %333)
  %335 = load ptr, ptr %7, align 8
  %336 = call i32 @ungetc(i32 noundef %334, ptr noundef %335)
  %337 = icmp ne i32 %336, -1
  br i1 %337, label %338, label %402

338:                                              ; preds = %332, %326
  %339 = load ptr, ptr %8, align 8
  %340 = getelementptr inbounds %struct.deflate_index, ptr %339, i32 0, i32 4
  %341 = call i32 @inflateReset2(ptr noundef %340, i32 noundef 31)
  br label %342

342:                                              ; preds = %392, %338
  %343 = load ptr, ptr %8, align 8
  %344 = getelementptr inbounds %struct.deflate_index, ptr %343, i32 0, i32 4
  %345 = getelementptr inbounds %struct.z_stream_s, ptr %344, i32 0, i32 1
  %346 = load i32, ptr %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %371

348:                                              ; preds = %342
  %349 = getelementptr inbounds [16384 x i8], ptr %18, i64 0, i64 0
  %350 = load ptr, ptr %7, align 8
  %351 = call i64 @fread(ptr noundef %349, i64 noundef 1, i64 noundef 16384, ptr noundef %350)
  %352 = trunc i64 %351 to i32
  %353 = load ptr, ptr %8, align 8
  %354 = getelementptr inbounds %struct.deflate_index, ptr %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.z_stream_s, ptr %354, i32 0, i32 1
  store i32 %352, ptr %355, align 8
  %356 = load ptr, ptr %8, align 8
  %357 = getelementptr inbounds %struct.deflate_index, ptr %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.z_stream_s, ptr %357, i32 0, i32 1
  %359 = load i32, ptr %358, align 8
  %360 = icmp ult i32 %359, 16384
  br i1 %360, label %361, label %366

361:                                              ; preds = %348
  %362 = load ptr, ptr %7, align 8
  %363 = call i32 @ferror(ptr noundef %362) #7
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %361
  store i32 -1, ptr %16, align 4
  br label %394

366:                                              ; preds = %361, %348
  %367 = getelementptr inbounds [16384 x i8], ptr %18, i64 0, i64 0
  %368 = load ptr, ptr %8, align 8
  %369 = getelementptr inbounds %struct.deflate_index, ptr %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.z_stream_s, ptr %369, i32 0, i32 0
  store ptr %367, ptr %370, align 8
  br label %371

371:                                              ; preds = %366, %342
  %372 = load ptr, ptr %8, align 8
  %373 = getelementptr inbounds %struct.deflate_index, ptr %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.z_stream_s, ptr %373, i32 0, i32 4
  store i32 32768, ptr %374, align 8
  %375 = getelementptr inbounds [32768 x i8], ptr %19, i64 0, i64 0
  %376 = load ptr, ptr %8, align 8
  %377 = getelementptr inbounds %struct.deflate_index, ptr %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.z_stream_s, ptr %377, i32 0, i32 3
  store ptr %375, ptr %378, align 8
  %379 = load ptr, ptr %8, align 8
  %380 = getelementptr inbounds %struct.deflate_index, ptr %379, i32 0, i32 4
  %381 = call i32 @inflate(ptr noundef %380, i32 noundef 5)
  store i32 %381, ptr %16, align 4
  br label %382

382:                                              ; preds = %371
  %383 = load i32, ptr %16, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load ptr, ptr %8, align 8
  %387 = getelementptr inbounds %struct.deflate_index, ptr %386, i32 0, i32 4
  %388 = getelementptr inbounds %struct.z_stream_s, ptr %387, i32 0, i32 11
  %389 = load i32, ptr %388, align 8
  %390 = and i32 %389, 128
  %391 = icmp eq i32 %390, 0
  br label %392

392:                                              ; preds = %385, %382
  %393 = phi i1 [ false, %382 ], [ %391, %385 ]
  br i1 %393, label %342, label %394, !llvm.loop !11

394:                                              ; preds = %392, %365
  %395 = load i32, ptr %16, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  br label %407

398:                                              ; preds = %394
  %399 = load ptr, ptr %8, align 8
  %400 = getelementptr inbounds %struct.deflate_index, ptr %399, i32 0, i32 4
  %401 = call i32 @inflateReset2(ptr noundef %400, i32 noundef -15)
  br label %402

402:                                              ; preds = %398, %332
  br label %403

403:                                              ; preds = %402, %273, %270
  br label %404

404:                                              ; preds = %403
  %405 = load i32, ptr %16, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %171, label %407, !llvm.loop !12

407:                                              ; preds = %404, %397, %268, %234
  %408 = load i32, ptr %16, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  %411 = load i32, ptr %16, align 4
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %413, label %417

413:                                              ; preds = %410, %407
  %414 = load i64, ptr %11, align 8
  %415 = load i64, ptr %20, align 8
  %416 = sub i64 %414, %415
  br label %420

417:                                              ; preds = %410
  %418 = load i32, ptr %16, align 4
  %419 = sext i32 %418 to i64
  br label %420

420:                                              ; preds = %417, %413
  %421 = phi i64 [ %416, %413 ], [ %419, %417 ]
  store i64 %421, ptr %6, align 8
  br label %422

422:                                              ; preds = %420, %313, %134, %118, %108, %57, %44
  %423 = load i64, ptr %6, align 8
  ret i64 %423
}

declare i32 @fseeko(ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @inflatePrime(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @inflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(1) }

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
