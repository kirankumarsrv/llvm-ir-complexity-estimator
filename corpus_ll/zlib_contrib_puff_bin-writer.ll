; ModuleID = 'corpus_src/zlib/contrib/puff/bin-writer.c'
source_filename = "corpus_src/zlib/contrib/puff/bin-writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %1) #5
  %3 = getelementptr inbounds [3 x i8], ptr %1, i64 0, i64 1
  %4 = getelementptr inbounds [3 x i8], ptr %1, i64 0, i64 2
  br label %5

5:                                                ; preds = %9, %0
  %6 = load ptr, ptr @stdin, align 8, !tbaa !5
  %7 = call i32 @getc(ptr noundef %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = trunc i32 %7 to i8
  store i8 %10, ptr %1, align 1, !tbaa !9
  %11 = load ptr, ptr @stdin, align 8, !tbaa !5
  %12 = call i32 @getc(ptr noundef %11)
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %3, align 1, !tbaa !9
  store i8 0, ptr %4, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %14 = call i64 @strtol(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 16) #5
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr @stdout, align 8, !tbaa !5
  %17 = shl i32 %15, 24
  %18 = ashr exact i32 %17, 24
  %19 = call i32 @fputc(i32 %18, ptr %16)
  %20 = load ptr, ptr @stdin, align 8, !tbaa !5
  %21 = call i32 @getc(ptr noundef %20)
  %22 = icmp eq i32 %21, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br i1 %22, label %23, label %5

23:                                               ; preds = %9, %5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %1) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
