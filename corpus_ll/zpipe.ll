; ModuleID = 'corpus_zlib/examples/zpipe.c'
source_filename = "corpus_zlib/examples/zpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ret != Z_STREAM_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"corpus_zlib/examples/zpipe.c\00", align 1
@__PRETTY_FUNCTION__.def = private unnamed_addr constant [29 x i8] c"int def(FILE *, FILE *, int)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"strm.avail_in == 0\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ret == Z_STREAM_END\00", align 1
@__PRETTY_FUNCTION__.inf = private unnamed_addr constant [24 x i8] c"int inf(FILE *, FILE *)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"zpipe: \00", align 1
@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@stdout = external global ptr, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"error writing stdout\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"invalid compression level\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"invalid or incomplete deflate data\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"zlib version mismatch!\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"zpipe usage: zpipe [-d] < source > dest\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @def(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.z_stream_s, align 8
  %12 = alloca [16384 x i8], align 16
  %13 = alloca [16384 x i8], align 16
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 8
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 9
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 10
  store ptr null, ptr %16, align 8
  %17 = load i32, ptr %7, align 4
  %18 = call i32 @deflateInit_(ptr noundef %11, i32 noundef %17, ptr noundef @.str, i32 noundef 112)
  store i32 %18, ptr %8, align 4
  %19 = load i32, ptr %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, ptr %8, align 4
  store i32 %22, ptr %4, align 4
  br label %93

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %83, %23
  %25 = getelementptr inbounds [16384 x i8], ptr %12, i64 0, i64 0
  %26 = load ptr, ptr %5, align 8
  %27 = call i64 @fread(ptr noundef %25, i64 noundef 1, i64 noundef 16384, ptr noundef %26)
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 1
  store i32 %28, ptr %29, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = call i32 @ferror(ptr noundef %30) #5
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @deflateEnd(ptr noundef %11)
  store i32 -1, ptr %4, align 4
  br label %93

35:                                               ; preds = %24
  %36 = load ptr, ptr %5, align 8
  %37 = call i32 @feof(ptr noundef %36) #5
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 4, i32 0
  store i32 %40, ptr %9, align 4
  %41 = getelementptr inbounds [16384 x i8], ptr %12, i64 0, i64 0
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 0
  store ptr %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %72, %35
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  store i32 16384, ptr %44, align 8
  %45 = getelementptr inbounds [16384 x i8], ptr %13, i64 0, i64 0
  %46 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 3
  store ptr %45, ptr %46, align 8
  %47 = load i32, ptr %9, align 4
  %48 = call i32 @deflate(ptr noundef %11, i32 noundef %47)
  store i32 %48, ptr %8, align 4
  %49 = load i32, ptr %8, align 4
  %50 = icmp ne i32 %49, -2
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %53

52:                                               ; preds = %43
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 69, ptr noundef @__PRETTY_FUNCTION__.def) #6
  unreachable

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 16384, %55
  store i32 %56, ptr %10, align 4
  %57 = getelementptr inbounds [16384 x i8], ptr %13, i64 0, i64 0
  %58 = load i32, ptr %10, align 4
  %59 = zext i32 %58 to i64
  %60 = load ptr, ptr %6, align 8
  %61 = call i64 @fwrite(ptr noundef %57, i64 noundef 1, i64 noundef %59, ptr noundef %60)
  %62 = load i32, ptr %10, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = load ptr, ptr %6, align 8
  %67 = call i32 @ferror(ptr noundef %66) #5
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %53
  %70 = call i32 @deflateEnd(ptr noundef %11)
  store i32 -1, ptr %4, align 4
  br label %93

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %43, label %76, !llvm.loop !6

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %82

81:                                               ; preds = %76
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 76, ptr noundef @__PRETTY_FUNCTION__.def) #6
  unreachable

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %9, align 4
  %85 = icmp ne i32 %84, 4
  br i1 %85, label %24, label %86, !llvm.loop !8

86:                                               ; preds = %83
  %87 = load i32, ptr %8, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %91

90:                                               ; preds = %86
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 80, ptr noundef @__PRETTY_FUNCTION__.def) #6
  unreachable

91:                                               ; preds = %89
  %92 = call i32 @deflateEnd(ptr noundef %11)
  store i32 0, ptr %4, align 4
  br label %93

93:                                               ; preds = %91, %69, %33, %21
  %94 = load i32, ptr %4, align 4
  ret i32 %94
}

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #2

declare i32 @deflateEnd(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #2

declare i32 @deflate(ptr noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_stream_s, align 8
  %9 = alloca [16384 x i8], align 16
  %10 = alloca [16384 x i8], align 16
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 8
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 9
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 10
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  store ptr null, ptr %15, align 8
  %16 = call i32 @inflateInit_(ptr noundef %8, ptr noundef @.str, i32 noundef 112)
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, ptr %6, align 4
  store i32 %20, ptr %3, align 4
  br label %89

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %80, %21
  %23 = getelementptr inbounds [16384 x i8], ptr %9, i64 0, i64 0
  %24 = load ptr, ptr %4, align 8
  %25 = call i64 @fread(ptr noundef %23, i64 noundef 1, i64 noundef 16384, ptr noundef %24)
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  store i32 %26, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = call i32 @ferror(ptr noundef %28) #5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @inflateEnd(ptr noundef %8)
  store i32 -1, ptr %3, align 4
  br label %89

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %83

38:                                               ; preds = %33
  %39 = getelementptr inbounds [16384 x i8], ptr %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 0
  store ptr %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %75, %38
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  store i32 16384, ptr %42, align 8
  %43 = getelementptr inbounds [16384 x i8], ptr %10, i64 0, i64 0
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 3
  store ptr %43, ptr %44, align 8
  %45 = call i32 @inflate(ptr noundef %8, i32 noundef 0)
  store i32 %45, ptr %6, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp ne i32 %46, -2
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %50

49:                                               ; preds = %41
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 127, ptr noundef @__PRETTY_FUNCTION__.inf) #6
  unreachable

50:                                               ; preds = %48
  %51 = load i32, ptr %6, align 4
  switch i32 %51, label %56 [
    i32 2, label %52
    i32 -3, label %53
    i32 -4, label %53
  ]

52:                                               ; preds = %50
  store i32 -3, ptr %6, align 4
  br label %53

53:                                               ; preds = %50, %50, %52
  %54 = call i32 @inflateEnd(ptr noundef %8)
  %55 = load i32, ptr %6, align 4
  store i32 %55, ptr %3, align 4
  br label %89

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = sub i32 16384, %58
  store i32 %59, ptr %7, align 4
  %60 = getelementptr inbounds [16384 x i8], ptr %10, i64 0, i64 0
  %61 = load i32, ptr %7, align 4
  %62 = zext i32 %61 to i64
  %63 = load ptr, ptr %5, align 8
  %64 = call i64 @fwrite(ptr noundef %60, i64 noundef 1, i64 noundef %62, ptr noundef %63)
  %65 = load i32, ptr %7, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %56
  %69 = load ptr, ptr %5, align 8
  %70 = call i32 @ferror(ptr noundef %69) #5
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %56
  %73 = call i32 @inflateEnd(ptr noundef %8)
  store i32 -1, ptr %3, align 4
  br label %89

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %8, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %41, label %79, !llvm.loop !9

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %6, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %22, label %83, !llvm.loop !10

83:                                               ; preds = %80, %37
  %84 = call i32 @inflateEnd(ptr noundef %8)
  %85 = load i32, ptr %6, align 4
  %86 = icmp eq i32 %85, 1
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 -3
  store i32 %88, ptr %3, align 4
  br label %89

89:                                               ; preds = %83, %72, %53, %31, %19
  %90 = load i32, ptr %3, align 4
  ret i32 %90
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @inflateEnd(ptr noundef) #1

declare i32 @inflate(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zerr(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load ptr, ptr @stderr, align 8
  %4 = call i32 @fputs(ptr noundef @.str.5, ptr noundef %3)
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %33 [
    i32 -1, label %6
    i32 -2, label %21
    i32 -3, label %24
    i32 -4, label %27
    i32 -6, label %30
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdin, align 8
  %8 = call i32 @ferror(ptr noundef %7) #5
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr @stderr, align 8
  %12 = call i32 @fputs(ptr noundef @.str.6, ptr noundef %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = load ptr, ptr @stdout, align 8
  %15 = call i32 @ferror(ptr noundef %14) #5
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8
  %19 = call i32 @fputs(ptr noundef @.str.7, ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %33

21:                                               ; preds = %1
  %22 = load ptr, ptr @stderr, align 8
  %23 = call i32 @fputs(ptr noundef @.str.8, ptr noundef %22)
  br label %33

24:                                               ; preds = %1
  %25 = load ptr, ptr @stderr, align 8
  %26 = call i32 @fputs(ptr noundef @.str.9, ptr noundef %25)
  br label %33

27:                                               ; preds = %1
  %28 = load ptr, ptr @stderr, align 8
  %29 = call i32 @fputs(ptr noundef @.str.10, ptr noundef %28)
  br label %33

30:                                               ; preds = %1
  %31 = load ptr, ptr @stderr, align 8
  %32 = call i32 @fputs(ptr noundef @.str.11, ptr noundef %31)
  br label %33

33:                                               ; preds = %30, %1, %27, %24, %21, %20
  ret void
}

declare i32 @fputs(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load ptr, ptr @stdin, align 8
  %11 = load ptr, ptr @stdout, align 8
  %12 = call i32 @def(ptr noundef %10, ptr noundef %11, i32 noundef -1)
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, ptr %6, align 4
  call void @zerr(i32 noundef %16)
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, ptr %6, align 4
  store i32 %18, ptr %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.12) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load ptr, ptr @stdin, align 8
  %30 = load ptr, ptr @stdout, align 8
  %31 = call i32 @inf(ptr noundef %29, ptr noundef %30)
  store i32 %31, ptr %6, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, ptr %6, align 4
  call void @zerr(i32 noundef %35)
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, ptr %6, align 4
  store i32 %37, ptr %3, align 4
  br label %41

38:                                               ; preds = %22, %19
  %39 = load ptr, ptr @stderr, align 8
  %40 = call i32 @fputs(ptr noundef @.str.13, ptr noundef %39)
  store i32 1, ptr %3, align 4
  br label %41

41:                                               ; preds = %38, %36, %17
  %42 = load i32, ptr %3, align 4
  ret i32 %42
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
