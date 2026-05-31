; ModuleID = 'corpus_src/zlib/uncompr.c'
source_filename = "corpus_src/zlib/uncompr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #5
  %6 = icmp eq ptr %3, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %3, align 8, !tbaa !5
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %72, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %1, align 8, !tbaa !5
  %16 = icmp ne i64 %15, 0
  %17 = icmp eq ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %72, label %19

19:                                               ; preds = %14
  store ptr %2, ptr %5, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 112) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %19
  %25 = icmp eq i64 %15, 0
  %26 = and i1 %17, %25
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 13
  %28 = select i1 %26, ptr %27, ptr %0
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %5, i64 0, i32 4
  store i32 0, ptr %30, align 8, !tbaa !15
  br label %33

31:                                               ; preds = %50
  %32 = load i32, ptr %30, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = phi i64 [ %51, %31 ], [ %8, %24 ]
  %36 = phi i64 [ %43, %31 ], [ %15, %24 ]
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i64 @llvm.umin.i64(i64 %36, i64 4294967295)
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %30, align 8, !tbaa !15
  %41 = sub i64 %36, %39
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i64 [ %41, %38 ], [ %36, %33 ]
  %44 = load i32, ptr %20, align 8, !tbaa !13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i64 @llvm.umin.i64(i64 %35, i64 4294967295)
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %20, align 8, !tbaa !13
  %49 = sub i64 %35, %47
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %49, %46 ], [ %35, %42 ]
  %52 = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 0) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %31, label %54, !llvm.loop !16

54:                                               ; preds = %50
  %55 = load i32, ptr %20, align 8, !tbaa !13
  %56 = zext i32 %55 to i64
  %57 = add i64 %51, %56
  %58 = load i32, ptr %30, align 8, !tbaa !15
  %59 = zext i32 %58 to i64
  %60 = load i64, ptr %3, align 8, !tbaa !5
  %61 = sub i64 %60, %57
  store i64 %61, ptr %3, align 8, !tbaa !5
  %62 = load i64, ptr %1, align 8, !tbaa !5
  %63 = add i64 %43, %59
  %64 = sub i64 %62, %63
  store i64 %64, ptr %1, align 8, !tbaa !5
  %65 = call i32 @inflateEnd(ptr noundef nonnull %5) #5
  switch i32 %52, label %66 [
    i32 1, label %72
    i32 2, label %71
  ]

66:                                               ; preds = %54
  %67 = icmp eq i32 %52, -5
  %68 = icmp eq i64 %57, 0
  %69 = select i1 %67, i1 %68, i1 false
  %70 = select i1 %69, i32 -3, i32 %52
  br label %72

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %66, %71, %54, %19, %4, %7, %14
  %73 = phi i32 [ -2, %14 ], [ -2, %7 ], [ -2, %4 ], [ %22, %19 ], [ 0, %54 ], [ %70, %66 ], [ -3, %71 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #5
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress2(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %7 = load i64, ptr %1, align 8, !tbaa !5
  store i64 %7, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %8 = load i64, ptr %3, align 8, !tbaa !5
  store i64 %8, ptr %6, align 8, !tbaa !5
  %9 = call i32 @uncompress2_z(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6)
  %10 = load i64, ptr %6, align 8, !tbaa !5
  store i64 %10, ptr %3, align 8, !tbaa !5
  %11 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %11, ptr %1, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i64 %3, ptr %5, align 8, !tbaa !5
  %6 = call i32 @uncompress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uncompress(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %7 = load i64, ptr %1, align 8, !tbaa !5
  store i64 %7, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store i64 %3, ptr %6, align 8, !tbaa !5
  %8 = call i32 @uncompress2_z(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %6)
  %9 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %9, ptr %1, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"z_stream_s", !11, i64 0, !12, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !6, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !6, i64 96, !6, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !12, i64 8}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !12, i64 32}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
