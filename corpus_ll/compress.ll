; ModuleID = 'corpus_zlib/compress.c'
source_filename = "corpus_zlib/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_stream_s, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store i32 -1, ptr %14, align 4
  %16 = load i64, ptr %10, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load ptr, ptr %9, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18, %5
  %22 = load ptr, ptr %8, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %8, align 8
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %21, %18
  store i32 -2, ptr %6, align 4
  br label %115

32:                                               ; preds = %28, %24
  %33 = load ptr, ptr %8, align 8
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %15, align 8
  %35 = load ptr, ptr %8, align 8
  store i64 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 8
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 9
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 10
  store ptr null, ptr %38, align 8
  %39 = load i32, ptr %11, align 4
  %40 = call i32 @deflateInit_(ptr noundef %12, i32 noundef %39, ptr noundef @.str, i32 noundef 112)
  store i32 %40, ptr %13, align 4
  %41 = load i32, ptr %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, ptr %13, align 4
  store i32 %44, ptr %6, align 4
  br label %115

45:                                               ; preds = %32
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3
  store ptr %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 4
  store i32 0, ptr %48, align 8
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 0
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  store i32 0, ptr %51, align 8
  br label %52

52:                                               ; preds = %96, %45
  %53 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i64, ptr %15, align 8
  %58 = icmp ugt i64 %57, 4294967295
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load i64, ptr %15, align 8
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i32 [ -1, %59 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 4
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 4
  %67 = load i32, ptr %66, align 8
  %68 = zext i32 %67 to i64
  %69 = load i64, ptr %15, align 8
  %70 = sub i64 %69, %68
  store i64 %70, ptr %15, align 8
  br label %71

71:                                               ; preds = %63, %52
  %72 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i64, ptr %10, align 8
  %77 = icmp ugt i64 %76, 4294967295
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %82

79:                                               ; preds = %75
  %80 = load i64, ptr %10, align 8
  %81 = trunc i64 %80 to i32
  br label %82

82:                                               ; preds = %79, %78
  %83 = phi i32 [ -1, %78 ], [ %81, %79 ]
  %84 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  store i32 %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 1
  %86 = load i32, ptr %85, align 8
  %87 = zext i32 %86 to i64
  %88 = load i64, ptr %10, align 8
  %89 = sub i64 %88, %87
  store i64 %89, ptr %10, align 8
  br label %90

90:                                               ; preds = %82, %71
  %91 = load i64, ptr %10, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 4
  %95 = call i32 @deflate(ptr noundef %12, i32 noundef %94)
  store i32 %95, ptr %13, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, ptr %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %52, label %99, !llvm.loop !6

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.z_stream_s, ptr %12, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = load ptr, ptr %7, align 8
  %103 = ptrtoint ptr %101 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = load ptr, ptr %8, align 8
  store i64 %105, ptr %106, align 8
  %107 = call i32 @deflateEnd(ptr noundef %12)
  %108 = load i32, ptr %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %113

111:                                              ; preds = %99
  %112 = load i32, ptr %13, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ 0, %110 ], [ %112, %111 ]
  store i32 %114, ptr %6, align 4
  br label %115

115:                                              ; preds = %113, %43, %31
  %116 = load i32, ptr %6, align 4
  ret i32 %116
}

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @deflate(ptr noundef, i32 noundef) #1

declare i32 @deflateEnd(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i32 %4, ptr %10, align 4
  %13 = load ptr, ptr %7, align 8
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load i64, ptr %9, align 8
  %18 = load i32, ptr %10, align 4
  %19 = call i32 @compress2_z(ptr noundef %15, ptr noundef %12, ptr noundef %16, i64 noundef %17, i32 noundef %18)
  store i32 %19, ptr %11, align 4
  %20 = load i64, ptr %12, align 8
  %21 = load ptr, ptr %7, align 8
  store i64 %20, ptr %21, align 8
  %22 = load i32, ptr %11, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %8, align 8
  %13 = call i32 @compress2_z(ptr noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef -1)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %8, align 8
  %13 = call i32 @compress2(ptr noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12, i32 noundef -1)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compressBound_z(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  %5 = load i64, ptr %2, align 8
  %6 = lshr i64 %5, 12
  %7 = add i64 %4, %6
  %8 = load i64, ptr %2, align 8
  %9 = lshr i64 %8, 14
  %10 = add i64 %7, %9
  %11 = load i64, ptr %2, align 8
  %12 = lshr i64 %11, 25
  %13 = add i64 %10, %12
  %14 = add i64 %13, 13
  store i64 %14, ptr %3, align 8
  %15 = load i64, ptr %3, align 8
  %16 = load i64, ptr %2, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load i64, ptr %3, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i64 [ -1, %18 ], [ %20, %19 ]
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compressBound(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  %5 = call i64 @compressBound_z(i64 noundef %4)
  store i64 %5, ptr %3, align 8
  %6 = load i64, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  %11 = load i64, ptr %3, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i64 [ -1, %9 ], [ %11, %10 ]
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
