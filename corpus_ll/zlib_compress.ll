; ModuleID = 'corpus_src/zlib/compress.c'
source_filename = "corpus_src/zlib/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.z_stream_s, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #6
  %7 = icmp ne i64 %3, 0
  %8 = icmp eq ptr %2, null
  %9 = and i1 %8, %7
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %58, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8, !tbaa !5
  %14 = icmp ne i64 %13, 0
  %15 = icmp eq ptr %0, null
  %16 = and i1 %15, %14
  br i1 %16, label %58, label %17

17:                                               ; preds = %12
  store i64 0, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %19 = call i32 @deflateInit_(ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull @.str, i32 noundef 112) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 3
  store ptr %0, ptr %22, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !13
  store ptr %2, ptr %6, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %6, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !15
  br label %27

25:                                               ; preds = %44
  %26 = load i32, ptr %23, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %26, %25 ], [ 0, %21 ]
  %29 = phi i64 [ %45, %25 ], [ %3, %21 ]
  %30 = phi i64 [ %37, %25 ], [ %13, %21 ]
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i64 @llvm.umin.i64(i64 %30, i64 4294967295)
  %34 = trunc i64 %33 to i32
  store i32 %34, ptr %23, align 8, !tbaa !13
  %35 = sub i64 %30, %33
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i64 [ %35, %32 ], [ %30, %27 ]
  %38 = load i32, ptr %24, align 8, !tbaa !15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i64 @llvm.umin.i64(i64 %29, i64 4294967295)
  %42 = trunc i64 %41 to i32
  store i32 %42, ptr %24, align 8, !tbaa !15
  %43 = sub i64 %29, %41
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %43, %40 ], [ %29, %36 ]
  %46 = icmp eq i64 %45, 0
  %47 = select i1 %46, i32 4, i32 0
  %48 = call i32 @deflate(ptr noundef nonnull %6, i32 noundef %47) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %25, label %50, !llvm.loop !16

50:                                               ; preds = %44
  %51 = load ptr, ptr %22, align 8, !tbaa !9
  %52 = ptrtoint ptr %51 to i64
  %53 = ptrtoint ptr %0 to i64
  %54 = sub i64 %52, %53
  store i64 %54, ptr %1, align 8, !tbaa !5
  %55 = call i32 @deflateEnd(ptr noundef nonnull %6) #6
  %56 = icmp eq i32 %48, 1
  %57 = select i1 %56, i32 0, i32 %48
  br label %58

58:                                               ; preds = %17, %5, %12, %50
  %59 = phi i32 [ %57, %50 ], [ -2, %12 ], [ -2, %5 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #6
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @compress2(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %7 = load i64, ptr %1, align 8, !tbaa !5
  store i64 %7, ptr %6, align 8, !tbaa !5
  %8 = call i32 @compress2_z(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  %9 = load i64, ptr %6, align 8, !tbaa !5
  store i64 %9, ptr %1, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @compress2_z(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compress(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %6 = load i64, ptr %1, align 8, !tbaa !5
  store i64 %6, ptr %5, align 8, !tbaa !5
  %7 = call i32 @compress2_z(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, i64 noundef %3, i32 noundef -1)
  %8 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %8, ptr %1, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compressBound_z(i64 noundef %0) local_unnamed_addr #3 {
  %2 = lshr i64 %0, 12
  %3 = lshr i64 %0, 14
  %4 = lshr i64 %0, 25
  %5 = add i64 %0, 13
  %6 = add i64 %5, %2
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = icmp ult i64 %8, %0
  %10 = select i1 %9, i64 -1, i64 %8
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compressBound(i64 noundef %0) local_unnamed_addr #3 {
  %2 = lshr i64 %0, 12
  %3 = lshr i64 %0, 14
  %4 = lshr i64 %0, 25
  %5 = add i64 %0, 13
  %6 = add i64 %5, %2
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = icmp ult i64 %8, %0
  %10 = select i1 %9, i64 -1, i64 %8
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!9 = !{!10, !11, i64 24}
!10 = !{!"z_stream_s", !11, i64 0, !12, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !6, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !6, i64 96, !6, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !12, i64 32}
!14 = !{!10, !11, i64 0}
!15 = !{!10, !12, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
