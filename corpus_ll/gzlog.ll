; ModuleID = 'corpus_zlib/examples/gzlog.c'
source_filename = "corpus_zlib/examples/gzlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.log = type { [4 x i8], i32, ptr, ptr, i64, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"F\1Dz\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".add\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@log_gzhead = internal global [16 x i8] c"\1F\8B\08\04\00\00\00\00\00\FF'\00ap#\00", align 16
@log_gzext = internal global [35 x i8] c"4\00\00\00\00\00\00\004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05", align 16
@.str.5 = private unnamed_addr constant [6 x i8] c".dict\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@log_gzbody = internal global <{ i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 1, i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }>, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c".add file read failure\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"loaded .add file\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"missing .add file!\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c".repairs\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%.24s %s recovery: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @gzlog_open(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store ptr null, ptr %2, align 8
  br label %62

14:                                               ; preds = %8
  %15 = call noalias ptr @malloc(i64 noundef 88) #6
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr null, ptr %2, align 8
  br label %62

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.log, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %23 = call ptr @strcpy(ptr noundef %22, ptr noundef @.str) #7
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.log, ptr %24, i32 0, i32 1
  store i32 -1, ptr %25, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = call i64 @strlen(ptr noundef %26) #8
  store i64 %27, ptr %4, align 8
  %28 = load i64, ptr %4, align 8
  %29 = add i64 %28, 9
  %30 = call noalias ptr @malloc(i64 noundef %29) #6
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.log, ptr %31, i32 0, i32 2
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.log, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %38) #7
  store ptr null, ptr %2, align 8
  br label %62

39:                                               ; preds = %19
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.log, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = call ptr @strcpy(ptr noundef %42, ptr noundef %43) #7
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.log, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = load i64, ptr %4, align 8
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.log, ptr %50, i32 0, i32 3
  store ptr %49, ptr %51, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = call i32 @log_open(ptr noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.log, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  call void @free(ptr noundef %58) #7
  %59 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %59) #7
  store ptr null, ptr %2, align 8
  br label %62

60:                                               ; preds = %39
  %61 = load ptr, ptr %5, align 8
  store ptr %61, ptr %2, align 8
  br label %62

62:                                               ; preds = %60, %55, %37, %18, %13
  %63 = load ptr, ptr %2, align 8
  ret ptr %63
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_open(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.log, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.log, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @close(i32 noundef %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.log, ptr %15, i32 0, i32 1
  store i32 -1, ptr %16, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 @log_lock(ptr noundef %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, ptr %2, align 4
  br label %91

21:                                               ; preds = %14
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.log, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef @.str.4) #7
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.log, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 (ptr, i32, ...) @open(ptr noundef %28, i32 noundef 66, i32 noundef 420)
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.log, ptr %30, i32 0, i32 1
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.log, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load ptr, ptr %3, align 8
  call void @log_close(ptr noundef %37)
  store i32 -1, ptr %2, align 4
  br label %91

38:                                               ; preds = %21
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.log, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = call i64 @lseek(i32 noundef %41, i64 noundef 0, i32 noundef 2) #7
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.log, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i64 @write(i32 noundef %47, ptr noundef @log_gzhead, i64 noundef 16)
  %49 = icmp ne i64 %48, 16
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.log, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = call i64 @write(i32 noundef %53, ptr noundef @log_gzext, i64 noundef 35)
  %55 = icmp ne i64 %54, 35
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.log, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = call i64 @write(i32 noundef %59, ptr noundef @log_gzbody, i64 noundef 13)
  %61 = icmp ne i64 %60, 13
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50, %44
  %63 = load ptr, ptr %3, align 8
  call void @log_close(ptr noundef %63)
  store i32 -1, ptr %2, align 4
  br label %91

64:                                               ; preds = %56
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.log, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = call ptr @strcpy(ptr noundef %67, ptr noundef @.str.5) #7
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.log, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = call i32 @unlink(ptr noundef %71) #7
  br label %73

73:                                               ; preds = %64, %38
  %74 = load ptr, ptr %3, align 8
  %75 = call i32 @log_head(ptr noundef %74)
  store i32 %75, ptr %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 8
  call void @log_close(ptr noundef %78)
  store i32 -1, ptr %2, align 4
  br label %91

79:                                               ; preds = %73
  %80 = load i32, ptr %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load ptr, ptr %3, align 8
  %84 = load i32, ptr %4, align 4
  %85 = call i32 @log_recover(ptr noundef %83, i32 noundef %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load ptr, ptr %3, align 8
  call void @log_close(ptr noundef %88)
  store i32 -1, ptr %2, align 4
  br label %91

89:                                               ; preds = %82, %79
  %90 = load ptr, ptr %3, align 8
  call void @log_touch(ptr noundef %90)
  store i32 0, ptr %2, align 4
  br label %91

91:                                               ; preds = %89, %87, %77, %62, %36, %20
  %92 = load i32, ptr %2, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_compress(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  store ptr %12, ptr %11, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.log, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [4 x i8], ptr %17, i64 0, i64 0
  %19 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str) #8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 -3, ptr %2, align 4
  br label %216

22:                                               ; preds = %15
  %23 = load ptr, ptr %11, align 8
  %24 = call i32 @log_check(ptr noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load ptr, ptr %11, align 8
  %28 = call i32 @log_open(ptr noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, ptr %2, align 4
  br label %216

31:                                               ; preds = %26, %22
  %32 = load ptr, ptr %11, align 8
  %33 = getelementptr inbounds %struct.log, ptr %32, i32 0, i32 7
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds %struct.log, ptr %35, i32 0, i32 4
  %37 = load i64, ptr %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = and i64 %38, -1024
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds %struct.log, ptr %40, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = add i64 %39, %43
  store i64 %44, ptr %7, align 8
  %45 = load i64, ptr %7, align 8
  %46 = call noalias ptr @malloc(i64 noundef %45) #6
  store ptr %46, ptr %9, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  store i32 -2, ptr %2, align 4
  br label %216

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds %struct.log, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %11, align 8
  %55 = getelementptr inbounds %struct.log, ptr %54, i32 0, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i64 @lseek(i32 noundef %53, i64 noundef %57, i32 noundef 0) #7
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %214

61:                                               ; preds = %50
  store i64 0, ptr %8, align 8
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %7, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %62
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.log, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds [5 x i8], ptr %10, i64 0, i64 0
  %71 = call i64 @read(i32 noundef %69, ptr noundef %70, i64 noundef 5)
  %72 = icmp ne i64 %71, 5
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %112

74:                                               ; preds = %66
  %75 = getelementptr inbounds [5 x i8], ptr %10, i64 0, i64 0
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = getelementptr inbounds i8, ptr %76, i64 0
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds [5 x i8], ptr %10, i64 0, i64 0
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 8
  %86 = add i32 %79, %85
  store i32 %86, ptr %6, align 4
  %87 = load i64, ptr %8, align 8
  %88 = load i32, ptr %6, align 4
  %89 = zext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = load i64, ptr %7, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %106, label %93

93:                                               ; preds = %74
  %94 = load ptr, ptr %11, align 8
  %95 = getelementptr inbounds %struct.log, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %9, align 8
  %98 = load i64, ptr %8, align 8
  %99 = getelementptr inbounds i8, ptr %97, i64 %98
  %100 = load i32, ptr %6, align 4
  %101 = zext i32 %100 to i64
  %102 = call i64 @read(i32 noundef %96, ptr noundef %99, i64 noundef %101)
  %103 = load i32, ptr %6, align 4
  %104 = zext i32 %103 to i64
  %105 = icmp ne i64 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93, %74
  br label %112

107:                                              ; preds = %93
  %108 = load i32, ptr %6, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, ptr %8, align 8
  %111 = add i64 %110, %109
  store i64 %111, ptr %8, align 8
  br label %62, !llvm.loop !6

112:                                              ; preds = %106, %73, %62
  %113 = load ptr, ptr %11, align 8
  %114 = getelementptr inbounds %struct.log, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = call i64 @lseek(i32 noundef %115, i64 noundef 0, i32 noundef 1) #7
  %117 = load ptr, ptr %11, align 8
  %118 = getelementptr inbounds %struct.log, ptr %117, i32 0, i32 7
  %119 = load i64, ptr %118, align 8
  %120 = add nsw i64 %119, 4
  %121 = load ptr, ptr %11, align 8
  %122 = getelementptr inbounds %struct.log, ptr %121, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = icmp ne i64 %116, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  br label %214

128:                                              ; preds = %112
  %129 = load ptr, ptr %11, align 8
  call void @log_touch(ptr noundef %129)
  %130 = load ptr, ptr %11, align 8
  %131 = getelementptr inbounds %struct.log, ptr %130, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8
  %133 = call ptr @strcpy(ptr noundef %132, ptr noundef @.str.1) #7
  %134 = load ptr, ptr %11, align 8
  %135 = getelementptr inbounds %struct.log, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  %137 = call i32 (ptr, i32, ...) @open(ptr noundef %136, i32 noundef 577, i32 noundef 420)
  store i32 %137, ptr %4, align 4
  %138 = load i32, ptr %4, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %214

141:                                              ; preds = %128
  %142 = load i32, ptr %4, align 4
  %143 = load ptr, ptr %9, align 8
  %144 = load i64, ptr %7, align 8
  %145 = call i64 @write(i32 noundef %142, ptr noundef %143, i64 noundef %144)
  %146 = load i64, ptr %7, align 8
  %147 = icmp ne i64 %145, %146
  %148 = zext i1 %147 to i32
  store i32 %148, ptr %5, align 4
  %149 = load i32, ptr %5, align 4
  %150 = load i32, ptr %4, align 4
  %151 = call i32 @close(i32 noundef %150)
  %152 = or i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %214

155:                                              ; preds = %141
  %156 = load ptr, ptr %11, align 8
  call void @log_touch(ptr noundef %156)
  %157 = load ptr, ptr %11, align 8
  %158 = getelementptr inbounds %struct.log, ptr %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr @strcpy(ptr noundef %159, ptr noundef @.str.2) #7
  %161 = load ptr, ptr %11, align 8
  %162 = getelementptr inbounds %struct.log, ptr %161, i32 0, i32 2
  %163 = load ptr, ptr %162, align 8
  %164 = call i32 (ptr, i32, ...) @open(ptr noundef %163, i32 noundef 577, i32 noundef 420)
  store i32 %164, ptr %4, align 4
  %165 = load i32, ptr %4, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %214

168:                                              ; preds = %155
  %169 = load i64, ptr %7, align 8
  %170 = icmp ugt i64 32768, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i64, ptr %7, align 8
  br label %174

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i64 [ %172, %171 ], [ 32768, %173 ]
  store i64 %175, ptr %8, align 8
  %176 = load i32, ptr %4, align 4
  %177 = load ptr, ptr %9, align 8
  %178 = load i64, ptr %7, align 8
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = load i64, ptr %8, align 8
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds i8, ptr %179, i64 %181
  %183 = load i64, ptr %8, align 8
  %184 = call i64 @write(i32 noundef %176, ptr noundef %182, i64 noundef %183)
  %185 = load i64, ptr %8, align 8
  %186 = icmp ne i64 %184, %185
  %187 = zext i1 %186 to i32
  store i32 %187, ptr %5, align 4
  %188 = load i32, ptr %5, align 4
  %189 = load i32, ptr %4, align 4
  %190 = call i32 @close(i32 noundef %189)
  %191 = or i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %174
  br label %214

194:                                              ; preds = %174
  %195 = load ptr, ptr %11, align 8
  call void @log_touch(ptr noundef %195)
  %196 = load ptr, ptr %11, align 8
  %197 = getelementptr inbounds %struct.log, ptr %196, i32 0, i32 4
  %198 = load i64, ptr %197, align 8
  %199 = load ptr, ptr %11, align 8
  %200 = getelementptr inbounds %struct.log, ptr %199, i32 0, i32 7
  store i64 %198, ptr %200, align 8
  %201 = load ptr, ptr %11, align 8
  %202 = getelementptr inbounds %struct.log, ptr %201, i32 0, i32 6
  store i32 0, ptr %202, align 4
  %203 = load ptr, ptr %11, align 8
  %204 = call i32 @log_mark(ptr noundef %203, i32 noundef 2)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %194
  br label %214

207:                                              ; preds = %194
  %208 = load ptr, ptr %11, align 8
  %209 = load ptr, ptr %9, align 8
  %210 = load i64, ptr %7, align 8
  %211 = call i32 @log_compress(ptr noundef %208, ptr noundef %209, i64 noundef %210)
  store i32 %211, ptr %5, align 4
  %212 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %212) #7
  %213 = load i32, ptr %5, align 4
  store i32 %213, ptr %2, align 4
  br label %216

214:                                              ; preds = %206, %193, %167, %154, %140, %127, %60
  %215 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %215) #7
  store i32 -1, ptr %2, align 4
  br label %216

216:                                              ; preds = %214, %207, %48, %30, %21
  %217 = load i32, ptr %2, align 4
  ret i32 %217
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_check(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.log, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.6) #7
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.log, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @stat(ptr noundef %11, ptr noundef %4) #7
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stat, ptr %4, i32 0, i32 12
  %16 = getelementptr inbounds %struct.timespec, ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.log, ptr %18, i32 0, i32 12
  %20 = load i64, ptr %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %1
  store i32 1, ptr %2, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 8
  call void @log_touch(ptr noundef %24)
  store i32 0, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i32, ptr %2, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_touch(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.stat, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.log, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @strcpy(ptr noundef %6, ptr noundef @.str.6) #7
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.log, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @utimes(ptr noundef %10, ptr noundef null) #7
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.log, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @stat(ptr noundef %14, ptr noundef %3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 12
  %19 = getelementptr inbounds %struct.timespec, ptr %18, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.log, ptr %21, i32 0, i32 12
  store i64 %20, ptr %22, align 8
  br label %23

23:                                               ; preds = %17, %1
  ret void
}

declare i32 @open(ptr noundef, i32 noundef, ...) #4

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #4

declare i32 @close(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_mark(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [35 x i8], align 16
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  br label %7

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.log, ptr %10, i32 0, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  store i8 %13, ptr %14, align 16
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.log, ptr %15, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = ashr i64 %17, 8
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 1
  store i8 %19, ptr %20, align 1
  br label %21

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.log, ptr %23, i32 0, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = ashr i64 %25, 16
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %29 = getelementptr inbounds i8, ptr %28, i64 2
  %30 = getelementptr inbounds i8, ptr %29, i64 0
  store i8 %27, ptr %30, align 1
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.log, ptr %31, i32 0, i32 4
  %33 = load i64, ptr %32, align 8
  %34 = ashr i64 %33, 16
  %35 = ashr i64 %34, 8
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %38 = getelementptr inbounds i8, ptr %37, i64 2
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %36, ptr %39, align 1
  br label %40

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.log, ptr %44, i32 0, i32 4
  %46 = load i64, ptr %45, align 8
  %47 = ashr i64 %46, 32
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %50 = getelementptr inbounds i8, ptr %49, i64 4
  %51 = getelementptr inbounds i8, ptr %50, i64 0
  store i8 %48, ptr %51, align 1
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.log, ptr %52, i32 0, i32 4
  %54 = load i64, ptr %53, align 8
  %55 = ashr i64 %54, 32
  %56 = ashr i64 %55, 8
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %59 = getelementptr inbounds i8, ptr %58, i64 4
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %57, ptr %60, align 1
  br label %61

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.log, ptr %63, i32 0, i32 4
  %65 = load i64, ptr %64, align 8
  %66 = ashr i64 %65, 32
  %67 = ashr i64 %66, 16
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %70 = getelementptr inbounds i8, ptr %69, i64 4
  %71 = getelementptr inbounds i8, ptr %70, i64 2
  %72 = getelementptr inbounds i8, ptr %71, i64 0
  store i8 %68, ptr %72, align 1
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.log, ptr %73, i32 0, i32 4
  %75 = load i64, ptr %74, align 8
  %76 = ashr i64 %75, 32
  %77 = ashr i64 %76, 16
  %78 = ashr i64 %77, 8
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %81 = getelementptr inbounds i8, ptr %80, i64 4
  %82 = getelementptr inbounds i8, ptr %81, i64 2
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %79, ptr %83, align 1
  br label %84

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.log, ptr %90, i32 0, i32 7
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i8
  %94 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %95 = getelementptr inbounds i8, ptr %94, i64 8
  %96 = getelementptr inbounds i8, ptr %95, i64 0
  store i8 %93, ptr %96, align 1
  %97 = load ptr, ptr %3, align 8
  %98 = getelementptr inbounds %struct.log, ptr %97, i32 0, i32 7
  %99 = load i64, ptr %98, align 8
  %100 = ashr i64 %99, 8
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %103 = getelementptr inbounds i8, ptr %102, i64 8
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  store i8 %101, ptr %104, align 1
  br label %105

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct.log, ptr %107, i32 0, i32 7
  %109 = load i64, ptr %108, align 8
  %110 = ashr i64 %109, 16
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %113 = getelementptr inbounds i8, ptr %112, i64 8
  %114 = getelementptr inbounds i8, ptr %113, i64 2
  %115 = getelementptr inbounds i8, ptr %114, i64 0
  store i8 %111, ptr %115, align 1
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.log, ptr %116, i32 0, i32 7
  %118 = load i64, ptr %117, align 8
  %119 = ashr i64 %118, 16
  %120 = ashr i64 %119, 8
  %121 = trunc i64 %120 to i8
  %122 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %123 = getelementptr inbounds i8, ptr %122, i64 8
  %124 = getelementptr inbounds i8, ptr %123, i64 2
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  store i8 %121, ptr %125, align 1
  br label %126

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %3, align 8
  %131 = getelementptr inbounds %struct.log, ptr %130, i32 0, i32 7
  %132 = load i64, ptr %131, align 8
  %133 = ashr i64 %132, 32
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %136 = getelementptr inbounds i8, ptr %135, i64 8
  %137 = getelementptr inbounds i8, ptr %136, i64 4
  %138 = getelementptr inbounds i8, ptr %137, i64 0
  store i8 %134, ptr %138, align 1
  %139 = load ptr, ptr %3, align 8
  %140 = getelementptr inbounds %struct.log, ptr %139, i32 0, i32 7
  %141 = load i64, ptr %140, align 8
  %142 = ashr i64 %141, 32
  %143 = ashr i64 %142, 8
  %144 = trunc i64 %143 to i8
  %145 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %146 = getelementptr inbounds i8, ptr %145, i64 8
  %147 = getelementptr inbounds i8, ptr %146, i64 4
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  store i8 %144, ptr %148, align 1
  br label %149

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149
  %151 = load ptr, ptr %3, align 8
  %152 = getelementptr inbounds %struct.log, ptr %151, i32 0, i32 7
  %153 = load i64, ptr %152, align 8
  %154 = ashr i64 %153, 32
  %155 = ashr i64 %154, 16
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %158 = getelementptr inbounds i8, ptr %157, i64 8
  %159 = getelementptr inbounds i8, ptr %158, i64 4
  %160 = getelementptr inbounds i8, ptr %159, i64 2
  %161 = getelementptr inbounds i8, ptr %160, i64 0
  store i8 %156, ptr %161, align 1
  %162 = load ptr, ptr %3, align 8
  %163 = getelementptr inbounds %struct.log, ptr %162, i32 0, i32 7
  %164 = load i64, ptr %163, align 8
  %165 = ashr i64 %164, 32
  %166 = ashr i64 %165, 16
  %167 = ashr i64 %166, 8
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %170 = getelementptr inbounds i8, ptr %169, i64 8
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  %172 = getelementptr inbounds i8, ptr %171, i64 2
  %173 = getelementptr inbounds i8, ptr %172, i64 1
  store i8 %168, ptr %173, align 1
  br label %174

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  %179 = load ptr, ptr %3, align 8
  %180 = getelementptr inbounds %struct.log, ptr %179, i32 0, i32 8
  %181 = load i64, ptr %180, align 8
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %184 = getelementptr inbounds i8, ptr %183, i64 16
  %185 = getelementptr inbounds i8, ptr %184, i64 0
  store i8 %182, ptr %185, align 1
  %186 = load ptr, ptr %3, align 8
  %187 = getelementptr inbounds %struct.log, ptr %186, i32 0, i32 8
  %188 = load i64, ptr %187, align 8
  %189 = lshr i64 %188, 8
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %192 = getelementptr inbounds i8, ptr %191, i64 16
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  store i8 %190, ptr %193, align 1
  br label %194

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %3, align 8
  %197 = getelementptr inbounds %struct.log, ptr %196, i32 0, i32 8
  %198 = load i64, ptr %197, align 8
  %199 = lshr i64 %198, 16
  %200 = trunc i64 %199 to i8
  %201 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %202 = getelementptr inbounds i8, ptr %201, i64 16
  %203 = getelementptr inbounds i8, ptr %202, i64 2
  %204 = getelementptr inbounds i8, ptr %203, i64 0
  store i8 %200, ptr %204, align 1
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.log, ptr %205, i32 0, i32 8
  %207 = load i64, ptr %206, align 8
  %208 = lshr i64 %207, 16
  %209 = lshr i64 %208, 8
  %210 = trunc i64 %209 to i8
  %211 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %212 = getelementptr inbounds i8, ptr %211, i64 16
  %213 = getelementptr inbounds i8, ptr %212, i64 2
  %214 = getelementptr inbounds i8, ptr %213, i64 1
  store i8 %210, ptr %214, align 1
  br label %215

215:                                              ; preds = %195
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  %219 = load ptr, ptr %3, align 8
  %220 = getelementptr inbounds %struct.log, ptr %219, i32 0, i32 9
  %221 = load i64, ptr %220, align 8
  %222 = trunc i64 %221 to i8
  %223 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %224 = getelementptr inbounds i8, ptr %223, i64 20
  %225 = getelementptr inbounds i8, ptr %224, i64 0
  store i8 %222, ptr %225, align 1
  %226 = load ptr, ptr %3, align 8
  %227 = getelementptr inbounds %struct.log, ptr %226, i32 0, i32 9
  %228 = load i64, ptr %227, align 8
  %229 = lshr i64 %228, 8
  %230 = trunc i64 %229 to i8
  %231 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %232 = getelementptr inbounds i8, ptr %231, i64 20
  %233 = getelementptr inbounds i8, ptr %232, i64 1
  store i8 %230, ptr %233, align 1
  br label %234

234:                                              ; preds = %218
  br label %235

235:                                              ; preds = %234
  %236 = load ptr, ptr %3, align 8
  %237 = getelementptr inbounds %struct.log, ptr %236, i32 0, i32 9
  %238 = load i64, ptr %237, align 8
  %239 = lshr i64 %238, 16
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %242 = getelementptr inbounds i8, ptr %241, i64 20
  %243 = getelementptr inbounds i8, ptr %242, i64 2
  %244 = getelementptr inbounds i8, ptr %243, i64 0
  store i8 %240, ptr %244, align 1
  %245 = load ptr, ptr %3, align 8
  %246 = getelementptr inbounds %struct.log, ptr %245, i32 0, i32 9
  %247 = load i64, ptr %246, align 8
  %248 = lshr i64 %247, 16
  %249 = lshr i64 %248, 8
  %250 = trunc i64 %249 to i8
  %251 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %252 = getelementptr inbounds i8, ptr %251, i64 20
  %253 = getelementptr inbounds i8, ptr %252, i64 2
  %254 = getelementptr inbounds i8, ptr %253, i64 1
  store i8 %250, ptr %254, align 1
  br label %255

255:                                              ; preds = %235
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  %259 = load ptr, ptr %3, align 8
  %260 = getelementptr inbounds %struct.log, ptr %259, i32 0, i32 10
  %261 = load i64, ptr %260, align 8
  %262 = trunc i64 %261 to i8
  %263 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %264 = getelementptr inbounds i8, ptr %263, i64 24
  %265 = getelementptr inbounds i8, ptr %264, i64 0
  store i8 %262, ptr %265, align 1
  %266 = load ptr, ptr %3, align 8
  %267 = getelementptr inbounds %struct.log, ptr %266, i32 0, i32 10
  %268 = load i64, ptr %267, align 8
  %269 = lshr i64 %268, 8
  %270 = trunc i64 %269 to i8
  %271 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %272 = getelementptr inbounds i8, ptr %271, i64 24
  %273 = getelementptr inbounds i8, ptr %272, i64 1
  store i8 %270, ptr %273, align 1
  br label %274

274:                                              ; preds = %258
  br label %275

275:                                              ; preds = %274
  %276 = load ptr, ptr %3, align 8
  %277 = getelementptr inbounds %struct.log, ptr %276, i32 0, i32 10
  %278 = load i64, ptr %277, align 8
  %279 = lshr i64 %278, 16
  %280 = trunc i64 %279 to i8
  %281 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %282 = getelementptr inbounds i8, ptr %281, i64 24
  %283 = getelementptr inbounds i8, ptr %282, i64 2
  %284 = getelementptr inbounds i8, ptr %283, i64 0
  store i8 %280, ptr %284, align 1
  %285 = load ptr, ptr %3, align 8
  %286 = getelementptr inbounds %struct.log, ptr %285, i32 0, i32 10
  %287 = load i64, ptr %286, align 8
  %288 = lshr i64 %287, 16
  %289 = lshr i64 %288, 8
  %290 = trunc i64 %289 to i8
  %291 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %292 = getelementptr inbounds i8, ptr %291, i64 24
  %293 = getelementptr inbounds i8, ptr %292, i64 2
  %294 = getelementptr inbounds i8, ptr %293, i64 1
  store i8 %290, ptr %294, align 1
  br label %295

295:                                              ; preds = %275
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  %299 = load ptr, ptr %3, align 8
  %300 = getelementptr inbounds %struct.log, ptr %299, i32 0, i32 11
  %301 = load i64, ptr %300, align 8
  %302 = trunc i64 %301 to i8
  %303 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %304 = getelementptr inbounds i8, ptr %303, i64 28
  %305 = getelementptr inbounds i8, ptr %304, i64 0
  store i8 %302, ptr %305, align 1
  %306 = load ptr, ptr %3, align 8
  %307 = getelementptr inbounds %struct.log, ptr %306, i32 0, i32 11
  %308 = load i64, ptr %307, align 8
  %309 = lshr i64 %308, 8
  %310 = trunc i64 %309 to i8
  %311 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %312 = getelementptr inbounds i8, ptr %311, i64 28
  %313 = getelementptr inbounds i8, ptr %312, i64 1
  store i8 %310, ptr %313, align 1
  br label %314

314:                                              ; preds = %298
  br label %315

315:                                              ; preds = %314
  %316 = load ptr, ptr %3, align 8
  %317 = getelementptr inbounds %struct.log, ptr %316, i32 0, i32 11
  %318 = load i64, ptr %317, align 8
  %319 = lshr i64 %318, 16
  %320 = trunc i64 %319 to i8
  %321 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %322 = getelementptr inbounds i8, ptr %321, i64 28
  %323 = getelementptr inbounds i8, ptr %322, i64 2
  %324 = getelementptr inbounds i8, ptr %323, i64 0
  store i8 %320, ptr %324, align 1
  %325 = load ptr, ptr %3, align 8
  %326 = getelementptr inbounds %struct.log, ptr %325, i32 0, i32 11
  %327 = load i64, ptr %326, align 8
  %328 = lshr i64 %327, 16
  %329 = lshr i64 %328, 8
  %330 = trunc i64 %329 to i8
  %331 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %332 = getelementptr inbounds i8, ptr %331, i64 28
  %333 = getelementptr inbounds i8, ptr %332, i64 2
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store i8 %330, ptr %334, align 1
  br label %335

335:                                              ; preds = %315
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  %338 = load ptr, ptr %3, align 8
  %339 = getelementptr inbounds %struct.log, ptr %338, i32 0, i32 6
  %340 = load i32, ptr %339, align 4
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %343 = getelementptr inbounds i8, ptr %342, i64 32
  %344 = getelementptr inbounds i8, ptr %343, i64 0
  store i8 %341, ptr %344, align 1
  %345 = load ptr, ptr %3, align 8
  %346 = getelementptr inbounds %struct.log, ptr %345, i32 0, i32 6
  %347 = load i32, ptr %346, align 4
  %348 = lshr i32 %347, 8
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %351 = getelementptr inbounds i8, ptr %350, i64 32
  %352 = getelementptr inbounds i8, ptr %351, i64 1
  store i8 %349, ptr %352, align 1
  br label %353

353:                                              ; preds = %337
  %354 = load ptr, ptr %3, align 8
  %355 = getelementptr inbounds %struct.log, ptr %354, i32 0, i32 5
  %356 = load i32, ptr %355, align 8
  %357 = sub nsw i32 %356, 3
  %358 = load i32, ptr %4, align 4
  %359 = shl i32 %358, 3
  %360 = add nsw i32 %357, %359
  %361 = trunc i32 %360 to i8
  %362 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 34
  store i8 %361, ptr %362, align 2
  %363 = load ptr, ptr %3, align 8
  %364 = getelementptr inbounds %struct.log, ptr %363, i32 0, i32 1
  %365 = load i32, ptr %364, align 4
  %366 = call i32 @fsync(i32 noundef %365)
  %367 = load ptr, ptr %3, align 8
  %368 = getelementptr inbounds %struct.log, ptr %367, i32 0, i32 1
  %369 = load i32, ptr %368, align 4
  %370 = call i64 @lseek(i32 noundef %369, i64 noundef 16, i32 noundef 0) #7
  %371 = icmp slt i64 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %353
  %373 = load ptr, ptr %3, align 8
  %374 = getelementptr inbounds %struct.log, ptr %373, i32 0, i32 1
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr inbounds [35 x i8], ptr %6, i64 0, i64 0
  %377 = call i64 @write(i32 noundef %375, ptr noundef %376, i64 noundef 35)
  %378 = icmp ne i64 %377, 35
  br label %379

379:                                              ; preds = %372, %353
  %380 = phi i1 [ true, %353 ], [ %378, %372 ]
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i32 -1, i32 0
  store i32 %382, ptr %5, align 4
  %383 = load ptr, ptr %3, align 8
  %384 = getelementptr inbounds %struct.log, ptr %383, i32 0, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = call i32 @fsync(i32 noundef %385)
  %387 = load i32, ptr %5, align 4
  ret i32 %387
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.z_stream_s, align 8
  %14 = alloca [32768 x i8], align 16
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %15 = load i64, ptr %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %210

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 8
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 10
  store ptr null, ptr %20, align 8
  %21 = call i32 @deflateInit2_(ptr noundef %13, i32 noundef -1, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef @.str.21, i32 noundef 112)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -2, ptr %4, align 4
  br label %335

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.log, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str.5) #7
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.log, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 (ptr, i32, ...) @open(ptr noundef %31, i32 noundef 0, i32 noundef 0)
  store i32 %32, ptr %8, align 4
  %33 = load i32, ptr %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  %36 = load i32, ptr %8, align 4
  %37 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %38 = call i64 @read(i32 noundef %36, ptr noundef %37, i64 noundef 32768)
  store i64 %38, ptr %11, align 8
  %39 = load i32, ptr %8, align 4
  %40 = call i32 @close(i32 noundef %39)
  %41 = load i64, ptr %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @deflateEnd(ptr noundef %13)
  store i32 -1, ptr %4, align 4
  br label %335

45:                                               ; preds = %35
  %46 = load i64, ptr %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %50 = load i64, ptr %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @deflateSetDictionary(ptr noundef %13, ptr noundef %49, i32 noundef %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53, %24
  %55 = load ptr, ptr %5, align 8
  call void @log_touch(ptr noundef %55)
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.log, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.log, ptr %59, i32 0, i32 4
  %61 = load i64, ptr %60, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.log, ptr %62, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = icmp sgt i32 %64, 8
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 1
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %61, %68
  %70 = call i64 @lseek(i32 noundef %58, i64 noundef %69, i32 noundef 0) #7
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %54
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.log, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %77 = call i64 @read(i32 noundef %75, ptr noundef %76, i64 noundef 1)
  %78 = icmp ne i64 %77, 1
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.log, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = call i64 @lseek(i32 noundef %82, i64 noundef -1, i32 noundef 1) #7
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %72, %54
  %86 = call i32 @deflateEnd(ptr noundef %13)
  store i32 -1, ptr %4, align 4
  br label %335

87:                                               ; preds = %79
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds %struct.log, ptr %88, i32 0, i32 5
  %90 = load i32, ptr %89, align 8
  %91 = sub nsw i32 8, %90
  %92 = and i32 %91, 7
  %93 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %94 = load i8, ptr %93, align 16
  %95 = zext i8 %94 to i32
  %96 = call i32 @deflatePrime(ptr noundef %13, i32 noundef %92, i32 noundef %95)
  %97 = load ptr, ptr %6, align 8
  %98 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 0
  store ptr %97, ptr %98, align 8
  store i32 -2147483648, ptr %10, align 4
  br label %99

99:                                               ; preds = %151, %87
  %100 = load i64, ptr %7, align 8
  %101 = load i32, ptr %10, align 4
  %102 = zext i32 %101 to i64
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, ptr %10, align 4
  br label %109

106:                                              ; preds = %99
  %107 = load i64, ptr %7, align 8
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ]
  %111 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 1
  store i32 %110, ptr %111, align 8
  %112 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 1
  %113 = load i32, ptr %112, align 8
  %114 = zext i32 %113 to i64
  %115 = load i64, ptr %7, align 8
  %116 = sub i64 %115, %114
  store i64 %116, ptr %7, align 8
  br label %117

117:                                              ; preds = %146, %109
  %118 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 4
  store i32 32768, ptr %118, align 8
  %119 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 3
  store ptr %119, ptr %120, align 8
  %121 = load i64, ptr %7, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 1
  %125 = call i32 @deflate(ptr noundef %13, i32 noundef %124)
  %126 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 4
  %127 = load i32, ptr %126, align 8
  %128 = sub i32 32768, %127
  store i32 %128, ptr %9, align 4
  %129 = load i32, ptr %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %117
  %132 = load ptr, ptr %5, align 8
  %133 = getelementptr inbounds %struct.log, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %136 = load i32, ptr %9, align 4
  %137 = zext i32 %136 to i64
  %138 = call i64 @write(i32 noundef %134, ptr noundef %135, i64 noundef %137)
  %139 = load i32, ptr %9, align 4
  %140 = zext i32 %139 to i64
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = call i32 @deflateEnd(ptr noundef %13)
  store i32 -1, ptr %4, align 4
  br label %335

144:                                              ; preds = %131, %117
  %145 = load ptr, ptr %5, align 8
  call void @log_touch(ptr noundef %145)
  br label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 4
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %117, label %150, !llvm.loop !8

150:                                              ; preds = %146
  br label %151

151:                                              ; preds = %150
  %152 = load i64, ptr %7, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %99, label %154, !llvm.loop !9

154:                                              ; preds = %151
  %155 = call i32 @deflateEnd(ptr noundef %13)
  %156 = load ptr, ptr %5, align 8
  %157 = getelementptr inbounds %struct.log, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = call i64 @lseek(i32 noundef %158, i64 noundef -1, i32 noundef 1) #7
  %160 = load ptr, ptr %5, align 8
  %161 = getelementptr inbounds %struct.log, ptr %160, i32 0, i32 4
  store i64 %159, ptr %161, align 8
  %162 = icmp slt i64 %159, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %154
  %164 = load ptr, ptr %5, align 8
  %165 = getelementptr inbounds %struct.log, ptr %164, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %168 = call i64 @read(i32 noundef %166, ptr noundef %167, i64 noundef 1)
  %169 = icmp ne i64 %168, 1
  br i1 %169, label %170, label %171

170:                                              ; preds = %163, %154
  store i32 -1, ptr %4, align 4
  br label %335

171:                                              ; preds = %163
  %172 = load ptr, ptr %5, align 8
  %173 = getelementptr inbounds %struct.log, ptr %172, i32 0, i32 4
  %174 = load i64, ptr %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, ptr %173, align 8
  %176 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %177 = load i8, ptr %176, align 16
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %171
  %180 = load ptr, ptr %5, align 8
  %181 = getelementptr inbounds %struct.log, ptr %180, i32 0, i32 5
  store i32 1, ptr %181, align 8
  br label %182

182:                                              ; preds = %194, %179
  %183 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %184 = load i8, ptr %183, align 16
  %185 = zext i8 %184 to i32
  %186 = load ptr, ptr %5, align 8
  %187 = getelementptr inbounds %struct.log, ptr %186, i32 0, i32 5
  %188 = load i32, ptr %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %187, align 8
  %190 = sub nsw i32 8, %188
  %191 = shl i32 1, %190
  %192 = and i32 %185, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  br label %182, !llvm.loop !10

195:                                              ; preds = %182
  br label %199

196:                                              ; preds = %171
  %197 = load ptr, ptr %5, align 8
  %198 = getelementptr inbounds %struct.log, ptr %197, i32 0, i32 5
  store i32 10, ptr %198, align 8
  br label %199

199:                                              ; preds = %196, %195
  %200 = load ptr, ptr %5, align 8
  %201 = getelementptr inbounds %struct.log, ptr %200, i32 0, i32 10
  %202 = load i64, ptr %201, align 8
  %203 = load ptr, ptr %5, align 8
  %204 = getelementptr inbounds %struct.log, ptr %203, i32 0, i32 8
  store i64 %202, ptr %204, align 8
  %205 = load ptr, ptr %5, align 8
  %206 = getelementptr inbounds %struct.log, ptr %205, i32 0, i32 11
  %207 = load i64, ptr %206, align 8
  %208 = load ptr, ptr %5, align 8
  %209 = getelementptr inbounds %struct.log, ptr %208, i32 0, i32 9
  store i64 %207, ptr %209, align 8
  br label %221

210:                                              ; preds = %3
  %211 = load ptr, ptr %5, align 8
  %212 = getelementptr inbounds %struct.log, ptr %211, i32 0, i32 8
  %213 = load i64, ptr %212, align 8
  %214 = load ptr, ptr %5, align 8
  %215 = getelementptr inbounds %struct.log, ptr %214, i32 0, i32 10
  store i64 %213, ptr %215, align 8
  %216 = load ptr, ptr %5, align 8
  %217 = getelementptr inbounds %struct.log, ptr %216, i32 0, i32 9
  %218 = load i64, ptr %217, align 8
  %219 = load ptr, ptr %5, align 8
  %220 = getelementptr inbounds %struct.log, ptr %219, i32 0, i32 11
  store i64 %218, ptr %220, align 8
  br label %221

221:                                              ; preds = %210, %199
  %222 = load ptr, ptr %5, align 8
  %223 = getelementptr inbounds %struct.log, ptr %222, i32 0, i32 4
  %224 = load i64, ptr %223, align 8
  %225 = load ptr, ptr %5, align 8
  %226 = getelementptr inbounds %struct.log, ptr %225, i32 0, i32 7
  store i64 %224, ptr %226, align 8
  %227 = load ptr, ptr %5, align 8
  %228 = getelementptr inbounds %struct.log, ptr %227, i32 0, i32 6
  store i32 0, ptr %228, align 4
  br label %229

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %5, align 8
  %232 = getelementptr inbounds %struct.log, ptr %231, i32 0, i32 10
  %233 = load i64, ptr %232, align 8
  %234 = trunc i64 %233 to i8
  %235 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  store i8 %234, ptr %235, align 16
  %236 = load ptr, ptr %5, align 8
  %237 = getelementptr inbounds %struct.log, ptr %236, i32 0, i32 10
  %238 = load i64, ptr %237, align 8
  %239 = lshr i64 %238, 8
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 1
  store i8 %240, ptr %241, align 1
  br label %242

242:                                              ; preds = %230
  br label %243

243:                                              ; preds = %242
  %244 = load ptr, ptr %5, align 8
  %245 = getelementptr inbounds %struct.log, ptr %244, i32 0, i32 10
  %246 = load i64, ptr %245, align 8
  %247 = lshr i64 %246, 16
  %248 = trunc i64 %247 to i8
  %249 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %250 = getelementptr inbounds i8, ptr %249, i64 2
  %251 = getelementptr inbounds i8, ptr %250, i64 0
  store i8 %248, ptr %251, align 1
  %252 = load ptr, ptr %5, align 8
  %253 = getelementptr inbounds %struct.log, ptr %252, i32 0, i32 10
  %254 = load i64, ptr %253, align 8
  %255 = lshr i64 %254, 16
  %256 = lshr i64 %255, 8
  %257 = trunc i64 %256 to i8
  %258 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %259 = getelementptr inbounds i8, ptr %258, i64 2
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %257, ptr %260, align 1
  br label %261

261:                                              ; preds = %243
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  br label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr %5, align 8
  %266 = getelementptr inbounds %struct.log, ptr %265, i32 0, i32 11
  %267 = load i64, ptr %266, align 8
  %268 = trunc i64 %267 to i8
  %269 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %270 = getelementptr inbounds i8, ptr %269, i64 4
  %271 = getelementptr inbounds i8, ptr %270, i64 0
  store i8 %268, ptr %271, align 1
  %272 = load ptr, ptr %5, align 8
  %273 = getelementptr inbounds %struct.log, ptr %272, i32 0, i32 11
  %274 = load i64, ptr %273, align 8
  %275 = lshr i64 %274, 8
  %276 = trunc i64 %275 to i8
  %277 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %278 = getelementptr inbounds i8, ptr %277, i64 4
  %279 = getelementptr inbounds i8, ptr %278, i64 1
  store i8 %276, ptr %279, align 1
  br label %280

280:                                              ; preds = %264
  br label %281

281:                                              ; preds = %280
  %282 = load ptr, ptr %5, align 8
  %283 = getelementptr inbounds %struct.log, ptr %282, i32 0, i32 11
  %284 = load i64, ptr %283, align 8
  %285 = lshr i64 %284, 16
  %286 = trunc i64 %285 to i8
  %287 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %288 = getelementptr inbounds i8, ptr %287, i64 4
  %289 = getelementptr inbounds i8, ptr %288, i64 2
  %290 = getelementptr inbounds i8, ptr %289, i64 0
  store i8 %286, ptr %290, align 1
  %291 = load ptr, ptr %5, align 8
  %292 = getelementptr inbounds %struct.log, ptr %291, i32 0, i32 11
  %293 = load i64, ptr %292, align 8
  %294 = lshr i64 %293, 16
  %295 = lshr i64 %294, 8
  %296 = trunc i64 %295 to i8
  %297 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %298 = getelementptr inbounds i8, ptr %297, i64 4
  %299 = getelementptr inbounds i8, ptr %298, i64 2
  %300 = getelementptr inbounds i8, ptr %299, i64 1
  store i8 %296, ptr %300, align 1
  br label %301

301:                                              ; preds = %281
  br label %302

302:                                              ; preds = %301
  %303 = load ptr, ptr %5, align 8
  %304 = call i32 @log_last(ptr noundef %303, i32 noundef 1)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %326, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %5, align 8
  %308 = getelementptr inbounds %struct.log, ptr %307, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds [32768 x i8], ptr %14, i64 0, i64 0
  %311 = call i64 @write(i32 noundef %309, ptr noundef %310, i64 noundef 8)
  %312 = icmp ne i64 %311, 8
  br i1 %312, label %326, label %313

313:                                              ; preds = %306
  %314 = load ptr, ptr %5, align 8
  %315 = getelementptr inbounds %struct.log, ptr %314, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = call i64 @lseek(i32 noundef %316, i64 noundef 0, i32 noundef 1) #7
  store i64 %317, ptr %12, align 8
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %313
  %320 = load ptr, ptr %5, align 8
  %321 = getelementptr inbounds %struct.log, ptr %320, i32 0, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = load i64, ptr %12, align 8
  %324 = call i32 @ftruncate(i32 noundef %322, i64 noundef %323) #7
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %319, %313, %306, %302
  store i32 -1, ptr %4, align 4
  br label %335

327:                                              ; preds = %319
  %328 = load ptr, ptr %5, align 8
  %329 = call i32 @log_mark(ptr noundef %328, i32 noundef 3)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %327
  store i32 -1, ptr %4, align 4
  br label %335

332:                                              ; preds = %327
  %333 = load ptr, ptr %5, align 8
  %334 = call i32 @log_replace(ptr noundef %333)
  store i32 %334, ptr %4, align 4
  br label %335

335:                                              ; preds = %332, %331, %326, %170, %142, %85, %43, %23
  %336 = load i32, ptr %4, align 4
  ret i32 %336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %10, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr inbounds %struct.log, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds [4 x i8], ptr %16, i64 0, i64 0
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str) #8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  store i32 -3, ptr %4, align 4
  br label %96

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %7, align 8
  %26 = icmp ule i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 0, ptr %4, align 4
  br label %96

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8
  %30 = call i32 @log_check(ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 8
  %34 = call i32 @log_open(ptr noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, ptr %4, align 4
  br label %96

37:                                               ; preds = %32, %28
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.log, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = call ptr @strcpy(ptr noundef %40, ptr noundef @.str.1) #7
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds %struct.log, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = call i32 (ptr, i32, ...) @open(ptr noundef %44, i32 noundef 577, i32 noundef 420)
  store i32 %45, ptr %8, align 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 -1, ptr %4, align 4
  br label %96

49:                                               ; preds = %37
  %50 = load i32, ptr %8, align 4
  %51 = load ptr, ptr %6, align 8
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @write(i32 noundef %50, ptr noundef %51, i64 noundef %52)
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, ptr %9, align 4
  %57 = load i32, ptr %9, align 4
  %58 = load i32, ptr %8, align 4
  %59 = call i32 @close(i32 noundef %58)
  %60 = or i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 -1, ptr %4, align 4
  br label %96

63:                                               ; preds = %49
  %64 = load ptr, ptr %10, align 8
  call void @log_touch(ptr noundef %64)
  %65 = load ptr, ptr %10, align 8
  %66 = call i32 @log_mark(ptr noundef %65, i32 noundef 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, ptr %4, align 4
  br label %96

69:                                               ; preds = %63
  %70 = load ptr, ptr %10, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load i64, ptr %7, align 8
  %73 = call i32 @log_append(ptr noundef %70, ptr noundef %71, i64 noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 -1, ptr %4, align 4
  br label %96

76:                                               ; preds = %69
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds %struct.log, ptr %77, i32 0, i32 7
  %79 = load i64, ptr %78, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds %struct.log, ptr %80, i32 0, i32 4
  %82 = load i64, ptr %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = ashr i64 %83, 10
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds %struct.log, ptr %85, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 10
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = icmp slt i64 %90, 1024
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  store i32 0, ptr %4, align 4
  br label %96

93:                                               ; preds = %76
  %94 = load ptr, ptr %10, align 8
  %95 = call i32 @gzlog_compress(ptr noundef %94)
  store i32 %95, ptr %4, align 4
  br label %96

96:                                               ; preds = %93, %92, %75, %68, %62, %48, %36, %27, %20
  %97 = load i32, ptr %4, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_append(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i32 @log_last(ptr noundef %11, i32 noundef 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  br label %210

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %100, %15
  %17 = load i64, ptr %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.log, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 16384, %22
  store i32 %23, ptr %8, align 4
  %24 = load i32, ptr %8, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, ptr %7, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, ptr %7, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %8, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, ptr %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.log, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %8, align 4
  %40 = zext i32 %39 to i64
  %41 = call i64 @write(i32 noundef %37, ptr noundef %38, i64 noundef %40)
  %42 = load i32, ptr %8, align 4
  %43 = zext i32 %42 to i64
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, ptr %4, align 4
  br label %210

46:                                               ; preds = %34
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.log, ptr %47, i32 0, i32 10
  %49 = load i64, ptr %48, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = load i32, ptr %8, align 4
  %52 = call i64 @crc32(i64 noundef %49, ptr noundef %50, i32 noundef %51)
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.log, ptr %53, i32 0, i32 10
  store i64 %52, ptr %54, align 8
  %55 = load i32, ptr %8, align 4
  %56 = zext i32 %55 to i64
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.log, ptr %57, i32 0, i32 11
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %56
  store i64 %60, ptr %58, align 8
  %61 = load i32, ptr %8, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.log, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %61
  store i32 %65, ptr %63, align 4
  %66 = load i32, ptr %8, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  store ptr %69, ptr %6, align 8
  %70 = load i32, ptr %8, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, ptr %7, align 8
  %73 = sub i64 %72, %71
  store i64 %73, ptr %7, align 8
  br label %74

74:                                               ; preds = %46, %31
  %75 = load i64, ptr %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load ptr, ptr %5, align 8
  %79 = call i32 @log_last(ptr noundef %78, i32 noundef 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, ptr %4, align 4
  br label %210

82:                                               ; preds = %77
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds %struct.log, ptr %83, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = add i32 4, %85
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.log, ptr %89, i32 0, i32 7
  %91 = load i64, ptr %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, ptr %90, align 8
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.log, ptr %93, i32 0, i32 6
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %82, %74
  %96 = load ptr, ptr %5, align 8
  %97 = call i32 @log_last(ptr noundef %96, i32 noundef 1)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 -1, ptr %4, align 4
  br label %210

100:                                              ; preds = %95
  br label %16, !llvm.loop !11

101:                                              ; preds = %16
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr inbounds %struct.log, ptr %104, i32 0, i32 10
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  store i8 %107, ptr %108, align 1
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.log, ptr %109, i32 0, i32 10
  %111 = load i64, ptr %110, align 8
  %112 = lshr i64 %111, 8
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 1
  store i8 %113, ptr %114, align 1
  br label %115

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds %struct.log, ptr %117, i32 0, i32 10
  %119 = load i64, ptr %118, align 8
  %120 = lshr i64 %119, 16
  %121 = trunc i64 %120 to i8
  %122 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %123 = getelementptr inbounds i8, ptr %122, i64 2
  %124 = getelementptr inbounds i8, ptr %123, i64 0
  store i8 %121, ptr %124, align 1
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr inbounds %struct.log, ptr %125, i32 0, i32 10
  %127 = load i64, ptr %126, align 8
  %128 = lshr i64 %127, 16
  %129 = lshr i64 %128, 8
  %130 = trunc i64 %129 to i8
  %131 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %132 = getelementptr inbounds i8, ptr %131, i64 2
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  store i8 %130, ptr %133, align 1
  br label %134

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %5, align 8
  %139 = getelementptr inbounds %struct.log, ptr %138, i32 0, i32 11
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i8
  %142 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %143 = getelementptr inbounds i8, ptr %142, i64 4
  %144 = getelementptr inbounds i8, ptr %143, i64 0
  store i8 %141, ptr %144, align 1
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds %struct.log, ptr %145, i32 0, i32 11
  %147 = load i64, ptr %146, align 8
  %148 = lshr i64 %147, 8
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %151 = getelementptr inbounds i8, ptr %150, i64 4
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 %149, ptr %152, align 1
  br label %153

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %5, align 8
  %156 = getelementptr inbounds %struct.log, ptr %155, i32 0, i32 11
  %157 = load i64, ptr %156, align 8
  %158 = lshr i64 %157, 16
  %159 = trunc i64 %158 to i8
  %160 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %161 = getelementptr inbounds i8, ptr %160, i64 4
  %162 = getelementptr inbounds i8, ptr %161, i64 2
  %163 = getelementptr inbounds i8, ptr %162, i64 0
  store i8 %159, ptr %163, align 1
  %164 = load ptr, ptr %5, align 8
  %165 = getelementptr inbounds %struct.log, ptr %164, i32 0, i32 11
  %166 = load i64, ptr %165, align 8
  %167 = lshr i64 %166, 16
  %168 = lshr i64 %167, 8
  %169 = trunc i64 %168 to i8
  %170 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %171 = getelementptr inbounds i8, ptr %170, i64 4
  %172 = getelementptr inbounds i8, ptr %171, i64 2
  %173 = getelementptr inbounds i8, ptr %172, i64 1
  store i8 %169, ptr %173, align 1
  br label %174

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %5, align 8
  %177 = getelementptr inbounds %struct.log, ptr %176, i32 0, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 0
  %180 = call i64 @write(i32 noundef %178, ptr noundef %179, i64 noundef 8)
  %181 = icmp ne i64 %180, 8
  br i1 %181, label %195, label %182

182:                                              ; preds = %175
  %183 = load ptr, ptr %5, align 8
  %184 = getelementptr inbounds %struct.log, ptr %183, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = call i64 @lseek(i32 noundef %185, i64 noundef 0, i32 noundef 1) #7
  store i64 %186, ptr %9, align 8
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = load ptr, ptr %5, align 8
  %190 = getelementptr inbounds %struct.log, ptr %189, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = load i64, ptr %9, align 8
  %193 = call i32 @ftruncate(i32 noundef %191, i64 noundef %192) #7
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188, %182, %175
  store i32 -1, ptr %4, align 4
  br label %210

196:                                              ; preds = %188
  %197 = load ptr, ptr %5, align 8
  %198 = call i32 @log_mark(ptr noundef %197, i32 noundef 0)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 -1, ptr %4, align 4
  br label %210

201:                                              ; preds = %196
  %202 = load ptr, ptr %5, align 8
  %203 = getelementptr inbounds %struct.log, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 8
  %205 = call ptr @strcpy(ptr noundef %204, ptr noundef @.str.1) #7
  %206 = load ptr, ptr %5, align 8
  %207 = getelementptr inbounds %struct.log, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = call i32 @unlink(ptr noundef %208) #7
  store i32 0, ptr %4, align 4
  br label %210

210:                                              ; preds = %201, %200, %195, %99, %81, %45, %14
  %211 = load i32, ptr %4, align 4
  ret i32 %211
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_close(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.log, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0
  %12 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str) #8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  store i32 -3, ptr %2, align 4
  br label %31

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  call void @log_close(ptr noundef %16)
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.log, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.log, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  call void @free(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.log, ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 0
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef @.str.3) #7
  %30 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %30) #7
  store i32 0, ptr %2, align 4
  br label %31

31:                                               ; preds = %25, %14
  %32 = load i32, ptr %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_close(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.log, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.log, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @close(i32 noundef %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.log, ptr %13, i32 0, i32 1
  store i32 -1, ptr %14, align 4
  %15 = load ptr, ptr %2, align 8
  call void @log_unlock(ptr noundef %15)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_lock(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.log, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.6) #7
  br label %10

10:                                               ; preds = %39, %34, %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.log, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef 192, i32 noundef 420)
  store i32 %14, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = call ptr @__errno_location() #9
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 17
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, ptr %2, align 4
  br label %56

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.log, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @stat(ptr noundef %24, ptr noundef %5) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = call i64 @time(ptr noundef null) #7
  %29 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 12
  %30 = getelementptr inbounds %struct.timespec, ptr %29, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = icmp sgt i64 %32, 300
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.log, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @unlink(ptr noundef %37) #7
  br label %10, !llvm.loop !12

39:                                               ; preds = %27, %21
  %40 = call i32 @sleep(i32 noundef 2)
  br label %10, !llvm.loop !12

41:                                               ; preds = %10
  %42 = load i32, ptr %4, align 4
  %43 = call i32 @close(i32 noundef %42)
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.log, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @stat(ptr noundef %46, ptr noundef %5) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.stat, ptr %5, i32 0, i32 12
  %51 = getelementptr inbounds %struct.timespec, ptr %50, i32 0, i32 0
  %52 = load i64, ptr %51, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.log, ptr %53, i32 0, i32 12
  store i64 %52, ptr %54, align 8
  br label %55

55:                                               ; preds = %49, %41
  store i32 0, ptr %2, align 4
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, ptr %2, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_head(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [51 x i8], align 16
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.log, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = call i64 @lseek(i32 noundef %8, i64 noundef 0, i32 noundef 0) #7
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.log, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %16 = call i64 @read(i32 noundef %14, ptr noundef %15, i64 noundef 51)
  %17 = icmp ne i64 %16, 51
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %20 = call i32 @memcmp(ptr noundef %19, ptr noundef @log_gzhead, i64 noundef 16) #8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %11, %1
  store i32 -1, ptr %2, align 4
  br label %341

23:                                               ; preds = %18
  %24 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %25 = getelementptr inbounds i8, ptr %24, i64 16
  %26 = getelementptr inbounds i8, ptr %25, i64 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %30 = getelementptr inbounds i8, ptr %29, i64 16
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = add i32 %28, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %38 = getelementptr inbounds i8, ptr %37, i64 16
  %39 = getelementptr inbounds i8, ptr %38, i64 2
  %40 = getelementptr inbounds i8, ptr %39, i64 0
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %44 = getelementptr inbounds i8, ptr %43, i64 16
  %45 = getelementptr inbounds i8, ptr %44, i64 2
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = add i32 %42, %49
  %51 = zext i32 %50 to i64
  %52 = shl i64 %51, 16
  %53 = add i64 %36, %52
  %54 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %55 = getelementptr inbounds i8, ptr %54, i64 16
  %56 = getelementptr inbounds i8, ptr %55, i64 4
  %57 = getelementptr inbounds i8, ptr %56, i64 0
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %61 = getelementptr inbounds i8, ptr %60, i64 16
  %62 = getelementptr inbounds i8, ptr %61, i64 4
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = add i32 %59, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %70 = getelementptr inbounds i8, ptr %69, i64 16
  %71 = getelementptr inbounds i8, ptr %70, i64 4
  %72 = getelementptr inbounds i8, ptr %71, i64 2
  %73 = getelementptr inbounds i8, ptr %72, i64 0
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %77 = getelementptr inbounds i8, ptr %76, i64 16
  %78 = getelementptr inbounds i8, ptr %77, i64 4
  %79 = getelementptr inbounds i8, ptr %78, i64 2
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 8
  %84 = add i32 %75, %83
  %85 = zext i32 %84 to i64
  %86 = shl i64 %85, 16
  %87 = add i64 %68, %86
  %88 = shl i64 %87, 32
  %89 = add i64 %53, %88
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.log, ptr %90, i32 0, i32 4
  store i64 %89, ptr %91, align 8
  %92 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %93 = getelementptr inbounds i8, ptr %92, i64 16
  %94 = getelementptr inbounds i8, ptr %93, i64 8
  %95 = getelementptr inbounds i8, ptr %94, i64 0
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %99 = getelementptr inbounds i8, ptr %98, i64 16
  %100 = getelementptr inbounds i8, ptr %99, i64 8
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = add i32 %97, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %108 = getelementptr inbounds i8, ptr %107, i64 16
  %109 = getelementptr inbounds i8, ptr %108, i64 8
  %110 = getelementptr inbounds i8, ptr %109, i64 2
  %111 = getelementptr inbounds i8, ptr %110, i64 0
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %115 = getelementptr inbounds i8, ptr %114, i64 16
  %116 = getelementptr inbounds i8, ptr %115, i64 8
  %117 = getelementptr inbounds i8, ptr %116, i64 2
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 8
  %122 = add i32 %113, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %123, 16
  %125 = add i64 %106, %124
  %126 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %127 = getelementptr inbounds i8, ptr %126, i64 16
  %128 = getelementptr inbounds i8, ptr %127, i64 8
  %129 = getelementptr inbounds i8, ptr %128, i64 4
  %130 = getelementptr inbounds i8, ptr %129, i64 0
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %134 = getelementptr inbounds i8, ptr %133, i64 16
  %135 = getelementptr inbounds i8, ptr %134, i64 8
  %136 = getelementptr inbounds i8, ptr %135, i64 4
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, 8
  %141 = add i32 %132, %140
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %144 = getelementptr inbounds i8, ptr %143, i64 16
  %145 = getelementptr inbounds i8, ptr %144, i64 8
  %146 = getelementptr inbounds i8, ptr %145, i64 4
  %147 = getelementptr inbounds i8, ptr %146, i64 2
  %148 = getelementptr inbounds i8, ptr %147, i64 0
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %152 = getelementptr inbounds i8, ptr %151, i64 16
  %153 = getelementptr inbounds i8, ptr %152, i64 8
  %154 = getelementptr inbounds i8, ptr %153, i64 4
  %155 = getelementptr inbounds i8, ptr %154, i64 2
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl i32 %158, 8
  %160 = add i32 %150, %159
  %161 = zext i32 %160 to i64
  %162 = shl i64 %161, 16
  %163 = add i64 %142, %162
  %164 = shl i64 %163, 32
  %165 = add i64 %125, %164
  %166 = load ptr, ptr %3, align 8
  %167 = getelementptr inbounds %struct.log, ptr %166, i32 0, i32 7
  store i64 %165, ptr %167, align 8
  %168 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %169 = getelementptr inbounds i8, ptr %168, i64 16
  %170 = getelementptr inbounds i8, ptr %169, i64 16
  %171 = getelementptr inbounds i8, ptr %170, i64 0
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %175 = getelementptr inbounds i8, ptr %174, i64 16
  %176 = getelementptr inbounds i8, ptr %175, i64 16
  %177 = getelementptr inbounds i8, ptr %176, i64 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = shl i32 %179, 8
  %181 = add i32 %173, %180
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %184 = getelementptr inbounds i8, ptr %183, i64 16
  %185 = getelementptr inbounds i8, ptr %184, i64 16
  %186 = getelementptr inbounds i8, ptr %185, i64 2
  %187 = getelementptr inbounds i8, ptr %186, i64 0
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %191 = getelementptr inbounds i8, ptr %190, i64 16
  %192 = getelementptr inbounds i8, ptr %191, i64 16
  %193 = getelementptr inbounds i8, ptr %192, i64 2
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 8
  %198 = add i32 %189, %197
  %199 = zext i32 %198 to i64
  %200 = shl i64 %199, 16
  %201 = add i64 %182, %200
  %202 = load ptr, ptr %3, align 8
  %203 = getelementptr inbounds %struct.log, ptr %202, i32 0, i32 8
  store i64 %201, ptr %203, align 8
  %204 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %205 = getelementptr inbounds i8, ptr %204, i64 16
  %206 = getelementptr inbounds i8, ptr %205, i64 20
  %207 = getelementptr inbounds i8, ptr %206, i64 0
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  %210 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %211 = getelementptr inbounds i8, ptr %210, i64 16
  %212 = getelementptr inbounds i8, ptr %211, i64 20
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = shl i32 %215, 8
  %217 = add i32 %209, %216
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %220 = getelementptr inbounds i8, ptr %219, i64 16
  %221 = getelementptr inbounds i8, ptr %220, i64 20
  %222 = getelementptr inbounds i8, ptr %221, i64 2
  %223 = getelementptr inbounds i8, ptr %222, i64 0
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %227 = getelementptr inbounds i8, ptr %226, i64 16
  %228 = getelementptr inbounds i8, ptr %227, i64 20
  %229 = getelementptr inbounds i8, ptr %228, i64 2
  %230 = getelementptr inbounds i8, ptr %229, i64 1
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 8
  %234 = add i32 %225, %233
  %235 = zext i32 %234 to i64
  %236 = shl i64 %235, 16
  %237 = add i64 %218, %236
  %238 = load ptr, ptr %3, align 8
  %239 = getelementptr inbounds %struct.log, ptr %238, i32 0, i32 9
  store i64 %237, ptr %239, align 8
  %240 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %241 = getelementptr inbounds i8, ptr %240, i64 16
  %242 = getelementptr inbounds i8, ptr %241, i64 24
  %243 = getelementptr inbounds i8, ptr %242, i64 0
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %247 = getelementptr inbounds i8, ptr %246, i64 16
  %248 = getelementptr inbounds i8, ptr %247, i64 24
  %249 = getelementptr inbounds i8, ptr %248, i64 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl i32 %251, 8
  %253 = add i32 %245, %252
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %256 = getelementptr inbounds i8, ptr %255, i64 16
  %257 = getelementptr inbounds i8, ptr %256, i64 24
  %258 = getelementptr inbounds i8, ptr %257, i64 2
  %259 = getelementptr inbounds i8, ptr %258, i64 0
  %260 = load i8, ptr %259, align 1
  %261 = zext i8 %260 to i32
  %262 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %263 = getelementptr inbounds i8, ptr %262, i64 16
  %264 = getelementptr inbounds i8, ptr %263, i64 24
  %265 = getelementptr inbounds i8, ptr %264, i64 2
  %266 = getelementptr inbounds i8, ptr %265, i64 1
  %267 = load i8, ptr %266, align 1
  %268 = zext i8 %267 to i32
  %269 = shl i32 %268, 8
  %270 = add i32 %261, %269
  %271 = zext i32 %270 to i64
  %272 = shl i64 %271, 16
  %273 = add i64 %254, %272
  %274 = load ptr, ptr %3, align 8
  %275 = getelementptr inbounds %struct.log, ptr %274, i32 0, i32 10
  store i64 %273, ptr %275, align 8
  %276 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %277 = getelementptr inbounds i8, ptr %276, i64 16
  %278 = getelementptr inbounds i8, ptr %277, i64 28
  %279 = getelementptr inbounds i8, ptr %278, i64 0
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %283 = getelementptr inbounds i8, ptr %282, i64 16
  %284 = getelementptr inbounds i8, ptr %283, i64 28
  %285 = getelementptr inbounds i8, ptr %284, i64 1
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = shl i32 %287, 8
  %289 = add i32 %281, %288
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %292 = getelementptr inbounds i8, ptr %291, i64 16
  %293 = getelementptr inbounds i8, ptr %292, i64 28
  %294 = getelementptr inbounds i8, ptr %293, i64 2
  %295 = getelementptr inbounds i8, ptr %294, i64 0
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %299 = getelementptr inbounds i8, ptr %298, i64 16
  %300 = getelementptr inbounds i8, ptr %299, i64 28
  %301 = getelementptr inbounds i8, ptr %300, i64 2
  %302 = getelementptr inbounds i8, ptr %301, i64 1
  %303 = load i8, ptr %302, align 1
  %304 = zext i8 %303 to i32
  %305 = shl i32 %304, 8
  %306 = add i32 %297, %305
  %307 = zext i32 %306 to i64
  %308 = shl i64 %307, 16
  %309 = add i64 %290, %308
  %310 = load ptr, ptr %3, align 8
  %311 = getelementptr inbounds %struct.log, ptr %310, i32 0, i32 11
  store i64 %309, ptr %311, align 8
  %312 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %313 = getelementptr inbounds i8, ptr %312, i64 16
  %314 = getelementptr inbounds i8, ptr %313, i64 32
  %315 = getelementptr inbounds i8, ptr %314, i64 0
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i32
  %318 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 0
  %319 = getelementptr inbounds i8, ptr %318, i64 16
  %320 = getelementptr inbounds i8, ptr %319, i64 32
  %321 = getelementptr inbounds i8, ptr %320, i64 1
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i32
  %324 = shl i32 %323, 8
  %325 = add i32 %317, %324
  %326 = load ptr, ptr %3, align 8
  %327 = getelementptr inbounds %struct.log, ptr %326, i32 0, i32 6
  store i32 %325, ptr %327, align 4
  %328 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 50
  %329 = load i8, ptr %328, align 2
  %330 = zext i8 %329 to i32
  %331 = and i32 %330, 7
  %332 = add nsw i32 3, %331
  %333 = load ptr, ptr %3, align 8
  %334 = getelementptr inbounds %struct.log, ptr %333, i32 0, i32 5
  store i32 %332, ptr %334, align 8
  %335 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 50
  %336 = load i8, ptr %335, align 2
  %337 = zext i8 %336 to i32
  %338 = ashr i32 %337, 3
  %339 = and i32 %338, 3
  store i32 %339, ptr %4, align 4
  %340 = load i32, ptr %4, align 4
  store i32 %340, ptr %2, align 4
  br label %341

341:                                              ; preds = %23, %22
  %342 = load i32, ptr %2, align 4
  ret i32 %342
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_recover(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %7, align 4
  store ptr null, ptr %8, align 8
  store i64 0, ptr %9, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %11, i32 noundef %12, ptr noundef @.str.8)
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %80

18:                                               ; preds = %15, %2
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.log, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @strcpy(ptr noundef %21, ptr noundef @.str.1) #7
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.log, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @stat(ptr noundef %25, ptr noundef %10) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 8
  %30 = load i64, ptr %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 8
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %9, align 8
  %35 = load i64, ptr %9, align 8
  %36 = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 8
  %37 = load i64, ptr %36, align 8
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.stat, ptr %10, i32 0, i32 8
  %41 = load i64, ptr %40, align 8
  %42 = call noalias ptr @malloc(i64 noundef %41) #6
  store ptr %42, ptr %8, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %32
  %45 = load ptr, ptr %4, align 8
  %46 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %45, i32 noundef %46, ptr noundef @.str.9)
  store i32 -2, ptr %3, align 4
  br label %108

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.log, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 (ptr, i32, ...) @open(ptr noundef %50, i32 noundef 0, i32 noundef 0)
  store i32 %51, ptr %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %54) #7
  %55 = load ptr, ptr %4, align 8
  %56 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %55, i32 noundef %56, ptr noundef @.str.10)
  store i32 -1, ptr %3, align 4
  br label %108

57:                                               ; preds = %47
  %58 = load i32, ptr %6, align 4
  %59 = load ptr, ptr %8, align 8
  %60 = load i64, ptr %9, align 8
  %61 = call i64 @read(i32 noundef %58, ptr noundef %59, i64 noundef %60)
  %62 = load i64, ptr %9, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, ptr %7, align 4
  %65 = load i32, ptr %6, align 4
  %66 = call i32 @close(i32 noundef %65)
  %67 = load i32, ptr %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %70) #7
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %71, i32 noundef %72, ptr noundef @.str.10)
  store i32 -1, ptr %3, align 4
  br label %108

73:                                               ; preds = %57
  %74 = load ptr, ptr %4, align 8
  %75 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %74, i32 noundef %75, ptr noundef @.str.11)
  br label %79

76:                                               ; preds = %28, %18
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %5, align 4
  call void @log_log(ptr noundef %77, i32 noundef %78, ptr noundef @.str.12)
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %15
  %81 = load i32, ptr %5, align 4
  switch i32 %81, label %95 [
    i32 1, label %82
    i32 2, label %87
    i32 3, label %92
  ]

82:                                               ; preds = %80
  %83 = load ptr, ptr %4, align 8
  %84 = load ptr, ptr %8, align 8
  %85 = load i64, ptr %9, align 8
  %86 = call i32 @log_append(ptr noundef %83, ptr noundef %84, i64 noundef %85)
  store i32 %86, ptr %7, align 4
  br label %95

87:                                               ; preds = %80
  %88 = load ptr, ptr %4, align 8
  %89 = load ptr, ptr %8, align 8
  %90 = load i64, ptr %9, align 8
  %91 = call i32 @log_compress(ptr noundef %88, ptr noundef %89, i64 noundef %90)
  store i32 %91, ptr %7, align 4
  br label %95

92:                                               ; preds = %80
  %93 = load ptr, ptr %4, align 8
  %94 = call i32 @log_replace(ptr noundef %93)
  store i32 %94, ptr %7, align 4
  br label %95

95:                                               ; preds = %92, %80, %87, %82
  %96 = load ptr, ptr %4, align 8
  %97 = load i32, ptr %5, align 4
  %98 = load i32, ptr %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, ptr @.str.13, ptr @.str.14
  call void @log_log(ptr noundef %96, i32 noundef %97, ptr noundef %101)
  %102 = load ptr, ptr %8, align 8
  %103 = icmp ne ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %105) #7
  br label %106

106:                                              ; preds = %104, %95
  %107 = load i32, ptr %7, align 4
  store i32 %107, ptr %3, align 4
  br label %108

108:                                              ; preds = %106, %69, %53, %44
  %109 = load i32, ptr %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

declare i32 @sleep(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_log(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %9 = call i64 @time(ptr noundef null) #7
  store i64 %9, ptr %7, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.log, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.15) #7
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.log, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noalias ptr @fopen(ptr noundef %16, ptr noundef @.str.16)
  store ptr %17, ptr %8, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %38

21:                                               ; preds = %3
  %22 = load ptr, ptr %8, align 8
  %23 = call ptr @ctime(ptr noundef %7) #7
  %24 = load i32, ptr %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %32

27:                                               ; preds = %21
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, ptr @.str.19, ptr @.str.20
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi ptr [ @.str.18, %26 ], [ %31, %27 ]
  %34 = load ptr, ptr %6, align 8
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.17, ptr noundef %23, ptr noundef %33, ptr noundef %34)
  %36 = load ptr, ptr %8, align 8
  %37 = call i32 @fclose(ptr noundef %36)
  br label %38

38:                                               ; preds = %32, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_replace(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.log, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #7
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.log, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @unlink(ptr noundef %12) #7
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.log, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = call ptr @strcpy(ptr noundef %16, ptr noundef @.str.5) #7
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.log, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = call i64 @strlen(ptr noundef %20) #8
  %22 = add i64 %21, 1
  %23 = call noalias ptr @malloc(i64 noundef %22) #6
  store ptr %23, ptr %5, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.log, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @strcpy(ptr noundef %28, ptr noundef %31) #7
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.log, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.2) #7
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.log, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = call i32 @rename(ptr noundef %39, ptr noundef %40) #7
  store i32 %41, ptr %4, align 4
  %42 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %42) #7
  %43 = load i32, ptr %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = call ptr @__errno_location() #9
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, ptr %2, align 4
  br label %53

50:                                               ; preds = %45, %27
  %51 = load ptr, ptr %3, align 8
  %52 = call i32 @log_mark(ptr noundef %51, i32 noundef 0)
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %50, %49, %26
  %54 = load i32, ptr %2, align 4
  ret i32 %54
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) #2

declare i32 @fclose(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @rename(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @utimes(ptr noundef, ptr noundef) #2

declare i32 @fsync(i32 noundef) #4

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

declare i32 @deflateEnd(ptr noundef) #4

declare i32 @deflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @deflatePrime(ptr noundef, i32 noundef, i32 noundef) #4

declare i32 @deflate(ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_last(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.log, ptr %10, i32 0, i32 7
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.log, ptr %13, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.log, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 8, %21 ]
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp sgt i32 %24, 8
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  store i32 %27, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %29, 7
  %31 = ashr i32 128, %30
  store i32 %31, ptr %8, align 4
  %32 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  store i8 0, ptr %32, align 1
  %33 = load i32, ptr %6, align 4
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %55

35:                                               ; preds = %22
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.log, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.log, ptr %39, i32 0, i32 7
  %41 = load i64, ptr %40, align 8
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %41, %43
  %45 = call i64 @lseek(i32 noundef %38, i64 noundef %44, i32 noundef 0) #7
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %35
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.log, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %52 = call i64 @read(i32 noundef %50, ptr noundef %51, i64 noundef 1)
  %53 = icmp ne i64 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %35
  store i32 -1, ptr %3, align 4
  br label %155

55:                                               ; preds = %47, %22
  %56 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 1
  store i8 0, ptr %56, align 1
  %57 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, ptr %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = load i32, ptr %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, ptr %8, align 4
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = add nsw i32 %62, %69
  %71 = trunc i32 %70 to i8
  %72 = load i32, ptr %7, align 4
  %73 = sub nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 %74
  store i8 %71, ptr %75, align 1
  br label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.log, ptr %77, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %82 = getelementptr inbounds i8, ptr %81, i64 2
  %83 = getelementptr inbounds i8, ptr %82, i64 0
  store i8 %80, ptr %83, align 1
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.log, ptr %84, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 8
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %90 = getelementptr inbounds i8, ptr %89, i64 2
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 %88, ptr %91, align 1
  br label %92

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds %struct.log, ptr %94, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = xor i32 %96, 65535
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %100 = getelementptr inbounds i8, ptr %99, i64 4
  %101 = getelementptr inbounds i8, ptr %100, i64 0
  store i8 %98, ptr %101, align 1
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds %struct.log, ptr %102, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = xor i32 %104, 65535
  %106 = lshr i32 %105, 8
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %109 = getelementptr inbounds i8, ptr %108, i64 4
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 %107, ptr %110, align 1
  br label %111

111:                                              ; preds = %93
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct.log, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %4, align 8
  %116 = getelementptr inbounds %struct.log, ptr %115, i32 0, i32 7
  %117 = load i64, ptr %116, align 8
  %118 = load i32, ptr %7, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = call i64 @lseek(i32 noundef %114, i64 noundef %120, i32 noundef 0) #7
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %151, label %123

123:                                              ; preds = %111
  %124 = load ptr, ptr %4, align 8
  %125 = getelementptr inbounds %struct.log, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds [6 x i8], ptr %9, i64 0, i64 0
  %128 = getelementptr inbounds i8, ptr %127, i64 2
  %129 = load i32, ptr %7, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, ptr %128, i64 %131
  %133 = load i32, ptr %7, align 4
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = call i64 @write(i32 noundef %126, ptr noundef %132, i64 noundef %135)
  %137 = load i32, ptr %7, align 4
  %138 = add nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %123
  %142 = load ptr, ptr %4, align 8
  %143 = getelementptr inbounds %struct.log, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.log, ptr %145, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = zext i32 %147 to i64
  %149 = call i64 @lseek(i32 noundef %144, i64 noundef %148, i32 noundef 1) #7
  %150 = icmp slt i64 %149, 0
  br label %151

151:                                              ; preds = %141, %123, %111
  %152 = phi i1 [ true, %123 ], [ true, %111 ], [ %150, %141 ]
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 -1, i32 0
  store i32 %154, ptr %3, align 4
  br label %155

155:                                              ; preds = %151, %54
  %156 = load i32, ptr %3, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) #2

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_unlock(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @log_check(ptr noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.log, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @strcpy(ptr noundef %10, ptr noundef @.str.6) #7
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.log, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @unlink(ptr noundef %14) #7
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.log, ptr %16, i32 0, i32 12
  store i64 0, ptr %17, align 8
  br label %18

18:                                               ; preds = %7, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

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
