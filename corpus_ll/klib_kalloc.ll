; ModuleID = 'corpus_src/klib/kalloc.c'
source_filename = "corpus_src/klib/kalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kmem_t = type { ptr, i64, %struct.header_t, ptr, ptr }
%struct.header_t = type { i64, ptr }
%struct.km_stat_t = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [60 x i8] c"[kfree] The end of the allocated block enters a free block.\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"[kfree] The end of a free block enters the allocated block.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"[km_stat] The end of a free block enters another free block.\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"[km_stat] cap=%ld, avail=%ld, largest=%ld, n_core=%ld, n_block=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"[morecore] insufficient memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @km_init2(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @kmalloc(ptr noundef nonnull %0, i64 noundef 48)
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %6, i8 0, i64 40, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = add i64 %10, -2
  br label %16

12:                                               ; preds = %2
  %13 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #11
  %14 = icmp eq i64 %1, 0
  %15 = select i1 %14, i64 524288, i64 %1
  br label %16

16:                                               ; preds = %8, %4, %12
  %17 = phi ptr [ %13, %12 ], [ %5, %4 ], [ %5, %8 ]
  %18 = phi i64 [ %15, %12 ], [ %1, %4 ], [ %11, %8 ]
  %19 = getelementptr inbounds %struct.kmem_t, ptr %17, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !12
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @kcalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  %5 = icmp eq i64 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef %2) #11
  br label %14

11:                                               ; preds = %7
  %12 = mul i64 %2, %1
  %13 = tail call ptr @kmalloc(ptr noundef nonnull %0, i64 noundef %12)
  tail call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %12, i1 false)
  br label %14

14:                                               ; preds = %3, %11, %9
  %15 = phi ptr [ %10, %9 ], [ %13, %11 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @km_init() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #11
  %2 = getelementptr inbounds %struct.kmem_t, ptr %1, i64 0, i32 1
  store i64 524288, ptr %2, align 8, !tbaa !12
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @km_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.header_t, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  tail call void @kfree(ptr noundef %4, ptr noundef nonnull %9)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !15

13:                                               ; preds = %8, %3
  tail call void @kfree(ptr noundef %4, ptr noundef nonnull %0)
  br label %14

14:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @kfree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %1) #12
  br label %56

7:                                                ; preds = %4
  %8 = getelementptr inbounds i64, ptr %1, i64 -1
  %9 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  br label %11

11:                                               ; preds = %18, %7
  %12 = phi ptr [ %10, %7 ], [ %15, %18 ]
  %13 = icmp ugt ptr %8, %12
  %14 = getelementptr inbounds %struct.header_t, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = icmp ult ptr %8, %15
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = icmp uge ptr %12, %15
  %20 = icmp ult ptr %8, %15
  %21 = or i1 %13, %20
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %11, !llvm.loop !18

23:                                               ; preds = %11, %18
  %24 = load i64, ptr %8, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct.header_t, ptr %8, i64 %24
  %26 = getelementptr inbounds %struct.header_t, ptr %12, i64 0, i32 1
  %27 = icmp eq ptr %25, %15
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, ptr %15, align 8, !tbaa !19
  %30 = add i64 %29, %24
  store i64 %30, ptr %8, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.header_t, ptr %15, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  br label %40

33:                                               ; preds = %23
  %34 = icmp ule ptr %25, %15
  %35 = icmp ult ptr %15, %8
  %36 = or i1 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @stderr, align 8, !tbaa !17
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str) #13
  tail call void @abort() #14
  unreachable

40:                                               ; preds = %33, %28
  %41 = phi i64 [ %30, %28 ], [ %24, %33 ]
  %42 = phi ptr [ %32, %28 ], [ %15, %33 ]
  store ptr %42, ptr %1, align 8, !tbaa !14
  %43 = load i64, ptr %12, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.header_t, ptr %12, i64 %43
  %45 = icmp eq ptr %44, %8
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = add i64 %41, %43
  store i64 %47, ptr %12, align 8, !tbaa !19
  store ptr %42, ptr %26, align 8, !tbaa !14
  store ptr %12, ptr %9, align 8, !tbaa !20
  br label %56

48:                                               ; preds = %40
  %49 = icmp ule ptr %44, %8
  %50 = icmp ult ptr %8, %12
  %51 = or i1 %50, %49
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @stderr, align 8, !tbaa !17
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #13
  tail call void @abort() #14
  unreachable

55:                                               ; preds = %48
  store ptr %8, ptr %9, align 8, !tbaa !20
  store ptr %8, ptr %26, align 8, !tbaa !14
  br label %56

56:                                               ; preds = %46, %55, %2, %6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @kmalloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noalias ptr @malloc(i64 noundef %1) #15
  br label %73

8:                                                ; preds = %4
  %9 = add i64 %1, 23
  %10 = lshr i64 %9, 4
  %11 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 2, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !21
  store ptr %15, ptr %11, align 8, !tbaa !20
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %12, %8 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.header_t, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = load i64, ptr %20, align 8, !tbaa !19
  %22 = icmp ult i64 %21, %10
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 4
  br label %41

26:                                               ; preds = %66, %17
  %27 = phi ptr [ %18, %17 ], [ %68, %66 ]
  %28 = phi ptr [ %20, %17 ], [ %70, %66 ]
  %29 = phi i64 [ %21, %17 ], [ %71, %66 ]
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.header_t, ptr %27, i64 0, i32 1
  %33 = getelementptr inbounds %struct.header_t, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  store ptr %34, ptr %32, align 8, !tbaa !14
  br label %38

35:                                               ; preds = %26
  %36 = sub i64 %29, %10
  store i64 %36, ptr %28, align 8, !tbaa !19
  %37 = getelementptr inbounds %struct.header_t, ptr %28, i64 %36
  store i64 %10, ptr %37, align 8, !tbaa !22
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %28, %31 ], [ %37, %35 ]
  store ptr %27, ptr %11, align 8, !tbaa !20
  %40 = getelementptr inbounds i64, ptr %39, i64 1
  br label %73

41:                                               ; preds = %23, %66
  %42 = phi ptr [ %18, %23 ], [ %67, %66 ]
  %43 = phi ptr [ %20, %23 ], [ %70, %66 ]
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i64, ptr %24, align 8, !tbaa !12
  %47 = freeze i64 %46
  %48 = add i64 %47, %10
  %49 = urem i64 %48, %47
  %50 = sub nuw i64 %48, %49
  %51 = shl i64 %50, 4
  %52 = load ptr, ptr %0, align 8, !tbaa !5
  %53 = tail call ptr @kmalloc(ptr noundef %52, i64 noundef %51)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load ptr, ptr @stderr, align 8, !tbaa !17
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #13
  tail call void @abort() #14
  unreachable

58:                                               ; preds = %45
  %59 = load ptr, ptr %25, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.header_t, ptr %53, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !14
  store i64 %50, ptr %53, align 8, !tbaa !19
  store ptr %53, ptr %25, align 8, !tbaa !13
  %61 = getelementptr inbounds %struct.header_t, ptr %53, i64 1
  %62 = add i64 %50, -1
  store i64 %62, ptr %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.header_t, ptr %53, i64 1, i32 1
  tail call void @kfree(ptr noundef nonnull %0, ptr noundef nonnull %63)
  %64 = load ptr, ptr %11, align 8, !tbaa !20
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %41, %58
  %67 = phi ptr [ %64, %58 ], [ %42, %41 ]
  %68 = phi ptr [ %64, %58 ], [ %43, %41 ]
  %69 = getelementptr inbounds %struct.header_t, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !14
  %71 = load i64, ptr %70, align 8, !tbaa !19
  %72 = icmp ult i64 %71, %10
  br i1 %72, label %41, label %26

73:                                               ; preds = %58, %2, %38, %6
  %74 = phi ptr [ %7, %6 ], [ %40, %38 ], [ null, %2 ], [ null, %58 ]
  ret ptr %74
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @krealloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @kfree(ptr noundef %0, ptr noundef %1)
  br label %22

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @realloc(ptr noundef %1, i64 noundef %2) #16
  br label %22

10:                                               ; preds = %6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr @kmalloc(ptr noundef nonnull %0, i64 noundef %2)
  br label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds i64, ptr %1, i64 -1
  %16 = load i64, ptr %15, align 8, !tbaa !22
  %17 = shl i64 %16, 4
  %18 = add i64 %17, -8
  %19 = icmp ult i64 %18, %2
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call ptr @kmalloc(ptr noundef nonnull %0, i64 noundef %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %18, i1 false)
  tail call void @kfree(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %22

22:                                               ; preds = %14, %20, %12, %8, %5
  %23 = phi ptr [ null, %5 ], [ %9, %8 ], [ %13, %12 ], [ %21, %20 ], [ %1, %14 ]
  ret ptr %23
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local ptr @krelocate(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @kmalloc(ptr noundef nonnull %0, i64 noundef %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr nonnull align 1 %1, i64 %2, i1 false)
  tail call void @kfree(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @km_stat(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.km_stat_t, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.km_stat_t, ptr %1, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %32
  %12 = phi i64 [ %22, %32 ], [ 0, %8 ]
  %13 = phi i64 [ %17, %32 ], [ 0, %8 ]
  %14 = phi ptr [ %24, %32 ], [ %6, %8 ]
  %15 = load i64, ptr %14, align 8, !tbaa !19
  %16 = shl i64 %15, 4
  %17 = add i64 %13, %16
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = add i64 %12, 1
  store i64 %20, ptr %10, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i64 [ %20, %19 ], [ %12, %11 ]
  %23 = getelementptr inbounds %struct.header_t, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = icmp ugt ptr %24, %14
  %26 = getelementptr inbounds %struct.header_t, ptr %14, i64 %15
  %27 = icmp ugt ptr %26, %24
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  store i64 %17, ptr %9, align 8, !tbaa !25
  %30 = load ptr, ptr @stderr, align 8, !tbaa !17
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #13
  tail call void @abort() #14
  unreachable

32:                                               ; preds = %21
  %33 = icmp eq ptr %24, %6
  br i1 %33, label %34, label %11

34:                                               ; preds = %32
  store i64 %17, ptr %9, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.km_stat_t, ptr %1, i64 0, i32 3
  %40 = getelementptr inbounds %struct.km_stat_t, ptr %1, i64 0, i32 4
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ 0, %38 ], [ %50, %41 ]
  %43 = phi i64 [ 0, %38 ], [ %49, %41 ]
  %44 = phi i64 [ 0, %38 ], [ %48, %41 ]
  %45 = phi ptr [ %36, %38 ], [ %52, %41 ]
  %46 = load i64, ptr %45, align 8, !tbaa !19
  %47 = shl i64 %46, 4
  %48 = add i64 %44, 1
  %49 = add i64 %43, %47
  %50 = tail call i64 @llvm.umax.i64(i64 %42, i64 %47)
  %51 = getelementptr inbounds %struct.header_t, ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %41, !llvm.loop !26

54:                                               ; preds = %41
  store i64 %48, ptr %39, align 8, !tbaa !27
  store i64 %49, ptr %1, align 8, !tbaa !28
  store i64 %50, ptr %40, align 8, !tbaa !29
  br label %55

55:                                               ; preds = %34, %54, %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @km_stat_print(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3, %22
  %8 = phi i64 [ %25, %22 ], [ 0, %3 ]
  %9 = phi i64 [ %28, %22 ], [ 0, %3 ]
  %10 = phi i64 [ %27, %22 ], [ 0, %3 ]
  %11 = phi ptr [ %14, %22 ], [ %5, %3 ]
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.header_t, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp ugt ptr %14, %11
  %16 = getelementptr inbounds %struct.header_t, ptr %11, i64 %12
  %17 = icmp ugt ptr %16, %14
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr @stderr, align 8, !tbaa !17
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #13
  tail call void @abort() #14
  unreachable

22:                                               ; preds = %7
  %23 = icmp eq i64 %12, 0
  %24 = add i64 %9, 1
  %25 = select i1 %23, i64 %8, i64 %24
  %26 = shl i64 %12, 4
  %27 = add i64 %26, %10
  %28 = select i1 %23, i64 %9, i64 %24
  %29 = icmp eq ptr %14, %5
  br i1 %29, label %30, label %7

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.kmem_t, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %43, %34 ], [ 0, %30 ]
  %36 = phi i64 [ %42, %34 ], [ 0, %30 ]
  %37 = phi i64 [ %41, %34 ], [ 0, %30 ]
  %38 = phi ptr [ %45, %34 ], [ %32, %30 ]
  %39 = load i64, ptr %38, align 8, !tbaa !19
  %40 = shl i64 %39, 4
  %41 = add i64 %37, 1
  %42 = add i64 %40, %36
  %43 = tail call i64 @llvm.umax.i64(i64 %35, i64 %40)
  %44 = getelementptr inbounds %struct.header_t, ptr %38, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %34, !llvm.loop !26

47:                                               ; preds = %34, %1, %3, %30
  %48 = phi i64 [ 0, %1 ], [ 0, %3 ], [ 0, %30 ], [ %42, %34 ]
  %49 = phi i64 [ 0, %1 ], [ 0, %3 ], [ %27, %30 ], [ %27, %34 ]
  %50 = phi i64 [ 0, %1 ], [ 0, %3 ], [ %25, %30 ], [ %25, %34 ]
  %51 = phi i64 [ 0, %1 ], [ 0, %3 ], [ 0, %30 ], [ %41, %34 ]
  %52 = phi i64 [ 0, %1 ], [ 0, %3 ], [ 0, %30 ], [ %43, %34 ]
  %53 = load ptr, ptr @stderr, align 8, !tbaa !17
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.3, i64 noundef %48, i64 noundef %49, i64 noundef %52, i64 noundef %50, i64 noundef %51) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 32, !7, i64 40}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"header_t", !10, i64 0, !7, i64 8}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 40}
!14 = !{!11, !7, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !16}
!19 = !{!11, !10, i64 0}
!20 = !{!6, !7, i64 32}
!21 = !{!6, !7, i64 24}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !10, i64 16}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!25 = !{!24, !10, i64 8}
!26 = distinct !{!26, !16}
!27 = !{!24, !10, i64 24}
!28 = !{!24, !10, i64 0}
!29 = !{!24, !10, i64 32}
