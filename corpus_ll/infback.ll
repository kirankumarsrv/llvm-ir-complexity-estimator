; ModuleID = 'corpus_zlib/infback.c'
source_filename = "corpus_zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@inflateBack.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateBackInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  %13 = load ptr, ptr %10, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 0
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, ptr @.str, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %11, align 4
  %25 = icmp ne i32 %24, 112
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %15, %5
  store i32 -6, ptr %6, align 4
  br label %93

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %8, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4
  %38 = icmp sgt i32 %37, 15
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %27
  store i32 -2, ptr %6, align 4
  br label %93

40:                                               ; preds = %36
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %41, i32 0, i32 6
  store ptr null, ptr %42, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 8
  store ptr @zcalloc, ptr %49, align 8
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 10
  store ptr null, ptr %51, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 9
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, ptr %58, i32 0, i32 9
  store ptr @zcfree, ptr %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %61, i32 0, i32 8
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 10
  %66 = load ptr, ptr %65, align 8
  %67 = call ptr %63(ptr noundef %66, i32 noundef 1, i32 noundef 7160)
  store ptr %67, ptr %12, align 8
  %68 = load ptr, ptr %12, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 -4, ptr %6, align 4
  br label %93

71:                                               ; preds = %60
  %72 = load ptr, ptr %12, align 8
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds %struct.z_stream_s, ptr %73, i32 0, i32 7
  store ptr %72, ptr %74, align 8
  %75 = load ptr, ptr %12, align 8
  %76 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 6
  store i32 32768, ptr %76, align 4
  %77 = load i32, ptr %8, align 4
  %78 = load ptr, ptr %12, align 8
  %79 = getelementptr inbounds %struct.inflate_state, ptr %78, i32 0, i32 10
  store i32 %77, ptr %79, align 8
  %80 = load i32, ptr %8, align 4
  %81 = shl i32 1, %80
  %82 = load ptr, ptr %12, align 8
  %83 = getelementptr inbounds %struct.inflate_state, ptr %82, i32 0, i32 11
  store i32 %81, ptr %83, align 4
  %84 = load ptr, ptr %9, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 14
  store ptr %84, ptr %86, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds %struct.inflate_state, ptr %87, i32 0, i32 13
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds %struct.inflate_state, ptr %89, i32 0, i32 12
  store i32 0, ptr %90, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = getelementptr inbounds %struct.inflate_state, ptr %91, i32 0, i32 32
  store i32 1, ptr %92, align 8
  store i32 0, ptr %6, align 4
  br label %93

93:                                               ; preds = %71, %70, %39, %26
  %94 = load i32, ptr %6, align 4
  ret i32 %94
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateBack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca %struct.code, align 2
  %22 = alloca %struct.code, align 2
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %5
  store i32 -2, ptr %6, align 4
  br label %1684

33:                                               ; preds = %27
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %12, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 6
  store ptr null, ptr %38, align 8
  %39 = load ptr, ptr %12, align 8
  %40 = getelementptr inbounds %struct.inflate_state, ptr %39, i32 0, i32 1
  store i32 16191, ptr %40, align 8
  %41 = load ptr, ptr %12, align 8
  %42 = getelementptr inbounds %struct.inflate_state, ptr %41, i32 0, i32 2
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %12, align 8
  %44 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 12
  store i32 0, ptr %44, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %13, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %33
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 8
  br label %55

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  store i32 %56, ptr %15, align 4
  store i64 0, ptr %17, align 8
  store i32 0, ptr %18, align 4
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %14, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.inflate_state, ptr %60, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %16, align 4
  br label %63

63:                                               ; preds = %1651, %55
  %64 = load ptr, ptr %12, align 8
  %65 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  switch i32 %66, label %1650 [
    i32 16191, label %67
    i32 16193, label %158
    i32 16196, label %307
    i32 16200, label %950
    i32 16208, label %1648
    i32 16209, label %1649
  ]

67:                                               ; preds = %63
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds %struct.inflate_state, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %18, align 4
  %75 = and i32 %74, 7
  %76 = load i64, ptr %17, align 8
  %77 = zext i32 %75 to i64
  %78 = lshr i64 %76, %77
  store i64 %78, ptr %17, align 8
  %79 = load i32, ptr %18, align 4
  %80 = and i32 %79, 7
  %81 = load i32, ptr %18, align 4
  %82 = sub i32 %81, %80
  store i32 %82, ptr %18, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds %struct.inflate_state, ptr %84, i32 0, i32 1
  store i32 16208, ptr %85, align 8
  br label %1651

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %119, %87
  %89 = load i32, ptr %18, align 4
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load ptr, ptr %8, align 8
  %98 = load ptr, ptr %9, align 8
  %99 = call i32 %97(ptr noundef %98, ptr noundef %13)
  store i32 %99, ptr %15, align 4
  %100 = load i32, ptr %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %93
  br label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %15, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %15, align 4
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %109, ptr %13, align 8
  %110 = load i8, ptr %108, align 1
  %111 = zext i8 %110 to i64
  %112 = load i32, ptr %18, align 4
  %113 = zext i32 %112 to i64
  %114 = shl i64 %111, %113
  %115 = load i64, ptr %17, align 8
  %116 = add i64 %115, %114
  store i64 %116, ptr %17, align 8
  %117 = load i32, ptr %18, align 4
  %118 = add i32 %117, 8
  store i32 %118, ptr %18, align 4
  br label %119

119:                                              ; preds = %105
  br label %88, !llvm.loop !6

120:                                              ; preds = %88
  br label %121

121:                                              ; preds = %120
  %122 = load i64, ptr %17, align 8
  %123 = trunc i64 %122 to i32
  %124 = and i32 %123, 1
  %125 = load ptr, ptr %12, align 8
  %126 = getelementptr inbounds %struct.inflate_state, ptr %125, i32 0, i32 2
  store i32 %124, ptr %126, align 4
  br label %127

127:                                              ; preds = %121
  %128 = load i64, ptr %17, align 8
  %129 = lshr i64 %128, 1
  store i64 %129, ptr %17, align 8
  %130 = load i32, ptr %18, align 4
  %131 = sub i32 %130, 1
  store i32 %131, ptr %18, align 4
  br label %132

132:                                              ; preds = %127
  %133 = load i64, ptr %17, align 8
  %134 = trunc i64 %133 to i32
  %135 = and i32 %134, 3
  switch i32 %135, label %146 [
    i32 0, label %136
    i32 1, label %139
    i32 2, label %143
  ]

136:                                              ; preds = %132
  %137 = load ptr, ptr %12, align 8
  %138 = getelementptr inbounds %struct.inflate_state, ptr %137, i32 0, i32 1
  store i32 16193, ptr %138, align 8
  br label %151

139:                                              ; preds = %132
  %140 = load ptr, ptr %12, align 8
  call void @inflate_fixed(ptr noundef %140)
  %141 = load ptr, ptr %12, align 8
  %142 = getelementptr inbounds %struct.inflate_state, ptr %141, i32 0, i32 1
  store i32 16200, ptr %142, align 8
  br label %151

143:                                              ; preds = %132
  %144 = load ptr, ptr %12, align 8
  %145 = getelementptr inbounds %struct.inflate_state, ptr %144, i32 0, i32 1
  store i32 16196, ptr %145, align 8
  br label %151

146:                                              ; preds = %132
  %147 = load ptr, ptr %7, align 8
  %148 = getelementptr inbounds %struct.z_stream_s, ptr %147, i32 0, i32 6
  store ptr @.str.1, ptr %148, align 8
  %149 = load ptr, ptr %12, align 8
  %150 = getelementptr inbounds %struct.inflate_state, ptr %149, i32 0, i32 1
  store i32 16209, ptr %150, align 8
  br label %151

151:                                              ; preds = %146, %143, %139, %136
  br label %152

152:                                              ; preds = %151
  %153 = load i64, ptr %17, align 8
  %154 = lshr i64 %153, 2
  store i64 %154, ptr %17, align 8
  %155 = load i32, ptr %18, align 4
  %156 = sub i32 %155, 2
  store i32 %156, ptr %18, align 4
  br label %157

157:                                              ; preds = %152
  br label %1651

158:                                              ; preds = %63
  br label %159

159:                                              ; preds = %158
  %160 = load i32, ptr %18, align 4
  %161 = and i32 %160, 7
  %162 = load i64, ptr %17, align 8
  %163 = zext i32 %161 to i64
  %164 = lshr i64 %162, %163
  store i64 %164, ptr %17, align 8
  %165 = load i32, ptr %18, align 4
  %166 = and i32 %165, 7
  %167 = load i32, ptr %18, align 4
  %168 = sub i32 %167, %166
  store i32 %168, ptr %18, align 4
  br label %169

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %202, %170
  %172 = load i32, ptr %18, align 4
  %173 = icmp ult i32 %172, 32
  br i1 %173, label %174, label %203

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  %177 = load i32, ptr %15, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load ptr, ptr %8, align 8
  %181 = load ptr, ptr %9, align 8
  %182 = call i32 %180(ptr noundef %181, ptr noundef %13)
  store i32 %182, ptr %15, align 4
  %183 = load i32, ptr %15, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %176
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %15, align 4
  %190 = add i32 %189, -1
  store i32 %190, ptr %15, align 4
  %191 = load ptr, ptr %13, align 8
  %192 = getelementptr inbounds i8, ptr %191, i32 1
  store ptr %192, ptr %13, align 8
  %193 = load i8, ptr %191, align 1
  %194 = zext i8 %193 to i64
  %195 = load i32, ptr %18, align 4
  %196 = zext i32 %195 to i64
  %197 = shl i64 %194, %196
  %198 = load i64, ptr %17, align 8
  %199 = add i64 %198, %197
  store i64 %199, ptr %17, align 8
  %200 = load i32, ptr %18, align 4
  %201 = add i32 %200, 8
  store i32 %201, ptr %18, align 4
  br label %202

202:                                              ; preds = %188
  br label %171, !llvm.loop !8

203:                                              ; preds = %171
  br label %204

204:                                              ; preds = %203
  %205 = load i64, ptr %17, align 8
  %206 = and i64 %205, 65535
  %207 = load i64, ptr %17, align 8
  %208 = lshr i64 %207, 16
  %209 = xor i64 %208, 65535
  %210 = icmp ne i64 %206, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %204
  %212 = load ptr, ptr %7, align 8
  %213 = getelementptr inbounds %struct.z_stream_s, ptr %212, i32 0, i32 6
  store ptr @.str.2, ptr %213, align 8
  %214 = load ptr, ptr %12, align 8
  %215 = getelementptr inbounds %struct.inflate_state, ptr %214, i32 0, i32 1
  store i32 16209, ptr %215, align 8
  br label %1651

216:                                              ; preds = %204
  %217 = load i64, ptr %17, align 8
  %218 = trunc i64 %217 to i32
  %219 = and i32 %218, 65535
  %220 = load ptr, ptr %12, align 8
  %221 = getelementptr inbounds %struct.inflate_state, ptr %220, i32 0, i32 17
  store i32 %219, ptr %221, align 4
  br label %222

222:                                              ; preds = %216
  store i64 0, ptr %17, align 8
  store i32 0, ptr %18, align 4
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %280, %223
  %225 = load ptr, ptr %12, align 8
  %226 = getelementptr inbounds %struct.inflate_state, ptr %225, i32 0, i32 17
  %227 = load i32, ptr %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %304

229:                                              ; preds = %224
  %230 = load ptr, ptr %12, align 8
  %231 = getelementptr inbounds %struct.inflate_state, ptr %230, i32 0, i32 17
  %232 = load i32, ptr %231, align 4
  store i32 %232, ptr %19, align 4
  br label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %15, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load ptr, ptr %8, align 8
  %238 = load ptr, ptr %9, align 8
  %239 = call i32 %237(ptr noundef %238, ptr noundef %13)
  store i32 %239, ptr %15, align 4
  %240 = load i32, ptr %15, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %233
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  %247 = load i32, ptr %16, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %246
  %250 = load ptr, ptr %12, align 8
  %251 = getelementptr inbounds %struct.inflate_state, ptr %250, i32 0, i32 14
  %252 = load ptr, ptr %251, align 8
  store ptr %252, ptr %14, align 8
  %253 = load ptr, ptr %12, align 8
  %254 = getelementptr inbounds %struct.inflate_state, ptr %253, i32 0, i32 11
  %255 = load i32, ptr %254, align 4
  store i32 %255, ptr %16, align 4
  %256 = load i32, ptr %16, align 4
  %257 = load ptr, ptr %12, align 8
  %258 = getelementptr inbounds %struct.inflate_state, ptr %257, i32 0, i32 12
  store i32 %256, ptr %258, align 8
  %259 = load ptr, ptr %10, align 8
  %260 = load ptr, ptr %11, align 8
  %261 = load ptr, ptr %14, align 8
  %262 = load i32, ptr %16, align 4
  %263 = call i32 %259(ptr noundef %260, ptr noundef %261, i32 noundef %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %249
  store i32 -5, ptr %24, align 4
  br label %1652

266:                                              ; preds = %249
  br label %267

267:                                              ; preds = %266, %246
  br label %268

268:                                              ; preds = %267
  %269 = load i32, ptr %19, align 4
  %270 = load i32, ptr %15, align 4
  %271 = icmp ugt i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, ptr %15, align 4
  store i32 %273, ptr %19, align 4
  br label %274

274:                                              ; preds = %272, %268
  %275 = load i32, ptr %19, align 4
  %276 = load i32, ptr %16, align 4
  %277 = icmp ugt i32 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i32, ptr %16, align 4
  store i32 %279, ptr %19, align 4
  br label %280

280:                                              ; preds = %278, %274
  %281 = load ptr, ptr %14, align 8
  %282 = load ptr, ptr %13, align 8
  %283 = load i32, ptr %19, align 4
  %284 = zext i32 %283 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %281, ptr align 1 %282, i64 %284, i1 false)
  %285 = load i32, ptr %19, align 4
  %286 = load i32, ptr %15, align 4
  %287 = sub i32 %286, %285
  store i32 %287, ptr %15, align 4
  %288 = load i32, ptr %19, align 4
  %289 = load ptr, ptr %13, align 8
  %290 = zext i32 %288 to i64
  %291 = getelementptr inbounds i8, ptr %289, i64 %290
  store ptr %291, ptr %13, align 8
  %292 = load i32, ptr %19, align 4
  %293 = load i32, ptr %16, align 4
  %294 = sub i32 %293, %292
  store i32 %294, ptr %16, align 4
  %295 = load i32, ptr %19, align 4
  %296 = load ptr, ptr %14, align 8
  %297 = zext i32 %295 to i64
  %298 = getelementptr inbounds i8, ptr %296, i64 %297
  store ptr %298, ptr %14, align 8
  %299 = load i32, ptr %19, align 4
  %300 = load ptr, ptr %12, align 8
  %301 = getelementptr inbounds %struct.inflate_state, ptr %300, i32 0, i32 17
  %302 = load i32, ptr %301, align 4
  %303 = sub i32 %302, %299
  store i32 %303, ptr %301, align 4
  br label %224, !llvm.loop !9

304:                                              ; preds = %224
  %305 = load ptr, ptr %12, align 8
  %306 = getelementptr inbounds %struct.inflate_state, ptr %305, i32 0, i32 1
  store i32 16191, ptr %306, align 8
  br label %1651

307:                                              ; preds = %63
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %340, %308
  %310 = load i32, ptr %18, align 4
  %311 = icmp ult i32 %310, 14
  br i1 %311, label %312, label %341

312:                                              ; preds = %309
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  %315 = load i32, ptr %15, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %314
  %318 = load ptr, ptr %8, align 8
  %319 = load ptr, ptr %9, align 8
  %320 = call i32 %318(ptr noundef %319, ptr noundef %13)
  store i32 %320, ptr %15, align 4
  %321 = load i32, ptr %15, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

324:                                              ; preds = %317
  br label %325

325:                                              ; preds = %324, %314
  br label %326

326:                                              ; preds = %325
  %327 = load i32, ptr %15, align 4
  %328 = add i32 %327, -1
  store i32 %328, ptr %15, align 4
  %329 = load ptr, ptr %13, align 8
  %330 = getelementptr inbounds i8, ptr %329, i32 1
  store ptr %330, ptr %13, align 8
  %331 = load i8, ptr %329, align 1
  %332 = zext i8 %331 to i64
  %333 = load i32, ptr %18, align 4
  %334 = zext i32 %333 to i64
  %335 = shl i64 %332, %334
  %336 = load i64, ptr %17, align 8
  %337 = add i64 %336, %335
  store i64 %337, ptr %17, align 8
  %338 = load i32, ptr %18, align 4
  %339 = add i32 %338, 8
  store i32 %339, ptr %18, align 4
  br label %340

340:                                              ; preds = %326
  br label %309, !llvm.loop !10

341:                                              ; preds = %309
  br label %342

342:                                              ; preds = %341
  %343 = load i64, ptr %17, align 8
  %344 = trunc i64 %343 to i32
  %345 = and i32 %344, 31
  %346 = add i32 %345, 257
  %347 = load ptr, ptr %12, align 8
  %348 = getelementptr inbounds %struct.inflate_state, ptr %347, i32 0, i32 25
  store i32 %346, ptr %348, align 4
  br label %349

349:                                              ; preds = %342
  %350 = load i64, ptr %17, align 8
  %351 = lshr i64 %350, 5
  store i64 %351, ptr %17, align 8
  %352 = load i32, ptr %18, align 4
  %353 = sub i32 %352, 5
  store i32 %353, ptr %18, align 4
  br label %354

354:                                              ; preds = %349
  %355 = load i64, ptr %17, align 8
  %356 = trunc i64 %355 to i32
  %357 = and i32 %356, 31
  %358 = add i32 %357, 1
  %359 = load ptr, ptr %12, align 8
  %360 = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 26
  store i32 %358, ptr %360, align 8
  br label %361

361:                                              ; preds = %354
  %362 = load i64, ptr %17, align 8
  %363 = lshr i64 %362, 5
  store i64 %363, ptr %17, align 8
  %364 = load i32, ptr %18, align 4
  %365 = sub i32 %364, 5
  store i32 %365, ptr %18, align 4
  br label %366

366:                                              ; preds = %361
  %367 = load i64, ptr %17, align 8
  %368 = trunc i64 %367 to i32
  %369 = and i32 %368, 15
  %370 = add i32 %369, 4
  %371 = load ptr, ptr %12, align 8
  %372 = getelementptr inbounds %struct.inflate_state, ptr %371, i32 0, i32 24
  store i32 %370, ptr %372, align 8
  br label %373

373:                                              ; preds = %366
  %374 = load i64, ptr %17, align 8
  %375 = lshr i64 %374, 4
  store i64 %375, ptr %17, align 8
  %376 = load i32, ptr %18, align 4
  %377 = sub i32 %376, 4
  store i32 %377, ptr %18, align 4
  br label %378

378:                                              ; preds = %373
  %379 = load ptr, ptr %12, align 8
  %380 = getelementptr inbounds %struct.inflate_state, ptr %379, i32 0, i32 25
  %381 = load i32, ptr %380, align 4
  %382 = icmp ugt i32 %381, 286
  br i1 %382, label %388, label %383

383:                                              ; preds = %378
  %384 = load ptr, ptr %12, align 8
  %385 = getelementptr inbounds %struct.inflate_state, ptr %384, i32 0, i32 26
  %386 = load i32, ptr %385, align 8
  %387 = icmp ugt i32 %386, 30
  br i1 %387, label %388, label %393

388:                                              ; preds = %383, %378
  %389 = load ptr, ptr %7, align 8
  %390 = getelementptr inbounds %struct.z_stream_s, ptr %389, i32 0, i32 6
  store ptr @.str.3, ptr %390, align 8
  %391 = load ptr, ptr %12, align 8
  %392 = getelementptr inbounds %struct.inflate_state, ptr %391, i32 0, i32 1
  store i32 16209, ptr %392, align 8
  br label %1651

393:                                              ; preds = %383
  %394 = load ptr, ptr %12, align 8
  %395 = getelementptr inbounds %struct.inflate_state, ptr %394, i32 0, i32 27
  store i32 0, ptr %395, align 4
  br label %396

396:                                              ; preds = %460, %393
  %397 = load ptr, ptr %12, align 8
  %398 = getelementptr inbounds %struct.inflate_state, ptr %397, i32 0, i32 27
  %399 = load i32, ptr %398, align 4
  %400 = load ptr, ptr %12, align 8
  %401 = getelementptr inbounds %struct.inflate_state, ptr %400, i32 0, i32 24
  %402 = load i32, ptr %401, align 8
  %403 = icmp ult i32 %399, %402
  br i1 %403, label %404, label %461

404:                                              ; preds = %396
  br label %405

405:                                              ; preds = %404
  br label %406

406:                                              ; preds = %437, %405
  %407 = load i32, ptr %18, align 4
  %408 = icmp ult i32 %407, 3
  br i1 %408, label %409, label %438

409:                                              ; preds = %406
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  %412 = load i32, ptr %15, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %411
  %415 = load ptr, ptr %8, align 8
  %416 = load ptr, ptr %9, align 8
  %417 = call i32 %415(ptr noundef %416, ptr noundef %13)
  store i32 %417, ptr %15, align 4
  %418 = load i32, ptr %15, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %414
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

421:                                              ; preds = %414
  br label %422

422:                                              ; preds = %421, %411
  br label %423

423:                                              ; preds = %422
  %424 = load i32, ptr %15, align 4
  %425 = add i32 %424, -1
  store i32 %425, ptr %15, align 4
  %426 = load ptr, ptr %13, align 8
  %427 = getelementptr inbounds i8, ptr %426, i32 1
  store ptr %427, ptr %13, align 8
  %428 = load i8, ptr %426, align 1
  %429 = zext i8 %428 to i64
  %430 = load i32, ptr %18, align 4
  %431 = zext i32 %430 to i64
  %432 = shl i64 %429, %431
  %433 = load i64, ptr %17, align 8
  %434 = add i64 %433, %432
  store i64 %434, ptr %17, align 8
  %435 = load i32, ptr %18, align 4
  %436 = add i32 %435, 8
  store i32 %436, ptr %18, align 4
  br label %437

437:                                              ; preds = %423
  br label %406, !llvm.loop !11

438:                                              ; preds = %406
  br label %439

439:                                              ; preds = %438
  %440 = load i64, ptr %17, align 8
  %441 = trunc i64 %440 to i32
  %442 = and i32 %441, 7
  %443 = trunc i32 %442 to i16
  %444 = load ptr, ptr %12, align 8
  %445 = getelementptr inbounds %struct.inflate_state, ptr %444, i32 0, i32 29
  %446 = load ptr, ptr %12, align 8
  %447 = getelementptr inbounds %struct.inflate_state, ptr %446, i32 0, i32 27
  %448 = load i32, ptr %447, align 4
  %449 = add i32 %448, 1
  store i32 %449, ptr %447, align 4
  %450 = zext i32 %448 to i64
  %451 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %450
  %452 = load i16, ptr %451, align 2
  %453 = zext i16 %452 to i64
  %454 = getelementptr inbounds [320 x i16], ptr %445, i64 0, i64 %453
  store i16 %443, ptr %454, align 2
  br label %455

455:                                              ; preds = %439
  %456 = load i64, ptr %17, align 8
  %457 = lshr i64 %456, 3
  store i64 %457, ptr %17, align 8
  %458 = load i32, ptr %18, align 4
  %459 = sub i32 %458, 3
  store i32 %459, ptr %18, align 4
  br label %460

460:                                              ; preds = %455
  br label %396, !llvm.loop !12

461:                                              ; preds = %396
  br label %462

462:                                              ; preds = %467, %461
  %463 = load ptr, ptr %12, align 8
  %464 = getelementptr inbounds %struct.inflate_state, ptr %463, i32 0, i32 27
  %465 = load i32, ptr %464, align 4
  %466 = icmp ult i32 %465, 19
  br i1 %466, label %467, label %479

467:                                              ; preds = %462
  %468 = load ptr, ptr %12, align 8
  %469 = getelementptr inbounds %struct.inflate_state, ptr %468, i32 0, i32 29
  %470 = load ptr, ptr %12, align 8
  %471 = getelementptr inbounds %struct.inflate_state, ptr %470, i32 0, i32 27
  %472 = load i32, ptr %471, align 4
  %473 = add i32 %472, 1
  store i32 %473, ptr %471, align 4
  %474 = zext i32 %472 to i64
  %475 = getelementptr inbounds [19 x i16], ptr @inflateBack.order, i64 0, i64 %474
  %476 = load i16, ptr %475, align 2
  %477 = zext i16 %476 to i64
  %478 = getelementptr inbounds [320 x i16], ptr %469, i64 0, i64 %477
  store i16 0, ptr %478, align 2
  br label %462, !llvm.loop !13

479:                                              ; preds = %462
  %480 = load ptr, ptr %12, align 8
  %481 = getelementptr inbounds %struct.inflate_state, ptr %480, i32 0, i32 31
  %482 = getelementptr inbounds [1444 x %struct.code], ptr %481, i64 0, i64 0
  %483 = load ptr, ptr %12, align 8
  %484 = getelementptr inbounds %struct.inflate_state, ptr %483, i32 0, i32 28
  store ptr %482, ptr %484, align 8
  %485 = load ptr, ptr %12, align 8
  %486 = getelementptr inbounds %struct.inflate_state, ptr %485, i32 0, i32 28
  %487 = load ptr, ptr %486, align 8
  %488 = load ptr, ptr %12, align 8
  %489 = getelementptr inbounds %struct.inflate_state, ptr %488, i32 0, i32 20
  store ptr %487, ptr %489, align 8
  %490 = load ptr, ptr %12, align 8
  %491 = getelementptr inbounds %struct.inflate_state, ptr %490, i32 0, i32 22
  store i32 7, ptr %491, align 8
  %492 = load ptr, ptr %12, align 8
  %493 = getelementptr inbounds %struct.inflate_state, ptr %492, i32 0, i32 29
  %494 = getelementptr inbounds [320 x i16], ptr %493, i64 0, i64 0
  %495 = load ptr, ptr %12, align 8
  %496 = getelementptr inbounds %struct.inflate_state, ptr %495, i32 0, i32 28
  %497 = load ptr, ptr %12, align 8
  %498 = getelementptr inbounds %struct.inflate_state, ptr %497, i32 0, i32 22
  %499 = load ptr, ptr %12, align 8
  %500 = getelementptr inbounds %struct.inflate_state, ptr %499, i32 0, i32 30
  %501 = getelementptr inbounds [288 x i16], ptr %500, i64 0, i64 0
  %502 = call i32 @inflate_table(i32 noundef 0, ptr noundef %494, i32 noundef 19, ptr noundef %496, ptr noundef %498, ptr noundef %501)
  store i32 %502, ptr %24, align 4
  %503 = load i32, ptr %24, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %479
  %506 = load ptr, ptr %7, align 8
  %507 = getelementptr inbounds %struct.z_stream_s, ptr %506, i32 0, i32 6
  store ptr @.str.4, ptr %507, align 8
  %508 = load ptr, ptr %12, align 8
  %509 = getelementptr inbounds %struct.inflate_state, ptr %508, i32 0, i32 1
  store i32 16209, ptr %509, align 8
  br label %1651

510:                                              ; preds = %479
  %511 = load ptr, ptr %12, align 8
  %512 = getelementptr inbounds %struct.inflate_state, ptr %511, i32 0, i32 27
  store i32 0, ptr %512, align 4
  br label %513

513:                                              ; preds = %860, %510
  %514 = load ptr, ptr %12, align 8
  %515 = getelementptr inbounds %struct.inflate_state, ptr %514, i32 0, i32 27
  %516 = load i32, ptr %515, align 4
  %517 = load ptr, ptr %12, align 8
  %518 = getelementptr inbounds %struct.inflate_state, ptr %517, i32 0, i32 25
  %519 = load i32, ptr %518, align 4
  %520 = load ptr, ptr %12, align 8
  %521 = getelementptr inbounds %struct.inflate_state, ptr %520, i32 0, i32 26
  %522 = load i32, ptr %521, align 8
  %523 = add i32 %519, %522
  %524 = icmp ult i32 %516, %523
  br i1 %524, label %525, label %861

525:                                              ; preds = %513
  br label %526

526:                                              ; preds = %574, %525
  %527 = load ptr, ptr %12, align 8
  %528 = getelementptr inbounds %struct.inflate_state, ptr %527, i32 0, i32 20
  %529 = load ptr, ptr %528, align 8
  %530 = load i64, ptr %17, align 8
  %531 = trunc i64 %530 to i32
  %532 = load ptr, ptr %12, align 8
  %533 = getelementptr inbounds %struct.inflate_state, ptr %532, i32 0, i32 22
  %534 = load i32, ptr %533, align 8
  %535 = shl i32 1, %534
  %536 = sub i32 %535, 1
  %537 = and i32 %531, %536
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds %struct.code, ptr %529, i64 %538
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %539, i64 4, i1 false)
  %540 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %541 = load i8, ptr %540, align 1
  %542 = zext i8 %541 to i32
  %543 = load i32, ptr %18, align 4
  %544 = icmp ule i32 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %526
  br label %575

546:                                              ; preds = %526
  br label %547

547:                                              ; preds = %546
  br label %548

548:                                              ; preds = %547
  %549 = load i32, ptr %15, align 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %559

551:                                              ; preds = %548
  %552 = load ptr, ptr %8, align 8
  %553 = load ptr, ptr %9, align 8
  %554 = call i32 %552(ptr noundef %553, ptr noundef %13)
  store i32 %554, ptr %15, align 4
  %555 = load i32, ptr %15, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %551
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

558:                                              ; preds = %551
  br label %559

559:                                              ; preds = %558, %548
  br label %560

560:                                              ; preds = %559
  %561 = load i32, ptr %15, align 4
  %562 = add i32 %561, -1
  store i32 %562, ptr %15, align 4
  %563 = load ptr, ptr %13, align 8
  %564 = getelementptr inbounds i8, ptr %563, i32 1
  store ptr %564, ptr %13, align 8
  %565 = load i8, ptr %563, align 1
  %566 = zext i8 %565 to i64
  %567 = load i32, ptr %18, align 4
  %568 = zext i32 %567 to i64
  %569 = shl i64 %566, %568
  %570 = load i64, ptr %17, align 8
  %571 = add i64 %570, %569
  store i64 %571, ptr %17, align 8
  %572 = load i32, ptr %18, align 4
  %573 = add i32 %572, 8
  store i32 %573, ptr %18, align 4
  br label %574

574:                                              ; preds = %560
  br label %526

575:                                              ; preds = %545
  %576 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %577 = load i16, ptr %576, align 2
  %578 = zext i16 %577 to i32
  %579 = icmp slt i32 %578, 16
  br i1 %579, label %580, label %604

580:                                              ; preds = %575
  br label %581

581:                                              ; preds = %580
  %582 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %583 = load i8, ptr %582, align 1
  %584 = zext i8 %583 to i32
  %585 = load i64, ptr %17, align 8
  %586 = zext i32 %584 to i64
  %587 = lshr i64 %585, %586
  store i64 %587, ptr %17, align 8
  %588 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %589 = load i8, ptr %588, align 1
  %590 = zext i8 %589 to i32
  %591 = load i32, ptr %18, align 4
  %592 = sub i32 %591, %590
  store i32 %592, ptr %18, align 4
  br label %593

593:                                              ; preds = %581
  %594 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %595 = load i16, ptr %594, align 2
  %596 = load ptr, ptr %12, align 8
  %597 = getelementptr inbounds %struct.inflate_state, ptr %596, i32 0, i32 29
  %598 = load ptr, ptr %12, align 8
  %599 = getelementptr inbounds %struct.inflate_state, ptr %598, i32 0, i32 27
  %600 = load i32, ptr %599, align 4
  %601 = add i32 %600, 1
  store i32 %601, ptr %599, align 4
  %602 = zext i32 %600 to i64
  %603 = getelementptr inbounds [320 x i16], ptr %597, i64 0, i64 %602
  store i16 %595, ptr %603, align 2
  br label %860

604:                                              ; preds = %575
  %605 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %606 = load i16, ptr %605, align 2
  %607 = zext i16 %606 to i32
  %608 = icmp eq i32 %607, 16
  br i1 %608, label %609, label %692

609:                                              ; preds = %604
  br label %610

610:                                              ; preds = %609
  br label %611

611:                                              ; preds = %646, %610
  %612 = load i32, ptr %18, align 4
  %613 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %614 = load i8, ptr %613, align 1
  %615 = zext i8 %614 to i32
  %616 = add nsw i32 %615, 2
  %617 = icmp ult i32 %612, %616
  br i1 %617, label %618, label %647

618:                                              ; preds = %611
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  %621 = load i32, ptr %15, align 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %623, label %631

623:                                              ; preds = %620
  %624 = load ptr, ptr %8, align 8
  %625 = load ptr, ptr %9, align 8
  %626 = call i32 %624(ptr noundef %625, ptr noundef %13)
  store i32 %626, ptr %15, align 4
  %627 = load i32, ptr %15, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %623
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

630:                                              ; preds = %623
  br label %631

631:                                              ; preds = %630, %620
  br label %632

632:                                              ; preds = %631
  %633 = load i32, ptr %15, align 4
  %634 = add i32 %633, -1
  store i32 %634, ptr %15, align 4
  %635 = load ptr, ptr %13, align 8
  %636 = getelementptr inbounds i8, ptr %635, i32 1
  store ptr %636, ptr %13, align 8
  %637 = load i8, ptr %635, align 1
  %638 = zext i8 %637 to i64
  %639 = load i32, ptr %18, align 4
  %640 = zext i32 %639 to i64
  %641 = shl i64 %638, %640
  %642 = load i64, ptr %17, align 8
  %643 = add i64 %642, %641
  store i64 %643, ptr %17, align 8
  %644 = load i32, ptr %18, align 4
  %645 = add i32 %644, 8
  store i32 %645, ptr %18, align 4
  br label %646

646:                                              ; preds = %632
  br label %611, !llvm.loop !14

647:                                              ; preds = %611
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  %650 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %651 = load i8, ptr %650, align 1
  %652 = zext i8 %651 to i32
  %653 = load i64, ptr %17, align 8
  %654 = zext i32 %652 to i64
  %655 = lshr i64 %653, %654
  store i64 %655, ptr %17, align 8
  %656 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %657 = load i8, ptr %656, align 1
  %658 = zext i8 %657 to i32
  %659 = load i32, ptr %18, align 4
  %660 = sub i32 %659, %658
  store i32 %660, ptr %18, align 4
  br label %661

661:                                              ; preds = %649
  %662 = load ptr, ptr %12, align 8
  %663 = getelementptr inbounds %struct.inflate_state, ptr %662, i32 0, i32 27
  %664 = load i32, ptr %663, align 4
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %661
  %667 = load ptr, ptr %7, align 8
  %668 = getelementptr inbounds %struct.z_stream_s, ptr %667, i32 0, i32 6
  store ptr @.str.5, ptr %668, align 8
  %669 = load ptr, ptr %12, align 8
  %670 = getelementptr inbounds %struct.inflate_state, ptr %669, i32 0, i32 1
  store i32 16209, ptr %670, align 8
  br label %861

671:                                              ; preds = %661
  %672 = load ptr, ptr %12, align 8
  %673 = getelementptr inbounds %struct.inflate_state, ptr %672, i32 0, i32 29
  %674 = load ptr, ptr %12, align 8
  %675 = getelementptr inbounds %struct.inflate_state, ptr %674, i32 0, i32 27
  %676 = load i32, ptr %675, align 4
  %677 = sub i32 %676, 1
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds [320 x i16], ptr %673, i64 0, i64 %678
  %680 = load i16, ptr %679, align 2
  %681 = zext i16 %680 to i32
  store i32 %681, ptr %23, align 4
  %682 = load i64, ptr %17, align 8
  %683 = trunc i64 %682 to i32
  %684 = and i32 %683, 3
  %685 = add i32 3, %684
  store i32 %685, ptr %19, align 4
  br label %686

686:                                              ; preds = %671
  %687 = load i64, ptr %17, align 8
  %688 = lshr i64 %687, 2
  store i64 %688, ptr %17, align 8
  %689 = load i32, ptr %18, align 4
  %690 = sub i32 %689, 2
  store i32 %690, ptr %18, align 4
  br label %691

691:                                              ; preds = %686
  br label %824

692:                                              ; preds = %604
  %693 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %694 = load i16, ptr %693, align 2
  %695 = zext i16 %694 to i32
  %696 = icmp eq i32 %695, 17
  br i1 %696, label %697, label %760

697:                                              ; preds = %692
  br label %698

698:                                              ; preds = %697
  br label %699

699:                                              ; preds = %734, %698
  %700 = load i32, ptr %18, align 4
  %701 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %702 = load i8, ptr %701, align 1
  %703 = zext i8 %702 to i32
  %704 = add nsw i32 %703, 3
  %705 = icmp ult i32 %700, %704
  br i1 %705, label %706, label %735

706:                                              ; preds = %699
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  %709 = load i32, ptr %15, align 4
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %719

711:                                              ; preds = %708
  %712 = load ptr, ptr %8, align 8
  %713 = load ptr, ptr %9, align 8
  %714 = call i32 %712(ptr noundef %713, ptr noundef %13)
  store i32 %714, ptr %15, align 4
  %715 = load i32, ptr %15, align 4
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %711
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

718:                                              ; preds = %711
  br label %719

719:                                              ; preds = %718, %708
  br label %720

720:                                              ; preds = %719
  %721 = load i32, ptr %15, align 4
  %722 = add i32 %721, -1
  store i32 %722, ptr %15, align 4
  %723 = load ptr, ptr %13, align 8
  %724 = getelementptr inbounds i8, ptr %723, i32 1
  store ptr %724, ptr %13, align 8
  %725 = load i8, ptr %723, align 1
  %726 = zext i8 %725 to i64
  %727 = load i32, ptr %18, align 4
  %728 = zext i32 %727 to i64
  %729 = shl i64 %726, %728
  %730 = load i64, ptr %17, align 8
  %731 = add i64 %730, %729
  store i64 %731, ptr %17, align 8
  %732 = load i32, ptr %18, align 4
  %733 = add i32 %732, 8
  store i32 %733, ptr %18, align 4
  br label %734

734:                                              ; preds = %720
  br label %699, !llvm.loop !15

735:                                              ; preds = %699
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  %738 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %739 = load i8, ptr %738, align 1
  %740 = zext i8 %739 to i32
  %741 = load i64, ptr %17, align 8
  %742 = zext i32 %740 to i64
  %743 = lshr i64 %741, %742
  store i64 %743, ptr %17, align 8
  %744 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %745 = load i8, ptr %744, align 1
  %746 = zext i8 %745 to i32
  %747 = load i32, ptr %18, align 4
  %748 = sub i32 %747, %746
  store i32 %748, ptr %18, align 4
  br label %749

749:                                              ; preds = %737
  store i32 0, ptr %23, align 4
  %750 = load i64, ptr %17, align 8
  %751 = trunc i64 %750 to i32
  %752 = and i32 %751, 7
  %753 = add i32 3, %752
  store i32 %753, ptr %19, align 4
  br label %754

754:                                              ; preds = %749
  %755 = load i64, ptr %17, align 8
  %756 = lshr i64 %755, 3
  store i64 %756, ptr %17, align 8
  %757 = load i32, ptr %18, align 4
  %758 = sub i32 %757, 3
  store i32 %758, ptr %18, align 4
  br label %759

759:                                              ; preds = %754
  br label %823

760:                                              ; preds = %692
  br label %761

761:                                              ; preds = %760
  br label %762

762:                                              ; preds = %797, %761
  %763 = load i32, ptr %18, align 4
  %764 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %765 = load i8, ptr %764, align 1
  %766 = zext i8 %765 to i32
  %767 = add nsw i32 %766, 7
  %768 = icmp ult i32 %763, %767
  br i1 %768, label %769, label %798

769:                                              ; preds = %762
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  %772 = load i32, ptr %15, align 4
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %782

774:                                              ; preds = %771
  %775 = load ptr, ptr %8, align 8
  %776 = load ptr, ptr %9, align 8
  %777 = call i32 %775(ptr noundef %776, ptr noundef %13)
  store i32 %777, ptr %15, align 4
  %778 = load i32, ptr %15, align 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %781

780:                                              ; preds = %774
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

781:                                              ; preds = %774
  br label %782

782:                                              ; preds = %781, %771
  br label %783

783:                                              ; preds = %782
  %784 = load i32, ptr %15, align 4
  %785 = add i32 %784, -1
  store i32 %785, ptr %15, align 4
  %786 = load ptr, ptr %13, align 8
  %787 = getelementptr inbounds i8, ptr %786, i32 1
  store ptr %787, ptr %13, align 8
  %788 = load i8, ptr %786, align 1
  %789 = zext i8 %788 to i64
  %790 = load i32, ptr %18, align 4
  %791 = zext i32 %790 to i64
  %792 = shl i64 %789, %791
  %793 = load i64, ptr %17, align 8
  %794 = add i64 %793, %792
  store i64 %794, ptr %17, align 8
  %795 = load i32, ptr %18, align 4
  %796 = add i32 %795, 8
  store i32 %796, ptr %18, align 4
  br label %797

797:                                              ; preds = %783
  br label %762, !llvm.loop !16

798:                                              ; preds = %762
  br label %799

799:                                              ; preds = %798
  br label %800

800:                                              ; preds = %799
  %801 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %802 = load i8, ptr %801, align 1
  %803 = zext i8 %802 to i32
  %804 = load i64, ptr %17, align 8
  %805 = zext i32 %803 to i64
  %806 = lshr i64 %804, %805
  store i64 %806, ptr %17, align 8
  %807 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %808 = load i8, ptr %807, align 1
  %809 = zext i8 %808 to i32
  %810 = load i32, ptr %18, align 4
  %811 = sub i32 %810, %809
  store i32 %811, ptr %18, align 4
  br label %812

812:                                              ; preds = %800
  store i32 0, ptr %23, align 4
  %813 = load i64, ptr %17, align 8
  %814 = trunc i64 %813 to i32
  %815 = and i32 %814, 127
  %816 = add i32 11, %815
  store i32 %816, ptr %19, align 4
  br label %817

817:                                              ; preds = %812
  %818 = load i64, ptr %17, align 8
  %819 = lshr i64 %818, 7
  store i64 %819, ptr %17, align 8
  %820 = load i32, ptr %18, align 4
  %821 = sub i32 %820, 7
  store i32 %821, ptr %18, align 4
  br label %822

822:                                              ; preds = %817
  br label %823

823:                                              ; preds = %822, %759
  br label %824

824:                                              ; preds = %823, %691
  %825 = load ptr, ptr %12, align 8
  %826 = getelementptr inbounds %struct.inflate_state, ptr %825, i32 0, i32 27
  %827 = load i32, ptr %826, align 4
  %828 = load i32, ptr %19, align 4
  %829 = add i32 %827, %828
  %830 = load ptr, ptr %12, align 8
  %831 = getelementptr inbounds %struct.inflate_state, ptr %830, i32 0, i32 25
  %832 = load i32, ptr %831, align 4
  %833 = load ptr, ptr %12, align 8
  %834 = getelementptr inbounds %struct.inflate_state, ptr %833, i32 0, i32 26
  %835 = load i32, ptr %834, align 8
  %836 = add i32 %832, %835
  %837 = icmp ugt i32 %829, %836
  br i1 %837, label %838, label %843

838:                                              ; preds = %824
  %839 = load ptr, ptr %7, align 8
  %840 = getelementptr inbounds %struct.z_stream_s, ptr %839, i32 0, i32 6
  store ptr @.str.5, ptr %840, align 8
  %841 = load ptr, ptr %12, align 8
  %842 = getelementptr inbounds %struct.inflate_state, ptr %841, i32 0, i32 1
  store i32 16209, ptr %842, align 8
  br label %861

843:                                              ; preds = %824
  br label %844

844:                                              ; preds = %848, %843
  %845 = load i32, ptr %19, align 4
  %846 = add i32 %845, -1
  store i32 %846, ptr %19, align 4
  %847 = icmp ne i32 %845, 0
  br i1 %847, label %848, label %859

848:                                              ; preds = %844
  %849 = load i32, ptr %23, align 4
  %850 = trunc i32 %849 to i16
  %851 = load ptr, ptr %12, align 8
  %852 = getelementptr inbounds %struct.inflate_state, ptr %851, i32 0, i32 29
  %853 = load ptr, ptr %12, align 8
  %854 = getelementptr inbounds %struct.inflate_state, ptr %853, i32 0, i32 27
  %855 = load i32, ptr %854, align 4
  %856 = add i32 %855, 1
  store i32 %856, ptr %854, align 4
  %857 = zext i32 %855 to i64
  %858 = getelementptr inbounds [320 x i16], ptr %852, i64 0, i64 %857
  store i16 %850, ptr %858, align 2
  br label %844, !llvm.loop !17

859:                                              ; preds = %844
  br label %860

860:                                              ; preds = %859, %593
  br label %513, !llvm.loop !18

861:                                              ; preds = %838, %666, %513
  %862 = load ptr, ptr %12, align 8
  %863 = getelementptr inbounds %struct.inflate_state, ptr %862, i32 0, i32 1
  %864 = load i32, ptr %863, align 8
  %865 = icmp eq i32 %864, 16209
  br i1 %865, label %866, label %867

866:                                              ; preds = %861
  br label %1651

867:                                              ; preds = %861
  %868 = load ptr, ptr %12, align 8
  %869 = getelementptr inbounds %struct.inflate_state, ptr %868, i32 0, i32 29
  %870 = getelementptr inbounds [320 x i16], ptr %869, i64 0, i64 256
  %871 = load i16, ptr %870, align 8
  %872 = zext i16 %871 to i32
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %879

874:                                              ; preds = %867
  %875 = load ptr, ptr %7, align 8
  %876 = getelementptr inbounds %struct.z_stream_s, ptr %875, i32 0, i32 6
  store ptr @.str.6, ptr %876, align 8
  %877 = load ptr, ptr %12, align 8
  %878 = getelementptr inbounds %struct.inflate_state, ptr %877, i32 0, i32 1
  store i32 16209, ptr %878, align 8
  br label %1651

879:                                              ; preds = %867
  %880 = load ptr, ptr %12, align 8
  %881 = getelementptr inbounds %struct.inflate_state, ptr %880, i32 0, i32 31
  %882 = getelementptr inbounds [1444 x %struct.code], ptr %881, i64 0, i64 0
  %883 = load ptr, ptr %12, align 8
  %884 = getelementptr inbounds %struct.inflate_state, ptr %883, i32 0, i32 28
  store ptr %882, ptr %884, align 8
  %885 = load ptr, ptr %12, align 8
  %886 = getelementptr inbounds %struct.inflate_state, ptr %885, i32 0, i32 28
  %887 = load ptr, ptr %886, align 8
  %888 = load ptr, ptr %12, align 8
  %889 = getelementptr inbounds %struct.inflate_state, ptr %888, i32 0, i32 20
  store ptr %887, ptr %889, align 8
  %890 = load ptr, ptr %12, align 8
  %891 = getelementptr inbounds %struct.inflate_state, ptr %890, i32 0, i32 22
  store i32 9, ptr %891, align 8
  %892 = load ptr, ptr %12, align 8
  %893 = getelementptr inbounds %struct.inflate_state, ptr %892, i32 0, i32 29
  %894 = getelementptr inbounds [320 x i16], ptr %893, i64 0, i64 0
  %895 = load ptr, ptr %12, align 8
  %896 = getelementptr inbounds %struct.inflate_state, ptr %895, i32 0, i32 25
  %897 = load i32, ptr %896, align 4
  %898 = load ptr, ptr %12, align 8
  %899 = getelementptr inbounds %struct.inflate_state, ptr %898, i32 0, i32 28
  %900 = load ptr, ptr %12, align 8
  %901 = getelementptr inbounds %struct.inflate_state, ptr %900, i32 0, i32 22
  %902 = load ptr, ptr %12, align 8
  %903 = getelementptr inbounds %struct.inflate_state, ptr %902, i32 0, i32 30
  %904 = getelementptr inbounds [288 x i16], ptr %903, i64 0, i64 0
  %905 = call i32 @inflate_table(i32 noundef 1, ptr noundef %894, i32 noundef %897, ptr noundef %899, ptr noundef %901, ptr noundef %904)
  store i32 %905, ptr %24, align 4
  %906 = load i32, ptr %24, align 4
  %907 = icmp ne i32 %906, 0
  br i1 %907, label %908, label %913

908:                                              ; preds = %879
  %909 = load ptr, ptr %7, align 8
  %910 = getelementptr inbounds %struct.z_stream_s, ptr %909, i32 0, i32 6
  store ptr @.str.7, ptr %910, align 8
  %911 = load ptr, ptr %12, align 8
  %912 = getelementptr inbounds %struct.inflate_state, ptr %911, i32 0, i32 1
  store i32 16209, ptr %912, align 8
  br label %1651

913:                                              ; preds = %879
  %914 = load ptr, ptr %12, align 8
  %915 = getelementptr inbounds %struct.inflate_state, ptr %914, i32 0, i32 28
  %916 = load ptr, ptr %915, align 8
  %917 = load ptr, ptr %12, align 8
  %918 = getelementptr inbounds %struct.inflate_state, ptr %917, i32 0, i32 21
  store ptr %916, ptr %918, align 8
  %919 = load ptr, ptr %12, align 8
  %920 = getelementptr inbounds %struct.inflate_state, ptr %919, i32 0, i32 23
  store i32 6, ptr %920, align 4
  %921 = load ptr, ptr %12, align 8
  %922 = getelementptr inbounds %struct.inflate_state, ptr %921, i32 0, i32 29
  %923 = getelementptr inbounds [320 x i16], ptr %922, i64 0, i64 0
  %924 = load ptr, ptr %12, align 8
  %925 = getelementptr inbounds %struct.inflate_state, ptr %924, i32 0, i32 25
  %926 = load i32, ptr %925, align 4
  %927 = zext i32 %926 to i64
  %928 = getelementptr inbounds i16, ptr %923, i64 %927
  %929 = load ptr, ptr %12, align 8
  %930 = getelementptr inbounds %struct.inflate_state, ptr %929, i32 0, i32 26
  %931 = load i32, ptr %930, align 8
  %932 = load ptr, ptr %12, align 8
  %933 = getelementptr inbounds %struct.inflate_state, ptr %932, i32 0, i32 28
  %934 = load ptr, ptr %12, align 8
  %935 = getelementptr inbounds %struct.inflate_state, ptr %934, i32 0, i32 23
  %936 = load ptr, ptr %12, align 8
  %937 = getelementptr inbounds %struct.inflate_state, ptr %936, i32 0, i32 30
  %938 = getelementptr inbounds [288 x i16], ptr %937, i64 0, i64 0
  %939 = call i32 @inflate_table(i32 noundef 2, ptr noundef %928, i32 noundef %931, ptr noundef %933, ptr noundef %935, ptr noundef %938)
  store i32 %939, ptr %24, align 4
  %940 = load i32, ptr %24, align 4
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %947

942:                                              ; preds = %913
  %943 = load ptr, ptr %7, align 8
  %944 = getelementptr inbounds %struct.z_stream_s, ptr %943, i32 0, i32 6
  store ptr @.str.8, ptr %944, align 8
  %945 = load ptr, ptr %12, align 8
  %946 = getelementptr inbounds %struct.inflate_state, ptr %945, i32 0, i32 1
  store i32 16209, ptr %946, align 8
  br label %1651

947:                                              ; preds = %913
  %948 = load ptr, ptr %12, align 8
  %949 = getelementptr inbounds %struct.inflate_state, ptr %948, i32 0, i32 1
  store i32 16200, ptr %949, align 8
  br label %950

950:                                              ; preds = %63, %947
  %951 = load i32, ptr %15, align 4
  %952 = icmp uge i32 %951, 6
  br i1 %952, label %953, label %1001

953:                                              ; preds = %950
  %954 = load i32, ptr %16, align 4
  %955 = icmp uge i32 %954, 258
  br i1 %955, label %956, label %1001

956:                                              ; preds = %953
  br label %957

957:                                              ; preds = %956
  %958 = load ptr, ptr %14, align 8
  %959 = load ptr, ptr %7, align 8
  %960 = getelementptr inbounds %struct.z_stream_s, ptr %959, i32 0, i32 3
  store ptr %958, ptr %960, align 8
  %961 = load i32, ptr %16, align 4
  %962 = load ptr, ptr %7, align 8
  %963 = getelementptr inbounds %struct.z_stream_s, ptr %962, i32 0, i32 4
  store i32 %961, ptr %963, align 8
  %964 = load ptr, ptr %13, align 8
  %965 = load ptr, ptr %7, align 8
  %966 = getelementptr inbounds %struct.z_stream_s, ptr %965, i32 0, i32 0
  store ptr %964, ptr %966, align 8
  %967 = load i32, ptr %15, align 4
  %968 = load ptr, ptr %7, align 8
  %969 = getelementptr inbounds %struct.z_stream_s, ptr %968, i32 0, i32 1
  store i32 %967, ptr %969, align 8
  %970 = load i64, ptr %17, align 8
  %971 = load ptr, ptr %12, align 8
  %972 = getelementptr inbounds %struct.inflate_state, ptr %971, i32 0, i32 15
  store i64 %970, ptr %972, align 8
  %973 = load i32, ptr %18, align 4
  %974 = load ptr, ptr %12, align 8
  %975 = getelementptr inbounds %struct.inflate_state, ptr %974, i32 0, i32 16
  store i32 %973, ptr %975, align 8
  br label %976

976:                                              ; preds = %957
  %977 = load ptr, ptr %7, align 8
  %978 = load ptr, ptr %12, align 8
  %979 = getelementptr inbounds %struct.inflate_state, ptr %978, i32 0, i32 11
  %980 = load i32, ptr %979, align 4
  call void @inflate_fast(ptr noundef %977, i32 noundef %980)
  br label %981

981:                                              ; preds = %976
  %982 = load ptr, ptr %7, align 8
  %983 = getelementptr inbounds %struct.z_stream_s, ptr %982, i32 0, i32 3
  %984 = load ptr, ptr %983, align 8
  store ptr %984, ptr %14, align 8
  %985 = load ptr, ptr %7, align 8
  %986 = getelementptr inbounds %struct.z_stream_s, ptr %985, i32 0, i32 4
  %987 = load i32, ptr %986, align 8
  store i32 %987, ptr %16, align 4
  %988 = load ptr, ptr %7, align 8
  %989 = getelementptr inbounds %struct.z_stream_s, ptr %988, i32 0, i32 0
  %990 = load ptr, ptr %989, align 8
  store ptr %990, ptr %13, align 8
  %991 = load ptr, ptr %7, align 8
  %992 = getelementptr inbounds %struct.z_stream_s, ptr %991, i32 0, i32 1
  %993 = load i32, ptr %992, align 8
  store i32 %993, ptr %15, align 4
  %994 = load ptr, ptr %12, align 8
  %995 = getelementptr inbounds %struct.inflate_state, ptr %994, i32 0, i32 15
  %996 = load i64, ptr %995, align 8
  store i64 %996, ptr %17, align 8
  %997 = load ptr, ptr %12, align 8
  %998 = getelementptr inbounds %struct.inflate_state, ptr %997, i32 0, i32 16
  %999 = load i32, ptr %998, align 8
  store i32 %999, ptr %18, align 4
  br label %1000

1000:                                             ; preds = %981
  br label %1651

1001:                                             ; preds = %953, %950
  br label %1002

1002:                                             ; preds = %1050, %1001
  %1003 = load ptr, ptr %12, align 8
  %1004 = getelementptr inbounds %struct.inflate_state, ptr %1003, i32 0, i32 20
  %1005 = load ptr, ptr %1004, align 8
  %1006 = load i64, ptr %17, align 8
  %1007 = trunc i64 %1006 to i32
  %1008 = load ptr, ptr %12, align 8
  %1009 = getelementptr inbounds %struct.inflate_state, ptr %1008, i32 0, i32 22
  %1010 = load i32, ptr %1009, align 8
  %1011 = shl i32 1, %1010
  %1012 = sub i32 %1011, 1
  %1013 = and i32 %1007, %1012
  %1014 = zext i32 %1013 to i64
  %1015 = getelementptr inbounds %struct.code, ptr %1005, i64 %1014
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %1015, i64 4, i1 false)
  %1016 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1017 = load i8, ptr %1016, align 1
  %1018 = zext i8 %1017 to i32
  %1019 = load i32, ptr %18, align 4
  %1020 = icmp ule i32 %1018, %1019
  br i1 %1020, label %1021, label %1022

1021:                                             ; preds = %1002
  br label %1051

1022:                                             ; preds = %1002
  br label %1023

1023:                                             ; preds = %1022
  br label %1024

1024:                                             ; preds = %1023
  %1025 = load i32, ptr %15, align 4
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1035

1027:                                             ; preds = %1024
  %1028 = load ptr, ptr %8, align 8
  %1029 = load ptr, ptr %9, align 8
  %1030 = call i32 %1028(ptr noundef %1029, ptr noundef %13)
  store i32 %1030, ptr %15, align 4
  %1031 = load i32, ptr %15, align 4
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1034

1033:                                             ; preds = %1027
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1034:                                             ; preds = %1027
  br label %1035

1035:                                             ; preds = %1034, %1024
  br label %1036

1036:                                             ; preds = %1035
  %1037 = load i32, ptr %15, align 4
  %1038 = add i32 %1037, -1
  store i32 %1038, ptr %15, align 4
  %1039 = load ptr, ptr %13, align 8
  %1040 = getelementptr inbounds i8, ptr %1039, i32 1
  store ptr %1040, ptr %13, align 8
  %1041 = load i8, ptr %1039, align 1
  %1042 = zext i8 %1041 to i64
  %1043 = load i32, ptr %18, align 4
  %1044 = zext i32 %1043 to i64
  %1045 = shl i64 %1042, %1044
  %1046 = load i64, ptr %17, align 8
  %1047 = add i64 %1046, %1045
  store i64 %1047, ptr %17, align 8
  %1048 = load i32, ptr %18, align 4
  %1049 = add i32 %1048, 8
  store i32 %1049, ptr %18, align 4
  br label %1050

1050:                                             ; preds = %1036
  br label %1002

1051:                                             ; preds = %1021
  %1052 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1053 = load i8, ptr %1052, align 2
  %1054 = zext i8 %1053 to i32
  %1055 = icmp ne i32 %1054, 0
  br i1 %1055, label %1056, label %1142

1056:                                             ; preds = %1051
  %1057 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1058 = load i8, ptr %1057, align 2
  %1059 = zext i8 %1058 to i32
  %1060 = and i32 %1059, 240
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1062, label %1142

1062:                                             ; preds = %1056
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr align 2 %21, i64 4, i1 false)
  br label %1063

1063:                                             ; preds = %1127, %1062
  %1064 = load ptr, ptr %12, align 8
  %1065 = getelementptr inbounds %struct.inflate_state, ptr %1064, i32 0, i32 20
  %1066 = load ptr, ptr %1065, align 8
  %1067 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 2
  %1068 = load i16, ptr %1067, align 2
  %1069 = zext i16 %1068 to i32
  %1070 = load i64, ptr %17, align 8
  %1071 = trunc i64 %1070 to i32
  %1072 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1073 = load i8, ptr %1072, align 1
  %1074 = zext i8 %1073 to i32
  %1075 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 0
  %1076 = load i8, ptr %1075, align 2
  %1077 = zext i8 %1076 to i32
  %1078 = add nsw i32 %1074, %1077
  %1079 = shl i32 1, %1078
  %1080 = sub i32 %1079, 1
  %1081 = and i32 %1071, %1080
  %1082 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1083 = load i8, ptr %1082, align 1
  %1084 = zext i8 %1083 to i32
  %1085 = lshr i32 %1081, %1084
  %1086 = add i32 %1069, %1085
  %1087 = zext i32 %1086 to i64
  %1088 = getelementptr inbounds %struct.code, ptr %1066, i64 %1087
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %1088, i64 4, i1 false)
  %1089 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1090 = load i8, ptr %1089, align 1
  %1091 = zext i8 %1090 to i32
  %1092 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1093 = load i8, ptr %1092, align 1
  %1094 = zext i8 %1093 to i32
  %1095 = add nsw i32 %1091, %1094
  %1096 = load i32, ptr %18, align 4
  %1097 = icmp ule i32 %1095, %1096
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1063
  br label %1128

1099:                                             ; preds = %1063
  br label %1100

1100:                                             ; preds = %1099
  br label %1101

1101:                                             ; preds = %1100
  %1102 = load i32, ptr %15, align 4
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1112

1104:                                             ; preds = %1101
  %1105 = load ptr, ptr %8, align 8
  %1106 = load ptr, ptr %9, align 8
  %1107 = call i32 %1105(ptr noundef %1106, ptr noundef %13)
  store i32 %1107, ptr %15, align 4
  %1108 = load i32, ptr %15, align 4
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1110, label %1111

1110:                                             ; preds = %1104
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1111:                                             ; preds = %1104
  br label %1112

1112:                                             ; preds = %1111, %1101
  br label %1113

1113:                                             ; preds = %1112
  %1114 = load i32, ptr %15, align 4
  %1115 = add i32 %1114, -1
  store i32 %1115, ptr %15, align 4
  %1116 = load ptr, ptr %13, align 8
  %1117 = getelementptr inbounds i8, ptr %1116, i32 1
  store ptr %1117, ptr %13, align 8
  %1118 = load i8, ptr %1116, align 1
  %1119 = zext i8 %1118 to i64
  %1120 = load i32, ptr %18, align 4
  %1121 = zext i32 %1120 to i64
  %1122 = shl i64 %1119, %1121
  %1123 = load i64, ptr %17, align 8
  %1124 = add i64 %1123, %1122
  store i64 %1124, ptr %17, align 8
  %1125 = load i32, ptr %18, align 4
  %1126 = add i32 %1125, 8
  store i32 %1126, ptr %18, align 4
  br label %1127

1127:                                             ; preds = %1113
  br label %1063

1128:                                             ; preds = %1098
  br label %1129

1129:                                             ; preds = %1128
  %1130 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1131 = load i8, ptr %1130, align 1
  %1132 = zext i8 %1131 to i32
  %1133 = load i64, ptr %17, align 8
  %1134 = zext i32 %1132 to i64
  %1135 = lshr i64 %1133, %1134
  store i64 %1135, ptr %17, align 8
  %1136 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1137 = load i8, ptr %1136, align 1
  %1138 = zext i8 %1137 to i32
  %1139 = load i32, ptr %18, align 4
  %1140 = sub i32 %1139, %1138
  store i32 %1140, ptr %18, align 4
  br label %1141

1141:                                             ; preds = %1129
  br label %1142

1142:                                             ; preds = %1141, %1056, %1051
  br label %1143

1143:                                             ; preds = %1142
  %1144 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1145 = load i8, ptr %1144, align 1
  %1146 = zext i8 %1145 to i32
  %1147 = load i64, ptr %17, align 8
  %1148 = zext i32 %1146 to i64
  %1149 = lshr i64 %1147, %1148
  store i64 %1149, ptr %17, align 8
  %1150 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1151 = load i8, ptr %1150, align 1
  %1152 = zext i8 %1151 to i32
  %1153 = load i32, ptr %18, align 4
  %1154 = sub i32 %1153, %1152
  store i32 %1154, ptr %18, align 4
  br label %1155

1155:                                             ; preds = %1143
  %1156 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %1157 = load i16, ptr %1156, align 2
  %1158 = zext i16 %1157 to i32
  %1159 = load ptr, ptr %12, align 8
  %1160 = getelementptr inbounds %struct.inflate_state, ptr %1159, i32 0, i32 17
  store i32 %1158, ptr %1160, align 4
  %1161 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1162 = load i8, ptr %1161, align 2
  %1163 = zext i8 %1162 to i32
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1165, label %1199

1165:                                             ; preds = %1155
  br label %1166

1166:                                             ; preds = %1165
  %1167 = load i32, ptr %16, align 4
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1187

1169:                                             ; preds = %1166
  %1170 = load ptr, ptr %12, align 8
  %1171 = getelementptr inbounds %struct.inflate_state, ptr %1170, i32 0, i32 14
  %1172 = load ptr, ptr %1171, align 8
  store ptr %1172, ptr %14, align 8
  %1173 = load ptr, ptr %12, align 8
  %1174 = getelementptr inbounds %struct.inflate_state, ptr %1173, i32 0, i32 11
  %1175 = load i32, ptr %1174, align 4
  store i32 %1175, ptr %16, align 4
  %1176 = load i32, ptr %16, align 4
  %1177 = load ptr, ptr %12, align 8
  %1178 = getelementptr inbounds %struct.inflate_state, ptr %1177, i32 0, i32 12
  store i32 %1176, ptr %1178, align 8
  %1179 = load ptr, ptr %10, align 8
  %1180 = load ptr, ptr %11, align 8
  %1181 = load ptr, ptr %14, align 8
  %1182 = load i32, ptr %16, align 4
  %1183 = call i32 %1179(ptr noundef %1180, ptr noundef %1181, i32 noundef %1182)
  %1184 = icmp ne i32 %1183, 0
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1169
  store i32 -5, ptr %24, align 4
  br label %1652

1186:                                             ; preds = %1169
  br label %1187

1187:                                             ; preds = %1186, %1166
  br label %1188

1188:                                             ; preds = %1187
  %1189 = load ptr, ptr %12, align 8
  %1190 = getelementptr inbounds %struct.inflate_state, ptr %1189, i32 0, i32 17
  %1191 = load i32, ptr %1190, align 4
  %1192 = trunc i32 %1191 to i8
  %1193 = load ptr, ptr %14, align 8
  %1194 = getelementptr inbounds i8, ptr %1193, i32 1
  store ptr %1194, ptr %14, align 8
  store i8 %1192, ptr %1193, align 1
  %1195 = load i32, ptr %16, align 4
  %1196 = add i32 %1195, -1
  store i32 %1196, ptr %16, align 4
  %1197 = load ptr, ptr %12, align 8
  %1198 = getelementptr inbounds %struct.inflate_state, ptr %1197, i32 0, i32 1
  store i32 16200, ptr %1198, align 8
  br label %1651

1199:                                             ; preds = %1155
  %1200 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1201 = load i8, ptr %1200, align 2
  %1202 = zext i8 %1201 to i32
  %1203 = and i32 %1202, 32
  %1204 = icmp ne i32 %1203, 0
  br i1 %1204, label %1205, label %1208

1205:                                             ; preds = %1199
  %1206 = load ptr, ptr %12, align 8
  %1207 = getelementptr inbounds %struct.inflate_state, ptr %1206, i32 0, i32 1
  store i32 16191, ptr %1207, align 8
  br label %1651

1208:                                             ; preds = %1199
  %1209 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1210 = load i8, ptr %1209, align 2
  %1211 = zext i8 %1210 to i32
  %1212 = and i32 %1211, 64
  %1213 = icmp ne i32 %1212, 0
  br i1 %1213, label %1214, label %1219

1214:                                             ; preds = %1208
  %1215 = load ptr, ptr %7, align 8
  %1216 = getelementptr inbounds %struct.z_stream_s, ptr %1215, i32 0, i32 6
  store ptr @.str.9, ptr %1216, align 8
  %1217 = load ptr, ptr %12, align 8
  %1218 = getelementptr inbounds %struct.inflate_state, ptr %1217, i32 0, i32 1
  store i32 16209, ptr %1218, align 8
  br label %1651

1219:                                             ; preds = %1208
  %1220 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1221 = load i8, ptr %1220, align 2
  %1222 = zext i8 %1221 to i32
  %1223 = and i32 %1222, 15
  %1224 = load ptr, ptr %12, align 8
  %1225 = getelementptr inbounds %struct.inflate_state, ptr %1224, i32 0, i32 19
  store i32 %1223, ptr %1225, align 4
  %1226 = load ptr, ptr %12, align 8
  %1227 = getelementptr inbounds %struct.inflate_state, ptr %1226, i32 0, i32 19
  %1228 = load i32, ptr %1227, align 4
  %1229 = icmp ne i32 %1228, 0
  br i1 %1229, label %1230, label %1294

1230:                                             ; preds = %1219
  br label %1231

1231:                                             ; preds = %1230
  br label %1232

1232:                                             ; preds = %1266, %1231
  %1233 = load i32, ptr %18, align 4
  %1234 = load ptr, ptr %12, align 8
  %1235 = getelementptr inbounds %struct.inflate_state, ptr %1234, i32 0, i32 19
  %1236 = load i32, ptr %1235, align 4
  %1237 = icmp ult i32 %1233, %1236
  br i1 %1237, label %1238, label %1267

1238:                                             ; preds = %1232
  br label %1239

1239:                                             ; preds = %1238
  br label %1240

1240:                                             ; preds = %1239
  %1241 = load i32, ptr %15, align 4
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1243, label %1251

1243:                                             ; preds = %1240
  %1244 = load ptr, ptr %8, align 8
  %1245 = load ptr, ptr %9, align 8
  %1246 = call i32 %1244(ptr noundef %1245, ptr noundef %13)
  store i32 %1246, ptr %15, align 4
  %1247 = load i32, ptr %15, align 4
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1249, label %1250

1249:                                             ; preds = %1243
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1250:                                             ; preds = %1243
  br label %1251

1251:                                             ; preds = %1250, %1240
  br label %1252

1252:                                             ; preds = %1251
  %1253 = load i32, ptr %15, align 4
  %1254 = add i32 %1253, -1
  store i32 %1254, ptr %15, align 4
  %1255 = load ptr, ptr %13, align 8
  %1256 = getelementptr inbounds i8, ptr %1255, i32 1
  store ptr %1256, ptr %13, align 8
  %1257 = load i8, ptr %1255, align 1
  %1258 = zext i8 %1257 to i64
  %1259 = load i32, ptr %18, align 4
  %1260 = zext i32 %1259 to i64
  %1261 = shl i64 %1258, %1260
  %1262 = load i64, ptr %17, align 8
  %1263 = add i64 %1262, %1261
  store i64 %1263, ptr %17, align 8
  %1264 = load i32, ptr %18, align 4
  %1265 = add i32 %1264, 8
  store i32 %1265, ptr %18, align 4
  br label %1266

1266:                                             ; preds = %1252
  br label %1232, !llvm.loop !19

1267:                                             ; preds = %1232
  br label %1268

1268:                                             ; preds = %1267
  %1269 = load i64, ptr %17, align 8
  %1270 = trunc i64 %1269 to i32
  %1271 = load ptr, ptr %12, align 8
  %1272 = getelementptr inbounds %struct.inflate_state, ptr %1271, i32 0, i32 19
  %1273 = load i32, ptr %1272, align 4
  %1274 = shl i32 1, %1273
  %1275 = sub i32 %1274, 1
  %1276 = and i32 %1270, %1275
  %1277 = load ptr, ptr %12, align 8
  %1278 = getelementptr inbounds %struct.inflate_state, ptr %1277, i32 0, i32 17
  %1279 = load i32, ptr %1278, align 4
  %1280 = add i32 %1279, %1276
  store i32 %1280, ptr %1278, align 4
  br label %1281

1281:                                             ; preds = %1268
  %1282 = load ptr, ptr %12, align 8
  %1283 = getelementptr inbounds %struct.inflate_state, ptr %1282, i32 0, i32 19
  %1284 = load i32, ptr %1283, align 4
  %1285 = load i64, ptr %17, align 8
  %1286 = zext i32 %1284 to i64
  %1287 = lshr i64 %1285, %1286
  store i64 %1287, ptr %17, align 8
  %1288 = load ptr, ptr %12, align 8
  %1289 = getelementptr inbounds %struct.inflate_state, ptr %1288, i32 0, i32 19
  %1290 = load i32, ptr %1289, align 4
  %1291 = load i32, ptr %18, align 4
  %1292 = sub i32 %1291, %1290
  store i32 %1292, ptr %18, align 4
  br label %1293

1293:                                             ; preds = %1281
  br label %1294

1294:                                             ; preds = %1293, %1219
  br label %1295

1295:                                             ; preds = %1343, %1294
  %1296 = load ptr, ptr %12, align 8
  %1297 = getelementptr inbounds %struct.inflate_state, ptr %1296, i32 0, i32 21
  %1298 = load ptr, ptr %1297, align 8
  %1299 = load i64, ptr %17, align 8
  %1300 = trunc i64 %1299 to i32
  %1301 = load ptr, ptr %12, align 8
  %1302 = getelementptr inbounds %struct.inflate_state, ptr %1301, i32 0, i32 23
  %1303 = load i32, ptr %1302, align 4
  %1304 = shl i32 1, %1303
  %1305 = sub i32 %1304, 1
  %1306 = and i32 %1300, %1305
  %1307 = zext i32 %1306 to i64
  %1308 = getelementptr inbounds %struct.code, ptr %1298, i64 %1307
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %1308, i64 4, i1 false)
  %1309 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1310 = load i8, ptr %1309, align 1
  %1311 = zext i8 %1310 to i32
  %1312 = load i32, ptr %18, align 4
  %1313 = icmp ule i32 %1311, %1312
  br i1 %1313, label %1314, label %1315

1314:                                             ; preds = %1295
  br label %1344

1315:                                             ; preds = %1295
  br label %1316

1316:                                             ; preds = %1315
  br label %1317

1317:                                             ; preds = %1316
  %1318 = load i32, ptr %15, align 4
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1320, label %1328

1320:                                             ; preds = %1317
  %1321 = load ptr, ptr %8, align 8
  %1322 = load ptr, ptr %9, align 8
  %1323 = call i32 %1321(ptr noundef %1322, ptr noundef %13)
  store i32 %1323, ptr %15, align 4
  %1324 = load i32, ptr %15, align 4
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1326, label %1327

1326:                                             ; preds = %1320
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1327:                                             ; preds = %1320
  br label %1328

1328:                                             ; preds = %1327, %1317
  br label %1329

1329:                                             ; preds = %1328
  %1330 = load i32, ptr %15, align 4
  %1331 = add i32 %1330, -1
  store i32 %1331, ptr %15, align 4
  %1332 = load ptr, ptr %13, align 8
  %1333 = getelementptr inbounds i8, ptr %1332, i32 1
  store ptr %1333, ptr %13, align 8
  %1334 = load i8, ptr %1332, align 1
  %1335 = zext i8 %1334 to i64
  %1336 = load i32, ptr %18, align 4
  %1337 = zext i32 %1336 to i64
  %1338 = shl i64 %1335, %1337
  %1339 = load i64, ptr %17, align 8
  %1340 = add i64 %1339, %1338
  store i64 %1340, ptr %17, align 8
  %1341 = load i32, ptr %18, align 4
  %1342 = add i32 %1341, 8
  store i32 %1342, ptr %18, align 4
  br label %1343

1343:                                             ; preds = %1329
  br label %1295

1344:                                             ; preds = %1314
  %1345 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1346 = load i8, ptr %1345, align 2
  %1347 = zext i8 %1346 to i32
  %1348 = and i32 %1347, 240
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1350, label %1430

1350:                                             ; preds = %1344
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr align 2 %21, i64 4, i1 false)
  br label %1351

1351:                                             ; preds = %1415, %1350
  %1352 = load ptr, ptr %12, align 8
  %1353 = getelementptr inbounds %struct.inflate_state, ptr %1352, i32 0, i32 21
  %1354 = load ptr, ptr %1353, align 8
  %1355 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 2
  %1356 = load i16, ptr %1355, align 2
  %1357 = zext i16 %1356 to i32
  %1358 = load i64, ptr %17, align 8
  %1359 = trunc i64 %1358 to i32
  %1360 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1361 = load i8, ptr %1360, align 1
  %1362 = zext i8 %1361 to i32
  %1363 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 0
  %1364 = load i8, ptr %1363, align 2
  %1365 = zext i8 %1364 to i32
  %1366 = add nsw i32 %1362, %1365
  %1367 = shl i32 1, %1366
  %1368 = sub i32 %1367, 1
  %1369 = and i32 %1359, %1368
  %1370 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1371 = load i8, ptr %1370, align 1
  %1372 = zext i8 %1371 to i32
  %1373 = lshr i32 %1369, %1372
  %1374 = add i32 %1357, %1373
  %1375 = zext i32 %1374 to i64
  %1376 = getelementptr inbounds %struct.code, ptr %1354, i64 %1375
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %1376, i64 4, i1 false)
  %1377 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1378 = load i8, ptr %1377, align 1
  %1379 = zext i8 %1378 to i32
  %1380 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1381 = load i8, ptr %1380, align 1
  %1382 = zext i8 %1381 to i32
  %1383 = add nsw i32 %1379, %1382
  %1384 = load i32, ptr %18, align 4
  %1385 = icmp ule i32 %1383, %1384
  br i1 %1385, label %1386, label %1387

1386:                                             ; preds = %1351
  br label %1416

1387:                                             ; preds = %1351
  br label %1388

1388:                                             ; preds = %1387
  br label %1389

1389:                                             ; preds = %1388
  %1390 = load i32, ptr %15, align 4
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1392, label %1400

1392:                                             ; preds = %1389
  %1393 = load ptr, ptr %8, align 8
  %1394 = load ptr, ptr %9, align 8
  %1395 = call i32 %1393(ptr noundef %1394, ptr noundef %13)
  store i32 %1395, ptr %15, align 4
  %1396 = load i32, ptr %15, align 4
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1398, label %1399

1398:                                             ; preds = %1392
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1399:                                             ; preds = %1392
  br label %1400

1400:                                             ; preds = %1399, %1389
  br label %1401

1401:                                             ; preds = %1400
  %1402 = load i32, ptr %15, align 4
  %1403 = add i32 %1402, -1
  store i32 %1403, ptr %15, align 4
  %1404 = load ptr, ptr %13, align 8
  %1405 = getelementptr inbounds i8, ptr %1404, i32 1
  store ptr %1405, ptr %13, align 8
  %1406 = load i8, ptr %1404, align 1
  %1407 = zext i8 %1406 to i64
  %1408 = load i32, ptr %18, align 4
  %1409 = zext i32 %1408 to i64
  %1410 = shl i64 %1407, %1409
  %1411 = load i64, ptr %17, align 8
  %1412 = add i64 %1411, %1410
  store i64 %1412, ptr %17, align 8
  %1413 = load i32, ptr %18, align 4
  %1414 = add i32 %1413, 8
  store i32 %1414, ptr %18, align 4
  br label %1415

1415:                                             ; preds = %1401
  br label %1351

1416:                                             ; preds = %1386
  br label %1417

1417:                                             ; preds = %1416
  %1418 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1419 = load i8, ptr %1418, align 1
  %1420 = zext i8 %1419 to i32
  %1421 = load i64, ptr %17, align 8
  %1422 = zext i32 %1420 to i64
  %1423 = lshr i64 %1421, %1422
  store i64 %1423, ptr %17, align 8
  %1424 = getelementptr inbounds %struct.code, ptr %22, i32 0, i32 1
  %1425 = load i8, ptr %1424, align 1
  %1426 = zext i8 %1425 to i32
  %1427 = load i32, ptr %18, align 4
  %1428 = sub i32 %1427, %1426
  store i32 %1428, ptr %18, align 4
  br label %1429

1429:                                             ; preds = %1417
  br label %1430

1430:                                             ; preds = %1429, %1344
  br label %1431

1431:                                             ; preds = %1430
  %1432 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1433 = load i8, ptr %1432, align 1
  %1434 = zext i8 %1433 to i32
  %1435 = load i64, ptr %17, align 8
  %1436 = zext i32 %1434 to i64
  %1437 = lshr i64 %1435, %1436
  store i64 %1437, ptr %17, align 8
  %1438 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 1
  %1439 = load i8, ptr %1438, align 1
  %1440 = zext i8 %1439 to i32
  %1441 = load i32, ptr %18, align 4
  %1442 = sub i32 %1441, %1440
  store i32 %1442, ptr %18, align 4
  br label %1443

1443:                                             ; preds = %1431
  %1444 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1445 = load i8, ptr %1444, align 2
  %1446 = zext i8 %1445 to i32
  %1447 = and i32 %1446, 64
  %1448 = icmp ne i32 %1447, 0
  br i1 %1448, label %1449, label %1454

1449:                                             ; preds = %1443
  %1450 = load ptr, ptr %7, align 8
  %1451 = getelementptr inbounds %struct.z_stream_s, ptr %1450, i32 0, i32 6
  store ptr @.str.10, ptr %1451, align 8
  %1452 = load ptr, ptr %12, align 8
  %1453 = getelementptr inbounds %struct.inflate_state, ptr %1452, i32 0, i32 1
  store i32 16209, ptr %1453, align 8
  br label %1651

1454:                                             ; preds = %1443
  %1455 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 2
  %1456 = load i16, ptr %1455, align 2
  %1457 = zext i16 %1456 to i32
  %1458 = load ptr, ptr %12, align 8
  %1459 = getelementptr inbounds %struct.inflate_state, ptr %1458, i32 0, i32 18
  store i32 %1457, ptr %1459, align 8
  %1460 = getelementptr inbounds %struct.code, ptr %21, i32 0, i32 0
  %1461 = load i8, ptr %1460, align 2
  %1462 = zext i8 %1461 to i32
  %1463 = and i32 %1462, 15
  %1464 = load ptr, ptr %12, align 8
  %1465 = getelementptr inbounds %struct.inflate_state, ptr %1464, i32 0, i32 19
  store i32 %1463, ptr %1465, align 4
  %1466 = load ptr, ptr %12, align 8
  %1467 = getelementptr inbounds %struct.inflate_state, ptr %1466, i32 0, i32 19
  %1468 = load i32, ptr %1467, align 4
  %1469 = icmp ne i32 %1468, 0
  br i1 %1469, label %1470, label %1534

1470:                                             ; preds = %1454
  br label %1471

1471:                                             ; preds = %1470
  br label %1472

1472:                                             ; preds = %1506, %1471
  %1473 = load i32, ptr %18, align 4
  %1474 = load ptr, ptr %12, align 8
  %1475 = getelementptr inbounds %struct.inflate_state, ptr %1474, i32 0, i32 19
  %1476 = load i32, ptr %1475, align 4
  %1477 = icmp ult i32 %1473, %1476
  br i1 %1477, label %1478, label %1507

1478:                                             ; preds = %1472
  br label %1479

1479:                                             ; preds = %1478
  br label %1480

1480:                                             ; preds = %1479
  %1481 = load i32, ptr %15, align 4
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1483, label %1491

1483:                                             ; preds = %1480
  %1484 = load ptr, ptr %8, align 8
  %1485 = load ptr, ptr %9, align 8
  %1486 = call i32 %1484(ptr noundef %1485, ptr noundef %13)
  store i32 %1486, ptr %15, align 4
  %1487 = load i32, ptr %15, align 4
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1489, label %1490

1489:                                             ; preds = %1483
  store ptr null, ptr %13, align 8
  store i32 -5, ptr %24, align 4
  br label %1652

1490:                                             ; preds = %1483
  br label %1491

1491:                                             ; preds = %1490, %1480
  br label %1492

1492:                                             ; preds = %1491
  %1493 = load i32, ptr %15, align 4
  %1494 = add i32 %1493, -1
  store i32 %1494, ptr %15, align 4
  %1495 = load ptr, ptr %13, align 8
  %1496 = getelementptr inbounds i8, ptr %1495, i32 1
  store ptr %1496, ptr %13, align 8
  %1497 = load i8, ptr %1495, align 1
  %1498 = zext i8 %1497 to i64
  %1499 = load i32, ptr %18, align 4
  %1500 = zext i32 %1499 to i64
  %1501 = shl i64 %1498, %1500
  %1502 = load i64, ptr %17, align 8
  %1503 = add i64 %1502, %1501
  store i64 %1503, ptr %17, align 8
  %1504 = load i32, ptr %18, align 4
  %1505 = add i32 %1504, 8
  store i32 %1505, ptr %18, align 4
  br label %1506

1506:                                             ; preds = %1492
  br label %1472, !llvm.loop !20

1507:                                             ; preds = %1472
  br label %1508

1508:                                             ; preds = %1507
  %1509 = load i64, ptr %17, align 8
  %1510 = trunc i64 %1509 to i32
  %1511 = load ptr, ptr %12, align 8
  %1512 = getelementptr inbounds %struct.inflate_state, ptr %1511, i32 0, i32 19
  %1513 = load i32, ptr %1512, align 4
  %1514 = shl i32 1, %1513
  %1515 = sub i32 %1514, 1
  %1516 = and i32 %1510, %1515
  %1517 = load ptr, ptr %12, align 8
  %1518 = getelementptr inbounds %struct.inflate_state, ptr %1517, i32 0, i32 18
  %1519 = load i32, ptr %1518, align 8
  %1520 = add i32 %1519, %1516
  store i32 %1520, ptr %1518, align 8
  br label %1521

1521:                                             ; preds = %1508
  %1522 = load ptr, ptr %12, align 8
  %1523 = getelementptr inbounds %struct.inflate_state, ptr %1522, i32 0, i32 19
  %1524 = load i32, ptr %1523, align 4
  %1525 = load i64, ptr %17, align 8
  %1526 = zext i32 %1524 to i64
  %1527 = lshr i64 %1525, %1526
  store i64 %1527, ptr %17, align 8
  %1528 = load ptr, ptr %12, align 8
  %1529 = getelementptr inbounds %struct.inflate_state, ptr %1528, i32 0, i32 19
  %1530 = load i32, ptr %1529, align 4
  %1531 = load i32, ptr %18, align 4
  %1532 = sub i32 %1531, %1530
  store i32 %1532, ptr %18, align 4
  br label %1533

1533:                                             ; preds = %1521
  br label %1534

1534:                                             ; preds = %1533, %1454
  %1535 = load ptr, ptr %12, align 8
  %1536 = getelementptr inbounds %struct.inflate_state, ptr %1535, i32 0, i32 18
  %1537 = load i32, ptr %1536, align 8
  %1538 = load ptr, ptr %12, align 8
  %1539 = getelementptr inbounds %struct.inflate_state, ptr %1538, i32 0, i32 11
  %1540 = load i32, ptr %1539, align 4
  %1541 = load ptr, ptr %12, align 8
  %1542 = getelementptr inbounds %struct.inflate_state, ptr %1541, i32 0, i32 12
  %1543 = load i32, ptr %1542, align 8
  %1544 = load ptr, ptr %12, align 8
  %1545 = getelementptr inbounds %struct.inflate_state, ptr %1544, i32 0, i32 11
  %1546 = load i32, ptr %1545, align 4
  %1547 = icmp ult i32 %1543, %1546
  br i1 %1547, label %1548, label %1550

1548:                                             ; preds = %1534
  %1549 = load i32, ptr %16, align 4
  br label %1551

1550:                                             ; preds = %1534
  br label %1551

1551:                                             ; preds = %1550, %1548
  %1552 = phi i32 [ %1549, %1548 ], [ 0, %1550 ]
  %1553 = sub i32 %1540, %1552
  %1554 = icmp ugt i32 %1537, %1553
  br i1 %1554, label %1555, label %1560

1555:                                             ; preds = %1551
  %1556 = load ptr, ptr %7, align 8
  %1557 = getelementptr inbounds %struct.z_stream_s, ptr %1556, i32 0, i32 6
  store ptr @.str.11, ptr %1557, align 8
  %1558 = load ptr, ptr %12, align 8
  %1559 = getelementptr inbounds %struct.inflate_state, ptr %1558, i32 0, i32 1
  store i32 16209, ptr %1559, align 8
  br label %1651

1560:                                             ; preds = %1551
  br label %1561

1561:                                             ; preds = %1642, %1560
  br label %1562

1562:                                             ; preds = %1561
  %1563 = load i32, ptr %16, align 4
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1565, label %1583

1565:                                             ; preds = %1562
  %1566 = load ptr, ptr %12, align 8
  %1567 = getelementptr inbounds %struct.inflate_state, ptr %1566, i32 0, i32 14
  %1568 = load ptr, ptr %1567, align 8
  store ptr %1568, ptr %14, align 8
  %1569 = load ptr, ptr %12, align 8
  %1570 = getelementptr inbounds %struct.inflate_state, ptr %1569, i32 0, i32 11
  %1571 = load i32, ptr %1570, align 4
  store i32 %1571, ptr %16, align 4
  %1572 = load i32, ptr %16, align 4
  %1573 = load ptr, ptr %12, align 8
  %1574 = getelementptr inbounds %struct.inflate_state, ptr %1573, i32 0, i32 12
  store i32 %1572, ptr %1574, align 8
  %1575 = load ptr, ptr %10, align 8
  %1576 = load ptr, ptr %11, align 8
  %1577 = load ptr, ptr %14, align 8
  %1578 = load i32, ptr %16, align 4
  %1579 = call i32 %1575(ptr noundef %1576, ptr noundef %1577, i32 noundef %1578)
  %1580 = icmp ne i32 %1579, 0
  br i1 %1580, label %1581, label %1582

1581:                                             ; preds = %1565
  store i32 -5, ptr %24, align 4
  br label %1652

1582:                                             ; preds = %1565
  br label %1583

1583:                                             ; preds = %1582, %1562
  br label %1584

1584:                                             ; preds = %1583
  %1585 = load ptr, ptr %12, align 8
  %1586 = getelementptr inbounds %struct.inflate_state, ptr %1585, i32 0, i32 11
  %1587 = load i32, ptr %1586, align 4
  %1588 = load ptr, ptr %12, align 8
  %1589 = getelementptr inbounds %struct.inflate_state, ptr %1588, i32 0, i32 18
  %1590 = load i32, ptr %1589, align 8
  %1591 = sub i32 %1587, %1590
  store i32 %1591, ptr %19, align 4
  %1592 = load i32, ptr %19, align 4
  %1593 = load i32, ptr %16, align 4
  %1594 = icmp ult i32 %1592, %1593
  br i1 %1594, label %1595, label %1603

1595:                                             ; preds = %1584
  %1596 = load ptr, ptr %14, align 8
  %1597 = load i32, ptr %19, align 4
  %1598 = zext i32 %1597 to i64
  %1599 = getelementptr inbounds i8, ptr %1596, i64 %1598
  store ptr %1599, ptr %20, align 8
  %1600 = load i32, ptr %16, align 4
  %1601 = load i32, ptr %19, align 4
  %1602 = sub i32 %1600, %1601
  store i32 %1602, ptr %19, align 4
  br label %1612

1603:                                             ; preds = %1584
  %1604 = load ptr, ptr %14, align 8
  %1605 = load ptr, ptr %12, align 8
  %1606 = getelementptr inbounds %struct.inflate_state, ptr %1605, i32 0, i32 18
  %1607 = load i32, ptr %1606, align 8
  %1608 = zext i32 %1607 to i64
  %1609 = sub i64 0, %1608
  %1610 = getelementptr inbounds i8, ptr %1604, i64 %1609
  store ptr %1610, ptr %20, align 8
  %1611 = load i32, ptr %16, align 4
  store i32 %1611, ptr %19, align 4
  br label %1612

1612:                                             ; preds = %1603, %1595
  %1613 = load i32, ptr %19, align 4
  %1614 = load ptr, ptr %12, align 8
  %1615 = getelementptr inbounds %struct.inflate_state, ptr %1614, i32 0, i32 17
  %1616 = load i32, ptr %1615, align 4
  %1617 = icmp ugt i32 %1613, %1616
  br i1 %1617, label %1618, label %1622

1618:                                             ; preds = %1612
  %1619 = load ptr, ptr %12, align 8
  %1620 = getelementptr inbounds %struct.inflate_state, ptr %1619, i32 0, i32 17
  %1621 = load i32, ptr %1620, align 4
  store i32 %1621, ptr %19, align 4
  br label %1622

1622:                                             ; preds = %1618, %1612
  %1623 = load i32, ptr %19, align 4
  %1624 = load ptr, ptr %12, align 8
  %1625 = getelementptr inbounds %struct.inflate_state, ptr %1624, i32 0, i32 17
  %1626 = load i32, ptr %1625, align 4
  %1627 = sub i32 %1626, %1623
  store i32 %1627, ptr %1625, align 4
  %1628 = load i32, ptr %19, align 4
  %1629 = load i32, ptr %16, align 4
  %1630 = sub i32 %1629, %1628
  store i32 %1630, ptr %16, align 4
  br label %1631

1631:                                             ; preds = %1637, %1622
  %1632 = load ptr, ptr %20, align 8
  %1633 = getelementptr inbounds i8, ptr %1632, i32 1
  store ptr %1633, ptr %20, align 8
  %1634 = load i8, ptr %1632, align 1
  %1635 = load ptr, ptr %14, align 8
  %1636 = getelementptr inbounds i8, ptr %1635, i32 1
  store ptr %1636, ptr %14, align 8
  store i8 %1634, ptr %1635, align 1
  br label %1637

1637:                                             ; preds = %1631
  %1638 = load i32, ptr %19, align 4
  %1639 = add i32 %1638, -1
  store i32 %1639, ptr %19, align 4
  %1640 = icmp ne i32 %1639, 0
  br i1 %1640, label %1631, label %1641, !llvm.loop !21

1641:                                             ; preds = %1637
  br label %1642

1642:                                             ; preds = %1641
  %1643 = load ptr, ptr %12, align 8
  %1644 = getelementptr inbounds %struct.inflate_state, ptr %1643, i32 0, i32 17
  %1645 = load i32, ptr %1644, align 4
  %1646 = icmp ne i32 %1645, 0
  br i1 %1646, label %1561, label %1647, !llvm.loop !22

1647:                                             ; preds = %1642
  br label %1651

1648:                                             ; preds = %63
  store i32 1, ptr %24, align 4
  br label %1652

1649:                                             ; preds = %63
  store i32 -3, ptr %24, align 4
  br label %1652

1650:                                             ; preds = %63
  store i32 -2, ptr %24, align 4
  br label %1652

1651:                                             ; preds = %1647, %1555, %1449, %1214, %1205, %1188, %1000, %942, %908, %874, %866, %505, %388, %304, %211, %157, %83
  br label %63

1652:                                             ; preds = %1650, %1649, %1648, %1581, %1489, %1398, %1326, %1249, %1185, %1110, %1033, %780, %717, %629, %557, %420, %323, %265, %242, %185, %102
  %1653 = load i32, ptr %16, align 4
  %1654 = load ptr, ptr %12, align 8
  %1655 = getelementptr inbounds %struct.inflate_state, ptr %1654, i32 0, i32 11
  %1656 = load i32, ptr %1655, align 4
  %1657 = icmp ult i32 %1653, %1656
  br i1 %1657, label %1658, label %1676

1658:                                             ; preds = %1652
  %1659 = load ptr, ptr %10, align 8
  %1660 = load ptr, ptr %11, align 8
  %1661 = load ptr, ptr %12, align 8
  %1662 = getelementptr inbounds %struct.inflate_state, ptr %1661, i32 0, i32 14
  %1663 = load ptr, ptr %1662, align 8
  %1664 = load ptr, ptr %12, align 8
  %1665 = getelementptr inbounds %struct.inflate_state, ptr %1664, i32 0, i32 11
  %1666 = load i32, ptr %1665, align 4
  %1667 = load i32, ptr %16, align 4
  %1668 = sub i32 %1666, %1667
  %1669 = call i32 %1659(ptr noundef %1660, ptr noundef %1663, i32 noundef %1668)
  %1670 = icmp ne i32 %1669, 0
  br i1 %1670, label %1671, label %1675

1671:                                             ; preds = %1658
  %1672 = load i32, ptr %24, align 4
  %1673 = icmp eq i32 %1672, 1
  br i1 %1673, label %1674, label %1675

1674:                                             ; preds = %1671
  store i32 -5, ptr %24, align 4
  br label %1675

1675:                                             ; preds = %1674, %1671, %1658
  br label %1676

1676:                                             ; preds = %1675, %1652
  %1677 = load ptr, ptr %13, align 8
  %1678 = load ptr, ptr %7, align 8
  %1679 = getelementptr inbounds %struct.z_stream_s, ptr %1678, i32 0, i32 0
  store ptr %1677, ptr %1679, align 8
  %1680 = load i32, ptr %15, align 4
  %1681 = load ptr, ptr %7, align 8
  %1682 = getelementptr inbounds %struct.z_stream_s, ptr %1681, i32 0, i32 1
  store i32 %1680, ptr %1682, align 8
  %1683 = load i32, ptr %24, align 4
  store i32 %1683, ptr %6, align 4
  br label %1684

1684:                                             ; preds = %1676, %32
  %1685 = load i32, ptr %6, align 4
  ret i32 %1685
}

declare void @inflate_fixed(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @inflate_fast(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateBackEnd(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6, %1
  store i32 -2, ptr %2, align 4
  br label %29

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  call void %20(ptr noundef %23, ptr noundef %26)
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 7
  store ptr null, ptr %28, align 8
  store i32 0, ptr %2, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, ptr %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!22 = distinct !{!22, !7}
