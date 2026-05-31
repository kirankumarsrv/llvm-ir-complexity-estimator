; ModuleID = 'corpus_src/libexpat/expat/lib/xmlrole.c'
source_filename = "corpus_src/libexpat/expat/lib/xmlrole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prolog_state = type { ptr, i32, i32, i32, i32, i32 }
%struct.encoding = type { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@KW_DOCTYPE = internal constant [8 x i8] c"DOCTYPE\00", align 1
@KW_SYSTEM = internal constant [7 x i8] c"SYSTEM\00", align 1
@KW_PUBLIC = internal constant [7 x i8] c"PUBLIC\00", align 1
@KW_ENTITY = internal constant [7 x i8] c"ENTITY\00", align 1
@KW_ATTLIST = internal constant [8 x i8] c"ATTLIST\00", align 1
@KW_ELEMENT = internal constant [8 x i8] c"ELEMENT\00", align 1
@KW_NOTATION = internal constant [9 x i8] c"NOTATION\00", align 1
@KW_INCLUDE = internal constant [8 x i8] c"INCLUDE\00", align 1
@KW_IGNORE = internal constant [7 x i8] c"IGNORE\00", align 1
@KW_NDATA = internal constant [6 x i8] c"NDATA\00", align 1
@KW_CDATA = internal constant [6 x i8] c"CDATA\00", align 1
@KW_ID = internal constant [3 x i8] c"ID\00", align 1
@KW_IDREF = internal constant [6 x i8] c"IDREF\00", align 1
@KW_IDREFS = internal constant [7 x i8] c"IDREFS\00", align 1
@KW_ENTITIES = internal constant [9 x i8] c"ENTITIES\00", align 1
@KW_NMTOKEN = internal constant [8 x i8] c"NMTOKEN\00", align 1
@KW_NMTOKENS = internal constant [9 x i8] c"NMTOKENS\00", align 1
@KW_IMPLIED = internal constant [8 x i8] c"IMPLIED\00", align 1
@KW_REQUIRED = internal constant [9 x i8] c"REQUIRED\00", align 1
@KW_FIXED = internal constant [6 x i8] c"FIXED\00", align 1
@KW_EMPTY = internal constant [6 x i8] c"EMPTY\00", align 1
@KW_ANY = internal constant [4 x i8] c"ANY\00", align 1
@KW_PCDATA = internal constant [7 x i8] c"PCDATA\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XmlPrologStateInit(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @prolog0, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  store i32 1, ptr %2, align 4, !tbaa !11
  %3 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @prolog0(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %20 [
    i32 15, label %27
    i32 12, label %6
    i32 11, label %7
    i32 13, label %8
    i32 14, label %30
    i32 16, label %9
    i32 29, label %19
  ]

6:                                                ; preds = %5
  br label %27

7:                                                ; preds = %5
  br label %27

8:                                                ; preds = %5
  br label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 12
  %13 = load i32, ptr %12, align 8, !tbaa !16
  %14 = shl nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = tail call i32 %11(ptr noundef %4, ptr noundef %16, ptr noundef %3, ptr noundef nonnull @KW_DOCTYPE) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %27

19:                                               ; preds = %5
  br label %27

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %1, 28
  %25 = and i1 %24, %23
  br i1 %25, label %30, label %26

26:                                               ; preds = %9, %20
  br label %27

27:                                               ; preds = %9, %5, %6, %7, %8, %19, %26
  %28 = phi ptr [ @error, %26 ], [ @error, %19 ], [ @prolog1, %8 ], [ @prolog1, %7 ], [ @prolog1, %6 ], [ @prolog1, %5 ], [ @doctype0, %9 ]
  %29 = phi i32 [ -1, %26 ], [ 2, %19 ], [ 56, %8 ], [ 55, %7 ], [ 1, %6 ], [ 0, %5 ], [ 3, %9 ]
  store ptr %28, ptr %0, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %27, %20, %5
  %31 = phi i32 [ 0, %5 ], [ 59, %20 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XmlPrologStateInitExternalEntity(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @externalSubset0, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !11
  %3 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @externalSubset0(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  store ptr @externalSubset1, ptr %0, align 8, !tbaa !5
  %6 = icmp eq i32 %1, 12
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @externalSubset1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !range !17
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi i32 [ %8, %7 ], [ 57, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @prolog1(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %20 [
    i32 15, label %27
    i32 11, label %6
    i32 13, label %7
    i32 14, label %27
    i32 16, label %8
    i32 29, label %19
  ]

6:                                                ; preds = %5
  br label %27

7:                                                ; preds = %5
  br label %27

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = shl nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %2, i64 %14
  %16 = tail call i32 %10(ptr noundef %4, ptr noundef %15, ptr noundef %3, ptr noundef nonnull @KW_DOCTYPE) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %8
  store ptr @doctype0, ptr %0, align 8, !tbaa !5
  br label %27

19:                                               ; preds = %5
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %27

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %1, 28
  %25 = and i1 %24, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %8, %20
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %26, %20, %5, %5, %19, %18, %7, %6
  %28 = phi i32 [ 2, %19 ], [ 3, %18 ], [ 56, %7 ], [ 55, %6 ], [ 0, %5 ], [ 0, %5 ], [ -1, %26 ], [ 59, %20 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @doctype0(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
    i32 41, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5, %5
  %13 = phi ptr [ @doctype1, %5 ], [ @doctype1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 4, %5 ], [ 4, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 3, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @error(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #3 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @doctype1(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %16 [
    i32 15, label %26
    i32 25, label %23
    i32 17, label %6
    i32 18, label %7
  ]

6:                                                ; preds = %5
  br label %23

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = tail call i32 %9(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !14
  %14 = tail call i32 %13(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %1, 28
  %21 = and i1 %20, %19
  br i1 %21, label %26, label %22

22:                                               ; preds = %12, %16
  br label %23

23:                                               ; preds = %12, %7, %5, %6, %22
  %24 = phi ptr [ @error, %22 ], [ @prolog2, %6 ], [ @internalSubset, %5 ], [ @doctype3, %7 ], [ @doctype2, %12 ]
  %25 = phi i32 [ -1, %22 ], [ 8, %6 ], [ 7, %5 ], [ 3, %7 ], [ 3, %12 ]
  store ptr %24, ptr %0, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %16, %5
  %27 = phi i32 [ 3, %5 ], [ 59, %16 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @internalSubset(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %48 [
    i32 15, label %55
    i32 16, label %6
    i32 11, label %44
    i32 13, label %45
    i32 28, label %46
    i32 26, label %47
    i32 -4, label %55
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = shl nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  %14 = tail call i32 %8(ptr noundef %4, ptr noundef %13, ptr noundef %3, ptr noundef nonnull @KW_ENTITY) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store ptr @entity0, ptr %0, align 8, !tbaa !5
  br label %55

17:                                               ; preds = %6
  %18 = load ptr, ptr %7, align 8, !tbaa !14
  %19 = load i32, ptr %9, align 8, !tbaa !16
  %20 = shl nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %2, i64 %21
  %23 = tail call i32 %18(ptr noundef nonnull %4, ptr noundef %22, ptr noundef %3, ptr noundef nonnull @KW_ATTLIST) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store ptr @attlist0, ptr %0, align 8, !tbaa !5
  br label %55

26:                                               ; preds = %17
  %27 = load ptr, ptr %7, align 8, !tbaa !14
  %28 = load i32, ptr %9, align 8, !tbaa !16
  %29 = shl nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  %32 = tail call i32 %27(ptr noundef nonnull %4, ptr noundef %31, ptr noundef %3, ptr noundef nonnull @KW_ELEMENT) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store ptr @element0, ptr %0, align 8, !tbaa !5
  br label %55

35:                                               ; preds = %26
  %36 = load ptr, ptr %7, align 8, !tbaa !14
  %37 = load i32, ptr %9, align 8, !tbaa !16
  %38 = shl nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = tail call i32 %36(ptr noundef nonnull %4, ptr noundef %40, ptr noundef %3, ptr noundef nonnull @KW_NOTATION) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %35
  store ptr @notation0, ptr %0, align 8, !tbaa !5
  br label %55

44:                                               ; preds = %5
  br label %55

45:                                               ; preds = %5
  br label %55

46:                                               ; preds = %5
  br label %55

47:                                               ; preds = %5
  store ptr @doctype5, ptr %0, align 8, !tbaa !5
  br label %55

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !11
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq i32 %1, 28
  %53 = and i1 %52, %51
  br i1 %53, label %55, label %54

54:                                               ; preds = %35, %48
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %54, %48, %5, %5, %47, %46, %45, %44, %43, %34, %25, %16
  %56 = phi i32 [ 3, %47 ], [ 60, %46 ], [ 56, %45 ], [ 55, %44 ], [ 11, %16 ], [ 33, %25 ], [ 39, %34 ], [ 17, %43 ], [ 0, %5 ], [ 0, %5 ], [ -1, %54 ], [ 59, %48 ]
  ret i32 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @prolog2(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  %6 = add i32 %1, -11
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 31)
  switch i32 %7, label %11 [
    i32 2, label %18
    i32 0, label %8
    i32 1, label %9
    i32 9, label %10
  ]

8:                                                ; preds = %5
  br label %18

9:                                                ; preds = %5
  br label %18

10:                                               ; preds = %5
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 28
  %16 = and i1 %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %17, %11, %5, %10, %9, %8
  %19 = phi i32 [ 2, %10 ], [ 56, %9 ], [ 55, %8 ], [ 0, %5 ], [ -1, %17 ], [ 59, %11 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @doctype3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @doctype4, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 5, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 3, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @doctype2(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @doctype3, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 6, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 3, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity0(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %7 [
    i32 15, label %16
    i32 22, label %13
    i32 18, label %6
  ]

6:                                                ; preds = %5
  br label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %1, 28
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7, %5, %6
  %14 = phi ptr [ @entity2, %6 ], [ @entity1, %5 ], [ @error, %7 ]
  %15 = phi i32 [ 9, %6 ], [ 11, %5 ], [ -1, %7 ]
  store ptr %14, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %7, %5
  %17 = phi i32 [ 11, %5 ], [ 59, %7 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist0(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
    i32 41, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5, %5
  %13 = phi ptr [ @attlist1, %5 ], [ @attlist1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 34, %5 ], [ 34, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 33, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element0(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
    i32 41, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5, %5
  %13 = phi ptr [ @element1, %5 ], [ @element1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 40, %5 ], [ 40, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 39, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @notation0(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @notation1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ %1, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 17, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @doctype5(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 17, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @prolog2, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 8, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 3, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity1(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @entity7, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 10, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 11, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @entity2(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %19 [
    i32 15, label %26
    i32 18, label %6
    i32 27, label %17
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr @entity4, ptr %0, align 8, !tbaa !5
  br label %26

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !14
  %14 = tail call i32 %13(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  store ptr @entity3, ptr %0, align 8, !tbaa !5
  br label %26

17:                                               ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 11, ptr %18, align 4, !tbaa !18
  br label %26

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %1, 28
  %24 = and i1 %23, %22
  br i1 %24, label %26, label %25

25:                                               ; preds = %12, %19
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %25, %19, %5, %17, %16, %11
  %27 = phi i32 [ 12, %17 ], [ 11, %11 ], [ 11, %16 ], [ 11, %5 ], [ -1, %25 ], [ 59, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @entity7(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %19 [
    i32 15, label %26
    i32 18, label %6
    i32 27, label %17
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr @entity9, ptr %0, align 8, !tbaa !5
  br label %26

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !14
  %14 = tail call i32 %13(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  store ptr @entity8, ptr %0, align 8, !tbaa !5
  br label %26

17:                                               ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 11, ptr %18, align 4, !tbaa !18
  br label %26

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %1, 28
  %24 = and i1 %23, %22
  br i1 %24, label %26, label %25

25:                                               ; preds = %12, %19
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %25, %19, %5, %17, %16, %11
  %27 = phi i32 [ 12, %17 ], [ 11, %11 ], [ 11, %16 ], [ 11, %5 ], [ -1, %25 ], [ 59, %19 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity9(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @entity10, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 13, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 11, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity8(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @entity9, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 14, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 11, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @declClose(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %16 [
    i32 15, label %6
    i32 17, label %9
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !18
  br label %23

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @externalSubset1, ptr @internalSubset
  store ptr %13, ptr %0, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !18
  br label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %1, 28
  %21 = and i1 %20, %19
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %22, %16, %9, %6
  %24 = phi i32 [ %15, %9 ], [ %8, %6 ], [ -1, %22 ], [ 59, %16 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity10(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %11 [
    i32 15, label %20
    i32 17, label %6
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @externalSubset1, ptr @internalSubset
  br label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 28
  %16 = and i1 %15, %14
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %6
  %18 = phi ptr [ %10, %6 ], [ @error, %11 ]
  %19 = phi i32 [ 15, %6 ], [ -1, %11 ]
  store ptr %18, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %17, %11, %5
  %21 = phi i32 [ 11, %5 ], [ 59, %11 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @externalSubset1(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %17 [
    i32 33, label %6
    i32 34, label %7
    i32 15, label %20
    i32 26, label %19
    i32 -4, label %13
  ]

6:                                                ; preds = %5
  store ptr @condSect0, ptr %0, align 8, !tbaa !5
  br label %20

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8, !tbaa !12
  br label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %19

17:                                               ; preds = %5
  %18 = tail call i32 @internalSubset(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !range !17
  br label %20

19:                                               ; preds = %13, %7, %5
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %13, %5, %19, %17, %11, %6
  %21 = phi i32 [ %18, %17 ], [ -1, %19 ], [ 0, %11 ], [ 0, %6 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @condSect0(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %15 [
    i32 15, label %25
    i32 18, label %6
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_INCLUDE) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !14
  %13 = tail call i32 %12(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IGNORE) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %1, 28
  %20 = and i1 %19, %18
  br i1 %20, label %25, label %21

21:                                               ; preds = %11, %15
  br label %22

22:                                               ; preds = %11, %6, %21
  %23 = phi ptr [ @error, %21 ], [ @condSect1, %6 ], [ @condSect2, %11 ]
  %24 = phi i32 [ -1, %21 ], [ 0, %6 ], [ 0, %11 ]
  store ptr %23, ptr %0, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %22, %15, %5
  %26 = phi i32 [ 0, %5 ], [ 59, %15 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @condSect1(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %10 [
    i32 15, label %17
    i32 25, label %6
  ]

6:                                                ; preds = %5
  store ptr @externalSubset1, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !12
  br label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %1, 28
  %15 = and i1 %14, %13
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %16, %10, %5, %6
  %18 = phi i32 [ 0, %6 ], [ 0, %5 ], [ -1, %16 ], [ 59, %10 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @condSect2(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 25, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @externalSubset1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 58, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 0, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity4(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @entity5, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 13, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 11, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @entity4, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 14, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 11, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @entity5(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %16 [
    i32 15, label %26
    i32 17, label %6
    i32 18, label %11
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @externalSubset1, ptr @internalSubset
  br label %23

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = tail call i32 %13(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NDATA) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %23

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %1, 28
  %21 = and i1 %20, %19
  br i1 %21, label %26, label %22

22:                                               ; preds = %11, %16
  br label %23

23:                                               ; preds = %11, %6, %22
  %24 = phi ptr [ @error, %22 ], [ %10, %6 ], [ @entity6, %11 ]
  %25 = phi i32 [ -1, %22 ], [ 15, %6 ], [ 11, %11 ]
  store ptr %24, ptr %0, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %16, %5
  %27 = phi i32 [ 11, %5 ], [ 59, %16 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @entity6(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %8 [
    i32 15, label %15
    i32 18, label %6
  ]

6:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 11, ptr %7, align 4, !tbaa !18
  br label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %1, 28
  %13 = and i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %14, %8, %5, %6
  %16 = phi i32 [ 16, %6 ], [ 11, %5 ], [ -1, %14 ], [ 59, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist1(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %11 [
    i32 15, label %20
    i32 17, label %6
    i32 18, label %17
    i32 41, label %17
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @externalSubset1, ptr @internalSubset
  br label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 28
  %16 = and i1 %15, %14
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %5, %5, %6
  %18 = phi ptr [ %10, %6 ], [ @attlist2, %5 ], [ @attlist2, %5 ], [ @error, %11 ]
  %19 = phi i32 [ 33, %6 ], [ 22, %5 ], [ 22, %5 ], [ -1, %11 ]
  store ptr %18, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %17, %11, %5
  %21 = phi i32 [ 33, %5 ], [ 59, %11 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @attlist2(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %43 [
    i32 15, label %53
    i32 18, label %6
    i32 23, label %50
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_CDATA) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !14
  %13 = tail call i32 %12(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ID) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !14
  %17 = tail call i32 %16(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IDREF) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8, !tbaa !14
  %21 = tail call i32 %20(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_IDREFS) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8, !tbaa !14
  %25 = tail call i32 %24(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ENTITY) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !14
  %29 = tail call i32 %28(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ENTITIES) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !14
  %33 = tail call i32 %32(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NMTOKEN) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8, !tbaa !14
  %37 = tail call i32 %36(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NMTOKENS) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load ptr, ptr %7, align 8, !tbaa !14
  %41 = tail call i32 %40(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_NOTATION) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %50

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !11
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %1, 28
  %48 = and i1 %47, %46
  br i1 %48, label %53, label %49

49:                                               ; preds = %39, %43
  br label %50

50:                                               ; preds = %5, %39, %6, %11, %15, %19, %23, %27, %31, %35, %49
  %51 = phi ptr [ @error, %49 ], [ @attlist8, %35 ], [ @attlist8, %31 ], [ @attlist8, %27 ], [ @attlist8, %23 ], [ @attlist8, %19 ], [ @attlist8, %15 ], [ @attlist8, %11 ], [ @attlist8, %6 ], [ @attlist5, %39 ], [ @attlist3, %5 ]
  %52 = phi i32 [ -1, %49 ], [ 30, %35 ], [ 29, %31 ], [ 28, %27 ], [ 27, %23 ], [ 26, %19 ], [ 25, %15 ], [ 24, %11 ], [ 23, %6 ], [ 33, %39 ], [ 33, %5 ]
  store ptr %51, ptr %0, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %50, %43, %5
  %54 = phi i32 [ 33, %5 ], [ 59, %43 ], [ %52, %50 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @attlist8(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %29 [
    i32 15, label %39
    i32 20, label %6
    i32 27, label %36
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = tail call i32 %8(ptr noundef %4, ptr noundef %12, ptr noundef %3, ptr noundef nonnull @KW_IMPLIED) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = load ptr, ptr %7, align 8, !tbaa !14
  %17 = load i32, ptr %9, align 8, !tbaa !16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  %20 = tail call i32 %16(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %3, ptr noundef nonnull @KW_REQUIRED) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load ptr, ptr %7, align 8, !tbaa !14
  %24 = load i32, ptr %9, align 8, !tbaa !16
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %2, i64 %25
  %27 = tail call i32 %23(ptr noundef nonnull %4, ptr noundef %26, ptr noundef %3, ptr noundef nonnull @KW_FIXED) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %36

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %1, 28
  %34 = and i1 %33, %32
  br i1 %34, label %39, label %35

35:                                               ; preds = %22, %29
  br label %36

36:                                               ; preds = %5, %22, %15, %6, %35
  %37 = phi ptr [ @error, %35 ], [ @attlist1, %6 ], [ @attlist1, %15 ], [ @attlist9, %22 ], [ @attlist1, %5 ]
  %38 = phi i32 [ -1, %35 ], [ 35, %6 ], [ 36, %15 ], [ 33, %22 ], [ 37, %5 ]
  store ptr %37, ptr %0, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %36, %29, %5
  %40 = phi i32 [ 33, %5 ], [ 59, %29 ], [ %38, %36 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist5(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 23, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @attlist6, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 33, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 33, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 19, label %12
    i32 18, label %12
    i32 41, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5, %5, %5
  %13 = phi ptr [ @attlist4, %5 ], [ @attlist4, %5 ], [ @attlist4, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 31, %5 ], [ 31, %5 ], [ 31, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 33, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist9(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @attlist1, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 38, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 33, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist6(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @attlist7, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 32, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 33, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist7(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %7 [
    i32 15, label %16
    i32 24, label %13
    i32 21, label %6
  ]

6:                                                ; preds = %5
  br label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %1, 28
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7, %5, %6
  %14 = phi ptr [ @attlist6, %6 ], [ @attlist8, %5 ], [ @error, %7 ]
  %15 = phi i32 [ 33, %6 ], [ 33, %5 ], [ -1, %7 ]
  store ptr %14, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %7, %5
  %17 = phi i32 [ 33, %5 ], [ 59, %7 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @attlist4(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %7 [
    i32 15, label %16
    i32 24, label %13
    i32 21, label %6
  ]

6:                                                ; preds = %5
  br label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %1, 28
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7, %5, %6
  %14 = phi ptr [ @attlist3, %6 ], [ @attlist8, %5 ], [ @error, %7 ]
  %15 = phi i32 [ 33, %6 ], [ 33, %5 ], [ -1, %7 ]
  store ptr %14, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %7, %5
  %17 = phi i32 [ 33, %5 ], [ 59, %7 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @element1(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %21 [
    i32 15, label %28
    i32 18, label %6
    i32 23, label %19
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_EMPTY) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %12, align 4, !tbaa !18
  br label %28

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8, !tbaa !14
  %15 = tail call i32 %14(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_ANY) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %18, align 4, !tbaa !18
  br label %28

19:                                               ; preds = %5
  store ptr @element2, ptr %0, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  store i32 1, ptr %20, align 8, !tbaa !19
  br label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %1, 28
  %26 = and i1 %25, %24
  br i1 %26, label %28, label %27

27:                                               ; preds = %13, %21
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %27, %21, %5, %19, %17, %11
  %29 = phi i32 [ 44, %19 ], [ 42, %11 ], [ 41, %17 ], [ 39, %5 ], [ -1, %27 ], [ 59, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @element2(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %20 [
    i32 15, label %30
    i32 20, label %6
    i32 23, label %15
    i32 18, label %27
    i32 41, label %27
    i32 30, label %17
    i32 31, label %18
    i32 32, label %19
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = tail call i32 %8(ptr noundef %4, ptr noundef %12, ptr noundef %3, ptr noundef nonnull @KW_PCDATA) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %27

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  store i32 2, ptr %16, align 8, !tbaa !19
  br label %27

17:                                               ; preds = %5
  br label %27

18:                                               ; preds = %5
  br label %27

19:                                               ; preds = %5
  br label %27

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %1, 28
  %25 = and i1 %24, %23
  br i1 %25, label %30, label %26

26:                                               ; preds = %6, %20
  br label %27

27:                                               ; preds = %5, %5, %6, %15, %17, %18, %19, %26
  %28 = phi ptr [ @error, %26 ], [ @element7, %19 ], [ @element7, %18 ], [ @element7, %17 ], [ @element6, %15 ], [ @element3, %6 ], [ @element7, %5 ], [ @element7, %5 ]
  %29 = phi i32 [ -1, %26 ], [ 54, %19 ], [ 52, %18 ], [ 53, %17 ], [ 44, %15 ], [ 43, %6 ], [ 51, %5 ], [ 51, %5 ]
  store ptr %28, ptr %0, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %27, %20, %5
  %31 = phi i32 [ 39, %5 ], [ 59, %20 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %11 [
    i32 15, label %18
    i32 24, label %6
    i32 36, label %8
    i32 21, label %10
  ]

6:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %7, align 4, !tbaa !18
  br label %18

8:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %9, align 4, !tbaa !18
  br label %18

10:                                               ; preds = %5
  store ptr @element4, ptr %0, align 8, !tbaa !5
  br label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 28
  %16 = and i1 %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %17, %11, %5, %10, %8, %6
  %19 = phi i32 [ 39, %10 ], [ 46, %8 ], [ 45, %6 ], [ 39, %5 ], [ -1, %17 ], [ 59, %11 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element6(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %14 [
    i32 15, label %21
    i32 23, label %6
    i32 18, label %10
    i32 41, label %10
    i32 30, label %11
    i32 31, label %12
    i32 32, label %13
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !19
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !19
  br label %21

10:                                               ; preds = %5, %5
  store ptr @element7, ptr %0, align 8, !tbaa !5
  br label %21

11:                                               ; preds = %5
  store ptr @element7, ptr %0, align 8, !tbaa !5
  br label %21

12:                                               ; preds = %5
  store ptr @element7, ptr %0, align 8, !tbaa !5
  br label %21

13:                                               ; preds = %5
  store ptr @element7, ptr %0, align 8, !tbaa !5
  br label %21

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %1, 28
  %19 = and i1 %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %21

21:                                               ; preds = %20, %14, %5, %13, %12, %11, %10, %6
  %22 = phi i32 [ 54, %13 ], [ 52, %12 ], [ 53, %11 ], [ 51, %10 ], [ 44, %6 ], [ 39, %5 ], [ -1, %20 ], [ 59, %14 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element7(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %36 [
    i32 15, label %43
    i32 24, label %6
    i32 36, label %13
    i32 35, label %20
    i32 37, label %27
    i32 38, label %34
    i32 21, label %35
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !19
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 8, !tbaa !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %12, align 4, !tbaa !18
  br label %43

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !19
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %19, align 4, !tbaa !18
  br label %43

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !19
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %26, align 4, !tbaa !18
  br label %43

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !19
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 8, !tbaa !19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %33, align 4, !tbaa !18
  br label %43

34:                                               ; preds = %5
  store ptr @element6, ptr %0, align 8, !tbaa !5
  br label %43

35:                                               ; preds = %5
  store ptr @element6, ptr %0, align 8, !tbaa !5
  br label %43

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i32 %1, 28
  %41 = and i1 %40, %39
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %42, %36, %27, %32, %20, %25, %13, %18, %6, %11, %5, %35, %34
  %44 = phi i32 [ 49, %35 ], [ 50, %34 ], [ 39, %5 ], [ 45, %11 ], [ 45, %6 ], [ 46, %18 ], [ 46, %13 ], [ 47, %25 ], [ 47, %20 ], [ 48, %32 ], [ 48, %27 ], [ -1, %42 ], [ 59, %36 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element4(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 18, label %12
    i32 41, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5, %5
  %13 = phi ptr [ @element5, %5 ], [ @element5, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 51, %5 ], [ 51, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 39, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @element5(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %9 [
    i32 15, label %16
    i32 36, label %6
    i32 21, label %8
  ]

6:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 39, ptr %7, align 4, !tbaa !18
  br label %16

8:                                                ; preds = %5
  store ptr @element4, ptr %0, align 8, !tbaa !5
  br label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %1, 28
  %14 = and i1 %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %15, %9, %5, %8, %6
  %17 = phi i32 [ 39, %8 ], [ 46, %6 ], [ 39, %5 ], [ -1, %15 ], [ 59, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @notation1(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  switch i32 %1, label %15 [
    i32 15, label %25
    i32 18, label %6
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.encoding, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_SYSTEM) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !14
  %13 = tail call i32 %12(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @KW_PUBLIC) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %1, 28
  %20 = and i1 %19, %18
  br i1 %20, label %25, label %21

21:                                               ; preds = %11, %15
  br label %22

22:                                               ; preds = %11, %6, %21
  %23 = phi ptr [ @error, %21 ], [ @notation3, %6 ], [ @notation2, %11 ]
  %24 = phi i32 [ -1, %21 ], [ 17, %6 ], [ 17, %11 ]
  store ptr %23, ptr %0, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %22, %15, %5
  %26 = phi i32 [ 17, %5 ], [ 59, %15 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @notation3(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %8 [
    i32 15, label %15
    i32 27, label %6
  ]

6:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 17, ptr %7, align 4, !tbaa !18
  br label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i32 %1, 28
  %13 = and i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %14, %8, %5, %6
  %16 = phi i32 [ 19, %6 ], [ 17, %5 ], [ -1, %14 ], [ 59, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @notation2(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %6 [
    i32 15, label %15
    i32 27, label %12
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %1, 28
  %11 = and i1 %10, %9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6, %5
  %13 = phi ptr [ @notation4, %5 ], [ @error, %6 ]
  %14 = phi i32 [ 21, %5 ], [ -1, %6 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %6, %5
  %16 = phi i32 [ 17, %5 ], [ 59, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @notation4(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %13 [
    i32 15, label %20
    i32 27, label %6
    i32 17, label %8
  ]

6:                                                ; preds = %5
  store ptr @declClose, ptr %0, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 2
  store i32 17, ptr %7, align 4, !tbaa !18
  br label %20

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @externalSubset1, ptr @internalSubset
  store ptr %12, ptr %0, align 8, !tbaa !5
  br label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i32 %1, 28
  %18 = and i1 %17, %16
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store ptr @error, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %19, %13, %5, %8, %6
  %21 = phi i32 [ 20, %8 ], [ 19, %6 ], [ 17, %5 ], [ -1, %19 ], [ 59, %13 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @doctype4(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #2 {
  switch i32 %1, label %7 [
    i32 15, label %16
    i32 25, label %13
    i32 17, label %6
  ]

6:                                                ; preds = %5
  br label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.prolog_state, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %1, 28
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %7, %5, %6
  %14 = phi ptr [ @prolog2, %6 ], [ @internalSubset, %5 ], [ @error, %7 ]
  %15 = phi i32 [ 8, %6 ], [ 7, %5 ], [ -1, %7 ]
  store ptr %14, ptr %0, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %7, %5
  %17 = phi i32 [ 3, %5 ], [ 59, %7 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"prolog_state", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 20}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!15, !7, i64 48}
!15 = !{!"encoding", !8, i64 0, !8, i64 32, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !8, i64 132, !8, i64 133}
!16 = !{!15, !10, i64 128}
!17 = !{i32 -1, i32 61}
!18 = !{!6, !10, i64 12}
!19 = !{!6, !10, i64 8}
