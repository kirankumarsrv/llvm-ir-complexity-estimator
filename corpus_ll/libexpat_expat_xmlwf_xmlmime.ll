; ModuleID = 'corpus_src/libexpat/expat/xmlwf/xmlmime.c'
source_filename = "corpus_src/libexpat/expat/xmlwf/xmlmime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"charset\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @getXMLCharset(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = ptrtoint ptr %1 to i64
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i8 0, ptr %1, align 1, !tbaa !5
  store ptr %0, ptr %4, align 8, !tbaa !8
  %5 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %6 = load ptr, ptr %4, align 8, !tbaa !8
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = icmp eq ptr %5, null
  br i1 %9, label %228, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %30, label %12

12:                                               ; preds = %10
  %13 = sub i64 %8, %7
  %14 = getelementptr i8, ptr @.str, i64 %13
  br label %15

15:                                               ; preds = %26, %12
  %16 = phi ptr [ %28, %26 ], [ @.str, %12 ]
  %17 = phi ptr [ %27, %26 ], [ %5, %12 ]
  %18 = load i8, ptr %17, align 1, !tbaa !5
  %19 = load i8, ptr %16, align 1, !tbaa !5
  %20 = icmp eq i8 %18, %19
  %21 = sext i8 %19 to i32
  %22 = sext i8 %18 to i32
  %23 = add nsw i32 %21, -32
  %24 = icmp eq i32 %23, %22
  %25 = select i1 %20, i1 true, i1 %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = getelementptr inbounds i8, ptr %16, i64 1
  %29 = icmp eq ptr %27, %6
  br i1 %29, label %30, label %15, !llvm.loop !10

30:                                               ; preds = %26, %10
  %31 = phi ptr [ @.str, %10 ], [ %14, %26 ]
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false) #4
  br label %58

35:                                               ; preds = %15, %30
  br i1 %11, label %54, label %36

36:                                               ; preds = %35
  %37 = sub i64 %8, %7
  %38 = getelementptr i8, ptr @.str.2, i64 %37
  br label %39

39:                                               ; preds = %50, %36
  %40 = phi ptr [ %52, %50 ], [ @.str.2, %36 ]
  %41 = phi ptr [ %51, %50 ], [ %5, %36 ]
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = load i8, ptr %40, align 1, !tbaa !5
  %44 = icmp eq i8 %42, %43
  %45 = sext i8 %43 to i32
  %46 = sext i8 %42 to i32
  %47 = add nsw i32 %45, -32
  %48 = icmp eq i32 %47, %46
  %49 = select i1 %44, i1 true, i1 %48
  br i1 %49, label %50, label %228

50:                                               ; preds = %39
  %51 = getelementptr inbounds i8, ptr %41, i64 1
  %52 = getelementptr inbounds i8, ptr %40, i64 1
  %53 = icmp eq ptr %51, %6
  br i1 %53, label %54, label %39, !llvm.loop !10

54:                                               ; preds = %50, %35
  %55 = phi ptr [ @.str.2, %35 ], [ %38, %50 ]
  %56 = load i8, ptr %55, align 1, !tbaa !5
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %228

58:                                               ; preds = %54, %34
  %59 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %228, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %59, align 1, !tbaa !5
  %63 = icmp eq i8 %62, 47
  br i1 %63, label %64, label %228

64:                                               ; preds = %61
  %65 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %66 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %228, label %68

68:                                               ; preds = %64, %224
  %69 = phi ptr [ %72, %224 ], [ %66, %64 ]
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 59
  %72 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  br i1 %71, label %73, label %224

73:                                               ; preds = %68
  %74 = load ptr, ptr %4, align 8, !tbaa !8
  %75 = ptrtoint ptr %72 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = icmp eq ptr %72, null
  br i1 %77, label %228, label %78

78:                                               ; preds = %73
  %79 = icmp eq ptr %72, %74
  br i1 %79, label %98, label %80

80:                                               ; preds = %78
  %81 = sub i64 %76, %75
  %82 = getelementptr i8, ptr @.str.3, i64 %81
  br label %83

83:                                               ; preds = %94, %80
  %84 = phi ptr [ %96, %94 ], [ @.str.3, %80 ]
  %85 = phi ptr [ %95, %94 ], [ %72, %80 ]
  %86 = load i8, ptr %85, align 1, !tbaa !5
  %87 = load i8, ptr %84, align 1, !tbaa !5
  %88 = icmp eq i8 %86, %87
  %89 = sext i8 %87 to i32
  %90 = sext i8 %86 to i32
  %91 = add nsw i32 %89, -32
  %92 = icmp eq i32 %91, %90
  %93 = select i1 %88, i1 true, i1 %92
  br i1 %93, label %94, label %224

94:                                               ; preds = %83
  %95 = getelementptr inbounds i8, ptr %85, i64 1
  %96 = getelementptr inbounds i8, ptr %84, i64 1
  %97 = icmp eq ptr %95, %74
  br i1 %97, label %98, label %83, !llvm.loop !10

98:                                               ; preds = %94, %78
  %99 = phi ptr [ @.str.3, %78 ], [ %82, %94 ]
  %100 = load i8, ptr %99, align 1, !tbaa !5
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %224

102:                                              ; preds = %98
  %103 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %228, label %105

105:                                              ; preds = %102
  %106 = load i8, ptr %103, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 61
  br i1 %107, label %108, label %228

108:                                              ; preds = %105
  %109 = call fastcc ptr @getTok(ptr noundef nonnull %4)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %228, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %109, align 1, !tbaa !5
  %113 = icmp eq i8 %112, 34
  %114 = load ptr, ptr %4, align 8, !tbaa !8
  br i1 %113, label %115, label %146

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %114, i64 -1
  %117 = getelementptr inbounds i8, ptr %109, i64 1
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %226, label %119

119:                                              ; preds = %115, %136
  %120 = phi ptr [ %144, %136 ], [ %117, %115 ]
  %121 = phi ptr [ %143, %136 ], [ %1, %115 ]
  %122 = phi i64 [ %142, %136 ], [ 0, %115 ]
  %123 = phi ptr [ %140, %136 ], [ %109, %115 ]
  %124 = icmp eq i64 %122, 40
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i8 0, ptr %1, align 1, !tbaa !5
  br label %226

126:                                              ; preds = %119
  %127 = load i8, ptr %120, align 1, !tbaa !5
  %128 = icmp eq i8 %127, 92
  %129 = getelementptr inbounds i8, ptr %123, i64 2
  %130 = select i1 %128, ptr %129, ptr %120
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = or disjoint i64 %122, 1
  store i8 %131, ptr %121, align 1, !tbaa !5
  %133 = getelementptr inbounds i8, ptr %1, i64 %132
  %134 = getelementptr inbounds i8, ptr %130, i64 1
  %135 = icmp eq ptr %134, %116
  br i1 %135, label %226, label %136, !llvm.loop !12

136:                                              ; preds = %126
  %137 = load i8, ptr %134, align 1, !tbaa !5
  %138 = icmp eq i8 %137, 92
  %139 = getelementptr inbounds i8, ptr %130, i64 2
  %140 = select i1 %138, ptr %139, ptr %134
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = add nuw nsw i64 %122, 2
  store i8 %141, ptr %133, align 1, !tbaa !5
  %143 = getelementptr inbounds i8, ptr %1, i64 %142
  %144 = getelementptr inbounds i8, ptr %140, i64 1
  %145 = icmp eq ptr %144, %116
  br i1 %145, label %226, label %119, !llvm.loop !12

146:                                              ; preds = %111
  %147 = ptrtoint ptr %114 to i64
  %148 = ptrtoint ptr %109 to i64
  %149 = sub i64 %147, %148
  %150 = icmp sgt i64 %149, 40
  br i1 %150, label %228, label %151

151:                                              ; preds = %146
  %152 = icmp eq ptr %109, %114
  br i1 %152, label %226, label %153

153:                                              ; preds = %151
  %154 = icmp ult i64 %149, 32
  %155 = sub i64 %3, %148
  %156 = icmp ult i64 %155, 32
  %157 = or i1 %154, %156
  br i1 %157, label %174, label %158

158:                                              ; preds = %153
  %159 = and i64 %149, -32
  %160 = getelementptr i8, ptr %1, i64 %159
  %161 = getelementptr i8, ptr %109, i64 %159
  br label %162

162:                                              ; preds = %162, %158
  %163 = phi i64 [ 0, %158 ], [ %170, %162 ]
  %164 = getelementptr i8, ptr %1, i64 %163
  %165 = getelementptr i8, ptr %109, i64 %163
  %166 = getelementptr i8, ptr %165, i64 16
  %167 = load <16 x i8>, ptr %165, align 1, !tbaa !5
  %168 = load <16 x i8>, ptr %166, align 1, !tbaa !5
  %169 = getelementptr i8, ptr %164, i64 16
  store <16 x i8> %167, ptr %164, align 1, !tbaa !5
  store <16 x i8> %168, ptr %169, align 1, !tbaa !5
  %170 = add nuw i64 %163, 32
  %171 = icmp eq i64 %170, %159
  br i1 %171, label %172, label %162, !llvm.loop !13

172:                                              ; preds = %162
  %173 = icmp eq i64 %149, %159
  br i1 %173, label %226, label %174

174:                                              ; preds = %153, %172
  %175 = phi ptr [ %1, %153 ], [ %160, %172 ]
  %176 = phi ptr [ %109, %153 ], [ %161, %172 ]
  %177 = ptrtoint ptr %176 to i64
  %178 = sub i64 %147, %177
  %179 = and i64 %178, 7
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %174, %181
  %182 = phi ptr [ %187, %181 ], [ %175, %174 ]
  %183 = phi ptr [ %185, %181 ], [ %176, %174 ]
  %184 = phi i64 [ %188, %181 ], [ 0, %174 ]
  %185 = getelementptr inbounds i8, ptr %183, i64 1
  %186 = load i8, ptr %183, align 1, !tbaa !5
  %187 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 %186, ptr %182, align 1, !tbaa !5
  %188 = add i64 %184, 1
  %189 = icmp eq i64 %188, %179
  br i1 %189, label %190, label %181, !llvm.loop !16

190:                                              ; preds = %181, %174
  %191 = phi ptr [ undef, %174 ], [ %187, %181 ]
  %192 = phi ptr [ %175, %174 ], [ %187, %181 ]
  %193 = phi ptr [ %176, %174 ], [ %185, %181 ]
  %194 = sub i64 %177, %147
  %195 = icmp ugt i64 %194, -8
  br i1 %195, label %226, label %196

196:                                              ; preds = %190, %196
  %197 = phi ptr [ %222, %196 ], [ %192, %190 ]
  %198 = phi ptr [ %220, %196 ], [ %193, %190 ]
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  %200 = load i8, ptr %198, align 1, !tbaa !5
  %201 = getelementptr inbounds i8, ptr %197, i64 1
  store i8 %200, ptr %197, align 1, !tbaa !5
  %202 = getelementptr inbounds i8, ptr %198, i64 2
  %203 = load i8, ptr %199, align 1, !tbaa !5
  %204 = getelementptr inbounds i8, ptr %197, i64 2
  store i8 %203, ptr %201, align 1, !tbaa !5
  %205 = getelementptr inbounds i8, ptr %198, i64 3
  %206 = load i8, ptr %202, align 1, !tbaa !5
  %207 = getelementptr inbounds i8, ptr %197, i64 3
  store i8 %206, ptr %204, align 1, !tbaa !5
  %208 = getelementptr inbounds i8, ptr %198, i64 4
  %209 = load i8, ptr %205, align 1, !tbaa !5
  %210 = getelementptr inbounds i8, ptr %197, i64 4
  store i8 %209, ptr %207, align 1, !tbaa !5
  %211 = getelementptr inbounds i8, ptr %198, i64 5
  %212 = load i8, ptr %208, align 1, !tbaa !5
  %213 = getelementptr inbounds i8, ptr %197, i64 5
  store i8 %212, ptr %210, align 1, !tbaa !5
  %214 = getelementptr inbounds i8, ptr %198, i64 6
  %215 = load i8, ptr %211, align 1, !tbaa !5
  %216 = getelementptr inbounds i8, ptr %197, i64 6
  store i8 %215, ptr %213, align 1, !tbaa !5
  %217 = getelementptr inbounds i8, ptr %198, i64 7
  %218 = load i8, ptr %214, align 1, !tbaa !5
  %219 = getelementptr inbounds i8, ptr %197, i64 7
  store i8 %218, ptr %216, align 1, !tbaa !5
  %220 = getelementptr inbounds i8, ptr %198, i64 8
  %221 = load i8, ptr %217, align 1, !tbaa !5
  %222 = getelementptr inbounds i8, ptr %197, i64 8
  store i8 %221, ptr %219, align 1, !tbaa !5
  %223 = icmp eq ptr %220, %114
  br i1 %223, label %226, label %196, !llvm.loop !18

224:                                              ; preds = %83, %68, %98
  %225 = icmp eq ptr %72, null
  br i1 %225, label %228, label %68, !llvm.loop !19

226:                                              ; preds = %190, %196, %126, %136, %172, %151, %125, %115
  %227 = phi ptr [ %121, %125 ], [ %1, %115 ], [ %1, %151 ], [ %160, %172 ], [ %133, %126 ], [ %143, %136 ], [ %191, %190 ], [ %222, %196 ]
  store i8 0, ptr %227, align 1, !tbaa !5
  br label %228

228:                                              ; preds = %39, %73, %224, %226, %64, %2, %108, %105, %102, %146, %58, %61, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @getTok(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  br label %3

3:                                                ; preds = %37, %1
  %4 = phi ptr [ %2, %1 ], [ %41, %37 ]
  %5 = phi i32 [ 2, %1 ], [ %39, %37 ]
  %6 = phi ptr [ null, %1 ], [ %40, %37 ]
  %7 = load i8, ptr %4, align 1, !tbaa !5
  switch i8 %7, label %33 [
    i8 0, label %8
    i8 32, label %11
    i8 13, label %11
    i8 9, label %11
    i8 10, label %11
    i8 40, label %13
    i8 41, label %16
    i8 59, label %22
    i8 47, label %22
    i8 61, label %22
    i8 92, label %25
    i8 34, label %29
  ]

8:                                                ; preds = %3
  %9 = icmp eq i32 %5, 0
  %10 = select i1 %9, ptr %6, ptr null
  br label %42

11:                                               ; preds = %3, %3, %3, %3
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %42, label %37

13:                                               ; preds = %3
  switch i32 %5, label %14 [
    i32 0, label %42
    i32 1, label %37
  ]

14:                                               ; preds = %13
  %15 = add nsw i32 %5, 1
  br label %37

16:                                               ; preds = %3
  %17 = icmp sgt i32 %5, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add nsw i32 %5, -1
  br label %37

20:                                               ; preds = %16
  %21 = icmp eq i32 %5, 1
  br i1 %21, label %37, label %42

22:                                               ; preds = %3, %3, %3
  switch i32 %5, label %37 [
    i32 0, label %42
    i32 2, label %23
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %24, ptr %0, align 8, !tbaa !8
  br label %42

25:                                               ; preds = %3
  %26 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %26, ptr %0, align 8, !tbaa !8
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %37

29:                                               ; preds = %3
  switch i32 %5, label %37 [
    i32 1, label %30
    i32 0, label %42
    i32 2, label %32
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %31, ptr %0, align 8, !tbaa !8
  br label %42

32:                                               ; preds = %29
  br label %37

33:                                               ; preds = %3
  %34 = icmp eq i32 %5, 2
  %35 = select i1 %34, i32 0, i32 %5
  %36 = select i1 %34, ptr %4, ptr %6
  br label %37

37:                                               ; preds = %33, %22, %13, %32, %29, %25, %18, %20, %14, %11
  %38 = phi ptr [ %4, %29 ], [ %4, %32 ], [ %26, %25 ], [ %4, %18 ], [ %4, %20 ], [ %4, %14 ], [ %4, %11 ], [ %4, %13 ], [ %4, %22 ], [ %4, %33 ]
  %39 = phi i32 [ %5, %29 ], [ 1, %32 ], [ %5, %25 ], [ %19, %18 ], [ 1, %20 ], [ %15, %14 ], [ %5, %11 ], [ %5, %13 ], [ %5, %22 ], [ %35, %33 ]
  %40 = phi ptr [ %6, %29 ], [ %4, %32 ], [ %6, %25 ], [ %6, %18 ], [ %6, %20 ], [ %6, %14 ], [ %6, %11 ], [ %6, %13 ], [ %6, %22 ], [ %36, %33 ]
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %41, ptr %0, align 8, !tbaa !8
  br label %3

42:                                               ; preds = %29, %25, %22, %20, %13, %11, %8, %30, %23
  %43 = phi ptr [ %6, %30 ], [ %4, %23 ], [ %10, %8 ], [ %6, %29 ], [ null, %25 ], [ %6, %22 ], [ null, %20 ], [ %6, %13 ], [ %6, %11 ]
  ret ptr %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11, !14}
!19 = distinct !{!19, !11}
