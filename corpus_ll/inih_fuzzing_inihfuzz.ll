; ModuleID = 'corpus_src/inih/fuzzing/inihfuzz.c'
source_filename = "corpus_src/inih/fuzzing/inihfuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@User = dso_local local_unnamed_addr global i32 0, align 4
@Prev_section = dso_local global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"... [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"... %s%s%s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"parse_error\00", align 1
@parse.u = internal global i32 100, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: e=%d user=%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"usage: inihfuzz file.ini\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @dumper(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %5, ptr @User, align 4, !tbaa !5
  %6 = icmp eq ptr %2, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @Prev_section) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %1)
  %12 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @Prev_section, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 50) #8
  store i8 0, ptr getelementptr inbounds ([50 x i8], ptr @Prev_section, i64 0, i64 49), align 1, !tbaa !9
  br label %13

13:                                               ; preds = %10, %7
  %14 = icmp eq ptr %3, null
  %15 = select i1 %14, ptr @.str.3, ptr @.str.2
  %16 = select i1 %14, ptr @.str.3, ptr %3
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull %16)
  br i1 %14, label %28, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.4) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.5) #7
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  br label %28

25:                                               ; preds = %4
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %1)
  %27 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @Prev_section, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 50) #8
  store i8 0, ptr getelementptr inbounds ([50 x i8], ptr @Prev_section, i64 0, i64 49), align 1, !tbaa !9
  br label %28

28:                                               ; preds = %25, %18, %21, %13
  %29 = phi i32 [ 1, %13 ], [ 1, %18 ], [ %24, %21 ], [ 1, %25 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @parse(ptr noundef %0) local_unnamed_addr #4 {
  store i8 0, ptr @Prev_section, align 16, !tbaa !9
  %2 = tail call i32 @ini_parse(ptr noundef %0, ptr noundef nonnull @dumper, ptr noundef nonnull @parse.u) #8
  %3 = load i32, ptr @User, align 4, !tbaa !5
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %5 = load i32, ptr @parse.u, align 4, !tbaa !5
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @parse.u, align 4, !tbaa !5
  ret void
}

declare i32 @ini_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  store i8 0, ptr @Prev_section, align 16, !tbaa !9
  %9 = tail call i32 @ini_parse(ptr noundef %8, ptr noundef nonnull @dumper, ptr noundef nonnull @parse.u) #8
  %10 = load i32, ptr @User, align 4, !tbaa !5
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %8, i32 noundef %9, i32 noundef %10)
  %12 = load i32, ptr @parse.u, align 4, !tbaa !5
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @parse.u, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ 1, %4 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
