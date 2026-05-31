; ModuleID = 'corpus_src/zlib/contrib/puff/pufftest.c'
source_filename = "corpus_src/zlib/contrib/puff/pufftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid option %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"only one file name allowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"memory allocation failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"could not read %s, or it was empty\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"skip request of %d leaves no input\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"puff() failed with return code %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"puff() succeeded uncompressing %lu bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%lu compressed bytes unused\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = add nsw i32 %0, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %2, %43
  %8 = phi i32 [ %48, %43 ], [ %5, %2 ]
  %9 = phi ptr [ %14, %43 ], [ %1, %2 ]
  %10 = phi ptr [ %47, %43 ], [ null, %2 ]
  %11 = phi i32 [ %46, %43 ], [ 0, %2 ]
  %12 = phi i32 [ %45, %43 ], [ 0, %2 ]
  %13 = phi i32 [ %44, %43 ], [ 0, %2 ]
  %14 = getelementptr inbounds ptr, ptr %9, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %38

18:                                               ; preds = %7
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %29 [
    i8 119, label %21
    i8 102, label %25
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %15, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %35

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %15, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %35

29:                                               ; preds = %18
  %30 = add i8 %20, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call i64 @strtol(ptr nocapture noundef nonnull %19, ptr noundef null, i32 noundef 10) #8
  %34 = trunc i64 %33 to i32
  br label %43

35:                                               ; preds = %21, %25, %29
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef nonnull %15) #9
  br label %166

38:                                               ; preds = %7
  %39 = icmp eq ptr %10, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %42 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %41) #9
  br label %166

43:                                               ; preds = %38, %25, %21, %32
  %44 = phi i32 [ %13, %32 ], [ 1, %21 ], [ 1, %25 ], [ %13, %38 ]
  %45 = phi i32 [ %12, %32 ], [ %12, %21 ], [ 1, %25 ], [ %12, %38 ]
  %46 = phi i32 [ %34, %32 ], [ %11, %21 ], [ %11, %25 ], [ %11, %38 ]
  %47 = phi ptr [ %10, %32 ], [ %10, %21 ], [ %10, %25 ], [ %15, %38 ]
  %48 = add nsw i32 %8, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %7, !llvm.loop !10

50:                                               ; preds = %43
  %51 = icmp eq i32 %44, 0
  %52 = icmp eq i32 %45, 0
  %53 = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %115, label %58

55:                                               ; preds = %2
  %56 = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %115, label %60

58:                                               ; preds = %50
  %59 = icmp eq ptr %47, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %58
  %61 = phi i1 [ %51, %58 ], [ true, %55 ]
  %62 = phi i1 [ %52, %58 ], [ true, %55 ]
  %63 = phi i32 [ %46, %58 ], [ 0, %55 ]
  %64 = phi ptr [ %53, %58 ], [ %56, %55 ]
  %65 = load ptr, ptr @stdin, align 8, !tbaa !5
  br label %68

66:                                               ; preds = %58
  %67 = tail call noalias ptr @fopen(ptr noundef nonnull %47, ptr noundef nonnull @.str.9)
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ @.str.4, %60 ], [ %47, %66 ]
  %70 = phi i1 [ %61, %60 ], [ %51, %66 ]
  %71 = phi i1 [ %62, %60 ], [ %52, %66 ]
  %72 = phi i32 [ %63, %60 ], [ %46, %66 ]
  %73 = phi ptr [ %64, %60 ], [ %53, %66 ]
  %74 = phi ptr [ %65, %60 ], [ %67, %66 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %121, label %76

76:                                               ; preds = %68, %110
  %77 = phi i64 [ %83, %110 ], [ 0, %68 ]
  %78 = phi ptr [ %111, %110 ], [ %73, %68 ]
  %79 = phi i64 [ %108, %110 ], [ 4096, %68 ]
  %80 = getelementptr inbounds i8, ptr %78, i64 %77
  %81 = sub i64 %79, %77
  %82 = tail call i64 @fread(ptr noundef nonnull %80, i64 noundef 1, i64 noundef %81, ptr noundef nonnull %74)
  %83 = add i64 %82, %77
  %84 = icmp ult i64 %83, %79
  br i1 %84, label %118, label %85

85:                                               ; preds = %76
  %86 = icmp eq i64 %79, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ %90, %87 ], [ %79, %85 ]
  %89 = phi i32 [ %91, %87 ], [ 0, %85 ]
  %90 = lshr i64 %88, 1
  %91 = add nuw nsw i32 %89, 1
  %92 = icmp ult i64 %88, 2
  br i1 %92, label %93, label %87, !llvm.loop !12

93:                                               ; preds = %87
  %94 = icmp ult i32 %89, 2
  br i1 %94, label %95, label %97

95:                                               ; preds = %93, %85
  %96 = add i64 %79, 1
  br label %107

97:                                               ; preds = %93
  %98 = add nsw i32 %89, -2
  %99 = zext nneg i32 %98 to i64
  %100 = lshr i64 %79, %99
  %101 = icmp eq i64 %100, 6
  %102 = select i1 %101, i64 2, i64 1
  %103 = add i64 %102, %100
  %104 = shl i64 %103, %99
  %105 = icmp ugt i64 %104, %79
  %106 = select i1 %105, i64 %104, i64 -1
  br label %107

107:                                              ; preds = %97, %95
  %108 = phi i64 [ %96, %95 ], [ %106, %97 ]
  %109 = icmp eq i64 %108, %83
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = tail call ptr @realloc(ptr noundef nonnull %78, i64 noundef %108) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %76

113:                                              ; preds = %107, %110
  tail call void @free(ptr noundef %78) #8
  %114 = tail call i32 @fclose(ptr noundef nonnull %74)
  br label %115

115:                                              ; preds = %55, %50, %113
  %116 = load ptr, ptr @stderr, align 8, !tbaa !5
  %117 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %116) #9
  br label %166

118:                                              ; preds = %76
  %119 = tail call i32 @fclose(ptr noundef nonnull %74)
  %120 = icmp eq i64 %83, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %68, %118
  %122 = phi ptr [ %78, %118 ], [ %73, %68 ]
  %123 = load ptr, ptr @stderr, align 8, !tbaa !5
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.3, ptr noundef nonnull %69) #9
  tail call void @free(ptr noundef nonnull %122) #8
  br label %166

125:                                              ; preds = %118
  %126 = zext i32 %72 to i64
  %127 = icmp ugt i64 %83, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load ptr, ptr @stderr, align 8, !tbaa !5
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.5, i32 noundef %72) #9
  tail call void @free(ptr noundef nonnull %78) #8
  br label %166

131:                                              ; preds = %125
  %132 = sub i64 %83, %126
  store i64 %132, ptr %3, align 8, !tbaa !13
  %133 = getelementptr inbounds i8, ptr %78, i64 %126
  %134 = call i32 @puff(ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %133, ptr noundef nonnull %3) #8
  %135 = icmp eq i32 %134, 0
  %136 = load ptr, ptr @stderr, align 8, !tbaa !5
  br i1 %135, label %139, label %137

137:                                              ; preds = %131
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.6, i32 noundef %134) #9
  br label %165

139:                                              ; preds = %131
  %140 = load i64, ptr %4, align 8, !tbaa !13
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.7, i64 noundef %140) #9
  %142 = load i64, ptr %3, align 8, !tbaa !13
  %143 = icmp ult i64 %142, %132
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load ptr, ptr @stderr, align 8, !tbaa !5
  %146 = sub i64 %132, %142
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.8, i64 noundef %146) #9
  br label %148

148:                                              ; preds = %139, %144
  br i1 %70, label %165, label %149

149:                                              ; preds = %148
  %150 = load i64, ptr %4, align 8, !tbaa !13
  br i1 %71, label %153, label %151

151:                                              ; preds = %149
  %152 = lshr i64 %150, 1
  store i64 %152, ptr %4, align 8, !tbaa !13
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i64 [ %152, %151 ], [ %150, %149 ]
  %155 = call noalias ptr @malloc(i64 noundef %154) #10
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load ptr, ptr @stderr, align 8, !tbaa !5
  %159 = call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %158) #9
  call void @free(ptr noundef nonnull %78) #8
  br label %166

160:                                              ; preds = %153
  %161 = call i32 @puff(ptr noundef nonnull %155, ptr noundef nonnull %4, ptr noundef nonnull %133, ptr noundef nonnull %3) #8
  %162 = load i64, ptr %4, align 8, !tbaa !13
  %163 = load ptr, ptr @stdout, align 8, !tbaa !5
  %164 = call i64 @fwrite(ptr noundef nonnull %155, i64 noundef 1, i64 noundef %162, ptr noundef %163)
  call void @free(ptr noundef nonnull %155) #8
  br label %165

165:                                              ; preds = %137, %160, %148
  call void @free(ptr noundef nonnull %78) #8
  br label %166

166:                                              ; preds = %165, %157, %128, %121, %115, %40, %35
  %167 = phi i32 [ 3, %35 ], [ 3, %40 ], [ 4, %115 ], [ 3, %121 ], [ 3, %128 ], [ 4, %157 ], [ %134, %165 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %167
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

declare i32 @puff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
