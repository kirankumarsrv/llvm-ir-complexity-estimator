; ModuleID = 'corpus_src/klib/ksw.c'
source_filename = "corpus_src/klib/ksw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kswr_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._kswq_t = type { i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.eh_t = type { i32, i32 }

@g_defr = dso_local local_unnamed_addr constant %struct.kswr_t { i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @ksw_qinit(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %0, 2
  %7 = select i1 %6, i32 1, i32 2
  %8 = shl nuw nsw i32 %7, 3
  %9 = xor i32 %8, 24
  %10 = add i32 %1, -1
  %11 = add i32 %10, %9
  %12 = sdiv i32 %11, %9
  %13 = shl i32 %3, 4
  %14 = add i32 %13, 64
  %15 = mul i32 %14, %12
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, 312
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #11
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %19, 71
  %21 = and i64 %20, -16
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !5
  %24 = mul nsw i32 %12, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds <2 x i64>, ptr %22, i64 %25
  %27 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 7
  store ptr %26, ptr %27, align 8, !tbaa !11
  %28 = sext i32 %12 to i64
  %29 = getelementptr inbounds <2 x i64>, ptr %26, i64 %28
  %30 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !12
  %31 = getelementptr inbounds <2 x i64>, ptr %29, i64 %28
  %32 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !13
  %33 = getelementptr inbounds <2 x i64>, ptr %31, i64 %28
  %34 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 10
  store ptr %33, ptr %34, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 1
  store i32 %12, ptr %35, align 4, !tbaa !15
  store i32 %1, ptr %18, align 8, !tbaa !16
  %36 = trunc i32 %7 to i8
  %37 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 5
  store i8 %36, ptr %37, align 1, !tbaa !17
  %38 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 2
  %39 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 3
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %119, label %41

41:                                               ; preds = %5
  %42 = mul i32 %3, %3
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 1)
  %44 = zext i32 %43 to i64
  %45 = icmp ult i32 %42, 8
  br i1 %45, label %98, label %46

46:                                               ; preds = %41
  %47 = icmp ult i32 %42, 32
  br i1 %47, label %75, label %48

48:                                               ; preds = %46
  %49 = and i64 %44, 4294967264
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ 0, %48 ], [ %64, %50 ]
  %52 = phi <16 x i8> [ zeroinitializer, %48 ], [ %62, %50 ]
  %53 = phi <16 x i8> [ zeroinitializer, %48 ], [ %63, %50 ]
  %54 = phi <16 x i8> [ <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, %48 ], [ %60, %50 ]
  %55 = phi <16 x i8> [ <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, %48 ], [ %61, %50 ]
  %56 = getelementptr inbounds i8, ptr %4, i64 %51
  %57 = getelementptr inbounds i8, ptr %56, i64 16
  %58 = load <16 x i8>, ptr %56, align 1, !tbaa !18
  %59 = load <16 x i8>, ptr %57, align 1, !tbaa !18
  %60 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %58, <16 x i8> %54)
  %61 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %59, <16 x i8> %55)
  %62 = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %58, <16 x i8> %52)
  %63 = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %59, <16 x i8> %53)
  %64 = add nuw i64 %51, 32
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %50, !llvm.loop !19

66:                                               ; preds = %50
  %67 = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %62, <16 x i8> %63)
  %68 = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %67)
  %69 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %60, <16 x i8> %61)
  %70 = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %69)
  %71 = icmp eq i64 %49, %44
  br i1 %71, label %112, label %72

72:                                               ; preds = %66
  %73 = and i64 %44, 24
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %46, %72
  %76 = phi i8 [ 0, %46 ], [ %68, %72 ]
  %77 = phi i8 [ 127, %46 ], [ %70, %72 ]
  %78 = phi i64 [ 0, %46 ], [ %49, %72 ]
  %79 = and i64 %44, 4294967288
  %80 = insertelement <8 x i8> poison, i8 %76, i64 0
  %81 = shufflevector <8 x i8> %80, <8 x i8> poison, <8 x i32> zeroinitializer
  %82 = insertelement <8 x i8> poison, i8 %77, i64 0
  %83 = shufflevector <8 x i8> %82, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %84

84:                                               ; preds = %84, %75
  %85 = phi i64 [ %78, %75 ], [ %92, %84 ]
  %86 = phi <8 x i8> [ %81, %75 ], [ %91, %84 ]
  %87 = phi <8 x i8> [ %83, %75 ], [ %90, %84 ]
  %88 = getelementptr inbounds i8, ptr %4, i64 %85
  %89 = load <8 x i8>, ptr %88, align 1, !tbaa !18
  %90 = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %89, <8 x i8> %87)
  %91 = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %89, <8 x i8> %86)
  %92 = add nuw i64 %85, 8
  %93 = icmp eq i64 %92, %79
  br i1 %93, label %94, label %84, !llvm.loop !23

94:                                               ; preds = %84
  %95 = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %91)
  %96 = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %90)
  %97 = icmp eq i64 %79, %44
  br i1 %97, label %112, label %98

98:                                               ; preds = %41, %72, %94
  %99 = phi i64 [ 0, %41 ], [ %49, %72 ], [ %79, %94 ]
  %100 = phi i8 [ 0, %41 ], [ %68, %72 ], [ %95, %94 ]
  %101 = phi i8 [ 127, %41 ], [ %70, %72 ], [ %96, %94 ]
  br label %102

102:                                              ; preds = %98, %102
  %103 = phi i64 [ %110, %102 ], [ %99, %98 ]
  %104 = phi i8 [ %109, %102 ], [ %100, %98 ]
  %105 = phi i8 [ %108, %102 ], [ %101, %98 ]
  %106 = getelementptr inbounds i8, ptr %4, i64 %103
  %107 = load i8, ptr %106, align 1, !tbaa !18
  %108 = tail call i8 @llvm.smin.i8(i8 %107, i8 %105)
  %109 = tail call i8 @llvm.smax.i8(i8 %107, i8 %104)
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, %44
  br i1 %111, label %112, label %102, !llvm.loop !24

112:                                              ; preds = %102, %94, %66
  %113 = phi i8 [ %70, %66 ], [ %96, %94 ], [ %108, %102 ]
  %114 = phi i8 [ %68, %66 ], [ %95, %94 ], [ %109, %102 ]
  %115 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 4
  store i8 %114, ptr %115, align 2, !tbaa !25
  %116 = sub i8 0, %113
  store i8 %116, ptr %38, align 8, !tbaa !26
  %117 = sub i8 %114, %113
  store i8 %117, ptr %39, align 1, !tbaa !27
  %118 = icmp sgt i32 %3, 0
  br i1 %6, label %128, label %121

119:                                              ; preds = %5
  %120 = getelementptr inbounds %struct._kswq_t, ptr %18, i64 0, i32 4
  store i8 0, ptr %120, align 2, !tbaa !25
  store i8 -127, ptr %38, align 8, !tbaa !26
  store i8 -127, ptr %39, align 1, !tbaa !27
  br label %208

121:                                              ; preds = %112
  br i1 %118, label %122, label %208

122:                                              ; preds = %121
  %123 = mul nsw i32 %12, %9
  %124 = icmp sgt i32 %12, 0
  %125 = zext i32 %12 to i64
  %126 = zext nneg i32 %3 to i64
  %127 = zext nneg i32 %3 to i64
  br label %172

128:                                              ; preds = %112
  br i1 %118, label %129, label %208

129:                                              ; preds = %128
  %130 = mul nsw i32 %12, %9
  %131 = icmp sgt i32 %12, 0
  %132 = zext i32 %12 to i64
  %133 = zext nneg i32 %3 to i64
  %134 = zext nneg i32 %3 to i64
  br label %135

135:                                              ; preds = %129, %168
  %136 = phi i64 [ 0, %129 ], [ %170, %168 ]
  %137 = phi ptr [ %22, %129 ], [ %169, %168 ]
  %138 = mul nsw i64 %136, %133
  %139 = getelementptr inbounds i8, ptr %4, i64 %138
  br i1 %131, label %140, label %168

140:                                              ; preds = %135, %164
  %141 = phi i64 [ %166, %164 ], [ 0, %135 ]
  %142 = phi ptr [ %165, %164 ], [ %137, %135 ]
  %143 = trunc i64 %141 to i32
  %144 = icmp sgt i32 %130, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %140, %156
  %146 = phi i64 [ %161, %156 ], [ %141, %140 ]
  %147 = phi ptr [ %160, %156 ], [ %142, %140 ]
  %148 = trunc i64 %146 to i32
  %149 = icmp slt i32 %148, %1
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = getelementptr inbounds i8, ptr %2, i64 %146
  %152 = load i8, ptr %151, align 1, !tbaa !18
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds i8, ptr %139, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !18
  br label %156

156:                                              ; preds = %145, %150
  %157 = phi i8 [ %155, %150 ], [ 0, %145 ]
  %158 = load i8, ptr %38, align 8, !tbaa !26
  %159 = add i8 %158, %157
  %160 = getelementptr inbounds i8, ptr %147, i64 1
  store i8 %159, ptr %147, align 1, !tbaa !18
  %161 = add nuw i64 %146, %132
  %162 = trunc i64 %161 to i32
  %163 = icmp sgt i32 %130, %162
  br i1 %163, label %145, label %164, !llvm.loop !28

164:                                              ; preds = %156, %140
  %165 = phi ptr [ %142, %140 ], [ %160, %156 ]
  %166 = add nuw nsw i64 %141, 1
  %167 = icmp eq i64 %166, %132
  br i1 %167, label %168, label %140, !llvm.loop !29

168:                                              ; preds = %164, %135
  %169 = phi ptr [ %137, %135 ], [ %165, %164 ]
  %170 = add nuw nsw i64 %136, 1
  %171 = icmp eq i64 %170, %134
  br i1 %171, label %208, label %135, !llvm.loop !30

172:                                              ; preds = %122, %204
  %173 = phi i64 [ 0, %122 ], [ %206, %204 ]
  %174 = phi ptr [ %22, %122 ], [ %205, %204 ]
  %175 = mul nsw i64 %173, %126
  %176 = getelementptr inbounds i8, ptr %4, i64 %175
  br i1 %124, label %177, label %204

177:                                              ; preds = %172, %200
  %178 = phi i64 [ %202, %200 ], [ 0, %172 ]
  %179 = phi ptr [ %201, %200 ], [ %174, %172 ]
  %180 = trunc i64 %178 to i32
  %181 = icmp sgt i32 %123, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %177, %194
  %183 = phi i64 [ %197, %194 ], [ %178, %177 ]
  %184 = phi ptr [ %196, %194 ], [ %179, %177 ]
  %185 = trunc i64 %183 to i32
  %186 = icmp slt i32 %185, %1
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = getelementptr inbounds i8, ptr %2, i64 %183
  %189 = load i8, ptr %188, align 1, !tbaa !18
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i8, ptr %176, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !18
  %193 = sext i8 %192 to i16
  br label %194

194:                                              ; preds = %182, %187
  %195 = phi i16 [ %193, %187 ], [ 0, %182 ]
  %196 = getelementptr inbounds i16, ptr %184, i64 1
  store i16 %195, ptr %184, align 2, !tbaa !31
  %197 = add nuw i64 %183, %125
  %198 = trunc i64 %197 to i32
  %199 = icmp sgt i32 %123, %198
  br i1 %199, label %182, label %200, !llvm.loop !33

200:                                              ; preds = %194, %177
  %201 = phi ptr [ %179, %177 ], [ %196, %194 ]
  %202 = add nuw nsw i64 %178, 1
  %203 = icmp eq i64 %202, %125
  br i1 %203, label %204, label %177, !llvm.loop !34

204:                                              ; preds = %200, %172
  %205 = phi ptr [ %174, %172 ], [ %201, %200 ]
  %206 = add nuw nsw i64 %173, 1
  %207 = icmp eq i64 %206, %127
  br i1 %207, label %208, label %172, !llvm.loop !35

208:                                              ; preds = %204, %168, %119, %121, %128
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ksw_u8(ptr dead_on_unwind noalias nocapture writable sret(%struct.kswr_t) align 4 %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) @g_defr, i64 28, i1 false), !tbaa.struct !36
  %8 = and i32 %6, 262144
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %6, 65535
  %11 = and i32 %6, 131072
  %12 = icmp eq i32 %11, 0
  %13 = add nsw i32 %5, %4
  %14 = trunc i32 %13 to i8
  %15 = insertelement <16 x i8> poison, i8 %14, i64 0
  %16 = shufflevector <16 x i8> %15, <16 x i8> poison, <16 x i32> zeroinitializer
  %17 = trunc i32 %5 to i8
  %18 = insertelement <16 x i8> poison, i8 %17, i64 0
  %19 = shufflevector <16 x i8> %18, <16 x i8> poison, <16 x i32> zeroinitializer
  %20 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !26
  %22 = insertelement <16 x i8> poison, i8 %21, i64 0
  %23 = shufflevector <16 x i8> %22, <16 x i8> poison, <16 x i32> zeroinitializer
  %24 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %7
  %36 = zext nneg i32 %33 to i64
  %37 = and i64 %36, 1
  %38 = icmp eq i32 %33, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = and i64 %36, 2147483646
  br label %60

41:                                               ; preds = %60, %35
  %42 = phi i64 [ 0, %35 ], [ %70, %60 ]
  %43 = icmp eq i64 %37, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds <2 x i64>, ptr %29, i64 %42
  store <2 x i64> zeroinitializer, ptr %45, align 16, !tbaa !18
  %46 = getelementptr inbounds <2 x i64>, ptr %25, i64 %42
  store <2 x i64> zeroinitializer, ptr %46, align 16, !tbaa !18
  %47 = getelementptr inbounds <2 x i64>, ptr %31, i64 %42
  store <2 x i64> zeroinitializer, ptr %47, align 16, !tbaa !18
  br label %48

48:                                               ; preds = %44, %41, %7
  %49 = icmp sgt i32 %2, 0
  br i1 %49, label %50, label %246

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 6
  %52 = sext i32 %33 to i64
  %53 = zext nneg i32 %2 to i64
  %54 = zext i32 %33 to i64
  %55 = zext nneg i32 %33 to i64
  %56 = and i64 %54, 3
  %57 = icmp ult i32 %33, 4
  %58 = and i64 %54, 2147483644
  %59 = icmp eq i64 %56, 0
  br label %73

60:                                               ; preds = %60, %39
  %61 = phi i64 [ 0, %39 ], [ %70, %60 ]
  %62 = phi i64 [ 0, %39 ], [ %71, %60 ]
  %63 = getelementptr inbounds <2 x i64>, ptr %29, i64 %61
  store <2 x i64> zeroinitializer, ptr %63, align 16, !tbaa !18
  %64 = getelementptr inbounds <2 x i64>, ptr %25, i64 %61
  store <2 x i64> zeroinitializer, ptr %64, align 16, !tbaa !18
  %65 = getelementptr inbounds <2 x i64>, ptr %31, i64 %61
  store <2 x i64> zeroinitializer, ptr %65, align 16, !tbaa !18
  %66 = or disjoint i64 %61, 1
  %67 = getelementptr inbounds <2 x i64>, ptr %29, i64 %66
  store <2 x i64> zeroinitializer, ptr %67, align 16, !tbaa !18
  %68 = getelementptr inbounds <2 x i64>, ptr %25, i64 %66
  store <2 x i64> zeroinitializer, ptr %68, align 16, !tbaa !18
  %69 = getelementptr inbounds <2 x i64>, ptr %31, i64 %66
  store <2 x i64> zeroinitializer, ptr %69, align 16, !tbaa !18
  %70 = add nuw nsw i64 %61, 2
  %71 = add i64 %62, 2
  %72 = icmp eq i64 %71, %40
  br i1 %72, label %41, label %60, !llvm.loop !38

73:                                               ; preds = %50, %241
  %74 = phi i64 [ 0, %50 ], [ %244, %241 ]
  %75 = phi i32 [ 0, %50 ], [ %197, %241 ]
  %76 = phi i32 [ 0, %50 ], [ %196, %241 ]
  %77 = phi i32 [ -1, %50 ], [ %243, %241 ]
  %78 = phi i32 [ 0, %50 ], [ %242, %241 ]
  %79 = phi ptr [ null, %50 ], [ %195, %241 ]
  %80 = phi ptr [ %25, %50 ], [ %81, %241 ]
  %81 = phi ptr [ %27, %50 ], [ %80, %241 ]
  %82 = load ptr, ptr %51, align 8, !tbaa !5
  %83 = getelementptr inbounds i8, ptr %3, i64 %74
  %84 = load i8, ptr %83, align 1, !tbaa !18
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 %33, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds <2 x i64>, ptr %82, i64 %87
  br i1 %34, label %89, label %94, !prof !39

89:                                               ; preds = %73
  %90 = getelementptr inbounds <2 x i64>, ptr %80, i64 %52
  %91 = getelementptr inbounds <2 x i64>, ptr %90, i64 -1
  %92 = load <16 x i8>, ptr %91, align 16, !tbaa !18
  %93 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %92, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  br label %97

94:                                               ; preds = %97, %73
  %95 = phi <16 x i8> [ zeroinitializer, %73 ], [ %116, %97 ]
  %96 = phi <16 x i8> [ zeroinitializer, %73 ], [ %110, %97 ]
  br label %121

97:                                               ; preds = %89, %97
  %98 = phi i64 [ 0, %89 ], [ %119, %97 ]
  %99 = phi <16 x i8> [ zeroinitializer, %89 ], [ %110, %97 ]
  %100 = phi <16 x i8> [ zeroinitializer, %89 ], [ %116, %97 ]
  %101 = phi <16 x i8> [ %93, %89 ], [ %118, %97 ]
  %102 = getelementptr inbounds <2 x i64>, ptr %88, i64 %98
  %103 = load <16 x i8>, ptr %102, align 16, !tbaa !18
  %104 = tail call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %101, <16 x i8> %103)
  %105 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %104, <16 x i8> %23)
  %106 = getelementptr inbounds <2 x i64>, ptr %29, i64 %98
  %107 = load <16 x i8>, ptr %106, align 16, !tbaa !18
  %108 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %105, <16 x i8> %107)
  %109 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %108, <16 x i8> %100)
  %110 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %99, <16 x i8> %109)
  %111 = getelementptr inbounds <2 x i64>, ptr %81, i64 %98
  store <16 x i8> %109, ptr %111, align 16, !tbaa !18
  %112 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %109, <16 x i8> %16)
  %113 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %107, <16 x i8> %19)
  %114 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %113, <16 x i8> %112)
  store <16 x i8> %114, ptr %106, align 16, !tbaa !18
  %115 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %100, <16 x i8> %19)
  %116 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %115, <16 x i8> %112)
  %117 = getelementptr inbounds <2 x i64>, ptr %80, i64 %98
  %118 = load <16 x i8>, ptr %117, align 16, !tbaa !18
  %119 = add nuw nsw i64 %98, 1
  %120 = icmp eq i64 %119, %54
  br i1 %120, label %94, label %97, !prof !40, !llvm.loop !41

121:                                              ; preds = %94, %139
  %122 = phi <16 x i8> [ %95, %94 ], [ %140, %139 ]
  %123 = phi i32 [ 0, %94 ], [ %141, %139 ]
  %124 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %122, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  br i1 %34, label %128, label %139, !prof !39

125:                                              ; preds = %128
  %126 = add nuw nsw i64 %129, 1
  %127 = icmp eq i64 %126, %55
  br i1 %127, label %139, label %128, !prof !40, !llvm.loop !42

128:                                              ; preds = %121, %125
  %129 = phi i64 [ %126, %125 ], [ 0, %121 ]
  %130 = phi <16 x i8> [ %135, %125 ], [ %124, %121 ]
  %131 = getelementptr inbounds <2 x i64>, ptr %81, i64 %129
  %132 = load <16 x i8>, ptr %131, align 16, !tbaa !18
  %133 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %132, <16 x i8> %130)
  store <16 x i8> %133, ptr %131, align 16, !tbaa !18
  %134 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %133, <16 x i8> %16)
  %135 = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %130, <16 x i8> %19)
  %136 = icmp ugt <16 x i8> %135, %134
  %137 = bitcast <16 x i1> %136 to i16
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %143, label %125, !prof !43

139:                                              ; preds = %125, %121
  %140 = phi <16 x i8> [ %124, %121 ], [ %135, %125 ]
  %141 = add nuw nsw i32 %123, 1
  %142 = icmp eq i32 %141, 16
  br i1 %142, label %143, label %121, !prof !44, !llvm.loop !45

143:                                              ; preds = %139, %128
  %144 = shufflevector <16 x i8> %96, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %145 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %96, <16 x i8> %144)
  %146 = shufflevector <16 x i8> %145, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %147 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %145, <16 x i8> %146)
  %148 = shufflevector <16 x i8> %147, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %149 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %147, <16 x i8> %148)
  %150 = shufflevector <16 x i8> %149, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %151 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %149, <16 x i8> %150)
  %152 = bitcast <16 x i8> %151 to <8 x i16>
  %153 = extractelement <8 x i16> %152, i64 0
  %154 = and i16 %153, 255
  %155 = zext nneg i16 %154 to i32
  %156 = icmp ugt i32 %10, %155
  %157 = select i1 %9, i1 true, i1 %156
  br i1 %157, label %194, label %158

158:                                              ; preds = %143
  %159 = icmp eq i32 %76, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %158
  %161 = add nsw i32 %76, -1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, ptr %79, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !46
  %165 = add i64 %164, 1
  %166 = and i64 %165, 4294967295
  %167 = icmp eq i64 %166, %74
  br i1 %167, label %186, label %168

168:                                              ; preds = %160, %158
  %169 = icmp eq i32 %76, %75
  br i1 %169, label %170, label %177

170:                                              ; preds = %168
  %171 = icmp eq i32 %75, 0
  %172 = shl i32 %75, 1
  %173 = select i1 %171, i32 8, i32 %172
  %174 = shl nsw i32 %173, 3
  %175 = sext i32 %174 to i64
  %176 = tail call ptr @realloc(ptr noundef %79, i64 noundef %175) #12
  br label %177

177:                                              ; preds = %170, %168
  %178 = phi ptr [ %176, %170 ], [ %79, %168 ]
  %179 = phi i32 [ %173, %170 ], [ %75, %168 ]
  %180 = zext nneg i16 %154 to i64
  %181 = shl nuw nsw i64 %180, 32
  %182 = or disjoint i64 %181, %74
  %183 = add nsw i32 %76, 1
  %184 = sext i32 %76 to i64
  %185 = getelementptr inbounds i64, ptr %178, i64 %184
  store i64 %182, ptr %185, align 8, !tbaa !46
  br label %194

186:                                              ; preds = %160
  %187 = lshr i64 %164, 32
  %188 = trunc i64 %187 to i32
  %189 = icmp slt i32 %188, %155
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = zext nneg i16 %154 to i64
  %192 = shl nuw nsw i64 %191, 32
  %193 = or disjoint i64 %192, %74
  store i64 %193, ptr %163, align 8, !tbaa !46
  br label %194

194:                                              ; preds = %177, %190, %186, %143
  %195 = phi ptr [ %178, %177 ], [ %79, %190 ], [ %79, %186 ], [ %79, %143 ]
  %196 = phi i32 [ %183, %177 ], [ %76, %190 ], [ %76, %186 ], [ %76, %143 ]
  %197 = phi i32 [ %179, %177 ], [ %75, %190 ], [ %75, %186 ], [ %75, %143 ]
  %198 = icmp ult i32 %78, %155
  br i1 %198, label %199, label %241

199:                                              ; preds = %194
  br i1 %34, label %200, label %233, !prof !39

200:                                              ; preds = %199
  br i1 %57, label %222, label %201, !prof !48

201:                                              ; preds = %200, %201
  %202 = phi i64 [ %219, %201 ], [ 0, %200 ]
  %203 = phi i64 [ %220, %201 ], [ 0, %200 ]
  %204 = getelementptr inbounds <2 x i64>, ptr %31, i64 %202
  %205 = getelementptr inbounds <2 x i64>, ptr %81, i64 %202
  %206 = load <2 x i64>, ptr %205, align 16, !tbaa !18
  store <2 x i64> %206, ptr %204, align 16, !tbaa !18
  %207 = or disjoint i64 %202, 1
  %208 = getelementptr inbounds <2 x i64>, ptr %31, i64 %207
  %209 = getelementptr inbounds <2 x i64>, ptr %81, i64 %207
  %210 = load <2 x i64>, ptr %209, align 16, !tbaa !18
  store <2 x i64> %210, ptr %208, align 16, !tbaa !18
  %211 = or disjoint i64 %202, 2
  %212 = getelementptr inbounds <2 x i64>, ptr %31, i64 %211
  %213 = getelementptr inbounds <2 x i64>, ptr %81, i64 %211
  %214 = load <2 x i64>, ptr %213, align 16, !tbaa !18
  store <2 x i64> %214, ptr %212, align 16, !tbaa !18
  %215 = or disjoint i64 %202, 3
  %216 = getelementptr inbounds <2 x i64>, ptr %31, i64 %215
  %217 = getelementptr inbounds <2 x i64>, ptr %81, i64 %215
  %218 = load <2 x i64>, ptr %217, align 16, !tbaa !18
  store <2 x i64> %218, ptr %216, align 16, !tbaa !18
  %219 = add nuw nsw i64 %202, 4
  %220 = add i64 %203, 4
  %221 = icmp eq i64 %220, %58
  br i1 %221, label %222, label %201, !prof !49, !llvm.loop !50

222:                                              ; preds = %201, %200
  %223 = phi i64 [ 0, %200 ], [ %219, %201 ]
  br i1 %59, label %233, label %224, !prof !51

224:                                              ; preds = %222, %224
  %225 = phi i64 [ %230, %224 ], [ %223, %222 ]
  %226 = phi i64 [ %231, %224 ], [ 0, %222 ]
  %227 = getelementptr inbounds <2 x i64>, ptr %31, i64 %225
  %228 = getelementptr inbounds <2 x i64>, ptr %81, i64 %225
  %229 = load <2 x i64>, ptr %228, align 16, !tbaa !18
  store <2 x i64> %229, ptr %227, align 16, !tbaa !18
  %230 = add nuw nsw i64 %225, 1
  %231 = add i64 %226, 1
  %232 = icmp eq i64 %231, %56
  br i1 %232, label %233, label %224, !prof !52, !llvm.loop !53

233:                                              ; preds = %222, %224, %199
  %234 = load i8, ptr %20, align 8, !tbaa !26
  %235 = zext i8 %234 to i32
  %236 = add nuw nsw i32 %235, %155
  %237 = icmp ult i32 %236, 255
  %238 = select i1 %12, i1 true, i1 %156
  %239 = and i1 %238, %237
  %240 = trunc i64 %74 to i32
  br i1 %239, label %241, label %246

241:                                              ; preds = %233, %194
  %242 = phi i32 [ %78, %194 ], [ %155, %233 ]
  %243 = phi i32 [ %77, %194 ], [ %240, %233 ]
  %244 = add nuw nsw i64 %74, 1
  %245 = icmp eq i64 %244, %53
  br i1 %245, label %246, label %73, !llvm.loop !55

246:                                              ; preds = %241, %233, %48
  %247 = phi ptr [ null, %48 ], [ %195, %233 ], [ %195, %241 ]
  %248 = phi i32 [ 0, %48 ], [ %242, %241 ], [ %155, %233 ]
  %249 = phi i32 [ -1, %48 ], [ %243, %241 ], [ %240, %233 ]
  %250 = phi i32 [ 0, %48 ], [ %196, %233 ], [ %196, %241 ]
  %251 = load i8, ptr %20, align 8, !tbaa !26
  %252 = zext i8 %251 to i32
  %253 = add nuw nsw i32 %248, %252
  %254 = icmp slt i32 %253, 255
  %255 = select i1 %254, i32 %248, i32 255
  store i32 %255, ptr %0, align 4, !tbaa !56
  %256 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 1
  store i32 %249, ptr %256, align 4, !tbaa !58
  %257 = icmp eq i32 %255, 255
  br i1 %257, label %397, label %258

258:                                              ; preds = %246
  br i1 %34, label %259, label %316

259:                                              ; preds = %258
  %260 = shl i32 %33, 4
  %261 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 2
  %262 = load i32, ptr %261, align 4, !tbaa !59
  %263 = tail call i32 @llvm.smax.i32(i32 %260, i32 1)
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %263, 1
  br i1 %265, label %298, label %266

266:                                              ; preds = %259
  %267 = and i32 %263, 2147483632
  br label %268

268:                                              ; preds = %268, %266
  %269 = phi i32 [ %262, %266 ], [ %292, %268 ]
  %270 = phi i32 [ 0, %266 ], [ %294, %268 ]
  %271 = phi ptr [ %31, %266 ], [ %295, %268 ]
  %272 = phi i32 [ -1, %266 ], [ %293, %268 ]
  %273 = phi i32 [ 0, %266 ], [ %296, %268 ]
  %274 = load i8, ptr %271, align 1, !tbaa !18
  %275 = zext i8 %274 to i32
  %276 = icmp slt i32 %272, %275
  %277 = lshr i32 %270, 4
  %278 = and i32 %270, 14
  %279 = mul nsw i32 %278, %33
  %280 = add nuw nsw i32 %279, %277
  %281 = select i1 %276, i32 %280, i32 %269
  %282 = tail call i32 @llvm.smax.i32(i32 %272, i32 %275)
  %283 = getelementptr inbounds i8, ptr %271, i64 1
  %284 = load i8, ptr %283, align 1, !tbaa !18
  %285 = zext i8 %284 to i32
  %286 = icmp ult i32 %282, %285
  %287 = lshr i32 %270, 4
  %288 = and i32 %270, 14
  %289 = or disjoint i32 %288, 1
  %290 = mul nsw i32 %289, %33
  %291 = add nuw nsw i32 %290, %287
  %292 = select i1 %286, i32 %291, i32 %281
  %293 = tail call i32 @llvm.smax.i32(i32 %282, i32 %285)
  %294 = add nuw nsw i32 %270, 2
  %295 = getelementptr inbounds i8, ptr %271, i64 2
  %296 = add i32 %273, 2
  %297 = icmp eq i32 %296, %267
  br i1 %297, label %298, label %268, !llvm.loop !60

298:                                              ; preds = %268, %259
  %299 = phi i32 [ undef, %259 ], [ %292, %268 ]
  %300 = phi i32 [ %262, %259 ], [ %292, %268 ]
  %301 = phi i32 [ 0, %259 ], [ %294, %268 ]
  %302 = phi ptr [ %31, %259 ], [ %295, %268 ]
  %303 = phi i32 [ -1, %259 ], [ %293, %268 ]
  %304 = icmp eq i32 %264, 0
  br i1 %304, label %314, label %305

305:                                              ; preds = %298
  %306 = load i8, ptr %302, align 1, !tbaa !18
  %307 = zext i8 %306 to i32
  %308 = icmp slt i32 %303, %307
  %309 = lshr i32 %301, 4
  %310 = and i32 %301, 15
  %311 = mul nsw i32 %310, %33
  %312 = add nuw nsw i32 %311, %309
  %313 = select i1 %308, i32 %312, i32 %300
  br label %314

314:                                              ; preds = %298, %305
  %315 = phi i32 [ %299, %298 ], [ %313, %305 ]
  store i32 %315, ptr %261, align 4, !tbaa !59
  br label %316

316:                                              ; preds = %314, %258
  %317 = icmp eq ptr %247, null
  br i1 %317, label %397, label %318

318:                                              ; preds = %316
  %319 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 4
  %320 = load i8, ptr %319, align 2, !tbaa !25
  %321 = zext i8 %320 to i32
  %322 = add nsw i32 %255, -1
  %323 = add nsw i32 %322, %321
  %324 = sdiv i32 %323, %321
  %325 = sub nsw i32 %249, %324
  %326 = add nsw i32 %324, %249
  %327 = icmp sgt i32 %250, 0
  br i1 %327, label %328, label %397

328:                                              ; preds = %318
  %329 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 3
  %330 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 4
  %331 = load i32, ptr %329, align 4, !tbaa !61
  %332 = load i32, ptr %330, align 4, !tbaa !62
  %333 = zext nneg i32 %250 to i64
  %334 = and i64 %333, 1
  %335 = icmp eq i32 %250, 1
  br i1 %335, label %373, label %336

336:                                              ; preds = %328
  %337 = and i64 %333, 2147483646
  br label %338

338:                                              ; preds = %338, %336
  %339 = phi i64 [ 0, %336 ], [ %370, %338 ]
  %340 = phi i32 [ %332, %336 ], [ %368, %338 ]
  %341 = phi i32 [ %331, %336 ], [ %369, %338 ]
  %342 = phi i64 [ 0, %336 ], [ %371, %338 ]
  %343 = getelementptr inbounds i64, ptr %247, i64 %339
  %344 = load i64, ptr %343, align 8, !tbaa !46
  %345 = trunc i64 %344 to i32
  %346 = icmp sgt i32 %325, %345
  %347 = icmp slt i32 %326, %345
  %348 = select i1 %346, i1 true, i1 %347
  %349 = lshr i64 %344, 32
  %350 = trunc i64 %349 to i32
  %351 = icmp slt i32 %341, %350
  %352 = tail call i32 @llvm.smax.i32(i32 %341, i32 %350)
  %353 = select i1 %348, i1 %351, i1 false
  %354 = select i1 %353, i32 %345, i32 %340
  %355 = select i1 %348, i32 %352, i32 %341
  %356 = or disjoint i64 %339, 1
  %357 = getelementptr inbounds i64, ptr %247, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !46
  %359 = trunc i64 %358 to i32
  %360 = icmp sgt i32 %325, %359
  %361 = icmp slt i32 %326, %359
  %362 = select i1 %360, i1 true, i1 %361
  %363 = lshr i64 %358, 32
  %364 = trunc i64 %363 to i32
  %365 = icmp slt i32 %355, %364
  %366 = tail call i32 @llvm.smax.i32(i32 %355, i32 %364)
  %367 = select i1 %362, i1 %365, i1 false
  %368 = select i1 %367, i32 %359, i32 %354
  %369 = select i1 %362, i32 %366, i32 %355
  %370 = add nuw nsw i64 %339, 2
  %371 = add i64 %342, 2
  %372 = icmp eq i64 %371, %337
  br i1 %372, label %373, label %338, !llvm.loop !63

373:                                              ; preds = %338, %328
  %374 = phi i32 [ undef, %328 ], [ %368, %338 ]
  %375 = phi i32 [ undef, %328 ], [ %369, %338 ]
  %376 = phi i64 [ 0, %328 ], [ %370, %338 ]
  %377 = phi i32 [ %332, %328 ], [ %368, %338 ]
  %378 = phi i32 [ %331, %328 ], [ %369, %338 ]
  %379 = icmp eq i64 %334, 0
  br i1 %379, label %394, label %380

380:                                              ; preds = %373
  %381 = getelementptr inbounds i64, ptr %247, i64 %376
  %382 = load i64, ptr %381, align 8, !tbaa !46
  %383 = trunc i64 %382 to i32
  %384 = icmp sgt i32 %325, %383
  %385 = icmp slt i32 %326, %383
  %386 = select i1 %384, i1 true, i1 %385
  %387 = lshr i64 %382, 32
  %388 = trunc i64 %387 to i32
  %389 = icmp slt i32 %378, %388
  %390 = tail call i32 @llvm.smax.i32(i32 %378, i32 %388)
  %391 = select i1 %386, i1 %389, i1 false
  %392 = select i1 %391, i32 %383, i32 %377
  %393 = select i1 %386, i32 %390, i32 %378
  br label %394

394:                                              ; preds = %373, %380
  %395 = phi i32 [ %374, %373 ], [ %392, %380 ]
  %396 = phi i32 [ %375, %373 ], [ %393, %380 ]
  store i32 %396, ptr %329, align 4, !tbaa !61
  store i32 %395, ptr %330, align 4, !tbaa !62
  br label %397

397:                                              ; preds = %318, %394, %316, %246
  tail call void @free(ptr noundef %247) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @ksw_i16(ptr dead_on_unwind noalias nocapture writable sret(%struct.kswr_t) align 4 %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) @g_defr, i64 28, i1 false), !tbaa.struct !36
  %8 = and i32 %6, 262144
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %6, 65535
  %11 = and i32 %6, 131072
  %12 = icmp eq i32 %11, 0
  %13 = add nsw i32 %5, %4
  %14 = trunc i32 %13 to i16
  %15 = insertelement <8 x i16> poison, i16 %14, i64 0
  %16 = shufflevector <8 x i16> %15, <8 x i16> poison, <8 x i32> zeroinitializer
  %17 = trunc i32 %5 to i16
  %18 = insertelement <8 x i16> poison, i16 %17, i64 0
  %19 = shufflevector <8 x i16> %18, <8 x i16> poison, <8 x i32> zeroinitializer
  %20 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %7
  %32 = zext nneg i32 %29 to i64
  %33 = and i64 %32, 1
  %34 = icmp eq i32 %29, 1
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = and i64 %32, 2147483646
  br label %56

37:                                               ; preds = %56, %31
  %38 = phi i64 [ 0, %31 ], [ %66, %56 ]
  %39 = icmp eq i64 %33, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds <2 x i64>, ptr %25, i64 %38
  store <2 x i64> zeroinitializer, ptr %41, align 16, !tbaa !18
  %42 = getelementptr inbounds <2 x i64>, ptr %21, i64 %38
  store <2 x i64> zeroinitializer, ptr %42, align 16, !tbaa !18
  %43 = getelementptr inbounds <2 x i64>, ptr %27, i64 %38
  store <2 x i64> zeroinitializer, ptr %43, align 16, !tbaa !18
  br label %44

44:                                               ; preds = %40, %37, %7
  %45 = icmp sgt i32 %2, 0
  br i1 %45, label %46, label %252

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 6
  %48 = sext i32 %29 to i64
  %49 = zext nneg i32 %2 to i64
  %50 = zext i32 %29 to i64
  %51 = zext nneg i32 %29 to i64
  %52 = and i64 %50, 3
  %53 = icmp ult i32 %29, 4
  %54 = and i64 %50, 2147483644
  %55 = icmp eq i64 %52, 0
  br label %69

56:                                               ; preds = %56, %35
  %57 = phi i64 [ 0, %35 ], [ %66, %56 ]
  %58 = phi i64 [ 0, %35 ], [ %67, %56 ]
  %59 = getelementptr inbounds <2 x i64>, ptr %25, i64 %57
  store <2 x i64> zeroinitializer, ptr %59, align 16, !tbaa !18
  %60 = getelementptr inbounds <2 x i64>, ptr %21, i64 %57
  store <2 x i64> zeroinitializer, ptr %60, align 16, !tbaa !18
  %61 = getelementptr inbounds <2 x i64>, ptr %27, i64 %57
  store <2 x i64> zeroinitializer, ptr %61, align 16, !tbaa !18
  %62 = or disjoint i64 %57, 1
  %63 = getelementptr inbounds <2 x i64>, ptr %25, i64 %62
  store <2 x i64> zeroinitializer, ptr %63, align 16, !tbaa !18
  %64 = getelementptr inbounds <2 x i64>, ptr %21, i64 %62
  store <2 x i64> zeroinitializer, ptr %64, align 16, !tbaa !18
  %65 = getelementptr inbounds <2 x i64>, ptr %27, i64 %62
  store <2 x i64> zeroinitializer, ptr %65, align 16, !tbaa !18
  %66 = add nuw nsw i64 %57, 2
  %67 = add i64 %58, 2
  %68 = icmp eq i64 %67, %36
  br i1 %68, label %37, label %56, !llvm.loop !64

69:                                               ; preds = %46, %247
  %70 = phi i64 [ 0, %46 ], [ %250, %247 ]
  %71 = phi i32 [ 0, %46 ], [ %208, %247 ]
  %72 = phi i32 [ 0, %46 ], [ %207, %247 ]
  %73 = phi i32 [ -1, %46 ], [ %249, %247 ]
  %74 = phi i32 [ 0, %46 ], [ %248, %247 ]
  %75 = phi ptr [ null, %46 ], [ %206, %247 ]
  %76 = phi ptr [ %21, %46 ], [ %77, %247 ]
  %77 = phi ptr [ %23, %46 ], [ %76, %247 ]
  br i1 %30, label %78, label %94, !prof !39

78:                                               ; preds = %69
  %79 = getelementptr inbounds <2 x i64>, ptr %76, i64 %48
  %80 = getelementptr inbounds <2 x i64>, ptr %79, i64 -1
  %81 = load <16 x i8>, ptr %80, align 16, !tbaa !18
  %82 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %81, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %83 = bitcast <16 x i8> %82 to <2 x i64>
  %84 = load ptr, ptr %47, align 8, !tbaa !5
  %85 = getelementptr inbounds i8, ptr %3, i64 %70
  %86 = load i8, ptr %85, align 1, !tbaa !18
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %29, %87
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds <2 x i64>, ptr %84, i64 %89
  br label %97

91:                                               ; preds = %97
  %92 = bitcast <8 x i16> %117 to <2 x i64>
  %93 = bitcast <8 x i16> %111 to <2 x i64>
  br label %94

94:                                               ; preds = %91, %69
  %95 = phi <2 x i64> [ zeroinitializer, %69 ], [ %92, %91 ]
  %96 = phi <2 x i64> [ zeroinitializer, %69 ], [ %93, %91 ]
  br label %122

97:                                               ; preds = %78, %97
  %98 = phi i64 [ 0, %78 ], [ %120, %97 ]
  %99 = phi ptr [ %90, %78 ], [ %103, %97 ]
  %100 = phi <8 x i16> [ zeroinitializer, %78 ], [ %111, %97 ]
  %101 = phi <8 x i16> [ zeroinitializer, %78 ], [ %117, %97 ]
  %102 = phi <2 x i64> [ %83, %78 ], [ %119, %97 ]
  %103 = getelementptr inbounds <2 x i64>, ptr %99, i64 1
  %104 = load <8 x i16>, ptr %99, align 16, !tbaa !18
  %105 = bitcast <2 x i64> %102 to <8 x i16>
  %106 = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %105, <8 x i16> %104)
  %107 = getelementptr inbounds <2 x i64>, ptr %25, i64 %98
  %108 = load <8 x i16>, ptr %107, align 16, !tbaa !18
  %109 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %106, <8 x i16> %108)
  %110 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %109, <8 x i16> %101)
  %111 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %100, <8 x i16> %110)
  %112 = getelementptr inbounds <2 x i64>, ptr %77, i64 %98
  store <8 x i16> %110, ptr %112, align 16, !tbaa !18
  %113 = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %110, <8 x i16> %16)
  %114 = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %108, <8 x i16> %19)
  %115 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %114, <8 x i16> %113)
  store <8 x i16> %115, ptr %107, align 16, !tbaa !18
  %116 = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %101, <8 x i16> %19)
  %117 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %116, <8 x i16> %113)
  %118 = getelementptr inbounds <2 x i64>, ptr %76, i64 %98
  %119 = load <2 x i64>, ptr %118, align 16, !tbaa !18
  %120 = add nuw nsw i64 %98, 1
  %121 = icmp eq i64 %120, %50
  br i1 %121, label %91, label %97, !prof !40, !llvm.loop !65

122:                                              ; preds = %94, %147
  %123 = phi <2 x i64> [ %95, %94 ], [ %148, %147 ]
  %124 = phi i32 [ 0, %94 ], [ %149, %147 ]
  %125 = bitcast <2 x i64> %123 to <16 x i8>
  %126 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %125, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %127 = bitcast <16 x i8> %126 to <2 x i64>
  br i1 %30, label %128, label %147, !prof !39

128:                                              ; preds = %122, %143
  %129 = phi i64 [ %145, %143 ], [ 0, %122 ]
  %130 = phi <2 x i64> [ %144, %143 ], [ %127, %122 ]
  %131 = getelementptr inbounds <2 x i64>, ptr %77, i64 %129
  %132 = load <8 x i16>, ptr %131, align 16, !tbaa !18
  %133 = bitcast <2 x i64> %130 to <8 x i16>
  %134 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %132, <8 x i16> %133)
  store <8 x i16> %134, ptr %131, align 16, !tbaa !18
  %135 = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %134, <8 x i16> %16)
  %136 = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %133, <8 x i16> %19)
  %137 = icmp sgt <8 x i16> %136, %135
  %138 = sext <8 x i1> %137 to <8 x i16>
  %139 = bitcast <8 x i16> %138 to <16 x i8>
  %140 = icmp slt <16 x i8> %139, zeroinitializer
  %141 = bitcast <16 x i1> %140 to i16
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %151, label %143, !prof !43

143:                                              ; preds = %128
  %144 = bitcast <8 x i16> %136 to <2 x i64>
  %145 = add nuw nsw i64 %129, 1
  %146 = icmp eq i64 %145, %51
  br i1 %146, label %147, label %128, !prof !40, !llvm.loop !66

147:                                              ; preds = %143, %122
  %148 = phi <2 x i64> [ %127, %122 ], [ %144, %143 ]
  %149 = add nuw nsw i32 %124, 1
  %150 = icmp eq i32 %149, 16
  br i1 %150, label %151, label %122, !prof !44, !llvm.loop !67

151:                                              ; preds = %147, %128
  %152 = bitcast <2 x i64> %96 to <16 x i8>
  %153 = shufflevector <16 x i8> %152, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %154 = bitcast <2 x i64> %96 to <8 x i16>
  %155 = bitcast <16 x i8> %153 to <8 x i16>
  %156 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %154, <8 x i16> %155)
  %157 = bitcast <8 x i16> %156 to <16 x i8>
  %158 = shufflevector <16 x i8> %157, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %159 = bitcast <16 x i8> %158 to <8 x i16>
  %160 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %156, <8 x i16> %159)
  %161 = bitcast <8 x i16> %160 to <16 x i8>
  %162 = shufflevector <16 x i8> %161, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %163 = bitcast <16 x i8> %162 to <8 x i16>
  %164 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %160, <8 x i16> %163)
  %165 = extractelement <8 x i16> %164, i64 0
  %166 = zext i16 %165 to i32
  %167 = icmp ugt i32 %10, %166
  %168 = select i1 %9, i1 true, i1 %167
  br i1 %168, label %205, label %169

169:                                              ; preds = %151
  %170 = icmp eq i32 %72, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %169
  %172 = add nsw i32 %72, -1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, ptr %75, i64 %173
  %175 = load i64, ptr %174, align 8, !tbaa !46
  %176 = add i64 %175, 1
  %177 = and i64 %176, 4294967295
  %178 = icmp eq i64 %177, %70
  br i1 %178, label %197, label %179

179:                                              ; preds = %171, %169
  %180 = icmp eq i32 %72, %71
  br i1 %180, label %181, label %188

181:                                              ; preds = %179
  %182 = icmp eq i32 %71, 0
  %183 = shl i32 %71, 1
  %184 = select i1 %182, i32 8, i32 %183
  %185 = shl nsw i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = tail call ptr @realloc(ptr noundef %75, i64 noundef %186) #12
  br label %188

188:                                              ; preds = %181, %179
  %189 = phi ptr [ %187, %181 ], [ %75, %179 ]
  %190 = phi i32 [ %184, %181 ], [ %71, %179 ]
  %191 = zext i16 %165 to i64
  %192 = shl nuw nsw i64 %191, 32
  %193 = or disjoint i64 %192, %70
  %194 = add nsw i32 %72, 1
  %195 = sext i32 %72 to i64
  %196 = getelementptr inbounds i64, ptr %189, i64 %195
  store i64 %193, ptr %196, align 8, !tbaa !46
  br label %205

197:                                              ; preds = %171
  %198 = lshr i64 %175, 32
  %199 = trunc i64 %198 to i32
  %200 = icmp slt i32 %199, %166
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = zext i16 %165 to i64
  %203 = shl nuw nsw i64 %202, 32
  %204 = or disjoint i64 %203, %70
  store i64 %204, ptr %174, align 8, !tbaa !46
  br label %205

205:                                              ; preds = %188, %201, %197, %151
  %206 = phi ptr [ %189, %188 ], [ %75, %201 ], [ %75, %197 ], [ %75, %151 ]
  %207 = phi i32 [ %194, %188 ], [ %72, %201 ], [ %72, %197 ], [ %72, %151 ]
  %208 = phi i32 [ %190, %188 ], [ %71, %201 ], [ %71, %197 ], [ %71, %151 ]
  %209 = icmp ult i32 %74, %166
  br i1 %209, label %210, label %247

210:                                              ; preds = %205
  br i1 %30, label %211, label %244, !prof !39

211:                                              ; preds = %210
  br i1 %53, label %233, label %212, !prof !48

212:                                              ; preds = %211, %212
  %213 = phi i64 [ %230, %212 ], [ 0, %211 ]
  %214 = phi i64 [ %231, %212 ], [ 0, %211 ]
  %215 = getelementptr inbounds <2 x i64>, ptr %27, i64 %213
  %216 = getelementptr inbounds <2 x i64>, ptr %77, i64 %213
  %217 = load <2 x i64>, ptr %216, align 16, !tbaa !18
  store <2 x i64> %217, ptr %215, align 16, !tbaa !18
  %218 = or disjoint i64 %213, 1
  %219 = getelementptr inbounds <2 x i64>, ptr %27, i64 %218
  %220 = getelementptr inbounds <2 x i64>, ptr %77, i64 %218
  %221 = load <2 x i64>, ptr %220, align 16, !tbaa !18
  store <2 x i64> %221, ptr %219, align 16, !tbaa !18
  %222 = or disjoint i64 %213, 2
  %223 = getelementptr inbounds <2 x i64>, ptr %27, i64 %222
  %224 = getelementptr inbounds <2 x i64>, ptr %77, i64 %222
  %225 = load <2 x i64>, ptr %224, align 16, !tbaa !18
  store <2 x i64> %225, ptr %223, align 16, !tbaa !18
  %226 = or disjoint i64 %213, 3
  %227 = getelementptr inbounds <2 x i64>, ptr %27, i64 %226
  %228 = getelementptr inbounds <2 x i64>, ptr %77, i64 %226
  %229 = load <2 x i64>, ptr %228, align 16, !tbaa !18
  store <2 x i64> %229, ptr %227, align 16, !tbaa !18
  %230 = add nuw nsw i64 %213, 4
  %231 = add i64 %214, 4
  %232 = icmp eq i64 %231, %54
  br i1 %232, label %233, label %212, !prof !49, !llvm.loop !68

233:                                              ; preds = %212, %211
  %234 = phi i64 [ 0, %211 ], [ %230, %212 ]
  br i1 %55, label %244, label %235, !prof !51

235:                                              ; preds = %233, %235
  %236 = phi i64 [ %241, %235 ], [ %234, %233 ]
  %237 = phi i64 [ %242, %235 ], [ 0, %233 ]
  %238 = getelementptr inbounds <2 x i64>, ptr %27, i64 %236
  %239 = getelementptr inbounds <2 x i64>, ptr %77, i64 %236
  %240 = load <2 x i64>, ptr %239, align 16, !tbaa !18
  store <2 x i64> %240, ptr %238, align 16, !tbaa !18
  %241 = add nuw nsw i64 %236, 1
  %242 = add i64 %237, 1
  %243 = icmp eq i64 %242, %52
  br i1 %243, label %244, label %235, !prof !52, !llvm.loop !69

244:                                              ; preds = %233, %235, %210
  %245 = select i1 %12, i1 true, i1 %167
  %246 = trunc i64 %70 to i32
  br i1 %245, label %247, label %252

247:                                              ; preds = %244, %205
  %248 = phi i32 [ %74, %205 ], [ %166, %244 ]
  %249 = phi i32 [ %73, %205 ], [ %246, %244 ]
  %250 = add nuw nsw i64 %70, 1
  %251 = icmp eq i64 %250, %49
  br i1 %251, label %252, label %69, !llvm.loop !70

252:                                              ; preds = %247, %244, %44
  %253 = phi ptr [ null, %44 ], [ %206, %244 ], [ %206, %247 ]
  %254 = phi i32 [ 0, %44 ], [ %248, %247 ], [ %166, %244 ]
  %255 = phi i32 [ -1, %44 ], [ %249, %247 ], [ %246, %244 ]
  %256 = phi i32 [ 0, %44 ], [ %207, %244 ], [ %207, %247 ]
  store i32 %254, ptr %0, align 4, !tbaa !56
  %257 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 1
  store i32 %255, ptr %257, align 4, !tbaa !58
  %258 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 2
  br i1 %30, label %259, label %312

259:                                              ; preds = %252
  %260 = shl i32 %29, 3
  %261 = tail call i32 @llvm.smax.i32(i32 %260, i32 1)
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %261, 1
  br i1 %263, label %296, label %264

264:                                              ; preds = %259
  %265 = and i32 %261, 2147483640
  br label %266

266:                                              ; preds = %266, %264
  %267 = phi i32 [ 0, %264 ], [ %292, %266 ]
  %268 = phi ptr [ %27, %264 ], [ %293, %266 ]
  %269 = phi i32 [ -1, %264 ], [ %291, %266 ]
  %270 = phi i32 [ -1, %264 ], [ %290, %266 ]
  %271 = phi i32 [ 0, %264 ], [ %294, %266 ]
  %272 = load i16, ptr %268, align 2, !tbaa !31
  %273 = zext i16 %272 to i32
  %274 = icmp slt i32 %269, %273
  %275 = lshr i32 %267, 3
  %276 = and i32 %267, 6
  %277 = mul nsw i32 %276, %29
  %278 = add nuw nsw i32 %277, %275
  %279 = select i1 %274, i32 %278, i32 %270
  %280 = tail call i32 @llvm.smax.i32(i32 %269, i32 %273)
  %281 = getelementptr inbounds i16, ptr %268, i64 1
  %282 = load i16, ptr %281, align 2, !tbaa !31
  %283 = zext i16 %282 to i32
  %284 = icmp ult i32 %280, %283
  %285 = lshr i32 %267, 3
  %286 = and i32 %267, 6
  %287 = or disjoint i32 %286, 1
  %288 = mul nsw i32 %287, %29
  %289 = add nuw nsw i32 %288, %285
  %290 = select i1 %284, i32 %289, i32 %279
  %291 = tail call i32 @llvm.smax.i32(i32 %280, i32 %283)
  %292 = add nuw nsw i32 %267, 2
  %293 = getelementptr inbounds i16, ptr %268, i64 2
  %294 = add i32 %271, 2
  %295 = icmp eq i32 %294, %265
  br i1 %295, label %296, label %266, !llvm.loop !71

296:                                              ; preds = %266, %259
  %297 = phi i32 [ undef, %259 ], [ %290, %266 ]
  %298 = phi i32 [ 0, %259 ], [ %292, %266 ]
  %299 = phi ptr [ %27, %259 ], [ %293, %266 ]
  %300 = phi i32 [ -1, %259 ], [ %291, %266 ]
  %301 = phi i32 [ -1, %259 ], [ %290, %266 ]
  %302 = icmp eq i32 %262, 0
  br i1 %302, label %312, label %303

303:                                              ; preds = %296
  %304 = load i16, ptr %299, align 2, !tbaa !31
  %305 = zext i16 %304 to i32
  %306 = icmp slt i32 %300, %305
  %307 = lshr i32 %298, 3
  %308 = and i32 %298, 7
  %309 = mul nsw i32 %308, %29
  %310 = add nuw nsw i32 %309, %307
  %311 = select i1 %306, i32 %310, i32 %301
  br label %312

312:                                              ; preds = %303, %296, %252
  %313 = phi i32 [ -1, %252 ], [ %297, %296 ], [ %311, %303 ]
  store i32 %313, ptr %258, align 4, !tbaa !59
  %314 = icmp eq ptr %253, null
  br i1 %314, label %394, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct._kswq_t, ptr %1, i64 0, i32 4
  %317 = load i8, ptr %316, align 2, !tbaa !25
  %318 = zext i8 %317 to i32
  %319 = add nsw i32 %254, -1
  %320 = add nsw i32 %319, %318
  %321 = sdiv i32 %320, %318
  %322 = sub nsw i32 %255, %321
  %323 = add nsw i32 %321, %255
  %324 = icmp sgt i32 %256, 0
  br i1 %324, label %325, label %394

325:                                              ; preds = %315
  %326 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 3
  %327 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 4
  %328 = load i32, ptr %326, align 4, !tbaa !61
  %329 = load i32, ptr %327, align 4, !tbaa !62
  %330 = zext nneg i32 %256 to i64
  %331 = and i64 %330, 1
  %332 = icmp eq i32 %256, 1
  br i1 %332, label %370, label %333

333:                                              ; preds = %325
  %334 = and i64 %330, 2147483646
  br label %335

335:                                              ; preds = %335, %333
  %336 = phi i64 [ 0, %333 ], [ %367, %335 ]
  %337 = phi i32 [ %329, %333 ], [ %365, %335 ]
  %338 = phi i32 [ %328, %333 ], [ %366, %335 ]
  %339 = phi i64 [ 0, %333 ], [ %368, %335 ]
  %340 = getelementptr inbounds i64, ptr %253, i64 %336
  %341 = load i64, ptr %340, align 8, !tbaa !46
  %342 = trunc i64 %341 to i32
  %343 = icmp sgt i32 %322, %342
  %344 = icmp slt i32 %323, %342
  %345 = select i1 %343, i1 true, i1 %344
  %346 = lshr i64 %341, 32
  %347 = trunc i64 %346 to i32
  %348 = icmp slt i32 %338, %347
  %349 = tail call i32 @llvm.smax.i32(i32 %338, i32 %347)
  %350 = select i1 %345, i1 %348, i1 false
  %351 = select i1 %350, i32 %342, i32 %337
  %352 = select i1 %345, i32 %349, i32 %338
  %353 = or disjoint i64 %336, 1
  %354 = getelementptr inbounds i64, ptr %253, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !46
  %356 = trunc i64 %355 to i32
  %357 = icmp sgt i32 %322, %356
  %358 = icmp slt i32 %323, %356
  %359 = select i1 %357, i1 true, i1 %358
  %360 = lshr i64 %355, 32
  %361 = trunc i64 %360 to i32
  %362 = icmp slt i32 %352, %361
  %363 = tail call i32 @llvm.smax.i32(i32 %352, i32 %361)
  %364 = select i1 %359, i1 %362, i1 false
  %365 = select i1 %364, i32 %356, i32 %351
  %366 = select i1 %359, i32 %363, i32 %352
  %367 = add nuw nsw i64 %336, 2
  %368 = add i64 %339, 2
  %369 = icmp eq i64 %368, %334
  br i1 %369, label %370, label %335, !llvm.loop !72

370:                                              ; preds = %335, %325
  %371 = phi i32 [ undef, %325 ], [ %365, %335 ]
  %372 = phi i32 [ undef, %325 ], [ %366, %335 ]
  %373 = phi i64 [ 0, %325 ], [ %367, %335 ]
  %374 = phi i32 [ %329, %325 ], [ %365, %335 ]
  %375 = phi i32 [ %328, %325 ], [ %366, %335 ]
  %376 = icmp eq i64 %331, 0
  br i1 %376, label %391, label %377

377:                                              ; preds = %370
  %378 = getelementptr inbounds i64, ptr %253, i64 %373
  %379 = load i64, ptr %378, align 8, !tbaa !46
  %380 = trunc i64 %379 to i32
  %381 = icmp sgt i32 %322, %380
  %382 = icmp slt i32 %323, %380
  %383 = select i1 %381, i1 true, i1 %382
  %384 = lshr i64 %379, 32
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %375, %385
  %387 = tail call i32 @llvm.smax.i32(i32 %375, i32 %385)
  %388 = select i1 %383, i1 %386, i1 false
  %389 = select i1 %388, i32 %380, i32 %374
  %390 = select i1 %383, i32 %387, i32 %375
  br label %391

391:                                              ; preds = %370, %377
  %392 = phi i32 [ %371, %370 ], [ %389, %377 ]
  %393 = phi i32 [ %372, %370 ], [ %390, %377 ]
  store i32 %393, ptr %326, align 4, !tbaa !61
  store i32 %392, ptr %327, align 4, !tbaa !62
  br label %394

394:                                              ; preds = %315, %391, %312
  tail call void @free(ptr noundef %253) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ksw_align(ptr dead_on_unwind noalias nocapture writable sret(%struct.kswr_t) align 4 %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #7 {
  %12 = alloca %struct.kswr_t, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %10, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %14
  %18 = and i32 %9, 65536
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2, i32 1
  %21 = tail call ptr @ksw_qinit(i32 noundef %20, i32 noundef %1, ptr noundef %2, i32 noundef %5, ptr noundef %6)
  br i1 %13, label %26, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %10, align 8, !tbaa !73
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr %21, ptr %10, align 8, !tbaa !73
  br label %26

26:                                               ; preds = %14, %25, %22, %17
  %27 = phi ptr [ %21, %25 ], [ %21, %22 ], [ %21, %17 ], [ %15, %14 ]
  %28 = getelementptr inbounds %struct._kswq_t, ptr %27, i64 0, i32 5
  %29 = load i8, ptr %28, align 1, !tbaa !17
  %30 = zext i8 %29 to i32
  %31 = icmp eq i8 %29, 2
  %32 = select i1 %31, ptr @ksw_i16, ptr @ksw_u8
  tail call void %32(ptr dead_on_unwind nonnull writable sret(%struct.kswr_t) align 4 %0, ptr noundef %27, i32 noundef %3, ptr noundef %4, i32 noundef %7, i32 noundef %8, i32 noundef %9) #13
  br i1 %13, label %33, label %34

33:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %27) #13
  br label %34

34:                                               ; preds = %33, %26
  %35 = and i32 %9, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %225, label %37

37:                                               ; preds = %34
  %38 = and i32 %9, 262144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %0, align 4, !tbaa !56
  %42 = and i32 %9, 65535
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %225, label %44

44:                                               ; preds = %40, %37
  %45 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = add nsw i32 %46, 1
  %48 = ashr i32 %47, 1
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %44
  %51 = zext nneg i32 %48 to i64
  %52 = and i64 %51, 1
  %53 = icmp eq i32 %48, 1
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = and i64 %51, 2147483646
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %74, %56 ]
  %58 = phi i64 [ 0, %54 ], [ %75, %56 ]
  %59 = getelementptr inbounds i8, ptr %2, i64 %57
  %60 = load i8, ptr %59, align 1, !tbaa !18
  %61 = trunc i64 %57 to i32
  %62 = sub i32 %46, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %2, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !18
  store i8 %65, ptr %59, align 1, !tbaa !18
  store i8 %60, ptr %64, align 1, !tbaa !18
  %66 = or disjoint i64 %57, 1
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !18
  %69 = trunc i64 %66 to i32
  %70 = sub i32 %46, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %2, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !18
  store i8 %73, ptr %67, align 1, !tbaa !18
  store i8 %68, ptr %72, align 1, !tbaa !18
  %74 = add nuw nsw i64 %57, 2
  %75 = add i64 %58, 2
  %76 = icmp eq i64 %75, %55
  br i1 %76, label %77, label %56, !llvm.loop !74

77:                                               ; preds = %56, %50
  %78 = phi i64 [ 0, %50 ], [ %74, %56 ]
  %79 = icmp eq i64 %52, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %2, i64 %78
  %82 = load i8, ptr %81, align 1, !tbaa !18
  %83 = trunc i64 %78 to i32
  %84 = sub i32 %46, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %2, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !18
  store i8 %87, ptr %81, align 1, !tbaa !18
  store i8 %82, ptr %86, align 1, !tbaa !18
  br label %88

88:                                               ; preds = %80, %77, %44
  %89 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !58
  %91 = add nsw i32 %90, 1
  %92 = ashr i32 %91, 1
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %88
  %95 = zext nneg i32 %92 to i64
  %96 = and i64 %95, 1
  %97 = icmp eq i32 %92, 1
  br i1 %97, label %121, label %98

98:                                               ; preds = %94
  %99 = and i64 %95, 2147483646
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i64 [ 0, %98 ], [ %118, %100 ]
  %102 = phi i64 [ 0, %98 ], [ %119, %100 ]
  %103 = getelementptr inbounds i8, ptr %4, i64 %101
  %104 = load i8, ptr %103, align 1, !tbaa !18
  %105 = trunc i64 %101 to i32
  %106 = sub i32 %90, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %4, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !18
  store i8 %109, ptr %103, align 1, !tbaa !18
  store i8 %104, ptr %108, align 1, !tbaa !18
  %110 = or disjoint i64 %101, 1
  %111 = getelementptr inbounds i8, ptr %4, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !18
  %113 = trunc i64 %110 to i32
  %114 = sub i32 %90, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %4, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !18
  store i8 %117, ptr %111, align 1, !tbaa !18
  store i8 %112, ptr %116, align 1, !tbaa !18
  %118 = add nuw nsw i64 %101, 2
  %119 = add i64 %102, 2
  %120 = icmp eq i64 %119, %99
  br i1 %120, label %121, label %100, !llvm.loop !74

121:                                              ; preds = %100, %94
  %122 = phi i64 [ 0, %94 ], [ %118, %100 ]
  %123 = icmp eq i64 %96, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, ptr %4, i64 %122
  %126 = load i8, ptr %125, align 1, !tbaa !18
  %127 = trunc i64 %122 to i32
  %128 = sub i32 %90, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %4, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !18
  store i8 %131, ptr %125, align 1, !tbaa !18
  store i8 %126, ptr %130, align 1, !tbaa !18
  br label %132

132:                                              ; preds = %124, %121, %88
  %133 = tail call ptr @ksw_qinit(i32 noundef %30, i32 noundef %47, ptr noundef %2, i32 noundef %5, ptr noundef %6)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #13
  %134 = load i32, ptr %0, align 4, !tbaa !56
  %135 = or i32 %134, 131072
  call void %32(ptr dead_on_unwind nonnull writable sret(%struct.kswr_t) align 4 %12, ptr noundef %133, i32 noundef %3, ptr noundef %4, i32 noundef %7, i32 noundef %8, i32 noundef %135) #13, !callees !75
  %136 = load i32, ptr %12, align 4, !tbaa.struct !36
  %137 = getelementptr inbounds i8, ptr %12, i64 4
  %138 = load i32, ptr %137, align 4, !tbaa.struct !76
  %139 = getelementptr inbounds i8, ptr %12, i64 8
  %140 = load i32, ptr %139, align 4, !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #13
  br i1 %49, label %141, label %179

141:                                              ; preds = %132
  %142 = zext nneg i32 %48 to i64
  %143 = and i64 %142, 1
  %144 = icmp eq i32 %48, 1
  br i1 %144, label %168, label %145

145:                                              ; preds = %141
  %146 = and i64 %142, 2147483646
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i64 [ 0, %145 ], [ %165, %147 ]
  %149 = phi i64 [ 0, %145 ], [ %166, %147 ]
  %150 = getelementptr inbounds i8, ptr %2, i64 %148
  %151 = load i8, ptr %150, align 1, !tbaa !18
  %152 = trunc i64 %148 to i32
  %153 = sub i32 %46, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %2, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !18
  store i8 %156, ptr %150, align 1, !tbaa !18
  store i8 %151, ptr %155, align 1, !tbaa !18
  %157 = or disjoint i64 %148, 1
  %158 = getelementptr inbounds i8, ptr %2, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !18
  %160 = trunc i64 %157 to i32
  %161 = sub i32 %46, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %2, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !18
  store i8 %164, ptr %158, align 1, !tbaa !18
  store i8 %159, ptr %163, align 1, !tbaa !18
  %165 = add nuw nsw i64 %148, 2
  %166 = add i64 %149, 2
  %167 = icmp eq i64 %166, %146
  br i1 %167, label %168, label %147, !llvm.loop !74

168:                                              ; preds = %147, %141
  %169 = phi i64 [ 0, %141 ], [ %165, %147 ]
  %170 = icmp eq i64 %143, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds i8, ptr %2, i64 %169
  %173 = load i8, ptr %172, align 1, !tbaa !18
  %174 = trunc i64 %169 to i32
  %175 = sub i32 %46, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %2, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !18
  store i8 %178, ptr %172, align 1, !tbaa !18
  store i8 %173, ptr %177, align 1, !tbaa !18
  br label %179

179:                                              ; preds = %171, %168, %132
  br i1 %93, label %180, label %218

180:                                              ; preds = %179
  %181 = zext nneg i32 %92 to i64
  %182 = and i64 %181, 1
  %183 = icmp eq i32 %92, 1
  br i1 %183, label %207, label %184

184:                                              ; preds = %180
  %185 = and i64 %181, 2147483646
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi i64 [ 0, %184 ], [ %204, %186 ]
  %188 = phi i64 [ 0, %184 ], [ %205, %186 ]
  %189 = getelementptr inbounds i8, ptr %4, i64 %187
  %190 = load i8, ptr %189, align 1, !tbaa !18
  %191 = trunc i64 %187 to i32
  %192 = sub i32 %90, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %4, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !18
  store i8 %195, ptr %189, align 1, !tbaa !18
  store i8 %190, ptr %194, align 1, !tbaa !18
  %196 = or disjoint i64 %187, 1
  %197 = getelementptr inbounds i8, ptr %4, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !18
  %199 = trunc i64 %196 to i32
  %200 = sub i32 %90, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %4, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !18
  store i8 %203, ptr %197, align 1, !tbaa !18
  store i8 %198, ptr %202, align 1, !tbaa !18
  %204 = add nuw nsw i64 %187, 2
  %205 = add i64 %188, 2
  %206 = icmp eq i64 %205, %185
  br i1 %206, label %207, label %186, !llvm.loop !74

207:                                              ; preds = %186, %180
  %208 = phi i64 [ 0, %180 ], [ %204, %186 ]
  %209 = icmp eq i64 %182, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds i8, ptr %4, i64 %208
  %212 = load i8, ptr %211, align 1, !tbaa !18
  %213 = trunc i64 %208 to i32
  %214 = sub i32 %90, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, ptr %4, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !18
  store i8 %217, ptr %211, align 1, !tbaa !18
  store i8 %212, ptr %216, align 1, !tbaa !18
  br label %218

218:                                              ; preds = %210, %207, %179
  call void @free(ptr noundef %133) #13
  %219 = icmp eq i32 %134, %136
  br i1 %219, label %220, label %225

220:                                              ; preds = %218
  %221 = sub nsw i32 %90, %138
  %222 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 5
  store i32 %221, ptr %222, align 4, !tbaa !78
  %223 = sub nsw i32 %46, %140
  %224 = getelementptr inbounds %struct.kswr_t, ptr %0, i64 0, i32 6
  store i32 %223, ptr %224, align 4, !tbaa !79
  br label %225

225:                                              ; preds = %218, %220, %34, %40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ksw_extend(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef writeonly %10, ptr noundef writeonly %11) local_unnamed_addr #7 {
  %13 = add nsw i32 %7, %6
  %14 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %15 = mul nsw i32 %4, %0
  %16 = sext i32 %15 to i64
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #11
  %18 = add i32 %0, 1
  %19 = sext i32 %18 to i64
  %20 = tail call noalias ptr @calloc(i64 noundef %19, i64 noundef 8) #14
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %12
  %23 = icmp sgt i32 %0, 0
  %24 = zext nneg i32 %4 to i64
  %25 = zext nneg i32 %4 to i64
  %26 = zext i32 %0 to i64
  %27 = and i64 %26, 3
  %28 = icmp ult i32 %0, 4
  %29 = and i64 %26, 2147483644
  %30 = getelementptr i8, ptr %17, i64 1
  %31 = getelementptr i8, ptr %17, i64 2
  %32 = getelementptr i8, ptr %17, i64 3
  %33 = icmp eq i64 %27, 0
  br label %34

34:                                               ; preds = %22, %97
  %35 = phi i64 [ 0, %22 ], [ %99, %97 ]
  %36 = phi i32 [ 0, %22 ], [ %98, %97 ]
  %37 = mul nsw i64 %35, %24
  %38 = getelementptr inbounds i8, ptr %5, i64 %37
  br i1 %23, label %39, label %97

39:                                               ; preds = %34
  %40 = sext i32 %36 to i64
  br i1 %28, label %76, label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %73, %41 ], [ 0, %39 ]
  %43 = phi i64 [ %71, %41 ], [ %40, %39 ]
  %44 = phi i64 [ %74, %41 ], [ 0, %39 ]
  %45 = getelementptr inbounds i8, ptr %1, i64 %42
  %46 = load i8, ptr %45, align 1, !tbaa !18
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i8, ptr %38, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !18
  %50 = getelementptr inbounds i8, ptr %17, i64 %43
  store i8 %49, ptr %50, align 1, !tbaa !18
  %51 = or disjoint i64 %42, 1
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !18
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i8, ptr %38, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !18
  %57 = getelementptr i8, ptr %30, i64 %43
  store i8 %56, ptr %57, align 1, !tbaa !18
  %58 = or disjoint i64 %42, 2
  %59 = getelementptr inbounds i8, ptr %1, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !18
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, ptr %38, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !18
  %64 = getelementptr i8, ptr %31, i64 %43
  store i8 %63, ptr %64, align 1, !tbaa !18
  %65 = or disjoint i64 %42, 3
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !18
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i8, ptr %38, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !18
  %71 = add nsw i64 %43, 4
  %72 = getelementptr i8, ptr %32, i64 %43
  store i8 %70, ptr %72, align 1, !tbaa !18
  %73 = add nuw nsw i64 %42, 4
  %74 = add i64 %44, 4
  %75 = icmp eq i64 %74, %29
  br i1 %75, label %76, label %41, !llvm.loop !80

76:                                               ; preds = %41, %39
  %77 = phi i64 [ undef, %39 ], [ %71, %41 ]
  %78 = phi i64 [ 0, %39 ], [ %73, %41 ]
  %79 = phi i64 [ %40, %39 ], [ %71, %41 ]
  br i1 %33, label %94, label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %91, %80 ], [ %78, %76 ]
  %82 = phi i64 [ %89, %80 ], [ %79, %76 ]
  %83 = phi i64 [ %92, %80 ], [ 0, %76 ]
  %84 = getelementptr inbounds i8, ptr %1, i64 %81
  %85 = load i8, ptr %84, align 1, !tbaa !18
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i8, ptr %38, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !18
  %89 = add nsw i64 %82, 1
  %90 = getelementptr inbounds i8, ptr %17, i64 %82
  store i8 %88, ptr %90, align 1, !tbaa !18
  %91 = add nuw nsw i64 %81, 1
  %92 = add i64 %83, 1
  %93 = icmp eq i64 %92, %27
  br i1 %93, label %94, label %80, !llvm.loop !81

94:                                               ; preds = %80, %76
  %95 = phi i64 [ %77, %76 ], [ %89, %80 ]
  %96 = trunc i64 %95 to i32
  br label %97

97:                                               ; preds = %94, %34
  %98 = phi i32 [ %36, %34 ], [ %96, %94 ]
  %99 = add nuw nsw i64 %35, 1
  %100 = icmp eq i64 %99, %25
  br i1 %100, label %101, label %34, !llvm.loop !82

101:                                              ; preds = %97, %12
  store i32 %14, ptr %20, align 4, !tbaa !83
  %102 = icmp sgt i32 %14, %13
  %103 = sub nsw i32 %14, %13
  %104 = select i1 %102, i32 %103, i32 0
  %105 = getelementptr inbounds %struct.eh_t, ptr %20, i64 1
  store i32 %104, ptr %105, align 4, !tbaa !83
  %106 = icmp slt i32 %0, 2
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = zext i32 %18 to i64
  br label %109

109:                                              ; preds = %107, %115
  %110 = phi i64 [ 2, %107 ], [ %117, %115 ]
  %111 = getelementptr %struct.eh_t, ptr %20, i64 %110
  %112 = getelementptr %struct.eh_t, ptr %111, i64 -1
  %113 = load i32, ptr %112, align 4, !tbaa !83
  %114 = icmp sgt i32 %113, %7
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = sub nsw i32 %113, %7
  store i32 %116, ptr %111, align 4, !tbaa !83
  %117 = add nuw nsw i64 %110, 1
  %118 = icmp eq i64 %117, %108
  br i1 %118, label %119, label %109, !llvm.loop !85

119:                                              ; preds = %109, %115, %101
  %120 = icmp eq i32 %4, 0
  br i1 %120, label %158, label %121

121:                                              ; preds = %119
  %122 = mul i32 %4, %4
  %123 = tail call i32 @llvm.umax.i32(i32 %122, i32 1)
  %124 = zext i32 %123 to i64
  %125 = icmp ult i32 %122, 8
  br i1 %125, label %146, label %126

126:                                              ; preds = %121
  %127 = and i64 %124, 4294967288
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %140, %128 ]
  %130 = phi <4 x i32> [ zeroinitializer, %126 ], [ %138, %128 ]
  %131 = phi <4 x i32> [ zeroinitializer, %126 ], [ %139, %128 ]
  %132 = getelementptr inbounds i8, ptr %5, i64 %129
  %133 = getelementptr inbounds i8, ptr %132, i64 4
  %134 = load <4 x i8>, ptr %132, align 1, !tbaa !18
  %135 = load <4 x i8>, ptr %133, align 1, !tbaa !18
  %136 = sext <4 x i8> %134 to <4 x i32>
  %137 = sext <4 x i8> %135 to <4 x i32>
  %138 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %130, <4 x i32> %136)
  %139 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %131, <4 x i32> %137)
  %140 = add nuw i64 %129, 8
  %141 = icmp eq i64 %140, %127
  br i1 %141, label %142, label %128, !llvm.loop !86

142:                                              ; preds = %128
  %143 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %138, <4 x i32> %139)
  %144 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %143)
  %145 = icmp eq i64 %127, %124
  br i1 %145, label %158, label %146

146:                                              ; preds = %121, %142
  %147 = phi i64 [ 0, %121 ], [ %127, %142 ]
  %148 = phi i32 [ 0, %121 ], [ %144, %142 ]
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi i64 [ %156, %149 ], [ %147, %146 ]
  %151 = phi i32 [ %155, %149 ], [ %148, %146 ]
  %152 = getelementptr inbounds i8, ptr %5, i64 %150
  %153 = load i8, ptr %152, align 1, !tbaa !18
  %154 = sext i8 %153 to i32
  %155 = tail call i32 @llvm.smax.i32(i32 %151, i32 %154)
  %156 = add nuw nsw i64 %150, 1
  %157 = icmp eq i64 %156, %124
  br i1 %157, label %158, label %149, !llvm.loop !87

158:                                              ; preds = %149, %142, %119
  %159 = phi i32 [ 0, %119 ], [ %144, %142 ], [ %155, %149 ]
  %160 = icmp sgt i32 %2, 0
  br i1 %160, label %161, label %286, !prof !39

161:                                              ; preds = %158
  %162 = mul nsw i32 %159, %0
  %163 = sub nsw i32 %162, %6
  %164 = sitofp i32 %163 to double
  %165 = sitofp i32 %7 to double
  %166 = fdiv double %164, %165
  %167 = fadd double %166, 1.000000e+00
  %168 = fptosi double %167 to i32
  %169 = tail call i32 @llvm.smax.i32(i32 %168, i32 1)
  %170 = tail call i32 @llvm.smin.i32(i32 %169, i32 %8)
  %171 = sub i32 %14, %6
  %172 = add i32 %170, 1
  %173 = sub i32 0, %170
  %174 = zext nneg i32 %2 to i64
  br label %175

175:                                              ; preds = %161, %276
  %176 = phi i64 [ 0, %161 ], [ %190, %276 ]
  %177 = phi i32 [ %173, %161 ], [ %278, %276 ]
  %178 = phi i32 [ 0, %161 ], [ %260, %276 ]
  %179 = phi i32 [ -1, %161 ], [ %242, %276 ]
  %180 = phi i32 [ -1, %161 ], [ %241, %276 ]
  %181 = phi i32 [ %14, %161 ], [ %240, %276 ]
  %182 = phi i32 [ %0, %161 ], [ %277, %276 ]
  %183 = getelementptr inbounds i8, ptr %3, i64 %176
  %184 = load i8, ptr %183, align 1, !tbaa !18
  %185 = zext i8 %184 to i32
  %186 = mul nsw i32 %185, %0
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %17, i64 %187
  %189 = trunc i64 %176 to i32
  %190 = add nuw nsw i64 %176, 1
  %191 = trunc i64 %176 to i32
  %192 = sub i32 %191, %170
  %193 = tail call i32 @llvm.smax.i32(i32 %178, i32 %192)
  %194 = add i32 %172, %189
  %195 = tail call i32 @llvm.smin.i32(i32 %182, i32 %194)
  %196 = tail call i32 @llvm.smin.i32(i32 %195, i32 %0)
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %280, !prof !39

198:                                              ; preds = %175
  %199 = xor i32 %189, -1
  %200 = mul i32 %199, %7
  %201 = add i32 %171, %200
  %202 = tail call i32 @llvm.smax.i32(i32 %201, i32 0)
  %203 = tail call i32 @llvm.smax.i32(i32 %178, i32 %177)
  %204 = sext i32 %203 to i64
  %205 = sext i32 %196 to i64
  br label %206

206:                                              ; preds = %198, %206
  %207 = phi i64 [ %204, %198 ], [ %232, %206 ]
  %208 = phi i32 [ -1, %198 ], [ %224, %206 ]
  %209 = phi i32 [ 0, %198 ], [ %225, %206 ]
  %210 = phi i32 [ %202, %198 ], [ %221, %206 ]
  %211 = phi i32 [ 0, %198 ], [ %231, %206 ]
  %212 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %207
  %213 = load i32, ptr %212, align 4, !tbaa !83
  %214 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %207, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !88
  store i32 %210, ptr %212, align 4, !tbaa !83
  %216 = getelementptr inbounds i8, ptr %188, i64 %207
  %217 = load i8, ptr %216, align 1, !tbaa !18
  %218 = sext i8 %217 to i32
  %219 = add nsw i32 %213, %218
  %220 = tail call i32 @llvm.smax.i32(i32 %219, i32 %215)
  %221 = tail call i32 @llvm.smax.i32(i32 %220, i32 %211)
  %222 = icmp sgt i32 %209, %221
  %223 = trunc i64 %207 to i32
  %224 = select i1 %222, i32 %208, i32 %223
  %225 = tail call i32 @llvm.smax.i32(i32 %209, i32 %221)
  %226 = sub nsw i32 %221, %13
  %227 = tail call i32 @llvm.smax.i32(i32 %226, i32 0)
  %228 = sub nsw i32 %215, %7
  %229 = tail call i32 @llvm.smax.i32(i32 %228, i32 %227)
  store i32 %229, ptr %214, align 4, !tbaa !88
  %230 = sub nsw i32 %211, %7
  %231 = tail call i32 @llvm.smax.i32(i32 %230, i32 %227)
  %232 = add nsw i64 %207, 1
  %233 = icmp slt i64 %232, %205
  br i1 %233, label %206, label %234, !prof !89, !llvm.loop !90

234:                                              ; preds = %206
  %235 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %205
  store i32 %221, ptr %235, align 4, !tbaa !83
  %236 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %205, i32 1
  store i32 0, ptr %236, align 4, !tbaa !88
  %237 = icmp eq i32 %225, 0
  br i1 %237, label %280, label %238

238:                                              ; preds = %234
  %239 = icmp ugt i32 %225, %181
  %240 = tail call i32 @llvm.smax.i32(i32 %225, i32 %181)
  %241 = select i1 %239, i32 %189, i32 %180
  %242 = select i1 %239, i32 %224, i32 %179
  %243 = icmp slt i32 %224, %193
  br i1 %243, label %258, label %244

244:                                              ; preds = %238
  %245 = sext i32 %224 to i64
  %246 = sext i32 %193 to i64
  br label %247

247:                                              ; preds = %244, %252
  %248 = phi i64 [ %245, %244 ], [ %253, %252 ]
  %249 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !83
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %247
  %253 = add nsw i64 %248, -1
  %254 = icmp sgt i64 %248, %246
  br i1 %254, label %247, label %255, !llvm.loop !91

255:                                              ; preds = %252, %247
  %256 = phi i64 [ %248, %247 ], [ %253, %252 ]
  %257 = trunc i64 %256 to i32
  br label %258

258:                                              ; preds = %255, %238
  %259 = phi i32 [ %224, %238 ], [ %257, %255 ]
  %260 = add nsw i32 %259, 1
  %261 = add nsw i32 %224, 2
  %262 = icmp sgt i32 %261, %196
  br i1 %262, label %276, label %263

263:                                              ; preds = %258
  %264 = sext i32 %261 to i64
  br label %265

265:                                              ; preds = %263, %270
  %266 = phi i64 [ %264, %263 ], [ %271, %270 ]
  %267 = getelementptr inbounds %struct.eh_t, ptr %20, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !83
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = add nsw i64 %266, 1
  %272 = icmp slt i64 %266, %205
  br i1 %272, label %265, label %273, !llvm.loop !92

273:                                              ; preds = %265, %270
  %274 = phi i64 [ %271, %270 ], [ %266, %265 ]
  %275 = trunc i64 %274 to i32
  br label %276

276:                                              ; preds = %273, %258
  %277 = phi i32 [ %261, %258 ], [ %275, %273 ]
  %278 = add i32 %177, 1
  %279 = icmp eq i64 %190, %174
  br i1 %279, label %280, label %175, !prof !40, !llvm.loop !93

280:                                              ; preds = %234, %276, %175
  %281 = phi i32 [ %181, %175 ], [ %181, %234 ], [ %240, %276 ]
  %282 = phi i32 [ %180, %175 ], [ %180, %234 ], [ %241, %276 ]
  %283 = phi i32 [ %179, %175 ], [ %179, %234 ], [ %242, %276 ]
  %284 = add nsw i32 %283, 1
  %285 = add nsw i32 %282, 1
  br label %286

286:                                              ; preds = %280, %158
  %287 = phi i32 [ %14, %158 ], [ %281, %280 ]
  %288 = phi i32 [ 0, %158 ], [ %285, %280 ]
  %289 = phi i32 [ 0, %158 ], [ %284, %280 ]
  tail call void @free(ptr noundef %20) #13
  tail call void @free(ptr noundef %17) #13
  %290 = icmp eq ptr %10, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %286
  store i32 %289, ptr %10, align 4, !tbaa !37
  br label %292

292:                                              ; preds = %291, %286
  %293 = icmp eq ptr %11, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %292
  store i32 %288, ptr %11, align 4, !tbaa !37
  br label %295

295:                                              ; preds = %294, %292
  ret i32 %287
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ksw_global(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef writeonly %9, ptr noundef writeonly %10) local_unnamed_addr #7 {
  %12 = icmp ne ptr %9, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i32 0, ptr %9, align 4, !tbaa !37
  br label %14

14:                                               ; preds = %13, %11
  %15 = shl nsw i32 %8, 1
  %16 = or disjoint i32 %15, 1
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %0)
  %18 = mul nsw i32 %17, %2
  %19 = sext i32 %18 to i64
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #11
  %21 = mul nsw i32 %4, %0
  %22 = sext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #11
  %24 = add nsw i32 %0, 1
  %25 = sext i32 %24 to i64
  %26 = tail call noalias ptr @calloc(i64 noundef %25, i64 noundef 8) #14
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %14
  %29 = icmp sgt i32 %0, 0
  %30 = zext nneg i32 %4 to i64
  %31 = zext nneg i32 %4 to i64
  %32 = zext i32 %0 to i64
  %33 = and i64 %32, 3
  %34 = icmp ult i32 %0, 4
  %35 = and i64 %32, 2147483644
  %36 = getelementptr i8, ptr %23, i64 1
  %37 = getelementptr i8, ptr %23, i64 2
  %38 = getelementptr i8, ptr %23, i64 3
  %39 = icmp eq i64 %33, 0
  br label %40

40:                                               ; preds = %28, %103
  %41 = phi i64 [ 0, %28 ], [ %105, %103 ]
  %42 = phi i32 [ 0, %28 ], [ %104, %103 ]
  %43 = mul nsw i64 %41, %30
  %44 = getelementptr inbounds i8, ptr %5, i64 %43
  br i1 %29, label %45, label %103

45:                                               ; preds = %40
  %46 = sext i32 %42 to i64
  br i1 %34, label %82, label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %79, %47 ], [ 0, %45 ]
  %49 = phi i64 [ %77, %47 ], [ %46, %45 ]
  %50 = phi i64 [ %80, %47 ], [ 0, %45 ]
  %51 = getelementptr inbounds i8, ptr %1, i64 %48
  %52 = load i8, ptr %51, align 1, !tbaa !18
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, ptr %44, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !18
  %56 = getelementptr inbounds i8, ptr %23, i64 %49
  store i8 %55, ptr %56, align 1, !tbaa !18
  %57 = or disjoint i64 %48, 1
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !18
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i8, ptr %44, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !18
  %63 = getelementptr i8, ptr %36, i64 %49
  store i8 %62, ptr %63, align 1, !tbaa !18
  %64 = or disjoint i64 %48, 2
  %65 = getelementptr inbounds i8, ptr %1, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !18
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i8, ptr %44, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !18
  %70 = getelementptr i8, ptr %37, i64 %49
  store i8 %69, ptr %70, align 1, !tbaa !18
  %71 = or disjoint i64 %48, 3
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !18
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i8, ptr %44, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !18
  %77 = add nsw i64 %49, 4
  %78 = getelementptr i8, ptr %38, i64 %49
  store i8 %76, ptr %78, align 1, !tbaa !18
  %79 = add nuw nsw i64 %48, 4
  %80 = add i64 %50, 4
  %81 = icmp eq i64 %80, %35
  br i1 %81, label %82, label %47, !llvm.loop !94

82:                                               ; preds = %47, %45
  %83 = phi i64 [ undef, %45 ], [ %77, %47 ]
  %84 = phi i64 [ 0, %45 ], [ %79, %47 ]
  %85 = phi i64 [ %46, %45 ], [ %77, %47 ]
  br i1 %39, label %100, label %86

86:                                               ; preds = %82, %86
  %87 = phi i64 [ %97, %86 ], [ %84, %82 ]
  %88 = phi i64 [ %95, %86 ], [ %85, %82 ]
  %89 = phi i64 [ %98, %86 ], [ 0, %82 ]
  %90 = getelementptr inbounds i8, ptr %1, i64 %87
  %91 = load i8, ptr %90, align 1, !tbaa !18
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i8, ptr %44, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !18
  %95 = add nsw i64 %88, 1
  %96 = getelementptr inbounds i8, ptr %23, i64 %88
  store i8 %94, ptr %96, align 1, !tbaa !18
  %97 = add nuw nsw i64 %87, 1
  %98 = add i64 %89, 1
  %99 = icmp eq i64 %98, %33
  br i1 %99, label %100, label %86, !llvm.loop !95

100:                                              ; preds = %86, %82
  %101 = phi i64 [ %83, %82 ], [ %95, %86 ]
  %102 = trunc i64 %101 to i32
  br label %103

103:                                              ; preds = %100, %40
  %104 = phi i32 [ %42, %40 ], [ %102, %100 ]
  %105 = add nuw nsw i64 %41, 1
  %106 = icmp eq i64 %105, %31
  br i1 %106, label %107, label %40, !llvm.loop !96

107:                                              ; preds = %103, %14
  %108 = getelementptr inbounds %struct.eh_t, ptr %26, i64 0, i32 1
  store i32 -1073741824, ptr %108, align 4, !tbaa !88
  %109 = tail call i32 @llvm.smin.i32(i32 %0, i32 %8)
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %107
  %112 = add nuw i32 %109, 1
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %113, -1
  %115 = icmp ult i32 %109, 4
  br i1 %115, label %143, label %116

116:                                              ; preds = %111
  %117 = and i64 %114, -4
  %118 = or disjoint i64 %117, 1
  %119 = insertelement <2 x i32> poison, i32 %7, i64 0
  %120 = shufflevector <2 x i32> %119, <2 x i32> poison, <2 x i32> zeroinitializer
  %121 = insertelement <2 x i32> poison, i32 %6, i64 0
  %122 = shufflevector <2 x i32> %121, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %123

123:                                              ; preds = %123, %116
  %124 = phi i64 [ 0, %116 ], [ %138, %123 ]
  %125 = phi <2 x i32> [ <i32 1, i32 2>, %116 ], [ %139, %123 ]
  %126 = sub <2 x i32> <i32 -2, i32 -2>, %125
  %127 = or disjoint i64 %124, 1
  %128 = or disjoint i64 %124, 3
  %129 = mul <2 x i32> %125, %120
  %130 = mul <2 x i32> %126, %120
  %131 = add <2 x i32> %129, %122
  %132 = sub <2 x i32> %130, %122
  %133 = sub <2 x i32> zeroinitializer, %131
  %134 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %127
  %135 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %128
  %136 = shufflevector <2 x i32> %133, <2 x i32> <i32 -1073741824, i32 -1073741824>, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %136, ptr %134, align 4, !tbaa !37
  %137 = shufflevector <2 x i32> %132, <2 x i32> <i32 -1073741824, i32 -1073741824>, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %137, ptr %135, align 4, !tbaa !37
  %138 = add nuw i64 %124, 4
  %139 = add <2 x i32> %125, <i32 4, i32 4>
  %140 = icmp eq i64 %138, %117
  br i1 %140, label %141, label %123, !llvm.loop !97

141:                                              ; preds = %123
  %142 = icmp eq i64 %114, %117
  br i1 %142, label %145, label %143

143:                                              ; preds = %111, %141
  %144 = phi i64 [ 1, %111 ], [ %118, %141 ]
  br label %171

145:                                              ; preds = %171, %141, %107
  %146 = phi i32 [ 1, %107 ], [ %112, %141 ], [ %112, %171 ]
  %147 = icmp sgt i32 %146, %0
  br i1 %147, label %181, label %148

148:                                              ; preds = %145
  %149 = zext i32 %146 to i64
  %150 = tail call i32 @llvm.smax.i32(i32 %109, i32 0)
  %151 = xor i32 %150, -1
  %152 = add i32 %151, %0
  %153 = zext i32 %152 to i64
  %154 = add nuw nsw i64 %153, 1
  %155 = icmp ult i32 %152, 3
  br i1 %155, label %169, label %156

156:                                              ; preds = %148
  %157 = and i64 %154, 8589934588
  %158 = add nuw nsw i64 %157, %149
  %159 = getelementptr %struct.eh_t, ptr %26, i64 2
  br label %160

160:                                              ; preds = %160, %156
  %161 = phi i64 [ 0, %156 ], [ %165, %160 ]
  %162 = add i64 %161, %149
  %163 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %162
  %164 = getelementptr %struct.eh_t, ptr %159, i64 %162
  store <4 x i32> <i32 -1073741824, i32 -1073741824, i32 -1073741824, i32 -1073741824>, ptr %163, align 4, !tbaa !37
  store <4 x i32> <i32 -1073741824, i32 -1073741824, i32 -1073741824, i32 -1073741824>, ptr %164, align 4, !tbaa !37
  %165 = add nuw i64 %161, 4
  %166 = icmp eq i64 %165, %157
  br i1 %166, label %167, label %160, !llvm.loop !98

167:                                              ; preds = %160
  %168 = icmp eq i64 %154, %157
  br i1 %168, label %181, label %169

169:                                              ; preds = %148, %167
  %170 = phi i64 [ %149, %148 ], [ %158, %167 ]
  br label %189

171:                                              ; preds = %143, %171
  %172 = phi i64 [ %179, %171 ], [ %144, %143 ]
  %173 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %172
  %174 = trunc i64 %172 to i32
  %175 = mul i32 %174, %7
  %176 = add i32 %175, %6
  %177 = sub i32 0, %176
  store i32 %177, ptr %173, align 4, !tbaa !83
  %178 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %172, i32 1
  store i32 -1073741824, ptr %178, align 4, !tbaa !88
  %179 = add nuw nsw i64 %172, 1
  %180 = icmp eq i64 %179, %113
  br i1 %180, label %145, label %171, !llvm.loop !99

181:                                              ; preds = %189, %167, %145
  %182 = icmp sgt i32 %2, 0
  br i1 %182, label %183, label %268, !prof !39

183:                                              ; preds = %181
  %184 = add i32 %8, 1
  %185 = add i32 %7, %6
  %186 = sext i32 %17 to i64
  %187 = sext i32 %8 to i64
  %188 = zext nneg i32 %2 to i64
  br label %196

189:                                              ; preds = %169, %189
  %190 = phi i64 [ %193, %189 ], [ %170, %169 ]
  %191 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %190
  %192 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %190, i32 1
  store i32 -1073741824, ptr %192, align 4, !tbaa !88
  store i32 -1073741824, ptr %191, align 4, !tbaa !83
  %193 = add nuw nsw i64 %190, 1
  %194 = trunc i64 %190 to i32
  %195 = icmp slt i32 %194, %0
  br i1 %195, label %189, label %181, !llvm.loop !100

196:                                              ; preds = %183, %261
  %197 = phi i64 [ 0, %183 ], [ %266, %261 ]
  %198 = trunc i64 %197 to i32
  %199 = getelementptr inbounds i8, ptr %3, i64 %197
  %200 = load i8, ptr %199, align 1, !tbaa !18
  %201 = zext i8 %200 to i32
  %202 = mul nsw i32 %201, %0
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %23, i64 %203
  %205 = mul nsw i64 %197, %186
  %206 = getelementptr inbounds i8, ptr %20, i64 %205
  %207 = icmp sgt i64 %197, %187
  %208 = trunc i64 %197 to i32
  %209 = sub i32 %208, %8
  %210 = select i1 %207, i32 %209, i32 0
  %211 = add i32 %184, %198
  %212 = tail call i32 @llvm.smin.i32(i32 %211, i32 %0)
  %213 = icmp eq i32 %210, 0
  %214 = trunc i64 %197 to i32
  %215 = xor i32 %214, -1
  %216 = mul i32 %215, %7
  %217 = sub i32 %216, %6
  %218 = select i1 %213, i32 %217, i32 -1073741824
  %219 = icmp slt i32 %210, %212
  br i1 %219, label %222, label %220, !prof !39

220:                                              ; preds = %196
  %221 = sext i32 %212 to i64
  br label %261

222:                                              ; preds = %196
  %223 = tail call i32 @llvm.smax.i32(i32 %8, i32 %198)
  %224 = sub i32 %223, %8
  %225 = sext i32 %224 to i64
  %226 = sext i32 %210 to i64
  %227 = sext i32 %212 to i64
  br label %228

228:                                              ; preds = %222, %228
  %229 = phi i64 [ %225, %222 ], [ %259, %228 ]
  %230 = phi i32 [ -1073741824, %222 ], [ %256, %228 ]
  %231 = phi i32 [ %218, %222 ], [ %244, %228 ]
  %232 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %229
  %233 = load i32, ptr %232, align 4, !tbaa !83
  %234 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %229, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !88
  store i32 %231, ptr %232, align 4, !tbaa !83
  %236 = getelementptr inbounds i8, ptr %204, i64 %229
  %237 = load i8, ptr %236, align 1, !tbaa !18
  %238 = sext i8 %237 to i32
  %239 = add nsw i32 %233, %238
  %240 = icmp sle i32 %239, %235
  %241 = tail call i32 @llvm.smax.i32(i32 %239, i32 %235)
  %242 = icmp sgt i32 %241, %230
  %243 = zext i1 %240 to i8
  %244 = tail call i32 @llvm.smax.i32(i32 %241, i32 %230)
  %245 = sub i32 %244, %185
  %246 = sub nsw i32 %235, %7
  %247 = icmp sgt i32 %246, %245
  %248 = select i1 %247, i8 4, i8 0
  %249 = select i1 %242, i8 %243, i8 2
  %250 = or disjoint i8 %248, %249
  %251 = tail call i32 @llvm.smax.i32(i32 %246, i32 %245)
  store i32 %251, ptr %234, align 4, !tbaa !88
  %252 = sub nsw i32 %230, %7
  %253 = icmp sgt i32 %252, %245
  %254 = select i1 %253, i8 32, i8 0
  %255 = or disjoint i8 %250, %254
  %256 = tail call i32 @llvm.smax.i32(i32 %252, i32 %245)
  %257 = sub nsw i64 %229, %226
  %258 = getelementptr inbounds i8, ptr %206, i64 %257
  store i8 %255, ptr %258, align 1, !tbaa !18
  %259 = add nsw i64 %229, 1
  %260 = icmp slt i64 %259, %227
  br i1 %260, label %228, label %261, !prof !89, !llvm.loop !101

261:                                              ; preds = %228, %220
  %262 = phi i64 [ %221, %220 ], [ %227, %228 ]
  %263 = phi i32 [ %218, %220 ], [ %244, %228 ]
  %264 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %262
  store i32 %263, ptr %264, align 4, !tbaa !83
  %265 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %262, i32 1
  store i32 -1073741824, ptr %265, align 4, !tbaa !88
  %266 = add nuw nsw i64 %197, 1
  %267 = icmp eq i64 %266, %188
  br i1 %267, label %268, label %196, !prof !40, !llvm.loop !102

268:                                              ; preds = %261, %181
  %269 = sext i32 %0 to i64
  %270 = getelementptr inbounds %struct.eh_t, ptr %26, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !83
  %272 = icmp ne ptr %10, null
  %273 = and i1 %12, %272
  br i1 %273, label %274, label %531

274:                                              ; preds = %268
  %275 = add i32 %8, %2
  %276 = tail call i32 @llvm.smin.i32(i32 %275, i32 %0)
  %277 = icmp sgt i32 %276, 0
  %278 = and i1 %182, %277
  br i1 %278, label %279, label %403

279:                                              ; preds = %274
  %280 = add nsw i32 %276, -1
  %281 = add nsw i32 %2, -1
  br label %282

282:                                              ; preds = %279, %391
  %283 = phi i32 [ %396, %391 ], [ %281, %279 ]
  %284 = phi ptr [ %395, %391 ], [ null, %279 ]
  %285 = phi i32 [ %301, %391 ], [ 0, %279 ]
  %286 = phi i32 [ %394, %391 ], [ %280, %279 ]
  %287 = phi i32 [ %393, %391 ], [ 0, %279 ]
  %288 = phi i32 [ %392, %391 ], [ 0, %279 ]
  %289 = mul nsw i32 %283, %17
  %290 = icmp sgt i32 %283, %8
  %291 = sub i32 %8, %283
  %292 = select i1 %290, i32 %291, i32 0
  %293 = add i32 %289, %286
  %294 = add i32 %293, %292
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %20, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !18
  %298 = zext i8 %297 to i32
  %299 = shl nuw nsw i32 %285, 1
  %300 = lshr i32 %298, %299
  %301 = and i32 %300, 3
  %302 = icmp eq i32 %288, 0
  switch i32 %301, label %362 [
    i32 0, label %303
    i32 1, label %333
  ]

303:                                              ; preds = %282
  br i1 %302, label %311, label %304

304:                                              ; preds = %303
  %305 = sext i32 %288 to i64
  %306 = getelementptr i32, ptr %284, i64 %305
  %307 = getelementptr i32, ptr %306, i64 -1
  %308 = load i32, ptr %307, align 4, !tbaa !37
  %309 = and i32 %308, 15
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %325, label %311

311:                                              ; preds = %304, %303
  %312 = icmp eq i32 %288, %287
  br i1 %312, label %313, label %319

313:                                              ; preds = %311
  %314 = shl i32 %287, 1
  %315 = select i1 %302, i32 4, i32 %314
  %316 = shl i32 %315, 2
  %317 = sext i32 %316 to i64
  %318 = tail call ptr @realloc(ptr noundef %284, i64 noundef %317) #12
  br label %319

319:                                              ; preds = %313, %311
  %320 = phi i32 [ %315, %313 ], [ %287, %311 ]
  %321 = phi ptr [ %318, %313 ], [ %284, %311 ]
  %322 = add nsw i32 %288, 1
  %323 = sext i32 %288 to i64
  %324 = getelementptr inbounds i32, ptr %321, i64 %323
  store i32 16, ptr %324, align 4, !tbaa !37
  br label %327

325:                                              ; preds = %304
  %326 = add i32 %308, 16
  store i32 %326, ptr %307, align 4, !tbaa !37
  br label %327

327:                                              ; preds = %319, %325
  %328 = phi i32 [ %322, %319 ], [ %288, %325 ]
  %329 = phi i32 [ %320, %319 ], [ %287, %325 ]
  %330 = phi ptr [ %321, %319 ], [ %284, %325 ]
  %331 = add nsw i32 %283, -1
  %332 = add nsw i32 %286, -1
  br label %391

333:                                              ; preds = %282
  br i1 %302, label %341, label %334

334:                                              ; preds = %333
  %335 = sext i32 %288 to i64
  %336 = getelementptr i32, ptr %284, i64 %335
  %337 = getelementptr i32, ptr %336, i64 -1
  %338 = load i32, ptr %337, align 4, !tbaa !37
  %339 = and i32 %338, 15
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %355, label %341

341:                                              ; preds = %334, %333
  %342 = icmp eq i32 %288, %287
  br i1 %342, label %343, label %349

343:                                              ; preds = %341
  %344 = shl i32 %287, 1
  %345 = select i1 %302, i32 4, i32 %344
  %346 = shl i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = tail call ptr @realloc(ptr noundef %284, i64 noundef %347) #12
  br label %349

349:                                              ; preds = %343, %341
  %350 = phi i32 [ %345, %343 ], [ %287, %341 ]
  %351 = phi ptr [ %348, %343 ], [ %284, %341 ]
  %352 = add nsw i32 %288, 1
  %353 = sext i32 %288 to i64
  %354 = getelementptr inbounds i32, ptr %351, i64 %353
  store i32 18, ptr %354, align 4, !tbaa !37
  br label %357

355:                                              ; preds = %334
  %356 = add i32 %338, 16
  store i32 %356, ptr %337, align 4, !tbaa !37
  br label %357

357:                                              ; preds = %349, %355
  %358 = phi i32 [ %352, %349 ], [ %288, %355 ]
  %359 = phi i32 [ %350, %349 ], [ %287, %355 ]
  %360 = phi ptr [ %351, %349 ], [ %284, %355 ]
  %361 = add nsw i32 %283, -1
  br label %391

362:                                              ; preds = %282
  br i1 %302, label %370, label %363

363:                                              ; preds = %362
  %364 = sext i32 %288 to i64
  %365 = getelementptr i32, ptr %284, i64 %364
  %366 = getelementptr i32, ptr %365, i64 -1
  %367 = load i32, ptr %366, align 4, !tbaa !37
  %368 = and i32 %367, 15
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %384, label %370

370:                                              ; preds = %363, %362
  %371 = icmp eq i32 %288, %287
  br i1 %371, label %372, label %378

372:                                              ; preds = %370
  %373 = shl i32 %287, 1
  %374 = select i1 %302, i32 4, i32 %373
  %375 = shl i32 %374, 2
  %376 = sext i32 %375 to i64
  %377 = tail call ptr @realloc(ptr noundef %284, i64 noundef %376) #12
  br label %378

378:                                              ; preds = %372, %370
  %379 = phi i32 [ %374, %372 ], [ %287, %370 ]
  %380 = phi ptr [ %377, %372 ], [ %284, %370 ]
  %381 = add nsw i32 %288, 1
  %382 = sext i32 %288 to i64
  %383 = getelementptr inbounds i32, ptr %380, i64 %382
  store i32 17, ptr %383, align 4, !tbaa !37
  br label %386

384:                                              ; preds = %363
  %385 = add i32 %367, 16
  store i32 %385, ptr %366, align 4, !tbaa !37
  br label %386

386:                                              ; preds = %378, %384
  %387 = phi i32 [ %381, %378 ], [ %288, %384 ]
  %388 = phi i32 [ %379, %378 ], [ %287, %384 ]
  %389 = phi ptr [ %380, %378 ], [ %284, %384 ]
  %390 = add nsw i32 %286, -1
  br label %391

391:                                              ; preds = %357, %386, %327
  %392 = phi i32 [ %387, %386 ], [ %358, %357 ], [ %328, %327 ]
  %393 = phi i32 [ %388, %386 ], [ %359, %357 ], [ %329, %327 ]
  %394 = phi i32 [ %390, %386 ], [ %286, %357 ], [ %332, %327 ]
  %395 = phi ptr [ %389, %386 ], [ %360, %357 ], [ %330, %327 ]
  %396 = phi i32 [ %283, %386 ], [ %361, %357 ], [ %331, %327 ]
  %397 = icmp sgt i32 %396, -1
  %398 = icmp sgt i32 %394, -1
  %399 = select i1 %397, i1 %398, i1 false
  br i1 %399, label %282, label %400, !llvm.loop !103

400:                                              ; preds = %391
  %401 = add nuw nsw i32 %396, 1
  %402 = add nuw nsw i32 %394, 1
  br i1 %397, label %404, label %439

403:                                              ; preds = %274
  br i1 %182, label %413, label %439

404:                                              ; preds = %400
  %405 = icmp eq i32 %392, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %404
  %407 = sext i32 %392 to i64
  %408 = getelementptr i32, ptr %395, i64 %407
  %409 = getelementptr i32, ptr %408, i64 -1
  %410 = load i32, ptr %409, align 4, !tbaa !37
  %411 = and i32 %410, 15
  %412 = icmp eq i32 %411, 2
  br i1 %412, label %436, label %413

413:                                              ; preds = %403, %406, %404
  %414 = phi i1 [ false, %406 ], [ true, %404 ], [ true, %403 ]
  %415 = phi i32 [ %392, %406 ], [ 0, %404 ], [ 0, %403 ]
  %416 = phi i32 [ %393, %406 ], [ %393, %404 ], [ 0, %403 ]
  %417 = phi i32 [ %402, %406 ], [ %402, %404 ], [ %276, %403 ]
  %418 = phi ptr [ %395, %406 ], [ %395, %404 ], [ null, %403 ]
  %419 = phi i32 [ %401, %406 ], [ %401, %404 ], [ %2, %403 ]
  %420 = phi i1 [ %398, %406 ], [ %398, %404 ], [ %277, %403 ]
  %421 = icmp eq i32 %415, %416
  br i1 %421, label %422, label %428

422:                                              ; preds = %413
  %423 = shl i32 %415, 1
  %424 = select i1 %414, i32 4, i32 %423
  %425 = shl i32 %424, 2
  %426 = sext i32 %425 to i64
  %427 = tail call ptr @realloc(ptr noundef %418, i64 noundef %426) #12
  br label %428

428:                                              ; preds = %422, %413
  %429 = phi i32 [ %424, %422 ], [ %416, %413 ]
  %430 = phi ptr [ %427, %422 ], [ %418, %413 ]
  %431 = shl i32 %419, 4
  %432 = or disjoint i32 %431, 2
  %433 = add nsw i32 %415, 1
  %434 = sext i32 %415 to i64
  %435 = getelementptr inbounds i32, ptr %430, i64 %434
  store i32 %432, ptr %435, align 4, !tbaa !37
  br i1 %420, label %445, label %484

436:                                              ; preds = %406
  %437 = shl i32 %401, 4
  %438 = add i32 %410, %437
  store i32 %438, ptr %409, align 4, !tbaa !37
  br i1 %398, label %451, label %484

439:                                              ; preds = %400, %403
  %440 = phi i1 [ %277, %403 ], [ %398, %400 ]
  %441 = phi i32 [ %276, %403 ], [ %402, %400 ]
  %442 = phi i32 [ 0, %403 ], [ %392, %400 ]
  %443 = phi i32 [ 0, %403 ], [ %393, %400 ]
  %444 = phi ptr [ null, %403 ], [ %395, %400 ]
  br i1 %440, label %445, label %484

445:                                              ; preds = %428, %439
  %446 = phi ptr [ %430, %428 ], [ %444, %439 ]
  %447 = phi i32 [ %429, %428 ], [ %443, %439 ]
  %448 = phi i32 [ %433, %428 ], [ %442, %439 ]
  %449 = phi i32 [ %417, %428 ], [ %441, %439 ]
  %450 = icmp eq i32 %448, 0
  br i1 %450, label %462, label %451

451:                                              ; preds = %436, %445
  %452 = phi i32 [ %449, %445 ], [ %402, %436 ]
  %453 = phi i32 [ %448, %445 ], [ %392, %436 ]
  %454 = phi i32 [ %447, %445 ], [ %393, %436 ]
  %455 = phi ptr [ %446, %445 ], [ %395, %436 ]
  %456 = sext i32 %453 to i64
  %457 = getelementptr i32, ptr %455, i64 %456
  %458 = getelementptr i32, ptr %457, i64 -1
  %459 = load i32, ptr %458, align 4, !tbaa !37
  %460 = and i32 %459, 15
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %481, label %462

462:                                              ; preds = %451, %445
  %463 = phi i1 [ false, %451 ], [ true, %445 ]
  %464 = phi i32 [ %452, %451 ], [ %449, %445 ]
  %465 = phi i32 [ %453, %451 ], [ 0, %445 ]
  %466 = phi i32 [ %454, %451 ], [ %447, %445 ]
  %467 = phi ptr [ %455, %451 ], [ %446, %445 ]
  %468 = icmp eq i32 %465, %466
  br i1 %468, label %469, label %474

469:                                              ; preds = %462
  %470 = shl i32 %465, 3
  %471 = sext i32 %470 to i64
  %472 = select i1 %463, i64 16, i64 %471
  %473 = tail call ptr @realloc(ptr noundef %467, i64 noundef %472) #12
  br label %474

474:                                              ; preds = %469, %462
  %475 = phi ptr [ %473, %469 ], [ %467, %462 ]
  %476 = shl i32 %464, 4
  %477 = or disjoint i32 %476, 1
  %478 = add nsw i32 %465, 1
  %479 = sext i32 %465 to i64
  %480 = getelementptr inbounds i32, ptr %475, i64 %479
  store i32 %477, ptr %480, align 4, !tbaa !37
  br label %484

481:                                              ; preds = %451
  %482 = shl i32 %452, 4
  %483 = add i32 %459, %482
  store i32 %483, ptr %458, align 4, !tbaa !37
  br label %484

484:                                              ; preds = %436, %428, %481, %474, %439
  %485 = phi i32 [ %442, %439 ], [ %478, %474 ], [ %453, %481 ], [ %433, %428 ], [ %392, %436 ]
  %486 = phi ptr [ %444, %439 ], [ %475, %474 ], [ %455, %481 ], [ %430, %428 ], [ %395, %436 ]
  %487 = ashr i32 %485, 1
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %530

489:                                              ; preds = %484
  %490 = zext nneg i32 %487 to i64
  %491 = and i64 %490, 1
  %492 = icmp eq i32 %487, 1
  br i1 %492, label %518, label %493

493:                                              ; preds = %489
  %494 = and i64 %490, 2147483646
  br label %495

495:                                              ; preds = %495, %493
  %496 = phi i64 [ 0, %493 ], [ %515, %495 ]
  %497 = phi i64 [ 0, %493 ], [ %516, %495 ]
  %498 = getelementptr inbounds i32, ptr %486, i64 %496
  %499 = load i32, ptr %498, align 4, !tbaa !37
  %500 = trunc i64 %496 to i32
  %501 = xor i32 %500, -1
  %502 = add i32 %485, %501
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, ptr %486, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !37
  store i32 %505, ptr %498, align 4, !tbaa !37
  store i32 %499, ptr %504, align 4, !tbaa !37
  %506 = or disjoint i64 %496, 1
  %507 = getelementptr inbounds i32, ptr %486, i64 %506
  %508 = load i32, ptr %507, align 4, !tbaa !37
  %509 = trunc i64 %506 to i32
  %510 = xor i32 %509, -1
  %511 = add i32 %485, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, ptr %486, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !37
  store i32 %514, ptr %507, align 4, !tbaa !37
  store i32 %508, ptr %513, align 4, !tbaa !37
  %515 = add nuw nsw i64 %496, 2
  %516 = add i64 %497, 2
  %517 = icmp eq i64 %516, %494
  br i1 %517, label %518, label %495, !llvm.loop !104

518:                                              ; preds = %495, %489
  %519 = phi i64 [ 0, %489 ], [ %515, %495 ]
  %520 = icmp eq i64 %491, 0
  br i1 %520, label %530, label %521

521:                                              ; preds = %518
  %522 = getelementptr inbounds i32, ptr %486, i64 %519
  %523 = load i32, ptr %522, align 4, !tbaa !37
  %524 = trunc i64 %519 to i32
  %525 = xor i32 %524, -1
  %526 = add i32 %485, %525
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, ptr %486, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !37
  store i32 %529, ptr %522, align 4, !tbaa !37
  store i32 %523, ptr %528, align 4, !tbaa !37
  br label %530

530:                                              ; preds = %521, %518, %484
  store i32 %485, ptr %9, align 4, !tbaa !37
  store ptr %486, ptr %10, align 8, !tbaa !73
  br label %531

531:                                              ; preds = %530, %268
  tail call void @free(ptr noundef %26) #13
  tail call void @free(ptr noundef %23) #13
  tail call void @free(ptr noundef %20) #13
  ret i32 %271
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smax.v16i8(<16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smin.v16i8(<16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smin.v8i8(<8 x i8>, <8 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.smax.v8i8(<8 x i8>, <8 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smax.v8i8(<8 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.smin.v8i8(<8 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #10

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"_kswq_t", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 24}
!12 = !{!6, !10, i64 32}
!13 = !{!6, !10, i64 40}
!14 = !{!6, !10, i64 48}
!15 = !{!6, !7, i64 4}
!16 = !{!6, !7, i64 0}
!17 = !{!6, !8, i64 11}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20, !21, !22}
!24 = distinct !{!24, !20, !22, !21}
!25 = !{!6, !8, i64 10}
!26 = !{!6, !8, i64 8}
!27 = !{!6, !8, i64 9}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !8, i64 0}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37, i64 20, i64 4, !37, i64 24, i64 4, !37}
!37 = !{!7, !7, i64 0}
!38 = distinct !{!38, !20}
!39 = !{!"branch_weights", i32 127, i32 1}
!40 = !{!"branch_weights", i32 127, i32 255873}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"branch_weights", i32 1, i32 1999}
!45 = distinct !{!45, !20}
!46 = !{!47, !47, i64 0}
!47 = !{!"long", !8, i64 0}
!48 = !{!"branch_weights", i32 1, i32 127}
!49 = !{!"branch_weights", i32 127, i32 63881}
!50 = distinct !{!50, !20}
!51 = !{!"branch_weights", i32 3, i32 1}
!52 = !{!"branch_weights", i32 1, i32 1}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !20}
!56 = !{!57, !7, i64 0}
!57 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!58 = !{!57, !7, i64 4}
!59 = !{!57, !7, i64 8}
!60 = distinct !{!60, !20}
!61 = !{!57, !7, i64 12}
!62 = !{!57, !7, i64 16}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = !{!10, !10, i64 0}
!74 = distinct !{!74, !20}
!75 = !{ptr @ksw_i16, ptr @ksw_u8}
!76 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37, i64 20, i64 4, !37}
!77 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37}
!78 = !{!57, !7, i64 20}
!79 = !{!57, !7, i64 24}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !54}
!82 = distinct !{!82, !20}
!83 = !{!84, !7, i64 0}
!84 = !{!"", !7, i64 0, !7, i64 4}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20, !21, !22}
!87 = distinct !{!87, !20, !22, !21}
!88 = !{!84, !7, i64 4}
!89 = !{!"branch_weights", i32 255873, i32 127}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !54}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20, !21, !22}
!98 = distinct !{!98, !20, !21, !22}
!99 = distinct !{!99, !20, !22, !21}
!100 = distinct !{!100, !20, !22, !21}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
