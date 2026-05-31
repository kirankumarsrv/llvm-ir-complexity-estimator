; ModuleID = 'corpus_zlib/examples/enough.c'
source_filename = "corpus_zlib/examples/enough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, i32, i64, i64, %struct.string_t, ptr, ptr, ptr }
%struct.string_t = type { ptr, i64, i64 }
%struct.tab = type { i64, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@g = dso_local global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [60 x i8] c"invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\0A\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"abort: code length too long for internal types\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d symbols cannot be coded in %d bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"g.code != NULL && \22out of memory\22\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"corpus_zlib/examples/enough.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"g.size <= (size_t)-1 / n && \22overflow\22\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"g.num != NULL && \22out of memory\22\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"got != (big_t)-1 && sum >= got && \22overflow\22\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%llu total codes for 2 to %d symbols\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" (%d-bit length limit)\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" (no length limit)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"g.done != NULL && \22out of memory\22\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"cannot handle minimum code lengths > root\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"s->str != NULL && \22out of memory\22\00", align 1
@__PRETTY_FUNCTION__.string_init = private unnamed_addr constant [29 x i8] c"void string_init(string_t *)\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"syms > left && left > 0 && len < g.max\00", align 1
@__PRETTY_FUNCTION__.count = private unnamed_addr constant [27 x i8] c"big_t count(int, int, int)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"sum != 0\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"maximum of %d table entries for root = %d\0A\00", align 1
@stdout = external global ptr, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"rem == left\00", align 1
@__PRETTY_FUNCTION__.examine = private unnamed_addr constant [38 x i8] c"void examine(int, int, int, int, int)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"(left & 1) == 0\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<%u, %u, %u>:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" %d[%d]\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"ret >= 0 && \22out of memory\22\00", align 1
@__PRETTY_FUNCTION__.string_printf = private unnamed_addr constant [44 x i8] c"void string_printf(string_t *, char *, ...)\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"s->size != 0 && \22overflow\22\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"vector != NULL && \22out of memory\22\00", align 1
@__PRETTY_FUNCTION__.been_here = private unnamed_addr constant [39 x i8] c"int been_here(int, int, int, int, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  call void @string_init(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  store i32 286, ptr %6, align 4
  store i32 9, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  store i32 15, ptr @g, align 8
  %13 = load i32, ptr %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18) #10
  store i32 %19, ptr %6, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @atoi(ptr noundef %25) #10
  store i32 %26, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @atoi(ptr noundef %32) #10
  store i32 %33, ptr @g, align 8
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, ptr %4, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr @g, align 8
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %39, %36
  %49 = load ptr, ptr @stderr, align 8
  %50 = call i32 @fputs(ptr noundef @.str, ptr noundef %49)
  store i32 1, ptr %3, align 4
  br label %226

51:                                               ; preds = %45
  %52 = load i32, ptr @g, align 8
  %53 = load i32, ptr %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, ptr @g, align 8
  br label %59

59:                                               ; preds = %56, %51
  store i32 0, ptr %7, align 4
  store i64 1, ptr %8, align 8
  br label %60

60:                                               ; preds = %66, %59
  %61 = load i64, ptr %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, ptr %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %7, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %8, align 8
  %68 = shl i64 %67, 1
  store i64 %68, ptr %8, align 8
  br label %60, !llvm.loop !6

69:                                               ; preds = %60
  %70 = load i32, ptr @g, align 8
  %71 = load i32, ptr %7, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %6, align 4
  %75 = sub nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = load i32, ptr @g, align 8
  %78 = sub nsw i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = lshr i64 -1, %79
  %81 = icmp uge i64 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73, %69
  %83 = load ptr, ptr @stderr, align 8
  %84 = call i32 @fputs(ptr noundef @.str.1, ptr noundef %83)
  store i32 1, ptr %3, align 4
  br label %226

85:                                               ; preds = %73
  %86 = load i32, ptr %6, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i32, ptr @g, align 8
  %90 = zext i32 %89 to i64
  %91 = shl i64 1, %90
  %92 = sub i64 %91, 1
  %93 = icmp ugt i64 %88, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load ptr, ptr @stderr, align 8
  %96 = load i32, ptr %6, align 4
  %97 = load i32, ptr @g, align 8
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.2, i32 noundef %96, i32 noundef %97)
  store i32 1, ptr %3, align 4
  br label %226

99:                                               ; preds = %85
  %100 = load i32, ptr @g, align 8
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = call noalias ptr @calloc(i64 noundef %102, i64 noundef 4) #11
  store ptr %103, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %104 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %105 = icmp ne ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  br i1 true, label %107, label %108

107:                                              ; preds = %106
  br label %109

108:                                              ; preds = %106, %99
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 547, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

109:                                              ; preds = %107
  %110 = load i32, ptr %6, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  br label %156

113:                                              ; preds = %109
  %114 = load i32, ptr %6, align 4
  %115 = ashr i32 %114, 1
  %116 = sext i32 %115 to i64
  store i64 %116, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %117 = load i32, ptr %6, align 4
  %118 = sub nsw i32 %117, 1
  %119 = ashr i32 %118, 1
  store i32 %119, ptr %9, align 4
  %120 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %121 = load i32, ptr %9, align 4
  %122 = sext i32 %121 to i64
  %123 = udiv i64 -1, %122
  %124 = icmp ule i64 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  br i1 true, label %126, label %127

126:                                              ; preds = %125
  br label %128

127:                                              ; preds = %125, %113
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 556, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

128:                                              ; preds = %126
  %129 = load i32, ptr %9, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %132 = mul i64 %131, %130
  store i64 %132, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %133 = load i32, ptr @g, align 8
  %134 = sub nsw i32 %133, 1
  store i32 %134, ptr %9, align 4
  %135 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %136 = load i32, ptr %9, align 4
  %137 = sext i32 %136 to i64
  %138 = udiv i64 -1, %137
  %139 = icmp ule i64 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  br i1 true, label %141, label %142

141:                                              ; preds = %140
  br label %143

142:                                              ; preds = %140, %128
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 559, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

143:                                              ; preds = %141
  %144 = load i32, ptr %9, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %147 = mul i64 %146, %145
  store i64 %147, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %148 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %149 = call noalias ptr @calloc(i64 noundef %148, i64 noundef 8) #11
  store ptr %149, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %150 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %151 = icmp ne ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  br i1 true, label %153, label %154

153:                                              ; preds = %152
  br label %155

154:                                              ; preds = %152, %143
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.5, i32 noundef 562, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %112
  store i64 0, ptr %10, align 8
  store i32 2, ptr %11, align 4
  br label %157

157:                                              ; preds = %177, %156
  %158 = load i32, ptr %11, align 4
  %159 = load i32, ptr %6, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %157
  %162 = load i32, ptr %11, align 4
  %163 = call i64 @count(i32 noundef %162, i32 noundef 2, i32 noundef 1)
  store i64 %163, ptr %12, align 8
  %164 = load i64, ptr %12, align 8
  %165 = load i64, ptr %10, align 8
  %166 = add i64 %165, %164
  store i64 %166, ptr %10, align 8
  %167 = load i64, ptr %12, align 8
  %168 = icmp ne i64 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load i64, ptr %10, align 8
  %171 = load i64, ptr %12, align 8
  %172 = icmp uge i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  br i1 true, label %174, label %175

174:                                              ; preds = %173
  br label %176

175:                                              ; preds = %173, %169, %161
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.5, i32 noundef 570, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %11, align 4
  br label %157, !llvm.loop !8

180:                                              ; preds = %157
  %181 = load i64, ptr %10, align 8
  %182 = load i32, ptr %6, align 4
  %183 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef %181, i32 noundef %182)
  %184 = load i32, ptr @g, align 8
  %185 = load i32, ptr %6, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, ptr @g, align 8
  %190 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %189)
  br label %193

191:                                              ; preds = %180
  %192 = call i32 @puts(ptr noundef @.str.12)
  br label %193

193:                                              ; preds = %191, %188
  %194 = load i32, ptr %6, align 4
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  br label %206

197:                                              ; preds = %193
  %198 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %199 = call noalias ptr @calloc(i64 noundef %198, i64 noundef 16) #11
  store ptr %199, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %200 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %201 = icmp ne ptr %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  br i1 true, label %203, label %204

203:                                              ; preds = %202
  br label %205

204:                                              ; preds = %202, %197
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.5, i32 noundef 583, ptr noundef @__PRETTY_FUNCTION__.main) #12
  unreachable

205:                                              ; preds = %203
  br label %206

206:                                              ; preds = %205, %196
  %207 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %208 = load i32, ptr @g, align 8
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, ptr @g, align 8
  store i32 %211, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32, ptr %6, align 4
  %214 = sext i32 %213 to i64
  %215 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %216 = add nsw i32 %215, 1
  %217 = zext i32 %216 to i64
  %218 = shl i64 1, %217
  %219 = icmp ult i64 %214, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = load i32, ptr %6, align 4
  call void @enough(i32 noundef %221)
  br label %225

222:                                              ; preds = %212
  %223 = load ptr, ptr @stderr, align 8
  %224 = call i32 @fputs(ptr noundef @.str.14, ptr noundef %223)
  br label %225

225:                                              ; preds = %222, %220
  call void @cleanup()
  store i32 0, ptr %3, align 4
  br label %226

226:                                              ; preds = %225, %94, %82, %48
  %227 = load i32, ptr %3, align 4
  ret i32 %227
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 1
  store i64 16, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.string_t, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = call noalias ptr @malloc(i64 noundef %7) #13
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.string_t, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.string_t, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  br i1 true, label %16, label %17

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15, %1
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.5, i32 noundef 190, ptr noundef @__PRETTY_FUNCTION__.string_init) #12
  unreachable

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8
  call void @string_clear(ptr noundef %19)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #1

declare i32 @fputs(ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 1, ptr %4, align 8
  br label %112

18:                                               ; preds = %3
  %19 = load i32, ptr %5, align 4
  %20 = load i32, ptr %6, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr @g, align 8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %31

30:                                               ; preds = %25, %22, %18
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.5, i32 noundef 267, ptr noundef @__PRETTY_FUNCTION__.count) #12
  unreachable

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %6, align 4
  %34 = load i32, ptr %7, align 4
  %35 = call i64 @map(i32 noundef %32, i32 noundef %33, i32 noundef %34)
  store i64 %35, ptr %8, align 8
  %36 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %37 = load i64, ptr %8, align 8
  %38 = getelementptr inbounds i64, ptr %36, i64 %37
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %9, align 8
  %40 = load i64, ptr %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i64, ptr %9, align 8
  store i64 %43, ptr %4, align 8
  br label %112

44:                                               ; preds = %31
  %45 = load i32, ptr %6, align 4
  %46 = shl i32 %45, 1
  %47 = load i32, ptr %5, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, ptr %10, align 4
  %49 = load i32, ptr %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, ptr %10, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, ptr %6, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, ptr @g, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = shl i64 %54, %58
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %59, %61
  %63 = load i32, ptr @g, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sub nsw i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = sub i64 %67, 1
  %69 = udiv i64 %62, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %11, align 4
  store i64 0, ptr %12, align 8
  %71 = load i32, ptr %10, align 4
  store i32 %71, ptr %13, align 4
  br label %72

72:                                               ; preds = %98, %52
  %73 = load i32, ptr %13, align 4
  %74 = load i32, ptr %11, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i32, ptr %5, align 4
  %78 = load i32, ptr %13, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, ptr %6, align 4
  %81 = load i32, ptr %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = shl i32 %82, 1
  %84 = load i32, ptr %7, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i64 @count(i32 noundef %79, i32 noundef %83, i32 noundef %85)
  store i64 %86, ptr %9, align 8
  %87 = load i64, ptr %9, align 8
  %88 = load i64, ptr %12, align 8
  %89 = add i64 %88, %87
  store i64 %89, ptr %12, align 8
  %90 = load i64, ptr %9, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %96, label %92

92:                                               ; preds = %76
  %93 = load i64, ptr %12, align 8
  %94 = load i64, ptr %9, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %76
  store i64 -1, ptr %4, align 8
  br label %112

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %13, align 4
  br label %72, !llvm.loop !9

101:                                              ; preds = %72
  %102 = load i64, ptr %12, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.5, i32 noundef 297, ptr noundef @__PRETTY_FUNCTION__.count) #12
  unreachable

106:                                              ; preds = %104
  %107 = load i64, ptr %12, align 8
  %108 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %109 = load i64, ptr %8, align 8
  %110 = getelementptr inbounds i64, ptr %108, i64 %109
  store i64 %107, ptr %110, align 8
  %111 = load i64, ptr %12, align 8
  store i64 %111, ptr %4, align 8
  br label %112

112:                                              ; preds = %106, %96, %42, %17
  %113 = load i64, ptr %4, align 8
  ret i64 %113
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enough(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %16, %1
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr @g, align 8
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %3, align 4
  br label %7, !llvm.loop !10

19:                                               ; preds = %7
  call void @string_clear(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  %20 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %21 = shl i32 1, %20
  store i32 %21, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %22 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %23 = load i32, ptr @g, align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %19
  store i32 3, ptr %4, align 4
  br label %26

26:                                               ; preds = %88, %25
  %27 = load i32, ptr %4, align 4
  %28 = load i32, ptr %2, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %26
  store i32 2, ptr %5, align 4
  br label %31

31:                                               ; preds = %84, %30
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  %36 = load i32, ptr %4, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %39 = add nsw i32 %38, 1
  %40 = call i64 @map(i32 noundef %36, i32 noundef %37, i32 noundef %39)
  store i64 %40, ptr %6, align 8
  %41 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, ptr @g, align 8
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %47 = load i64, ptr %6, align 8
  %48 = getelementptr inbounds i64, ptr %46, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, ptr %4, align 4
  %53 = load i32, ptr %5, align 4
  %54 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %57 = shl i32 1, %56
  call void @examine(i32 noundef %52, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef 0)
  br label %58

58:                                               ; preds = %51, %45, %35
  %59 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %60 = load i64, ptr %6, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i64, ptr %59, i64 %61
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i32, ptr %4, align 4
  %67 = load i32, ptr %5, align 4
  %68 = shl i32 %67, 1
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i32, ptr %4, align 4
  %72 = load i32, ptr %5, align 4
  %73 = sub nsw i32 %71, %72
  %74 = shl i32 %73, 1
  %75 = load i32, ptr %4, align 4
  %76 = load i32, ptr %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = shl i32 %77, 1
  %79 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %82 = shl i32 1, %81
  call void @examine(i32 noundef %74, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef 0)
  br label %83

83:                                               ; preds = %70, %65, %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %5, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, ptr %5, align 4
  br label %31, !llvm.loop !11

87:                                               ; preds = %31
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %4, align 4
  br label %26, !llvm.loop !12

91:                                               ; preds = %26
  br label %92

92:                                               ; preds = %91, %19
  %93 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %94 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %93, i32 noundef %94)
  %96 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), align 8
  %97 = load ptr, ptr @stdout, align 8
  %98 = call i32 @fputs(ptr noundef %96, ptr noundef %97)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %4, label %28

4:                                                ; preds = %0
  store i64 0, ptr %1, align 8
  br label %5

5:                                                ; preds = %23, %4
  %6 = load i64, ptr %1, align 8
  %7 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %11 = load i64, ptr %1, align 8
  %12 = getelementptr inbounds %struct.tab, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.tab, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %18 = load i64, ptr %1, align 8
  %19 = getelementptr inbounds %struct.tab, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.tab, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  call void @free(ptr noundef %21) #14
  br label %22

22:                                               ; preds = %16, %9
  br label %23

23:                                               ; preds = %22
  %24 = load i64, ptr %1, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %1, align 8
  br label %5, !llvm.loop !13

26:                                               ; preds = %5
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %27 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  call void @free(ptr noundef %27) #14
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  br label %28

28:                                               ; preds = %26, %0
  %29 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  call void @free(ptr noundef %29) #14
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  call void @free(ptr noundef %30) #14
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  call void @string_free(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_clear(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.string_t, ptr %7, i32 0, i32 2
  store i64 0, ptr %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sub nsw i32 %7, 1
  %9 = ashr i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = load i32, ptr %4, align 4
  %12 = sub nsw i32 %11, 2
  %13 = ashr i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %10, %14
  %16 = load i32, ptr %5, align 4
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = sub i64 %19, 1
  %21 = load i32, ptr @g, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %20, %23
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = sub i64 %27, 1
  ret i64 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @examine(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %129

19:                                               ; preds = %5
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 %20, ptr %24, align 4
  br label %25

25:                                               ; preds = %29, %19
  %26 = load i32, ptr %10, align 4
  %27 = load i32, ptr %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %7, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, ptr %7, align 4
  %33 = load i32, ptr %8, align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %35 = sub nsw i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, ptr %10, align 4
  %37 = load i32, ptr %10, align 4
  %38 = load i32, ptr %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, ptr %9, align 4
  br label %25, !llvm.loop !14

40:                                               ; preds = %25
  %41 = load i32, ptr %10, align 4
  %42 = load i32, ptr %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.5, i32 noundef 373, ptr noundef @__PRETTY_FUNCTION__.examine) #12
  unreachable

46:                                               ; preds = %44
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %124

50:                                               ; preds = %46
  %51 = load i32, ptr %9, align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, ptr %9, align 4
  store i32 %55, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  call void @string_clear(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  br label %56

56:                                               ; preds = %54, %50
  store i32 0, ptr %6, align 4
  %57 = load i32, ptr @g, align 8
  %58 = shl i32 1, %57
  store i32 %58, ptr %7, align 4
  %59 = load i32, ptr @g, align 8
  store i32 %59, ptr %11, align 4
  br label %60

60:                                               ; preds = %87, %56
  %61 = load i32, ptr %11, align 4
  %62 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %66 = load i32, ptr %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %65, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, ptr %6, align 4
  %72 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %73 = load i32, ptr %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %7, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, ptr %7, align 4
  %79 = load i32, ptr %7, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  br label %84

83:                                               ; preds = %64
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.5, i32 noundef 390, ptr noundef @__PRETTY_FUNCTION__.examine) #12
  unreachable

84:                                               ; preds = %82
  %85 = load i32, ptr %7, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, ptr %7, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, ptr %11, align 4
  br label %60, !llvm.loop !15

90:                                               ; preds = %60
  %91 = load i32, ptr %6, align 4
  %92 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %95 = shl i32 1, %94
  %96 = load i32, ptr %7, align 4
  %97 = sub nsw i32 %95, %96
  %98 = shl i32 %97, 1
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.21, i32 noundef %91, i32 noundef %93, i32 noundef %98)
  %99 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %12, align 4
  br label %101

101:                                              ; preds = %120, %90
  %102 = load i32, ptr %12, align 4
  %103 = load i32, ptr @g, align 8
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %107 = load i32, ptr %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %106, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %114 = load i32, ptr %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %113, i64 %115
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.22, i32 noundef %117, i32 noundef %118)
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %12, align 4
  br label %101, !llvm.loop !16

123:                                              ; preds = %101
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.23)
  br label %124

124:                                              ; preds = %123, %46
  %125 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %126 = load i32, ptr %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, ptr %125, i64 %127
  store i32 0, ptr %128, align 4
  br label %240

129:                                              ; preds = %5
  %130 = load i32, ptr %6, align 4
  %131 = load i32, ptr %7, align 4
  %132 = load i32, ptr %8, align 4
  %133 = load i32, ptr %9, align 4
  %134 = load i32, ptr %10, align 4
  %135 = call i32 @been_here(i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %240

138:                                              ; preds = %129
  %139 = load i32, ptr %7, align 4
  %140 = shl i32 %139, 1
  %141 = load i32, ptr %6, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, ptr %13, align 4
  %143 = load i32, ptr %13, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 0, ptr %13, align 4
  br label %146

146:                                              ; preds = %145, %138
  %147 = load i32, ptr %7, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, ptr @g, align 8
  %150 = load i32, ptr %8, align 4
  %151 = sub nsw i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = shl i64 %148, %152
  %154 = load i32, ptr %6, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 %153, %155
  %157 = load i32, ptr @g, align 8
  %158 = load i32, ptr %8, align 4
  %159 = sub nsw i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = shl i64 1, %160
  %162 = sub i64 %161, 1
  %163 = udiv i64 %156, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, ptr %14, align 4
  %165 = load i32, ptr %13, align 4
  store i32 %165, ptr %15, align 4
  br label %166

166:                                              ; preds = %170, %146
  %167 = load i32, ptr %10, align 4
  %168 = load i32, ptr %15, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i32, ptr %10, align 4
  %172 = load i32, ptr %15, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, ptr %15, align 4
  %174 = load i32, ptr %8, align 4
  %175 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %176 = sub nsw i32 %174, %175
  %177 = shl i32 1, %176
  store i32 %177, ptr %10, align 4
  %178 = load i32, ptr %10, align 4
  %179 = load i32, ptr %9, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, ptr %9, align 4
  br label %166, !llvm.loop !17

181:                                              ; preds = %166
  %182 = load i32, ptr %15, align 4
  %183 = load i32, ptr %10, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, ptr %10, align 4
  %185 = load i32, ptr %13, align 4
  store i32 %185, ptr %15, align 4
  br label %186

186:                                              ; preds = %232, %181
  %187 = load i32, ptr %15, align 4
  %188 = load i32, ptr %14, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %235

190:                                              ; preds = %186
  %191 = load i32, ptr %15, align 4
  %192 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %193 = load i32, ptr %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %192, i64 %194
  store i32 %191, ptr %195, align 4
  %196 = load i32, ptr %6, align 4
  %197 = load i32, ptr %15, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, ptr %7, align 4
  %200 = load i32, ptr %15, align 4
  %201 = sub nsw i32 %199, %200
  %202 = shl i32 %201, 1
  %203 = load i32, ptr %8, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, ptr %9, align 4
  %206 = load i32, ptr %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %190
  %209 = load i32, ptr %8, align 4
  %210 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %211 = sub nsw i32 %209, %210
  %212 = shl i32 1, %211
  br label %214

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213, %208
  %215 = phi i32 [ %212, %208 ], [ 0, %213 ]
  %216 = add nsw i32 %205, %215
  %217 = load i32, ptr %10, align 4
  %218 = shl i32 %217, 1
  call void @examine(i32 noundef %198, i32 noundef %202, i32 noundef %204, i32 noundef %216, i32 noundef %218)
  %219 = load i32, ptr %10, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %214
  %222 = load i32, ptr %8, align 4
  %223 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %224 = sub nsw i32 %222, %223
  %225 = shl i32 1, %224
  store i32 %225, ptr %10, align 4
  %226 = load i32, ptr %10, align 4
  %227 = load i32, ptr %9, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, ptr %9, align 4
  br label %229

229:                                              ; preds = %221, %214
  %230 = load i32, ptr %10, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, ptr %10, align 4
  br label %232

232:                                              ; preds = %229
  %233 = load i32, ptr %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %15, align 4
  br label %186, !llvm.loop !18

235:                                              ; preds = %186
  %236 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %237 = load i32, ptr %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, ptr %236, i64 %238
  store i32 0, ptr %239, align 4
  br label %240

240:                                              ; preds = %235, %137, %124
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_printf(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  call void @llvm.va_start(ptr %8)
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.string_t, ptr %9, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %6, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.string_t, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = load i64, ptr %6, align 8
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.string_t, ptr %17, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %6, align 8
  %21 = sub i64 %19, %20
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  %24 = call i32 @vsnprintf(ptr noundef %16, i64 noundef %21, ptr noundef %22, ptr noundef %23) #14
  store i32 %24, ptr %7, align 4
  %25 = load i32, ptr %7, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  br i1 true, label %28, label %29

28:                                               ; preds = %27
  br label %30

29:                                               ; preds = %27, %2
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.5, i32 noundef 209, ptr noundef @__PRETTY_FUNCTION__.string_printf) #12
  unreachable

30:                                               ; preds = %28
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.string_t, ptr %33, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, ptr %34, align 8
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.string_t, ptr %37, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.string_t, ptr %40, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %59, %45
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.string_t, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = shl i64 %49, 1
  store i64 %50, ptr %48, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.string_t, ptr %51, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  br i1 true, label %56, label %57

56:                                               ; preds = %55
  br label %58

57:                                               ; preds = %55, %46
  call void @__assert_fail(ptr noundef @.str.25, ptr noundef @.str.5, i32 noundef 214, ptr noundef @__PRETTY_FUNCTION__.string_printf) #12
  unreachable

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.string_t, ptr %60, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.string_t, ptr %63, i32 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, 1
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %46, label %68, !llvm.loop !19

68:                                               ; preds = %59
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.string_t, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.string_t, ptr %72, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = call ptr @realloc(ptr noundef %71, i64 noundef %74) #15
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct.string_t, ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.string_t, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  br i1 true, label %83, label %84

83:                                               ; preds = %82
  br label %85

84:                                               ; preds = %82, %68
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.5, i32 noundef 217, ptr noundef @__PRETTY_FUNCTION__.string_printf) #12
  unreachable

85:                                               ; preds = %83
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.string_t, ptr %86, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = load i64, ptr %6, align 8
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds %struct.string_t, ptr %91, i32 0, i32 1
  %93 = load i64, ptr %92, align 8
  %94 = load i64, ptr %6, align 8
  %95 = sub i64 %93, %94
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  %98 = call i32 @vsnprintf(ptr noundef %90, i64 noundef %95, ptr noundef %96, ptr noundef %97) #14
  br label %99

99:                                               ; preds = %85, %30
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  call void @llvm.va_end(ptr %100)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @been_here(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store i32 %0, ptr %7, align 4
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %9, align 4
  %20 = call i64 @map(i32 noundef %17, i32 noundef %18, i32 noundef %19)
  store i64 %20, ptr %12, align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %22 = shl i32 1, %21
  %23 = load i32, ptr %10, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, ptr %10, align 4
  %25 = load i32, ptr %10, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, ptr %10, align 4
  %27 = load i32, ptr %11, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, ptr %11, align 4
  %29 = load i32, ptr %10, align 4
  %30 = ashr i32 %29, 3
  %31 = load i32, ptr %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, ptr %13, align 8
  %34 = load i64, ptr %13, align 8
  %35 = load i64, ptr %13, align 8
  %36 = add i64 %35, 1
  %37 = mul i64 %34, %36
  %38 = lshr i64 %37, 1
  %39 = load i32, ptr %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  store i64 %41, ptr %13, align 8
  %42 = load i32, ptr %10, align 4
  %43 = and i32 %42, 7
  %44 = shl i32 1, %43
  store i32 %44, ptr %14, align 4
  %45 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %46 = load i64, ptr %12, align 8
  %47 = getelementptr inbounds %struct.tab, ptr %45, i64 %46
  %48 = getelementptr inbounds %struct.tab, ptr %47, i32 0, i32 0
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %15, align 8
  %50 = load i64, ptr %13, align 8
  %51 = load i64, ptr %15, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %5
  %54 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %55 = load i64, ptr %12, align 8
  %56 = getelementptr inbounds %struct.tab, ptr %54, i64 %55
  %57 = getelementptr inbounds %struct.tab, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = load i64, ptr %13, align 8
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, ptr %14, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 1, ptr %6, align 4
  br label %151

67:                                               ; preds = %53, %5
  %68 = load i64, ptr %15, align 8
  %69 = load i64, ptr %13, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %138

71:                                               ; preds = %67
  %72 = load i64, ptr %15, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %78, %74
  %76 = load i64, ptr %15, align 8
  %77 = shl i64 %76, 1
  store i64 %77, ptr %15, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %15, align 8
  %80 = load i64, ptr %13, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %75, label %82, !llvm.loop !20

82:                                               ; preds = %78
  %83 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %84 = load i64, ptr %12, align 8
  %85 = getelementptr inbounds %struct.tab, ptr %83, i64 %84
  %86 = getelementptr inbounds %struct.tab, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  %88 = load i64, ptr %15, align 8
  %89 = call ptr @realloc(ptr noundef %87, i64 noundef %88) #15
  store ptr %89, ptr %16, align 8
  %90 = load ptr, ptr %16, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  br i1 true, label %93, label %94

93:                                               ; preds = %92
  br label %95

94:                                               ; preds = %92, %82
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.5, i32 noundef 334, ptr noundef @__PRETTY_FUNCTION__.been_here) #12
  unreachable

95:                                               ; preds = %93
  %96 = load ptr, ptr %16, align 8
  %97 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %98 = load i64, ptr %12, align 8
  %99 = getelementptr inbounds %struct.tab, ptr %97, i64 %98
  %100 = getelementptr inbounds %struct.tab, ptr %99, i32 0, i32 0
  %101 = load i64, ptr %100, align 8
  %102 = getelementptr inbounds i8, ptr %96, i64 %101
  %103 = load i64, ptr %15, align 8
  %104 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %105 = load i64, ptr %12, align 8
  %106 = getelementptr inbounds %struct.tab, ptr %104, i64 %105
  %107 = getelementptr inbounds %struct.tab, ptr %106, i32 0, i32 0
  %108 = load i64, ptr %107, align 8
  %109 = sub i64 %103, %108
  call void @llvm.memset.p0.i64(ptr align 1 %102, i8 0, i64 %109, i1 false)
  br label %127

110:                                              ; preds = %71
  store i64 16, ptr %15, align 8
  br label %111

111:                                              ; preds = %115, %110
  %112 = load i64, ptr %15, align 8
  %113 = load i64, ptr %13, align 8
  %114 = icmp ule i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, ptr %15, align 8
  %117 = shl i64 %116, 1
  store i64 %117, ptr %15, align 8
  br label %111, !llvm.loop !21

118:                                              ; preds = %111
  %119 = load i64, ptr %15, align 8
  %120 = call noalias ptr @calloc(i64 noundef %119, i64 noundef 1) #11
  store ptr %120, ptr %16, align 8
  %121 = load ptr, ptr %16, align 8
  %122 = icmp ne ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  br i1 true, label %124, label %125

124:                                              ; preds = %123
  br label %126

125:                                              ; preds = %123, %118
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.5, i32 noundef 344, ptr noundef @__PRETTY_FUNCTION__.been_here) #12
  unreachable

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126, %95
  %128 = load i64, ptr %15, align 8
  %129 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %130 = load i64, ptr %12, align 8
  %131 = getelementptr inbounds %struct.tab, ptr %129, i64 %130
  %132 = getelementptr inbounds %struct.tab, ptr %131, i32 0, i32 0
  store i64 %128, ptr %132, align 8
  %133 = load ptr, ptr %16, align 8
  %134 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %135 = load i64, ptr %12, align 8
  %136 = getelementptr inbounds %struct.tab, ptr %134, i64 %135
  %137 = getelementptr inbounds %struct.tab, ptr %136, i32 0, i32 1
  store ptr %133, ptr %137, align 8
  br label %138

138:                                              ; preds = %127, %67
  %139 = load i32, ptr %14, align 4
  %140 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %141 = load i64, ptr %12, align 8
  %142 = getelementptr inbounds %struct.tab, ptr %140, i64 %141
  %143 = getelementptr inbounds %struct.tab, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = load i64, ptr %13, align 8
  %146 = getelementptr inbounds i8, ptr %144, i64 %145
  %147 = load i8, ptr %146, align 1
  %148 = sext i8 %147 to i32
  %149 = or i32 %148, %139
  %150 = trunc i32 %149 to i8
  store i8 %150, ptr %146, align 1
  store i32 0, ptr %6, align 4
  br label %151

151:                                              ; preds = %138, %66
  %152 = load i32, ptr %6, align 4
  ret i32 %152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @string_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %5) #14
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.string_t, ptr %6, i32 0, i32 0
  store ptr null, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.string_t, ptr %8, i32 0, i32 1
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.string_t, ptr %10, i32 0, i32 2
  store i64 0, ptr %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(1) }

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
