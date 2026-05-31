; ModuleID = 'corpus_zlib/examples/gun.c'
source_filename = "corpus_zlib/examples/gun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.ind = type { i32, ptr }
%struct.outd = type { i32, i32, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }

@match = dso_local global [65282 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"gun out of memory error--aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"gun 1.6 (17 Jan 2010)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Copyright (C) 2003-2010 Mark Adler\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"usage: gun [-t] [file1.gz [file2.Z ...]]\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"gun error: no gz type on %s--skipping\0A\00", align 1
@inbuf = dso_local global [32768 x i8] zeroinitializer, align 16
@outbuf = dso_local global [32768 x i8] zeroinitializer, align 16
@prefix = dso_local global [65536 x i16] zeroinitializer, align 16
@suffix = dso_local global [65536 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gun cannot open %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gun cannot create %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"gun warning: trailing garbage ignored in %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"gun data error on %s: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"gun write error on %s: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"gun read error on %s: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"gun unexpected end of file on %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"gun internal error--aborting\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"unknown lzw flags set\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"lzw bits out of range\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"invalid lzw code\00", align 1

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
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr @match, ptr %10, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 8
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 10
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %10, align 8
  %16 = call i32 @inflateBackInit_(ptr noundef %11, i32 noundef 15, ptr noundef %15, ptr noundef @.str, i32 noundef 112)
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load ptr, ptr @stderr, align 8
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.1)
  store i32 1, ptr %3, align 4
  br label %180

22:                                               ; preds = %2
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %4, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i32 1
  store ptr %26, ptr %5, align 8
  store i32 0, ptr %8, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.2) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load ptr, ptr @stderr, align 8
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.3)
  %37 = load ptr, ptr @stderr, align 8
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.4)
  %39 = load ptr, ptr @stderr, align 8
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.5)
  store i32 0, ptr %3, align 4
  br label %180

41:                                               ; preds = %29, %22
  %42 = load i32, ptr %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.6) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  store i32 1, ptr %8, align 4
  %50 = load i32, ptr %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, ptr %4, align 4
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds ptr, ptr %52, i32 1
  store ptr %53, ptr %5, align 8
  br label %54

54:                                               ; preds = %49, %44, %41
  %55 = load i32, ptr %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %174

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %167, %57
  %59 = load i32, ptr %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store ptr null, ptr %9, align 8
  br label %152

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = call i64 @strlen(ptr noundef %64) #7
  %66 = trunc i64 %65 to i32
  store i32 %66, ptr %7, align 4
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = load i32, ptr %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 -3
  %73 = call i32 @strcmp(ptr noundef %72, ptr noundef @.str.7) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %62
  %76 = load ptr, ptr %5, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = load i32, ptr %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = getelementptr inbounds i8, ptr %80, i64 -3
  %82 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.8) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75, %62
  %85 = load i32, ptr %7, align 4
  %86 = sub nsw i32 %85, 3
  store i32 %86, ptr %7, align 4
  br label %132

87:                                               ; preds = %75
  %88 = load ptr, ptr %5, align 8
  %89 = load ptr, ptr %88, align 8
  %90 = load i32, ptr %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %89, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 -2
  %94 = call i32 @strcmp(ptr noundef %93, ptr noundef @.str.9) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %123, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %5, align 8
  %98 = load ptr, ptr %97, align 8
  %99 = load i32, ptr %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  %102 = getelementptr inbounds i8, ptr %101, i64 -2
  %103 = call i32 @strcmp(ptr noundef %102, ptr noundef @.str.10) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %96
  %106 = load ptr, ptr %5, align 8
  %107 = load ptr, ptr %106, align 8
  %108 = load i32, ptr %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %107, i64 %109
  %111 = getelementptr inbounds i8, ptr %110, i64 -2
  %112 = call i32 @strcmp(ptr noundef %111, ptr noundef @.str.11) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load ptr, ptr %5, align 8
  %116 = load ptr, ptr %115, align 8
  %117 = load i32, ptr %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = getelementptr inbounds i8, ptr %119, i64 -2
  %121 = call i32 @strcmp(ptr noundef %120, ptr noundef @.str.12) #7
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114, %105, %96, %87
  %124 = load i32, ptr %7, align 4
  %125 = sub nsw i32 %124, 2
  store i32 %125, ptr %7, align 4
  br label %131

126:                                              ; preds = %114
  %127 = load ptr, ptr @stderr, align 8
  %128 = load ptr, ptr %5, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.13, ptr noundef %129)
  br label %167

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %84
  %133 = load i32, ptr %7, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = call noalias ptr @malloc(i64 noundef %135) #8
  store ptr %136, ptr %9, align 8
  %137 = load ptr, ptr %9, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load ptr, ptr @stderr, align 8
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.1)
  store i32 1, ptr %6, align 4
  br label %173

142:                                              ; preds = %132
  %143 = load ptr, ptr %9, align 8
  %144 = load ptr, ptr %5, align 8
  %145 = load ptr, ptr %144, align 8
  %146 = load i32, ptr %7, align 4
  %147 = sext i32 %146 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %143, ptr align 1 %145, i64 %147, i1 false)
  %148 = load ptr, ptr %9, align 8
  %149 = load i32, ptr %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  store i8 0, ptr %151, align 1
  br label %152

152:                                              ; preds = %142, %61
  %153 = load ptr, ptr %5, align 8
  %154 = load ptr, ptr %153, align 8
  %155 = load ptr, ptr %9, align 8
  %156 = load i32, ptr %8, align 4
  %157 = call i32 @gunzip(ptr noundef %11, ptr noundef %154, ptr noundef %155, i32 noundef %156)
  store i32 %157, ptr %6, align 4
  %158 = load ptr, ptr %9, align 8
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %161) #9
  br label %162

162:                                              ; preds = %160, %152
  %163 = load i32, ptr %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %173

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %166, %126
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr inbounds ptr, ptr %168, i32 1
  store ptr %169, ptr %5, align 8
  %170 = load i32, ptr %4, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, ptr %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %58, label %173, !llvm.loop !6

173:                                              ; preds = %167, %165, %139
  br label %177

174:                                              ; preds = %54
  %175 = load i32, ptr %8, align 4
  %176 = call i32 @gunzip(ptr noundef %11, ptr noundef null, ptr noundef null, i32 noundef %175)
  store i32 %176, ptr %6, align 4
  br label %177

177:                                              ; preds = %174, %173
  %178 = call i32 @inflateBackEnd(ptr noundef %11)
  %179 = load i32, ptr %6, align 4
  store i32 %179, ptr %3, align 4
  br label %180

180:                                              ; preds = %177, %34, %19
  %181 = load i32, ptr %3, align 4
  ret i32 %181
}

declare i32 @inflateBackInit_(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gunzip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %13 = load ptr, ptr %7, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %7, align 8
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  store ptr @.str.14, ptr %7, align 8
  store i32 0, ptr %11, align 4
  br label %31

21:                                               ; preds = %15
  %22 = load ptr, ptr %7, align 8
  %23 = call i32 (ptr, i32, ...) @open(ptr noundef %22, i32 noundef 0, i32 noundef 0)
  store i32 %23, ptr %11, align 4
  %24 = load i32, ptr %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load ptr, ptr @stderr, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.15, ptr noundef %28)
  store i32 0, ptr %5, align 4
  br label %162

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, ptr %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, ptr %12, align 4
  br label %57

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %8, align 8
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %35
  store ptr @.str.14, ptr %8, align 8
  store i32 1, ptr %12, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load ptr, ptr %8, align 8
  %46 = call i32 (ptr, i32, ...) @open(ptr noundef %45, i32 noundef 577, i32 noundef 438)
  store i32 %46, ptr %12, align 4
  %47 = load i32, ptr %12, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, ptr %11, align 4
  %51 = call i32 @close(i32 noundef %50)
  %52 = load ptr, ptr @stderr, align 8
  %53 = load ptr, ptr %8, align 8
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.16, ptr noundef %53)
  store i32 0, ptr %5, align 4
  br label %162

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %34
  %58 = call ptr @__errno_location() #10
  store i32 0, ptr %58, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %11, align 4
  %61 = load i32, ptr %12, align 4
  %62 = call i32 @gunpipe(ptr noundef %59, i32 noundef %60, i32 noundef %61)
  store i32 %62, ptr %10, align 4
  %63 = load i32, ptr %12, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, ptr %12, align 4
  %67 = call i32 @close(i32 noundef %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, ptr %11, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %11, align 4
  %73 = call i32 @close(i32 noundef %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, ptr %10, align 4
  switch i32 %75, label %152 [
    i32 0, label %76
    i32 -1, label %76
    i32 -3, label %95
    i32 -4, label %108
    i32 -5, label %117
  ]

76:                                               ; preds = %74, %74
  %77 = load i32, ptr %11, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, ptr %12, align 4
  %81 = icmp sgt i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load ptr, ptr %7, align 8
  %84 = load ptr, ptr %8, align 8
  call void @copymeta(ptr noundef %83, ptr noundef %84)
  %85 = load ptr, ptr %7, align 8
  %86 = call i32 @unlink(ptr noundef %85) #9
  br label %87

87:                                               ; preds = %82, %79, %76
  %88 = load i32, ptr %10, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load ptr, ptr @stderr, align 8
  %92 = load ptr, ptr %7, align 8
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.17, ptr noundef %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %161

95:                                               ; preds = %74
  %96 = load i32, ptr %12, align 4
  %97 = icmp sgt i32 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr %8, align 8
  %100 = call i32 @unlink(ptr noundef %99) #9
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr @stderr, align 8
  %103 = load ptr, ptr %7, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.z_stream_s, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.18, ptr noundef %103, ptr noundef %106)
  br label %161

108:                                              ; preds = %74
  %109 = load i32, ptr %12, align 4
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load ptr, ptr %8, align 8
  %113 = call i32 @unlink(ptr noundef %112) #9
  br label %114

114:                                              ; preds = %111, %108
  %115 = load ptr, ptr @stderr, align 8
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.1)
  store i32 1, ptr %5, align 4
  br label %162

117:                                              ; preds = %74
  %118 = load i32, ptr %12, align 4
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load ptr, ptr %8, align 8
  %122 = call i32 @unlink(ptr noundef %121) #9
  br label %123

123:                                              ; preds = %120, %117
  %124 = load ptr, ptr %6, align 8
  %125 = getelementptr inbounds %struct.z_stream_s, ptr %124, i32 0, i32 0
  %126 = load ptr, ptr %125, align 8
  %127 = icmp ne ptr %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load ptr, ptr @stderr, align 8
  %130 = load ptr, ptr %8, align 8
  %131 = call ptr @__errno_location() #10
  %132 = load i32, ptr %131, align 4
  %133 = call ptr @strerror(i32 noundef %132) #9
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.19, ptr noundef %130, ptr noundef %133)
  br label %151

135:                                              ; preds = %123
  %136 = call ptr @__errno_location() #10
  %137 = load i32, ptr %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load ptr, ptr @stderr, align 8
  %141 = load ptr, ptr %7, align 8
  %142 = call ptr @__errno_location() #10
  %143 = load i32, ptr %142, align 4
  %144 = call ptr @strerror(i32 noundef %143) #9
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.20, ptr noundef %141, ptr noundef %144)
  br label %150

146:                                              ; preds = %135
  %147 = load ptr, ptr @stderr, align 8
  %148 = load ptr, ptr %7, align 8
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.21, ptr noundef %148)
  br label %150

150:                                              ; preds = %146, %139
  br label %151

151:                                              ; preds = %150, %128
  br label %161

152:                                              ; preds = %74
  %153 = load i32, ptr %12, align 4
  %154 = icmp sgt i32 %153, 2
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load ptr, ptr %8, align 8
  %157 = call i32 @unlink(ptr noundef %156) #9
  br label %158

158:                                              ; preds = %155, %152
  %159 = load ptr, ptr @stderr, align 8
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.22)
  store i32 1, ptr %5, align 4
  br label %162

161:                                              ; preds = %151, %101, %94
  store i32 0, ptr %5, align 4
  br label %162

162:                                              ; preds = %161, %158, %114, %49, %26
  %163 = load i32, ptr %5, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare i32 @inflateBackEnd(ptr noundef) #1

declare i32 @open(ptr noundef, i32 noundef, ...) #1

declare i32 @close(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gunpipe(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.ind, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.outd, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store ptr null, ptr %13, align 8
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.ind, ptr %14, i32 0, i32 0
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ind, ptr %14, i32 0, i32 1
  store ptr @inbuf, ptr %19, align 8
  store ptr %14, ptr %15, align 8
  store i32 0, ptr %10, align 4
  store i32 1, ptr %8, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 0
  store ptr null, ptr %21, align 8
  br label %22

22:                                               ; preds = %739, %3
  %23 = load i32, ptr %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8
  %28 = call i32 @in(ptr noundef %27, ptr noundef %13)
  store i32 %28, ptr %10, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  %31 = load i32, ptr %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, ptr %10, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %10, align 4
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %37, ptr %13, align 8
  %38 = load i8, ptr %36, align 1
  %39 = zext i8 %38 to i32
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %39, %33 ], [ -1, %40 ]
  store i32 %42, ptr %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, ptr %7, align 4
  br label %740

45:                                               ; preds = %41
  %46 = load i32, ptr %9, align 4
  %47 = icmp ne i32 %46, 31
  br i1 %47, label %73, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load ptr, ptr %15, align 8
  %54 = call i32 @in(ptr noundef %53, ptr noundef %13)
  store i32 %54, ptr %10, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 0, %51 ], [ %54, %52 ]
  %57 = load i32, ptr %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, ptr %10, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %10, align 4
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %63, ptr %13, align 8
  %64 = load i8, ptr %62, align 1
  %65 = zext i8 %64 to i32
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %59
  %68 = phi i32 [ %65, %59 ], [ -1, %66 ]
  store i32 %68, ptr %9, align 4
  %69 = icmp ne i32 %68, 139
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, ptr %9, align 4
  %72 = icmp ne i32 %71, 157
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %45
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i32 0, i32 6
  store ptr @.str.23, ptr %75, align 8
  %76 = load i32, ptr %8, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 -3, i32 -1
  store i32 %79, ptr %7, align 4
  br label %740

80:                                               ; preds = %70, %67
  store i32 0, ptr %8, align 4
  %81 = load i32, ptr %9, align 4
  %82 = icmp eq i32 %81, 157
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, ptr %10, align 4
  %85 = load ptr, ptr %13, align 8
  %86 = load ptr, ptr %15, align 8
  %87 = load i32, ptr %6, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = call i32 @lunpipe(i32 noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88)
  store i32 %89, ptr %7, align 4
  br label %740

90:                                               ; preds = %80
  store i32 -5, ptr %7, align 4
  %91 = load i32, ptr %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %97

94:                                               ; preds = %90
  %95 = load ptr, ptr %15, align 8
  %96 = call i32 @in(ptr noundef %95, ptr noundef %13)
  store i32 %96, ptr %10, align 4
  br label %97

97:                                               ; preds = %94, %93
  %98 = phi i32 [ 0, %93 ], [ %96, %94 ]
  %99 = load i32, ptr %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, ptr %10, align 4
  %103 = add i32 %102, -1
  store i32 %103, ptr %10, align 4
  %104 = load ptr, ptr %13, align 8
  %105 = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %105, ptr %13, align 8
  %106 = load i8, ptr %104, align 1
  %107 = zext i8 %106 to i32
  br label %109

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i32 [ %107, %101 ], [ -1, %108 ]
  store i32 %110, ptr %9, align 4
  %111 = icmp ne i32 %110, 8
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, ptr %9, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %740

116:                                              ; preds = %112
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.z_stream_s, ptr %117, i32 0, i32 6
  store ptr @.str.24, ptr %118, align 8
  store i32 -3, ptr %7, align 4
  br label %740

119:                                              ; preds = %109
  %120 = load i32, ptr %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %126

123:                                              ; preds = %119
  %124 = load ptr, ptr %15, align 8
  %125 = call i32 @in(ptr noundef %124, ptr noundef %13)
  store i32 %125, ptr %10, align 4
  br label %126

126:                                              ; preds = %123, %122
  %127 = phi i32 [ 0, %122 ], [ %125, %123 ]
  %128 = load i32, ptr %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, ptr %10, align 4
  %132 = add i32 %131, -1
  store i32 %132, ptr %10, align 4
  %133 = load ptr, ptr %13, align 8
  %134 = getelementptr inbounds i8, ptr %133, i32 1
  store ptr %134, ptr %13, align 8
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i32
  br label %138

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %130
  %139 = phi i32 [ %136, %130 ], [ -1, %137 ]
  store i32 %139, ptr %9, align 4
  store i32 %139, ptr %11, align 4
  %140 = load i32, ptr %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %146

143:                                              ; preds = %138
  %144 = load ptr, ptr %15, align 8
  %145 = call i32 @in(ptr noundef %144, ptr noundef %13)
  store i32 %145, ptr %10, align 4
  br label %146

146:                                              ; preds = %143, %142
  %147 = phi i32 [ 0, %142 ], [ %145, %143 ]
  %148 = load i32, ptr %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32, ptr %10, align 4
  %152 = add i32 %151, -1
  store i32 %152, ptr %10, align 4
  %153 = load ptr, ptr %13, align 8
  %154 = getelementptr inbounds i8, ptr %153, i32 1
  store ptr %154, ptr %13, align 8
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i32
  br label %158

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %150
  %159 = phi i32 [ %156, %150 ], [ -1, %157 ]
  store i32 %159, ptr %9, align 4
  %160 = load i32, ptr %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %166

163:                                              ; preds = %158
  %164 = load ptr, ptr %15, align 8
  %165 = call i32 @in(ptr noundef %164, ptr noundef %13)
  store i32 %165, ptr %10, align 4
  br label %166

166:                                              ; preds = %163, %162
  %167 = phi i32 [ 0, %162 ], [ %165, %163 ]
  %168 = load i32, ptr %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load i32, ptr %10, align 4
  %172 = add i32 %171, -1
  store i32 %172, ptr %10, align 4
  %173 = load ptr, ptr %13, align 8
  %174 = getelementptr inbounds i8, ptr %173, i32 1
  store ptr %174, ptr %13, align 8
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i32
  br label %178

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177, %170
  %179 = phi i32 [ %176, %170 ], [ -1, %177 ]
  store i32 %179, ptr %9, align 4
  %180 = load i32, ptr %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %186

183:                                              ; preds = %178
  %184 = load ptr, ptr %15, align 8
  %185 = call i32 @in(ptr noundef %184, ptr noundef %13)
  store i32 %185, ptr %10, align 4
  br label %186

186:                                              ; preds = %183, %182
  %187 = phi i32 [ 0, %182 ], [ %185, %183 ]
  %188 = load i32, ptr %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i32, ptr %10, align 4
  %192 = add i32 %191, -1
  store i32 %192, ptr %10, align 4
  %193 = load ptr, ptr %13, align 8
  %194 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %194, ptr %13, align 8
  %195 = load i8, ptr %193, align 1
  %196 = zext i8 %195 to i32
  br label %198

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %190
  %199 = phi i32 [ %196, %190 ], [ -1, %197 ]
  store i32 %199, ptr %9, align 4
  %200 = load i32, ptr %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %206

203:                                              ; preds = %198
  %204 = load ptr, ptr %15, align 8
  %205 = call i32 @in(ptr noundef %204, ptr noundef %13)
  store i32 %205, ptr %10, align 4
  br label %206

206:                                              ; preds = %203, %202
  %207 = phi i32 [ 0, %202 ], [ %205, %203 ]
  %208 = load i32, ptr %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = load i32, ptr %10, align 4
  %212 = add i32 %211, -1
  store i32 %212, ptr %10, align 4
  %213 = load ptr, ptr %13, align 8
  %214 = getelementptr inbounds i8, ptr %213, i32 1
  store ptr %214, ptr %13, align 8
  %215 = load i8, ptr %213, align 1
  %216 = zext i8 %215 to i32
  br label %218

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217, %210
  %219 = phi i32 [ %216, %210 ], [ -1, %217 ]
  store i32 %219, ptr %9, align 4
  %220 = load i32, ptr %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %226

223:                                              ; preds = %218
  %224 = load ptr, ptr %15, align 8
  %225 = call i32 @in(ptr noundef %224, ptr noundef %13)
  store i32 %225, ptr %10, align 4
  br label %226

226:                                              ; preds = %223, %222
  %227 = phi i32 [ 0, %222 ], [ %225, %223 ]
  %228 = load i32, ptr %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load i32, ptr %10, align 4
  %232 = add i32 %231, -1
  store i32 %232, ptr %10, align 4
  %233 = load ptr, ptr %13, align 8
  %234 = getelementptr inbounds i8, ptr %233, i32 1
  store ptr %234, ptr %13, align 8
  %235 = load i8, ptr %233, align 1
  %236 = zext i8 %235 to i32
  br label %238

237:                                              ; preds = %226
  br label %238

238:                                              ; preds = %237, %230
  %239 = phi i32 [ %236, %230 ], [ -1, %237 ]
  store i32 %239, ptr %9, align 4
  %240 = load i32, ptr %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %246

243:                                              ; preds = %238
  %244 = load ptr, ptr %15, align 8
  %245 = call i32 @in(ptr noundef %244, ptr noundef %13)
  store i32 %245, ptr %10, align 4
  br label %246

246:                                              ; preds = %243, %242
  %247 = phi i32 [ 0, %242 ], [ %245, %243 ]
  %248 = load i32, ptr %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = load i32, ptr %10, align 4
  %252 = add i32 %251, -1
  store i32 %252, ptr %10, align 4
  %253 = load ptr, ptr %13, align 8
  %254 = getelementptr inbounds i8, ptr %253, i32 1
  store ptr %254, ptr %13, align 8
  %255 = load i8, ptr %253, align 1
  %256 = zext i8 %255 to i32
  br label %258

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %257, %250
  %259 = phi i32 [ %256, %250 ], [ -1, %257 ]
  store i32 %259, ptr %9, align 4
  %260 = load i32, ptr %9, align 4
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %740

263:                                              ; preds = %258
  %264 = load i32, ptr %11, align 4
  %265 = and i32 %264, 224
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load ptr, ptr %4, align 8
  %269 = getelementptr inbounds %struct.z_stream_s, ptr %268, i32 0, i32 6
  store ptr @.str.25, ptr %269, align 8
  store i32 -3, ptr %7, align 4
  br label %740

270:                                              ; preds = %263
  %271 = load i32, ptr %11, align 4
  %272 = and i32 %271, 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %367

274:                                              ; preds = %270
  %275 = load i32, ptr %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %281

278:                                              ; preds = %274
  %279 = load ptr, ptr %15, align 8
  %280 = call i32 @in(ptr noundef %279, ptr noundef %13)
  store i32 %280, ptr %10, align 4
  br label %281

281:                                              ; preds = %278, %277
  %282 = phi i32 [ 0, %277 ], [ %280, %278 ]
  %283 = load i32, ptr %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %281
  %286 = load i32, ptr %10, align 4
  %287 = add i32 %286, -1
  store i32 %287, ptr %10, align 4
  %288 = load ptr, ptr %13, align 8
  %289 = getelementptr inbounds i8, ptr %288, i32 1
  store ptr %289, ptr %13, align 8
  %290 = load i8, ptr %288, align 1
  %291 = zext i8 %290 to i32
  br label %293

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %292, %285
  %294 = phi i32 [ %291, %285 ], [ -1, %292 ]
  store i32 %294, ptr %9, align 4
  store i32 %294, ptr %12, align 4
  %295 = load i32, ptr %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  br label %301

298:                                              ; preds = %293
  %299 = load ptr, ptr %15, align 8
  %300 = call i32 @in(ptr noundef %299, ptr noundef %13)
  store i32 %300, ptr %10, align 4
  br label %301

301:                                              ; preds = %298, %297
  %302 = phi i32 [ 0, %297 ], [ %300, %298 ]
  %303 = load i32, ptr %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %301
  %306 = load i32, ptr %10, align 4
  %307 = add i32 %306, -1
  store i32 %307, ptr %10, align 4
  %308 = load ptr, ptr %13, align 8
  %309 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %309, ptr %13, align 8
  %310 = load i8, ptr %308, align 1
  %311 = zext i8 %310 to i32
  br label %313

312:                                              ; preds = %301
  br label %313

313:                                              ; preds = %312, %305
  %314 = phi i32 [ %311, %305 ], [ -1, %312 ]
  store i32 %314, ptr %9, align 4
  %315 = shl i32 %314, 8
  %316 = load i32, ptr %12, align 4
  %317 = add i32 %316, %315
  store i32 %317, ptr %12, align 4
  %318 = load i32, ptr %9, align 4
  %319 = icmp eq i32 %318, -1
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %740

321:                                              ; preds = %313
  br label %322

322:                                              ; preds = %352, %321
  %323 = load i32, ptr %12, align 4
  %324 = load i32, ptr %10, align 4
  %325 = icmp ugt i32 %323, %324
  br i1 %325, label %326, label %355

326:                                              ; preds = %322
  %327 = load i32, ptr %10, align 4
  %328 = load i32, ptr %12, align 4
  %329 = sub i32 %328, %327
  store i32 %329, ptr %12, align 4
  store i32 0, ptr %10, align 4
  %330 = load i32, ptr %10, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  br label %336

333:                                              ; preds = %326
  %334 = load ptr, ptr %15, align 8
  %335 = call i32 @in(ptr noundef %334, ptr noundef %13)
  store i32 %335, ptr %10, align 4
  br label %336

336:                                              ; preds = %333, %332
  %337 = phi i32 [ 0, %332 ], [ %335, %333 ]
  %338 = load i32, ptr %10, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %336
  %341 = load i32, ptr %10, align 4
  %342 = add i32 %341, -1
  store i32 %342, ptr %10, align 4
  %343 = load ptr, ptr %13, align 8
  %344 = getelementptr inbounds i8, ptr %343, i32 1
  store ptr %344, ptr %13, align 8
  %345 = load i8, ptr %343, align 1
  %346 = zext i8 %345 to i32
  br label %348

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %340
  %349 = phi i32 [ %346, %340 ], [ -1, %347 ]
  store i32 %349, ptr %9, align 4
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  br label %355

352:                                              ; preds = %348
  %353 = load i32, ptr %12, align 4
  %354 = add i32 %353, -1
  store i32 %354, ptr %12, align 4
  br label %322, !llvm.loop !8

355:                                              ; preds = %351, %322
  %356 = load i32, ptr %9, align 4
  %357 = icmp eq i32 %356, -1
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  br label %740

359:                                              ; preds = %355
  %360 = load i32, ptr %12, align 4
  %361 = load i32, ptr %10, align 4
  %362 = sub i32 %361, %360
  store i32 %362, ptr %10, align 4
  %363 = load i32, ptr %12, align 4
  %364 = load ptr, ptr %13, align 8
  %365 = zext i32 %363 to i64
  %366 = getelementptr inbounds i8, ptr %364, i64 %365
  store ptr %366, ptr %13, align 8
  br label %367

367:                                              ; preds = %359, %270
  %368 = load i32, ptr %11, align 4
  %369 = and i32 %368, 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %401

371:                                              ; preds = %367
  br label %372

372:                                              ; preds = %399, %371
  %373 = load i32, ptr %10, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  br label %379

376:                                              ; preds = %372
  %377 = load ptr, ptr %15, align 8
  %378 = call i32 @in(ptr noundef %377, ptr noundef %13)
  store i32 %378, ptr %10, align 4
  br label %379

379:                                              ; preds = %376, %375
  %380 = phi i32 [ 0, %375 ], [ %378, %376 ]
  %381 = load i32, ptr %10, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %379
  %384 = load i32, ptr %10, align 4
  %385 = add i32 %384, -1
  store i32 %385, ptr %10, align 4
  %386 = load ptr, ptr %13, align 8
  %387 = getelementptr inbounds i8, ptr %386, i32 1
  store ptr %387, ptr %13, align 8
  %388 = load i8, ptr %386, align 1
  %389 = zext i8 %388 to i32
  br label %391

390:                                              ; preds = %379
  br label %391

391:                                              ; preds = %390, %383
  %392 = phi i32 [ %389, %383 ], [ -1, %390 ]
  store i32 %392, ptr %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %391
  %395 = load i32, ptr %9, align 4
  %396 = icmp ne i32 %395, -1
  br label %397

397:                                              ; preds = %394, %391
  %398 = phi i1 [ false, %391 ], [ %396, %394 ]
  br i1 %398, label %399, label %400

399:                                              ; preds = %397
  br label %372, !llvm.loop !9

400:                                              ; preds = %397
  br label %401

401:                                              ; preds = %400, %367
  %402 = load i32, ptr %11, align 4
  %403 = and i32 %402, 16
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %435

405:                                              ; preds = %401
  br label %406

406:                                              ; preds = %433, %405
  %407 = load i32, ptr %10, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  br label %413

410:                                              ; preds = %406
  %411 = load ptr, ptr %15, align 8
  %412 = call i32 @in(ptr noundef %411, ptr noundef %13)
  store i32 %412, ptr %10, align 4
  br label %413

413:                                              ; preds = %410, %409
  %414 = phi i32 [ 0, %409 ], [ %412, %410 ]
  %415 = load i32, ptr %10, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %413
  %418 = load i32, ptr %10, align 4
  %419 = add i32 %418, -1
  store i32 %419, ptr %10, align 4
  %420 = load ptr, ptr %13, align 8
  %421 = getelementptr inbounds i8, ptr %420, i32 1
  store ptr %421, ptr %13, align 8
  %422 = load i8, ptr %420, align 1
  %423 = zext i8 %422 to i32
  br label %425

424:                                              ; preds = %413
  br label %425

425:                                              ; preds = %424, %417
  %426 = phi i32 [ %423, %417 ], [ -1, %424 ]
  store i32 %426, ptr %9, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = load i32, ptr %9, align 4
  %430 = icmp ne i32 %429, -1
  br label %431

431:                                              ; preds = %428, %425
  %432 = phi i1 [ false, %425 ], [ %430, %428 ]
  br i1 %432, label %433, label %434

433:                                              ; preds = %431
  br label %406, !llvm.loop !10

434:                                              ; preds = %431
  br label %435

435:                                              ; preds = %434, %401
  %436 = load i32, ptr %11, align 4
  %437 = and i32 %436, 2
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %480

439:                                              ; preds = %435
  %440 = load i32, ptr %10, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %439
  br label %446

443:                                              ; preds = %439
  %444 = load ptr, ptr %15, align 8
  %445 = call i32 @in(ptr noundef %444, ptr noundef %13)
  store i32 %445, ptr %10, align 4
  br label %446

446:                                              ; preds = %443, %442
  %447 = phi i32 [ 0, %442 ], [ %445, %443 ]
  %448 = load i32, ptr %10, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %457

450:                                              ; preds = %446
  %451 = load i32, ptr %10, align 4
  %452 = add i32 %451, -1
  store i32 %452, ptr %10, align 4
  %453 = load ptr, ptr %13, align 8
  %454 = getelementptr inbounds i8, ptr %453, i32 1
  store ptr %454, ptr %13, align 8
  %455 = load i8, ptr %453, align 1
  %456 = zext i8 %455 to i32
  br label %458

457:                                              ; preds = %446
  br label %458

458:                                              ; preds = %457, %450
  %459 = phi i32 [ %456, %450 ], [ -1, %457 ]
  store i32 %459, ptr %9, align 4
  %460 = load i32, ptr %10, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %458
  br label %466

463:                                              ; preds = %458
  %464 = load ptr, ptr %15, align 8
  %465 = call i32 @in(ptr noundef %464, ptr noundef %13)
  store i32 %465, ptr %10, align 4
  br label %466

466:                                              ; preds = %463, %462
  %467 = phi i32 [ 0, %462 ], [ %465, %463 ]
  %468 = load i32, ptr %10, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %466
  %471 = load i32, ptr %10, align 4
  %472 = add i32 %471, -1
  store i32 %472, ptr %10, align 4
  %473 = load ptr, ptr %13, align 8
  %474 = getelementptr inbounds i8, ptr %473, i32 1
  store ptr %474, ptr %13, align 8
  %475 = load i8, ptr %473, align 1
  %476 = zext i8 %475 to i32
  br label %478

477:                                              ; preds = %466
  br label %478

478:                                              ; preds = %477, %470
  %479 = phi i32 [ %476, %470 ], [ -1, %477 ]
  store i32 %479, ptr %9, align 4
  br label %480

480:                                              ; preds = %478, %435
  %481 = load i32, ptr %9, align 4
  %482 = icmp eq i32 %481, -1
  br i1 %482, label %483, label %484

483:                                              ; preds = %480
  br label %740

484:                                              ; preds = %480
  %485 = load i32, ptr %6, align 4
  %486 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 0
  store i32 %485, ptr %486, align 8
  %487 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 1
  store i32 1, ptr %487, align 4
  %488 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %489 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  store i64 %488, ptr %489, align 8
  %490 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 3
  store i64 0, ptr %490, align 8
  %491 = load ptr, ptr %13, align 8
  %492 = load ptr, ptr %4, align 8
  %493 = getelementptr inbounds %struct.z_stream_s, ptr %492, i32 0, i32 0
  store ptr %491, ptr %493, align 8
  %494 = load i32, ptr %10, align 4
  %495 = load ptr, ptr %4, align 8
  %496 = getelementptr inbounds %struct.z_stream_s, ptr %495, i32 0, i32 1
  store i32 %494, ptr %496, align 8
  %497 = load ptr, ptr %4, align 8
  %498 = load ptr, ptr %15, align 8
  %499 = call i32 @inflateBack(ptr noundef %497, ptr noundef @in, ptr noundef %498, ptr noundef @out, ptr noundef %16)
  store i32 %499, ptr %7, align 4
  %500 = load i32, ptr %7, align 4
  %501 = icmp ne i32 %500, 1
  br i1 %501, label %502, label %503

502:                                              ; preds = %484
  br label %740

503:                                              ; preds = %484
  %504 = load ptr, ptr %4, align 8
  %505 = getelementptr inbounds %struct.z_stream_s, ptr %504, i32 0, i32 0
  %506 = load ptr, ptr %505, align 8
  store ptr %506, ptr %13, align 8
  %507 = load ptr, ptr %4, align 8
  %508 = getelementptr inbounds %struct.z_stream_s, ptr %507, i32 0, i32 1
  %509 = load i32, ptr %508, align 8
  store i32 %509, ptr %10, align 4
  %510 = load ptr, ptr %4, align 8
  %511 = getelementptr inbounds %struct.z_stream_s, ptr %510, i32 0, i32 0
  store ptr null, ptr %511, align 8
  store i32 -5, ptr %7, align 4
  %512 = load i32, ptr %10, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %503
  br label %518

515:                                              ; preds = %503
  %516 = load ptr, ptr %15, align 8
  %517 = call i32 @in(ptr noundef %516, ptr noundef %13)
  store i32 %517, ptr %10, align 4
  br label %518

518:                                              ; preds = %515, %514
  %519 = phi i32 [ 0, %514 ], [ %517, %515 ]
  %520 = load i32, ptr %10, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %518
  %523 = load i32, ptr %10, align 4
  %524 = add i32 %523, -1
  store i32 %524, ptr %10, align 4
  %525 = load ptr, ptr %13, align 8
  %526 = getelementptr inbounds i8, ptr %525, i32 1
  store ptr %526, ptr %13, align 8
  %527 = load i8, ptr %525, align 1
  %528 = zext i8 %527 to i32
  br label %530

529:                                              ; preds = %518
  br label %530

530:                                              ; preds = %529, %522
  %531 = phi i32 [ %528, %522 ], [ -1, %529 ]
  store i32 %531, ptr %9, align 4
  %532 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  %533 = load i64, ptr %532, align 8
  %534 = and i64 %533, 255
  %535 = trunc i64 %534 to i32
  %536 = icmp ne i32 %531, %535
  br i1 %536, label %618, label %537

537:                                              ; preds = %530
  %538 = load i32, ptr %10, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %537
  br label %544

541:                                              ; preds = %537
  %542 = load ptr, ptr %15, align 8
  %543 = call i32 @in(ptr noundef %542, ptr noundef %13)
  store i32 %543, ptr %10, align 4
  br label %544

544:                                              ; preds = %541, %540
  %545 = phi i32 [ 0, %540 ], [ %543, %541 ]
  %546 = load i32, ptr %10, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load i32, ptr %10, align 4
  %550 = add i32 %549, -1
  store i32 %550, ptr %10, align 4
  %551 = load ptr, ptr %13, align 8
  %552 = getelementptr inbounds i8, ptr %551, i32 1
  store ptr %552, ptr %13, align 8
  %553 = load i8, ptr %551, align 1
  %554 = zext i8 %553 to i32
  br label %556

555:                                              ; preds = %544
  br label %556

556:                                              ; preds = %555, %548
  %557 = phi i32 [ %554, %548 ], [ -1, %555 ]
  store i32 %557, ptr %9, align 4
  %558 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  %559 = load i64, ptr %558, align 8
  %560 = lshr i64 %559, 8
  %561 = and i64 %560, 255
  %562 = trunc i64 %561 to i32
  %563 = icmp ne i32 %557, %562
  br i1 %563, label %618, label %564

564:                                              ; preds = %556
  %565 = load i32, ptr %10, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %564
  br label %571

568:                                              ; preds = %564
  %569 = load ptr, ptr %15, align 8
  %570 = call i32 @in(ptr noundef %569, ptr noundef %13)
  store i32 %570, ptr %10, align 4
  br label %571

571:                                              ; preds = %568, %567
  %572 = phi i32 [ 0, %567 ], [ %570, %568 ]
  %573 = load i32, ptr %10, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %582

575:                                              ; preds = %571
  %576 = load i32, ptr %10, align 4
  %577 = add i32 %576, -1
  store i32 %577, ptr %10, align 4
  %578 = load ptr, ptr %13, align 8
  %579 = getelementptr inbounds i8, ptr %578, i32 1
  store ptr %579, ptr %13, align 8
  %580 = load i8, ptr %578, align 1
  %581 = zext i8 %580 to i32
  br label %583

582:                                              ; preds = %571
  br label %583

583:                                              ; preds = %582, %575
  %584 = phi i32 [ %581, %575 ], [ -1, %582 ]
  store i32 %584, ptr %9, align 4
  %585 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  %586 = load i64, ptr %585, align 8
  %587 = lshr i64 %586, 16
  %588 = and i64 %587, 255
  %589 = trunc i64 %588 to i32
  %590 = icmp ne i32 %584, %589
  br i1 %590, label %618, label %591

591:                                              ; preds = %583
  %592 = load i32, ptr %10, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  br label %598

595:                                              ; preds = %591
  %596 = load ptr, ptr %15, align 8
  %597 = call i32 @in(ptr noundef %596, ptr noundef %13)
  store i32 %597, ptr %10, align 4
  br label %598

598:                                              ; preds = %595, %594
  %599 = phi i32 [ 0, %594 ], [ %597, %595 ]
  %600 = load i32, ptr %10, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %609

602:                                              ; preds = %598
  %603 = load i32, ptr %10, align 4
  %604 = add i32 %603, -1
  store i32 %604, ptr %10, align 4
  %605 = load ptr, ptr %13, align 8
  %606 = getelementptr inbounds i8, ptr %605, i32 1
  store ptr %606, ptr %13, align 8
  %607 = load i8, ptr %605, align 1
  %608 = zext i8 %607 to i32
  br label %610

609:                                              ; preds = %598
  br label %610

610:                                              ; preds = %609, %602
  %611 = phi i32 [ %608, %602 ], [ -1, %609 ]
  store i32 %611, ptr %9, align 4
  %612 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  %613 = load i64, ptr %612, align 8
  %614 = lshr i64 %613, 24
  %615 = and i64 %614, 255
  %616 = trunc i64 %615 to i32
  %617 = icmp ne i32 %611, %616
  br i1 %617, label %618, label %625

618:                                              ; preds = %610, %583, %556, %530
  %619 = load i32, ptr %9, align 4
  %620 = icmp ne i32 %619, -1
  br i1 %620, label %621, label %624

621:                                              ; preds = %618
  %622 = load ptr, ptr %4, align 8
  %623 = getelementptr inbounds %struct.z_stream_s, ptr %622, i32 0, i32 6
  store ptr @.str.26, ptr %623, align 8
  store i32 -3, ptr %7, align 4
  br label %624

624:                                              ; preds = %621, %618
  br label %740

625:                                              ; preds = %610
  %626 = load i32, ptr %10, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625
  br label %632

629:                                              ; preds = %625
  %630 = load ptr, ptr %15, align 8
  %631 = call i32 @in(ptr noundef %630, ptr noundef %13)
  store i32 %631, ptr %10, align 4
  br label %632

632:                                              ; preds = %629, %628
  %633 = phi i32 [ 0, %628 ], [ %631, %629 ]
  %634 = load i32, ptr %10, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %643

636:                                              ; preds = %632
  %637 = load i32, ptr %10, align 4
  %638 = add i32 %637, -1
  store i32 %638, ptr %10, align 4
  %639 = load ptr, ptr %13, align 8
  %640 = getelementptr inbounds i8, ptr %639, i32 1
  store ptr %640, ptr %13, align 8
  %641 = load i8, ptr %639, align 1
  %642 = zext i8 %641 to i32
  br label %644

643:                                              ; preds = %632
  br label %644

644:                                              ; preds = %643, %636
  %645 = phi i32 [ %642, %636 ], [ -1, %643 ]
  store i32 %645, ptr %9, align 4
  %646 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 3
  %647 = load i64, ptr %646, align 8
  %648 = and i64 %647, 255
  %649 = trunc i64 %648 to i32
  %650 = icmp ne i32 %645, %649
  br i1 %650, label %732, label %651

651:                                              ; preds = %644
  %652 = load i32, ptr %10, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %651
  br label %658

655:                                              ; preds = %651
  %656 = load ptr, ptr %15, align 8
  %657 = call i32 @in(ptr noundef %656, ptr noundef %13)
  store i32 %657, ptr %10, align 4
  br label %658

658:                                              ; preds = %655, %654
  %659 = phi i32 [ 0, %654 ], [ %657, %655 ]
  %660 = load i32, ptr %10, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %658
  %663 = load i32, ptr %10, align 4
  %664 = add i32 %663, -1
  store i32 %664, ptr %10, align 4
  %665 = load ptr, ptr %13, align 8
  %666 = getelementptr inbounds i8, ptr %665, i32 1
  store ptr %666, ptr %13, align 8
  %667 = load i8, ptr %665, align 1
  %668 = zext i8 %667 to i32
  br label %670

669:                                              ; preds = %658
  br label %670

670:                                              ; preds = %669, %662
  %671 = phi i32 [ %668, %662 ], [ -1, %669 ]
  store i32 %671, ptr %9, align 4
  %672 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 3
  %673 = load i64, ptr %672, align 8
  %674 = lshr i64 %673, 8
  %675 = and i64 %674, 255
  %676 = trunc i64 %675 to i32
  %677 = icmp ne i32 %671, %676
  br i1 %677, label %732, label %678

678:                                              ; preds = %670
  %679 = load i32, ptr %10, align 4
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %682

681:                                              ; preds = %678
  br label %685

682:                                              ; preds = %678
  %683 = load ptr, ptr %15, align 8
  %684 = call i32 @in(ptr noundef %683, ptr noundef %13)
  store i32 %684, ptr %10, align 4
  br label %685

685:                                              ; preds = %682, %681
  %686 = phi i32 [ 0, %681 ], [ %684, %682 ]
  %687 = load i32, ptr %10, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %696

689:                                              ; preds = %685
  %690 = load i32, ptr %10, align 4
  %691 = add i32 %690, -1
  store i32 %691, ptr %10, align 4
  %692 = load ptr, ptr %13, align 8
  %693 = getelementptr inbounds i8, ptr %692, i32 1
  store ptr %693, ptr %13, align 8
  %694 = load i8, ptr %692, align 1
  %695 = zext i8 %694 to i32
  br label %697

696:                                              ; preds = %685
  br label %697

697:                                              ; preds = %696, %689
  %698 = phi i32 [ %695, %689 ], [ -1, %696 ]
  store i32 %698, ptr %9, align 4
  %699 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 3
  %700 = load i64, ptr %699, align 8
  %701 = lshr i64 %700, 16
  %702 = and i64 %701, 255
  %703 = trunc i64 %702 to i32
  %704 = icmp ne i32 %698, %703
  br i1 %704, label %732, label %705

705:                                              ; preds = %697
  %706 = load i32, ptr %10, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %705
  br label %712

709:                                              ; preds = %705
  %710 = load ptr, ptr %15, align 8
  %711 = call i32 @in(ptr noundef %710, ptr noundef %13)
  store i32 %711, ptr %10, align 4
  br label %712

712:                                              ; preds = %709, %708
  %713 = phi i32 [ 0, %708 ], [ %711, %709 ]
  %714 = load i32, ptr %10, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %723

716:                                              ; preds = %712
  %717 = load i32, ptr %10, align 4
  %718 = add i32 %717, -1
  store i32 %718, ptr %10, align 4
  %719 = load ptr, ptr %13, align 8
  %720 = getelementptr inbounds i8, ptr %719, i32 1
  store ptr %720, ptr %13, align 8
  %721 = load i8, ptr %719, align 1
  %722 = zext i8 %721 to i32
  br label %724

723:                                              ; preds = %712
  br label %724

724:                                              ; preds = %723, %716
  %725 = phi i32 [ %722, %716 ], [ -1, %723 ]
  store i32 %725, ptr %9, align 4
  %726 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 3
  %727 = load i64, ptr %726, align 8
  %728 = lshr i64 %727, 24
  %729 = and i64 %728, 255
  %730 = trunc i64 %729 to i32
  %731 = icmp ne i32 %725, %730
  br i1 %731, label %732, label %739

732:                                              ; preds = %724, %697, %670, %644
  %733 = load i32, ptr %9, align 4
  %734 = icmp ne i32 %733, -1
  br i1 %734, label %735, label %738

735:                                              ; preds = %732
  %736 = load ptr, ptr %4, align 8
  %737 = getelementptr inbounds %struct.z_stream_s, ptr %736, i32 0, i32 6
  store ptr @.str.27, ptr %737, align 8
  store i32 -3, ptr %7, align 4
  br label %738

738:                                              ; preds = %735, %732
  br label %740

739:                                              ; preds = %724
  br label %22

740:                                              ; preds = %738, %624, %502, %483, %358, %320, %267, %262, %116, %115, %83, %73, %44
  %741 = load i32, ptr %7, align 4
  ret i32 %741
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copymeta(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.utimbuf, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call i32 @stat(ptr noundef %7, ptr noundef %5) #9
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 61440
  %14 = icmp ne i32 %13, 32768
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %38

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4095
  %21 = call i32 @chmod(ptr noundef %17, i32 noundef %20) #9
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = call i32 @chown(ptr noundef %22, i32 noundef %24, i32 noundef %26) #9
  %28 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 11
  %29 = getelementptr inbounds %struct.timespec, ptr %28, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.utimbuf, ptr %6, i32 0, i32 0
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 12
  %33 = getelementptr inbounds %struct.timespec, ptr %32, i32 0, i32 0
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.utimbuf, ptr %6, i32 0, i32 1
  store i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = call i32 @utime(ptr noundef %36, ptr noundef %6) #9
  br label %38

38:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.ind, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %4, align 8
  store ptr %13, ptr %14, align 8
  store i32 0, ptr %6, align 4
  br label %15

15:                                               ; preds = %49, %2
  store i32 16384, ptr %5, align 4
  %16 = load i32, ptr %5, align 4
  %17 = load i32, ptr %6, align 4
  %18 = sub i32 32768, %17
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, ptr %6, align 4
  %22 = sub i32 32768, %21
  store i32 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.ind, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %5, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @read(i32 noundef %26, ptr noundef %27, i64 noundef %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, ptr %5, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, ptr %6, align 4
  br label %51

35:                                               ; preds = %23
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store ptr %39, ptr %7, align 8
  %40 = load i32, ptr %5, align 4
  %41 = load i32, ptr %6, align 4
  %42 = add i32 %41, %40
  store i32 %42, ptr %6, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, ptr %6, align 4
  %48 = icmp ult i32 %47, 32768
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %15, label %51, !llvm.loop !11

51:                                               ; preds = %49, %34
  %52 = load i32, ptr %6, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lunpipe(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.outd, align 8
  %28 = alloca ptr, align 8
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i32 %3, ptr %10, align 4
  store ptr %4, ptr %11, align 8
  %29 = load i32, ptr %10, align 4
  %30 = getelementptr inbounds %struct.outd, ptr %27, i32 0, i32 0
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.outd, ptr %27, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = load i32, ptr %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %38

35:                                               ; preds = %5
  %36 = load ptr, ptr %9, align 8
  %37 = call i32 @in(ptr noundef %36, ptr noundef %8)
  store i32 %37, ptr %7, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 0, %34 ], [ %37, %35 ]
  %40 = load i32, ptr %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, ptr %7, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %7, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %46, ptr %8, align 8
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i32
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi i32 [ %48, %42 ], [ -1, %49 ]
  store i32 %51, ptr %12, align 4
  store i32 %51, ptr %20, align 4
  %52 = load i32, ptr %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -5, ptr %6, align 4
  br label %472

55:                                               ; preds = %50
  %56 = load i32, ptr %20, align 4
  %57 = and i32 %56, 96
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load ptr, ptr %11, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 6
  store ptr @.str.28, ptr %61, align 8
  store i32 -3, ptr %6, align 4
  br label %472

62:                                               ; preds = %55
  %63 = load i32, ptr %20, align 4
  %64 = and i32 %63, 31
  store i32 %64, ptr %19, align 4
  %65 = load i32, ptr %19, align 4
  %66 = icmp slt i32 %65, 9
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, ptr %19, align 4
  %69 = icmp sgt i32 %68, 16
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %62
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %71, i32 0, i32 6
  store ptr @.str.29, ptr %72, align 8
  store i32 -3, ptr %6, align 4
  br label %472

73:                                               ; preds = %67
  %74 = load i32, ptr %19, align 4
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 10, ptr %19, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, ptr %20, align 4
  %79 = and i32 %78, 128
  store i32 %79, ptr %20, align 4
  store i32 9, ptr %16, align 4
  store i32 511, ptr %18, align 4
  %80 = load i32, ptr %20, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 256, i32 255
  store i32 %83, ptr %21, align 4
  %84 = load i32, ptr %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %90

87:                                               ; preds = %77
  %88 = load ptr, ptr %9, align 8
  %89 = call i32 @in(ptr noundef %88, ptr noundef %8)
  store i32 %89, ptr %7, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  %92 = load i32, ptr %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, ptr %7, align 4
  %96 = add i32 %95, -1
  store i32 %96, ptr %7, align 4
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %98, ptr %8, align 8
  %99 = load i8, ptr %97, align 1
  %100 = zext i8 %99 to i32
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %94
  %103 = phi i32 [ %100, %94 ], [ -1, %101 ]
  store i32 %103, ptr %12, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, ptr %6, align 4
  br label %472

106:                                              ; preds = %102
  %107 = load i32, ptr %12, align 4
  store i32 %107, ptr %23, align 4
  store i32 %107, ptr %24, align 4
  %108 = load i32, ptr %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %114

111:                                              ; preds = %106
  %112 = load ptr, ptr %9, align 8
  %113 = call i32 @in(ptr noundef %112, ptr noundef %8)
  store i32 %113, ptr %7, align 4
  br label %114

114:                                              ; preds = %111, %110
  %115 = phi i32 [ 0, %110 ], [ %113, %111 ]
  %116 = load i32, ptr %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, ptr %7, align 4
  %120 = add i32 %119, -1
  store i32 %120, ptr %7, align 4
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %122, ptr %8, align 8
  %123 = load i8, ptr %121, align 1
  %124 = zext i8 %123 to i32
  br label %126

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ %124, %118 ], [ -1, %125 ]
  store i32 %127, ptr %12, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 -5, ptr %6, align 4
  br label %472

130:                                              ; preds = %126
  %131 = load i32, ptr %12, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load ptr, ptr %11, align 8
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %135, i32 0, i32 6
  store ptr @.str.30, ptr %136, align 8
  store i32 -3, ptr %6, align 4
  br label %472

137:                                              ; preds = %130
  %138 = load i32, ptr %12, align 4
  %139 = lshr i32 %138, 1
  store i32 %139, ptr %15, align 4
  store i32 7, ptr %14, align 4
  %140 = load i32, ptr %16, align 4
  %141 = sub nsw i32 %140, 2
  store i32 %141, ptr %13, align 4
  %142 = load i32, ptr %24, align 4
  %143 = trunc i32 %142 to i8
  store i8 %143, ptr @outbuf, align 16
  store i32 1, ptr %26, align 4
  store i32 0, ptr %25, align 4
  br label %144

144:                                              ; preds = %471, %354, %137
  %145 = load i32, ptr %21, align 4
  %146 = load i32, ptr %18, align 4
  %147 = icmp uge i32 %145, %146
  br i1 %147, label %148, label %206

148:                                              ; preds = %144
  %149 = load i32, ptr %16, align 4
  %150 = load i32, ptr %19, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %206

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152
  store i32 0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  %154 = load i32, ptr %13, align 4
  %155 = load i32, ptr %7, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %153
  %158 = load i32, ptr %7, align 4
  %159 = load i32, ptr %13, align 4
  %160 = sub i32 %159, %158
  store i32 %160, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %161 = load i32, ptr %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %167

164:                                              ; preds = %157
  %165 = load ptr, ptr %9, align 8
  %166 = call i32 @in(ptr noundef %165, ptr noundef %8)
  store i32 %166, ptr %7, align 4
  br label %167

167:                                              ; preds = %164, %163
  %168 = phi i32 [ 0, %163 ], [ %166, %164 ]
  %169 = load i32, ptr %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load i32, ptr %7, align 4
  %173 = add i32 %172, -1
  store i32 %173, ptr %7, align 4
  %174 = load ptr, ptr %8, align 8
  %175 = getelementptr inbounds i8, ptr %174, i32 1
  store ptr %175, ptr %8, align 8
  %176 = load i8, ptr %174, align 1
  %177 = zext i8 %176 to i32
  br label %179

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %171
  %180 = phi i32 [ %177, %171 ], [ -1, %178 ]
  store i32 %180, ptr %12, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %199

183:                                              ; preds = %179
  %184 = load i32, ptr %13, align 4
  %185 = add i32 %184, -1
  store i32 %185, ptr %13, align 4
  %186 = load i32, ptr %13, align 4
  %187 = load i32, ptr %7, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 0, ptr %7, align 4
  store i32 0, ptr %13, align 4
  br label %199

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %153
  %192 = load i32, ptr %13, align 4
  %193 = load i32, ptr %7, align 4
  %194 = sub i32 %193, %192
  store i32 %194, ptr %7, align 4
  %195 = load i32, ptr %13, align 4
  %196 = load ptr, ptr %8, align 8
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds i8, ptr %196, i64 %197
  store ptr %198, ptr %8, align 8
  store i32 0, ptr %13, align 4
  br label %199

199:                                              ; preds = %191, %189, %182
  %200 = load i32, ptr %16, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %16, align 4
  %202 = load i32, ptr %18, align 4
  %203 = shl i32 %202, 1
  store i32 %203, ptr %18, align 4
  %204 = load i32, ptr %18, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %18, align 4
  br label %206

206:                                              ; preds = %199, %148, %144
  %207 = load i32, ptr %13, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, ptr %16, align 4
  store i32 %210, ptr %13, align 4
  br label %211

211:                                              ; preds = %209, %206
  %212 = load i32, ptr %15, align 4
  store i32 %212, ptr %17, align 4
  %213 = load i32, ptr %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %219

216:                                              ; preds = %211
  %217 = load ptr, ptr %9, align 8
  %218 = call i32 @in(ptr noundef %217, ptr noundef %8)
  store i32 %218, ptr %7, align 4
  br label %219

219:                                              ; preds = %216, %215
  %220 = phi i32 [ 0, %215 ], [ %218, %216 ]
  %221 = load i32, ptr %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i32, ptr %7, align 4
  %225 = add i32 %224, -1
  store i32 %225, ptr %7, align 4
  %226 = load ptr, ptr %8, align 8
  %227 = getelementptr inbounds i8, ptr %226, i32 1
  store ptr %227, ptr %8, align 8
  %228 = load i8, ptr %226, align 1
  %229 = zext i8 %228 to i32
  br label %231

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %223
  %232 = phi i32 [ %229, %223 ], [ -1, %230 ]
  store i32 %232, ptr %12, align 4
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i32, ptr %26, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, ptr %26, align 4
  %239 = call i32 @out(ptr noundef %27, ptr noundef @outbuf, i32 noundef %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load ptr, ptr %11, align 8
  %243 = getelementptr inbounds %struct.z_stream_s, ptr %242, i32 0, i32 0
  store ptr @outbuf, ptr %243, align 8
  store i32 -5, ptr %6, align 4
  br label %472

244:                                              ; preds = %237, %234
  store i32 0, ptr %6, align 4
  br label %472

245:                                              ; preds = %231
  %246 = load i32, ptr %12, align 4
  %247 = load i32, ptr %14, align 4
  %248 = shl i32 %246, %247
  %249 = load i32, ptr %17, align 4
  %250 = add i32 %249, %248
  store i32 %250, ptr %17, align 4
  %251 = load i32, ptr %14, align 4
  %252 = add nsw i32 %251, 8
  store i32 %252, ptr %14, align 4
  %253 = load i32, ptr %13, align 4
  %254 = add i32 %253, -1
  store i32 %254, ptr %13, align 4
  %255 = load i32, ptr %16, align 4
  %256 = load i32, ptr %14, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %291

258:                                              ; preds = %245
  %259 = load i32, ptr %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  br label %265

262:                                              ; preds = %258
  %263 = load ptr, ptr %9, align 8
  %264 = call i32 @in(ptr noundef %263, ptr noundef %8)
  store i32 %264, ptr %7, align 4
  br label %265

265:                                              ; preds = %262, %261
  %266 = phi i32 [ 0, %261 ], [ %264, %262 ]
  %267 = load i32, ptr %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = load i32, ptr %7, align 4
  %271 = add i32 %270, -1
  store i32 %271, ptr %7, align 4
  %272 = load ptr, ptr %8, align 8
  %273 = getelementptr inbounds i8, ptr %272, i32 1
  store ptr %273, ptr %8, align 8
  %274 = load i8, ptr %272, align 1
  %275 = zext i8 %274 to i32
  br label %277

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276, %269
  %278 = phi i32 [ %275, %269 ], [ -1, %276 ]
  store i32 %278, ptr %12, align 4
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 -5, ptr %6, align 4
  br label %472

281:                                              ; preds = %277
  %282 = load i32, ptr %12, align 4
  %283 = load i32, ptr %14, align 4
  %284 = shl i32 %282, %283
  %285 = load i32, ptr %17, align 4
  %286 = add i32 %285, %284
  store i32 %286, ptr %17, align 4
  %287 = load i32, ptr %14, align 4
  %288 = add nsw i32 %287, 8
  store i32 %288, ptr %14, align 4
  %289 = load i32, ptr %13, align 4
  %290 = add i32 %289, -1
  store i32 %290, ptr %13, align 4
  br label %291

291:                                              ; preds = %281, %245
  %292 = load i32, ptr %18, align 4
  %293 = load i32, ptr %17, align 4
  %294 = and i32 %293, %292
  store i32 %294, ptr %17, align 4
  %295 = load i32, ptr %16, align 4
  %296 = load i32, ptr %14, align 4
  %297 = sub nsw i32 %296, %295
  store i32 %297, ptr %14, align 4
  %298 = load i32, ptr %12, align 4
  %299 = load i32, ptr %14, align 4
  %300 = sub nsw i32 8, %299
  %301 = lshr i32 %298, %300
  store i32 %301, ptr %15, align 4
  %302 = load i32, ptr %17, align 4
  %303 = icmp eq i32 %302, 256
  br i1 %303, label %304, label %355

304:                                              ; preds = %291
  %305 = load i32, ptr %20, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %355

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %307
  store i32 0, ptr %14, align 4
  store i32 0, ptr %15, align 4
  %309 = load i32, ptr %13, align 4
  %310 = load i32, ptr %7, align 4
  %311 = icmp ugt i32 %309, %310
  br i1 %311, label %312, label %346

312:                                              ; preds = %308
  %313 = load i32, ptr %7, align 4
  %314 = load i32, ptr %13, align 4
  %315 = sub i32 %314, %313
  store i32 %315, ptr %13, align 4
  store i32 0, ptr %7, align 4
  %316 = load i32, ptr %7, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  br label %322

319:                                              ; preds = %312
  %320 = load ptr, ptr %9, align 8
  %321 = call i32 @in(ptr noundef %320, ptr noundef %8)
  store i32 %321, ptr %7, align 4
  br label %322

322:                                              ; preds = %319, %318
  %323 = phi i32 [ 0, %318 ], [ %321, %319 ]
  %324 = load i32, ptr %7, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load i32, ptr %7, align 4
  %328 = add i32 %327, -1
  store i32 %328, ptr %7, align 4
  %329 = load ptr, ptr %8, align 8
  %330 = getelementptr inbounds i8, ptr %329, i32 1
  store ptr %330, ptr %8, align 8
  %331 = load i8, ptr %329, align 1
  %332 = zext i8 %331 to i32
  br label %334

333:                                              ; preds = %322
  br label %334

334:                                              ; preds = %333, %326
  %335 = phi i32 [ %332, %326 ], [ -1, %333 ]
  store i32 %335, ptr %12, align 4
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  br label %354

338:                                              ; preds = %334
  %339 = load i32, ptr %13, align 4
  %340 = add i32 %339, -1
  store i32 %340, ptr %13, align 4
  %341 = load i32, ptr %13, align 4
  %342 = load i32, ptr %7, align 4
  %343 = icmp ugt i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %338
  store i32 0, ptr %7, align 4
  store i32 0, ptr %13, align 4
  br label %354

345:                                              ; preds = %338
  br label %346

346:                                              ; preds = %345, %308
  %347 = load i32, ptr %13, align 4
  %348 = load i32, ptr %7, align 4
  %349 = sub i32 %348, %347
  store i32 %349, ptr %7, align 4
  %350 = load i32, ptr %13, align 4
  %351 = load ptr, ptr %8, align 8
  %352 = zext i32 %350 to i64
  %353 = getelementptr inbounds i8, ptr %351, i64 %352
  store ptr %353, ptr %8, align 8
  store i32 0, ptr %13, align 4
  br label %354

354:                                              ; preds = %346, %344, %337
  store i32 9, ptr %16, align 4
  store i32 511, ptr %18, align 4
  store i32 255, ptr %21, align 4
  br label %144

355:                                              ; preds = %304, %291
  %356 = load i32, ptr %17, align 4
  store i32 %356, ptr %22, align 4
  %357 = load i32, ptr %17, align 4
  %358 = load i32, ptr %21, align 4
  %359 = icmp ugt i32 %357, %358
  br i1 %359, label %360, label %380

360:                                              ; preds = %355
  %361 = load i32, ptr %17, align 4
  %362 = load i32, ptr %21, align 4
  %363 = add i32 %362, 1
  %364 = icmp ne i32 %361, %363
  br i1 %364, label %369, label %365

365:                                              ; preds = %360
  %366 = load i32, ptr %23, align 4
  %367 = load i32, ptr %21, align 4
  %368 = icmp ugt i32 %366, %367
  br i1 %368, label %369, label %372

369:                                              ; preds = %365, %360
  %370 = load ptr, ptr %11, align 8
  %371 = getelementptr inbounds %struct.z_stream_s, ptr %370, i32 0, i32 6
  store ptr @.str.30, ptr %371, align 8
  store i32 -3, ptr %6, align 4
  br label %472

372:                                              ; preds = %365
  %373 = load i32, ptr %24, align 4
  %374 = trunc i32 %373 to i8
  %375 = load i32, ptr %25, align 4
  %376 = add i32 %375, 1
  store i32 %376, ptr %25, align 4
  %377 = zext i32 %375 to i64
  %378 = getelementptr inbounds [65282 x i8], ptr @match, i64 0, i64 %377
  store i8 %374, ptr %378, align 1
  %379 = load i32, ptr %23, align 4
  store i32 %379, ptr %17, align 4
  br label %380

380:                                              ; preds = %372, %355
  %381 = load i32, ptr %25, align 4
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i8, ptr @match, i64 %382
  store ptr %383, ptr %28, align 8
  br label %384

384:                                              ; preds = %387, %380
  %385 = load i32, ptr %17, align 4
  %386 = icmp uge i32 %385, 256
  br i1 %386, label %387, label %399

387:                                              ; preds = %384
  %388 = load i32, ptr %17, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [65536 x i8], ptr @suffix, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1
  %392 = load ptr, ptr %28, align 8
  %393 = getelementptr inbounds i8, ptr %392, i32 1
  store ptr %393, ptr %28, align 8
  store i8 %391, ptr %392, align 1
  %394 = load i32, ptr %17, align 4
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds [65536 x i16], ptr @prefix, i64 0, i64 %395
  %397 = load i16, ptr %396, align 2
  %398 = zext i16 %397 to i32
  store i32 %398, ptr %17, align 4
  br label %384, !llvm.loop !12

399:                                              ; preds = %384
  %400 = load ptr, ptr %28, align 8
  %401 = ptrtoint ptr %400 to i64
  %402 = sub i64 %401, ptrtoint (ptr @match to i64)
  %403 = trunc i64 %402 to i32
  store i32 %403, ptr %25, align 4
  %404 = load i32, ptr %17, align 4
  %405 = trunc i32 %404 to i8
  %406 = load i32, ptr %25, align 4
  %407 = add i32 %406, 1
  store i32 %407, ptr %25, align 4
  %408 = zext i32 %406 to i64
  %409 = getelementptr inbounds [65282 x i8], ptr @match, i64 0, i64 %408
  store i8 %405, ptr %409, align 1
  %410 = load i32, ptr %17, align 4
  store i32 %410, ptr %24, align 4
  %411 = load i32, ptr %21, align 4
  %412 = load i32, ptr %18, align 4
  %413 = icmp ult i32 %411, %412
  br i1 %413, label %414, label %427

414:                                              ; preds = %399
  %415 = load i32, ptr %21, align 4
  %416 = add i32 %415, 1
  store i32 %416, ptr %21, align 4
  %417 = load i32, ptr %23, align 4
  %418 = trunc i32 %417 to i16
  %419 = load i32, ptr %21, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [65536 x i16], ptr @prefix, i64 0, i64 %420
  store i16 %418, ptr %421, align 2
  %422 = load i32, ptr %24, align 4
  %423 = trunc i32 %422 to i8
  %424 = load i32, ptr %21, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds [65536 x i8], ptr @suffix, i64 0, i64 %425
  store i8 %423, ptr %426, align 1
  br label %427

427:                                              ; preds = %414, %399
  %428 = load i32, ptr %22, align 4
  store i32 %428, ptr %23, align 4
  br label %429

429:                                              ; preds = %455, %427
  %430 = load i32, ptr %25, align 4
  %431 = load i32, ptr %26, align 4
  %432 = sub i32 32768, %431
  %433 = icmp ugt i32 %430, %432
  br i1 %433, label %434, label %456

434:                                              ; preds = %429
  br label %435

435:                                              ; preds = %438, %434
  %436 = load i32, ptr %26, align 4
  %437 = icmp ult i32 %436, 32768
  br i1 %437, label %438, label %448

438:                                              ; preds = %435
  %439 = load i32, ptr %25, align 4
  %440 = add i32 %439, -1
  store i32 %440, ptr %25, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds [65282 x i8], ptr @match, i64 0, i64 %441
  %443 = load i8, ptr %442, align 1
  %444 = load i32, ptr %26, align 4
  %445 = add i32 %444, 1
  store i32 %445, ptr %26, align 4
  %446 = zext i32 %444 to i64
  %447 = getelementptr inbounds [32768 x i8], ptr @outbuf, i64 0, i64 %446
  store i8 %443, ptr %447, align 1
  br label %435, !llvm.loop !13

448:                                              ; preds = %435
  %449 = load i32, ptr %26, align 4
  %450 = call i32 @out(ptr noundef %27, ptr noundef @outbuf, i32 noundef %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %448
  %453 = load ptr, ptr %11, align 8
  %454 = getelementptr inbounds %struct.z_stream_s, ptr %453, i32 0, i32 0
  store ptr @outbuf, ptr %454, align 8
  store i32 -5, ptr %6, align 4
  br label %472

455:                                              ; preds = %448
  store i32 0, ptr %26, align 4
  br label %429, !llvm.loop !14

456:                                              ; preds = %429
  %457 = load i32, ptr %25, align 4
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr @match, i64 %458
  store ptr %459, ptr %28, align 8
  br label %460

460:                                              ; preds = %468, %456
  %461 = load ptr, ptr %28, align 8
  %462 = getelementptr inbounds i8, ptr %461, i32 -1
  store ptr %462, ptr %28, align 8
  %463 = load i8, ptr %462, align 1
  %464 = load i32, ptr %26, align 4
  %465 = add i32 %464, 1
  store i32 %465, ptr %26, align 4
  %466 = zext i32 %464 to i64
  %467 = getelementptr inbounds [32768 x i8], ptr @outbuf, i64 0, i64 %466
  store i8 %463, ptr %467, align 1
  br label %468

468:                                              ; preds = %460
  %469 = load ptr, ptr %28, align 8
  %470 = icmp ugt ptr %469, @match
  br i1 %470, label %460, label %471, !llvm.loop !15

471:                                              ; preds = %468
  store i32 0, ptr %25, align 4
  br label %144

472:                                              ; preds = %452, %369, %280, %244, %241, %134, %129, %105, %70, %59, %54
  %473 = load i32, ptr %6, align 4
  ret i32 %473
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @inflateBack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %9, align 8
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %struct.outd, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.outd, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %7, align 4
  %21 = call i64 @crc32(i64 noundef %18, ptr noundef %19, i32 noundef %20)
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.outd, ptr %22, i32 0, i32 2
  store i64 %21, ptr %23, align 8
  %24 = load i32, ptr %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds %struct.outd, ptr %26, i32 0, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, %25
  store i64 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %15, %3
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.outd, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %62, %35
  store i32 16384, ptr %8, align 4
  %37 = load i32, ptr %8, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4
  store i32 %41, ptr %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds %struct.outd, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @write(i32 noundef %45, ptr noundef %46, i64 noundef %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr %8, align 4
  %51 = load i32, ptr %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 1, ptr %4, align 4
  br label %67

54:                                               ; preds = %42
  %55 = load i32, ptr %8, align 4
  %56 = load ptr, ptr %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  store ptr %58, ptr %6, align 8
  %59 = load i32, ptr %8, align 4
  %60 = load i32, ptr %7, align 4
  %61 = sub i32 %60, %59
  store i32 %61, ptr %7, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, ptr %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %36, label %65, !llvm.loop !16

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %30
  store i32 0, ptr %4, align 4
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, ptr %4, align 4
  ret i32 %68
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @chmod(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i32 @chown(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
