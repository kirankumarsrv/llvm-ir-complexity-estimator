; ModuleID = 'corpus_zlib/examples/gzappend.c'
source_filename = "corpus_zlib/examples/gzappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file = type { i32, i32, i32, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"gzappend 1.2 (11 Oct 2012) Copyright (C) 2003, 2012 Mark Adler\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"usage: gzappend [-level] file.gz [ addthis [ andthis ... ]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid compression level\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no gzip file name after options\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unexpected end of \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"error reading \00", align 1
@stderr = external global ptr, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"gzappend error: %s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"cannot open \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c" or library mismatch\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"internal stream error!\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"invalid compressed data--format violated in\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"invalid compressed data--crc mismatch in \00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"invalid compressed data--length mismatch in\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"gzappend warning: junk at end of gzip file overwritten\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"reading after seek on \00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"writing after seek to \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c" not a gzip file\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"unknown compression method in\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"unknown header flags set in\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"seeking \00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"gzappend warning: %s not found, skipping ...\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"gzappend warning: error reading %s, skipping rest ...\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"writing gzip file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read4(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = call i32 @readmore(ptr noundef %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 0, %11 ]
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %21, ptr %19, align 8
  %22 = load i8, ptr %20, align 1
  %23 = zext i8 %22 to i64
  store i64 %23, ptr %3, align 8
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load ptr, ptr %2, align 8
  %30 = call i32 @readmore(ptr noundef %29)
  br label %32

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 8
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %41, ptr %39, align 8
  %42 = load i8, ptr %40, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = zext i32 %44 to i64
  %46 = load i64, ptr %3, align 8
  %47 = add i64 %46, %45
  store i64 %47, ptr %3, align 8
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.file, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load ptr, ptr %2, align 8
  %54 = call i32 @readmore(ptr noundef %53)
  br label %56

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, -1
  store i32 %61, ptr %59, align 8
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.file, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %65, ptr %63, align 8
  %66 = load i8, ptr %64, align 1
  %67 = zext i8 %66 to i64
  %68 = shl i64 %67, 16
  %69 = load i64, ptr %3, align 8
  %70 = add i64 %69, %68
  store i64 %70, ptr %3, align 8
  %71 = load ptr, ptr %2, align 8
  %72 = getelementptr inbounds %struct.file, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load ptr, ptr %2, align 8
  %77 = call i32 @readmore(ptr noundef %76)
  br label %79

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.file, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %83, -1
  store i32 %84, ptr %82, align 8
  %85 = load ptr, ptr %2, align 8
  %86 = getelementptr inbounds %struct.file, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %88, ptr %86, align 8
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i64
  %91 = shl i64 %90, 24
  %92 = load i64, ptr %3, align 8
  %93 = add i64 %92, %91
  store i64 %93, ptr %3, align 8
  %94 = load i64, ptr %3, align 8
  ret i64 %94
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readmore(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @readin(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  call void @bye(ptr noundef @.str.5, ptr noundef %9)
  br label %10

10:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_stream_s, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %4, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i32 1
  store ptr %12, ptr %5, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %3, align 4
  br label %94

19:                                               ; preds = %2
  store i32 -1, ptr %7, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 0
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 0
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %66

27:                                               ; preds = %19
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 0
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 48
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sgt i32 %41, 57
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds ptr, ptr %44, i64 0
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %46, i64 2
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35, %27
  call void @bye(ptr noundef @.str.2, ptr noundef @.str.3)
  br label %52

52:                                               ; preds = %51, %43
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds ptr, ptr %53, i64 0
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  store i32 %59, ptr %7, align 4
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds ptr, ptr %60, i32 1
  store ptr %61, ptr %5, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  call void @bye(ptr noundef @.str.4, ptr noundef @.str.3)
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %19
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds ptr, ptr %67, i32 1
  store ptr %68, ptr %5, align 8
  %69 = load ptr, ptr %67, align 8
  %70 = load i32, ptr %7, align 4
  %71 = call i32 @gzscan(ptr noundef %69, ptr noundef %8, i32 noundef %70)
  store i32 %71, ptr %6, align 4
  %72 = load ptr, ptr %5, align 8
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, ptr %6, align 4
  call void @gztack(ptr noundef null, i32 noundef %76, ptr noundef %8, i32 noundef 1)
  br label %93

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %87, %77
  %79 = load ptr, ptr %5, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %6, align 4
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = zext i1 %85 to i32
  call void @gztack(ptr noundef %80, i32 noundef %81, ptr noundef %8, i32 noundef %86)
  br label %87

87:                                               ; preds = %78
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds ptr, ptr %88, i32 1
  store ptr %89, ptr %5, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %78, label %92, !llvm.loop !6

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %75
  store i32 0, ptr %3, align 4
  br label %94

94:                                               ; preds = %93, %16
  %95 = load i32, ptr %3, align 4
  ret i32 %95
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bye(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr @stderr, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.7, ptr noundef %6, ptr noundef %7)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gzscan(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.file, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 5
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = call i32 (ptr, i32, ...) @open(ptr noundef %20, i32 noundef 2, i32 noundef 0)
  %22 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.8, ptr noundef %27)
  br label %28

28:                                               ; preds = %26, %3
  %29 = call noalias ptr @malloc(i64 noundef 16384) #7
  %30 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.3)
  br label %35

35:                                               ; preds = %34, %28
  %36 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1
  store i32 14, ptr %36, align 4
  %37 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  store i32 0, ptr %37, align 8
  call void @gzheader(ptr noundef %17)
  %38 = call noalias ptr @malloc(i64 noundef 32768) #7
  store ptr %38, ptr %14, align 8
  %39 = load ptr, ptr %14, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.3)
  br label %42

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %43, i32 0, i32 8
  store ptr null, ptr %44, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, ptr %45, i32 0, i32 9
  store ptr null, ptr %46, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %47, i32 0, i32 10
  store ptr null, ptr %48, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = call i32 @inflateInit2_(ptr noundef %49, i32 noundef -15, ptr noundef @.str.10, i32 noundef 112)
  store i32 %50, ptr %7, align 4
  %51 = load i32, ptr %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.11)
  br label %54

54:                                               ; preds = %53, %42
  store i32 0, ptr %8, align 4
  %55 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %56 = load i32, ptr %55, align 8
  %57 = call i64 @lseek(i32 noundef %56, i64 noundef 0, i32 noundef 1) #8
  %58 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = zext i32 %59 to i64
  %61 = sub nsw i64 %57, %60
  store i64 %61, ptr %15, align 8
  store i32 0, ptr %9, align 4
  %62 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 1
  store i32 %63, ptr %65, align 8
  %66 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 4
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  %70 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0)
  store i64 %70, ptr %12, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %71

71:                                               ; preds = %166, %54
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.z_stream_s, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = call i32 @readmore(ptr noundef %17)
  %78 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.z_stream_s, ptr %80, i32 0, i32 1
  store i32 %79, ptr %81, align 8
  %82 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 4
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %5, align 8
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  br label %86

86:                                               ; preds = %76, %71
  %87 = load i32, ptr %11, align 4
  %88 = sub i32 32768, %87
  %89 = load ptr, ptr %5, align 8
  %90 = getelementptr inbounds %struct.z_stream_s, ptr %89, i32 0, i32 4
  store i32 %88, ptr %90, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = load i32, ptr %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %91, i64 %93
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds %struct.z_stream_s, ptr %95, i32 0, i32 3
  store ptr %94, ptr %96, align 8
  %97 = load ptr, ptr %5, align 8
  %98 = call i32 @inflate(ptr noundef %97, i32 noundef 5)
  store i32 %98, ptr %7, align 4
  %99 = load i32, ptr %7, align 4
  %100 = icmp eq i32 %99, -2
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  call void @bye(ptr noundef @.str.12, ptr noundef @.str.3)
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32, ptr %7, align 4
  %104 = icmp eq i32 %103, -4
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.3)
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, ptr %7, align 4
  %108 = icmp eq i32 %107, -3
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.13, ptr noundef %110)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i64, ptr %12, align 8
  %113 = load ptr, ptr %14, align 8
  %114 = load i32, ptr %11, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %113, i64 %115
  %117 = load i32, ptr %11, align 4
  %118 = sub i32 32768, %117
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %119, i32 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = sub i32 %118, %121
  %123 = call i64 @crc32(i64 noundef %112, ptr noundef %116, i32 noundef %122)
  store i64 %123, ptr %12, align 8
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.z_stream_s, ptr %124, i32 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %111
  %129 = load ptr, ptr %5, align 8
  %130 = getelementptr inbounds %struct.z_stream_s, ptr %129, i32 0, i32 4
  %131 = load i32, ptr %130, align 8
  %132 = sub i32 32768, %131
  store i32 %132, ptr %11, align 4
  br label %134

133:                                              ; preds = %111
  store i32 0, ptr %11, align 4
  store i32 1, ptr %10, align 4
  br label %134

134:                                              ; preds = %133, %128
  %135 = load ptr, ptr %5, align 8
  %136 = getelementptr inbounds %struct.z_stream_s, ptr %135, i32 0, i32 11
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 128
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load ptr, ptr %5, align 8
  %142 = getelementptr inbounds %struct.z_stream_s, ptr %141, i32 0, i32 11
  %143 = load i32, ptr %142, align 8
  %144 = and i32 %143, 64
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load ptr, ptr %5, align 8
  %148 = getelementptr inbounds %struct.z_stream_s, ptr %147, i32 0, i32 11
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 31
  store i32 %150, ptr %9, align 4
  br label %164

151:                                              ; preds = %140
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr inbounds %struct.z_stream_s, ptr %152, i32 0, i32 11
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 31
  store i32 %155, ptr %8, align 4
  %156 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %157 = load i32, ptr %156, align 8
  %158 = call i64 @lseek(i32 noundef %157, i64 noundef 0, i32 noundef 1) #8
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds %struct.z_stream_s, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 8
  %162 = zext i32 %161 to i64
  %163 = sub nsw i64 %158, %162
  store i64 %163, ptr %15, align 8
  br label %164

164:                                              ; preds = %151, %146
  br label %165

165:                                              ; preds = %164, %134
  br label %166

166:                                              ; preds = %165
  %167 = load i32, ptr %7, align 4
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %71, label %169, !llvm.loop !8

169:                                              ; preds = %166
  %170 = load ptr, ptr %5, align 8
  %171 = call i32 @inflateEnd(ptr noundef %170)
  %172 = load ptr, ptr %5, align 8
  %173 = getelementptr inbounds %struct.z_stream_s, ptr %172, i32 0, i32 1
  %174 = load i32, ptr %173, align 8
  %175 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  store i32 %174, ptr %175, align 8
  %176 = load ptr, ptr %5, align 8
  %177 = getelementptr inbounds %struct.z_stream_s, ptr %176, i32 0, i32 0
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 4
  store ptr %178, ptr %179, align 8
  %180 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %181 = load i32, ptr %180, align 8
  %182 = call i64 @lseek(i32 noundef %181, i64 noundef 0, i32 noundef 1) #8
  %183 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %184 = load i32, ptr %183, align 8
  %185 = zext i32 %184 to i64
  %186 = sub nsw i64 %182, %185
  store i64 %186, ptr %16, align 8
  %187 = load i64, ptr %12, align 8
  %188 = call i64 @read4(ptr noundef %17)
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %169
  %191 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.14, ptr noundef %191)
  br label %192

192:                                              ; preds = %190, %169
  %193 = load ptr, ptr %5, align 8
  %194 = getelementptr inbounds %struct.z_stream_s, ptr %193, i32 0, i32 5
  %195 = load i64, ptr %194, align 8
  store i64 %195, ptr %13, align 8
  %196 = load i64, ptr %13, align 8
  %197 = and i64 %196, 4294967295
  %198 = call i64 @read4(ptr noundef %17)
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.15, ptr noundef %201)
  br label %202

202:                                              ; preds = %200, %192
  %203 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = call i32 @readin(ptr noundef %17)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %202
  %210 = load ptr, ptr @stderr, align 8
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.16)
  br label %212

212:                                              ; preds = %209, %206
  %213 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %214 = load i32, ptr %213, align 8
  %215 = load i64, ptr %15, align 8
  %216 = load i32, ptr %8, align 4
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %215, %219
  %221 = call i64 @lseek(i32 noundef %214, i64 noundef %220, i32 noundef 0) #8
  %222 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %223 = load i32, ptr %222, align 8
  %224 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %225 = load ptr, ptr %224, align 8
  %226 = call i64 @read(i32 noundef %223, ptr noundef %225, i64 noundef 1)
  %227 = icmp ne i64 %226, 1
  br i1 %227, label %228, label %230

228:                                              ; preds = %212
  %229 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.17, ptr noundef %229)
  br label %230

230:                                              ; preds = %228, %212
  %231 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %232 = load ptr, ptr %231, align 8
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = load i32, ptr %8, align 4
  %236 = sub nsw i32 8, %235
  %237 = and i32 %236, 7
  %238 = shl i32 1, %237
  %239 = xor i32 %234, %238
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %242 = load ptr, ptr %241, align 8
  store i8 %240, ptr %242, align 1
  %243 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %244 = load i32, ptr %243, align 8
  %245 = call i64 @lseek(i32 noundef %244, i64 noundef -1, i32 noundef 1) #8
  %246 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %247 = load i32, ptr %246, align 8
  %248 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %249 = load ptr, ptr %248, align 8
  %250 = call i64 @write(i32 noundef %247, ptr noundef %249, i64 noundef 1)
  %251 = icmp ne i64 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %230
  %253 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.18, ptr noundef %253)
  br label %254

254:                                              ; preds = %252, %230
  %255 = load i32, ptr %10, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load ptr, ptr %14, align 8
  %259 = load i32, ptr %11, align 4
  call void @rotate(ptr noundef %258, i32 noundef 32768, i32 noundef %259)
  store i32 32768, ptr %11, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = load ptr, ptr %5, align 8
  %262 = load i32, ptr %6, align 4
  %263 = call i32 @deflateInit2_(ptr noundef %261, i32 noundef %262, i32 noundef 8, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef @.str.10, i32 noundef 112)
  store i32 %263, ptr %7, align 4
  %264 = load i32, ptr %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.3)
  br label %267

267:                                              ; preds = %266, %260
  %268 = load ptr, ptr %5, align 8
  %269 = load ptr, ptr %14, align 8
  %270 = load i32, ptr %11, align 4
  %271 = call i32 @deflateSetDictionary(ptr noundef %268, ptr noundef %269, i32 noundef %270)
  %272 = load i64, ptr %12, align 8
  %273 = load ptr, ptr %5, align 8
  %274 = getelementptr inbounds %struct.z_stream_s, ptr %273, i32 0, i32 12
  store i64 %272, ptr %274, align 8
  %275 = load i64, ptr %13, align 8
  %276 = load ptr, ptr %5, align 8
  %277 = getelementptr inbounds %struct.z_stream_s, ptr %276, i32 0, i32 2
  store i64 %275, ptr %277, align 8
  %278 = load i32, ptr %9, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %303

280:                                              ; preds = %267
  %281 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %282 = load i32, ptr %281, align 8
  %283 = load i64, ptr %16, align 8
  %284 = add nsw i64 %283, -1
  store i64 %284, ptr %16, align 8
  %285 = call i64 @lseek(i32 noundef %282, i64 noundef %284, i32 noundef 0) #8
  %286 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %287 = load i32, ptr %286, align 8
  %288 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %289 = load ptr, ptr %288, align 8
  %290 = call i64 @read(i32 noundef %287, ptr noundef %289, i64 noundef 1)
  %291 = icmp ne i64 %290, 1
  br i1 %291, label %292, label %294

292:                                              ; preds = %280
  %293 = load ptr, ptr %4, align 8
  call void @bye(ptr noundef @.str.17, ptr noundef %293)
  br label %294

294:                                              ; preds = %292, %280
  %295 = load ptr, ptr %5, align 8
  %296 = load i32, ptr %9, align 4
  %297 = sub nsw i32 8, %296
  %298 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %299 = load ptr, ptr %298, align 8
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i32
  %302 = call i32 @deflatePrime(ptr noundef %295, i32 noundef %297, i32 noundef %301)
  br label %303

303:                                              ; preds = %294, %267
  %304 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %305 = load i32, ptr %304, align 8
  %306 = load i64, ptr %16, align 8
  %307 = call i64 @lseek(i32 noundef %305, i64 noundef %306, i32 noundef 0) #8
  %308 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %308) #8
  %309 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %310 = load ptr, ptr %309, align 8
  call void @free(ptr noundef %310) #8
  %311 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 0
  %312 = load i32, ptr %311, align 8
  ret i32 %312
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gztack(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8
  %19 = call i32 (ptr, i32, ...) @open(ptr noundef %18, i32 noundef 0, i32 noundef 0)
  store i32 %19, ptr %9, align 4
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.23, ptr noundef %24)
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %4
  %28 = call noalias ptr @malloc(i64 noundef 16384) #7
  store ptr %28, ptr %13, align 8
  %29 = call noalias ptr @malloc(i64 noundef 16384) #7
  store ptr %29, ptr %14, align 8
  %30 = load ptr, ptr %13, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %14, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %27
  call void @bye(ptr noundef @.str.9, ptr noundef @.str.3)
  br label %36

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %128, %36
  %38 = load i32, ptr %9, align 4
  %39 = load ptr, ptr %13, align 8
  %40 = call i64 @read(i32 noundef %38, ptr noundef %39, i64 noundef 16384)
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %10, align 4
  %42 = load i32, ptr %10, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load ptr, ptr @stderr, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.24, ptr noundef %46)
  store i32 0, ptr %10, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, ptr %10, align 4
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 1
  store i32 %49, ptr %51, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = load i32, ptr %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, ptr %58, i32 0, i32 12
  %60 = load i64, ptr %59, align 8
  %61 = load ptr, ptr %13, align 8
  %62 = load i32, ptr %10, align 4
  %63 = call i64 @crc32(i64 noundef %60, ptr noundef %61, i32 noundef %62)
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %64, i32 0, i32 12
  store i64 %63, ptr %65, align 8
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %125, %66
  %68 = load ptr, ptr %7, align 8
  %69 = getelementptr inbounds %struct.z_stream_s, ptr %68, i32 0, i32 4
  store i32 16384, ptr %69, align 8
  %70 = load ptr, ptr %14, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %71, i32 0, i32 3
  store ptr %70, ptr %72, align 8
  %73 = load ptr, ptr %7, align 8
  %74 = load i32, ptr %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, ptr %10, align 4
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %76, %67
  %80 = phi i1 [ false, %67 ], [ %78, %76 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 4, i32 0
  %83 = call i32 @deflate(ptr noundef %73, i32 noundef %82)
  store i32 %83, ptr %11, align 4
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %84, i32 0, i32 4
  %86 = load i32, ptr %85, align 8
  %87 = sub i32 16384, %86
  store i32 %87, ptr %12, align 4
  br label %88

88:                                               ; preds = %112, %79
  %89 = load i32, ptr %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load i32, ptr %6, align 4
  %93 = load ptr, ptr %14, align 8
  %94 = getelementptr inbounds i8, ptr %93, i64 16384
  %95 = load ptr, ptr %7, align 8
  %96 = getelementptr inbounds %struct.z_stream_s, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 8
  %98 = zext i32 %97 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i8, ptr %94, i64 %99
  %101 = load i32, ptr %12, align 4
  %102 = zext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  %105 = load i32, ptr %12, align 4
  %106 = zext i32 %105 to i64
  %107 = call i64 @write(i32 noundef %92, ptr noundef %104, i64 noundef %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, ptr %10, align 4
  %109 = load i32, ptr %10, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %91
  call void @bye(ptr noundef @.str.25, ptr noundef @.str.3)
  br label %112

112:                                              ; preds = %111, %91
  %113 = load i32, ptr %10, align 4
  %114 = load i32, ptr %12, align 4
  %115 = sub i32 %114, %113
  store i32 %115, ptr %12, align 4
  br label %88, !llvm.loop !9

116:                                              ; preds = %88
  br label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %118, i32 0, i32 4
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, ptr %11, align 4
  %124 = icmp ne i32 %123, 1
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i1 [ false, %117 ], [ %124, %122 ]
  br i1 %126, label %67, label %127, !llvm.loop !10

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %37, label %131, !llvm.loop !11

131:                                              ; preds = %128
  %132 = load i32, ptr %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %216

134:                                              ; preds = %131
  %135 = load ptr, ptr %7, align 8
  %136 = call i32 @deflateEnd(ptr noundef %135)
  %137 = load ptr, ptr %7, align 8
  %138 = getelementptr inbounds %struct.z_stream_s, ptr %137, i32 0, i32 12
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i8
  %141 = load ptr, ptr %14, align 8
  %142 = getelementptr inbounds i8, ptr %141, i64 0
  store i8 %140, ptr %142, align 1
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds %struct.z_stream_s, ptr %143, i32 0, i32 12
  %145 = load i64, ptr %144, align 8
  %146 = lshr i64 %145, 8
  %147 = trunc i64 %146 to i8
  %148 = load ptr, ptr %14, align 8
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  store i8 %147, ptr %149, align 1
  %150 = load ptr, ptr %7, align 8
  %151 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 12
  %152 = load i64, ptr %151, align 8
  %153 = lshr i64 %152, 16
  %154 = trunc i64 %153 to i8
  %155 = load ptr, ptr %14, align 8
  %156 = getelementptr inbounds i8, ptr %155, i64 2
  store i8 %154, ptr %156, align 1
  %157 = load ptr, ptr %7, align 8
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 12
  %159 = load i64, ptr %158, align 8
  %160 = lshr i64 %159, 24
  %161 = trunc i64 %160 to i8
  %162 = load ptr, ptr %14, align 8
  %163 = getelementptr inbounds i8, ptr %162, i64 3
  store i8 %161, ptr %163, align 1
  %164 = load ptr, ptr %7, align 8
  %165 = getelementptr inbounds %struct.z_stream_s, ptr %164, i32 0, i32 2
  %166 = load i64, ptr %165, align 8
  %167 = trunc i64 %166 to i8
  %168 = load ptr, ptr %14, align 8
  %169 = getelementptr inbounds i8, ptr %168, i64 4
  store i8 %167, ptr %169, align 1
  %170 = load ptr, ptr %7, align 8
  %171 = getelementptr inbounds %struct.z_stream_s, ptr %170, i32 0, i32 2
  %172 = load i64, ptr %171, align 8
  %173 = lshr i64 %172, 8
  %174 = trunc i64 %173 to i8
  %175 = load ptr, ptr %14, align 8
  %176 = getelementptr inbounds i8, ptr %175, i64 5
  store i8 %174, ptr %176, align 1
  %177 = load ptr, ptr %7, align 8
  %178 = getelementptr inbounds %struct.z_stream_s, ptr %177, i32 0, i32 2
  %179 = load i64, ptr %178, align 8
  %180 = lshr i64 %179, 16
  %181 = trunc i64 %180 to i8
  %182 = load ptr, ptr %14, align 8
  %183 = getelementptr inbounds i8, ptr %182, i64 6
  store i8 %181, ptr %183, align 1
  %184 = load ptr, ptr %7, align 8
  %185 = getelementptr inbounds %struct.z_stream_s, ptr %184, i32 0, i32 2
  %186 = load i64, ptr %185, align 8
  %187 = lshr i64 %186, 24
  %188 = trunc i64 %187 to i8
  %189 = load ptr, ptr %14, align 8
  %190 = getelementptr inbounds i8, ptr %189, i64 7
  store i8 %188, ptr %190, align 1
  store i32 8, ptr %10, align 4
  br label %191

191:                                              ; preds = %210, %134
  %192 = load i32, ptr %6, align 4
  %193 = load ptr, ptr %14, align 8
  %194 = getelementptr inbounds i8, ptr %193, i64 8
  %195 = load i32, ptr %10, align 4
  %196 = sext i32 %195 to i64
  %197 = sub i64 0, %196
  %198 = getelementptr inbounds i8, ptr %194, i64 %197
  %199 = load i32, ptr %10, align 4
  %200 = sext i32 %199 to i64
  %201 = call i64 @write(i32 noundef %192, ptr noundef %198, i64 noundef %200)
  %202 = trunc i64 %201 to i32
  store i32 %202, ptr %11, align 4
  %203 = load i32, ptr %11, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  call void @bye(ptr noundef @.str.25, ptr noundef @.str.3)
  br label %206

206:                                              ; preds = %205, %191
  %207 = load i32, ptr %11, align 4
  %208 = load i32, ptr %10, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, ptr %10, align 4
  br label %210

210:                                              ; preds = %206
  %211 = load i32, ptr %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %191, label %213, !llvm.loop !12

213:                                              ; preds = %210
  %214 = load i32, ptr %6, align 4
  %215 = call i32 @close(i32 noundef %214)
  br label %216

216:                                              ; preds = %213, %131
  %217 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %217) #8
  %218 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %218) #8
  %219 = load i32, ptr %9, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, ptr %9, align 4
  %223 = call i32 @close(i32 noundef %222)
  br label %224

224:                                              ; preds = %221, %216
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readin(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = call i64 @read(i32 noundef %6, ptr noundef %9, i64 noundef %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  call void @bye(ptr noundef @.str.6, ptr noundef %22)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, ptr %3, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  store i32 %24, ptr %26, align 8
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 4
  store ptr %29, ptr %31, align 8
  %32 = load i32, ptr %3, align 4
  ret i32 %32
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gzheader(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = call i32 @readmore(ptr noundef %10)
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %11, %9 ], [ 0, %12 ]
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %22, ptr %20, align 8
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 31
  br i1 %25, label %48, label %26

26:                                               ; preds = %13
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 8
  %33 = call i32 @readmore(ptr noundef %32)
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.file, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 8
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %44, ptr %42, align 8
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 139
  br i1 %47, label %48, label %52

48:                                               ; preds = %35, %13
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  call void @bye(ptr noundef %51, ptr noundef @.str.19)
  br label %52

52:                                               ; preds = %48, %35
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load ptr, ptr %2, align 8
  %59 = call i32 @readmore(ptr noundef %58)
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 8
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %struct.file, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %70, ptr %68, align 8
  %71 = load i8, ptr %69, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 8
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds %struct.file, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 8
  call void @bye(ptr noundef @.str.20, ptr noundef %77)
  br label %78

78:                                               ; preds = %74, %61
  %79 = load ptr, ptr %2, align 8
  %80 = getelementptr inbounds %struct.file, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load ptr, ptr %2, align 8
  %85 = call i32 @readmore(ptr noundef %84)
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 0, %86 ]
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds %struct.file, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, -1
  store i32 %92, ptr %90, align 8
  %93 = load ptr, ptr %2, align 8
  %94 = getelementptr inbounds %struct.file, ptr %93, i32 0, i32 4
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %96, ptr %94, align 8
  %97 = load i8, ptr %95, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, ptr %3, align 4
  %99 = load i32, ptr %3, align 4
  %100 = and i32 %99, 224
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load ptr, ptr %2, align 8
  %104 = getelementptr inbounds %struct.file, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 8
  call void @bye(ptr noundef @.str.21, ptr noundef %105)
  br label %106

106:                                              ; preds = %102, %87
  %107 = load ptr, ptr %2, align 8
  call void @skip(ptr noundef %107, i32 noundef 6)
  %108 = load i32, ptr %3, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %157

111:                                              ; preds = %106
  %112 = load ptr, ptr %2, align 8
  %113 = getelementptr inbounds %struct.file, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load ptr, ptr %2, align 8
  %118 = call i32 @readmore(ptr noundef %117)
  br label %120

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr inbounds %struct.file, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %124, -1
  store i32 %125, ptr %123, align 8
  %126 = load ptr, ptr %2, align 8
  %127 = getelementptr inbounds %struct.file, ptr %126, i32 0, i32 4
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %129, ptr %127, align 8
  %130 = load i8, ptr %128, align 1
  %131 = zext i8 %130 to i32
  store i32 %131, ptr %4, align 4
  %132 = load ptr, ptr %2, align 8
  %133 = getelementptr inbounds %struct.file, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %120
  %137 = load ptr, ptr %2, align 8
  %138 = call i32 @readmore(ptr noundef %137)
  br label %140

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi i32 [ %138, %136 ], [ 0, %139 ]
  %142 = load ptr, ptr %2, align 8
  %143 = getelementptr inbounds %struct.file, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 8
  %145 = add i32 %144, -1
  store i32 %145, ptr %143, align 8
  %146 = load ptr, ptr %2, align 8
  %147 = getelementptr inbounds %struct.file, ptr %146, i32 0, i32 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds i8, ptr %148, i32 1
  store ptr %149, ptr %147, align 8
  %150 = load i8, ptr %148, align 1
  %151 = zext i8 %150 to i32
  %152 = shl i32 %151, 8
  %153 = load i32, ptr %4, align 4
  %154 = add i32 %153, %152
  store i32 %154, ptr %4, align 4
  %155 = load ptr, ptr %2, align 8
  %156 = load i32, ptr %4, align 4
  call void @skip(ptr noundef %155, i32 noundef %156)
  br label %157

157:                                              ; preds = %140, %106
  %158 = load i32, ptr %3, align 4
  %159 = and i32 %158, 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %184, %161
  %163 = load ptr, ptr %2, align 8
  %164 = getelementptr inbounds %struct.file, ptr %163, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load ptr, ptr %2, align 8
  %169 = call i32 @readmore(ptr noundef %168)
  br label %171

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %167
  %172 = phi i32 [ %169, %167 ], [ 0, %170 ]
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr inbounds %struct.file, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 8
  %176 = add i32 %175, -1
  store i32 %176, ptr %174, align 8
  %177 = load ptr, ptr %2, align 8
  %178 = getelementptr inbounds %struct.file, ptr %177, i32 0, i32 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds i8, ptr %179, i32 1
  store ptr %180, ptr %178, align 8
  %181 = load i8, ptr %179, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %171
  br label %162, !llvm.loop !13

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185, %157
  %187 = load i32, ptr %3, align 4
  %188 = and i32 %187, 16
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  br label %191

191:                                              ; preds = %213, %190
  %192 = load ptr, ptr %2, align 8
  %193 = getelementptr inbounds %struct.file, ptr %192, i32 0, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load ptr, ptr %2, align 8
  %198 = call i32 @readmore(ptr noundef %197)
  br label %200

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %199, %196
  %201 = phi i32 [ %198, %196 ], [ 0, %199 ]
  %202 = load ptr, ptr %2, align 8
  %203 = getelementptr inbounds %struct.file, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = add i32 %204, -1
  store i32 %205, ptr %203, align 8
  %206 = load ptr, ptr %2, align 8
  %207 = getelementptr inbounds %struct.file, ptr %206, i32 0, i32 4
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds i8, ptr %208, i32 1
  store ptr %209, ptr %207, align 8
  %210 = load i8, ptr %208, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  br label %191, !llvm.loop !14

214:                                              ; preds = %200
  br label %215

215:                                              ; preds = %214, %186
  %216 = load i32, ptr %3, align 4
  %217 = and i32 %216, 2
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load ptr, ptr %2, align 8
  call void @skip(ptr noundef %220, i32 noundef 2)
  br label %221

221:                                              ; preds = %219, %215
  ret void
}

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @inflate(ptr noundef, i32 noundef) #1

declare i32 @inflateEnd(ptr noundef) #1

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %105

16:                                               ; preds = %3
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %5, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr %6, align 4
  %23 = urem i32 %22, %21
  store i32 %23, ptr %6, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, ptr %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %105

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  store ptr %33, ptr %10, align 8
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load ptr, ptr %4, align 8
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %7, align 1
  %39 = load ptr, ptr %4, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i32, ptr %5, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %39, ptr align 1 %41, i64 %44, i1 false)
  %45 = load i8, ptr %7, align 1
  %46 = load ptr, ptr %10, align 8
  store i8 %45, ptr %46, align 1
  br label %105

47:                                               ; preds = %28
  %48 = load i32, ptr %6, align 4
  %49 = load i32, ptr %5, align 4
  %50 = sub i32 %49, 1
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load ptr, ptr %10, align 8
  %54 = load i8, ptr %53, align 1
  store i8 %54, ptr %7, align 1
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load ptr, ptr %4, align 8
  %58 = load i32, ptr %5, align 4
  %59 = sub i32 %58, 1
  %60 = zext i32 %59 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %60, i1 false)
  %61 = load i8, ptr %7, align 1
  %62 = load ptr, ptr %4, align 8
  store i8 %61, ptr %62, align 1
  br label %105

63:                                               ; preds = %47
  %64 = load i32, ptr %5, align 4
  %65 = load i32, ptr %6, align 4
  %66 = call i32 @gcd(i32 noundef %64, i32 noundef %65)
  store i32 %66, ptr %8, align 4
  br label %67

67:                                               ; preds = %101, %63
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  store ptr %71, ptr %12, align 8
  store ptr %71, ptr %9, align 8
  %72 = load ptr, ptr %12, align 8
  %73 = load i8, ptr %72, align 1
  store i8 %73, ptr %7, align 1
  br label %74

74:                                               ; preds = %94, %67
  %75 = load ptr, ptr %12, align 8
  store ptr %75, ptr %11, align 8
  %76 = load i32, ptr %6, align 4
  %77 = load ptr, ptr %12, align 8
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  store ptr %79, ptr %12, align 8
  %80 = load ptr, ptr %12, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = icmp ugt ptr %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, ptr %5, align 4
  %85 = load ptr, ptr %12, align 8
  %86 = zext i32 %84 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  store ptr %88, ptr %12, align 8
  br label %89

89:                                               ; preds = %83, %74
  %90 = load ptr, ptr %12, align 8
  %91 = load ptr, ptr %9, align 8
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %98

94:                                               ; preds = %89
  %95 = load ptr, ptr %12, align 8
  %96 = load i8, ptr %95, align 1
  %97 = load ptr, ptr %11, align 8
  store i8 %96, ptr %97, align 1
  br label %74

98:                                               ; preds = %93
  %99 = load i8, ptr %7, align 1
  %100 = load ptr, ptr %11, align 8
  store i8 %99, ptr %100, align 1
  br label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %8, align 4
  %103 = add i32 %102, -1
  store i32 %103, ptr %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %67, label %105, !llvm.loop !15

105:                                              ; preds = %15, %27, %36, %52, %101
  ret void
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @deflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @deflatePrime(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = load i32, ptr %4, align 4
  %16 = sub i32 %15, %14
  store i32 %16, ptr %4, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 1, %20
  %22 = sub i32 %21, 1
  %23 = xor i32 %22, -1
  %24 = and i32 %17, %23
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %11
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = load i32, ptr %5, align 4
  %32 = zext i32 %31 to i64
  %33 = call i64 @lseek(i32 noundef %30, i64 noundef %32, i32 noundef 1) #8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  call void @bye(ptr noundef @.str.22, ptr noundef %38)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32, ptr %5, align 4
  %41 = load i32, ptr %4, align 4
  %42 = sub i32 %41, %40
  store i32 %42, ptr %4, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load ptr, ptr %3, align 8
  %45 = call i32 @readmore(ptr noundef %44)
  %46 = load i32, ptr %4, align 4
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.file, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  call void @bye(ptr noundef @.str.5, ptr noundef %54)
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, ptr %4, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = sub i32 %60, %57
  store i32 %61, ptr %59, align 8
  %62 = load i32, ptr %4, align 4
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 8
  %66 = zext i32 %62 to i64
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  store ptr %67, ptr %64, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcd(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i32, ptr %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %4, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 4
  store i32 %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %26, %18
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %5, align 4
  %23 = sub i32 %21, %22
  %24 = load i32, ptr %5, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, ptr %5, align 4
  %28 = shl i32 %27, 1
  store i32 %28, ptr %5, align 4
  br label %20, !llvm.loop !16

29:                                               ; preds = %20
  %30 = load i32, ptr %5, align 4
  %31 = load i32, ptr %3, align 4
  %32 = sub i32 %31, %30
  store i32 %32, ptr %3, align 4
  br label %48

33:                                               ; preds = %14
  %34 = load i32, ptr %3, align 4
  store i32 %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %41, %33
  %36 = load i32, ptr %4, align 4
  %37 = load i32, ptr %5, align 4
  %38 = sub i32 %36, %37
  %39 = load i32, ptr %5, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, ptr %5, align 4
  %43 = shl i32 %42, 1
  store i32 %43, ptr %5, align 4
  br label %35, !llvm.loop !17

44:                                               ; preds = %35
  %45 = load i32, ptr %5, align 4
  %46 = load i32, ptr %4, align 4
  %47 = sub i32 %46, %45
  store i32 %47, ptr %4, align 4
  br label %48

48:                                               ; preds = %44, %29
  br label %6, !llvm.loop !18

49:                                               ; preds = %12
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %4, align 4
  %52 = add i32 %50, %51
  ret i32 %52
}

declare i32 @deflate(ptr noundef, i32 noundef) #1

declare i32 @deflateEnd(ptr noundef) #1

declare i32 @close(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
