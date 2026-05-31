; ModuleID = 'corpus_src/zlib/contrib/minizip/ioapi.c'
source_filename = "corpus_src/zlib/contrib/minizip/ioapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zlib_filefunc_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @call_zopen64(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %11 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = tail call ptr %10(ptr noundef %12, ptr noundef %1, i32 noundef %2) #8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local i64 @call_zseek64(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = tail call i64 %12(ptr noundef %14, ptr noundef %1, i64 noundef %2, i32 noundef %3) #8
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define dso_local i64 @call_ztell64(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = tail call i64 %10(ptr noundef %7, ptr noundef %1) #8
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = tail call i64 %14(ptr noundef %7, ptr noundef %1) #8
  %16 = icmp eq i64 %15, 4294967295
  %17 = select i1 %16, i64 -1, i64 %15
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i64 [ %11, %8 ], [ %17, %12 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  store ptr null, ptr %0, align 8, !tbaa !5
  %3 = load ptr, ptr %1, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %7 = load <2 x ptr>, ptr %5, align 8, !tbaa !19
  store <2 x ptr> %7, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 5
  %11 = load <2 x ptr>, ptr %9, align 8, !tbaa !19
  store <2 x ptr> %11, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %0, i64 0, i32 2
  %17 = load <2 x ptr>, ptr %15, align 8, !tbaa !19
  store <2 x ptr> %17, ptr %16, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fill_fopen_filefunc(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @fopen_file_func, ptr %0, align 8, !tbaa !17
  %2 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 1
  store ptr @fread_file_func, ptr %2, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 2
  store ptr @fwrite_file_func, ptr %3, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 3
  store ptr @ftell_file_func, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 4
  store ptr @fseek_file_func, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 5
  store ptr @fclose_file_func, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 6
  store ptr @ferror_file_func, ptr %7, align 8, !tbaa !26
  %8 = getelementptr inbounds %struct.zlib_filefunc_def_s, ptr %0, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noalias noundef ptr @fopen_file_func(ptr nocapture readnone %0, ptr noundef readonly %1, i32 noundef %2) #3 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = and i32 %2, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = and i32 %2, 8
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %11, ptr @.str.2, ptr null
  br label %13

13:                                               ; preds = %9, %6, %3
  %14 = phi i1 [ true, %3 ], [ true, %6 ], [ %11, %9 ]
  %15 = phi ptr [ @.str, %3 ], [ @.str.1, %6 ], [ %12, %9 ]
  %16 = icmp ne ptr %1, null
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef %15)
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @fread_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i64 noundef %3) #3 {
  %5 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %3, ptr noundef %1)
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @fwrite_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i64 noundef %3) #3 {
  %5 = tail call i64 @fwrite(ptr noundef %2, i64 noundef 1, i64 noundef %3, ptr noundef %1)
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ftell_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 {
  %3 = tail call i64 @ftell(ptr noundef %1)
  ret i64 %3
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @fseek_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1, i64 noundef %2, i32 noundef %3) #3 {
  %5 = icmp ult i32 %3, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = tail call i32 @fseek(ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %8 = icmp ne i32 %7, 0
  %9 = sext i1 %8 to i64
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi i64 [ %9, %6 ], [ -1, %4 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @fclose_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 {
  %3 = tail call i32 @fclose(ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal noundef i32 @ferror_file_func(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call i32 @ferror(ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @fill_fopen64_filefunc(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @fopen64_file_func, ptr %0, align 8, !tbaa !27
  %2 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  store ptr @fread_file_func, ptr %2, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  store ptr @fwrite_file_func, ptr %3, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 3
  store ptr @ftell64_file_func, ptr %4, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 4
  store ptr @fseek64_file_func, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 5
  store ptr @fclose_file_func, ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  store ptr @ferror_file_func, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noalias noundef ptr @fopen64_file_func(ptr nocapture readnone %0, ptr noundef readonly %1, i32 noundef %2) #3 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = and i32 %2, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = and i32 %2, 8
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %11, ptr @.str.2, ptr null
  br label %13

13:                                               ; preds = %9, %6, %3
  %14 = phi i1 [ true, %3 ], [ true, %6 ], [ %11, %9 ]
  %15 = phi ptr [ @.str, %3 ], [ @.str.1, %6 ], [ %12, %9 ]
  %16 = icmp ne ptr %1, null
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call noalias ptr @fopen64(ptr noundef nonnull %1, ptr noundef %15)
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %19, %18 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ftell64_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 {
  %3 = tail call i64 @ftello64(ptr noundef %1)
  ret i64 %3
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @fseek64_file_func(ptr nocapture readnone %0, ptr nocapture noundef %1, i64 noundef %2, i32 noundef %3) #3 {
  %5 = icmp ult i32 %3, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = tail call i32 @fseeko64(ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %8 = icmp ne i32 %7, 0
  %9 = sext i1 %8 to i64
  br label %10

10:                                               ; preds = %4, %6
  %11 = phi i64 [ %9, %6 ], [ -1, %4 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko64(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !8, i64 0}
!6 = !{!"zlib_filefunc64_32_def_s", !7, i64 0, !8, i64 64, !8, i64 72, !8, i64 80}
!7 = !{!"zlib_filefunc64_def_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 64}
!12 = !{!6, !8, i64 56}
!13 = !{!6, !8, i64 32}
!14 = !{!6, !8, i64 80}
!15 = !{!6, !8, i64 24}
!16 = !{!6, !8, i64 72}
!17 = !{!18, !8, i64 0}
!18 = !{!"zlib_filefunc_def_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!19 = !{!8, !8, i64 0}
!20 = !{!18, !8, i64 56}
!21 = !{!18, !8, i64 8}
!22 = !{!18, !8, i64 16}
!23 = !{!18, !8, i64 24}
!24 = !{!18, !8, i64 32}
!25 = !{!18, !8, i64 40}
!26 = !{!18, !8, i64 48}
!27 = !{!7, !8, i64 0}
!28 = !{!7, !8, i64 8}
!29 = !{!7, !8, i64 16}
!30 = !{!7, !8, i64 24}
!31 = !{!7, !8, i64 32}
!32 = !{!7, !8, i64 40}
!33 = !{!7, !8, i64 48}
!34 = !{!7, !8, i64 56}
