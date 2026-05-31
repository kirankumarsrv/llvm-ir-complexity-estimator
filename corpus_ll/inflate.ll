; ModuleID = 'corpus_zlib/inflate.c'
source_filename = "corpus_zlib/inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }
%struct.code = type { i8, i8, i16 }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@inflate.order = internal constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateResetKeep(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %65

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 8
  store i64 0, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 5
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 2
  store i64 0, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 6
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 11
  store i32 0, ptr %22, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %9
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 12
  store i64 %32, ptr %34, align 8
  br label %35

35:                                               ; preds = %27, %9
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.inflate_state, ptr %36, i32 0, i32 1
  store i32 16180, ptr %37, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 2
  store i32 0, ptr %39, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.inflate_state, ptr %40, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.inflate_state, ptr %42, i32 0, i32 5
  store i32 -1, ptr %43, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.inflate_state, ptr %44, i32 0, i32 6
  store i32 32768, ptr %45, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 9
  store ptr null, ptr %47, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 15
  store i64 0, ptr %49, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 16
  store i32 0, ptr %51, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.inflate_state, ptr %52, i32 0, i32 31
  %54 = getelementptr inbounds [1444 x %struct.code], ptr %53, i64 0, i64 0
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 28
  store ptr %54, ptr %56, align 8
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 21
  store ptr %54, ptr %58, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 20
  store ptr %54, ptr %60, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.inflate_state, ptr %61, i32 0, i32 32
  store i32 1, ptr %62, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 33
  store i32 -1, ptr %64, align 4
  store i32 0, ptr %2, align 4
  br label %65

65:                                               ; preds = %35, %8
  %66 = load i32, ptr %2, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inflateStateCheck(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %7, %1
  store i32 1, ptr %2, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %4, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.inflate_state, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = icmp ne ptr %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.inflate_state, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %33, 16180
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.inflate_state, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = icmp ugt i32 %38, 16211
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %24, %18
  store i32 1, ptr %2, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, ptr %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %17
  %43 = load i32, ptr %2, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateReset(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 11
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 12
  store i32 0, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 13
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = call i32 @inflateResetKeep(ptr noundef %19)
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %9, %8
  %22 = load i32, ptr %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateReset2(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @inflateStateCheck(ptr noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %77

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %7, align 8
  %16 = load i32, ptr %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, ptr %5, align 4
  %20 = icmp slt i32 %19, -15
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -2, ptr %3, align 4
  br label %77

22:                                               ; preds = %18
  store i32 0, ptr %6, align 4
  %23 = load i32, ptr %5, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, ptr %5, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load i32, ptr %5, align 4
  %27 = ashr i32 %26, 4
  %28 = add nsw i32 %27, 5
  store i32 %28, ptr %6, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %29, 48
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4
  %33 = and i32 %32, 15
  store i32 %33, ptr %5, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, ptr %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, ptr %5, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4
  %43 = icmp sgt i32 %42, 15
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 -2, ptr %3, align 4
  br label %77

45:                                               ; preds = %41, %35
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.inflate_state, ptr %46, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 10
  %53 = load i32, ptr %52, align 8
  %54 = load i32, ptr %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 10
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds %struct.inflate_state, ptr %63, i32 0, i32 14
  %65 = load ptr, ptr %64, align 8
  call void %59(ptr noundef %62, ptr noundef %65)
  %66 = load ptr, ptr %7, align 8
  %67 = getelementptr inbounds %struct.inflate_state, ptr %66, i32 0, i32 14
  store ptr null, ptr %67, align 8
  br label %68

68:                                               ; preds = %56, %50, %45
  %69 = load i32, ptr %6, align 4
  %70 = load ptr, ptr %7, align 8
  %71 = getelementptr inbounds %struct.inflate_state, ptr %70, i32 0, i32 3
  store i32 %69, ptr %71, align 8
  %72 = load i32, ptr %5, align 4
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds %struct.inflate_state, ptr %73, i32 0, i32 10
  store i32 %72, ptr %74, align 8
  %75 = load ptr, ptr %4, align 8
  %76 = call i32 @inflateReset(ptr noundef %75)
  store i32 %76, ptr %3, align 4
  br label %77

77:                                               ; preds = %68, %44, %21, %11
  %78 = load i32, ptr %3, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %12 = load ptr, ptr %8, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 0
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, ptr @.str, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %9, align 4
  %24 = icmp ne i32 %23, 112
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %14, %4
  store i32 -6, ptr %5, align 4
  br label %90

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -2, ptr %5, align 4
  br label %90

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 6
  store ptr null, ptr %32, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %38, i32 0, i32 8
  store ptr @zcalloc, ptr %39, align 8
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 10
  store ptr null, ptr %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, ptr %48, i32 0, i32 9
  store ptr @zcfree, ptr %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr %53(ptr noundef %56, i32 noundef 1, i32 noundef 7160)
  store ptr %57, ptr %11, align 8
  %58 = load ptr, ptr %11, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 -4, ptr %5, align 4
  br label %90

61:                                               ; preds = %50
  %62 = load ptr, ptr %11, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 7160, i1 false)
  %63 = load ptr, ptr %11, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 7
  store ptr %63, ptr %65, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.inflate_state, ptr %67, i32 0, i32 0
  store ptr %66, ptr %68, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds %struct.inflate_state, ptr %69, i32 0, i32 14
  store ptr null, ptr %70, align 8
  %71 = load ptr, ptr %11, align 8
  %72 = getelementptr inbounds %struct.inflate_state, ptr %71, i32 0, i32 1
  store i32 16180, ptr %72, align 8
  %73 = load ptr, ptr %6, align 8
  %74 = load i32, ptr %7, align 4
  %75 = call i32 @inflateReset2(ptr noundef %73, i32 noundef %74)
  store i32 %75, ptr %10, align 4
  %76 = load i32, ptr %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %61
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.z_stream_s, ptr %79, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr inbounds %struct.z_stream_s, ptr %82, i32 0, i32 10
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr %11, align 8
  call void %81(ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %6, align 8
  %87 = getelementptr inbounds %struct.z_stream_s, ptr %86, i32 0, i32 7
  store ptr null, ptr %87, align 8
  br label %88

88:                                               ; preds = %78, %61
  %89 = load i32, ptr %10, align 4
  store i32 %89, ptr %5, align 4
  br label %90

90:                                               ; preds = %88, %60, %29, %25
  %91 = load i32, ptr %5, align 4
  ret i32 %91
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateInit_(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @inflateInit2_(ptr noundef %7, i32 noundef 15, ptr noundef %8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflatePrime(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @inflateStateCheck(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, ptr %4, align 4
  br label %64

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, ptr %4, align 4
  br label %64

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %8, align 8
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 15
  store i64 0, ptr %25, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 16
  store i32 0, ptr %27, align 8
  store i32 0, ptr %4, align 4
  br label %64

28:                                               ; preds = %17
  %29 = load i32, ptr %6, align 4
  %30 = icmp sgt i32 %29, 16
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = load i32, ptr %6, align 4
  %36 = add i32 %34, %35
  %37 = icmp ugt i32 %36, 32
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %28
  store i32 -2, ptr %4, align 4
  br label %64

39:                                               ; preds = %31
  %40 = load i32, ptr %6, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = sub nsw i64 %42, 1
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, ptr %7, align 4
  %48 = load i32, ptr %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 16
  %52 = load i32, ptr %51, align 8
  %53 = zext i32 %52 to i64
  %54 = shl i64 %49, %53
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 15
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, ptr %56, align 8
  %59 = load i32, ptr %6, align 4
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.inflate_state, ptr %60, i32 0, i32 16
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, %59
  store i32 %63, ptr %61, align 8
  store i32 0, ptr %4, align 4
  br label %64

64:                                               ; preds = %39, %38, %23, %16, %12
  %65 = load i32, ptr %4, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca %struct.code, align 2
  %18 = alloca %struct.code, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x i8], align 1
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %22 = load ptr, ptr %4, align 8
  %23 = call i32 @inflateStateCheck(ptr noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %25, %2
  store i32 -2, ptr %3, align 4
  br label %3024

41:                                               ; preds = %35, %30
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.z_stream_s, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  store ptr %44, ptr %6, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 16191
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.inflate_state, ptr %50, i32 0, i32 1
  store i32 16192, ptr %51, align 8
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %8, align 8
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.z_stream_s, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 8
  store i32 %59, ptr %10, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %7, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 8
  store i32 %65, ptr %9, align 4
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.inflate_state, ptr %66, i32 0, i32 15
  %68 = load i64, ptr %67, align 8
  store i64 %68, ptr %11, align 8
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.inflate_state, ptr %69, i32 0, i32 16
  %71 = load i32, ptr %70, align 8
  store i32 %71, ptr %12, align 4
  br label %72

72:                                               ; preds = %53
  %73 = load i32, ptr %9, align 4
  store i32 %73, ptr %13, align 4
  %74 = load i32, ptr %10, align 4
  store i32 %74, ptr %14, align 4
  store i32 0, ptr %20, align 4
  br label %75

75:                                               ; preds = %2841, %72
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds %struct.inflate_state, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  switch i32 %78, label %2840 [
    i32 16180, label %79
    i32 16181, label %250
    i32 16182, label %350
    i32 16183, label %429
    i32 16184, label %509
    i32 16185, label %603
    i32 16186, label %727
    i32 16187, label %840
    i32 16188, label %951
    i32 16189, label %1031
    i32 16190, label %1081
    i32 16191, label %1115
    i32 16192, label %1123
    i32 16193, label %1215
    i32 16194, label %1278
    i32 16195, label %1281
    i32 16196, label %1330
    i32 16197, label %1412
    i32 16198, label %1525
    i32 16199, label %1931
    i32 16200, label %1934
    i32 16201, label %2187
    i32 16202, label %2262
    i32 16203, label %2432
    i32 16204, label %2502
    i32 16205, label %2626
    i32 16206, label %2641
    i32 16207, label %2776
    i32 16208, label %2836
    i32 16209, label %2837
    i32 16210, label %2838
    i32 16211, label %2839
  ]

79:                                               ; preds = %75
  %80 = load ptr, ptr %6, align 8
  %81 = getelementptr inbounds %struct.inflate_state, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 1
  store i32 16192, ptr %86, align 8
  br label %2841

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i32, ptr %12, align 4
  %91 = icmp ult i32 %90, 16
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %2842

97:                                               ; preds = %93
  %98 = load i32, ptr %9, align 4
  %99 = add i32 %98, -1
  store i32 %99, ptr %9, align 4
  %100 = load ptr, ptr %7, align 8
  %101 = getelementptr inbounds i8, ptr %100, i32 1
  store ptr %101, ptr %7, align 8
  %102 = load i8, ptr %100, align 1
  %103 = zext i8 %102 to i64
  %104 = load i32, ptr %12, align 4
  %105 = zext i32 %104 to i64
  %106 = shl i64 %103, %105
  %107 = load i64, ptr %11, align 8
  %108 = add i64 %107, %106
  store i64 %108, ptr %11, align 8
  %109 = load i32, ptr %12, align 4
  %110 = add i32 %109, 8
  store i32 %110, ptr %12, align 4
  br label %111

111:                                              ; preds = %97
  br label %89, !llvm.loop !6

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds %struct.inflate_state, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %113
  %120 = load i64, ptr %11, align 8
  %121 = icmp eq i64 %120, 35615
  br i1 %121, label %122, label %154

122:                                              ; preds = %119
  %123 = load ptr, ptr %6, align 8
  %124 = getelementptr inbounds %struct.inflate_state, ptr %123, i32 0, i32 10
  %125 = load i32, ptr %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds %struct.inflate_state, ptr %128, i32 0, i32 10
  store i32 15, ptr %129, align 8
  br label %130

130:                                              ; preds = %127, %122
  %131 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %132 = load ptr, ptr %6, align 8
  %133 = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 7
  store i64 %131, ptr %133, align 8
  br label %134

134:                                              ; preds = %130
  %135 = load i64, ptr %11, align 8
  %136 = trunc i64 %135 to i8
  %137 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  store i8 %136, ptr %137, align 1
  %138 = load i64, ptr %11, align 8
  %139 = lshr i64 %138, 8
  %140 = trunc i64 %139 to i8
  %141 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 1
  store i8 %140, ptr %141, align 1
  %142 = load ptr, ptr %6, align 8
  %143 = getelementptr inbounds %struct.inflate_state, ptr %142, i32 0, i32 7
  %144 = load i64, ptr %143, align 8
  %145 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %146 = call i64 @crc32(i64 noundef %144, ptr noundef %145, i32 noundef 2)
  %147 = load ptr, ptr %6, align 8
  %148 = getelementptr inbounds %struct.inflate_state, ptr %147, i32 0, i32 7
  store i64 %146, ptr %148, align 8
  br label %149

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %6, align 8
  %153 = getelementptr inbounds %struct.inflate_state, ptr %152, i32 0, i32 1
  store i32 16181, ptr %153, align 8
  br label %2841

154:                                              ; preds = %119, %113
  %155 = load ptr, ptr %6, align 8
  %156 = getelementptr inbounds %struct.inflate_state, ptr %155, i32 0, i32 9
  %157 = load ptr, ptr %156, align 8
  %158 = icmp ne ptr %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load ptr, ptr %6, align 8
  %161 = getelementptr inbounds %struct.inflate_state, ptr %160, i32 0, i32 9
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.gz_header_s, ptr %162, i32 0, i32 12
  store i32 -1, ptr %163, align 8
  br label %164

164:                                              ; preds = %159, %154
  %165 = load ptr, ptr %6, align 8
  %166 = getelementptr inbounds %struct.inflate_state, ptr %165, i32 0, i32 3
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load i64, ptr %11, align 8
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 255
  %174 = shl i32 %173, 8
  %175 = zext i32 %174 to i64
  %176 = load i64, ptr %11, align 8
  %177 = lshr i64 %176, 8
  %178 = add i64 %175, %177
  %179 = urem i64 %178, 31
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %170, %164
  %182 = load ptr, ptr %4, align 8
  %183 = getelementptr inbounds %struct.z_stream_s, ptr %182, i32 0, i32 6
  store ptr @.str.1, ptr %183, align 8
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds %struct.inflate_state, ptr %184, i32 0, i32 1
  store i32 16209, ptr %185, align 8
  br label %2841

186:                                              ; preds = %170
  %187 = load i64, ptr %11, align 8
  %188 = trunc i64 %187 to i32
  %189 = and i32 %188, 15
  %190 = icmp ne i32 %189, 8
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load ptr, ptr %4, align 8
  %193 = getelementptr inbounds %struct.z_stream_s, ptr %192, i32 0, i32 6
  store ptr @.str.2, ptr %193, align 8
  %194 = load ptr, ptr %6, align 8
  %195 = getelementptr inbounds %struct.inflate_state, ptr %194, i32 0, i32 1
  store i32 16209, ptr %195, align 8
  br label %2841

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %196
  %198 = load i64, ptr %11, align 8
  %199 = lshr i64 %198, 4
  store i64 %199, ptr %11, align 8
  %200 = load i32, ptr %12, align 4
  %201 = sub i32 %200, 4
  store i32 %201, ptr %12, align 4
  br label %202

202:                                              ; preds = %197
  %203 = load i64, ptr %11, align 8
  %204 = trunc i64 %203 to i32
  %205 = and i32 %204, 15
  %206 = add i32 %205, 8
  store i32 %206, ptr %19, align 4
  %207 = load ptr, ptr %6, align 8
  %208 = getelementptr inbounds %struct.inflate_state, ptr %207, i32 0, i32 10
  %209 = load i32, ptr %208, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %202
  %212 = load i32, ptr %19, align 4
  %213 = load ptr, ptr %6, align 8
  %214 = getelementptr inbounds %struct.inflate_state, ptr %213, i32 0, i32 10
  store i32 %212, ptr %214, align 8
  br label %215

215:                                              ; preds = %211, %202
  %216 = load i32, ptr %19, align 4
  %217 = icmp ugt i32 %216, 15
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %19, align 4
  %220 = load ptr, ptr %6, align 8
  %221 = getelementptr inbounds %struct.inflate_state, ptr %220, i32 0, i32 10
  %222 = load i32, ptr %221, align 8
  %223 = icmp ugt i32 %219, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %218, %215
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds %struct.z_stream_s, ptr %225, i32 0, i32 6
  store ptr @.str.3, ptr %226, align 8
  %227 = load ptr, ptr %6, align 8
  %228 = getelementptr inbounds %struct.inflate_state, ptr %227, i32 0, i32 1
  store i32 16209, ptr %228, align 8
  br label %2841

229:                                              ; preds = %218
  %230 = load i32, ptr %19, align 4
  %231 = shl i32 1, %230
  %232 = load ptr, ptr %6, align 8
  %233 = getelementptr inbounds %struct.inflate_state, ptr %232, i32 0, i32 6
  store i32 %231, ptr %233, align 4
  %234 = load ptr, ptr %6, align 8
  %235 = getelementptr inbounds %struct.inflate_state, ptr %234, i32 0, i32 5
  store i32 0, ptr %235, align 8
  %236 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %237 = load ptr, ptr %6, align 8
  %238 = getelementptr inbounds %struct.inflate_state, ptr %237, i32 0, i32 7
  store i64 %236, ptr %238, align 8
  %239 = load ptr, ptr %4, align 8
  %240 = getelementptr inbounds %struct.z_stream_s, ptr %239, i32 0, i32 12
  store i64 %236, ptr %240, align 8
  %241 = load i64, ptr %11, align 8
  %242 = and i64 %241, 512
  %243 = icmp ne i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 16189, i32 16191
  %246 = load ptr, ptr %6, align 8
  %247 = getelementptr inbounds %struct.inflate_state, ptr %246, i32 0, i32 1
  store i32 %245, ptr %247, align 8
  br label %248

248:                                              ; preds = %229
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %249

249:                                              ; preds = %248
  br label %2841

250:                                              ; preds = %75
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %274, %251
  %253 = load i32, ptr %12, align 4
  %254 = icmp ult i32 %253, 16
  br i1 %254, label %255, label %275

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %9, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  br label %2842

260:                                              ; preds = %256
  %261 = load i32, ptr %9, align 4
  %262 = add i32 %261, -1
  store i32 %262, ptr %9, align 4
  %263 = load ptr, ptr %7, align 8
  %264 = getelementptr inbounds i8, ptr %263, i32 1
  store ptr %264, ptr %7, align 8
  %265 = load i8, ptr %263, align 1
  %266 = zext i8 %265 to i64
  %267 = load i32, ptr %12, align 4
  %268 = zext i32 %267 to i64
  %269 = shl i64 %266, %268
  %270 = load i64, ptr %11, align 8
  %271 = add i64 %270, %269
  store i64 %271, ptr %11, align 8
  %272 = load i32, ptr %12, align 4
  %273 = add i32 %272, 8
  store i32 %273, ptr %12, align 4
  br label %274

274:                                              ; preds = %260
  br label %252, !llvm.loop !8

275:                                              ; preds = %252
  br label %276

276:                                              ; preds = %275
  %277 = load i64, ptr %11, align 8
  %278 = trunc i64 %277 to i32
  %279 = load ptr, ptr %6, align 8
  %280 = getelementptr inbounds %struct.inflate_state, ptr %279, i32 0, i32 5
  store i32 %278, ptr %280, align 8
  %281 = load ptr, ptr %6, align 8
  %282 = getelementptr inbounds %struct.inflate_state, ptr %281, i32 0, i32 5
  %283 = load i32, ptr %282, align 8
  %284 = and i32 %283, 255
  %285 = icmp ne i32 %284, 8
  br i1 %285, label %286, label %291

286:                                              ; preds = %276
  %287 = load ptr, ptr %4, align 8
  %288 = getelementptr inbounds %struct.z_stream_s, ptr %287, i32 0, i32 6
  store ptr @.str.2, ptr %288, align 8
  %289 = load ptr, ptr %6, align 8
  %290 = getelementptr inbounds %struct.inflate_state, ptr %289, i32 0, i32 1
  store i32 16209, ptr %290, align 8
  br label %2841

291:                                              ; preds = %276
  %292 = load ptr, ptr %6, align 8
  %293 = getelementptr inbounds %struct.inflate_state, ptr %292, i32 0, i32 5
  %294 = load i32, ptr %293, align 8
  %295 = and i32 %294, 57344
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %291
  %298 = load ptr, ptr %4, align 8
  %299 = getelementptr inbounds %struct.z_stream_s, ptr %298, i32 0, i32 6
  store ptr @.str.4, ptr %299, align 8
  %300 = load ptr, ptr %6, align 8
  %301 = getelementptr inbounds %struct.inflate_state, ptr %300, i32 0, i32 1
  store i32 16209, ptr %301, align 8
  br label %2841

302:                                              ; preds = %291
  %303 = load ptr, ptr %6, align 8
  %304 = getelementptr inbounds %struct.inflate_state, ptr %303, i32 0, i32 9
  %305 = load ptr, ptr %304, align 8
  %306 = icmp ne ptr %305, null
  br i1 %306, label %307, label %316

307:                                              ; preds = %302
  %308 = load i64, ptr %11, align 8
  %309 = lshr i64 %308, 8
  %310 = and i64 %309, 1
  %311 = trunc i64 %310 to i32
  %312 = load ptr, ptr %6, align 8
  %313 = getelementptr inbounds %struct.inflate_state, ptr %312, i32 0, i32 9
  %314 = load ptr, ptr %313, align 8
  %315 = getelementptr inbounds %struct.gz_header_s, ptr %314, i32 0, i32 0
  store i32 %311, ptr %315, align 8
  br label %316

316:                                              ; preds = %307, %302
  %317 = load ptr, ptr %6, align 8
  %318 = getelementptr inbounds %struct.inflate_state, ptr %317, i32 0, i32 5
  %319 = load i32, ptr %318, align 8
  %320 = and i32 %319, 512
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %345

322:                                              ; preds = %316
  %323 = load ptr, ptr %6, align 8
  %324 = getelementptr inbounds %struct.inflate_state, ptr %323, i32 0, i32 3
  %325 = load i32, ptr %324, align 8
  %326 = and i32 %325, 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %345

328:                                              ; preds = %322
  br label %329

329:                                              ; preds = %328
  %330 = load i64, ptr %11, align 8
  %331 = trunc i64 %330 to i8
  %332 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  store i8 %331, ptr %332, align 1
  %333 = load i64, ptr %11, align 8
  %334 = lshr i64 %333, 8
  %335 = trunc i64 %334 to i8
  %336 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 1
  store i8 %335, ptr %336, align 1
  %337 = load ptr, ptr %6, align 8
  %338 = getelementptr inbounds %struct.inflate_state, ptr %337, i32 0, i32 7
  %339 = load i64, ptr %338, align 8
  %340 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %341 = call i64 @crc32(i64 noundef %339, ptr noundef %340, i32 noundef 2)
  %342 = load ptr, ptr %6, align 8
  %343 = getelementptr inbounds %struct.inflate_state, ptr %342, i32 0, i32 7
  store i64 %341, ptr %343, align 8
  br label %344

344:                                              ; preds = %329
  br label %345

345:                                              ; preds = %344, %322, %316
  br label %346

346:                                              ; preds = %345
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %347

347:                                              ; preds = %346
  %348 = load ptr, ptr %6, align 8
  %349 = getelementptr inbounds %struct.inflate_state, ptr %348, i32 0, i32 1
  store i32 16182, ptr %349, align 8
  br label %350

350:                                              ; preds = %75, %347
  br label %351

351:                                              ; preds = %350
  br label %352

352:                                              ; preds = %374, %351
  %353 = load i32, ptr %12, align 4
  %354 = icmp ult i32 %353, 32
  br i1 %354, label %355, label %375

355:                                              ; preds = %352
  br label %356

356:                                              ; preds = %355
  %357 = load i32, ptr %9, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %2842

360:                                              ; preds = %356
  %361 = load i32, ptr %9, align 4
  %362 = add i32 %361, -1
  store i32 %362, ptr %9, align 4
  %363 = load ptr, ptr %7, align 8
  %364 = getelementptr inbounds i8, ptr %363, i32 1
  store ptr %364, ptr %7, align 8
  %365 = load i8, ptr %363, align 1
  %366 = zext i8 %365 to i64
  %367 = load i32, ptr %12, align 4
  %368 = zext i32 %367 to i64
  %369 = shl i64 %366, %368
  %370 = load i64, ptr %11, align 8
  %371 = add i64 %370, %369
  store i64 %371, ptr %11, align 8
  %372 = load i32, ptr %12, align 4
  %373 = add i32 %372, 8
  store i32 %373, ptr %12, align 4
  br label %374

374:                                              ; preds = %360
  br label %352, !llvm.loop !9

375:                                              ; preds = %352
  br label %376

376:                                              ; preds = %375
  %377 = load ptr, ptr %6, align 8
  %378 = getelementptr inbounds %struct.inflate_state, ptr %377, i32 0, i32 9
  %379 = load ptr, ptr %378, align 8
  %380 = icmp ne ptr %379, null
  br i1 %380, label %381, label %387

381:                                              ; preds = %376
  %382 = load i64, ptr %11, align 8
  %383 = load ptr, ptr %6, align 8
  %384 = getelementptr inbounds %struct.inflate_state, ptr %383, i32 0, i32 9
  %385 = load ptr, ptr %384, align 8
  %386 = getelementptr inbounds %struct.gz_header_s, ptr %385, i32 0, i32 1
  store i64 %382, ptr %386, align 8
  br label %387

387:                                              ; preds = %381, %376
  %388 = load ptr, ptr %6, align 8
  %389 = getelementptr inbounds %struct.inflate_state, ptr %388, i32 0, i32 5
  %390 = load i32, ptr %389, align 8
  %391 = and i32 %390, 512
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %424

393:                                              ; preds = %387
  %394 = load ptr, ptr %6, align 8
  %395 = getelementptr inbounds %struct.inflate_state, ptr %394, i32 0, i32 3
  %396 = load i32, ptr %395, align 8
  %397 = and i32 %396, 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %424

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %399
  %401 = load i64, ptr %11, align 8
  %402 = trunc i64 %401 to i8
  %403 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  store i8 %402, ptr %403, align 1
  %404 = load i64, ptr %11, align 8
  %405 = lshr i64 %404, 8
  %406 = trunc i64 %405 to i8
  %407 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 1
  store i8 %406, ptr %407, align 1
  %408 = load i64, ptr %11, align 8
  %409 = lshr i64 %408, 16
  %410 = trunc i64 %409 to i8
  %411 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 2
  store i8 %410, ptr %411, align 1
  %412 = load i64, ptr %11, align 8
  %413 = lshr i64 %412, 24
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 3
  store i8 %414, ptr %415, align 1
  %416 = load ptr, ptr %6, align 8
  %417 = getelementptr inbounds %struct.inflate_state, ptr %416, i32 0, i32 7
  %418 = load i64, ptr %417, align 8
  %419 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %420 = call i64 @crc32(i64 noundef %418, ptr noundef %419, i32 noundef 4)
  %421 = load ptr, ptr %6, align 8
  %422 = getelementptr inbounds %struct.inflate_state, ptr %421, i32 0, i32 7
  store i64 %420, ptr %422, align 8
  br label %423

423:                                              ; preds = %400
  br label %424

424:                                              ; preds = %423, %393, %387
  br label %425

425:                                              ; preds = %424
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %426

426:                                              ; preds = %425
  %427 = load ptr, ptr %6, align 8
  %428 = getelementptr inbounds %struct.inflate_state, ptr %427, i32 0, i32 1
  store i32 16183, ptr %428, align 8
  br label %429

429:                                              ; preds = %75, %426
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %453, %430
  %432 = load i32, ptr %12, align 4
  %433 = icmp ult i32 %432, 16
  br i1 %433, label %434, label %454

434:                                              ; preds = %431
  br label %435

435:                                              ; preds = %434
  %436 = load i32, ptr %9, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  br label %2842

439:                                              ; preds = %435
  %440 = load i32, ptr %9, align 4
  %441 = add i32 %440, -1
  store i32 %441, ptr %9, align 4
  %442 = load ptr, ptr %7, align 8
  %443 = getelementptr inbounds i8, ptr %442, i32 1
  store ptr %443, ptr %7, align 8
  %444 = load i8, ptr %442, align 1
  %445 = zext i8 %444 to i64
  %446 = load i32, ptr %12, align 4
  %447 = zext i32 %446 to i64
  %448 = shl i64 %445, %447
  %449 = load i64, ptr %11, align 8
  %450 = add i64 %449, %448
  store i64 %450, ptr %11, align 8
  %451 = load i32, ptr %12, align 4
  %452 = add i32 %451, 8
  store i32 %452, ptr %12, align 4
  br label %453

453:                                              ; preds = %439
  br label %431, !llvm.loop !10

454:                                              ; preds = %431
  br label %455

455:                                              ; preds = %454
  %456 = load ptr, ptr %6, align 8
  %457 = getelementptr inbounds %struct.inflate_state, ptr %456, i32 0, i32 9
  %458 = load ptr, ptr %457, align 8
  %459 = icmp ne ptr %458, null
  br i1 %459, label %460, label %475

460:                                              ; preds = %455
  %461 = load i64, ptr %11, align 8
  %462 = and i64 %461, 255
  %463 = trunc i64 %462 to i32
  %464 = load ptr, ptr %6, align 8
  %465 = getelementptr inbounds %struct.inflate_state, ptr %464, i32 0, i32 9
  %466 = load ptr, ptr %465, align 8
  %467 = getelementptr inbounds %struct.gz_header_s, ptr %466, i32 0, i32 2
  store i32 %463, ptr %467, align 8
  %468 = load i64, ptr %11, align 8
  %469 = lshr i64 %468, 8
  %470 = trunc i64 %469 to i32
  %471 = load ptr, ptr %6, align 8
  %472 = getelementptr inbounds %struct.inflate_state, ptr %471, i32 0, i32 9
  %473 = load ptr, ptr %472, align 8
  %474 = getelementptr inbounds %struct.gz_header_s, ptr %473, i32 0, i32 3
  store i32 %470, ptr %474, align 4
  br label %475

475:                                              ; preds = %460, %455
  %476 = load ptr, ptr %6, align 8
  %477 = getelementptr inbounds %struct.inflate_state, ptr %476, i32 0, i32 5
  %478 = load i32, ptr %477, align 8
  %479 = and i32 %478, 512
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %504

481:                                              ; preds = %475
  %482 = load ptr, ptr %6, align 8
  %483 = getelementptr inbounds %struct.inflate_state, ptr %482, i32 0, i32 3
  %484 = load i32, ptr %483, align 8
  %485 = and i32 %484, 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %504

487:                                              ; preds = %481
  br label %488

488:                                              ; preds = %487
  %489 = load i64, ptr %11, align 8
  %490 = trunc i64 %489 to i8
  %491 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  store i8 %490, ptr %491, align 1
  %492 = load i64, ptr %11, align 8
  %493 = lshr i64 %492, 8
  %494 = trunc i64 %493 to i8
  %495 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 1
  store i8 %494, ptr %495, align 1
  %496 = load ptr, ptr %6, align 8
  %497 = getelementptr inbounds %struct.inflate_state, ptr %496, i32 0, i32 7
  %498 = load i64, ptr %497, align 8
  %499 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %500 = call i64 @crc32(i64 noundef %498, ptr noundef %499, i32 noundef 2)
  %501 = load ptr, ptr %6, align 8
  %502 = getelementptr inbounds %struct.inflate_state, ptr %501, i32 0, i32 7
  store i64 %500, ptr %502, align 8
  br label %503

503:                                              ; preds = %488
  br label %504

504:                                              ; preds = %503, %481, %475
  br label %505

505:                                              ; preds = %504
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %506

506:                                              ; preds = %505
  %507 = load ptr, ptr %6, align 8
  %508 = getelementptr inbounds %struct.inflate_state, ptr %507, i32 0, i32 1
  store i32 16184, ptr %508, align 8
  br label %509

509:                                              ; preds = %75, %506
  %510 = load ptr, ptr %6, align 8
  %511 = getelementptr inbounds %struct.inflate_state, ptr %510, i32 0, i32 5
  %512 = load i32, ptr %511, align 8
  %513 = and i32 %512, 1024
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %589

515:                                              ; preds = %509
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %539, %516
  %518 = load i32, ptr %12, align 4
  %519 = icmp ult i32 %518, 16
  br i1 %519, label %520, label %540

520:                                              ; preds = %517
  br label %521

521:                                              ; preds = %520
  %522 = load i32, ptr %9, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %525

524:                                              ; preds = %521
  br label %2842

525:                                              ; preds = %521
  %526 = load i32, ptr %9, align 4
  %527 = add i32 %526, -1
  store i32 %527, ptr %9, align 4
  %528 = load ptr, ptr %7, align 8
  %529 = getelementptr inbounds i8, ptr %528, i32 1
  store ptr %529, ptr %7, align 8
  %530 = load i8, ptr %528, align 1
  %531 = zext i8 %530 to i64
  %532 = load i32, ptr %12, align 4
  %533 = zext i32 %532 to i64
  %534 = shl i64 %531, %533
  %535 = load i64, ptr %11, align 8
  %536 = add i64 %535, %534
  store i64 %536, ptr %11, align 8
  %537 = load i32, ptr %12, align 4
  %538 = add i32 %537, 8
  store i32 %538, ptr %12, align 4
  br label %539

539:                                              ; preds = %525
  br label %517, !llvm.loop !11

540:                                              ; preds = %517
  br label %541

541:                                              ; preds = %540
  %542 = load i64, ptr %11, align 8
  %543 = trunc i64 %542 to i32
  %544 = load ptr, ptr %6, align 8
  %545 = getelementptr inbounds %struct.inflate_state, ptr %544, i32 0, i32 17
  store i32 %543, ptr %545, align 4
  %546 = load ptr, ptr %6, align 8
  %547 = getelementptr inbounds %struct.inflate_state, ptr %546, i32 0, i32 9
  %548 = load ptr, ptr %547, align 8
  %549 = icmp ne ptr %548, null
  br i1 %549, label %550, label %557

550:                                              ; preds = %541
  %551 = load i64, ptr %11, align 8
  %552 = trunc i64 %551 to i32
  %553 = load ptr, ptr %6, align 8
  %554 = getelementptr inbounds %struct.inflate_state, ptr %553, i32 0, i32 9
  %555 = load ptr, ptr %554, align 8
  %556 = getelementptr inbounds %struct.gz_header_s, ptr %555, i32 0, i32 5
  store i32 %552, ptr %556, align 8
  br label %557

557:                                              ; preds = %550, %541
  %558 = load ptr, ptr %6, align 8
  %559 = getelementptr inbounds %struct.inflate_state, ptr %558, i32 0, i32 5
  %560 = load i32, ptr %559, align 8
  %561 = and i32 %560, 512
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %586

563:                                              ; preds = %557
  %564 = load ptr, ptr %6, align 8
  %565 = getelementptr inbounds %struct.inflate_state, ptr %564, i32 0, i32 3
  %566 = load i32, ptr %565, align 8
  %567 = and i32 %566, 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %586

569:                                              ; preds = %563
  br label %570

570:                                              ; preds = %569
  %571 = load i64, ptr %11, align 8
  %572 = trunc i64 %571 to i8
  %573 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  store i8 %572, ptr %573, align 1
  %574 = load i64, ptr %11, align 8
  %575 = lshr i64 %574, 8
  %576 = trunc i64 %575 to i8
  %577 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 1
  store i8 %576, ptr %577, align 1
  %578 = load ptr, ptr %6, align 8
  %579 = getelementptr inbounds %struct.inflate_state, ptr %578, i32 0, i32 7
  %580 = load i64, ptr %579, align 8
  %581 = getelementptr inbounds [4 x i8], ptr %21, i64 0, i64 0
  %582 = call i64 @crc32(i64 noundef %580, ptr noundef %581, i32 noundef 2)
  %583 = load ptr, ptr %6, align 8
  %584 = getelementptr inbounds %struct.inflate_state, ptr %583, i32 0, i32 7
  store i64 %582, ptr %584, align 8
  br label %585

585:                                              ; preds = %570
  br label %586

586:                                              ; preds = %585, %563, %557
  br label %587

587:                                              ; preds = %586
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %588

588:                                              ; preds = %587
  br label %600

589:                                              ; preds = %509
  %590 = load ptr, ptr %6, align 8
  %591 = getelementptr inbounds %struct.inflate_state, ptr %590, i32 0, i32 9
  %592 = load ptr, ptr %591, align 8
  %593 = icmp ne ptr %592, null
  br i1 %593, label %594, label %599

594:                                              ; preds = %589
  %595 = load ptr, ptr %6, align 8
  %596 = getelementptr inbounds %struct.inflate_state, ptr %595, i32 0, i32 9
  %597 = load ptr, ptr %596, align 8
  %598 = getelementptr inbounds %struct.gz_header_s, ptr %597, i32 0, i32 4
  store ptr null, ptr %598, align 8
  br label %599

599:                                              ; preds = %594, %589
  br label %600

600:                                              ; preds = %599, %588
  %601 = load ptr, ptr %6, align 8
  %602 = getelementptr inbounds %struct.inflate_state, ptr %601, i32 0, i32 1
  store i32 16185, ptr %602, align 8
  br label %603

603:                                              ; preds = %75, %600
  %604 = load ptr, ptr %6, align 8
  %605 = getelementptr inbounds %struct.inflate_state, ptr %604, i32 0, i32 5
  %606 = load i32, ptr %605, align 8
  %607 = and i32 %606, 1024
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %722

609:                                              ; preds = %603
  %610 = load ptr, ptr %6, align 8
  %611 = getelementptr inbounds %struct.inflate_state, ptr %610, i32 0, i32 17
  %612 = load i32, ptr %611, align 4
  store i32 %612, ptr %15, align 4
  %613 = load i32, ptr %15, align 4
  %614 = load i32, ptr %9, align 4
  %615 = icmp ugt i32 %613, %614
  br i1 %615, label %616, label %618

616:                                              ; preds = %609
  %617 = load i32, ptr %9, align 4
  store i32 %617, ptr %15, align 4
  br label %618

618:                                              ; preds = %616, %609
  %619 = load i32, ptr %15, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %715

621:                                              ; preds = %618
  %622 = load ptr, ptr %6, align 8
  %623 = getelementptr inbounds %struct.inflate_state, ptr %622, i32 0, i32 9
  %624 = load ptr, ptr %623, align 8
  %625 = icmp ne ptr %624, null
  br i1 %625, label %626, label %681

626:                                              ; preds = %621
  %627 = load ptr, ptr %6, align 8
  %628 = getelementptr inbounds %struct.inflate_state, ptr %627, i32 0, i32 9
  %629 = load ptr, ptr %628, align 8
  %630 = getelementptr inbounds %struct.gz_header_s, ptr %629, i32 0, i32 4
  %631 = load ptr, ptr %630, align 8
  %632 = icmp ne ptr %631, null
  br i1 %632, label %633, label %681

633:                                              ; preds = %626
  %634 = load ptr, ptr %6, align 8
  %635 = getelementptr inbounds %struct.inflate_state, ptr %634, i32 0, i32 9
  %636 = load ptr, ptr %635, align 8
  %637 = getelementptr inbounds %struct.gz_header_s, ptr %636, i32 0, i32 5
  %638 = load i32, ptr %637, align 8
  %639 = load ptr, ptr %6, align 8
  %640 = getelementptr inbounds %struct.inflate_state, ptr %639, i32 0, i32 17
  %641 = load i32, ptr %640, align 4
  %642 = sub i32 %638, %641
  store i32 %642, ptr %19, align 4
  %643 = load ptr, ptr %6, align 8
  %644 = getelementptr inbounds %struct.inflate_state, ptr %643, i32 0, i32 9
  %645 = load ptr, ptr %644, align 8
  %646 = getelementptr inbounds %struct.gz_header_s, ptr %645, i32 0, i32 6
  %647 = load i32, ptr %646, align 4
  %648 = icmp ult i32 %642, %647
  br i1 %648, label %649, label %681

649:                                              ; preds = %633
  %650 = load ptr, ptr %6, align 8
  %651 = getelementptr inbounds %struct.inflate_state, ptr %650, i32 0, i32 9
  %652 = load ptr, ptr %651, align 8
  %653 = getelementptr inbounds %struct.gz_header_s, ptr %652, i32 0, i32 4
  %654 = load ptr, ptr %653, align 8
  %655 = load i32, ptr %19, align 4
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds i8, ptr %654, i64 %656
  %658 = load ptr, ptr %7, align 8
  %659 = load i32, ptr %19, align 4
  %660 = load i32, ptr %15, align 4
  %661 = add i32 %659, %660
  %662 = load ptr, ptr %6, align 8
  %663 = getelementptr inbounds %struct.inflate_state, ptr %662, i32 0, i32 9
  %664 = load ptr, ptr %663, align 8
  %665 = getelementptr inbounds %struct.gz_header_s, ptr %664, i32 0, i32 6
  %666 = load i32, ptr %665, align 4
  %667 = icmp ugt i32 %661, %666
  br i1 %667, label %668, label %676

668:                                              ; preds = %649
  %669 = load ptr, ptr %6, align 8
  %670 = getelementptr inbounds %struct.inflate_state, ptr %669, i32 0, i32 9
  %671 = load ptr, ptr %670, align 8
  %672 = getelementptr inbounds %struct.gz_header_s, ptr %671, i32 0, i32 6
  %673 = load i32, ptr %672, align 4
  %674 = load i32, ptr %19, align 4
  %675 = sub i32 %673, %674
  br label %678

676:                                              ; preds = %649
  %677 = load i32, ptr %15, align 4
  br label %678

678:                                              ; preds = %676, %668
  %679 = phi i32 [ %675, %668 ], [ %677, %676 ]
  %680 = zext i32 %679 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %657, ptr align 1 %658, i64 %680, i1 false)
  br label %681

681:                                              ; preds = %678, %633, %626, %621
  %682 = load ptr, ptr %6, align 8
  %683 = getelementptr inbounds %struct.inflate_state, ptr %682, i32 0, i32 5
  %684 = load i32, ptr %683, align 8
  %685 = and i32 %684, 512
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %702

687:                                              ; preds = %681
  %688 = load ptr, ptr %6, align 8
  %689 = getelementptr inbounds %struct.inflate_state, ptr %688, i32 0, i32 3
  %690 = load i32, ptr %689, align 8
  %691 = and i32 %690, 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %702

693:                                              ; preds = %687
  %694 = load ptr, ptr %6, align 8
  %695 = getelementptr inbounds %struct.inflate_state, ptr %694, i32 0, i32 7
  %696 = load i64, ptr %695, align 8
  %697 = load ptr, ptr %7, align 8
  %698 = load i32, ptr %15, align 4
  %699 = call i64 @crc32(i64 noundef %696, ptr noundef %697, i32 noundef %698)
  %700 = load ptr, ptr %6, align 8
  %701 = getelementptr inbounds %struct.inflate_state, ptr %700, i32 0, i32 7
  store i64 %699, ptr %701, align 8
  br label %702

702:                                              ; preds = %693, %687, %681
  %703 = load i32, ptr %15, align 4
  %704 = load i32, ptr %9, align 4
  %705 = sub i32 %704, %703
  store i32 %705, ptr %9, align 4
  %706 = load i32, ptr %15, align 4
  %707 = load ptr, ptr %7, align 8
  %708 = zext i32 %706 to i64
  %709 = getelementptr inbounds i8, ptr %707, i64 %708
  store ptr %709, ptr %7, align 8
  %710 = load i32, ptr %15, align 4
  %711 = load ptr, ptr %6, align 8
  %712 = getelementptr inbounds %struct.inflate_state, ptr %711, i32 0, i32 17
  %713 = load i32, ptr %712, align 4
  %714 = sub i32 %713, %710
  store i32 %714, ptr %712, align 4
  br label %715

715:                                              ; preds = %702, %618
  %716 = load ptr, ptr %6, align 8
  %717 = getelementptr inbounds %struct.inflate_state, ptr %716, i32 0, i32 17
  %718 = load i32, ptr %717, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %721

720:                                              ; preds = %715
  br label %2842

721:                                              ; preds = %715
  br label %722

722:                                              ; preds = %721, %603
  %723 = load ptr, ptr %6, align 8
  %724 = getelementptr inbounds %struct.inflate_state, ptr %723, i32 0, i32 17
  store i32 0, ptr %724, align 4
  %725 = load ptr, ptr %6, align 8
  %726 = getelementptr inbounds %struct.inflate_state, ptr %725, i32 0, i32 1
  store i32 16186, ptr %726, align 8
  br label %727

727:                                              ; preds = %75, %722
  %728 = load ptr, ptr %6, align 8
  %729 = getelementptr inbounds %struct.inflate_state, ptr %728, i32 0, i32 5
  %730 = load i32, ptr %729, align 8
  %731 = and i32 %730, 2048
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %824

733:                                              ; preds = %727
  %734 = load i32, ptr %9, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %737

736:                                              ; preds = %733
  br label %2842

737:                                              ; preds = %733
  store i32 0, ptr %15, align 4
  br label %738

738:                                              ; preds = %789, %737
  %739 = load ptr, ptr %7, align 8
  %740 = load i32, ptr %15, align 4
  %741 = add i32 %740, 1
  store i32 %741, ptr %15, align 4
  %742 = zext i32 %740 to i64
  %743 = getelementptr inbounds i8, ptr %739, i64 %742
  %744 = load i8, ptr %743, align 1
  %745 = zext i8 %744 to i32
  store i32 %745, ptr %19, align 4
  %746 = load ptr, ptr %6, align 8
  %747 = getelementptr inbounds %struct.inflate_state, ptr %746, i32 0, i32 9
  %748 = load ptr, ptr %747, align 8
  %749 = icmp ne ptr %748, null
  br i1 %749, label %750, label %781

750:                                              ; preds = %738
  %751 = load ptr, ptr %6, align 8
  %752 = getelementptr inbounds %struct.inflate_state, ptr %751, i32 0, i32 9
  %753 = load ptr, ptr %752, align 8
  %754 = getelementptr inbounds %struct.gz_header_s, ptr %753, i32 0, i32 7
  %755 = load ptr, ptr %754, align 8
  %756 = icmp ne ptr %755, null
  br i1 %756, label %757, label %781

757:                                              ; preds = %750
  %758 = load ptr, ptr %6, align 8
  %759 = getelementptr inbounds %struct.inflate_state, ptr %758, i32 0, i32 17
  %760 = load i32, ptr %759, align 4
  %761 = load ptr, ptr %6, align 8
  %762 = getelementptr inbounds %struct.inflate_state, ptr %761, i32 0, i32 9
  %763 = load ptr, ptr %762, align 8
  %764 = getelementptr inbounds %struct.gz_header_s, ptr %763, i32 0, i32 8
  %765 = load i32, ptr %764, align 8
  %766 = icmp ult i32 %760, %765
  br i1 %766, label %767, label %781

767:                                              ; preds = %757
  %768 = load i32, ptr %19, align 4
  %769 = trunc i32 %768 to i8
  %770 = load ptr, ptr %6, align 8
  %771 = getelementptr inbounds %struct.inflate_state, ptr %770, i32 0, i32 9
  %772 = load ptr, ptr %771, align 8
  %773 = getelementptr inbounds %struct.gz_header_s, ptr %772, i32 0, i32 7
  %774 = load ptr, ptr %773, align 8
  %775 = load ptr, ptr %6, align 8
  %776 = getelementptr inbounds %struct.inflate_state, ptr %775, i32 0, i32 17
  %777 = load i32, ptr %776, align 4
  %778 = add i32 %777, 1
  store i32 %778, ptr %776, align 4
  %779 = zext i32 %777 to i64
  %780 = getelementptr inbounds i8, ptr %774, i64 %779
  store i8 %769, ptr %780, align 1
  br label %781

781:                                              ; preds = %767, %757, %750, %738
  br label %782

782:                                              ; preds = %781
  %783 = load i32, ptr %19, align 4
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %789

785:                                              ; preds = %782
  %786 = load i32, ptr %15, align 4
  %787 = load i32, ptr %9, align 4
  %788 = icmp ult i32 %786, %787
  br label %789

789:                                              ; preds = %785, %782
  %790 = phi i1 [ false, %782 ], [ %788, %785 ]
  br i1 %790, label %738, label %791, !llvm.loop !12

791:                                              ; preds = %789
  %792 = load ptr, ptr %6, align 8
  %793 = getelementptr inbounds %struct.inflate_state, ptr %792, i32 0, i32 5
  %794 = load i32, ptr %793, align 8
  %795 = and i32 %794, 512
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %812

797:                                              ; preds = %791
  %798 = load ptr, ptr %6, align 8
  %799 = getelementptr inbounds %struct.inflate_state, ptr %798, i32 0, i32 3
  %800 = load i32, ptr %799, align 8
  %801 = and i32 %800, 4
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %803, label %812

803:                                              ; preds = %797
  %804 = load ptr, ptr %6, align 8
  %805 = getelementptr inbounds %struct.inflate_state, ptr %804, i32 0, i32 7
  %806 = load i64, ptr %805, align 8
  %807 = load ptr, ptr %7, align 8
  %808 = load i32, ptr %15, align 4
  %809 = call i64 @crc32(i64 noundef %806, ptr noundef %807, i32 noundef %808)
  %810 = load ptr, ptr %6, align 8
  %811 = getelementptr inbounds %struct.inflate_state, ptr %810, i32 0, i32 7
  store i64 %809, ptr %811, align 8
  br label %812

812:                                              ; preds = %803, %797, %791
  %813 = load i32, ptr %15, align 4
  %814 = load i32, ptr %9, align 4
  %815 = sub i32 %814, %813
  store i32 %815, ptr %9, align 4
  %816 = load i32, ptr %15, align 4
  %817 = load ptr, ptr %7, align 8
  %818 = zext i32 %816 to i64
  %819 = getelementptr inbounds i8, ptr %817, i64 %818
  store ptr %819, ptr %7, align 8
  %820 = load i32, ptr %19, align 4
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %823

822:                                              ; preds = %812
  br label %2842

823:                                              ; preds = %812
  br label %835

824:                                              ; preds = %727
  %825 = load ptr, ptr %6, align 8
  %826 = getelementptr inbounds %struct.inflate_state, ptr %825, i32 0, i32 9
  %827 = load ptr, ptr %826, align 8
  %828 = icmp ne ptr %827, null
  br i1 %828, label %829, label %834

829:                                              ; preds = %824
  %830 = load ptr, ptr %6, align 8
  %831 = getelementptr inbounds %struct.inflate_state, ptr %830, i32 0, i32 9
  %832 = load ptr, ptr %831, align 8
  %833 = getelementptr inbounds %struct.gz_header_s, ptr %832, i32 0, i32 7
  store ptr null, ptr %833, align 8
  br label %834

834:                                              ; preds = %829, %824
  br label %835

835:                                              ; preds = %834, %823
  %836 = load ptr, ptr %6, align 8
  %837 = getelementptr inbounds %struct.inflate_state, ptr %836, i32 0, i32 17
  store i32 0, ptr %837, align 4
  %838 = load ptr, ptr %6, align 8
  %839 = getelementptr inbounds %struct.inflate_state, ptr %838, i32 0, i32 1
  store i32 16187, ptr %839, align 8
  br label %840

840:                                              ; preds = %75, %835
  %841 = load ptr, ptr %6, align 8
  %842 = getelementptr inbounds %struct.inflate_state, ptr %841, i32 0, i32 5
  %843 = load i32, ptr %842, align 8
  %844 = and i32 %843, 4096
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %846, label %937

846:                                              ; preds = %840
  %847 = load i32, ptr %9, align 4
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %846
  br label %2842

850:                                              ; preds = %846
  store i32 0, ptr %15, align 4
  br label %851

851:                                              ; preds = %902, %850
  %852 = load ptr, ptr %7, align 8
  %853 = load i32, ptr %15, align 4
  %854 = add i32 %853, 1
  store i32 %854, ptr %15, align 4
  %855 = zext i32 %853 to i64
  %856 = getelementptr inbounds i8, ptr %852, i64 %855
  %857 = load i8, ptr %856, align 1
  %858 = zext i8 %857 to i32
  store i32 %858, ptr %19, align 4
  %859 = load ptr, ptr %6, align 8
  %860 = getelementptr inbounds %struct.inflate_state, ptr %859, i32 0, i32 9
  %861 = load ptr, ptr %860, align 8
  %862 = icmp ne ptr %861, null
  br i1 %862, label %863, label %894

863:                                              ; preds = %851
  %864 = load ptr, ptr %6, align 8
  %865 = getelementptr inbounds %struct.inflate_state, ptr %864, i32 0, i32 9
  %866 = load ptr, ptr %865, align 8
  %867 = getelementptr inbounds %struct.gz_header_s, ptr %866, i32 0, i32 9
  %868 = load ptr, ptr %867, align 8
  %869 = icmp ne ptr %868, null
  br i1 %869, label %870, label %894

870:                                              ; preds = %863
  %871 = load ptr, ptr %6, align 8
  %872 = getelementptr inbounds %struct.inflate_state, ptr %871, i32 0, i32 17
  %873 = load i32, ptr %872, align 4
  %874 = load ptr, ptr %6, align 8
  %875 = getelementptr inbounds %struct.inflate_state, ptr %874, i32 0, i32 9
  %876 = load ptr, ptr %875, align 8
  %877 = getelementptr inbounds %struct.gz_header_s, ptr %876, i32 0, i32 10
  %878 = load i32, ptr %877, align 8
  %879 = icmp ult i32 %873, %878
  br i1 %879, label %880, label %894

880:                                              ; preds = %870
  %881 = load i32, ptr %19, align 4
  %882 = trunc i32 %881 to i8
  %883 = load ptr, ptr %6, align 8
  %884 = getelementptr inbounds %struct.inflate_state, ptr %883, i32 0, i32 9
  %885 = load ptr, ptr %884, align 8
  %886 = getelementptr inbounds %struct.gz_header_s, ptr %885, i32 0, i32 9
  %887 = load ptr, ptr %886, align 8
  %888 = load ptr, ptr %6, align 8
  %889 = getelementptr inbounds %struct.inflate_state, ptr %888, i32 0, i32 17
  %890 = load i32, ptr %889, align 4
  %891 = add i32 %890, 1
  store i32 %891, ptr %889, align 4
  %892 = zext i32 %890 to i64
  %893 = getelementptr inbounds i8, ptr %887, i64 %892
  store i8 %882, ptr %893, align 1
  br label %894

894:                                              ; preds = %880, %870, %863, %851
  br label %895

895:                                              ; preds = %894
  %896 = load i32, ptr %19, align 4
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %898, label %902

898:                                              ; preds = %895
  %899 = load i32, ptr %15, align 4
  %900 = load i32, ptr %9, align 4
  %901 = icmp ult i32 %899, %900
  br label %902

902:                                              ; preds = %898, %895
  %903 = phi i1 [ false, %895 ], [ %901, %898 ]
  br i1 %903, label %851, label %904, !llvm.loop !13

904:                                              ; preds = %902
  %905 = load ptr, ptr %6, align 8
  %906 = getelementptr inbounds %struct.inflate_state, ptr %905, i32 0, i32 5
  %907 = load i32, ptr %906, align 8
  %908 = and i32 %907, 512
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %925

910:                                              ; preds = %904
  %911 = load ptr, ptr %6, align 8
  %912 = getelementptr inbounds %struct.inflate_state, ptr %911, i32 0, i32 3
  %913 = load i32, ptr %912, align 8
  %914 = and i32 %913, 4
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %925

916:                                              ; preds = %910
  %917 = load ptr, ptr %6, align 8
  %918 = getelementptr inbounds %struct.inflate_state, ptr %917, i32 0, i32 7
  %919 = load i64, ptr %918, align 8
  %920 = load ptr, ptr %7, align 8
  %921 = load i32, ptr %15, align 4
  %922 = call i64 @crc32(i64 noundef %919, ptr noundef %920, i32 noundef %921)
  %923 = load ptr, ptr %6, align 8
  %924 = getelementptr inbounds %struct.inflate_state, ptr %923, i32 0, i32 7
  store i64 %922, ptr %924, align 8
  br label %925

925:                                              ; preds = %916, %910, %904
  %926 = load i32, ptr %15, align 4
  %927 = load i32, ptr %9, align 4
  %928 = sub i32 %927, %926
  store i32 %928, ptr %9, align 4
  %929 = load i32, ptr %15, align 4
  %930 = load ptr, ptr %7, align 8
  %931 = zext i32 %929 to i64
  %932 = getelementptr inbounds i8, ptr %930, i64 %931
  store ptr %932, ptr %7, align 8
  %933 = load i32, ptr %19, align 4
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %935, label %936

935:                                              ; preds = %925
  br label %2842

936:                                              ; preds = %925
  br label %948

937:                                              ; preds = %840
  %938 = load ptr, ptr %6, align 8
  %939 = getelementptr inbounds %struct.inflate_state, ptr %938, i32 0, i32 9
  %940 = load ptr, ptr %939, align 8
  %941 = icmp ne ptr %940, null
  br i1 %941, label %942, label %947

942:                                              ; preds = %937
  %943 = load ptr, ptr %6, align 8
  %944 = getelementptr inbounds %struct.inflate_state, ptr %943, i32 0, i32 9
  %945 = load ptr, ptr %944, align 8
  %946 = getelementptr inbounds %struct.gz_header_s, ptr %945, i32 0, i32 9
  store ptr null, ptr %946, align 8
  br label %947

947:                                              ; preds = %942, %937
  br label %948

948:                                              ; preds = %947, %936
  %949 = load ptr, ptr %6, align 8
  %950 = getelementptr inbounds %struct.inflate_state, ptr %949, i32 0, i32 1
  store i32 16188, ptr %950, align 8
  br label %951

951:                                              ; preds = %75, %948
  %952 = load ptr, ptr %6, align 8
  %953 = getelementptr inbounds %struct.inflate_state, ptr %952, i32 0, i32 5
  %954 = load i32, ptr %953, align 8
  %955 = and i32 %954, 512
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %957, label %1004

957:                                              ; preds = %951
  br label %958

958:                                              ; preds = %957
  br label %959

959:                                              ; preds = %981, %958
  %960 = load i32, ptr %12, align 4
  %961 = icmp ult i32 %960, 16
  br i1 %961, label %962, label %982

962:                                              ; preds = %959
  br label %963

963:                                              ; preds = %962
  %964 = load i32, ptr %9, align 4
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %967

966:                                              ; preds = %963
  br label %2842

967:                                              ; preds = %963
  %968 = load i32, ptr %9, align 4
  %969 = add i32 %968, -1
  store i32 %969, ptr %9, align 4
  %970 = load ptr, ptr %7, align 8
  %971 = getelementptr inbounds i8, ptr %970, i32 1
  store ptr %971, ptr %7, align 8
  %972 = load i8, ptr %970, align 1
  %973 = zext i8 %972 to i64
  %974 = load i32, ptr %12, align 4
  %975 = zext i32 %974 to i64
  %976 = shl i64 %973, %975
  %977 = load i64, ptr %11, align 8
  %978 = add i64 %977, %976
  store i64 %978, ptr %11, align 8
  %979 = load i32, ptr %12, align 4
  %980 = add i32 %979, 8
  store i32 %980, ptr %12, align 4
  br label %981

981:                                              ; preds = %967
  br label %959, !llvm.loop !14

982:                                              ; preds = %959
  br label %983

983:                                              ; preds = %982
  %984 = load ptr, ptr %6, align 8
  %985 = getelementptr inbounds %struct.inflate_state, ptr %984, i32 0, i32 3
  %986 = load i32, ptr %985, align 8
  %987 = and i32 %986, 4
  %988 = icmp ne i32 %987, 0
  br i1 %988, label %989, label %1001

989:                                              ; preds = %983
  %990 = load i64, ptr %11, align 8
  %991 = load ptr, ptr %6, align 8
  %992 = getelementptr inbounds %struct.inflate_state, ptr %991, i32 0, i32 7
  %993 = load i64, ptr %992, align 8
  %994 = and i64 %993, 65535
  %995 = icmp ne i64 %990, %994
  br i1 %995, label %996, label %1001

996:                                              ; preds = %989
  %997 = load ptr, ptr %4, align 8
  %998 = getelementptr inbounds %struct.z_stream_s, ptr %997, i32 0, i32 6
  store ptr @.str.5, ptr %998, align 8
  %999 = load ptr, ptr %6, align 8
  %1000 = getelementptr inbounds %struct.inflate_state, ptr %999, i32 0, i32 1
  store i32 16209, ptr %1000, align 8
  br label %2841

1001:                                             ; preds = %989, %983
  br label %1002

1002:                                             ; preds = %1001
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %1003

1003:                                             ; preds = %1002
  br label %1004

1004:                                             ; preds = %1003, %951
  %1005 = load ptr, ptr %6, align 8
  %1006 = getelementptr inbounds %struct.inflate_state, ptr %1005, i32 0, i32 9
  %1007 = load ptr, ptr %1006, align 8
  %1008 = icmp ne ptr %1007, null
  br i1 %1008, label %1009, label %1023

1009:                                             ; preds = %1004
  %1010 = load ptr, ptr %6, align 8
  %1011 = getelementptr inbounds %struct.inflate_state, ptr %1010, i32 0, i32 5
  %1012 = load i32, ptr %1011, align 8
  %1013 = ashr i32 %1012, 9
  %1014 = and i32 %1013, 1
  %1015 = load ptr, ptr %6, align 8
  %1016 = getelementptr inbounds %struct.inflate_state, ptr %1015, i32 0, i32 9
  %1017 = load ptr, ptr %1016, align 8
  %1018 = getelementptr inbounds %struct.gz_header_s, ptr %1017, i32 0, i32 11
  store i32 %1014, ptr %1018, align 4
  %1019 = load ptr, ptr %6, align 8
  %1020 = getelementptr inbounds %struct.inflate_state, ptr %1019, i32 0, i32 9
  %1021 = load ptr, ptr %1020, align 8
  %1022 = getelementptr inbounds %struct.gz_header_s, ptr %1021, i32 0, i32 12
  store i32 1, ptr %1022, align 8
  br label %1023

1023:                                             ; preds = %1009, %1004
  %1024 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %1025 = load ptr, ptr %6, align 8
  %1026 = getelementptr inbounds %struct.inflate_state, ptr %1025, i32 0, i32 7
  store i64 %1024, ptr %1026, align 8
  %1027 = load ptr, ptr %4, align 8
  %1028 = getelementptr inbounds %struct.z_stream_s, ptr %1027, i32 0, i32 12
  store i64 %1024, ptr %1028, align 8
  %1029 = load ptr, ptr %6, align 8
  %1030 = getelementptr inbounds %struct.inflate_state, ptr %1029, i32 0, i32 1
  store i32 16191, ptr %1030, align 8
  br label %2841

1031:                                             ; preds = %75
  br label %1032

1032:                                             ; preds = %1031
  br label %1033

1033:                                             ; preds = %1055, %1032
  %1034 = load i32, ptr %12, align 4
  %1035 = icmp ult i32 %1034, 32
  br i1 %1035, label %1036, label %1056

1036:                                             ; preds = %1033
  br label %1037

1037:                                             ; preds = %1036
  %1038 = load i32, ptr %9, align 4
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1040, label %1041

1040:                                             ; preds = %1037
  br label %2842

1041:                                             ; preds = %1037
  %1042 = load i32, ptr %9, align 4
  %1043 = add i32 %1042, -1
  store i32 %1043, ptr %9, align 4
  %1044 = load ptr, ptr %7, align 8
  %1045 = getelementptr inbounds i8, ptr %1044, i32 1
  store ptr %1045, ptr %7, align 8
  %1046 = load i8, ptr %1044, align 1
  %1047 = zext i8 %1046 to i64
  %1048 = load i32, ptr %12, align 4
  %1049 = zext i32 %1048 to i64
  %1050 = shl i64 %1047, %1049
  %1051 = load i64, ptr %11, align 8
  %1052 = add i64 %1051, %1050
  store i64 %1052, ptr %11, align 8
  %1053 = load i32, ptr %12, align 4
  %1054 = add i32 %1053, 8
  store i32 %1054, ptr %12, align 4
  br label %1055

1055:                                             ; preds = %1041
  br label %1033, !llvm.loop !15

1056:                                             ; preds = %1033
  br label %1057

1057:                                             ; preds = %1056
  %1058 = load i64, ptr %11, align 8
  %1059 = lshr i64 %1058, 24
  %1060 = and i64 %1059, 255
  %1061 = load i64, ptr %11, align 8
  %1062 = lshr i64 %1061, 8
  %1063 = and i64 %1062, 65280
  %1064 = add i64 %1060, %1063
  %1065 = load i64, ptr %11, align 8
  %1066 = and i64 %1065, 65280
  %1067 = shl i64 %1066, 8
  %1068 = add i64 %1064, %1067
  %1069 = load i64, ptr %11, align 8
  %1070 = and i64 %1069, 255
  %1071 = shl i64 %1070, 24
  %1072 = add i64 %1068, %1071
  %1073 = load ptr, ptr %6, align 8
  %1074 = getelementptr inbounds %struct.inflate_state, ptr %1073, i32 0, i32 7
  store i64 %1072, ptr %1074, align 8
  %1075 = load ptr, ptr %4, align 8
  %1076 = getelementptr inbounds %struct.z_stream_s, ptr %1075, i32 0, i32 12
  store i64 %1072, ptr %1076, align 8
  br label %1077

1077:                                             ; preds = %1057
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %1078

1078:                                             ; preds = %1077
  %1079 = load ptr, ptr %6, align 8
  %1080 = getelementptr inbounds %struct.inflate_state, ptr %1079, i32 0, i32 1
  store i32 16190, ptr %1080, align 8
  br label %1081

1081:                                             ; preds = %75, %1078
  %1082 = load ptr, ptr %6, align 8
  %1083 = getelementptr inbounds %struct.inflate_state, ptr %1082, i32 0, i32 4
  %1084 = load i32, ptr %1083, align 4
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1107

1086:                                             ; preds = %1081
  br label %1087

1087:                                             ; preds = %1086
  %1088 = load ptr, ptr %8, align 8
  %1089 = load ptr, ptr %4, align 8
  %1090 = getelementptr inbounds %struct.z_stream_s, ptr %1089, i32 0, i32 3
  store ptr %1088, ptr %1090, align 8
  %1091 = load i32, ptr %10, align 4
  %1092 = load ptr, ptr %4, align 8
  %1093 = getelementptr inbounds %struct.z_stream_s, ptr %1092, i32 0, i32 4
  store i32 %1091, ptr %1093, align 8
  %1094 = load ptr, ptr %7, align 8
  %1095 = load ptr, ptr %4, align 8
  %1096 = getelementptr inbounds %struct.z_stream_s, ptr %1095, i32 0, i32 0
  store ptr %1094, ptr %1096, align 8
  %1097 = load i32, ptr %9, align 4
  %1098 = load ptr, ptr %4, align 8
  %1099 = getelementptr inbounds %struct.z_stream_s, ptr %1098, i32 0, i32 1
  store i32 %1097, ptr %1099, align 8
  %1100 = load i64, ptr %11, align 8
  %1101 = load ptr, ptr %6, align 8
  %1102 = getelementptr inbounds %struct.inflate_state, ptr %1101, i32 0, i32 15
  store i64 %1100, ptr %1102, align 8
  %1103 = load i32, ptr %12, align 4
  %1104 = load ptr, ptr %6, align 8
  %1105 = getelementptr inbounds %struct.inflate_state, ptr %1104, i32 0, i32 16
  store i32 %1103, ptr %1105, align 8
  br label %1106

1106:                                             ; preds = %1087
  store i32 2, ptr %3, align 4
  br label %3024

1107:                                             ; preds = %1081
  %1108 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  %1109 = load ptr, ptr %6, align 8
  %1110 = getelementptr inbounds %struct.inflate_state, ptr %1109, i32 0, i32 7
  store i64 %1108, ptr %1110, align 8
  %1111 = load ptr, ptr %4, align 8
  %1112 = getelementptr inbounds %struct.z_stream_s, ptr %1111, i32 0, i32 12
  store i64 %1108, ptr %1112, align 8
  %1113 = load ptr, ptr %6, align 8
  %1114 = getelementptr inbounds %struct.inflate_state, ptr %1113, i32 0, i32 1
  store i32 16191, ptr %1114, align 8
  br label %1115

1115:                                             ; preds = %75, %1107
  %1116 = load i32, ptr %5, align 4
  %1117 = icmp eq i32 %1116, 5
  br i1 %1117, label %1121, label %1118

1118:                                             ; preds = %1115
  %1119 = load i32, ptr %5, align 4
  %1120 = icmp eq i32 %1119, 6
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1118, %1115
  br label %2842

1122:                                             ; preds = %1118
  br label %1123

1123:                                             ; preds = %75, %1122
  %1124 = load ptr, ptr %6, align 8
  %1125 = getelementptr inbounds %struct.inflate_state, ptr %1124, i32 0, i32 2
  %1126 = load i32, ptr %1125, align 4
  %1127 = icmp ne i32 %1126, 0
  br i1 %1127, label %1128, label %1142

1128:                                             ; preds = %1123
  br label %1129

1129:                                             ; preds = %1128
  %1130 = load i32, ptr %12, align 4
  %1131 = and i32 %1130, 7
  %1132 = load i64, ptr %11, align 8
  %1133 = zext i32 %1131 to i64
  %1134 = lshr i64 %1132, %1133
  store i64 %1134, ptr %11, align 8
  %1135 = load i32, ptr %12, align 4
  %1136 = and i32 %1135, 7
  %1137 = load i32, ptr %12, align 4
  %1138 = sub i32 %1137, %1136
  store i32 %1138, ptr %12, align 4
  br label %1139

1139:                                             ; preds = %1129
  %1140 = load ptr, ptr %6, align 8
  %1141 = getelementptr inbounds %struct.inflate_state, ptr %1140, i32 0, i32 1
  store i32 16206, ptr %1141, align 8
  br label %2841

1142:                                             ; preds = %1123
  br label %1143

1143:                                             ; preds = %1142
  br label %1144

1144:                                             ; preds = %1166, %1143
  %1145 = load i32, ptr %12, align 4
  %1146 = icmp ult i32 %1145, 3
  br i1 %1146, label %1147, label %1167

1147:                                             ; preds = %1144
  br label %1148

1148:                                             ; preds = %1147
  %1149 = load i32, ptr %9, align 4
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1151, label %1152

1151:                                             ; preds = %1148
  br label %2842

1152:                                             ; preds = %1148
  %1153 = load i32, ptr %9, align 4
  %1154 = add i32 %1153, -1
  store i32 %1154, ptr %9, align 4
  %1155 = load ptr, ptr %7, align 8
  %1156 = getelementptr inbounds i8, ptr %1155, i32 1
  store ptr %1156, ptr %7, align 8
  %1157 = load i8, ptr %1155, align 1
  %1158 = zext i8 %1157 to i64
  %1159 = load i32, ptr %12, align 4
  %1160 = zext i32 %1159 to i64
  %1161 = shl i64 %1158, %1160
  %1162 = load i64, ptr %11, align 8
  %1163 = add i64 %1162, %1161
  store i64 %1163, ptr %11, align 8
  %1164 = load i32, ptr %12, align 4
  %1165 = add i32 %1164, 8
  store i32 %1165, ptr %12, align 4
  br label %1166

1166:                                             ; preds = %1152
  br label %1144, !llvm.loop !16

1167:                                             ; preds = %1144
  br label %1168

1168:                                             ; preds = %1167
  %1169 = load i64, ptr %11, align 8
  %1170 = trunc i64 %1169 to i32
  %1171 = and i32 %1170, 1
  %1172 = load ptr, ptr %6, align 8
  %1173 = getelementptr inbounds %struct.inflate_state, ptr %1172, i32 0, i32 2
  store i32 %1171, ptr %1173, align 4
  br label %1174

1174:                                             ; preds = %1168
  %1175 = load i64, ptr %11, align 8
  %1176 = lshr i64 %1175, 1
  store i64 %1176, ptr %11, align 8
  %1177 = load i32, ptr %12, align 4
  %1178 = sub i32 %1177, 1
  store i32 %1178, ptr %12, align 4
  br label %1179

1179:                                             ; preds = %1174
  %1180 = load i64, ptr %11, align 8
  %1181 = trunc i64 %1180 to i32
  %1182 = and i32 %1181, 3
  switch i32 %1182, label %1203 [
    i32 0, label %1183
    i32 1, label %1186
    i32 2, label %1200
  ]

1183:                                             ; preds = %1179
  %1184 = load ptr, ptr %6, align 8
  %1185 = getelementptr inbounds %struct.inflate_state, ptr %1184, i32 0, i32 1
  store i32 16193, ptr %1185, align 8
  br label %1208

1186:                                             ; preds = %1179
  %1187 = load ptr, ptr %6, align 8
  call void @inflate_fixed(ptr noundef %1187)
  %1188 = load ptr, ptr %6, align 8
  %1189 = getelementptr inbounds %struct.inflate_state, ptr %1188, i32 0, i32 1
  store i32 16199, ptr %1189, align 8
  %1190 = load i32, ptr %5, align 4
  %1191 = icmp eq i32 %1190, 6
  br i1 %1191, label %1192, label %1199

1192:                                             ; preds = %1186
  br label %1193

1193:                                             ; preds = %1192
  %1194 = load i64, ptr %11, align 8
  %1195 = lshr i64 %1194, 2
  store i64 %1195, ptr %11, align 8
  %1196 = load i32, ptr %12, align 4
  %1197 = sub i32 %1196, 2
  store i32 %1197, ptr %12, align 4
  br label %1198

1198:                                             ; preds = %1193
  br label %2842

1199:                                             ; preds = %1186
  br label %1208

1200:                                             ; preds = %1179
  %1201 = load ptr, ptr %6, align 8
  %1202 = getelementptr inbounds %struct.inflate_state, ptr %1201, i32 0, i32 1
  store i32 16196, ptr %1202, align 8
  br label %1208

1203:                                             ; preds = %1179
  %1204 = load ptr, ptr %4, align 8
  %1205 = getelementptr inbounds %struct.z_stream_s, ptr %1204, i32 0, i32 6
  store ptr @.str.6, ptr %1205, align 8
  %1206 = load ptr, ptr %6, align 8
  %1207 = getelementptr inbounds %struct.inflate_state, ptr %1206, i32 0, i32 1
  store i32 16209, ptr %1207, align 8
  br label %1208

1208:                                             ; preds = %1203, %1200, %1199, %1183
  br label %1209

1209:                                             ; preds = %1208
  %1210 = load i64, ptr %11, align 8
  %1211 = lshr i64 %1210, 2
  store i64 %1211, ptr %11, align 8
  %1212 = load i32, ptr %12, align 4
  %1213 = sub i32 %1212, 2
  store i32 %1213, ptr %12, align 4
  br label %1214

1214:                                             ; preds = %1209
  br label %2841

1215:                                             ; preds = %75
  br label %1216

1216:                                             ; preds = %1215
  %1217 = load i32, ptr %12, align 4
  %1218 = and i32 %1217, 7
  %1219 = load i64, ptr %11, align 8
  %1220 = zext i32 %1218 to i64
  %1221 = lshr i64 %1219, %1220
  store i64 %1221, ptr %11, align 8
  %1222 = load i32, ptr %12, align 4
  %1223 = and i32 %1222, 7
  %1224 = load i32, ptr %12, align 4
  %1225 = sub i32 %1224, %1223
  store i32 %1225, ptr %12, align 4
  br label %1226

1226:                                             ; preds = %1216
  br label %1227

1227:                                             ; preds = %1226
  br label %1228

1228:                                             ; preds = %1250, %1227
  %1229 = load i32, ptr %12, align 4
  %1230 = icmp ult i32 %1229, 32
  br i1 %1230, label %1231, label %1251

1231:                                             ; preds = %1228
  br label %1232

1232:                                             ; preds = %1231
  %1233 = load i32, ptr %9, align 4
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1235, label %1236

1235:                                             ; preds = %1232
  br label %2842

1236:                                             ; preds = %1232
  %1237 = load i32, ptr %9, align 4
  %1238 = add i32 %1237, -1
  store i32 %1238, ptr %9, align 4
  %1239 = load ptr, ptr %7, align 8
  %1240 = getelementptr inbounds i8, ptr %1239, i32 1
  store ptr %1240, ptr %7, align 8
  %1241 = load i8, ptr %1239, align 1
  %1242 = zext i8 %1241 to i64
  %1243 = load i32, ptr %12, align 4
  %1244 = zext i32 %1243 to i64
  %1245 = shl i64 %1242, %1244
  %1246 = load i64, ptr %11, align 8
  %1247 = add i64 %1246, %1245
  store i64 %1247, ptr %11, align 8
  %1248 = load i32, ptr %12, align 4
  %1249 = add i32 %1248, 8
  store i32 %1249, ptr %12, align 4
  br label %1250

1250:                                             ; preds = %1236
  br label %1228, !llvm.loop !17

1251:                                             ; preds = %1228
  br label %1252

1252:                                             ; preds = %1251
  %1253 = load i64, ptr %11, align 8
  %1254 = and i64 %1253, 65535
  %1255 = load i64, ptr %11, align 8
  %1256 = lshr i64 %1255, 16
  %1257 = xor i64 %1256, 65535
  %1258 = icmp ne i64 %1254, %1257
  br i1 %1258, label %1259, label %1264

1259:                                             ; preds = %1252
  %1260 = load ptr, ptr %4, align 8
  %1261 = getelementptr inbounds %struct.z_stream_s, ptr %1260, i32 0, i32 6
  store ptr @.str.7, ptr %1261, align 8
  %1262 = load ptr, ptr %6, align 8
  %1263 = getelementptr inbounds %struct.inflate_state, ptr %1262, i32 0, i32 1
  store i32 16209, ptr %1263, align 8
  br label %2841

1264:                                             ; preds = %1252
  %1265 = load i64, ptr %11, align 8
  %1266 = trunc i64 %1265 to i32
  %1267 = and i32 %1266, 65535
  %1268 = load ptr, ptr %6, align 8
  %1269 = getelementptr inbounds %struct.inflate_state, ptr %1268, i32 0, i32 17
  store i32 %1267, ptr %1269, align 4
  br label %1270

1270:                                             ; preds = %1264
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %1271

1271:                                             ; preds = %1270
  %1272 = load ptr, ptr %6, align 8
  %1273 = getelementptr inbounds %struct.inflate_state, ptr %1272, i32 0, i32 1
  store i32 16194, ptr %1273, align 8
  %1274 = load i32, ptr %5, align 4
  %1275 = icmp eq i32 %1274, 6
  br i1 %1275, label %1276, label %1277

1276:                                             ; preds = %1271
  br label %2842

1277:                                             ; preds = %1271
  br label %1278

1278:                                             ; preds = %75, %1277
  %1279 = load ptr, ptr %6, align 8
  %1280 = getelementptr inbounds %struct.inflate_state, ptr %1279, i32 0, i32 1
  store i32 16195, ptr %1280, align 8
  br label %1281

1281:                                             ; preds = %75, %1278
  %1282 = load ptr, ptr %6, align 8
  %1283 = getelementptr inbounds %struct.inflate_state, ptr %1282, i32 0, i32 17
  %1284 = load i32, ptr %1283, align 4
  store i32 %1284, ptr %15, align 4
  %1285 = load i32, ptr %15, align 4
  %1286 = icmp ne i32 %1285, 0
  br i1 %1286, label %1287, label %1327

1287:                                             ; preds = %1281
  %1288 = load i32, ptr %15, align 4
  %1289 = load i32, ptr %9, align 4
  %1290 = icmp ugt i32 %1288, %1289
  br i1 %1290, label %1291, label %1293

1291:                                             ; preds = %1287
  %1292 = load i32, ptr %9, align 4
  store i32 %1292, ptr %15, align 4
  br label %1293

1293:                                             ; preds = %1291, %1287
  %1294 = load i32, ptr %15, align 4
  %1295 = load i32, ptr %10, align 4
  %1296 = icmp ugt i32 %1294, %1295
  br i1 %1296, label %1297, label %1299

1297:                                             ; preds = %1293
  %1298 = load i32, ptr %10, align 4
  store i32 %1298, ptr %15, align 4
  br label %1299

1299:                                             ; preds = %1297, %1293
  %1300 = load i32, ptr %15, align 4
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1302, label %1303

1302:                                             ; preds = %1299
  br label %2842

1303:                                             ; preds = %1299
  %1304 = load ptr, ptr %8, align 8
  %1305 = load ptr, ptr %7, align 8
  %1306 = load i32, ptr %15, align 4
  %1307 = zext i32 %1306 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1304, ptr align 1 %1305, i64 %1307, i1 false)
  %1308 = load i32, ptr %15, align 4
  %1309 = load i32, ptr %9, align 4
  %1310 = sub i32 %1309, %1308
  store i32 %1310, ptr %9, align 4
  %1311 = load i32, ptr %15, align 4
  %1312 = load ptr, ptr %7, align 8
  %1313 = zext i32 %1311 to i64
  %1314 = getelementptr inbounds i8, ptr %1312, i64 %1313
  store ptr %1314, ptr %7, align 8
  %1315 = load i32, ptr %15, align 4
  %1316 = load i32, ptr %10, align 4
  %1317 = sub i32 %1316, %1315
  store i32 %1317, ptr %10, align 4
  %1318 = load i32, ptr %15, align 4
  %1319 = load ptr, ptr %8, align 8
  %1320 = zext i32 %1318 to i64
  %1321 = getelementptr inbounds i8, ptr %1319, i64 %1320
  store ptr %1321, ptr %8, align 8
  %1322 = load i32, ptr %15, align 4
  %1323 = load ptr, ptr %6, align 8
  %1324 = getelementptr inbounds %struct.inflate_state, ptr %1323, i32 0, i32 17
  %1325 = load i32, ptr %1324, align 4
  %1326 = sub i32 %1325, %1322
  store i32 %1326, ptr %1324, align 4
  br label %2841

1327:                                             ; preds = %1281
  %1328 = load ptr, ptr %6, align 8
  %1329 = getelementptr inbounds %struct.inflate_state, ptr %1328, i32 0, i32 1
  store i32 16191, ptr %1329, align 8
  br label %2841

1330:                                             ; preds = %75
  br label %1331

1331:                                             ; preds = %1330
  br label %1332

1332:                                             ; preds = %1354, %1331
  %1333 = load i32, ptr %12, align 4
  %1334 = icmp ult i32 %1333, 14
  br i1 %1334, label %1335, label %1355

1335:                                             ; preds = %1332
  br label %1336

1336:                                             ; preds = %1335
  %1337 = load i32, ptr %9, align 4
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1339, label %1340

1339:                                             ; preds = %1336
  br label %2842

1340:                                             ; preds = %1336
  %1341 = load i32, ptr %9, align 4
  %1342 = add i32 %1341, -1
  store i32 %1342, ptr %9, align 4
  %1343 = load ptr, ptr %7, align 8
  %1344 = getelementptr inbounds i8, ptr %1343, i32 1
  store ptr %1344, ptr %7, align 8
  %1345 = load i8, ptr %1343, align 1
  %1346 = zext i8 %1345 to i64
  %1347 = load i32, ptr %12, align 4
  %1348 = zext i32 %1347 to i64
  %1349 = shl i64 %1346, %1348
  %1350 = load i64, ptr %11, align 8
  %1351 = add i64 %1350, %1349
  store i64 %1351, ptr %11, align 8
  %1352 = load i32, ptr %12, align 4
  %1353 = add i32 %1352, 8
  store i32 %1353, ptr %12, align 4
  br label %1354

1354:                                             ; preds = %1340
  br label %1332, !llvm.loop !18

1355:                                             ; preds = %1332
  br label %1356

1356:                                             ; preds = %1355
  %1357 = load i64, ptr %11, align 8
  %1358 = trunc i64 %1357 to i32
  %1359 = and i32 %1358, 31
  %1360 = add i32 %1359, 257
  %1361 = load ptr, ptr %6, align 8
  %1362 = getelementptr inbounds %struct.inflate_state, ptr %1361, i32 0, i32 25
  store i32 %1360, ptr %1362, align 4
  br label %1363

1363:                                             ; preds = %1356
  %1364 = load i64, ptr %11, align 8
  %1365 = lshr i64 %1364, 5
  store i64 %1365, ptr %11, align 8
  %1366 = load i32, ptr %12, align 4
  %1367 = sub i32 %1366, 5
  store i32 %1367, ptr %12, align 4
  br label %1368

1368:                                             ; preds = %1363
  %1369 = load i64, ptr %11, align 8
  %1370 = trunc i64 %1369 to i32
  %1371 = and i32 %1370, 31
  %1372 = add i32 %1371, 1
  %1373 = load ptr, ptr %6, align 8
  %1374 = getelementptr inbounds %struct.inflate_state, ptr %1373, i32 0, i32 26
  store i32 %1372, ptr %1374, align 8
  br label %1375

1375:                                             ; preds = %1368
  %1376 = load i64, ptr %11, align 8
  %1377 = lshr i64 %1376, 5
  store i64 %1377, ptr %11, align 8
  %1378 = load i32, ptr %12, align 4
  %1379 = sub i32 %1378, 5
  store i32 %1379, ptr %12, align 4
  br label %1380

1380:                                             ; preds = %1375
  %1381 = load i64, ptr %11, align 8
  %1382 = trunc i64 %1381 to i32
  %1383 = and i32 %1382, 15
  %1384 = add i32 %1383, 4
  %1385 = load ptr, ptr %6, align 8
  %1386 = getelementptr inbounds %struct.inflate_state, ptr %1385, i32 0, i32 24
  store i32 %1384, ptr %1386, align 8
  br label %1387

1387:                                             ; preds = %1380
  %1388 = load i64, ptr %11, align 8
  %1389 = lshr i64 %1388, 4
  store i64 %1389, ptr %11, align 8
  %1390 = load i32, ptr %12, align 4
  %1391 = sub i32 %1390, 4
  store i32 %1391, ptr %12, align 4
  br label %1392

1392:                                             ; preds = %1387
  %1393 = load ptr, ptr %6, align 8
  %1394 = getelementptr inbounds %struct.inflate_state, ptr %1393, i32 0, i32 25
  %1395 = load i32, ptr %1394, align 4
  %1396 = icmp ugt i32 %1395, 286
  br i1 %1396, label %1402, label %1397

1397:                                             ; preds = %1392
  %1398 = load ptr, ptr %6, align 8
  %1399 = getelementptr inbounds %struct.inflate_state, ptr %1398, i32 0, i32 26
  %1400 = load i32, ptr %1399, align 8
  %1401 = icmp ugt i32 %1400, 30
  br i1 %1401, label %1402, label %1407

1402:                                             ; preds = %1397, %1392
  %1403 = load ptr, ptr %4, align 8
  %1404 = getelementptr inbounds %struct.z_stream_s, ptr %1403, i32 0, i32 6
  store ptr @.str.8, ptr %1404, align 8
  %1405 = load ptr, ptr %6, align 8
  %1406 = getelementptr inbounds %struct.inflate_state, ptr %1405, i32 0, i32 1
  store i32 16209, ptr %1406, align 8
  br label %2841

1407:                                             ; preds = %1397
  %1408 = load ptr, ptr %6, align 8
  %1409 = getelementptr inbounds %struct.inflate_state, ptr %1408, i32 0, i32 27
  store i32 0, ptr %1409, align 4
  %1410 = load ptr, ptr %6, align 8
  %1411 = getelementptr inbounds %struct.inflate_state, ptr %1410, i32 0, i32 1
  store i32 16197, ptr %1411, align 8
  br label %1412

1412:                                             ; preds = %75, %1407
  br label %1413

1413:                                             ; preds = %1468, %1412
  %1414 = load ptr, ptr %6, align 8
  %1415 = getelementptr inbounds %struct.inflate_state, ptr %1414, i32 0, i32 27
  %1416 = load i32, ptr %1415, align 4
  %1417 = load ptr, ptr %6, align 8
  %1418 = getelementptr inbounds %struct.inflate_state, ptr %1417, i32 0, i32 24
  %1419 = load i32, ptr %1418, align 8
  %1420 = icmp ult i32 %1416, %1419
  br i1 %1420, label %1421, label %1469

1421:                                             ; preds = %1413
  br label %1422

1422:                                             ; preds = %1421
  br label %1423

1423:                                             ; preds = %1445, %1422
  %1424 = load i32, ptr %12, align 4
  %1425 = icmp ult i32 %1424, 3
  br i1 %1425, label %1426, label %1446

1426:                                             ; preds = %1423
  br label %1427

1427:                                             ; preds = %1426
  %1428 = load i32, ptr %9, align 4
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1430, label %1431

1430:                                             ; preds = %1427
  br label %2842

1431:                                             ; preds = %1427
  %1432 = load i32, ptr %9, align 4
  %1433 = add i32 %1432, -1
  store i32 %1433, ptr %9, align 4
  %1434 = load ptr, ptr %7, align 8
  %1435 = getelementptr inbounds i8, ptr %1434, i32 1
  store ptr %1435, ptr %7, align 8
  %1436 = load i8, ptr %1434, align 1
  %1437 = zext i8 %1436 to i64
  %1438 = load i32, ptr %12, align 4
  %1439 = zext i32 %1438 to i64
  %1440 = shl i64 %1437, %1439
  %1441 = load i64, ptr %11, align 8
  %1442 = add i64 %1441, %1440
  store i64 %1442, ptr %11, align 8
  %1443 = load i32, ptr %12, align 4
  %1444 = add i32 %1443, 8
  store i32 %1444, ptr %12, align 4
  br label %1445

1445:                                             ; preds = %1431
  br label %1423, !llvm.loop !19

1446:                                             ; preds = %1423
  br label %1447

1447:                                             ; preds = %1446
  %1448 = load i64, ptr %11, align 8
  %1449 = trunc i64 %1448 to i32
  %1450 = and i32 %1449, 7
  %1451 = trunc i32 %1450 to i16
  %1452 = load ptr, ptr %6, align 8
  %1453 = getelementptr inbounds %struct.inflate_state, ptr %1452, i32 0, i32 29
  %1454 = load ptr, ptr %6, align 8
  %1455 = getelementptr inbounds %struct.inflate_state, ptr %1454, i32 0, i32 27
  %1456 = load i32, ptr %1455, align 4
  %1457 = add i32 %1456, 1
  store i32 %1457, ptr %1455, align 4
  %1458 = zext i32 %1456 to i64
  %1459 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1458
  %1460 = load i16, ptr %1459, align 2
  %1461 = zext i16 %1460 to i64
  %1462 = getelementptr inbounds [320 x i16], ptr %1453, i64 0, i64 %1461
  store i16 %1451, ptr %1462, align 2
  br label %1463

1463:                                             ; preds = %1447
  %1464 = load i64, ptr %11, align 8
  %1465 = lshr i64 %1464, 3
  store i64 %1465, ptr %11, align 8
  %1466 = load i32, ptr %12, align 4
  %1467 = sub i32 %1466, 3
  store i32 %1467, ptr %12, align 4
  br label %1468

1468:                                             ; preds = %1463
  br label %1413, !llvm.loop !20

1469:                                             ; preds = %1413
  br label %1470

1470:                                             ; preds = %1475, %1469
  %1471 = load ptr, ptr %6, align 8
  %1472 = getelementptr inbounds %struct.inflate_state, ptr %1471, i32 0, i32 27
  %1473 = load i32, ptr %1472, align 4
  %1474 = icmp ult i32 %1473, 19
  br i1 %1474, label %1475, label %1487

1475:                                             ; preds = %1470
  %1476 = load ptr, ptr %6, align 8
  %1477 = getelementptr inbounds %struct.inflate_state, ptr %1476, i32 0, i32 29
  %1478 = load ptr, ptr %6, align 8
  %1479 = getelementptr inbounds %struct.inflate_state, ptr %1478, i32 0, i32 27
  %1480 = load i32, ptr %1479, align 4
  %1481 = add i32 %1480, 1
  store i32 %1481, ptr %1479, align 4
  %1482 = zext i32 %1480 to i64
  %1483 = getelementptr inbounds [19 x i16], ptr @inflate.order, i64 0, i64 %1482
  %1484 = load i16, ptr %1483, align 2
  %1485 = zext i16 %1484 to i64
  %1486 = getelementptr inbounds [320 x i16], ptr %1477, i64 0, i64 %1485
  store i16 0, ptr %1486, align 2
  br label %1470, !llvm.loop !21

1487:                                             ; preds = %1470
  %1488 = load ptr, ptr %6, align 8
  %1489 = getelementptr inbounds %struct.inflate_state, ptr %1488, i32 0, i32 31
  %1490 = getelementptr inbounds [1444 x %struct.code], ptr %1489, i64 0, i64 0
  %1491 = load ptr, ptr %6, align 8
  %1492 = getelementptr inbounds %struct.inflate_state, ptr %1491, i32 0, i32 28
  store ptr %1490, ptr %1492, align 8
  %1493 = load ptr, ptr %6, align 8
  %1494 = getelementptr inbounds %struct.inflate_state, ptr %1493, i32 0, i32 28
  %1495 = load ptr, ptr %1494, align 8
  %1496 = load ptr, ptr %6, align 8
  %1497 = getelementptr inbounds %struct.inflate_state, ptr %1496, i32 0, i32 21
  store ptr %1495, ptr %1497, align 8
  %1498 = load ptr, ptr %6, align 8
  %1499 = getelementptr inbounds %struct.inflate_state, ptr %1498, i32 0, i32 20
  store ptr %1495, ptr %1499, align 8
  %1500 = load ptr, ptr %6, align 8
  %1501 = getelementptr inbounds %struct.inflate_state, ptr %1500, i32 0, i32 22
  store i32 7, ptr %1501, align 8
  %1502 = load ptr, ptr %6, align 8
  %1503 = getelementptr inbounds %struct.inflate_state, ptr %1502, i32 0, i32 29
  %1504 = getelementptr inbounds [320 x i16], ptr %1503, i64 0, i64 0
  %1505 = load ptr, ptr %6, align 8
  %1506 = getelementptr inbounds %struct.inflate_state, ptr %1505, i32 0, i32 28
  %1507 = load ptr, ptr %6, align 8
  %1508 = getelementptr inbounds %struct.inflate_state, ptr %1507, i32 0, i32 22
  %1509 = load ptr, ptr %6, align 8
  %1510 = getelementptr inbounds %struct.inflate_state, ptr %1509, i32 0, i32 30
  %1511 = getelementptr inbounds [288 x i16], ptr %1510, i64 0, i64 0
  %1512 = call i32 @inflate_table(i32 noundef 0, ptr noundef %1504, i32 noundef 19, ptr noundef %1506, ptr noundef %1508, ptr noundef %1511)
  store i32 %1512, ptr %20, align 4
  %1513 = load i32, ptr %20, align 4
  %1514 = icmp ne i32 %1513, 0
  br i1 %1514, label %1515, label %1520

1515:                                             ; preds = %1487
  %1516 = load ptr, ptr %4, align 8
  %1517 = getelementptr inbounds %struct.z_stream_s, ptr %1516, i32 0, i32 6
  store ptr @.str.9, ptr %1517, align 8
  %1518 = load ptr, ptr %6, align 8
  %1519 = getelementptr inbounds %struct.inflate_state, ptr %1518, i32 0, i32 1
  store i32 16209, ptr %1519, align 8
  br label %2841

1520:                                             ; preds = %1487
  %1521 = load ptr, ptr %6, align 8
  %1522 = getelementptr inbounds %struct.inflate_state, ptr %1521, i32 0, i32 27
  store i32 0, ptr %1522, align 4
  %1523 = load ptr, ptr %6, align 8
  %1524 = getelementptr inbounds %struct.inflate_state, ptr %1523, i32 0, i32 1
  store i32 16198, ptr %1524, align 8
  br label %1525

1525:                                             ; preds = %75, %1520
  br label %1526

1526:                                             ; preds = %1837, %1525
  %1527 = load ptr, ptr %6, align 8
  %1528 = getelementptr inbounds %struct.inflate_state, ptr %1527, i32 0, i32 27
  %1529 = load i32, ptr %1528, align 4
  %1530 = load ptr, ptr %6, align 8
  %1531 = getelementptr inbounds %struct.inflate_state, ptr %1530, i32 0, i32 25
  %1532 = load i32, ptr %1531, align 4
  %1533 = load ptr, ptr %6, align 8
  %1534 = getelementptr inbounds %struct.inflate_state, ptr %1533, i32 0, i32 26
  %1535 = load i32, ptr %1534, align 8
  %1536 = add i32 %1532, %1535
  %1537 = icmp ult i32 %1529, %1536
  br i1 %1537, label %1538, label %1838

1538:                                             ; preds = %1526
  br label %1539

1539:                                             ; preds = %1578, %1538
  %1540 = load ptr, ptr %6, align 8
  %1541 = getelementptr inbounds %struct.inflate_state, ptr %1540, i32 0, i32 20
  %1542 = load ptr, ptr %1541, align 8
  %1543 = load i64, ptr %11, align 8
  %1544 = trunc i64 %1543 to i32
  %1545 = load ptr, ptr %6, align 8
  %1546 = getelementptr inbounds %struct.inflate_state, ptr %1545, i32 0, i32 22
  %1547 = load i32, ptr %1546, align 8
  %1548 = shl i32 1, %1547
  %1549 = sub i32 %1548, 1
  %1550 = and i32 %1544, %1549
  %1551 = zext i32 %1550 to i64
  %1552 = getelementptr inbounds %struct.code, ptr %1542, i64 %1551
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1552, i64 4, i1 false)
  %1553 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1554 = load i8, ptr %1553, align 1
  %1555 = zext i8 %1554 to i32
  %1556 = load i32, ptr %12, align 4
  %1557 = icmp ule i32 %1555, %1556
  br i1 %1557, label %1558, label %1559

1558:                                             ; preds = %1539
  br label %1579

1559:                                             ; preds = %1539
  br label %1560

1560:                                             ; preds = %1559
  %1561 = load i32, ptr %9, align 4
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1563, label %1564

1563:                                             ; preds = %1560
  br label %2842

1564:                                             ; preds = %1560
  %1565 = load i32, ptr %9, align 4
  %1566 = add i32 %1565, -1
  store i32 %1566, ptr %9, align 4
  %1567 = load ptr, ptr %7, align 8
  %1568 = getelementptr inbounds i8, ptr %1567, i32 1
  store ptr %1568, ptr %7, align 8
  %1569 = load i8, ptr %1567, align 1
  %1570 = zext i8 %1569 to i64
  %1571 = load i32, ptr %12, align 4
  %1572 = zext i32 %1571 to i64
  %1573 = shl i64 %1570, %1572
  %1574 = load i64, ptr %11, align 8
  %1575 = add i64 %1574, %1573
  store i64 %1575, ptr %11, align 8
  %1576 = load i32, ptr %12, align 4
  %1577 = add i32 %1576, 8
  store i32 %1577, ptr %12, align 4
  br label %1578

1578:                                             ; preds = %1564
  br label %1539

1579:                                             ; preds = %1558
  %1580 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %1581 = load i16, ptr %1580, align 2
  %1582 = zext i16 %1581 to i32
  %1583 = icmp slt i32 %1582, 16
  br i1 %1583, label %1584, label %1608

1584:                                             ; preds = %1579
  br label %1585

1585:                                             ; preds = %1584
  %1586 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1587 = load i8, ptr %1586, align 1
  %1588 = zext i8 %1587 to i32
  %1589 = load i64, ptr %11, align 8
  %1590 = zext i32 %1588 to i64
  %1591 = lshr i64 %1589, %1590
  store i64 %1591, ptr %11, align 8
  %1592 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1593 = load i8, ptr %1592, align 1
  %1594 = zext i8 %1593 to i32
  %1595 = load i32, ptr %12, align 4
  %1596 = sub i32 %1595, %1594
  store i32 %1596, ptr %12, align 4
  br label %1597

1597:                                             ; preds = %1585
  %1598 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %1599 = load i16, ptr %1598, align 2
  %1600 = load ptr, ptr %6, align 8
  %1601 = getelementptr inbounds %struct.inflate_state, ptr %1600, i32 0, i32 29
  %1602 = load ptr, ptr %6, align 8
  %1603 = getelementptr inbounds %struct.inflate_state, ptr %1602, i32 0, i32 27
  %1604 = load i32, ptr %1603, align 4
  %1605 = add i32 %1604, 1
  store i32 %1605, ptr %1603, align 4
  %1606 = zext i32 %1604 to i64
  %1607 = getelementptr inbounds [320 x i16], ptr %1601, i64 0, i64 %1606
  store i16 %1599, ptr %1607, align 2
  br label %1837

1608:                                             ; preds = %1579
  %1609 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %1610 = load i16, ptr %1609, align 2
  %1611 = zext i16 %1610 to i32
  %1612 = icmp eq i32 %1611, 16
  br i1 %1612, label %1613, label %1687

1613:                                             ; preds = %1608
  br label %1614

1614:                                             ; preds = %1613
  br label %1615

1615:                                             ; preds = %1641, %1614
  %1616 = load i32, ptr %12, align 4
  %1617 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1618 = load i8, ptr %1617, align 1
  %1619 = zext i8 %1618 to i32
  %1620 = add nsw i32 %1619, 2
  %1621 = icmp ult i32 %1616, %1620
  br i1 %1621, label %1622, label %1642

1622:                                             ; preds = %1615
  br label %1623

1623:                                             ; preds = %1622
  %1624 = load i32, ptr %9, align 4
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1626, label %1627

1626:                                             ; preds = %1623
  br label %2842

1627:                                             ; preds = %1623
  %1628 = load i32, ptr %9, align 4
  %1629 = add i32 %1628, -1
  store i32 %1629, ptr %9, align 4
  %1630 = load ptr, ptr %7, align 8
  %1631 = getelementptr inbounds i8, ptr %1630, i32 1
  store ptr %1631, ptr %7, align 8
  %1632 = load i8, ptr %1630, align 1
  %1633 = zext i8 %1632 to i64
  %1634 = load i32, ptr %12, align 4
  %1635 = zext i32 %1634 to i64
  %1636 = shl i64 %1633, %1635
  %1637 = load i64, ptr %11, align 8
  %1638 = add i64 %1637, %1636
  store i64 %1638, ptr %11, align 8
  %1639 = load i32, ptr %12, align 4
  %1640 = add i32 %1639, 8
  store i32 %1640, ptr %12, align 4
  br label %1641

1641:                                             ; preds = %1627
  br label %1615, !llvm.loop !22

1642:                                             ; preds = %1615
  br label %1643

1643:                                             ; preds = %1642
  br label %1644

1644:                                             ; preds = %1643
  %1645 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1646 = load i8, ptr %1645, align 1
  %1647 = zext i8 %1646 to i32
  %1648 = load i64, ptr %11, align 8
  %1649 = zext i32 %1647 to i64
  %1650 = lshr i64 %1648, %1649
  store i64 %1650, ptr %11, align 8
  %1651 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1652 = load i8, ptr %1651, align 1
  %1653 = zext i8 %1652 to i32
  %1654 = load i32, ptr %12, align 4
  %1655 = sub i32 %1654, %1653
  store i32 %1655, ptr %12, align 4
  br label %1656

1656:                                             ; preds = %1644
  %1657 = load ptr, ptr %6, align 8
  %1658 = getelementptr inbounds %struct.inflate_state, ptr %1657, i32 0, i32 27
  %1659 = load i32, ptr %1658, align 4
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1661, label %1666

1661:                                             ; preds = %1656
  %1662 = load ptr, ptr %4, align 8
  %1663 = getelementptr inbounds %struct.z_stream_s, ptr %1662, i32 0, i32 6
  store ptr @.str.10, ptr %1663, align 8
  %1664 = load ptr, ptr %6, align 8
  %1665 = getelementptr inbounds %struct.inflate_state, ptr %1664, i32 0, i32 1
  store i32 16209, ptr %1665, align 8
  br label %1838

1666:                                             ; preds = %1656
  %1667 = load ptr, ptr %6, align 8
  %1668 = getelementptr inbounds %struct.inflate_state, ptr %1667, i32 0, i32 29
  %1669 = load ptr, ptr %6, align 8
  %1670 = getelementptr inbounds %struct.inflate_state, ptr %1669, i32 0, i32 27
  %1671 = load i32, ptr %1670, align 4
  %1672 = sub i32 %1671, 1
  %1673 = zext i32 %1672 to i64
  %1674 = getelementptr inbounds [320 x i16], ptr %1668, i64 0, i64 %1673
  %1675 = load i16, ptr %1674, align 2
  %1676 = zext i16 %1675 to i32
  store i32 %1676, ptr %19, align 4
  %1677 = load i64, ptr %11, align 8
  %1678 = trunc i64 %1677 to i32
  %1679 = and i32 %1678, 3
  %1680 = add i32 3, %1679
  store i32 %1680, ptr %15, align 4
  br label %1681

1681:                                             ; preds = %1666
  %1682 = load i64, ptr %11, align 8
  %1683 = lshr i64 %1682, 2
  store i64 %1683, ptr %11, align 8
  %1684 = load i32, ptr %12, align 4
  %1685 = sub i32 %1684, 2
  store i32 %1685, ptr %12, align 4
  br label %1686

1686:                                             ; preds = %1681
  br label %1801

1687:                                             ; preds = %1608
  %1688 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %1689 = load i16, ptr %1688, align 2
  %1690 = zext i16 %1689 to i32
  %1691 = icmp eq i32 %1690, 17
  br i1 %1691, label %1692, label %1746

1692:                                             ; preds = %1687
  br label %1693

1693:                                             ; preds = %1692
  br label %1694

1694:                                             ; preds = %1720, %1693
  %1695 = load i32, ptr %12, align 4
  %1696 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1697 = load i8, ptr %1696, align 1
  %1698 = zext i8 %1697 to i32
  %1699 = add nsw i32 %1698, 3
  %1700 = icmp ult i32 %1695, %1699
  br i1 %1700, label %1701, label %1721

1701:                                             ; preds = %1694
  br label %1702

1702:                                             ; preds = %1701
  %1703 = load i32, ptr %9, align 4
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1705, label %1706

1705:                                             ; preds = %1702
  br label %2842

1706:                                             ; preds = %1702
  %1707 = load i32, ptr %9, align 4
  %1708 = add i32 %1707, -1
  store i32 %1708, ptr %9, align 4
  %1709 = load ptr, ptr %7, align 8
  %1710 = getelementptr inbounds i8, ptr %1709, i32 1
  store ptr %1710, ptr %7, align 8
  %1711 = load i8, ptr %1709, align 1
  %1712 = zext i8 %1711 to i64
  %1713 = load i32, ptr %12, align 4
  %1714 = zext i32 %1713 to i64
  %1715 = shl i64 %1712, %1714
  %1716 = load i64, ptr %11, align 8
  %1717 = add i64 %1716, %1715
  store i64 %1717, ptr %11, align 8
  %1718 = load i32, ptr %12, align 4
  %1719 = add i32 %1718, 8
  store i32 %1719, ptr %12, align 4
  br label %1720

1720:                                             ; preds = %1706
  br label %1694, !llvm.loop !23

1721:                                             ; preds = %1694
  br label %1722

1722:                                             ; preds = %1721
  br label %1723

1723:                                             ; preds = %1722
  %1724 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1725 = load i8, ptr %1724, align 1
  %1726 = zext i8 %1725 to i32
  %1727 = load i64, ptr %11, align 8
  %1728 = zext i32 %1726 to i64
  %1729 = lshr i64 %1727, %1728
  store i64 %1729, ptr %11, align 8
  %1730 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1731 = load i8, ptr %1730, align 1
  %1732 = zext i8 %1731 to i32
  %1733 = load i32, ptr %12, align 4
  %1734 = sub i32 %1733, %1732
  store i32 %1734, ptr %12, align 4
  br label %1735

1735:                                             ; preds = %1723
  store i32 0, ptr %19, align 4
  %1736 = load i64, ptr %11, align 8
  %1737 = trunc i64 %1736 to i32
  %1738 = and i32 %1737, 7
  %1739 = add i32 3, %1738
  store i32 %1739, ptr %15, align 4
  br label %1740

1740:                                             ; preds = %1735
  %1741 = load i64, ptr %11, align 8
  %1742 = lshr i64 %1741, 3
  store i64 %1742, ptr %11, align 8
  %1743 = load i32, ptr %12, align 4
  %1744 = sub i32 %1743, 3
  store i32 %1744, ptr %12, align 4
  br label %1745

1745:                                             ; preds = %1740
  br label %1800

1746:                                             ; preds = %1687
  br label %1747

1747:                                             ; preds = %1746
  br label %1748

1748:                                             ; preds = %1774, %1747
  %1749 = load i32, ptr %12, align 4
  %1750 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1751 = load i8, ptr %1750, align 1
  %1752 = zext i8 %1751 to i32
  %1753 = add nsw i32 %1752, 7
  %1754 = icmp ult i32 %1749, %1753
  br i1 %1754, label %1755, label %1775

1755:                                             ; preds = %1748
  br label %1756

1756:                                             ; preds = %1755
  %1757 = load i32, ptr %9, align 4
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1759, label %1760

1759:                                             ; preds = %1756
  br label %2842

1760:                                             ; preds = %1756
  %1761 = load i32, ptr %9, align 4
  %1762 = add i32 %1761, -1
  store i32 %1762, ptr %9, align 4
  %1763 = load ptr, ptr %7, align 8
  %1764 = getelementptr inbounds i8, ptr %1763, i32 1
  store ptr %1764, ptr %7, align 8
  %1765 = load i8, ptr %1763, align 1
  %1766 = zext i8 %1765 to i64
  %1767 = load i32, ptr %12, align 4
  %1768 = zext i32 %1767 to i64
  %1769 = shl i64 %1766, %1768
  %1770 = load i64, ptr %11, align 8
  %1771 = add i64 %1770, %1769
  store i64 %1771, ptr %11, align 8
  %1772 = load i32, ptr %12, align 4
  %1773 = add i32 %1772, 8
  store i32 %1773, ptr %12, align 4
  br label %1774

1774:                                             ; preds = %1760
  br label %1748, !llvm.loop !24

1775:                                             ; preds = %1748
  br label %1776

1776:                                             ; preds = %1775
  br label %1777

1777:                                             ; preds = %1776
  %1778 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1779 = load i8, ptr %1778, align 1
  %1780 = zext i8 %1779 to i32
  %1781 = load i64, ptr %11, align 8
  %1782 = zext i32 %1780 to i64
  %1783 = lshr i64 %1781, %1782
  store i64 %1783, ptr %11, align 8
  %1784 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %1785 = load i8, ptr %1784, align 1
  %1786 = zext i8 %1785 to i32
  %1787 = load i32, ptr %12, align 4
  %1788 = sub i32 %1787, %1786
  store i32 %1788, ptr %12, align 4
  br label %1789

1789:                                             ; preds = %1777
  store i32 0, ptr %19, align 4
  %1790 = load i64, ptr %11, align 8
  %1791 = trunc i64 %1790 to i32
  %1792 = and i32 %1791, 127
  %1793 = add i32 11, %1792
  store i32 %1793, ptr %15, align 4
  br label %1794

1794:                                             ; preds = %1789
  %1795 = load i64, ptr %11, align 8
  %1796 = lshr i64 %1795, 7
  store i64 %1796, ptr %11, align 8
  %1797 = load i32, ptr %12, align 4
  %1798 = sub i32 %1797, 7
  store i32 %1798, ptr %12, align 4
  br label %1799

1799:                                             ; preds = %1794
  br label %1800

1800:                                             ; preds = %1799, %1745
  br label %1801

1801:                                             ; preds = %1800, %1686
  %1802 = load ptr, ptr %6, align 8
  %1803 = getelementptr inbounds %struct.inflate_state, ptr %1802, i32 0, i32 27
  %1804 = load i32, ptr %1803, align 4
  %1805 = load i32, ptr %15, align 4
  %1806 = add i32 %1804, %1805
  %1807 = load ptr, ptr %6, align 8
  %1808 = getelementptr inbounds %struct.inflate_state, ptr %1807, i32 0, i32 25
  %1809 = load i32, ptr %1808, align 4
  %1810 = load ptr, ptr %6, align 8
  %1811 = getelementptr inbounds %struct.inflate_state, ptr %1810, i32 0, i32 26
  %1812 = load i32, ptr %1811, align 8
  %1813 = add i32 %1809, %1812
  %1814 = icmp ugt i32 %1806, %1813
  br i1 %1814, label %1815, label %1820

1815:                                             ; preds = %1801
  %1816 = load ptr, ptr %4, align 8
  %1817 = getelementptr inbounds %struct.z_stream_s, ptr %1816, i32 0, i32 6
  store ptr @.str.10, ptr %1817, align 8
  %1818 = load ptr, ptr %6, align 8
  %1819 = getelementptr inbounds %struct.inflate_state, ptr %1818, i32 0, i32 1
  store i32 16209, ptr %1819, align 8
  br label %1838

1820:                                             ; preds = %1801
  br label %1821

1821:                                             ; preds = %1825, %1820
  %1822 = load i32, ptr %15, align 4
  %1823 = add i32 %1822, -1
  store i32 %1823, ptr %15, align 4
  %1824 = icmp ne i32 %1822, 0
  br i1 %1824, label %1825, label %1836

1825:                                             ; preds = %1821
  %1826 = load i32, ptr %19, align 4
  %1827 = trunc i32 %1826 to i16
  %1828 = load ptr, ptr %6, align 8
  %1829 = getelementptr inbounds %struct.inflate_state, ptr %1828, i32 0, i32 29
  %1830 = load ptr, ptr %6, align 8
  %1831 = getelementptr inbounds %struct.inflate_state, ptr %1830, i32 0, i32 27
  %1832 = load i32, ptr %1831, align 4
  %1833 = add i32 %1832, 1
  store i32 %1833, ptr %1831, align 4
  %1834 = zext i32 %1832 to i64
  %1835 = getelementptr inbounds [320 x i16], ptr %1829, i64 0, i64 %1834
  store i16 %1827, ptr %1835, align 2
  br label %1821, !llvm.loop !25

1836:                                             ; preds = %1821
  br label %1837

1837:                                             ; preds = %1836, %1597
  br label %1526, !llvm.loop !26

1838:                                             ; preds = %1815, %1661, %1526
  %1839 = load ptr, ptr %6, align 8
  %1840 = getelementptr inbounds %struct.inflate_state, ptr %1839, i32 0, i32 1
  %1841 = load i32, ptr %1840, align 8
  %1842 = icmp eq i32 %1841, 16209
  br i1 %1842, label %1843, label %1844

1843:                                             ; preds = %1838
  br label %2841

1844:                                             ; preds = %1838
  %1845 = load ptr, ptr %6, align 8
  %1846 = getelementptr inbounds %struct.inflate_state, ptr %1845, i32 0, i32 29
  %1847 = getelementptr inbounds [320 x i16], ptr %1846, i64 0, i64 256
  %1848 = load i16, ptr %1847, align 8
  %1849 = zext i16 %1848 to i32
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1851, label %1856

1851:                                             ; preds = %1844
  %1852 = load ptr, ptr %4, align 8
  %1853 = getelementptr inbounds %struct.z_stream_s, ptr %1852, i32 0, i32 6
  store ptr @.str.11, ptr %1853, align 8
  %1854 = load ptr, ptr %6, align 8
  %1855 = getelementptr inbounds %struct.inflate_state, ptr %1854, i32 0, i32 1
  store i32 16209, ptr %1855, align 8
  br label %2841

1856:                                             ; preds = %1844
  %1857 = load ptr, ptr %6, align 8
  %1858 = getelementptr inbounds %struct.inflate_state, ptr %1857, i32 0, i32 31
  %1859 = getelementptr inbounds [1444 x %struct.code], ptr %1858, i64 0, i64 0
  %1860 = load ptr, ptr %6, align 8
  %1861 = getelementptr inbounds %struct.inflate_state, ptr %1860, i32 0, i32 28
  store ptr %1859, ptr %1861, align 8
  %1862 = load ptr, ptr %6, align 8
  %1863 = getelementptr inbounds %struct.inflate_state, ptr %1862, i32 0, i32 28
  %1864 = load ptr, ptr %1863, align 8
  %1865 = load ptr, ptr %6, align 8
  %1866 = getelementptr inbounds %struct.inflate_state, ptr %1865, i32 0, i32 20
  store ptr %1864, ptr %1866, align 8
  %1867 = load ptr, ptr %6, align 8
  %1868 = getelementptr inbounds %struct.inflate_state, ptr %1867, i32 0, i32 22
  store i32 9, ptr %1868, align 8
  %1869 = load ptr, ptr %6, align 8
  %1870 = getelementptr inbounds %struct.inflate_state, ptr %1869, i32 0, i32 29
  %1871 = getelementptr inbounds [320 x i16], ptr %1870, i64 0, i64 0
  %1872 = load ptr, ptr %6, align 8
  %1873 = getelementptr inbounds %struct.inflate_state, ptr %1872, i32 0, i32 25
  %1874 = load i32, ptr %1873, align 4
  %1875 = load ptr, ptr %6, align 8
  %1876 = getelementptr inbounds %struct.inflate_state, ptr %1875, i32 0, i32 28
  %1877 = load ptr, ptr %6, align 8
  %1878 = getelementptr inbounds %struct.inflate_state, ptr %1877, i32 0, i32 22
  %1879 = load ptr, ptr %6, align 8
  %1880 = getelementptr inbounds %struct.inflate_state, ptr %1879, i32 0, i32 30
  %1881 = getelementptr inbounds [288 x i16], ptr %1880, i64 0, i64 0
  %1882 = call i32 @inflate_table(i32 noundef 1, ptr noundef %1871, i32 noundef %1874, ptr noundef %1876, ptr noundef %1878, ptr noundef %1881)
  store i32 %1882, ptr %20, align 4
  %1883 = load i32, ptr %20, align 4
  %1884 = icmp ne i32 %1883, 0
  br i1 %1884, label %1885, label %1890

1885:                                             ; preds = %1856
  %1886 = load ptr, ptr %4, align 8
  %1887 = getelementptr inbounds %struct.z_stream_s, ptr %1886, i32 0, i32 6
  store ptr @.str.12, ptr %1887, align 8
  %1888 = load ptr, ptr %6, align 8
  %1889 = getelementptr inbounds %struct.inflate_state, ptr %1888, i32 0, i32 1
  store i32 16209, ptr %1889, align 8
  br label %2841

1890:                                             ; preds = %1856
  %1891 = load ptr, ptr %6, align 8
  %1892 = getelementptr inbounds %struct.inflate_state, ptr %1891, i32 0, i32 28
  %1893 = load ptr, ptr %1892, align 8
  %1894 = load ptr, ptr %6, align 8
  %1895 = getelementptr inbounds %struct.inflate_state, ptr %1894, i32 0, i32 21
  store ptr %1893, ptr %1895, align 8
  %1896 = load ptr, ptr %6, align 8
  %1897 = getelementptr inbounds %struct.inflate_state, ptr %1896, i32 0, i32 23
  store i32 6, ptr %1897, align 4
  %1898 = load ptr, ptr %6, align 8
  %1899 = getelementptr inbounds %struct.inflate_state, ptr %1898, i32 0, i32 29
  %1900 = getelementptr inbounds [320 x i16], ptr %1899, i64 0, i64 0
  %1901 = load ptr, ptr %6, align 8
  %1902 = getelementptr inbounds %struct.inflate_state, ptr %1901, i32 0, i32 25
  %1903 = load i32, ptr %1902, align 4
  %1904 = zext i32 %1903 to i64
  %1905 = getelementptr inbounds i16, ptr %1900, i64 %1904
  %1906 = load ptr, ptr %6, align 8
  %1907 = getelementptr inbounds %struct.inflate_state, ptr %1906, i32 0, i32 26
  %1908 = load i32, ptr %1907, align 8
  %1909 = load ptr, ptr %6, align 8
  %1910 = getelementptr inbounds %struct.inflate_state, ptr %1909, i32 0, i32 28
  %1911 = load ptr, ptr %6, align 8
  %1912 = getelementptr inbounds %struct.inflate_state, ptr %1911, i32 0, i32 23
  %1913 = load ptr, ptr %6, align 8
  %1914 = getelementptr inbounds %struct.inflate_state, ptr %1913, i32 0, i32 30
  %1915 = getelementptr inbounds [288 x i16], ptr %1914, i64 0, i64 0
  %1916 = call i32 @inflate_table(i32 noundef 2, ptr noundef %1905, i32 noundef %1908, ptr noundef %1910, ptr noundef %1912, ptr noundef %1915)
  store i32 %1916, ptr %20, align 4
  %1917 = load i32, ptr %20, align 4
  %1918 = icmp ne i32 %1917, 0
  br i1 %1918, label %1919, label %1924

1919:                                             ; preds = %1890
  %1920 = load ptr, ptr %4, align 8
  %1921 = getelementptr inbounds %struct.z_stream_s, ptr %1920, i32 0, i32 6
  store ptr @.str.13, ptr %1921, align 8
  %1922 = load ptr, ptr %6, align 8
  %1923 = getelementptr inbounds %struct.inflate_state, ptr %1922, i32 0, i32 1
  store i32 16209, ptr %1923, align 8
  br label %2841

1924:                                             ; preds = %1890
  %1925 = load ptr, ptr %6, align 8
  %1926 = getelementptr inbounds %struct.inflate_state, ptr %1925, i32 0, i32 1
  store i32 16199, ptr %1926, align 8
  %1927 = load i32, ptr %5, align 4
  %1928 = icmp eq i32 %1927, 6
  br i1 %1928, label %1929, label %1930

1929:                                             ; preds = %1924
  br label %2842

1930:                                             ; preds = %1924
  br label %1931

1931:                                             ; preds = %75, %1930
  %1932 = load ptr, ptr %6, align 8
  %1933 = getelementptr inbounds %struct.inflate_state, ptr %1932, i32 0, i32 1
  store i32 16200, ptr %1933, align 8
  br label %1934

1934:                                             ; preds = %75, %1931
  %1935 = load i32, ptr %9, align 4
  %1936 = icmp uge i32 %1935, 6
  br i1 %1936, label %1937, label %1991

1937:                                             ; preds = %1934
  %1938 = load i32, ptr %10, align 4
  %1939 = icmp uge i32 %1938, 258
  br i1 %1939, label %1940, label %1991

1940:                                             ; preds = %1937
  br label %1941

1941:                                             ; preds = %1940
  %1942 = load ptr, ptr %8, align 8
  %1943 = load ptr, ptr %4, align 8
  %1944 = getelementptr inbounds %struct.z_stream_s, ptr %1943, i32 0, i32 3
  store ptr %1942, ptr %1944, align 8
  %1945 = load i32, ptr %10, align 4
  %1946 = load ptr, ptr %4, align 8
  %1947 = getelementptr inbounds %struct.z_stream_s, ptr %1946, i32 0, i32 4
  store i32 %1945, ptr %1947, align 8
  %1948 = load ptr, ptr %7, align 8
  %1949 = load ptr, ptr %4, align 8
  %1950 = getelementptr inbounds %struct.z_stream_s, ptr %1949, i32 0, i32 0
  store ptr %1948, ptr %1950, align 8
  %1951 = load i32, ptr %9, align 4
  %1952 = load ptr, ptr %4, align 8
  %1953 = getelementptr inbounds %struct.z_stream_s, ptr %1952, i32 0, i32 1
  store i32 %1951, ptr %1953, align 8
  %1954 = load i64, ptr %11, align 8
  %1955 = load ptr, ptr %6, align 8
  %1956 = getelementptr inbounds %struct.inflate_state, ptr %1955, i32 0, i32 15
  store i64 %1954, ptr %1956, align 8
  %1957 = load i32, ptr %12, align 4
  %1958 = load ptr, ptr %6, align 8
  %1959 = getelementptr inbounds %struct.inflate_state, ptr %1958, i32 0, i32 16
  store i32 %1957, ptr %1959, align 8
  br label %1960

1960:                                             ; preds = %1941
  %1961 = load ptr, ptr %4, align 8
  %1962 = load i32, ptr %14, align 4
  call void @inflate_fast(ptr noundef %1961, i32 noundef %1962)
  br label %1963

1963:                                             ; preds = %1960
  %1964 = load ptr, ptr %4, align 8
  %1965 = getelementptr inbounds %struct.z_stream_s, ptr %1964, i32 0, i32 3
  %1966 = load ptr, ptr %1965, align 8
  store ptr %1966, ptr %8, align 8
  %1967 = load ptr, ptr %4, align 8
  %1968 = getelementptr inbounds %struct.z_stream_s, ptr %1967, i32 0, i32 4
  %1969 = load i32, ptr %1968, align 8
  store i32 %1969, ptr %10, align 4
  %1970 = load ptr, ptr %4, align 8
  %1971 = getelementptr inbounds %struct.z_stream_s, ptr %1970, i32 0, i32 0
  %1972 = load ptr, ptr %1971, align 8
  store ptr %1972, ptr %7, align 8
  %1973 = load ptr, ptr %4, align 8
  %1974 = getelementptr inbounds %struct.z_stream_s, ptr %1973, i32 0, i32 1
  %1975 = load i32, ptr %1974, align 8
  store i32 %1975, ptr %9, align 4
  %1976 = load ptr, ptr %6, align 8
  %1977 = getelementptr inbounds %struct.inflate_state, ptr %1976, i32 0, i32 15
  %1978 = load i64, ptr %1977, align 8
  store i64 %1978, ptr %11, align 8
  %1979 = load ptr, ptr %6, align 8
  %1980 = getelementptr inbounds %struct.inflate_state, ptr %1979, i32 0, i32 16
  %1981 = load i32, ptr %1980, align 8
  store i32 %1981, ptr %12, align 4
  br label %1982

1982:                                             ; preds = %1963
  %1983 = load ptr, ptr %6, align 8
  %1984 = getelementptr inbounds %struct.inflate_state, ptr %1983, i32 0, i32 1
  %1985 = load i32, ptr %1984, align 8
  %1986 = icmp eq i32 %1985, 16191
  br i1 %1986, label %1987, label %1990

1987:                                             ; preds = %1982
  %1988 = load ptr, ptr %6, align 8
  %1989 = getelementptr inbounds %struct.inflate_state, ptr %1988, i32 0, i32 33
  store i32 -1, ptr %1989, align 4
  br label %1990

1990:                                             ; preds = %1987, %1982
  br label %2841

1991:                                             ; preds = %1937, %1934
  %1992 = load ptr, ptr %6, align 8
  %1993 = getelementptr inbounds %struct.inflate_state, ptr %1992, i32 0, i32 33
  store i32 0, ptr %1993, align 4
  br label %1994

1994:                                             ; preds = %2033, %1991
  %1995 = load ptr, ptr %6, align 8
  %1996 = getelementptr inbounds %struct.inflate_state, ptr %1995, i32 0, i32 20
  %1997 = load ptr, ptr %1996, align 8
  %1998 = load i64, ptr %11, align 8
  %1999 = trunc i64 %1998 to i32
  %2000 = load ptr, ptr %6, align 8
  %2001 = getelementptr inbounds %struct.inflate_state, ptr %2000, i32 0, i32 22
  %2002 = load i32, ptr %2001, align 8
  %2003 = shl i32 1, %2002
  %2004 = sub i32 %2003, 1
  %2005 = and i32 %1999, %2004
  %2006 = zext i32 %2005 to i64
  %2007 = getelementptr inbounds %struct.code, ptr %1997, i64 %2006
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %2007, i64 4, i1 false)
  %2008 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2009 = load i8, ptr %2008, align 1
  %2010 = zext i8 %2009 to i32
  %2011 = load i32, ptr %12, align 4
  %2012 = icmp ule i32 %2010, %2011
  br i1 %2012, label %2013, label %2014

2013:                                             ; preds = %1994
  br label %2034

2014:                                             ; preds = %1994
  br label %2015

2015:                                             ; preds = %2014
  %2016 = load i32, ptr %9, align 4
  %2017 = icmp eq i32 %2016, 0
  br i1 %2017, label %2018, label %2019

2018:                                             ; preds = %2015
  br label %2842

2019:                                             ; preds = %2015
  %2020 = load i32, ptr %9, align 4
  %2021 = add i32 %2020, -1
  store i32 %2021, ptr %9, align 4
  %2022 = load ptr, ptr %7, align 8
  %2023 = getelementptr inbounds i8, ptr %2022, i32 1
  store ptr %2023, ptr %7, align 8
  %2024 = load i8, ptr %2022, align 1
  %2025 = zext i8 %2024 to i64
  %2026 = load i32, ptr %12, align 4
  %2027 = zext i32 %2026 to i64
  %2028 = shl i64 %2025, %2027
  %2029 = load i64, ptr %11, align 8
  %2030 = add i64 %2029, %2028
  store i64 %2030, ptr %11, align 8
  %2031 = load i32, ptr %12, align 4
  %2032 = add i32 %2031, 8
  store i32 %2032, ptr %12, align 4
  br label %2033

2033:                                             ; preds = %2019
  br label %1994

2034:                                             ; preds = %2013
  %2035 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2036 = load i8, ptr %2035, align 2
  %2037 = zext i8 %2036 to i32
  %2038 = icmp ne i32 %2037, 0
  br i1 %2038, label %2039, label %2123

2039:                                             ; preds = %2034
  %2040 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2041 = load i8, ptr %2040, align 2
  %2042 = zext i8 %2041 to i32
  %2043 = and i32 %2042, 240
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2045, label %2123

2045:                                             ; preds = %2039
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %17, i64 4, i1 false)
  br label %2046

2046:                                             ; preds = %2101, %2045
  %2047 = load ptr, ptr %6, align 8
  %2048 = getelementptr inbounds %struct.inflate_state, ptr %2047, i32 0, i32 20
  %2049 = load ptr, ptr %2048, align 8
  %2050 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 2
  %2051 = load i16, ptr %2050, align 2
  %2052 = zext i16 %2051 to i32
  %2053 = load i64, ptr %11, align 8
  %2054 = trunc i64 %2053 to i32
  %2055 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2056 = load i8, ptr %2055, align 1
  %2057 = zext i8 %2056 to i32
  %2058 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 0
  %2059 = load i8, ptr %2058, align 2
  %2060 = zext i8 %2059 to i32
  %2061 = add nsw i32 %2057, %2060
  %2062 = shl i32 1, %2061
  %2063 = sub i32 %2062, 1
  %2064 = and i32 %2054, %2063
  %2065 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2066 = load i8, ptr %2065, align 1
  %2067 = zext i8 %2066 to i32
  %2068 = lshr i32 %2064, %2067
  %2069 = add i32 %2052, %2068
  %2070 = zext i32 %2069 to i64
  %2071 = getelementptr inbounds %struct.code, ptr %2049, i64 %2070
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %2071, i64 4, i1 false)
  %2072 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2073 = load i8, ptr %2072, align 1
  %2074 = zext i8 %2073 to i32
  %2075 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2076 = load i8, ptr %2075, align 1
  %2077 = zext i8 %2076 to i32
  %2078 = add nsw i32 %2074, %2077
  %2079 = load i32, ptr %12, align 4
  %2080 = icmp ule i32 %2078, %2079
  br i1 %2080, label %2081, label %2082

2081:                                             ; preds = %2046
  br label %2102

2082:                                             ; preds = %2046
  br label %2083

2083:                                             ; preds = %2082
  %2084 = load i32, ptr %9, align 4
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2086, label %2087

2086:                                             ; preds = %2083
  br label %2842

2087:                                             ; preds = %2083
  %2088 = load i32, ptr %9, align 4
  %2089 = add i32 %2088, -1
  store i32 %2089, ptr %9, align 4
  %2090 = load ptr, ptr %7, align 8
  %2091 = getelementptr inbounds i8, ptr %2090, i32 1
  store ptr %2091, ptr %7, align 8
  %2092 = load i8, ptr %2090, align 1
  %2093 = zext i8 %2092 to i64
  %2094 = load i32, ptr %12, align 4
  %2095 = zext i32 %2094 to i64
  %2096 = shl i64 %2093, %2095
  %2097 = load i64, ptr %11, align 8
  %2098 = add i64 %2097, %2096
  store i64 %2098, ptr %11, align 8
  %2099 = load i32, ptr %12, align 4
  %2100 = add i32 %2099, 8
  store i32 %2100, ptr %12, align 4
  br label %2101

2101:                                             ; preds = %2087
  br label %2046

2102:                                             ; preds = %2081
  br label %2103

2103:                                             ; preds = %2102
  %2104 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2105 = load i8, ptr %2104, align 1
  %2106 = zext i8 %2105 to i32
  %2107 = load i64, ptr %11, align 8
  %2108 = zext i32 %2106 to i64
  %2109 = lshr i64 %2107, %2108
  store i64 %2109, ptr %11, align 8
  %2110 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2111 = load i8, ptr %2110, align 1
  %2112 = zext i8 %2111 to i32
  %2113 = load i32, ptr %12, align 4
  %2114 = sub i32 %2113, %2112
  store i32 %2114, ptr %12, align 4
  br label %2115

2115:                                             ; preds = %2103
  %2116 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2117 = load i8, ptr %2116, align 1
  %2118 = zext i8 %2117 to i32
  %2119 = load ptr, ptr %6, align 8
  %2120 = getelementptr inbounds %struct.inflate_state, ptr %2119, i32 0, i32 33
  %2121 = load i32, ptr %2120, align 4
  %2122 = add nsw i32 %2121, %2118
  store i32 %2122, ptr %2120, align 4
  br label %2123

2123:                                             ; preds = %2115, %2039, %2034
  br label %2124

2124:                                             ; preds = %2123
  %2125 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2126 = load i8, ptr %2125, align 1
  %2127 = zext i8 %2126 to i32
  %2128 = load i64, ptr %11, align 8
  %2129 = zext i32 %2127 to i64
  %2130 = lshr i64 %2128, %2129
  store i64 %2130, ptr %11, align 8
  %2131 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2132 = load i8, ptr %2131, align 1
  %2133 = zext i8 %2132 to i32
  %2134 = load i32, ptr %12, align 4
  %2135 = sub i32 %2134, %2133
  store i32 %2135, ptr %12, align 4
  br label %2136

2136:                                             ; preds = %2124
  %2137 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2138 = load i8, ptr %2137, align 1
  %2139 = zext i8 %2138 to i32
  %2140 = load ptr, ptr %6, align 8
  %2141 = getelementptr inbounds %struct.inflate_state, ptr %2140, i32 0, i32 33
  %2142 = load i32, ptr %2141, align 4
  %2143 = add nsw i32 %2142, %2139
  store i32 %2143, ptr %2141, align 4
  %2144 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %2145 = load i16, ptr %2144, align 2
  %2146 = zext i16 %2145 to i32
  %2147 = load ptr, ptr %6, align 8
  %2148 = getelementptr inbounds %struct.inflate_state, ptr %2147, i32 0, i32 17
  store i32 %2146, ptr %2148, align 4
  %2149 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2150 = load i8, ptr %2149, align 2
  %2151 = zext i8 %2150 to i32
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2153, label %2156

2153:                                             ; preds = %2136
  %2154 = load ptr, ptr %6, align 8
  %2155 = getelementptr inbounds %struct.inflate_state, ptr %2154, i32 0, i32 1
  store i32 16205, ptr %2155, align 8
  br label %2841

2156:                                             ; preds = %2136
  %2157 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2158 = load i8, ptr %2157, align 2
  %2159 = zext i8 %2158 to i32
  %2160 = and i32 %2159, 32
  %2161 = icmp ne i32 %2160, 0
  br i1 %2161, label %2162, label %2167

2162:                                             ; preds = %2156
  %2163 = load ptr, ptr %6, align 8
  %2164 = getelementptr inbounds %struct.inflate_state, ptr %2163, i32 0, i32 33
  store i32 -1, ptr %2164, align 4
  %2165 = load ptr, ptr %6, align 8
  %2166 = getelementptr inbounds %struct.inflate_state, ptr %2165, i32 0, i32 1
  store i32 16191, ptr %2166, align 8
  br label %2841

2167:                                             ; preds = %2156
  %2168 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2169 = load i8, ptr %2168, align 2
  %2170 = zext i8 %2169 to i32
  %2171 = and i32 %2170, 64
  %2172 = icmp ne i32 %2171, 0
  br i1 %2172, label %2173, label %2178

2173:                                             ; preds = %2167
  %2174 = load ptr, ptr %4, align 8
  %2175 = getelementptr inbounds %struct.z_stream_s, ptr %2174, i32 0, i32 6
  store ptr @.str.14, ptr %2175, align 8
  %2176 = load ptr, ptr %6, align 8
  %2177 = getelementptr inbounds %struct.inflate_state, ptr %2176, i32 0, i32 1
  store i32 16209, ptr %2177, align 8
  br label %2841

2178:                                             ; preds = %2167
  %2179 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2180 = load i8, ptr %2179, align 2
  %2181 = zext i8 %2180 to i32
  %2182 = and i32 %2181, 15
  %2183 = load ptr, ptr %6, align 8
  %2184 = getelementptr inbounds %struct.inflate_state, ptr %2183, i32 0, i32 19
  store i32 %2182, ptr %2184, align 4
  %2185 = load ptr, ptr %6, align 8
  %2186 = getelementptr inbounds %struct.inflate_state, ptr %2185, i32 0, i32 1
  store i32 16201, ptr %2186, align 8
  br label %2187

2187:                                             ; preds = %75, %2178
  %2188 = load ptr, ptr %6, align 8
  %2189 = getelementptr inbounds %struct.inflate_state, ptr %2188, i32 0, i32 19
  %2190 = load i32, ptr %2189, align 4
  %2191 = icmp ne i32 %2190, 0
  br i1 %2191, label %2192, label %2254

2192:                                             ; preds = %2187
  br label %2193

2193:                                             ; preds = %2192
  br label %2194

2194:                                             ; preds = %2219, %2193
  %2195 = load i32, ptr %12, align 4
  %2196 = load ptr, ptr %6, align 8
  %2197 = getelementptr inbounds %struct.inflate_state, ptr %2196, i32 0, i32 19
  %2198 = load i32, ptr %2197, align 4
  %2199 = icmp ult i32 %2195, %2198
  br i1 %2199, label %2200, label %2220

2200:                                             ; preds = %2194
  br label %2201

2201:                                             ; preds = %2200
  %2202 = load i32, ptr %9, align 4
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2204, label %2205

2204:                                             ; preds = %2201
  br label %2842

2205:                                             ; preds = %2201
  %2206 = load i32, ptr %9, align 4
  %2207 = add i32 %2206, -1
  store i32 %2207, ptr %9, align 4
  %2208 = load ptr, ptr %7, align 8
  %2209 = getelementptr inbounds i8, ptr %2208, i32 1
  store ptr %2209, ptr %7, align 8
  %2210 = load i8, ptr %2208, align 1
  %2211 = zext i8 %2210 to i64
  %2212 = load i32, ptr %12, align 4
  %2213 = zext i32 %2212 to i64
  %2214 = shl i64 %2211, %2213
  %2215 = load i64, ptr %11, align 8
  %2216 = add i64 %2215, %2214
  store i64 %2216, ptr %11, align 8
  %2217 = load i32, ptr %12, align 4
  %2218 = add i32 %2217, 8
  store i32 %2218, ptr %12, align 4
  br label %2219

2219:                                             ; preds = %2205
  br label %2194, !llvm.loop !27

2220:                                             ; preds = %2194
  br label %2221

2221:                                             ; preds = %2220
  %2222 = load i64, ptr %11, align 8
  %2223 = trunc i64 %2222 to i32
  %2224 = load ptr, ptr %6, align 8
  %2225 = getelementptr inbounds %struct.inflate_state, ptr %2224, i32 0, i32 19
  %2226 = load i32, ptr %2225, align 4
  %2227 = shl i32 1, %2226
  %2228 = sub i32 %2227, 1
  %2229 = and i32 %2223, %2228
  %2230 = load ptr, ptr %6, align 8
  %2231 = getelementptr inbounds %struct.inflate_state, ptr %2230, i32 0, i32 17
  %2232 = load i32, ptr %2231, align 4
  %2233 = add i32 %2232, %2229
  store i32 %2233, ptr %2231, align 4
  br label %2234

2234:                                             ; preds = %2221
  %2235 = load ptr, ptr %6, align 8
  %2236 = getelementptr inbounds %struct.inflate_state, ptr %2235, i32 0, i32 19
  %2237 = load i32, ptr %2236, align 4
  %2238 = load i64, ptr %11, align 8
  %2239 = zext i32 %2237 to i64
  %2240 = lshr i64 %2238, %2239
  store i64 %2240, ptr %11, align 8
  %2241 = load ptr, ptr %6, align 8
  %2242 = getelementptr inbounds %struct.inflate_state, ptr %2241, i32 0, i32 19
  %2243 = load i32, ptr %2242, align 4
  %2244 = load i32, ptr %12, align 4
  %2245 = sub i32 %2244, %2243
  store i32 %2245, ptr %12, align 4
  br label %2246

2246:                                             ; preds = %2234
  %2247 = load ptr, ptr %6, align 8
  %2248 = getelementptr inbounds %struct.inflate_state, ptr %2247, i32 0, i32 19
  %2249 = load i32, ptr %2248, align 4
  %2250 = load ptr, ptr %6, align 8
  %2251 = getelementptr inbounds %struct.inflate_state, ptr %2250, i32 0, i32 33
  %2252 = load i32, ptr %2251, align 4
  %2253 = add i32 %2252, %2249
  store i32 %2253, ptr %2251, align 4
  br label %2254

2254:                                             ; preds = %2246, %2187
  %2255 = load ptr, ptr %6, align 8
  %2256 = getelementptr inbounds %struct.inflate_state, ptr %2255, i32 0, i32 17
  %2257 = load i32, ptr %2256, align 4
  %2258 = load ptr, ptr %6, align 8
  %2259 = getelementptr inbounds %struct.inflate_state, ptr %2258, i32 0, i32 34
  store i32 %2257, ptr %2259, align 8
  %2260 = load ptr, ptr %6, align 8
  %2261 = getelementptr inbounds %struct.inflate_state, ptr %2260, i32 0, i32 1
  store i32 16202, ptr %2261, align 8
  br label %2262

2262:                                             ; preds = %75, %2254
  br label %2263

2263:                                             ; preds = %2302, %2262
  %2264 = load ptr, ptr %6, align 8
  %2265 = getelementptr inbounds %struct.inflate_state, ptr %2264, i32 0, i32 21
  %2266 = load ptr, ptr %2265, align 8
  %2267 = load i64, ptr %11, align 8
  %2268 = trunc i64 %2267 to i32
  %2269 = load ptr, ptr %6, align 8
  %2270 = getelementptr inbounds %struct.inflate_state, ptr %2269, i32 0, i32 23
  %2271 = load i32, ptr %2270, align 4
  %2272 = shl i32 1, %2271
  %2273 = sub i32 %2272, 1
  %2274 = and i32 %2268, %2273
  %2275 = zext i32 %2274 to i64
  %2276 = getelementptr inbounds %struct.code, ptr %2266, i64 %2275
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %2276, i64 4, i1 false)
  %2277 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2278 = load i8, ptr %2277, align 1
  %2279 = zext i8 %2278 to i32
  %2280 = load i32, ptr %12, align 4
  %2281 = icmp ule i32 %2279, %2280
  br i1 %2281, label %2282, label %2283

2282:                                             ; preds = %2263
  br label %2303

2283:                                             ; preds = %2263
  br label %2284

2284:                                             ; preds = %2283
  %2285 = load i32, ptr %9, align 4
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2287, label %2288

2287:                                             ; preds = %2284
  br label %2842

2288:                                             ; preds = %2284
  %2289 = load i32, ptr %9, align 4
  %2290 = add i32 %2289, -1
  store i32 %2290, ptr %9, align 4
  %2291 = load ptr, ptr %7, align 8
  %2292 = getelementptr inbounds i8, ptr %2291, i32 1
  store ptr %2292, ptr %7, align 8
  %2293 = load i8, ptr %2291, align 1
  %2294 = zext i8 %2293 to i64
  %2295 = load i32, ptr %12, align 4
  %2296 = zext i32 %2295 to i64
  %2297 = shl i64 %2294, %2296
  %2298 = load i64, ptr %11, align 8
  %2299 = add i64 %2298, %2297
  store i64 %2299, ptr %11, align 8
  %2300 = load i32, ptr %12, align 4
  %2301 = add i32 %2300, 8
  store i32 %2301, ptr %12, align 4
  br label %2302

2302:                                             ; preds = %2288
  br label %2263

2303:                                             ; preds = %2282
  %2304 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2305 = load i8, ptr %2304, align 2
  %2306 = zext i8 %2305 to i32
  %2307 = and i32 %2306, 240
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2309, label %2387

2309:                                             ; preds = %2303
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %17, i64 4, i1 false)
  br label %2310

2310:                                             ; preds = %2365, %2309
  %2311 = load ptr, ptr %6, align 8
  %2312 = getelementptr inbounds %struct.inflate_state, ptr %2311, i32 0, i32 21
  %2313 = load ptr, ptr %2312, align 8
  %2314 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 2
  %2315 = load i16, ptr %2314, align 2
  %2316 = zext i16 %2315 to i32
  %2317 = load i64, ptr %11, align 8
  %2318 = trunc i64 %2317 to i32
  %2319 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2320 = load i8, ptr %2319, align 1
  %2321 = zext i8 %2320 to i32
  %2322 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 0
  %2323 = load i8, ptr %2322, align 2
  %2324 = zext i8 %2323 to i32
  %2325 = add nsw i32 %2321, %2324
  %2326 = shl i32 1, %2325
  %2327 = sub i32 %2326, 1
  %2328 = and i32 %2318, %2327
  %2329 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2330 = load i8, ptr %2329, align 1
  %2331 = zext i8 %2330 to i32
  %2332 = lshr i32 %2328, %2331
  %2333 = add i32 %2316, %2332
  %2334 = zext i32 %2333 to i64
  %2335 = getelementptr inbounds %struct.code, ptr %2313, i64 %2334
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %2335, i64 4, i1 false)
  %2336 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2337 = load i8, ptr %2336, align 1
  %2338 = zext i8 %2337 to i32
  %2339 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2340 = load i8, ptr %2339, align 1
  %2341 = zext i8 %2340 to i32
  %2342 = add nsw i32 %2338, %2341
  %2343 = load i32, ptr %12, align 4
  %2344 = icmp ule i32 %2342, %2343
  br i1 %2344, label %2345, label %2346

2345:                                             ; preds = %2310
  br label %2366

2346:                                             ; preds = %2310
  br label %2347

2347:                                             ; preds = %2346
  %2348 = load i32, ptr %9, align 4
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2350, label %2351

2350:                                             ; preds = %2347
  br label %2842

2351:                                             ; preds = %2347
  %2352 = load i32, ptr %9, align 4
  %2353 = add i32 %2352, -1
  store i32 %2353, ptr %9, align 4
  %2354 = load ptr, ptr %7, align 8
  %2355 = getelementptr inbounds i8, ptr %2354, i32 1
  store ptr %2355, ptr %7, align 8
  %2356 = load i8, ptr %2354, align 1
  %2357 = zext i8 %2356 to i64
  %2358 = load i32, ptr %12, align 4
  %2359 = zext i32 %2358 to i64
  %2360 = shl i64 %2357, %2359
  %2361 = load i64, ptr %11, align 8
  %2362 = add i64 %2361, %2360
  store i64 %2362, ptr %11, align 8
  %2363 = load i32, ptr %12, align 4
  %2364 = add i32 %2363, 8
  store i32 %2364, ptr %12, align 4
  br label %2365

2365:                                             ; preds = %2351
  br label %2310

2366:                                             ; preds = %2345
  br label %2367

2367:                                             ; preds = %2366
  %2368 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2369 = load i8, ptr %2368, align 1
  %2370 = zext i8 %2369 to i32
  %2371 = load i64, ptr %11, align 8
  %2372 = zext i32 %2370 to i64
  %2373 = lshr i64 %2371, %2372
  store i64 %2373, ptr %11, align 8
  %2374 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2375 = load i8, ptr %2374, align 1
  %2376 = zext i8 %2375 to i32
  %2377 = load i32, ptr %12, align 4
  %2378 = sub i32 %2377, %2376
  store i32 %2378, ptr %12, align 4
  br label %2379

2379:                                             ; preds = %2367
  %2380 = getelementptr inbounds %struct.code, ptr %18, i32 0, i32 1
  %2381 = load i8, ptr %2380, align 1
  %2382 = zext i8 %2381 to i32
  %2383 = load ptr, ptr %6, align 8
  %2384 = getelementptr inbounds %struct.inflate_state, ptr %2383, i32 0, i32 33
  %2385 = load i32, ptr %2384, align 4
  %2386 = add nsw i32 %2385, %2382
  store i32 %2386, ptr %2384, align 4
  br label %2387

2387:                                             ; preds = %2379, %2303
  br label %2388

2388:                                             ; preds = %2387
  %2389 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2390 = load i8, ptr %2389, align 1
  %2391 = zext i8 %2390 to i32
  %2392 = load i64, ptr %11, align 8
  %2393 = zext i32 %2391 to i64
  %2394 = lshr i64 %2392, %2393
  store i64 %2394, ptr %11, align 8
  %2395 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2396 = load i8, ptr %2395, align 1
  %2397 = zext i8 %2396 to i32
  %2398 = load i32, ptr %12, align 4
  %2399 = sub i32 %2398, %2397
  store i32 %2399, ptr %12, align 4
  br label %2400

2400:                                             ; preds = %2388
  %2401 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 1
  %2402 = load i8, ptr %2401, align 1
  %2403 = zext i8 %2402 to i32
  %2404 = load ptr, ptr %6, align 8
  %2405 = getelementptr inbounds %struct.inflate_state, ptr %2404, i32 0, i32 33
  %2406 = load i32, ptr %2405, align 4
  %2407 = add nsw i32 %2406, %2403
  store i32 %2407, ptr %2405, align 4
  %2408 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2409 = load i8, ptr %2408, align 2
  %2410 = zext i8 %2409 to i32
  %2411 = and i32 %2410, 64
  %2412 = icmp ne i32 %2411, 0
  br i1 %2412, label %2413, label %2418

2413:                                             ; preds = %2400
  %2414 = load ptr, ptr %4, align 8
  %2415 = getelementptr inbounds %struct.z_stream_s, ptr %2414, i32 0, i32 6
  store ptr @.str.15, ptr %2415, align 8
  %2416 = load ptr, ptr %6, align 8
  %2417 = getelementptr inbounds %struct.inflate_state, ptr %2416, i32 0, i32 1
  store i32 16209, ptr %2417, align 8
  br label %2841

2418:                                             ; preds = %2400
  %2419 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 2
  %2420 = load i16, ptr %2419, align 2
  %2421 = zext i16 %2420 to i32
  %2422 = load ptr, ptr %6, align 8
  %2423 = getelementptr inbounds %struct.inflate_state, ptr %2422, i32 0, i32 18
  store i32 %2421, ptr %2423, align 8
  %2424 = getelementptr inbounds %struct.code, ptr %17, i32 0, i32 0
  %2425 = load i8, ptr %2424, align 2
  %2426 = zext i8 %2425 to i32
  %2427 = and i32 %2426, 15
  %2428 = load ptr, ptr %6, align 8
  %2429 = getelementptr inbounds %struct.inflate_state, ptr %2428, i32 0, i32 19
  store i32 %2427, ptr %2429, align 4
  %2430 = load ptr, ptr %6, align 8
  %2431 = getelementptr inbounds %struct.inflate_state, ptr %2430, i32 0, i32 1
  store i32 16203, ptr %2431, align 8
  br label %2432

2432:                                             ; preds = %75, %2418
  %2433 = load ptr, ptr %6, align 8
  %2434 = getelementptr inbounds %struct.inflate_state, ptr %2433, i32 0, i32 19
  %2435 = load i32, ptr %2434, align 4
  %2436 = icmp ne i32 %2435, 0
  br i1 %2436, label %2437, label %2499

2437:                                             ; preds = %2432
  br label %2438

2438:                                             ; preds = %2437
  br label %2439

2439:                                             ; preds = %2464, %2438
  %2440 = load i32, ptr %12, align 4
  %2441 = load ptr, ptr %6, align 8
  %2442 = getelementptr inbounds %struct.inflate_state, ptr %2441, i32 0, i32 19
  %2443 = load i32, ptr %2442, align 4
  %2444 = icmp ult i32 %2440, %2443
  br i1 %2444, label %2445, label %2465

2445:                                             ; preds = %2439
  br label %2446

2446:                                             ; preds = %2445
  %2447 = load i32, ptr %9, align 4
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2449, label %2450

2449:                                             ; preds = %2446
  br label %2842

2450:                                             ; preds = %2446
  %2451 = load i32, ptr %9, align 4
  %2452 = add i32 %2451, -1
  store i32 %2452, ptr %9, align 4
  %2453 = load ptr, ptr %7, align 8
  %2454 = getelementptr inbounds i8, ptr %2453, i32 1
  store ptr %2454, ptr %7, align 8
  %2455 = load i8, ptr %2453, align 1
  %2456 = zext i8 %2455 to i64
  %2457 = load i32, ptr %12, align 4
  %2458 = zext i32 %2457 to i64
  %2459 = shl i64 %2456, %2458
  %2460 = load i64, ptr %11, align 8
  %2461 = add i64 %2460, %2459
  store i64 %2461, ptr %11, align 8
  %2462 = load i32, ptr %12, align 4
  %2463 = add i32 %2462, 8
  store i32 %2463, ptr %12, align 4
  br label %2464

2464:                                             ; preds = %2450
  br label %2439, !llvm.loop !28

2465:                                             ; preds = %2439
  br label %2466

2466:                                             ; preds = %2465
  %2467 = load i64, ptr %11, align 8
  %2468 = trunc i64 %2467 to i32
  %2469 = load ptr, ptr %6, align 8
  %2470 = getelementptr inbounds %struct.inflate_state, ptr %2469, i32 0, i32 19
  %2471 = load i32, ptr %2470, align 4
  %2472 = shl i32 1, %2471
  %2473 = sub i32 %2472, 1
  %2474 = and i32 %2468, %2473
  %2475 = load ptr, ptr %6, align 8
  %2476 = getelementptr inbounds %struct.inflate_state, ptr %2475, i32 0, i32 18
  %2477 = load i32, ptr %2476, align 8
  %2478 = add i32 %2477, %2474
  store i32 %2478, ptr %2476, align 8
  br label %2479

2479:                                             ; preds = %2466
  %2480 = load ptr, ptr %6, align 8
  %2481 = getelementptr inbounds %struct.inflate_state, ptr %2480, i32 0, i32 19
  %2482 = load i32, ptr %2481, align 4
  %2483 = load i64, ptr %11, align 8
  %2484 = zext i32 %2482 to i64
  %2485 = lshr i64 %2483, %2484
  store i64 %2485, ptr %11, align 8
  %2486 = load ptr, ptr %6, align 8
  %2487 = getelementptr inbounds %struct.inflate_state, ptr %2486, i32 0, i32 19
  %2488 = load i32, ptr %2487, align 4
  %2489 = load i32, ptr %12, align 4
  %2490 = sub i32 %2489, %2488
  store i32 %2490, ptr %12, align 4
  br label %2491

2491:                                             ; preds = %2479
  %2492 = load ptr, ptr %6, align 8
  %2493 = getelementptr inbounds %struct.inflate_state, ptr %2492, i32 0, i32 19
  %2494 = load i32, ptr %2493, align 4
  %2495 = load ptr, ptr %6, align 8
  %2496 = getelementptr inbounds %struct.inflate_state, ptr %2495, i32 0, i32 33
  %2497 = load i32, ptr %2496, align 4
  %2498 = add i32 %2497, %2494
  store i32 %2498, ptr %2496, align 4
  br label %2499

2499:                                             ; preds = %2491, %2432
  %2500 = load ptr, ptr %6, align 8
  %2501 = getelementptr inbounds %struct.inflate_state, ptr %2500, i32 0, i32 1
  store i32 16204, ptr %2501, align 8
  br label %2502

2502:                                             ; preds = %75, %2499
  %2503 = load i32, ptr %10, align 4
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2505, label %2506

2505:                                             ; preds = %2502
  br label %2842

2506:                                             ; preds = %2502
  %2507 = load i32, ptr %14, align 4
  %2508 = load i32, ptr %10, align 4
  %2509 = sub i32 %2507, %2508
  store i32 %2509, ptr %15, align 4
  %2510 = load ptr, ptr %6, align 8
  %2511 = getelementptr inbounds %struct.inflate_state, ptr %2510, i32 0, i32 18
  %2512 = load i32, ptr %2511, align 8
  %2513 = load i32, ptr %15, align 4
  %2514 = icmp ugt i32 %2512, %2513
  br i1 %2514, label %2515, label %2581

2515:                                             ; preds = %2506
  %2516 = load ptr, ptr %6, align 8
  %2517 = getelementptr inbounds %struct.inflate_state, ptr %2516, i32 0, i32 18
  %2518 = load i32, ptr %2517, align 8
  %2519 = load i32, ptr %15, align 4
  %2520 = sub i32 %2518, %2519
  store i32 %2520, ptr %15, align 4
  %2521 = load i32, ptr %15, align 4
  %2522 = load ptr, ptr %6, align 8
  %2523 = getelementptr inbounds %struct.inflate_state, ptr %2522, i32 0, i32 12
  %2524 = load i32, ptr %2523, align 8
  %2525 = icmp ugt i32 %2521, %2524
  br i1 %2525, label %2526, label %2537

2526:                                             ; preds = %2515
  %2527 = load ptr, ptr %6, align 8
  %2528 = getelementptr inbounds %struct.inflate_state, ptr %2527, i32 0, i32 32
  %2529 = load i32, ptr %2528, align 8
  %2530 = icmp ne i32 %2529, 0
  br i1 %2530, label %2531, label %2536

2531:                                             ; preds = %2526
  %2532 = load ptr, ptr %4, align 8
  %2533 = getelementptr inbounds %struct.z_stream_s, ptr %2532, i32 0, i32 6
  store ptr @.str.16, ptr %2533, align 8
  %2534 = load ptr, ptr %6, align 8
  %2535 = getelementptr inbounds %struct.inflate_state, ptr %2534, i32 0, i32 1
  store i32 16209, ptr %2535, align 8
  br label %2841

2536:                                             ; preds = %2526
  br label %2537

2537:                                             ; preds = %2536, %2515
  %2538 = load i32, ptr %15, align 4
  %2539 = load ptr, ptr %6, align 8
  %2540 = getelementptr inbounds %struct.inflate_state, ptr %2539, i32 0, i32 13
  %2541 = load i32, ptr %2540, align 4
  %2542 = icmp ugt i32 %2538, %2541
  br i1 %2542, label %2543, label %2559

2543:                                             ; preds = %2537
  %2544 = load ptr, ptr %6, align 8
  %2545 = getelementptr inbounds %struct.inflate_state, ptr %2544, i32 0, i32 13
  %2546 = load i32, ptr %2545, align 4
  %2547 = load i32, ptr %15, align 4
  %2548 = sub i32 %2547, %2546
  store i32 %2548, ptr %15, align 4
  %2549 = load ptr, ptr %6, align 8
  %2550 = getelementptr inbounds %struct.inflate_state, ptr %2549, i32 0, i32 14
  %2551 = load ptr, ptr %2550, align 8
  %2552 = load ptr, ptr %6, align 8
  %2553 = getelementptr inbounds %struct.inflate_state, ptr %2552, i32 0, i32 11
  %2554 = load i32, ptr %2553, align 4
  %2555 = load i32, ptr %15, align 4
  %2556 = sub i32 %2554, %2555
  %2557 = zext i32 %2556 to i64
  %2558 = getelementptr inbounds i8, ptr %2551, i64 %2557
  store ptr %2558, ptr %16, align 8
  br label %2570

2559:                                             ; preds = %2537
  %2560 = load ptr, ptr %6, align 8
  %2561 = getelementptr inbounds %struct.inflate_state, ptr %2560, i32 0, i32 14
  %2562 = load ptr, ptr %2561, align 8
  %2563 = load ptr, ptr %6, align 8
  %2564 = getelementptr inbounds %struct.inflate_state, ptr %2563, i32 0, i32 13
  %2565 = load i32, ptr %2564, align 4
  %2566 = load i32, ptr %15, align 4
  %2567 = sub i32 %2565, %2566
  %2568 = zext i32 %2567 to i64
  %2569 = getelementptr inbounds i8, ptr %2562, i64 %2568
  store ptr %2569, ptr %16, align 8
  br label %2570

2570:                                             ; preds = %2559, %2543
  %2571 = load i32, ptr %15, align 4
  %2572 = load ptr, ptr %6, align 8
  %2573 = getelementptr inbounds %struct.inflate_state, ptr %2572, i32 0, i32 17
  %2574 = load i32, ptr %2573, align 4
  %2575 = icmp ugt i32 %2571, %2574
  br i1 %2575, label %2576, label %2580

2576:                                             ; preds = %2570
  %2577 = load ptr, ptr %6, align 8
  %2578 = getelementptr inbounds %struct.inflate_state, ptr %2577, i32 0, i32 17
  %2579 = load i32, ptr %2578, align 4
  store i32 %2579, ptr %15, align 4
  br label %2580

2580:                                             ; preds = %2576, %2570
  br label %2592

2581:                                             ; preds = %2506
  %2582 = load ptr, ptr %8, align 8
  %2583 = load ptr, ptr %6, align 8
  %2584 = getelementptr inbounds %struct.inflate_state, ptr %2583, i32 0, i32 18
  %2585 = load i32, ptr %2584, align 8
  %2586 = zext i32 %2585 to i64
  %2587 = sub i64 0, %2586
  %2588 = getelementptr inbounds i8, ptr %2582, i64 %2587
  store ptr %2588, ptr %16, align 8
  %2589 = load ptr, ptr %6, align 8
  %2590 = getelementptr inbounds %struct.inflate_state, ptr %2589, i32 0, i32 17
  %2591 = load i32, ptr %2590, align 4
  store i32 %2591, ptr %15, align 4
  br label %2592

2592:                                             ; preds = %2581, %2580
  %2593 = load i32, ptr %15, align 4
  %2594 = load i32, ptr %10, align 4
  %2595 = icmp ugt i32 %2593, %2594
  br i1 %2595, label %2596, label %2598

2596:                                             ; preds = %2592
  %2597 = load i32, ptr %10, align 4
  store i32 %2597, ptr %15, align 4
  br label %2598

2598:                                             ; preds = %2596, %2592
  %2599 = load i32, ptr %15, align 4
  %2600 = load i32, ptr %10, align 4
  %2601 = sub i32 %2600, %2599
  store i32 %2601, ptr %10, align 4
  %2602 = load i32, ptr %15, align 4
  %2603 = load ptr, ptr %6, align 8
  %2604 = getelementptr inbounds %struct.inflate_state, ptr %2603, i32 0, i32 17
  %2605 = load i32, ptr %2604, align 4
  %2606 = sub i32 %2605, %2602
  store i32 %2606, ptr %2604, align 4
  br label %2607

2607:                                             ; preds = %2613, %2598
  %2608 = load ptr, ptr %16, align 8
  %2609 = getelementptr inbounds i8, ptr %2608, i32 1
  store ptr %2609, ptr %16, align 8
  %2610 = load i8, ptr %2608, align 1
  %2611 = load ptr, ptr %8, align 8
  %2612 = getelementptr inbounds i8, ptr %2611, i32 1
  store ptr %2612, ptr %8, align 8
  store i8 %2610, ptr %2611, align 1
  br label %2613

2613:                                             ; preds = %2607
  %2614 = load i32, ptr %15, align 4
  %2615 = add i32 %2614, -1
  store i32 %2615, ptr %15, align 4
  %2616 = icmp ne i32 %2615, 0
  br i1 %2616, label %2607, label %2617, !llvm.loop !29

2617:                                             ; preds = %2613
  %2618 = load ptr, ptr %6, align 8
  %2619 = getelementptr inbounds %struct.inflate_state, ptr %2618, i32 0, i32 17
  %2620 = load i32, ptr %2619, align 4
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2622, label %2625

2622:                                             ; preds = %2617
  %2623 = load ptr, ptr %6, align 8
  %2624 = getelementptr inbounds %struct.inflate_state, ptr %2623, i32 0, i32 1
  store i32 16200, ptr %2624, align 8
  br label %2625

2625:                                             ; preds = %2622, %2617
  br label %2841

2626:                                             ; preds = %75
  %2627 = load i32, ptr %10, align 4
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2629, label %2630

2629:                                             ; preds = %2626
  br label %2842

2630:                                             ; preds = %2626
  %2631 = load ptr, ptr %6, align 8
  %2632 = getelementptr inbounds %struct.inflate_state, ptr %2631, i32 0, i32 17
  %2633 = load i32, ptr %2632, align 4
  %2634 = trunc i32 %2633 to i8
  %2635 = load ptr, ptr %8, align 8
  %2636 = getelementptr inbounds i8, ptr %2635, i32 1
  store ptr %2636, ptr %8, align 8
  store i8 %2634, ptr %2635, align 1
  %2637 = load i32, ptr %10, align 4
  %2638 = add i32 %2637, -1
  store i32 %2638, ptr %10, align 4
  %2639 = load ptr, ptr %6, align 8
  %2640 = getelementptr inbounds %struct.inflate_state, ptr %2639, i32 0, i32 1
  store i32 16200, ptr %2640, align 8
  br label %2841

2641:                                             ; preds = %75
  %2642 = load ptr, ptr %6, align 8
  %2643 = getelementptr inbounds %struct.inflate_state, ptr %2642, i32 0, i32 3
  %2644 = load i32, ptr %2643, align 8
  %2645 = icmp ne i32 %2644, 0
  br i1 %2645, label %2646, label %2773

2646:                                             ; preds = %2641
  br label %2647

2647:                                             ; preds = %2646
  br label %2648

2648:                                             ; preds = %2670, %2647
  %2649 = load i32, ptr %12, align 4
  %2650 = icmp ult i32 %2649, 32
  br i1 %2650, label %2651, label %2671

2651:                                             ; preds = %2648
  br label %2652

2652:                                             ; preds = %2651
  %2653 = load i32, ptr %9, align 4
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %2655, label %2656

2655:                                             ; preds = %2652
  br label %2842

2656:                                             ; preds = %2652
  %2657 = load i32, ptr %9, align 4
  %2658 = add i32 %2657, -1
  store i32 %2658, ptr %9, align 4
  %2659 = load ptr, ptr %7, align 8
  %2660 = getelementptr inbounds i8, ptr %2659, i32 1
  store ptr %2660, ptr %7, align 8
  %2661 = load i8, ptr %2659, align 1
  %2662 = zext i8 %2661 to i64
  %2663 = load i32, ptr %12, align 4
  %2664 = zext i32 %2663 to i64
  %2665 = shl i64 %2662, %2664
  %2666 = load i64, ptr %11, align 8
  %2667 = add i64 %2666, %2665
  store i64 %2667, ptr %11, align 8
  %2668 = load i32, ptr %12, align 4
  %2669 = add i32 %2668, 8
  store i32 %2669, ptr %12, align 4
  br label %2670

2670:                                             ; preds = %2656
  br label %2648, !llvm.loop !30

2671:                                             ; preds = %2648
  br label %2672

2672:                                             ; preds = %2671
  %2673 = load i32, ptr %10, align 4
  %2674 = load i32, ptr %14, align 4
  %2675 = sub i32 %2674, %2673
  store i32 %2675, ptr %14, align 4
  %2676 = load i32, ptr %14, align 4
  %2677 = zext i32 %2676 to i64
  %2678 = load ptr, ptr %4, align 8
  %2679 = getelementptr inbounds %struct.z_stream_s, ptr %2678, i32 0, i32 5
  %2680 = load i64, ptr %2679, align 8
  %2681 = add i64 %2680, %2677
  store i64 %2681, ptr %2679, align 8
  %2682 = load i32, ptr %14, align 4
  %2683 = zext i32 %2682 to i64
  %2684 = load ptr, ptr %6, align 8
  %2685 = getelementptr inbounds %struct.inflate_state, ptr %2684, i32 0, i32 8
  %2686 = load i64, ptr %2685, align 8
  %2687 = add i64 %2686, %2683
  store i64 %2687, ptr %2685, align 8
  %2688 = load ptr, ptr %6, align 8
  %2689 = getelementptr inbounds %struct.inflate_state, ptr %2688, i32 0, i32 3
  %2690 = load i32, ptr %2689, align 8
  %2691 = and i32 %2690, 4
  %2692 = icmp ne i32 %2691, 0
  br i1 %2692, label %2693, label %2729

2693:                                             ; preds = %2672
  %2694 = load i32, ptr %14, align 4
  %2695 = icmp ne i32 %2694, 0
  br i1 %2695, label %2696, label %2729

2696:                                             ; preds = %2693
  %2697 = load ptr, ptr %6, align 8
  %2698 = getelementptr inbounds %struct.inflate_state, ptr %2697, i32 0, i32 5
  %2699 = load i32, ptr %2698, align 8
  %2700 = icmp ne i32 %2699, 0
  br i1 %2700, label %2701, label %2712

2701:                                             ; preds = %2696
  %2702 = load ptr, ptr %6, align 8
  %2703 = getelementptr inbounds %struct.inflate_state, ptr %2702, i32 0, i32 7
  %2704 = load i64, ptr %2703, align 8
  %2705 = load ptr, ptr %8, align 8
  %2706 = load i32, ptr %14, align 4
  %2707 = zext i32 %2706 to i64
  %2708 = sub i64 0, %2707
  %2709 = getelementptr inbounds i8, ptr %2705, i64 %2708
  %2710 = load i32, ptr %14, align 4
  %2711 = call i64 @crc32(i64 noundef %2704, ptr noundef %2709, i32 noundef %2710)
  br label %2723

2712:                                             ; preds = %2696
  %2713 = load ptr, ptr %6, align 8
  %2714 = getelementptr inbounds %struct.inflate_state, ptr %2713, i32 0, i32 7
  %2715 = load i64, ptr %2714, align 8
  %2716 = load ptr, ptr %8, align 8
  %2717 = load i32, ptr %14, align 4
  %2718 = zext i32 %2717 to i64
  %2719 = sub i64 0, %2718
  %2720 = getelementptr inbounds i8, ptr %2716, i64 %2719
  %2721 = load i32, ptr %14, align 4
  %2722 = call i64 @adler32(i64 noundef %2715, ptr noundef %2720, i32 noundef %2721)
  br label %2723

2723:                                             ; preds = %2712, %2701
  %2724 = phi i64 [ %2711, %2701 ], [ %2722, %2712 ]
  %2725 = load ptr, ptr %6, align 8
  %2726 = getelementptr inbounds %struct.inflate_state, ptr %2725, i32 0, i32 7
  store i64 %2724, ptr %2726, align 8
  %2727 = load ptr, ptr %4, align 8
  %2728 = getelementptr inbounds %struct.z_stream_s, ptr %2727, i32 0, i32 12
  store i64 %2724, ptr %2728, align 8
  br label %2729

2729:                                             ; preds = %2723, %2693, %2672
  %2730 = load i32, ptr %10, align 4
  store i32 %2730, ptr %14, align 4
  %2731 = load ptr, ptr %6, align 8
  %2732 = getelementptr inbounds %struct.inflate_state, ptr %2731, i32 0, i32 3
  %2733 = load i32, ptr %2732, align 8
  %2734 = and i32 %2733, 4
  %2735 = icmp ne i32 %2734, 0
  br i1 %2735, label %2736, label %2770

2736:                                             ; preds = %2729
  %2737 = load ptr, ptr %6, align 8
  %2738 = getelementptr inbounds %struct.inflate_state, ptr %2737, i32 0, i32 5
  %2739 = load i32, ptr %2738, align 8
  %2740 = icmp ne i32 %2739, 0
  br i1 %2740, label %2741, label %2743

2741:                                             ; preds = %2736
  %2742 = load i64, ptr %11, align 8
  br label %2759

2743:                                             ; preds = %2736
  %2744 = load i64, ptr %11, align 8
  %2745 = lshr i64 %2744, 24
  %2746 = and i64 %2745, 255
  %2747 = load i64, ptr %11, align 8
  %2748 = lshr i64 %2747, 8
  %2749 = and i64 %2748, 65280
  %2750 = add i64 %2746, %2749
  %2751 = load i64, ptr %11, align 8
  %2752 = and i64 %2751, 65280
  %2753 = shl i64 %2752, 8
  %2754 = add i64 %2750, %2753
  %2755 = load i64, ptr %11, align 8
  %2756 = and i64 %2755, 255
  %2757 = shl i64 %2756, 24
  %2758 = add i64 %2754, %2757
  br label %2759

2759:                                             ; preds = %2743, %2741
  %2760 = phi i64 [ %2742, %2741 ], [ %2758, %2743 ]
  %2761 = load ptr, ptr %6, align 8
  %2762 = getelementptr inbounds %struct.inflate_state, ptr %2761, i32 0, i32 7
  %2763 = load i64, ptr %2762, align 8
  %2764 = icmp ne i64 %2760, %2763
  br i1 %2764, label %2765, label %2770

2765:                                             ; preds = %2759
  %2766 = load ptr, ptr %4, align 8
  %2767 = getelementptr inbounds %struct.z_stream_s, ptr %2766, i32 0, i32 6
  store ptr @.str.17, ptr %2767, align 8
  %2768 = load ptr, ptr %6, align 8
  %2769 = getelementptr inbounds %struct.inflate_state, ptr %2768, i32 0, i32 1
  store i32 16209, ptr %2769, align 8
  br label %2841

2770:                                             ; preds = %2759, %2729
  br label %2771

2771:                                             ; preds = %2770
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %2772

2772:                                             ; preds = %2771
  br label %2773

2773:                                             ; preds = %2772, %2641
  %2774 = load ptr, ptr %6, align 8
  %2775 = getelementptr inbounds %struct.inflate_state, ptr %2774, i32 0, i32 1
  store i32 16207, ptr %2775, align 8
  br label %2776

2776:                                             ; preds = %75, %2773
  %2777 = load ptr, ptr %6, align 8
  %2778 = getelementptr inbounds %struct.inflate_state, ptr %2777, i32 0, i32 3
  %2779 = load i32, ptr %2778, align 8
  %2780 = icmp ne i32 %2779, 0
  br i1 %2780, label %2781, label %2833

2781:                                             ; preds = %2776
  %2782 = load ptr, ptr %6, align 8
  %2783 = getelementptr inbounds %struct.inflate_state, ptr %2782, i32 0, i32 5
  %2784 = load i32, ptr %2783, align 8
  %2785 = icmp ne i32 %2784, 0
  br i1 %2785, label %2786, label %2833

2786:                                             ; preds = %2781
  br label %2787

2787:                                             ; preds = %2786
  br label %2788

2788:                                             ; preds = %2810, %2787
  %2789 = load i32, ptr %12, align 4
  %2790 = icmp ult i32 %2789, 32
  br i1 %2790, label %2791, label %2811

2791:                                             ; preds = %2788
  br label %2792

2792:                                             ; preds = %2791
  %2793 = load i32, ptr %9, align 4
  %2794 = icmp eq i32 %2793, 0
  br i1 %2794, label %2795, label %2796

2795:                                             ; preds = %2792
  br label %2842

2796:                                             ; preds = %2792
  %2797 = load i32, ptr %9, align 4
  %2798 = add i32 %2797, -1
  store i32 %2798, ptr %9, align 4
  %2799 = load ptr, ptr %7, align 8
  %2800 = getelementptr inbounds i8, ptr %2799, i32 1
  store ptr %2800, ptr %7, align 8
  %2801 = load i8, ptr %2799, align 1
  %2802 = zext i8 %2801 to i64
  %2803 = load i32, ptr %12, align 4
  %2804 = zext i32 %2803 to i64
  %2805 = shl i64 %2802, %2804
  %2806 = load i64, ptr %11, align 8
  %2807 = add i64 %2806, %2805
  store i64 %2807, ptr %11, align 8
  %2808 = load i32, ptr %12, align 4
  %2809 = add i32 %2808, 8
  store i32 %2809, ptr %12, align 4
  br label %2810

2810:                                             ; preds = %2796
  br label %2788, !llvm.loop !31

2811:                                             ; preds = %2788
  br label %2812

2812:                                             ; preds = %2811
  %2813 = load ptr, ptr %6, align 8
  %2814 = getelementptr inbounds %struct.inflate_state, ptr %2813, i32 0, i32 3
  %2815 = load i32, ptr %2814, align 8
  %2816 = and i32 %2815, 4
  %2817 = icmp ne i32 %2816, 0
  br i1 %2817, label %2818, label %2830

2818:                                             ; preds = %2812
  %2819 = load i64, ptr %11, align 8
  %2820 = load ptr, ptr %6, align 8
  %2821 = getelementptr inbounds %struct.inflate_state, ptr %2820, i32 0, i32 8
  %2822 = load i64, ptr %2821, align 8
  %2823 = and i64 %2822, 4294967295
  %2824 = icmp ne i64 %2819, %2823
  br i1 %2824, label %2825, label %2830

2825:                                             ; preds = %2818
  %2826 = load ptr, ptr %4, align 8
  %2827 = getelementptr inbounds %struct.z_stream_s, ptr %2826, i32 0, i32 6
  store ptr @.str.18, ptr %2827, align 8
  %2828 = load ptr, ptr %6, align 8
  %2829 = getelementptr inbounds %struct.inflate_state, ptr %2828, i32 0, i32 1
  store i32 16209, ptr %2829, align 8
  br label %2841

2830:                                             ; preds = %2818, %2812
  br label %2831

2831:                                             ; preds = %2830
  store i64 0, ptr %11, align 8
  store i32 0, ptr %12, align 4
  br label %2832

2832:                                             ; preds = %2831
  br label %2833

2833:                                             ; preds = %2832, %2781, %2776
  %2834 = load ptr, ptr %6, align 8
  %2835 = getelementptr inbounds %struct.inflate_state, ptr %2834, i32 0, i32 1
  store i32 16208, ptr %2835, align 8
  br label %2836

2836:                                             ; preds = %75, %2833
  store i32 1, ptr %20, align 4
  br label %2842

2837:                                             ; preds = %75
  store i32 -3, ptr %20, align 4
  br label %2842

2838:                                             ; preds = %75
  store i32 -4, ptr %3, align 4
  br label %3024

2839:                                             ; preds = %75
  br label %2840

2840:                                             ; preds = %75, %2839
  store i32 -2, ptr %3, align 4
  br label %3024

2841:                                             ; preds = %2825, %2765, %2630, %2625, %2531, %2413, %2173, %2162, %2153, %1990, %1919, %1885, %1851, %1843, %1515, %1402, %1327, %1303, %1259, %1214, %1139, %1023, %996, %297, %286, %249, %224, %191, %181, %151, %84
  br label %75

2842:                                             ; preds = %2837, %2836, %2795, %2655, %2629, %2505, %2449, %2350, %2287, %2204, %2086, %2018, %1929, %1759, %1705, %1626, %1563, %1430, %1339, %1302, %1276, %1235, %1198, %1151, %1121, %1040, %966, %935, %849, %822, %736, %720, %524, %438, %359, %259, %96
  br label %2843

2843:                                             ; preds = %2842
  %2844 = load ptr, ptr %8, align 8
  %2845 = load ptr, ptr %4, align 8
  %2846 = getelementptr inbounds %struct.z_stream_s, ptr %2845, i32 0, i32 3
  store ptr %2844, ptr %2846, align 8
  %2847 = load i32, ptr %10, align 4
  %2848 = load ptr, ptr %4, align 8
  %2849 = getelementptr inbounds %struct.z_stream_s, ptr %2848, i32 0, i32 4
  store i32 %2847, ptr %2849, align 8
  %2850 = load ptr, ptr %7, align 8
  %2851 = load ptr, ptr %4, align 8
  %2852 = getelementptr inbounds %struct.z_stream_s, ptr %2851, i32 0, i32 0
  store ptr %2850, ptr %2852, align 8
  %2853 = load i32, ptr %9, align 4
  %2854 = load ptr, ptr %4, align 8
  %2855 = getelementptr inbounds %struct.z_stream_s, ptr %2854, i32 0, i32 1
  store i32 %2853, ptr %2855, align 8
  %2856 = load i64, ptr %11, align 8
  %2857 = load ptr, ptr %6, align 8
  %2858 = getelementptr inbounds %struct.inflate_state, ptr %2857, i32 0, i32 15
  store i64 %2856, ptr %2858, align 8
  %2859 = load i32, ptr %12, align 4
  %2860 = load ptr, ptr %6, align 8
  %2861 = getelementptr inbounds %struct.inflate_state, ptr %2860, i32 0, i32 16
  store i32 %2859, ptr %2861, align 8
  br label %2862

2862:                                             ; preds = %2843
  %2863 = load ptr, ptr %6, align 8
  %2864 = getelementptr inbounds %struct.inflate_state, ptr %2863, i32 0, i32 11
  %2865 = load i32, ptr %2864, align 4
  %2866 = icmp ne i32 %2865, 0
  br i1 %2866, label %2886, label %2867

2867:                                             ; preds = %2862
  %2868 = load i32, ptr %14, align 4
  %2869 = load ptr, ptr %4, align 8
  %2870 = getelementptr inbounds %struct.z_stream_s, ptr %2869, i32 0, i32 4
  %2871 = load i32, ptr %2870, align 8
  %2872 = icmp ne i32 %2868, %2871
  br i1 %2872, label %2873, label %2902

2873:                                             ; preds = %2867
  %2874 = load ptr, ptr %6, align 8
  %2875 = getelementptr inbounds %struct.inflate_state, ptr %2874, i32 0, i32 1
  %2876 = load i32, ptr %2875, align 8
  %2877 = icmp ult i32 %2876, 16209
  br i1 %2877, label %2878, label %2902

2878:                                             ; preds = %2873
  %2879 = load ptr, ptr %6, align 8
  %2880 = getelementptr inbounds %struct.inflate_state, ptr %2879, i32 0, i32 1
  %2881 = load i32, ptr %2880, align 8
  %2882 = icmp ult i32 %2881, 16206
  br i1 %2882, label %2886, label %2883

2883:                                             ; preds = %2878
  %2884 = load i32, ptr %5, align 4
  %2885 = icmp ne i32 %2884, 4
  br i1 %2885, label %2886, label %2902

2886:                                             ; preds = %2883, %2878, %2862
  %2887 = load ptr, ptr %4, align 8
  %2888 = load ptr, ptr %4, align 8
  %2889 = getelementptr inbounds %struct.z_stream_s, ptr %2888, i32 0, i32 3
  %2890 = load ptr, ptr %2889, align 8
  %2891 = load i32, ptr %14, align 4
  %2892 = load ptr, ptr %4, align 8
  %2893 = getelementptr inbounds %struct.z_stream_s, ptr %2892, i32 0, i32 4
  %2894 = load i32, ptr %2893, align 8
  %2895 = sub i32 %2891, %2894
  %2896 = call i32 @updatewindow(ptr noundef %2887, ptr noundef %2890, i32 noundef %2895)
  %2897 = icmp ne i32 %2896, 0
  br i1 %2897, label %2898, label %2901

2898:                                             ; preds = %2886
  %2899 = load ptr, ptr %6, align 8
  %2900 = getelementptr inbounds %struct.inflate_state, ptr %2899, i32 0, i32 1
  store i32 16210, ptr %2900, align 8
  store i32 -4, ptr %3, align 4
  br label %3024

2901:                                             ; preds = %2886
  br label %2902

2902:                                             ; preds = %2901, %2883, %2873, %2867
  %2903 = load ptr, ptr %4, align 8
  %2904 = getelementptr inbounds %struct.z_stream_s, ptr %2903, i32 0, i32 1
  %2905 = load i32, ptr %2904, align 8
  %2906 = load i32, ptr %13, align 4
  %2907 = sub i32 %2906, %2905
  store i32 %2907, ptr %13, align 4
  %2908 = load ptr, ptr %4, align 8
  %2909 = getelementptr inbounds %struct.z_stream_s, ptr %2908, i32 0, i32 4
  %2910 = load i32, ptr %2909, align 8
  %2911 = load i32, ptr %14, align 4
  %2912 = sub i32 %2911, %2910
  store i32 %2912, ptr %14, align 4
  %2913 = load i32, ptr %13, align 4
  %2914 = zext i32 %2913 to i64
  %2915 = load ptr, ptr %4, align 8
  %2916 = getelementptr inbounds %struct.z_stream_s, ptr %2915, i32 0, i32 2
  %2917 = load i64, ptr %2916, align 8
  %2918 = add i64 %2917, %2914
  store i64 %2918, ptr %2916, align 8
  %2919 = load i32, ptr %14, align 4
  %2920 = zext i32 %2919 to i64
  %2921 = load ptr, ptr %4, align 8
  %2922 = getelementptr inbounds %struct.z_stream_s, ptr %2921, i32 0, i32 5
  %2923 = load i64, ptr %2922, align 8
  %2924 = add i64 %2923, %2920
  store i64 %2924, ptr %2922, align 8
  %2925 = load i32, ptr %14, align 4
  %2926 = zext i32 %2925 to i64
  %2927 = load ptr, ptr %6, align 8
  %2928 = getelementptr inbounds %struct.inflate_state, ptr %2927, i32 0, i32 8
  %2929 = load i64, ptr %2928, align 8
  %2930 = add i64 %2929, %2926
  store i64 %2930, ptr %2928, align 8
  %2931 = load ptr, ptr %6, align 8
  %2932 = getelementptr inbounds %struct.inflate_state, ptr %2931, i32 0, i32 3
  %2933 = load i32, ptr %2932, align 8
  %2934 = and i32 %2933, 4
  %2935 = icmp ne i32 %2934, 0
  br i1 %2935, label %2936, label %2976

2936:                                             ; preds = %2902
  %2937 = load i32, ptr %14, align 4
  %2938 = icmp ne i32 %2937, 0
  br i1 %2938, label %2939, label %2976

2939:                                             ; preds = %2936
  %2940 = load ptr, ptr %6, align 8
  %2941 = getelementptr inbounds %struct.inflate_state, ptr %2940, i32 0, i32 5
  %2942 = load i32, ptr %2941, align 8
  %2943 = icmp ne i32 %2942, 0
  br i1 %2943, label %2944, label %2957

2944:                                             ; preds = %2939
  %2945 = load ptr, ptr %6, align 8
  %2946 = getelementptr inbounds %struct.inflate_state, ptr %2945, i32 0, i32 7
  %2947 = load i64, ptr %2946, align 8
  %2948 = load ptr, ptr %4, align 8
  %2949 = getelementptr inbounds %struct.z_stream_s, ptr %2948, i32 0, i32 3
  %2950 = load ptr, ptr %2949, align 8
  %2951 = load i32, ptr %14, align 4
  %2952 = zext i32 %2951 to i64
  %2953 = sub i64 0, %2952
  %2954 = getelementptr inbounds i8, ptr %2950, i64 %2953
  %2955 = load i32, ptr %14, align 4
  %2956 = call i64 @crc32(i64 noundef %2947, ptr noundef %2954, i32 noundef %2955)
  br label %2970

2957:                                             ; preds = %2939
  %2958 = load ptr, ptr %6, align 8
  %2959 = getelementptr inbounds %struct.inflate_state, ptr %2958, i32 0, i32 7
  %2960 = load i64, ptr %2959, align 8
  %2961 = load ptr, ptr %4, align 8
  %2962 = getelementptr inbounds %struct.z_stream_s, ptr %2961, i32 0, i32 3
  %2963 = load ptr, ptr %2962, align 8
  %2964 = load i32, ptr %14, align 4
  %2965 = zext i32 %2964 to i64
  %2966 = sub i64 0, %2965
  %2967 = getelementptr inbounds i8, ptr %2963, i64 %2966
  %2968 = load i32, ptr %14, align 4
  %2969 = call i64 @adler32(i64 noundef %2960, ptr noundef %2967, i32 noundef %2968)
  br label %2970

2970:                                             ; preds = %2957, %2944
  %2971 = phi i64 [ %2956, %2944 ], [ %2969, %2957 ]
  %2972 = load ptr, ptr %6, align 8
  %2973 = getelementptr inbounds %struct.inflate_state, ptr %2972, i32 0, i32 7
  store i64 %2971, ptr %2973, align 8
  %2974 = load ptr, ptr %4, align 8
  %2975 = getelementptr inbounds %struct.z_stream_s, ptr %2974, i32 0, i32 12
  store i64 %2971, ptr %2975, align 8
  br label %2976

2976:                                             ; preds = %2970, %2936, %2902
  %2977 = load ptr, ptr %6, align 8
  %2978 = getelementptr inbounds %struct.inflate_state, ptr %2977, i32 0, i32 16
  %2979 = load i32, ptr %2978, align 8
  %2980 = load ptr, ptr %6, align 8
  %2981 = getelementptr inbounds %struct.inflate_state, ptr %2980, i32 0, i32 2
  %2982 = load i32, ptr %2981, align 4
  %2983 = icmp ne i32 %2982, 0
  %2984 = zext i1 %2983 to i64
  %2985 = select i1 %2983, i32 64, i32 0
  %2986 = add nsw i32 %2979, %2985
  %2987 = load ptr, ptr %6, align 8
  %2988 = getelementptr inbounds %struct.inflate_state, ptr %2987, i32 0, i32 1
  %2989 = load i32, ptr %2988, align 8
  %2990 = icmp eq i32 %2989, 16191
  %2991 = zext i1 %2990 to i64
  %2992 = select i1 %2990, i32 128, i32 0
  %2993 = add nsw i32 %2986, %2992
  %2994 = load ptr, ptr %6, align 8
  %2995 = getelementptr inbounds %struct.inflate_state, ptr %2994, i32 0, i32 1
  %2996 = load i32, ptr %2995, align 8
  %2997 = icmp eq i32 %2996, 16199
  br i1 %2997, label %3003, label %2998

2998:                                             ; preds = %2976
  %2999 = load ptr, ptr %6, align 8
  %3000 = getelementptr inbounds %struct.inflate_state, ptr %2999, i32 0, i32 1
  %3001 = load i32, ptr %3000, align 8
  %3002 = icmp eq i32 %3001, 16194
  br label %3003

3003:                                             ; preds = %2998, %2976
  %3004 = phi i1 [ true, %2976 ], [ %3002, %2998 ]
  %3005 = zext i1 %3004 to i64
  %3006 = select i1 %3004, i32 256, i32 0
  %3007 = add nsw i32 %2993, %3006
  %3008 = load ptr, ptr %4, align 8
  %3009 = getelementptr inbounds %struct.z_stream_s, ptr %3008, i32 0, i32 11
  store i32 %3007, ptr %3009, align 8
  %3010 = load i32, ptr %13, align 4
  %3011 = icmp eq i32 %3010, 0
  br i1 %3011, label %3012, label %3015

3012:                                             ; preds = %3003
  %3013 = load i32, ptr %14, align 4
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3018, label %3015

3015:                                             ; preds = %3012, %3003
  %3016 = load i32, ptr %5, align 4
  %3017 = icmp eq i32 %3016, 4
  br i1 %3017, label %3018, label %3022

3018:                                             ; preds = %3015, %3012
  %3019 = load i32, ptr %20, align 4
  %3020 = icmp eq i32 %3019, 0
  br i1 %3020, label %3021, label %3022

3021:                                             ; preds = %3018
  store i32 -5, ptr %20, align 4
  br label %3022

3022:                                             ; preds = %3021, %3018, %3015
  %3023 = load i32, ptr %20, align 4
  store i32 %3023, ptr %3, align 4
  br label %3024

3024:                                             ; preds = %3022, %2898, %2840, %2838, %1106, %40
  %3025 = load i32, ptr %3, align 4
  ret i32 %3025
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @inflate_fixed(ptr noundef) #1

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @inflate_fast(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @updatewindow(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %8, align 8
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 1, %26
  %28 = call ptr %20(ptr noundef %23, i32 noundef %27, i32 noundef 1)
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 14
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %struct.inflate_state, ptr %31, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 1, ptr %4, align 4
  br label %167

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %3
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct.inflate_state, ptr %38, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 1, %45
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr inbounds %struct.inflate_state, ptr %47, i32 0, i32 11
  store i32 %46, ptr %48, align 4
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds %struct.inflate_state, ptr %49, i32 0, i32 13
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct.inflate_state, ptr %51, i32 0, i32 12
  store i32 0, ptr %52, align 8
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i32, ptr %7, align 4
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr inbounds %struct.inflate_state, ptr %55, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = icmp uge i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.inflate_state, ptr %60, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = load ptr, ptr %8, align 8
  %65 = getelementptr inbounds %struct.inflate_state, ptr %64, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = zext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8, ptr %63, i64 %68
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr inbounds %struct.inflate_state, ptr %70, i32 0, i32 11
  %72 = load i32, ptr %71, align 4
  %73 = zext i32 %72 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %69, i64 %73, i1 false)
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr inbounds %struct.inflate_state, ptr %74, i32 0, i32 13
  store i32 0, ptr %75, align 4
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct.inflate_state, ptr %76, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds %struct.inflate_state, ptr %79, i32 0, i32 12
  store i32 %78, ptr %80, align 8
  br label %166

81:                                               ; preds = %53
  %82 = load ptr, ptr %8, align 8
  %83 = getelementptr inbounds %struct.inflate_state, ptr %82, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  %85 = load ptr, ptr %8, align 8
  %86 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 13
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %84, %87
  store i32 %88, ptr %9, align 4
  %89 = load i32, ptr %9, align 4
  %90 = load i32, ptr %7, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, ptr %7, align 4
  store i32 %93, ptr %9, align 4
  br label %94

94:                                               ; preds = %92, %81
  %95 = load ptr, ptr %8, align 8
  %96 = getelementptr inbounds %struct.inflate_state, ptr %95, i32 0, i32 14
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %8, align 8
  %99 = getelementptr inbounds %struct.inflate_state, ptr %98, i32 0, i32 13
  %100 = load i32, ptr %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %97, i64 %101
  %103 = load ptr, ptr %6, align 8
  %104 = load i32, ptr %7, align 4
  %105 = zext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  %108 = load i32, ptr %9, align 4
  %109 = zext i32 %108 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 %107, i64 %109, i1 false)
  %110 = load i32, ptr %9, align 4
  %111 = load i32, ptr %7, align 4
  %112 = sub i32 %111, %110
  store i32 %112, ptr %7, align 4
  %113 = load i32, ptr %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %94
  %116 = load ptr, ptr %8, align 8
  %117 = getelementptr inbounds %struct.inflate_state, ptr %116, i32 0, i32 14
  %118 = load ptr, ptr %117, align 8
  %119 = load ptr, ptr %6, align 8
  %120 = load i32, ptr %7, align 4
  %121 = zext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  %124 = load i32, ptr %7, align 4
  %125 = zext i32 %124 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %123, i64 %125, i1 false)
  %126 = load i32, ptr %7, align 4
  %127 = load ptr, ptr %8, align 8
  %128 = getelementptr inbounds %struct.inflate_state, ptr %127, i32 0, i32 13
  store i32 %126, ptr %128, align 4
  %129 = load ptr, ptr %8, align 8
  %130 = getelementptr inbounds %struct.inflate_state, ptr %129, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %8, align 8
  %133 = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 12
  store i32 %131, ptr %133, align 8
  br label %165

134:                                              ; preds = %94
  %135 = load i32, ptr %9, align 4
  %136 = load ptr, ptr %8, align 8
  %137 = getelementptr inbounds %struct.inflate_state, ptr %136, i32 0, i32 13
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, %135
  store i32 %139, ptr %137, align 4
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds %struct.inflate_state, ptr %140, i32 0, i32 13
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %8, align 8
  %144 = getelementptr inbounds %struct.inflate_state, ptr %143, i32 0, i32 11
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load ptr, ptr %8, align 8
  %149 = getelementptr inbounds %struct.inflate_state, ptr %148, i32 0, i32 13
  store i32 0, ptr %149, align 4
  br label %150

150:                                              ; preds = %147, %134
  %151 = load ptr, ptr %8, align 8
  %152 = getelementptr inbounds %struct.inflate_state, ptr %151, i32 0, i32 12
  %153 = load i32, ptr %152, align 8
  %154 = load ptr, ptr %8, align 8
  %155 = getelementptr inbounds %struct.inflate_state, ptr %154, i32 0, i32 11
  %156 = load i32, ptr %155, align 4
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load i32, ptr %9, align 4
  %160 = load ptr, ptr %8, align 8
  %161 = getelementptr inbounds %struct.inflate_state, ptr %160, i32 0, i32 12
  %162 = load i32, ptr %161, align 8
  %163 = add i32 %162, %159
  store i32 %163, ptr %161, align 8
  br label %164

164:                                              ; preds = %158, %150
  br label %165

165:                                              ; preds = %164, %115
  br label %166

166:                                              ; preds = %165, %59
  store i32 0, ptr %4, align 4
  br label %167

167:                                              ; preds = %166, %35
  %168 = load i32, ptr %4, align 4
  ret i32 %168
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateEnd(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  call void %20(ptr noundef %23, ptr noundef %26)
  br label %27

27:                                               ; preds = %17, %9
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  call void %30(ptr noundef %33, ptr noundef %36)
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 7
  store ptr null, ptr %38, align 8
  store i32 0, ptr %2, align 4
  br label %39

39:                                               ; preds = %27, %8
  %40 = load i32, ptr %2, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateGetDictionary(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @inflateStateCheck(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, ptr %4, align 4
  br label %70

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.inflate_state, ptr %17, i32 0, i32 12
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 12
  %36 = load i32, ptr %35, align 8
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr inbounds %struct.inflate_state, ptr %37, i32 0, i32 13
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %36, %39
  %41 = zext i32 %40 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %33, i64 %41, i1 false)
  %42 = load ptr, ptr %6, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %42, i64 %46
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds %struct.inflate_state, ptr %48, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, ptr %47, i64 %52
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 14
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds %struct.inflate_state, ptr %57, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %56, i64 %60, i1 false)
  br label %61

61:                                               ; preds = %24, %21, %13
  %62 = load ptr, ptr %7, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8
  %66 = getelementptr inbounds %struct.inflate_state, ptr %65, i32 0, i32 12
  %67 = load i32, ptr %66, align 8
  %68 = load ptr, ptr %7, align 8
  store i32 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  store i32 0, ptr %4, align 4
  br label %70

70:                                               ; preds = %69, %12
  %71 = load i32, ptr %4, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = call i32 @inflateStateCheck(ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -2, ptr %4, align 4
  br label %63

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %8, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.inflate_state, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = icmp ne i32 %26, 16190
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -2, ptr %4, align 4
  br label %63

29:                                               ; preds = %23, %15
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 16190
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  store i64 %35, ptr %9, align 8
  %36 = load i64, ptr %9, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %7, align 4
  %39 = call i64 @adler32(i64 noundef %36, ptr noundef %37, i32 noundef %38)
  store i64 %39, ptr %9, align 8
  %40 = load i64, ptr %9, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds %struct.inflate_state, ptr %41, i32 0, i32 7
  %43 = load i64, ptr %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -3, ptr %4, align 4
  br label %63

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29
  %48 = load ptr, ptr %5, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load i32, ptr %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = load i32, ptr %7, align 4
  %54 = call i32 @updatewindow(ptr noundef %48, ptr noundef %52, i32 noundef %53)
  store i32 %54, ptr %10, align 4
  %55 = load i32, ptr %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr inbounds %struct.inflate_state, ptr %58, i32 0, i32 1
  store i32 16210, ptr %59, align 8
  store i32 -4, ptr %4, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %struct.inflate_state, ptr %61, i32 0, i32 4
  store i32 1, ptr %62, align 4
  store i32 0, ptr %4, align 4
  br label %63

63:                                               ; preds = %60, %57, %45, %28, %14
  %64 = load i32, ptr %4, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateGetHeader(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @inflateStateCheck(ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.inflate_state, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 -2, ptr %3, align 4
  br label %27

21:                                               ; preds = %11
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 9
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.gz_header_s, ptr %25, i32 0, i32 12
  store i32 0, ptr %26, align 8
  store i32 0, ptr %3, align 4
  br label %27

27:                                               ; preds = %21, %20, %10
  %28 = load i32, ptr %3, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateSync(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = call i32 @inflateStateCheck(ptr noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %151

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %9, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 16
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -5, ptr %2, align 4
  br label %151

28:                                               ; preds = %22, %14
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds %struct.inflate_state, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp ne i32 %31, 16211
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 1
  store i32 16211, ptr %35, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = getelementptr inbounds %struct.inflate_state, ptr %36, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 7
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds %struct.inflate_state, ptr %40, i32 0, i32 15
  %42 = load i64, ptr %41, align 8
  %43 = zext i32 %39 to i64
  %44 = lshr i64 %42, %43
  store i64 %44, ptr %41, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds %struct.inflate_state, ptr %45, i32 0, i32 16
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 7
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr inbounds %struct.inflate_state, ptr %49, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = sub i32 %51, %48
  store i32 %52, ptr %50, align 8
  store i32 0, ptr %4, align 4
  br label %53

53:                                               ; preds = %58, %33
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds %struct.inflate_state, ptr %54, i32 0, i32 16
  %56 = load i32, ptr %55, align 8
  %57 = icmp uge i32 %56, 8
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds %struct.inflate_state, ptr %59, i32 0, i32 15
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i8
  %63 = load i32, ptr %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %4, align 4
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 %65
  store i8 %62, ptr %66, align 1
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds %struct.inflate_state, ptr %67, i32 0, i32 15
  %69 = load i64, ptr %68, align 8
  %70 = lshr i64 %69, 8
  store i64 %70, ptr %68, align 8
  %71 = load ptr, ptr %9, align 8
  %72 = getelementptr inbounds %struct.inflate_state, ptr %71, i32 0, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = sub i32 %73, 8
  store i32 %74, ptr %72, align 8
  br label %53, !llvm.loop !32

75:                                               ; preds = %53
  %76 = load ptr, ptr %9, align 8
  %77 = getelementptr inbounds %struct.inflate_state, ptr %76, i32 0, i32 27
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr %9, align 8
  %79 = getelementptr inbounds %struct.inflate_state, ptr %78, i32 0, i32 27
  %80 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0
  %81 = load i32, ptr %4, align 4
  %82 = call i32 @syncsearch(ptr noundef %79, ptr noundef %80, i32 noundef %81)
  br label %83

83:                                               ; preds = %75, %28
  %84 = load ptr, ptr %9, align 8
  %85 = getelementptr inbounds %struct.inflate_state, ptr %84, i32 0, i32 27
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.z_stream_s, ptr %86, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 8
  %92 = call i32 @syncsearch(ptr noundef %85, ptr noundef %88, i32 noundef %91)
  store i32 %92, ptr %4, align 4
  %93 = load i32, ptr %4, align 4
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds %struct.z_stream_s, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 8
  %97 = sub i32 %96, %93
  store i32 %97, ptr %95, align 8
  %98 = load i32, ptr %4, align 4
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct.z_stream_s, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds i8, ptr %101, i64 %102
  store ptr %103, ptr %100, align 8
  %104 = load i32, ptr %4, align 4
  %105 = zext i32 %104 to i64
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.z_stream_s, ptr %106, i32 0, i32 2
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %108, %105
  store i64 %109, ptr %107, align 8
  %110 = load ptr, ptr %9, align 8
  %111 = getelementptr inbounds %struct.inflate_state, ptr %110, i32 0, i32 27
  %112 = load i32, ptr %111, align 4
  %113 = icmp ne i32 %112, 4
  br i1 %113, label %114, label %115

114:                                              ; preds = %83
  store i32 -3, ptr %2, align 4
  br label %151

115:                                              ; preds = %83
  %116 = load ptr, ptr %9, align 8
  %117 = getelementptr inbounds %struct.inflate_state, ptr %116, i32 0, i32 5
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load ptr, ptr %9, align 8
  %122 = getelementptr inbounds %struct.inflate_state, ptr %121, i32 0, i32 3
  store i32 0, ptr %122, align 8
  br label %128

123:                                              ; preds = %115
  %124 = load ptr, ptr %9, align 8
  %125 = getelementptr inbounds %struct.inflate_state, ptr %124, i32 0, i32 3
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, -5
  store i32 %127, ptr %125, align 8
  br label %128

128:                                              ; preds = %123, %120
  %129 = load ptr, ptr %9, align 8
  %130 = getelementptr inbounds %struct.inflate_state, ptr %129, i32 0, i32 5
  %131 = load i32, ptr %130, align 8
  store i32 %131, ptr %5, align 4
  %132 = load ptr, ptr %3, align 8
  %133 = getelementptr inbounds %struct.z_stream_s, ptr %132, i32 0, i32 2
  %134 = load i64, ptr %133, align 8
  store i64 %134, ptr %6, align 8
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %135, i32 0, i32 5
  %137 = load i64, ptr %136, align 8
  store i64 %137, ptr %7, align 8
  %138 = load ptr, ptr %3, align 8
  %139 = call i32 @inflateReset(ptr noundef %138)
  %140 = load i64, ptr %6, align 8
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds %struct.z_stream_s, ptr %141, i32 0, i32 2
  store i64 %140, ptr %142, align 8
  %143 = load i64, ptr %7, align 8
  %144 = load ptr, ptr %3, align 8
  %145 = getelementptr inbounds %struct.z_stream_s, ptr %144, i32 0, i32 5
  store i64 %143, ptr %145, align 8
  %146 = load i32, ptr %5, align 4
  %147 = load ptr, ptr %9, align 8
  %148 = getelementptr inbounds %struct.inflate_state, ptr %147, i32 0, i32 5
  store i32 %146, ptr %148, align 8
  %149 = load ptr, ptr %9, align 8
  %150 = getelementptr inbounds %struct.inflate_state, ptr %149, i32 0, i32 1
  store i32 16191, ptr %150, align 8
  store i32 0, ptr %2, align 4
  br label %151

151:                                              ; preds = %128, %114, %27, %13
  %152 = load i32, ptr %2, align 4
  ret i32 %152
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syncsearch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, ptr %7, align 4
  %17 = icmp ult i32 %16, 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %20, label %50

20:                                               ; preds = %18
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, ptr %7, align 4
  %28 = icmp ult i32 %27, 2
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 255
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, ptr %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %7, align 4
  br label %47

35:                                               ; preds = %20
  %36 = load ptr, ptr %5, align 8
  %37 = load i32, ptr %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, ptr %7, align 4
  br label %46

43:                                               ; preds = %35
  %44 = load i32, ptr %7, align 4
  %45 = sub i32 4, %44
  store i32 %45, ptr %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, ptr %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %8, align 4
  br label %11, !llvm.loop !33

50:                                               ; preds = %18
  %51 = load i32, ptr %7, align 4
  %52 = load ptr, ptr %4, align 8
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %8, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateSyncPoint(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -2, ptr %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 16193
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 16
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %17, %9
  %23 = phi i1 [ false, %9 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = load i32, ptr %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateCopy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call i32 @inflateStateCheck(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 -2, ptr %3, align 4
  br label %152

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr %22(ptr noundef %25, i32 noundef 1, i32 noundef 7160)
  store ptr %26, ptr %7, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 -4, ptr %3, align 4
  br label %152

30:                                               ; preds = %16
  %31 = load ptr, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 7160, i1 false)
  store ptr null, ptr %8, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 14
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.z_stream_s, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.inflate_state, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 1, %45
  %47 = call ptr %39(ptr noundef %42, i32 noundef %46, i32 noundef 1)
  store ptr %47, ptr %8, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %36
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %51, i32 0, i32 9
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %54, i32 0, i32 10
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %7, align 8
  call void %53(ptr noundef %56, ptr noundef %57)
  store i32 -4, ptr %3, align 4
  br label %152

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %30
  %60 = load ptr, ptr %4, align 8
  %61 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %61, i64 112, i1 false)
  %62 = load ptr, ptr %7, align 8
  %63 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr align 8 %63, i64 7160, i1 false)
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = getelementptr inbounds %struct.inflate_state, ptr %65, i32 0, i32 0
  store ptr %64, ptr %66, align 8
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct.inflate_state, ptr %67, i32 0, i32 20
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = getelementptr inbounds %struct.inflate_state, ptr %70, i32 0, i32 31
  %72 = getelementptr inbounds [1444 x %struct.code], ptr %71, i64 0, i64 0
  %73 = icmp uge ptr %69, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %59
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.inflate_state, ptr %75, i32 0, i32 20
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.inflate_state, ptr %78, i32 0, i32 31
  %80 = getelementptr inbounds [1444 x %struct.code], ptr %79, i64 0, i64 0
  %81 = getelementptr inbounds %struct.code, ptr %80, i64 1444
  %82 = getelementptr inbounds %struct.code, ptr %81, i64 -1
  %83 = icmp ule ptr %77, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %74
  %85 = load ptr, ptr %7, align 8
  %86 = getelementptr inbounds %struct.inflate_state, ptr %85, i32 0, i32 31
  %87 = getelementptr inbounds [1444 x %struct.code], ptr %86, i64 0, i64 0
  %88 = load ptr, ptr %6, align 8
  %89 = getelementptr inbounds %struct.inflate_state, ptr %88, i32 0, i32 20
  %90 = load ptr, ptr %89, align 8
  %91 = load ptr, ptr %6, align 8
  %92 = getelementptr inbounds %struct.inflate_state, ptr %91, i32 0, i32 31
  %93 = getelementptr inbounds [1444 x %struct.code], ptr %92, i64 0, i64 0
  %94 = ptrtoint ptr %90 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = getelementptr inbounds %struct.code, ptr %87, i64 %97
  %99 = load ptr, ptr %7, align 8
  %100 = getelementptr inbounds %struct.inflate_state, ptr %99, i32 0, i32 20
  store ptr %98, ptr %100, align 8
  %101 = load ptr, ptr %7, align 8
  %102 = getelementptr inbounds %struct.inflate_state, ptr %101, i32 0, i32 31
  %103 = getelementptr inbounds [1444 x %struct.code], ptr %102, i64 0, i64 0
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.inflate_state, ptr %104, i32 0, i32 21
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds %struct.inflate_state, ptr %107, i32 0, i32 31
  %109 = getelementptr inbounds [1444 x %struct.code], ptr %108, i64 0, i64 0
  %110 = ptrtoint ptr %106 to i64
  %111 = ptrtoint ptr %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = getelementptr inbounds %struct.code, ptr %103, i64 %113
  %115 = load ptr, ptr %7, align 8
  %116 = getelementptr inbounds %struct.inflate_state, ptr %115, i32 0, i32 21
  store ptr %114, ptr %116, align 8
  br label %117

117:                                              ; preds = %84, %74, %59
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds %struct.inflate_state, ptr %118, i32 0, i32 31
  %120 = getelementptr inbounds [1444 x %struct.code], ptr %119, i64 0, i64 0
  %121 = load ptr, ptr %6, align 8
  %122 = getelementptr inbounds %struct.inflate_state, ptr %121, i32 0, i32 28
  %123 = load ptr, ptr %122, align 8
  %124 = load ptr, ptr %6, align 8
  %125 = getelementptr inbounds %struct.inflate_state, ptr %124, i32 0, i32 31
  %126 = getelementptr inbounds [1444 x %struct.code], ptr %125, i64 0, i64 0
  %127 = ptrtoint ptr %123 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = getelementptr inbounds %struct.code, ptr %120, i64 %130
  %132 = load ptr, ptr %7, align 8
  %133 = getelementptr inbounds %struct.inflate_state, ptr %132, i32 0, i32 28
  store ptr %131, ptr %133, align 8
  %134 = load ptr, ptr %8, align 8
  %135 = icmp ne ptr %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %117
  %137 = load ptr, ptr %8, align 8
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr inbounds %struct.inflate_state, ptr %138, i32 0, i32 14
  %140 = load ptr, ptr %139, align 8
  %141 = load ptr, ptr %6, align 8
  %142 = getelementptr inbounds %struct.inflate_state, ptr %141, i32 0, i32 12
  %143 = load i32, ptr %142, align 8
  %144 = zext i32 %143 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %137, ptr align 1 %140, i64 %144, i1 false)
  br label %145

145:                                              ; preds = %136, %117
  %146 = load ptr, ptr %8, align 8
  %147 = load ptr, ptr %7, align 8
  %148 = getelementptr inbounds %struct.inflate_state, ptr %147, i32 0, i32 14
  store ptr %146, ptr %148, align 8
  %149 = load ptr, ptr %7, align 8
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 7
  store ptr %149, ptr %151, align 8
  store i32 0, ptr %3, align 4
  br label %152

152:                                              ; preds = %145, %50, %29, %15
  %153 = load i32, ptr %3, align 4
  ret i32 %153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateUndermine(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @inflateStateCheck(ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %6, align 8
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 32
  store i32 1, ptr %17, align 8
  store i32 -3, ptr %3, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, ptr %3, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateValidate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @inflateStateCheck(ptr noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -2, ptr %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %6, align 8
  %15 = load i32, ptr %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 8
  br label %32

27:                                               ; preds = %17, %11
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -5
  store i32 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %27, %22
  store i32 0, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, ptr %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inflateMark(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 -65536, ptr %2, align 8
  br label %46

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 33
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = shl i64 %16, 16
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 16195
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  br label %42

26:                                               ; preds = %9
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 16204
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 34
  %34 = load i32, ptr %33, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.inflate_state, ptr %35, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %34, %37
  br label %40

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %31
  %41 = phi i32 [ %38, %31 ], [ 0, %39 ]
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi i32 [ %25, %22 ], [ %41, %40 ]
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %17, %44
  store i64 %45, ptr %2, align 8
  br label %46

46:                                               ; preds = %42, %8
  %47 = load i64, ptr %2, align 8
  ret i64 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inflateCodesUsed(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @inflateStateCheck(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 -1, ptr %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.inflate_state, ptr %13, i32 0, i32 28
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 31
  %18 = getelementptr inbounds [1444 x %struct.code], ptr %17, i64 0, i64 0
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  store i64 %22, ptr %2, align 8
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i64, ptr %2, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
