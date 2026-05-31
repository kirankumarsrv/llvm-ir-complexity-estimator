; ModuleID = 'corpus_src/zlib/contrib/minizip/mztools.c'
source_filename = "corpus_src/zlib/contrib/minizip/mztools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @unzRepair(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [30 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [46 x i8], align 16
  %10 = alloca [22 x i8], align 16
  %11 = alloca [8192 x i8], align 16
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %13 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1)
  %14 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.1)
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %13, null
  %17 = and i1 %15, %16
  %18 = icmp ne ptr %14, null
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %264

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #7
  %21 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 30, ptr noundef nonnull %12)
  %22 = icmp eq i64 %21, 30
  br i1 %22, label %23, label %190

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %6, i64 2
  %25 = getelementptr inbounds i8, ptr %6, i64 4
  %26 = getelementptr inbounds i8, ptr %6, i64 20
  %27 = getelementptr inbounds i8, ptr %6, i64 21
  %28 = getelementptr inbounds i8, ptr %6, i64 22
  %29 = getelementptr inbounds i8, ptr %6, i64 23
  %30 = getelementptr inbounds i8, ptr %6, i64 24
  %31 = getelementptr inbounds i8, ptr %6, i64 25
  %32 = getelementptr inbounds i8, ptr %6, i64 26
  %33 = getelementptr inbounds i8, ptr %6, i64 27
  %34 = getelementptr inbounds i8, ptr %6, i64 28
  %35 = getelementptr inbounds i8, ptr %6, i64 29
  %36 = getelementptr inbounds i8, ptr %9, i64 4
  %37 = getelementptr inbounds i8, ptr %9, i64 5
  %38 = getelementptr inbounds i8, ptr %9, i64 6
  %39 = getelementptr inbounds i8, ptr %9, i64 22
  %40 = getelementptr inbounds i8, ptr %9, i64 23
  %41 = getelementptr inbounds i8, ptr %9, i64 24
  %42 = getelementptr inbounds i8, ptr %9, i64 25
  %43 = getelementptr inbounds i8, ptr %9, i64 26
  %44 = getelementptr inbounds i8, ptr %9, i64 27
  %45 = getelementptr inbounds i8, ptr %9, i64 28
  %46 = getelementptr inbounds i8, ptr %9, i64 29
  %47 = getelementptr inbounds i8, ptr %9, i64 30
  %48 = getelementptr inbounds i8, ptr %9, i64 31
  %49 = getelementptr inbounds i8, ptr %9, i64 32
  %50 = getelementptr inbounds i8, ptr %9, i64 42
  %51 = getelementptr inbounds i8, ptr %9, i64 43
  %52 = getelementptr inbounds i8, ptr %9, i64 44
  %53 = getelementptr inbounds i8, ptr %9, i64 45
  br label %54

54:                                               ; preds = %23, %185
  %55 = phi i32 [ 0, %23 ], [ %187, %185 ]
  %56 = phi i64 [ 0, %23 ], [ %158, %185 ]
  %57 = phi i32 [ 0, %23 ], [ %159, %185 ]
  %58 = phi i32 [ 0, %23 ], [ %186, %185 ]
  %59 = load i16, ptr %6, align 16
  %60 = zext i16 %59 to i32
  %61 = load i16, ptr %24, align 2
  %62 = zext i16 %61 to i32
  %63 = shl nuw i32 %62, 16
  %64 = or disjoint i32 %63, %60
  %65 = icmp eq i32 %64, 67324752
  br i1 %65, label %66, label %190

66:                                               ; preds = %54
  %67 = load <16 x i8>, ptr %25, align 4, !tbaa !5
  %68 = extractelement <16 x i8> %67, i64 14
  %69 = zext i8 %68 to i32
  %70 = extractelement <16 x i8> %67, i64 15
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = load i8, ptr %26, align 4, !tbaa !5
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %27, align 1, !tbaa !5
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 %76, 24
  %78 = shl nuw nsw i32 %74, 16
  %79 = or disjoint i32 %72, %69
  %80 = or disjoint i32 %79, %78
  %81 = or disjoint i32 %80, %77
  %82 = load i8, ptr %28, align 2, !tbaa !5
  %83 = zext i8 %82 to i32
  %84 = load i8, ptr %29, align 1, !tbaa !5
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = load i8, ptr %30, align 8, !tbaa !5
  %88 = zext i8 %87 to i32
  %89 = load i8, ptr %31, align 1, !tbaa !5
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 %90, 24
  %92 = shl nuw nsw i32 %88, 16
  %93 = or disjoint i32 %86, %83
  %94 = or disjoint i32 %93, %92
  %95 = or disjoint i32 %94, %91
  %96 = load i8, ptr %32, align 2, !tbaa !5
  %97 = zext i8 %96 to i32
  %98 = load i8, ptr %33, align 1, !tbaa !5
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = or disjoint i32 %100, %97
  %102 = load i8, ptr %34, align 4, !tbaa !5
  %103 = zext i8 %102 to i32
  %104 = load i8, ptr %35, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = or disjoint i32 %106, %103
  store i8 0, ptr %8, align 16, !tbaa !5
  store i8 0, ptr %7, align 16, !tbaa !5
  %108 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 30, ptr noundef nonnull %13)
  %109 = icmp eq i64 %108, 30
  br i1 %109, label %110, label %190

110:                                              ; preds = %66
  %111 = add nsw i32 %57, 30
  %112 = icmp eq i32 %101, 0
  br i1 %112, label %190, label %113

113:                                              ; preds = %110
  %114 = zext nneg i32 %101 to i64
  %115 = icmp ult i32 %101, 1024
  br i1 %115, label %116, label %190

116:                                              ; preds = %113
  %117 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %114, ptr noundef nonnull %12)
  %118 = icmp eq i64 %117, %114
  br i1 %118, label %119, label %190

119:                                              ; preds = %116
  %120 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %114, ptr noundef nonnull %13)
  %121 = icmp eq i64 %120, %114
  br i1 %121, label %122, label %190

122:                                              ; preds = %119
  %123 = add i32 %101, %111
  %124 = icmp eq i32 %107, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %122
  %126 = zext nneg i32 %107 to i64
  %127 = icmp ult i32 %107, 1024
  br i1 %127, label %128, label %190

128:                                              ; preds = %125
  %129 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %126, ptr noundef nonnull %12)
  %130 = icmp eq i64 %129, %126
  br i1 %130, label %131, label %190

131:                                              ; preds = %128
  %132 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %126, ptr noundef nonnull %13)
  %133 = icmp eq i64 %132, %126
  br i1 %133, label %134, label %190

134:                                              ; preds = %131
  %135 = add i32 %107, %123
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi i32 [ %135, %134 ], [ %123, %122 ]
  %138 = icmp eq i32 %81, 0
  %139 = select i1 %138, i32 %95, i32 %81
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = zext nneg i32 %139 to i64
  %143 = tail call noalias ptr @malloc(i64 noundef %142) #8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %190, label %145

145:                                              ; preds = %141
  %146 = tail call i64 @fread(ptr noundef nonnull %143, i64 noundef 1, i64 noundef %142, ptr noundef nonnull %12)
  %147 = trunc i64 %146 to i32
  %148 = icmp eq i32 %139, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = tail call i64 @fwrite(ptr noundef nonnull %143, i64 noundef 1, i64 noundef %142, ptr noundef nonnull %13)
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %139, %151
  br i1 %152, label %154, label %153

153:                                              ; preds = %149, %145
  tail call void @free(ptr noundef nonnull %143) #7
  br label %190

154:                                              ; preds = %149
  %155 = add nsw i32 %137, %139
  %156 = add i64 %56, %142
  tail call void @free(ptr noundef nonnull %143) #7
  br label %157

157:                                              ; preds = %154, %136
  %158 = phi i64 [ %56, %136 ], [ %156, %154 ]
  %159 = phi i32 [ %137, %136 ], [ %155, %154 ]
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %9) #7
  store <4 x i8> <i8 80, i8 75, i8 1, i8 2>, ptr %9, align 16, !tbaa !5
  %160 = extractelement <16 x i8> %67, i64 0
  store i8 %160, ptr %36, align 4, !tbaa !5
  %161 = extractelement <16 x i8> %67, i64 1
  store i8 %161, ptr %37, align 1, !tbaa !5
  store <16 x i8> %67, ptr %38, align 2, !tbaa !5
  store i8 %73, ptr %39, align 2, !tbaa !5
  store i8 %75, ptr %40, align 1, !tbaa !5
  store i8 %82, ptr %41, align 8, !tbaa !5
  store i8 %84, ptr %42, align 1, !tbaa !5
  store i8 %87, ptr %43, align 2, !tbaa !5
  store i8 %89, ptr %44, align 1, !tbaa !5
  store i8 %96, ptr %45, align 4, !tbaa !5
  store i8 %98, ptr %46, align 1, !tbaa !5
  store i8 %102, ptr %47, align 2, !tbaa !5
  store i8 %104, ptr %48, align 1, !tbaa !5
  %162 = trunc i32 %57 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %49, i8 0, i64 10, i1 false)
  store i8 %162, ptr %50, align 2, !tbaa !5
  %163 = lshr i32 %57, 8
  %164 = trunc i32 %163 to i8
  store i8 %164, ptr %51, align 1, !tbaa !5
  %165 = lshr i32 %57, 16
  %166 = trunc i32 %165 to i8
  store i8 %166, ptr %52, align 4, !tbaa !5
  %167 = lshr i32 %57, 24
  %168 = trunc i32 %167 to i8
  store i8 %168, ptr %53, align 1, !tbaa !5
  %169 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 46, ptr noundef nonnull %14)
  %170 = icmp eq i64 %169, 46
  br i1 %170, label %171, label %183

171:                                              ; preds = %157
  %172 = add nsw i32 %58, 46
  %173 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %114, ptr noundef nonnull %14)
  %174 = icmp eq i64 %173, %114
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = add i32 %101, %172
  br i1 %124, label %185, label %177

177:                                              ; preds = %175
  %178 = zext nneg i32 %107 to i64
  %179 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %178, ptr noundef nonnull %14)
  %180 = icmp eq i64 %179, %178
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = add i32 %107, %176
  br label %185

183:                                              ; preds = %171, %177, %157
  %184 = phi i32 [ %58, %157 ], [ %176, %177 ], [ %172, %171 ]
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %9) #7
  br label %190

185:                                              ; preds = %181, %175
  %186 = phi i32 [ %182, %181 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %9) #7
  %187 = add nuw nsw i32 %55, 1
  %188 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 30, ptr noundef nonnull %12)
  %189 = icmp eq i64 %188, 30
  br i1 %189, label %54, label %190

190:                                              ; preds = %185, %66, %119, %116, %113, %110, %131, %128, %125, %54, %141, %20, %153, %183
  %191 = phi i32 [ %55, %183 ], [ %55, %153 ], [ 0, %20 ], [ %187, %185 ], [ %55, %66 ], [ %55, %119 ], [ %55, %116 ], [ %55, %113 ], [ %55, %110 ], [ %55, %131 ], [ %55, %128 ], [ %55, %125 ], [ %55, %54 ], [ %55, %141 ]
  %192 = phi i32 [ %184, %183 ], [ %58, %153 ], [ 0, %20 ], [ %186, %185 ], [ %58, %66 ], [ %58, %119 ], [ %58, %116 ], [ %58, %113 ], [ %58, %110 ], [ %58, %131 ], [ %58, %128 ], [ %58, %125 ], [ %58, %54 ], [ %58, %141 ]
  %193 = phi i32 [ %159, %183 ], [ %137, %153 ], [ 0, %20 ], [ %159, %185 ], [ %57, %66 ], [ %111, %119 ], [ %111, %116 ], [ %111, %113 ], [ %111, %110 ], [ %123, %131 ], [ %123, %128 ], [ %123, %125 ], [ %57, %54 ], [ %137, %141 ]
  %194 = phi i64 [ %158, %183 ], [ %56, %153 ], [ 0, %20 ], [ %158, %185 ], [ %56, %66 ], [ %56, %119 ], [ %56, %116 ], [ %56, %113 ], [ %56, %110 ], [ %56, %131 ], [ %56, %128 ], [ %56, %125 ], [ %56, %54 ], [ %56, %141 ]
  %195 = phi i32 [ -1, %183 ], [ -1, %153 ], [ 0, %20 ], [ 0, %185 ], [ -1, %66 ], [ -1, %119 ], [ -1, %116 ], [ -1, %113 ], [ -2, %110 ], [ -1, %131 ], [ -1, %128 ], [ -1, %125 ], [ 0, %54 ], [ -4, %141 ]
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %10) #7
  %196 = tail call i32 @llvm.smin.i32(i32 %191, i32 65535)
  store <4 x i8> <i8 80, i8 75, i8 5, i8 6>, ptr %10, align 16, !tbaa !5
  %197 = getelementptr inbounds i8, ptr %10, i64 4
  %198 = trunc i32 %196 to i8
  %199 = getelementptr inbounds i8, ptr %10, i64 8
  store i32 0, ptr %197, align 4
  store i8 %198, ptr %199, align 8, !tbaa !5
  %200 = lshr i32 %196, 8
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds i8, ptr %10, i64 9
  store i8 %201, ptr %202, align 1, !tbaa !5
  %203 = getelementptr inbounds i8, ptr %10, i64 10
  store i8 %198, ptr %203, align 2, !tbaa !5
  %204 = getelementptr inbounds i8, ptr %10, i64 11
  store i8 %201, ptr %204, align 1, !tbaa !5
  %205 = trunc i32 %192 to i8
  %206 = getelementptr inbounds i8, ptr %10, i64 12
  store i8 %205, ptr %206, align 4, !tbaa !5
  %207 = lshr i32 %192, 8
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds i8, ptr %10, i64 13
  store i8 %208, ptr %209, align 1, !tbaa !5
  %210 = lshr i32 %192, 16
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds i8, ptr %10, i64 14
  store i8 %211, ptr %212, align 2, !tbaa !5
  %213 = lshr i32 %192, 24
  %214 = trunc i32 %213 to i8
  %215 = getelementptr inbounds i8, ptr %10, i64 15
  store i8 %214, ptr %215, align 1, !tbaa !5
  %216 = trunc i32 %193 to i8
  %217 = getelementptr inbounds i8, ptr %10, i64 16
  store i8 %216, ptr %217, align 16, !tbaa !5
  %218 = lshr i32 %193, 8
  %219 = trunc i32 %218 to i8
  %220 = getelementptr inbounds i8, ptr %10, i64 17
  store i8 %219, ptr %220, align 1, !tbaa !5
  %221 = lshr i32 %193, 16
  %222 = trunc i32 %221 to i8
  %223 = getelementptr inbounds i8, ptr %10, i64 18
  store i8 %222, ptr %223, align 2, !tbaa !5
  %224 = lshr i32 %193, 24
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds i8, ptr %10, i64 19
  store i8 %225, ptr %226, align 1, !tbaa !5
  %227 = getelementptr inbounds i8, ptr %10, i64 20
  store i8 0, ptr %227, align 4, !tbaa !5
  %228 = getelementptr inbounds i8, ptr %10, i64 21
  store i8 0, ptr %228, align 1, !tbaa !5
  %229 = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 22, ptr noundef nonnull %14)
  %230 = icmp eq i64 %229, 22
  %231 = select i1 %230, i32 %195, i32 -1
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %10) #7
  %232 = tail call i32 @fclose(ptr noundef nonnull %14)
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %190
  %235 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str)
  %236 = icmp eq ptr %235, null
  br i1 %236, label %250, label %237

237:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %11) #7
  br label %238

238:                                              ; preds = %242, %237
  %239 = call i64 @fread(ptr noundef nonnull %11, i64 noundef 1, i64 noundef 8192, ptr noundef nonnull %235)
  %240 = trunc i64 %239 to i32
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = and i64 %239, 4294967295
  %244 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 1, i64 noundef %243, ptr noundef nonnull %13)
  %245 = trunc i64 %244 to i32
  %246 = icmp eq i32 %245, %240
  br i1 %246, label %238, label %247, !llvm.loop !8

247:                                              ; preds = %242, %238
  %248 = phi i32 [ 0, %238 ], [ -1, %242 ]
  %249 = tail call i32 @fclose(ptr noundef nonnull %235)
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %11) #7
  br label %250

250:                                              ; preds = %234, %247, %190
  %251 = phi i32 [ %248, %247 ], [ 0, %234 ], [ %231, %190 ]
  %252 = tail call i32 @fclose(ptr noundef nonnull %12)
  %253 = tail call i32 @fclose(ptr noundef nonnull %13)
  %254 = tail call i32 @remove(ptr noundef %2) #7
  %255 = icmp eq i32 %251, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = icmp eq ptr %3, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %256
  %259 = sext i32 %191 to i64
  store i64 %259, ptr %3, align 8, !tbaa !10
  br label %260

260:                                              ; preds = %258, %256
  %261 = icmp eq ptr %4, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  store i64 %194, ptr %4, align 8, !tbaa !10
  br label %263

263:                                              ; preds = %260, %262, %250
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %6) #7
  br label %273

264:                                              ; preds = %5
  br i1 %18, label %265, label %267

265:                                              ; preds = %264
  %266 = tail call i32 @fclose(ptr noundef nonnull %14)
  br label %267

267:                                              ; preds = %265, %264
  br i1 %15, label %268, label %270

268:                                              ; preds = %267
  %269 = tail call i32 @fclose(ptr noundef nonnull %12)
  br label %270

270:                                              ; preds = %268, %267
  br i1 %16, label %271, label %273

271:                                              ; preds = %270
  %272 = tail call i32 @fclose(ptr noundef nonnull %13)
  br label %273

273:                                              ; preds = %270, %271, %263
  %274 = phi i32 [ %251, %263 ], [ -2, %271 ], [ -2, %270 ]
  ret i32 %274
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
