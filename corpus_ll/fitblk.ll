; ModuleID = 'corpus_zlib/examples/fitblk.c'
source_filename = "corpus_zlib/examples/fitblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"need one argument: size of output block\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"argument must be a number\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"need positive size of 8 or greater\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@stdin = external global ptr, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"error reading input\00", align 1
@stdout = external global ptr, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"error writing output\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ret != Z_STREAM_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"corpus_zlib/examples/fitblk.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@stderr = external global ptr, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"%u bytes unused out of %u requested (all input)\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ret == Z_STREAM_END\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"%u bytes unused out of %u requested (%lu input)\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"fitblk abort: %s\0A\00", align 1
@__PRETTY_FUNCTION__.partcompress = private unnamed_addr constant [36 x i8] c"int partcompress(FILE *, z_streamp)\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"ret != Z_STREAM_ERROR && ret != Z_DATA_ERROR && ret != Z_NEED_DICT\00", align 1
@__PRETTY_FUNCTION__.recompress = private unnamed_addr constant [37 x i8] c"int recompress(z_streamp, z_streamp)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.z_stream_s, align 8
  %12 = alloca %struct.z_stream_s, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %13 = load i32, ptr %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @quit(ptr noundef @.str)
  br label %16

16:                                               ; preds = %15, %2
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = call i64 @strtol(ptr noundef %19, ptr noundef %21, i32 noundef 10) #5
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %6, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  call void @quit(ptr noundef @.str.1)
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @quit(ptr noundef @.str.2)
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, ptr %6, align 4
  store i32 %37, ptr %7, align 4
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 256
  %40 = zext i32 %39 to i64
  %41 = call noalias ptr @malloc(i64 noundef %40) #6
  store ptr %41, ptr %9, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 8
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 10
  store ptr null, ptr %44, align 8
  %45 = call i32 @deflateInit_(ptr noundef %11, i32 noundef -1, ptr noundef @.str.3, i32 noundef 112)
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load ptr, ptr %9, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %36
  call void @quit(ptr noundef @.str.4)
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, ptr %7, align 4
  %54 = add i32 %53, 256
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  store i32 %54, ptr %55, align 8
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 3
  store ptr %56, ptr %57, align 8
  %58 = load ptr, ptr @stdin, align 8
  %59 = call i32 @partcompress(ptr noundef %58, ptr noundef %11)
  store i32 %59, ptr %6, align 4
  %60 = load i32, ptr %6, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  call void @quit(ptr noundef @.str.5)
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, ptr %6, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %103

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = icmp uge i32 %68, 256
  br i1 %69, label %70, label %103

70:                                               ; preds = %66
  %71 = load i32, ptr %7, align 4
  %72 = add i32 %71, 256
  %73 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = sub i32 %72, %74
  store i32 %75, ptr %8, align 4
  %76 = load ptr, ptr %9, align 8
  %77 = load i32, ptr %8, align 4
  %78 = zext i32 %77 to i64
  %79 = load ptr, ptr @stdout, align 8
  %80 = call i64 @fwrite(ptr noundef %76, i64 noundef 1, i64 noundef %78, ptr noundef %79)
  %81 = load i32, ptr %8, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %70
  %85 = load ptr, ptr @stdout, align 8
  %86 = call i32 @ferror(ptr noundef %85) #5
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %70
  call void @quit(ptr noundef @.str.6)
  br label %89

89:                                               ; preds = %88, %84
  %90 = call i32 @deflateEnd(ptr noundef %11)
  store i32 %90, ptr %6, align 4
  %91 = load i32, ptr %6, align 4
  %92 = icmp ne i32 %91, -2
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %95

94:                                               ; preds = %89
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 171, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

95:                                               ; preds = %93
  %96 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %96) #5
  %97 = load ptr, ptr @stderr, align 8
  %98 = load i32, ptr %7, align 4
  %99 = load i32, ptr %8, align 4
  %100 = sub i32 %98, %99
  %101 = load i32, ptr %7, align 4
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.9, i32 noundef %100, i32 noundef %101)
  store i32 0, ptr %3, align 4
  br label %213

103:                                              ; preds = %66, %63
  %104 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 8
  store ptr null, ptr %104, align 8
  %105 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  store ptr null, ptr %105, align 8
  %106 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10
  store ptr null, ptr %106, align 8
  %107 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  store ptr null, ptr %108, align 8
  %109 = call i32 @inflateInit_(ptr noundef %12, ptr noundef @.str.3, i32 noundef 112)
  store i32 %109, ptr %6, align 4
  %110 = load i32, ptr %7, align 4
  %111 = add i32 %110, 256
  %112 = zext i32 %111 to i64
  %113 = call noalias ptr @malloc(i64 noundef %112) #6
  store ptr %113, ptr %10, align 8
  %114 = load i32, ptr %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load ptr, ptr %10, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %103
  call void @quit(ptr noundef @.str.4)
  br label %120

120:                                              ; preds = %119, %116
  %121 = call i32 @deflateReset(ptr noundef %11)
  store i32 %121, ptr %6, align 4
  %122 = load i32, ptr %6, align 4
  %123 = icmp ne i32 %122, -2
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %126

125:                                              ; preds = %120
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 190, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

126:                                              ; preds = %124
  %127 = load i32, ptr %7, align 4
  %128 = add i32 %127, 256
  %129 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  store i32 %128, ptr %129, align 8
  %130 = load ptr, ptr %9, align 8
  %131 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  store ptr %130, ptr %131, align 8
  %132 = load i32, ptr %7, align 4
  %133 = add i32 %132, 256
  %134 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  store i32 %133, ptr %134, align 8
  %135 = load ptr, ptr %10, align 8
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 3
  store ptr %135, ptr %136, align 8
  %137 = call i32 @recompress(ptr noundef %12, ptr noundef %11)
  store i32 %137, ptr %6, align 4
  %138 = load i32, ptr %6, align 4
  %139 = icmp eq i32 %138, -4
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  call void @quit(ptr noundef @.str.4)
  br label %141

141:                                              ; preds = %140, %126
  %142 = call i32 @inflateReset(ptr noundef %12)
  store i32 %142, ptr %6, align 4
  %143 = load i32, ptr %6, align 4
  %144 = icmp ne i32 %143, -2
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %147

146:                                              ; preds = %141
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 203, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

147:                                              ; preds = %145
  %148 = call i32 @deflateReset(ptr noundef %11)
  store i32 %148, ptr %6, align 4
  %149 = load i32, ptr %6, align 4
  %150 = icmp ne i32 %149, -2
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %153

152:                                              ; preds = %147
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 205, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

153:                                              ; preds = %151
  %154 = load i32, ptr %7, align 4
  %155 = sub i32 %154, 8
  %156 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  store i32 %155, ptr %156, align 8
  %157 = load ptr, ptr %10, align 8
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  store ptr %157, ptr %158, align 8
  %159 = load i32, ptr %7, align 4
  %160 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  store i32 %159, ptr %160, align 8
  %161 = load ptr, ptr %9, align 8
  %162 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 3
  store ptr %161, ptr %162, align 8
  %163 = call i32 @recompress(ptr noundef %12, ptr noundef %11)
  store i32 %163, ptr %6, align 4
  %164 = load i32, ptr %6, align 4
  %165 = icmp eq i32 %164, -4
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  call void @quit(ptr noundef @.str.4)
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i32, ptr %6, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %172

171:                                              ; preds = %167
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.8, i32 noundef 215, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

172:                                              ; preds = %170
  %173 = load i32, ptr %7, align 4
  %174 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %175 = load i32, ptr %174, align 8
  %176 = sub i32 %173, %175
  store i32 %176, ptr %8, align 4
  %177 = load ptr, ptr %9, align 8
  %178 = load i32, ptr %8, align 4
  %179 = zext i32 %178 to i64
  %180 = load ptr, ptr @stdout, align 8
  %181 = call i64 @fwrite(ptr noundef %177, i64 noundef 1, i64 noundef %179, ptr noundef %180)
  %182 = load i32, ptr %8, align 4
  %183 = zext i32 %182 to i64
  %184 = icmp ne i64 %181, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %172
  %186 = load ptr, ptr @stdout, align 8
  %187 = call i32 @ferror(ptr noundef %186) #5
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %172
  call void @quit(ptr noundef @.str.6)
  br label %190

190:                                              ; preds = %189, %185
  %191 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %191) #5
  %192 = call i32 @inflateEnd(ptr noundef %12)
  store i32 %192, ptr %6, align 4
  %193 = load i32, ptr %6, align 4
  %194 = icmp ne i32 %193, -2
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %197

196:                                              ; preds = %190
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 225, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

197:                                              ; preds = %195
  %198 = call i32 @deflateEnd(ptr noundef %11)
  store i32 %198, ptr %6, align 4
  %199 = load i32, ptr %6, align 4
  %200 = icmp ne i32 %199, -2
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %203

202:                                              ; preds = %197
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 227, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

203:                                              ; preds = %201
  %204 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %204) #5
  %205 = load ptr, ptr @stderr, align 8
  %206 = load i32, ptr %7, align 4
  %207 = load i32, ptr %8, align 4
  %208 = sub i32 %206, %207
  %209 = load i32, ptr %7, align 4
  %210 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 2
  %211 = load i64, ptr %210, align 8
  %212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.11, i32 noundef %208, i32 noundef %209, i64 noundef %211)
  store i32 0, ptr %3, align 4
  br label %213

213:                                              ; preds = %203, %95
  %214 = load i32, ptr %3, align 4
  ret i32 %214
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.12, ptr noundef %4)
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partcompress(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %11 = load ptr, ptr %4, align 8
  %12 = call i64 @fread(ptr noundef %10, i64 noundef 1, i64 noundef 4096, ptr noundef %11)
  %13 = trunc i64 %12 to i32
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 1
  store i32 %13, ptr %15, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = call i32 @ferror(ptr noundef %16) #5
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 -1, ptr %3, align 4
  br label %49

20:                                               ; preds = %9
  %21 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = call i32 @feof(ptr noundef %24) #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 4, ptr %7, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load ptr, ptr %5, align 8
  %30 = load i32, ptr %7, align 4
  %31 = call i32 @deflate(ptr noundef %29, i32 noundef %30)
  store i32 %31, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp ne i32 %32, -2
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %36

35:                                               ; preds = %28
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 87, ptr noundef @__PRETTY_FUNCTION__.partcompress) #7
  unreachable

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, ptr %7, align 4
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  br i1 %46, label %9, label %47, !llvm.loop !6

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4
  store i32 %48, ptr %3, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, ptr %3, align 4
  ret i32 %50
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

declare i32 @deflateEnd(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @deflateReset(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recompress(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %64, %2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 4
  store i32 4096, ptr %11, align 8
  %12 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 3
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @inflate(ptr noundef %15, i32 noundef 0)
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ne i32 %17, -2
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load i32, ptr %6, align 4
  %21 = icmp ne i32 %20, -3
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22, %19, %9
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.8, i32 noundef 108, ptr noundef @__PRETTY_FUNCTION__.recompress) #7
  unreachable

27:                                               ; preds = %25
  %28 = load i32, ptr %6, align 4
  %29 = icmp eq i32 %28, -4
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  store i32 %31, ptr %3, align 4
  br label %68

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = sub i32 4096, %35
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 1
  store i32 %36, ptr %38, align 8
  %39 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 4, ptr %7, align 4
  br label %47

47:                                               ; preds = %46, %32
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %7, align 4
  %50 = call i32 @deflate(ptr noundef %48, i32 noundef %49)
  store i32 %50, ptr %6, align 4
  %51 = load i32, ptr %6, align 4
  %52 = icmp ne i32 %51, -2
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 118, ptr noundef @__PRETTY_FUNCTION__.recompress) #7
  unreachable

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %6, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ]
  br i1 %65, label %9, label %66, !llvm.loop !8

66:                                               ; preds = %64
  %67 = load i32, ptr %6, align 4
  store i32 %67, ptr %3, align 4
  br label %68

68:                                               ; preds = %66, %30
  %69 = load i32, ptr %3, align 4
  ret i32 %69
}

declare i32 @inflateReset(ptr noundef) #3

declare i32 @inflateEnd(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #1

declare i32 @deflate(ptr noundef, i32 noundef) #3

declare i32 @inflate(ptr noundef, i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
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
