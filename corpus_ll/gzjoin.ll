; ModuleID = 'corpus_zlib/examples/gzjoin.c'
source_filename = "corpus_zlib/examples/gzjoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.bin = type { ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [59 x i8] c"gzjoin usage: gzjoin f1.gz [f2.gz [f3.gz ...]] > fjoin.gz\0A\00", align 1
@stderr = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"\1F\8B\08\00\00\00\00\00\00\FF\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"could not open \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid compressed data in \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\00\00\FF\FF\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"gzjoin error: %s%s, output incomplete\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"unexpected end of file on \00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c" is not a valid gzip file\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"unknown reserved bits set in \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %8 = load i32, ptr %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %4, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i32 1
  store ptr %11, ptr %5, align 8
  %12 = load i32, ptr %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @stderr, align 8
  %16 = call i32 @fputs(ptr noundef @.str, ptr noundef %15)
  store i32 0, ptr %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load ptr, ptr @stdout, align 8
  call void @gzinit(ptr noundef %6, ptr noundef %7, ptr noundef %18)
  br label %19

19:                                               ; preds = %23, %17
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %4, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i32 1
  store ptr %25, ptr %5, align 8
  %26 = load ptr, ptr %24, align 8
  %27 = load i32, ptr %4, align 4
  %28 = load ptr, ptr @stdout, align 8
  call void @gzcopy(ptr noundef %26, i32 noundef %27, ptr noundef %6, ptr noundef %7, ptr noundef %28)
  br label %19, !llvm.loop !6

29:                                               ; preds = %19
  store i32 0, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, ptr %3, align 4
  ret i32 %31
}

declare i32 @fputs(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gzinit(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @fwrite(ptr noundef @.str.1, i64 noundef 1, i64 noundef 10, ptr noundef %7)
  %9 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %10 = load ptr, ptr %4, align 8
  store i64 %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  store i64 0, ptr %11, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gzcopy(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.z_stream_s, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call ptr @bopen(ptr noundef %19)
  store ptr %20, ptr %14, align 8
  %21 = load ptr, ptr %14, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load ptr, ptr %6, align 8
  %25 = call i32 @bail(ptr noundef @.str.2, ptr noundef %24)
  br label %26

26:                                               ; preds = %23, %5
  %27 = load ptr, ptr %14, align 8
  call void @gzhead(ptr noundef %27)
  %28 = call noalias ptr @malloc(i64 noundef 32768) #5
  store ptr %28, ptr %16, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 8
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 9
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 10
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  store ptr null, ptr %33, align 8
  %34 = call i32 @inflateInit2_(ptr noundef %18, i32 noundef -15, ptr noundef @.str.3, i32 noundef 112)
  store i32 %34, ptr %11, align 4
  %35 = load ptr, ptr %16, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, ptr %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %26
  %41 = call i32 @bail(ptr noundef @.str.4, ptr noundef @.str.5)
  br label %42

42:                                               ; preds = %40, %37
  store i64 0, ptr %17, align 8
  %43 = load ptr, ptr %14, align 8
  call void @zpull(ptr noundef %18, ptr noundef %43)
  %44 = load ptr, ptr %14, align 8
  %45 = getelementptr inbounds %struct.bin, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %15, align 8
  %47 = load ptr, ptr %15, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 0
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 1
  store i32 %51, ptr %13, align 4
  %52 = load i32, ptr %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load i32, ptr %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load ptr, ptr %15, align 8
  %59 = getelementptr inbounds i8, ptr %58, i64 0
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, -2
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %59, align 1
  br label %64

64:                                               ; preds = %57, %54, %42
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  store i32 0, ptr %65, align 8
  br label %66

66:                                               ; preds = %211, %64
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load ptr, ptr %15, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %15, align 8
  %79 = ptrtoint ptr %77 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = load ptr, ptr %10, align 8
  %83 = call i64 @fwrite(ptr noundef %75, i64 noundef 1, i64 noundef %81, ptr noundef %82)
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr inbounds %struct.bin, ptr %84, i32 0, i32 4
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %15, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr inbounds %struct.bin, ptr %87, i32 0, i32 2
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr %14, align 8
  call void @zpull(ptr noundef %18, ptr noundef %89)
  br label %90

90:                                               ; preds = %74, %70, %66
  %91 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  store i32 32768, ptr %91, align 8
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 3
  store ptr %92, ptr %93, align 8
  %94 = call i32 @inflate(ptr noundef %18, i32 noundef 5)
  store i32 %94, ptr %11, align 4
  %95 = load i32, ptr %11, align 4
  switch i32 %95, label %103 [
    i32 -4, label %96
    i32 -3, label %98
  ]

96:                                               ; preds = %90
  %97 = call i32 @bail(ptr noundef @.str.4, ptr noundef @.str.5)
  br label %98

98:                                               ; preds = %90, %96
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr inbounds %struct.bin, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = call i32 @bail(ptr noundef @.str.6, ptr noundef %101)
  br label %103

103:                                              ; preds = %98, %90
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 4
  %105 = load i32, ptr %104, align 8
  %106 = sub i32 32768, %105
  %107 = zext i32 %106 to i64
  %108 = load i64, ptr %17, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, ptr %17, align 8
  %110 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 11
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %211

114:                                              ; preds = %103
  %115 = load i32, ptr %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %212

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 11
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 7
  store i32 %121, ptr %12, align 4
  %122 = load i32, ptr %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %118
  %125 = load i32, ptr %12, align 4
  %126 = ashr i32 256, %125
  store i32 %126, ptr %12, align 4
  %127 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %128, i64 -1
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, ptr %12, align 4
  %133 = and i32 %131, %132
  store i32 %133, ptr %13, align 4
  %134 = load i32, ptr %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %124
  %137 = load i32, ptr %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = load i32, ptr %12, align 4
  %141 = xor i32 %140, -1
  %142 = load ptr, ptr %14, align 8
  %143 = getelementptr inbounds %struct.bin, ptr %142, i32 0, i32 4
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %146 = load ptr, ptr %145, align 8
  %147 = load ptr, ptr %14, align 8
  %148 = getelementptr inbounds %struct.bin, ptr %147, i32 0, i32 4
  %149 = load ptr, ptr %148, align 8
  %150 = ptrtoint ptr %146 to i64
  %151 = ptrtoint ptr %149 to i64
  %152 = sub i64 %150, %151
  %153 = sub nsw i64 %152, 1
  %154 = getelementptr inbounds i8, ptr %144, i64 %153
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, %141
  %158 = trunc i32 %157 to i8
  store i8 %158, ptr %154, align 1
  br label %159

159:                                              ; preds = %139, %136, %124
  br label %210

160:                                              ; preds = %118
  %161 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load ptr, ptr %15, align 8
  %166 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %167 = load ptr, ptr %166, align 8
  %168 = load ptr, ptr %15, align 8
  %169 = ptrtoint ptr %167 to i64
  %170 = ptrtoint ptr %168 to i64
  %171 = sub i64 %169, %170
  %172 = load ptr, ptr %10, align 8
  %173 = call i64 @fwrite(ptr noundef %165, i64 noundef 1, i64 noundef %171, ptr noundef %172)
  %174 = load ptr, ptr %14, align 8
  %175 = getelementptr inbounds %struct.bin, ptr %174, i32 0, i32 4
  %176 = load ptr, ptr %175, align 8
  store ptr %176, ptr %15, align 8
  %177 = load ptr, ptr %14, align 8
  %178 = getelementptr inbounds %struct.bin, ptr %177, i32 0, i32 2
  store i32 0, ptr %178, align 4
  %179 = load ptr, ptr %14, align 8
  call void @zpull(ptr noundef %18, ptr noundef %179)
  br label %180

180:                                              ; preds = %164, %160
  %181 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds i8, ptr %182, i64 0
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 1
  store i32 %186, ptr %13, align 4
  %187 = load i32, ptr %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %180
  %190 = load i32, ptr %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %189
  %193 = load ptr, ptr %14, align 8
  %194 = getelementptr inbounds %struct.bin, ptr %193, i32 0, i32 4
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %197 = load ptr, ptr %196, align 8
  %198 = load ptr, ptr %14, align 8
  %199 = getelementptr inbounds %struct.bin, ptr %198, i32 0, i32 4
  %200 = load ptr, ptr %199, align 8
  %201 = ptrtoint ptr %197 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = sub i64 %201, %202
  %204 = getelementptr inbounds i8, ptr %195, i64 %203
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %206, -2
  %208 = trunc i32 %207 to i8
  store i8 %208, ptr %204, align 1
  br label %209

209:                                              ; preds = %192, %189, %180
  br label %210

210:                                              ; preds = %209, %159
  br label %211

211:                                              ; preds = %210, %103
  br label %66

212:                                              ; preds = %117
  %213 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  %214 = load i32, ptr %213, align 8
  %215 = load ptr, ptr %14, align 8
  %216 = getelementptr inbounds %struct.bin, ptr %215, i32 0, i32 2
  store i32 %214, ptr %216, align 4
  %217 = load ptr, ptr %14, align 8
  %218 = getelementptr inbounds %struct.bin, ptr %217, i32 0, i32 4
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 0
  %221 = load ptr, ptr %220, align 8
  %222 = load ptr, ptr %14, align 8
  %223 = getelementptr inbounds %struct.bin, ptr %222, i32 0, i32 4
  %224 = load ptr, ptr %223, align 8
  %225 = ptrtoint ptr %221 to i64
  %226 = ptrtoint ptr %224 to i64
  %227 = sub i64 %225, %226
  %228 = getelementptr inbounds i8, ptr %219, i64 %227
  %229 = load ptr, ptr %14, align 8
  %230 = getelementptr inbounds %struct.bin, ptr %229, i32 0, i32 3
  store ptr %228, ptr %230, align 8
  %231 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 11
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 7
  store i32 %233, ptr %12, align 4
  %234 = load ptr, ptr %15, align 8
  %235 = load ptr, ptr %14, align 8
  %236 = getelementptr inbounds %struct.bin, ptr %235, i32 0, i32 3
  %237 = load ptr, ptr %236, align 8
  %238 = load ptr, ptr %15, align 8
  %239 = ptrtoint ptr %237 to i64
  %240 = ptrtoint ptr %238 to i64
  %241 = sub i64 %239, %240
  %242 = sub nsw i64 %241, 1
  %243 = load ptr, ptr %10, align 8
  %244 = call i64 @fwrite(ptr noundef %234, i64 noundef 1, i64 noundef %242, ptr noundef %243)
  %245 = load ptr, ptr %14, align 8
  %246 = getelementptr inbounds %struct.bin, ptr %245, i32 0, i32 3
  %247 = load ptr, ptr %246, align 8
  %248 = getelementptr inbounds i8, ptr %247, i64 -1
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  store i32 %250, ptr %13, align 4
  %251 = load i32, ptr %12, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %212
  %254 = load i32, ptr %7, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %253, %212
  %257 = load i32, ptr %13, align 4
  %258 = load ptr, ptr %10, align 8
  %259 = call i32 @putc(i32 noundef %257, ptr noundef %258)
  br label %302

260:                                              ; preds = %253
  %261 = load i32, ptr %12, align 4
  %262 = ashr i32 256, %261
  %263 = sub nsw i32 %262, 1
  %264 = load i32, ptr %13, align 4
  %265 = and i32 %264, %263
  store i32 %265, ptr %13, align 4
  %266 = load i32, ptr %12, align 4
  %267 = and i32 %266, 1
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %260
  %270 = load i32, ptr %13, align 4
  %271 = load ptr, ptr %10, align 8
  %272 = call i32 @putc(i32 noundef %270, ptr noundef %271)
  %273 = load i32, ptr %12, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load ptr, ptr %10, align 8
  %277 = call i32 @putc(i32 noundef 0, ptr noundef %276)
  br label %278

278:                                              ; preds = %275, %269
  %279 = load ptr, ptr %10, align 8
  %280 = call i64 @fwrite(ptr noundef @.str.7, i64 noundef 1, i64 noundef 4, ptr noundef %279)
  br label %301

281:                                              ; preds = %260
  %282 = load i32, ptr %12, align 4
  switch i32 %282, label %300 [
    i32 6, label %283
    i32 4, label %288
    i32 2, label %293
  ]

283:                                              ; preds = %281
  %284 = load i32, ptr %13, align 4
  %285 = or i32 %284, 8
  %286 = load ptr, ptr %10, align 8
  %287 = call i32 @putc(i32 noundef %285, ptr noundef %286)
  store i32 0, ptr %13, align 4
  br label %288

288:                                              ; preds = %281, %283
  %289 = load i32, ptr %13, align 4
  %290 = or i32 %289, 32
  %291 = load ptr, ptr %10, align 8
  %292 = call i32 @putc(i32 noundef %290, ptr noundef %291)
  store i32 0, ptr %13, align 4
  br label %293

293:                                              ; preds = %281, %288
  %294 = load i32, ptr %13, align 4
  %295 = or i32 %294, 128
  %296 = load ptr, ptr %10, align 8
  %297 = call i32 @putc(i32 noundef %295, ptr noundef %296)
  %298 = load ptr, ptr %10, align 8
  %299 = call i32 @putc(i32 noundef 0, ptr noundef %298)
  br label %300

300:                                              ; preds = %293, %281
  br label %301

301:                                              ; preds = %300, %278
  br label %302

302:                                              ; preds = %301, %256
  %303 = load ptr, ptr %8, align 8
  %304 = load i64, ptr %303, align 8
  %305 = load ptr, ptr %14, align 8
  %306 = call i64 @bget4(ptr noundef %305)
  %307 = load i64, ptr %17, align 8
  %308 = call i64 @crc32_combine(i64 noundef %304, i64 noundef %306, i64 noundef %307)
  %309 = load ptr, ptr %8, align 8
  store i64 %308, ptr %309, align 8
  %310 = load i64, ptr %17, align 8
  %311 = load ptr, ptr %9, align 8
  %312 = load i64, ptr %311, align 8
  %313 = add i64 %312, %310
  store i64 %313, ptr %311, align 8
  %314 = call i32 @inflateEnd(ptr noundef %18)
  %315 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %315) #6
  %316 = load ptr, ptr %14, align 8
  call void @bclose(ptr noundef %316)
  %317 = load i32, ptr %7, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %302
  %320 = load ptr, ptr %8, align 8
  %321 = load i64, ptr %320, align 8
  %322 = load ptr, ptr %10, align 8
  call void @put4(i64 noundef %321, ptr noundef %322)
  %323 = load ptr, ptr %9, align 8
  %324 = load i64, ptr %323, align 8
  %325 = load ptr, ptr %10, align 8
  call void @put4(i64 noundef %324, ptr noundef %325)
  br label %326

326:                                              ; preds = %319, %302
  ret void
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @bopen(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = call noalias ptr @malloc(i64 noundef 32) #5
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %40

9:                                                ; preds = %1
  %10 = call noalias ptr @malloc(i64 noundef 32768) #5
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.bin, ptr %11, i32 0, i32 4
  store ptr %10, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = call i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef 0, i32 noundef 0)
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.bin, ptr %15, i32 0, i32 1
  store i32 %14, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.bin, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.bin, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %9
  %27 = load ptr, ptr %4, align 8
  call void @bclose(ptr noundef %27)
  store ptr null, ptr %2, align 8
  br label %40

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.bin, ptr %29, i32 0, i32 2
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.bin, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.bin, ptr %34, i32 0, i32 3
  store ptr %33, ptr %35, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.bin, ptr %37, i32 0, i32 0
  store ptr %36, ptr %38, align 8
  %39 = load ptr, ptr %4, align 8
  store ptr %39, ptr %2, align 8
  br label %40

40:                                               ; preds = %28, %26, %8
  %41 = load ptr, ptr %2, align 8
  ret ptr %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bail(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @stderr, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.8, ptr noundef %6, ptr noundef %7)
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gzhead(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = call i32 @bload(ptr noundef %11)
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ 0, %9 ], [ %12, %10 ]
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.bin, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.bin, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.bin, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %27, ptr %25, align 8
  %28 = load i8, ptr %26, align 1
  %29 = zext i8 %28 to i32
  br label %35

30:                                               ; preds = %13
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.bin, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @bail(ptr noundef @.str.9, ptr noundef %33)
  br label %35

35:                                               ; preds = %30, %19
  %36 = phi i32 [ %29, %19 ], [ %34, %30 ]
  %37 = icmp ne i32 %36, 31
  br i1 %37, label %106, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.bin, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr %2, align 8
  %46 = call i32 @bload(ptr noundef %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.bin, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.bin, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.bin, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %61, ptr %59, align 8
  %62 = load i8, ptr %60, align 1
  %63 = zext i8 %62 to i32
  br label %69

64:                                               ; preds = %47
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.bin, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8
  %68 = call i32 @bail(ptr noundef @.str.9, ptr noundef %67)
  br label %69

69:                                               ; preds = %64, %53
  %70 = phi i32 [ %63, %53 ], [ %68, %64 ]
  %71 = icmp ne i32 %70, 139
  br i1 %71, label %106, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct.bin, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %81

78:                                               ; preds = %72
  %79 = load ptr, ptr %2, align 8
  %80 = call i32 @bload(ptr noundef %79)
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi i32 [ 0, %77 ], [ %80, %78 ]
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.bin, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.bin, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, ptr %89, align 4
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds %struct.bin, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %95, ptr %93, align 8
  %96 = load i8, ptr %94, align 1
  %97 = zext i8 %96 to i32
  br label %103

98:                                               ; preds = %81
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.bin, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = call i32 @bail(ptr noundef @.str.9, ptr noundef %101)
  br label %103

103:                                              ; preds = %98, %87
  %104 = phi i32 [ %97, %87 ], [ %102, %98 ]
  %105 = icmp ne i32 %104, 8
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %69, %35
  %107 = load ptr, ptr %2, align 8
  %108 = getelementptr inbounds %struct.bin, ptr %107, i32 0, i32 0
  %109 = load ptr, ptr %108, align 8
  %110 = call i32 @bail(ptr noundef %109, ptr noundef @.str.10)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load ptr, ptr %2, align 8
  %113 = getelementptr inbounds %struct.bin, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %120

117:                                              ; preds = %111
  %118 = load ptr, ptr %2, align 8
  %119 = call i32 @bload(ptr noundef %118)
  br label %120

120:                                              ; preds = %117, %116
  %121 = phi i32 [ 0, %116 ], [ %119, %117 ]
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr inbounds %struct.bin, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load ptr, ptr %2, align 8
  %128 = getelementptr inbounds %struct.bin, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, -1
  store i32 %130, ptr %128, align 4
  %131 = load ptr, ptr %2, align 8
  %132 = getelementptr inbounds %struct.bin, ptr %131, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds i8, ptr %133, i32 1
  store ptr %134, ptr %132, align 8
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i32
  br label %142

137:                                              ; preds = %120
  %138 = load ptr, ptr %2, align 8
  %139 = getelementptr inbounds %struct.bin, ptr %138, i32 0, i32 0
  %140 = load ptr, ptr %139, align 8
  %141 = call i32 @bail(ptr noundef @.str.9, ptr noundef %140)
  br label %142

142:                                              ; preds = %137, %126
  %143 = phi i32 [ %136, %126 ], [ %141, %137 ]
  store i32 %143, ptr %3, align 4
  %144 = load i32, ptr %3, align 4
  %145 = and i32 %144, 224
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load ptr, ptr %2, align 8
  %149 = getelementptr inbounds %struct.bin, ptr %148, i32 0, i32 0
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @bail(ptr noundef @.str.11, ptr noundef %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load ptr, ptr %2, align 8
  call void @bskip(ptr noundef %153, i32 noundef 6)
  %154 = load i32, ptr %3, align 4
  %155 = and i32 %154, 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %227

157:                                              ; preds = %152
  %158 = load ptr, ptr %2, align 8
  %159 = getelementptr inbounds %struct.bin, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %166

163:                                              ; preds = %157
  %164 = load ptr, ptr %2, align 8
  %165 = call i32 @bload(ptr noundef %164)
  br label %166

166:                                              ; preds = %163, %162
  %167 = phi i32 [ 0, %162 ], [ %165, %163 ]
  %168 = load ptr, ptr %2, align 8
  %169 = getelementptr inbounds %struct.bin, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr inbounds %struct.bin, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, -1
  store i32 %176, ptr %174, align 4
  %177 = load ptr, ptr %2, align 8
  %178 = getelementptr inbounds %struct.bin, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds i8, ptr %179, i32 1
  store ptr %180, ptr %178, align 8
  %181 = load i8, ptr %179, align 1
  %182 = zext i8 %181 to i32
  br label %188

183:                                              ; preds = %166
  %184 = load ptr, ptr %2, align 8
  %185 = getelementptr inbounds %struct.bin, ptr %184, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = call i32 @bail(ptr noundef @.str.9, ptr noundef %186)
  br label %188

188:                                              ; preds = %183, %172
  %189 = phi i32 [ %182, %172 ], [ %187, %183 ]
  store i32 %189, ptr %4, align 4
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds %struct.bin, ptr %190, i32 0, i32 2
  %192 = load i32, ptr %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %198

195:                                              ; preds = %188
  %196 = load ptr, ptr %2, align 8
  %197 = call i32 @bload(ptr noundef %196)
  br label %198

198:                                              ; preds = %195, %194
  %199 = phi i32 [ 0, %194 ], [ %197, %195 ]
  %200 = load ptr, ptr %2, align 8
  %201 = getelementptr inbounds %struct.bin, ptr %200, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = load ptr, ptr %2, align 8
  %206 = getelementptr inbounds %struct.bin, ptr %205, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, -1
  store i32 %208, ptr %206, align 4
  %209 = load ptr, ptr %2, align 8
  %210 = getelementptr inbounds %struct.bin, ptr %209, i32 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds i8, ptr %211, i32 1
  store ptr %212, ptr %210, align 8
  %213 = load i8, ptr %211, align 1
  %214 = zext i8 %213 to i32
  br label %220

215:                                              ; preds = %198
  %216 = load ptr, ptr %2, align 8
  %217 = getelementptr inbounds %struct.bin, ptr %216, i32 0, i32 0
  %218 = load ptr, ptr %217, align 8
  %219 = call i32 @bail(ptr noundef @.str.9, ptr noundef %218)
  br label %220

220:                                              ; preds = %215, %204
  %221 = phi i32 [ %214, %204 ], [ %219, %215 ]
  %222 = shl i32 %221, 8
  %223 = load i32, ptr %4, align 4
  %224 = add i32 %223, %222
  store i32 %224, ptr %4, align 4
  %225 = load ptr, ptr %2, align 8
  %226 = load i32, ptr %4, align 4
  call void @bskip(ptr noundef %225, i32 noundef %226)
  br label %227

227:                                              ; preds = %220, %152
  %228 = load i32, ptr %3, align 4
  %229 = and i32 %228, 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %268

231:                                              ; preds = %227
  br label %232

232:                                              ; preds = %266, %231
  %233 = load ptr, ptr %2, align 8
  %234 = getelementptr inbounds %struct.bin, ptr %233, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %241

238:                                              ; preds = %232
  %239 = load ptr, ptr %2, align 8
  %240 = call i32 @bload(ptr noundef %239)
  br label %241

241:                                              ; preds = %238, %237
  %242 = phi i32 [ 0, %237 ], [ %240, %238 ]
  %243 = load ptr, ptr %2, align 8
  %244 = getelementptr inbounds %struct.bin, ptr %243, i32 0, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %241
  %248 = load ptr, ptr %2, align 8
  %249 = getelementptr inbounds %struct.bin, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, -1
  store i32 %251, ptr %249, align 4
  %252 = load ptr, ptr %2, align 8
  %253 = getelementptr inbounds %struct.bin, ptr %252, i32 0, i32 3
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds i8, ptr %254, i32 1
  store ptr %255, ptr %253, align 8
  %256 = load i8, ptr %254, align 1
  %257 = zext i8 %256 to i32
  br label %263

258:                                              ; preds = %241
  %259 = load ptr, ptr %2, align 8
  %260 = getelementptr inbounds %struct.bin, ptr %259, i32 0, i32 0
  %261 = load ptr, ptr %260, align 8
  %262 = call i32 @bail(ptr noundef @.str.9, ptr noundef %261)
  br label %263

263:                                              ; preds = %258, %247
  %264 = phi i32 [ %257, %247 ], [ %262, %258 ]
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %232, !llvm.loop !8

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %267, %227
  %269 = load i32, ptr %3, align 4
  %270 = and i32 %269, 16
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %309

272:                                              ; preds = %268
  br label %273

273:                                              ; preds = %307, %272
  %274 = load ptr, ptr %2, align 8
  %275 = getelementptr inbounds %struct.bin, ptr %274, i32 0, i32 2
  %276 = load i32, ptr %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %282

279:                                              ; preds = %273
  %280 = load ptr, ptr %2, align 8
  %281 = call i32 @bload(ptr noundef %280)
  br label %282

282:                                              ; preds = %279, %278
  %283 = phi i32 [ 0, %278 ], [ %281, %279 ]
  %284 = load ptr, ptr %2, align 8
  %285 = getelementptr inbounds %struct.bin, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %282
  %289 = load ptr, ptr %2, align 8
  %290 = getelementptr inbounds %struct.bin, ptr %289, i32 0, i32 2
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, -1
  store i32 %292, ptr %290, align 4
  %293 = load ptr, ptr %2, align 8
  %294 = getelementptr inbounds %struct.bin, ptr %293, i32 0, i32 3
  %295 = load ptr, ptr %294, align 8
  %296 = getelementptr inbounds i8, ptr %295, i32 1
  store ptr %296, ptr %294, align 8
  %297 = load i8, ptr %295, align 1
  %298 = zext i8 %297 to i32
  br label %304

299:                                              ; preds = %282
  %300 = load ptr, ptr %2, align 8
  %301 = getelementptr inbounds %struct.bin, ptr %300, i32 0, i32 0
  %302 = load ptr, ptr %301, align 8
  %303 = call i32 @bail(ptr noundef @.str.9, ptr noundef %302)
  br label %304

304:                                              ; preds = %299, %288
  %305 = phi i32 [ %298, %288 ], [ %303, %299 ]
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %273, !llvm.loop !9

308:                                              ; preds = %304
  br label %309

309:                                              ; preds = %308, %268
  %310 = load i32, ptr %3, align 4
  %311 = and i32 %310, 2
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load ptr, ptr %2, align 8
  call void @bskip(ptr noundef %314, i32 noundef 2)
  br label %315

315:                                              ; preds = %313, %309
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpull(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bin, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = call i32 @bload(ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.bin, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.bin, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @bail(ptr noundef @.str.9, ptr noundef %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.bin, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 1
  store i32 %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.bin, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  ret void
}

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

declare i64 @crc32_combine(i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bget4(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.bin, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = call i32 @bload(ptr noundef %10)
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.bin, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.bin, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.bin, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %26, ptr %24, align 8
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i32
  br label %34

29:                                               ; preds = %12
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.bin, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @bail(ptr noundef @.str.9, ptr noundef %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = phi i32 [ %28, %18 ], [ %33, %29 ]
  %36 = sext i32 %35 to i64
  store i64 %36, ptr %3, align 8
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.bin, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %45

42:                                               ; preds = %34
  %43 = load ptr, ptr %2, align 8
  %44 = call i32 @bload(ptr noundef %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ 0, %41 ], [ %44, %42 ]
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.bin, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.bin, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.bin, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %59, ptr %57, align 8
  %60 = load i8, ptr %58, align 1
  %61 = zext i8 %60 to i32
  br label %67

62:                                               ; preds = %45
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.bin, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @bail(ptr noundef @.str.9, ptr noundef %65)
  br label %67

67:                                               ; preds = %62, %51
  %68 = phi i32 [ %61, %51 ], [ %66, %62 ]
  %69 = sext i32 %68 to i64
  %70 = shl i64 %69, 8
  %71 = load i64, ptr %3, align 8
  %72 = add i64 %71, %70
  store i64 %72, ptr %3, align 8
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct.bin, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %81

78:                                               ; preds = %67
  %79 = load ptr, ptr %2, align 8
  %80 = call i32 @bload(ptr noundef %79)
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi i32 [ 0, %77 ], [ %80, %78 ]
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.bin, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.bin, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, ptr %89, align 4
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds %struct.bin, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %95, ptr %93, align 8
  %96 = load i8, ptr %94, align 1
  %97 = zext i8 %96 to i32
  br label %103

98:                                               ; preds = %81
  %99 = load ptr, ptr %2, align 8
  %100 = getelementptr inbounds %struct.bin, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = call i32 @bail(ptr noundef @.str.9, ptr noundef %101)
  br label %103

103:                                              ; preds = %98, %87
  %104 = phi i32 [ %97, %87 ], [ %102, %98 ]
  %105 = sext i32 %104 to i64
  %106 = shl i64 %105, 16
  %107 = load i64, ptr %3, align 8
  %108 = add i64 %107, %106
  store i64 %108, ptr %3, align 8
  %109 = load ptr, ptr %2, align 8
  %110 = getelementptr inbounds %struct.bin, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %117

114:                                              ; preds = %103
  %115 = load ptr, ptr %2, align 8
  %116 = call i32 @bload(ptr noundef %115)
  br label %117

117:                                              ; preds = %114, %113
  %118 = phi i32 [ 0, %113 ], [ %116, %114 ]
  %119 = load ptr, ptr %2, align 8
  %120 = getelementptr inbounds %struct.bin, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load ptr, ptr %2, align 8
  %125 = getelementptr inbounds %struct.bin, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, -1
  store i32 %127, ptr %125, align 4
  %128 = load ptr, ptr %2, align 8
  %129 = getelementptr inbounds %struct.bin, ptr %128, i32 0, i32 3
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %131, ptr %129, align 8
  %132 = load i8, ptr %130, align 1
  %133 = zext i8 %132 to i32
  br label %139

134:                                              ; preds = %117
  %135 = load ptr, ptr %2, align 8
  %136 = getelementptr inbounds %struct.bin, ptr %135, i32 0, i32 0
  %137 = load ptr, ptr %136, align 8
  %138 = call i32 @bail(ptr noundef @.str.9, ptr noundef %137)
  br label %139

139:                                              ; preds = %134, %123
  %140 = phi i32 [ %133, %123 ], [ %138, %134 ]
  %141 = sext i32 %140 to i64
  %142 = shl i64 %141, 24
  %143 = load i64, ptr %3, align 8
  %144 = add i64 %143, %142
  store i64 %144, ptr %3, align 8
  %145 = load i64, ptr %3, align 8
  ret i64 %145
}

declare i32 @inflateEnd(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bclose(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.bin, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.bin, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = call i32 @close(i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.bin, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.bin, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  call void @free(ptr noundef %23) #6
  br label %24

24:                                               ; preds = %20, %15
  %25 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %25) #6
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put4(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 255
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @putc(i32 noundef %7, ptr noundef %8)
  %10 = load i64, ptr %3, align 8
  %11 = lshr i64 %10, 8
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i32
  %14 = load ptr, ptr %4, align 8
  %15 = call i32 @putc(i32 noundef %13, ptr noundef %14)
  %16 = load i64, ptr %3, align 8
  %17 = lshr i64 %16, 16
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr %4, align 8
  %21 = call i32 @putc(i32 noundef %19, ptr noundef %20)
  %22 = load i64, ptr %3, align 8
  %23 = lshr i64 %22, 24
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %4, align 8
  %27 = call i32 @putc(i32 noundef %25, ptr noundef %26)
  ret void
}

declare i32 @open(ptr noundef, i32 noundef, ...) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bload(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, ptr %2, align 4
  br label %63

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.bin, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %63

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.bin, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.bin, ptr %18, i32 0, i32 3
  store ptr %17, ptr %19, align 8
  br label %20

20:                                               ; preds = %56, %14
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.bin, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.bin, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.bin, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %26, i64 %30
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.bin, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 32768, %34
  %36 = zext i32 %35 to i64
  %37 = call i64 @read(i32 noundef %23, ptr noundef %31, i64 noundef %36)
  store i64 %37, ptr %4, align 8
  %38 = load i64, ptr %4, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 -1, ptr %2, align 4
  br label %63

41:                                               ; preds = %20
  %42 = load i64, ptr %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.bin, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %43
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i64, ptr %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.bin, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %54, 32768
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %20, label %58, !llvm.loop !10

58:                                               ; preds = %56
  %59 = load i64, ptr %4, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, ptr %2, align 4
  br label %63

63:                                               ; preds = %58, %40, %13, %7
  %64 = load i32, ptr %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bskip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %99

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.bin, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i32, ptr %4, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.bin, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %19, %16
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr %4, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.bin, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = zext i32 %21 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %26, ptr %23, align 8
  br label %99

27:                                               ; preds = %9
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.bin, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sub i32 %31, %30
  store i32 %32, ptr %4, align 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.bin, ptr %33, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp ugt i32 %35, 32768
  br i1 %36, label %37, label %74

37:                                               ; preds = %27
  %38 = load i32, ptr %4, align 4
  %39 = and i32 %38, 32767
  store i32 %39, ptr %5, align 4
  %40 = load i32, ptr %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.bin, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %4, align 4
  %47 = sub i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = call i64 @lseek(i32 noundef %45, i64 noundef %48, i32 noundef 1) #6
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.bin, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.bin, ptr %53, i32 0, i32 4
  %55 = load ptr, ptr %54, align 8
  %56 = call i64 @read(i32 noundef %52, ptr noundef %55, i64 noundef 1)
  %57 = icmp ne i64 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %42
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.bin, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = call i32 @bail(ptr noundef @.str.9, ptr noundef %61)
  br label %63

63:                                               ; preds = %58, %42
  br label %99

64:                                               ; preds = %37
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.bin, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = load i32, ptr %4, align 4
  %69 = load i32, ptr %5, align 4
  %70 = sub i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = call i64 @lseek(i32 noundef %67, i64 noundef %71, i32 noundef 1) #6
  %73 = load i32, ptr %5, align 4
  store i32 %73, ptr %4, align 4
  br label %74

74:                                               ; preds = %64, %27
  %75 = load ptr, ptr %3, align 8
  %76 = call i32 @bload(ptr noundef %75)
  %77 = load i32, ptr %4, align 4
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.bin, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load ptr, ptr %3, align 8
  %84 = getelementptr inbounds %struct.bin, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  %86 = call i32 @bail(ptr noundef @.str.9, ptr noundef %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, ptr %4, align 4
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.bin, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 %91, %88
  store i32 %92, ptr %90, align 4
  %93 = load i32, ptr %4, align 4
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds %struct.bin, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8
  %97 = zext i32 %93 to i64
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  store ptr %98, ptr %95, align 8
  br label %99

99:                                               ; preds = %87, %63, %15, %8
  ret void
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

declare i32 @close(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
