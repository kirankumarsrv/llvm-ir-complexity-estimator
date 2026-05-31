; ModuleID = 'corpus_src/zlib/contrib/puff/puff.c'
source_filename = "corpus_src/zlib/contrib/puff/puff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.huffman = type { ptr, ptr }
%struct.state = type { ptr, i64, i64, ptr, i64, i64, i32, i32, [1 x %struct.__jmp_buf_tag] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@fixed.virgin = internal unnamed_addr global i1 false, align 4
@fixed.lencnt = internal global [16 x i16] zeroinitializer, align 16
@fixed.lensym = internal global [288 x i16] zeroinitializer, align 16
@fixed.distcnt = internal global [16 x i16] zeroinitializer, align 16
@fixed.distsym = internal global [30 x i16] zeroinitializer, align 16
@fixed.lencode = internal global %struct.huffman zeroinitializer, align 8
@fixed.distcode = internal global %struct.huffman zeroinitializer, align 8
@codes.lens = internal unnamed_addr constant [29 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258], align 16
@codes.lext = internal unnamed_addr constant [29 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 0], align 16
@codes.dists = internal unnamed_addr constant [30 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577], align 16
@codes.dext = internal unnamed_addr constant [30 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13], align 16
@dynamic.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @puff(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [316 x i16], align 16
  %6 = alloca [16 x i16], align 16
  %7 = alloca [286 x i16], align 16
  %8 = alloca [16 x i16], align 16
  %9 = alloca [30 x i16], align 16
  %10 = alloca %struct.huffman, align 8
  %11 = alloca %struct.huffman, align 8
  %12 = alloca [288 x i16], align 16
  %13 = alloca %struct.state, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #7
  store ptr %0, ptr %13, align 8, !tbaa !5
  %14 = load i64, ptr %1, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 2
  store i64 0, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 3
  store ptr %2, ptr %17, align 8, !tbaa !15
  %18 = load i64, ptr %3, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 4
  store i64 %18, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 5
  %21 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 6
  %22 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 7
  %23 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %24 = call i32 @_setjmp(ptr noundef nonnull %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %677

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.huffman, ptr %10, i64 0, i32 1
  %28 = getelementptr inbounds %struct.huffman, ptr %11, i64 0, i32 1
  %29 = getelementptr inbounds i16, ptr %6, i64 1
  %30 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 256
  %31 = getelementptr inbounds i16, ptr %8, i64 1
  %32 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 256
  %33 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 264
  %34 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 272
  %35 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 280
  %36 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 8
  %37 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 16
  %38 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 24
  %39 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 28
  %40 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 29
  %41 = getelementptr inbounds i16, ptr %12, i64 8
  %42 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 16
  %43 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 24
  %44 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 32
  %45 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 40
  %46 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 48
  %47 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 56
  %48 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 64
  %49 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 72
  %50 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 80
  %51 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 88
  %52 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 96
  %53 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 104
  %54 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 112
  %55 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 120
  %56 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 128
  %57 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 136
  %58 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 144
  %59 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 152
  %60 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 160
  %61 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 168
  %62 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 176
  %63 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 184
  %64 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 192
  %65 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 200
  %66 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 208
  %67 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 216
  %68 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 224
  %69 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 232
  %70 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 240
  %71 = getelementptr inbounds [288 x i16], ptr %12, i64 0, i64 248
  br label %72

72:                                               ; preds = %26, %668
  %73 = load i32, ptr %21, align 8, !tbaa !17
  %74 = sext i32 %73 to i64
  %75 = load i32, ptr %22, align 4, !tbaa !18
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load i64, ptr %19, align 8, !tbaa !16
  %79 = load i64, ptr %20, align 8, !tbaa !19
  %80 = load ptr, ptr %17, align 8
  br label %81

81:                                               ; preds = %87, %77
  %82 = phi i64 [ %79, %77 ], [ %88, %87 ]
  %83 = phi i64 [ %74, %77 ], [ %94, %87 ]
  %84 = phi i32 [ %75, %77 ], [ %95, %87 ]
  %85 = icmp eq i64 %82, %78
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

87:                                               ; preds = %81
  %88 = add i64 %82, 1
  store i64 %88, ptr %20, align 8, !tbaa !19
  %89 = getelementptr inbounds i8, ptr %80, i64 %82
  %90 = load i8, ptr %89, align 1, !tbaa !20
  %91 = zext i8 %90 to i64
  %92 = zext nneg i32 %84 to i64
  %93 = shl i64 %91, %92
  %94 = or i64 %93, %83
  %95 = add nsw i32 %84, 8
  store i32 %95, ptr %22, align 4, !tbaa !18
  %96 = icmp slt i32 %84, -7
  br i1 %96, label %81, label %97, !llvm.loop !21

97:                                               ; preds = %87, %72
  %98 = phi i64 [ %74, %72 ], [ %94, %87 ]
  %99 = phi i32 [ %75, %72 ], [ %95, %87 ]
  %100 = lshr i64 %98, 1
  %101 = trunc i64 %100 to i32
  store i32 %101, ptr %21, align 8, !tbaa !17
  %102 = add nsw i32 %99, -1
  store i32 %102, ptr %22, align 4, !tbaa !18
  %103 = shl i64 %100, 32
  %104 = ashr exact i64 %103, 32
  %105 = icmp ult i32 %102, 2
  br i1 %105, label %106, label %128

106:                                              ; preds = %97
  %107 = load i64, ptr %19, align 8, !tbaa !16
  %108 = load i64, ptr %20, align 8, !tbaa !19
  %109 = load ptr, ptr %17, align 8
  %110 = zext nneg i32 %102 to i64
  br label %111

111:                                              ; preds = %117, %106
  %112 = phi i64 [ %124, %117 ], [ %110, %106 ]
  %113 = phi i64 [ %118, %117 ], [ %108, %106 ]
  %114 = phi i64 [ %123, %117 ], [ %104, %106 ]
  %115 = icmp eq i64 %113, %107
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

117:                                              ; preds = %111
  %118 = add i64 %113, 1
  store i64 %118, ptr %20, align 8, !tbaa !19
  %119 = getelementptr inbounds i8, ptr %109, i64 %113
  %120 = load i8, ptr %119, align 1, !tbaa !20
  %121 = zext i8 %120 to i64
  %122 = shl i64 %121, %112
  %123 = or i64 %122, %114
  %124 = add nuw nsw i64 %112, 8
  %125 = trunc i64 %124 to i32
  store i32 %125, ptr %22, align 4, !tbaa !18
  %126 = trunc i64 %112 to i32
  %127 = icmp slt i32 %126, -6
  br i1 %127, label %111, label %128, !llvm.loop !21

128:                                              ; preds = %117, %97
  %129 = phi i64 [ %104, %97 ], [ %123, %117 ]
  %130 = phi i32 [ %102, %97 ], [ %125, %117 ]
  %131 = lshr i64 %129, 2
  %132 = trunc i64 %131 to i32
  store i32 %132, ptr %21, align 8, !tbaa !17
  %133 = add i32 %130, -2
  store i32 %133, ptr %22, align 4, !tbaa !18
  %134 = trunc i64 %129 to i32
  %135 = and i32 %134, 3
  switch i32 %135, label %673 [
    i32 0, label %136
    i32 1, label %221
    i32 2, label %228
  ]

136:                                              ; preds = %128
  store i32 0, ptr %21, align 8, !tbaa !17
  store i32 0, ptr %22, align 4, !tbaa !18
  %137 = load i64, ptr %20, align 8, !tbaa !19
  %138 = add i64 %137, 4
  %139 = load i64, ptr %19, align 8, !tbaa !16
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %677, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %17, align 8, !tbaa !15
  %143 = add i64 %137, 1
  store i64 %143, ptr %20, align 8, !tbaa !19
  %144 = getelementptr inbounds i8, ptr %142, i64 %137
  %145 = load i8, ptr %144, align 1, !tbaa !20
  %146 = zext i8 %145 to i32
  %147 = add i64 %137, 2
  store i64 %147, ptr %20, align 8, !tbaa !19
  %148 = getelementptr inbounds i8, ptr %142, i64 %143
  %149 = load i8, ptr %148, align 1, !tbaa !20
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = or disjoint i32 %151, %146
  %153 = add i64 %137, 3
  store i64 %153, ptr %20, align 8, !tbaa !19
  %154 = getelementptr inbounds i8, ptr %142, i64 %147
  %155 = load i8, ptr %154, align 1, !tbaa !20
  %156 = xor i8 %155, %145
  %157 = icmp eq i8 %156, -1
  br i1 %157, label %158, label %673

158:                                              ; preds = %141
  %159 = xor i32 %151, -1
  store i64 %138, ptr %20, align 8, !tbaa !19
  %160 = getelementptr inbounds i8, ptr %142, i64 %153
  %161 = load i8, ptr %160, align 1, !tbaa !20
  %162 = lshr i32 %159, 8
  %163 = trunc i32 %162 to i8
  %164 = icmp eq i8 %161, %163
  br i1 %164, label %165, label %673

165:                                              ; preds = %158
  %166 = zext nneg i32 %152 to i64
  %167 = add i64 %138, %166
  %168 = icmp ugt i64 %167, %139
  br i1 %168, label %677, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %13, align 8, !tbaa !5
  %171 = icmp eq ptr %170, null
  %172 = load i64, ptr %16, align 8, !tbaa !14
  %173 = add i64 %172, %166
  br i1 %171, label %220, label %174

174:                                              ; preds = %169
  %175 = load i64, ptr %15, align 8, !tbaa !13
  %176 = icmp ugt i64 %173, %175
  br i1 %176, label %677, label %177

177:                                              ; preds = %174
  %178 = icmp eq i32 %152, 0
  br i1 %178, label %668, label %179

179:                                              ; preds = %177
  %180 = add nsw i32 %151, -1
  %181 = and i32 %146, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %179
  %184 = add nsw i32 %152, -1
  %185 = load ptr, ptr %17, align 8, !tbaa !15
  %186 = load i64, ptr %20, align 8, !tbaa !19
  %187 = add i64 %186, 1
  store i64 %187, ptr %20, align 8, !tbaa !19
  %188 = getelementptr inbounds i8, ptr %185, i64 %186
  %189 = load i8, ptr %188, align 1, !tbaa !20
  %190 = load ptr, ptr %13, align 8, !tbaa !5
  %191 = load i64, ptr %16, align 8, !tbaa !14
  %192 = add i64 %191, 1
  store i64 %192, ptr %16, align 8, !tbaa !14
  %193 = getelementptr inbounds i8, ptr %190, i64 %191
  store i8 %189, ptr %193, align 1, !tbaa !20
  br label %194

194:                                              ; preds = %183, %179
  %195 = phi i32 [ %152, %179 ], [ %184, %183 ]
  %196 = sub nsw i32 0, %146
  %197 = icmp eq i32 %180, %196
  br i1 %197, label %668, label %198

198:                                              ; preds = %194, %198
  %199 = phi i32 [ %209, %198 ], [ %195, %194 ]
  %200 = load ptr, ptr %17, align 8, !tbaa !15
  %201 = load i64, ptr %20, align 8, !tbaa !19
  %202 = add i64 %201, 1
  store i64 %202, ptr %20, align 8, !tbaa !19
  %203 = getelementptr inbounds i8, ptr %200, i64 %201
  %204 = load i8, ptr %203, align 1, !tbaa !20
  %205 = load ptr, ptr %13, align 8, !tbaa !5
  %206 = load i64, ptr %16, align 8, !tbaa !14
  %207 = add i64 %206, 1
  store i64 %207, ptr %16, align 8, !tbaa !14
  %208 = getelementptr inbounds i8, ptr %205, i64 %206
  store i8 %204, ptr %208, align 1, !tbaa !20
  %209 = add nsw i32 %199, -2
  %210 = load ptr, ptr %17, align 8, !tbaa !15
  %211 = load i64, ptr %20, align 8, !tbaa !19
  %212 = add i64 %211, 1
  store i64 %212, ptr %20, align 8, !tbaa !19
  %213 = getelementptr inbounds i8, ptr %210, i64 %211
  %214 = load i8, ptr %213, align 1, !tbaa !20
  %215 = load ptr, ptr %13, align 8, !tbaa !5
  %216 = load i64, ptr %16, align 8, !tbaa !14
  %217 = add i64 %216, 1
  store i64 %217, ptr %16, align 8, !tbaa !14
  %218 = getelementptr inbounds i8, ptr %215, i64 %216
  store i8 %214, ptr %218, align 1, !tbaa !20
  %219 = icmp eq i32 %209, 0
  br i1 %219, label %668, label %198, !llvm.loop !23

220:                                              ; preds = %169
  store i64 %173, ptr %16, align 8, !tbaa !14
  store i64 %167, ptr %20, align 8, !tbaa !19
  br label %668

221:                                              ; preds = %128
  %222 = load i1, ptr @fixed.virgin, align 4
  br i1 %222, label %226, label %223

223:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %12) #7
  store ptr @fixed.lencnt, ptr @fixed.lencode, align 8, !tbaa !24
  store ptr @fixed.lensym, ptr getelementptr inbounds (%struct.huffman, ptr @fixed.lencode, i64 0, i32 1), align 8, !tbaa !26
  store ptr @fixed.distcnt, ptr @fixed.distcode, align 8, !tbaa !24
  store ptr @fixed.distsym, ptr getelementptr inbounds (%struct.huffman, ptr @fixed.distcode, i64 0, i32 1), align 8, !tbaa !26
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %12, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %41, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %42, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %43, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %44, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %45, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %46, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %47, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %48, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %49, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %50, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %51, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %52, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %53, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %54, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %55, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %56, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %57, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %58, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %59, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %60, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %61, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %62, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %63, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %64, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %65, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %66, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %67, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %68, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %69, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %70, align 16, !tbaa !27
  store <8 x i16> <i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>, ptr %71, align 16, !tbaa !27
  store <8 x i16> <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>, ptr %32, align 16, !tbaa !27
  store <8 x i16> <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>, ptr %33, align 16, !tbaa !27
  store <8 x i16> <i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>, ptr %34, align 16, !tbaa !27
  store <8 x i16> <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, ptr %35, align 16, !tbaa !27
  %224 = call fastcc i32 @construct(ptr noundef nonnull @fixed.lencode, ptr noundef nonnull %12, i32 noundef 288)
  store <8 x i16> <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5>, ptr %12, align 16, !tbaa !27
  store <8 x i16> <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5>, ptr %36, align 16, !tbaa !27
  store <8 x i16> <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5>, ptr %37, align 16, !tbaa !27
  store <4 x i16> <i16 5, i16 5, i16 5, i16 5>, ptr %38, align 16, !tbaa !27
  store i16 5, ptr %39, align 8, !tbaa !27
  store i16 5, ptr %40, align 2, !tbaa !27
  %225 = call fastcc i32 @construct(ptr noundef nonnull @fixed.distcode, ptr noundef nonnull %12, i32 noundef 30)
  store i1 true, ptr @fixed.virgin, align 4
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %12) #7
  br label %226

226:                                              ; preds = %221, %223
  %227 = call fastcc i32 @codes(ptr noundef nonnull %13, ptr noundef nonnull @fixed.lencode, ptr noundef nonnull @fixed.distcode), !range !29
  br label %665

228:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 572, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7
  store ptr %6, ptr %10, align 8, !tbaa !24
  store ptr %7, ptr %27, align 8, !tbaa !26
  store ptr %8, ptr %11, align 8, !tbaa !24
  store ptr %9, ptr %28, align 8, !tbaa !26
  %229 = shl i64 %131, 32
  %230 = ashr exact i64 %229, 32
  %231 = icmp ult i32 %133, 5
  br i1 %231, label %232, label %254

232:                                              ; preds = %228
  %233 = load i64, ptr %19, align 8, !tbaa !16
  %234 = load i64, ptr %20, align 8, !tbaa !19
  %235 = load ptr, ptr %17, align 8
  %236 = zext nneg i32 %133 to i64
  br label %237

237:                                              ; preds = %243, %232
  %238 = phi i64 [ %250, %243 ], [ %236, %232 ]
  %239 = phi i64 [ %244, %243 ], [ %234, %232 ]
  %240 = phi i64 [ %249, %243 ], [ %230, %232 ]
  %241 = icmp eq i64 %239, %233
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

243:                                              ; preds = %237
  %244 = add i64 %239, 1
  store i64 %244, ptr %20, align 8, !tbaa !19
  %245 = getelementptr inbounds i8, ptr %235, i64 %239
  %246 = load i8, ptr %245, align 1, !tbaa !20
  %247 = zext i8 %246 to i64
  %248 = shl i64 %247, %238
  %249 = or i64 %248, %240
  %250 = add nuw nsw i64 %238, 8
  %251 = trunc i64 %250 to i32
  store i32 %251, ptr %22, align 4, !tbaa !18
  %252 = trunc i64 %238 to i32
  %253 = icmp slt i32 %252, -3
  br i1 %253, label %237, label %254, !llvm.loop !21

254:                                              ; preds = %243, %228
  %255 = phi i64 [ %230, %228 ], [ %249, %243 ]
  %256 = phi i32 [ %133, %228 ], [ %251, %243 ]
  %257 = lshr i64 %255, 5
  %258 = trunc i64 %257 to i32
  store i32 %258, ptr %21, align 8, !tbaa !17
  %259 = add nsw i32 %256, -5
  store i32 %259, ptr %22, align 4, !tbaa !18
  %260 = trunc i64 %255 to i32
  %261 = and i32 %260, 31
  %262 = add nuw nsw i32 %261, 257
  %263 = shl i64 %257, 32
  %264 = ashr exact i64 %263, 32
  %265 = icmp ult i32 %259, 5
  br i1 %265, label %266, label %288

266:                                              ; preds = %254
  %267 = load i64, ptr %19, align 8, !tbaa !16
  %268 = load i64, ptr %20, align 8, !tbaa !19
  %269 = zext nneg i32 %259 to i64
  %270 = load ptr, ptr %17, align 8
  br label %271

271:                                              ; preds = %277, %266
  %272 = phi i64 [ %284, %277 ], [ %269, %266 ]
  %273 = phi i64 [ %278, %277 ], [ %268, %266 ]
  %274 = phi i64 [ %283, %277 ], [ %264, %266 ]
  %275 = icmp eq i64 %273, %267
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

277:                                              ; preds = %271
  %278 = add i64 %273, 1
  store i64 %278, ptr %20, align 8, !tbaa !19
  %279 = getelementptr inbounds i8, ptr %270, i64 %273
  %280 = load i8, ptr %279, align 1, !tbaa !20
  %281 = zext i8 %280 to i64
  %282 = shl i64 %281, %272
  %283 = or i64 %282, %274
  %284 = add nuw nsw i64 %272, 8
  %285 = trunc i64 %284 to i32
  store i32 %285, ptr %22, align 4, !tbaa !18
  %286 = trunc i64 %272 to i32
  %287 = icmp slt i32 %286, -3
  br i1 %287, label %271, label %288, !llvm.loop !21

288:                                              ; preds = %277, %254
  %289 = phi i64 [ %264, %254 ], [ %283, %277 ]
  %290 = phi i32 [ %259, %254 ], [ %285, %277 ]
  %291 = lshr i64 %289, 5
  %292 = trunc i64 %291 to i32
  store i32 %292, ptr %21, align 8, !tbaa !17
  %293 = add nsw i32 %290, -5
  store i32 %293, ptr %22, align 4, !tbaa !18
  %294 = trunc i64 %289 to i32
  %295 = and i32 %294, 31
  %296 = add nuw nsw i32 %295, 1
  %297 = shl i64 %291, 32
  %298 = ashr exact i64 %297, 32
  %299 = icmp ult i32 %293, 4
  br i1 %299, label %300, label %322

300:                                              ; preds = %288
  %301 = load i64, ptr %19, align 8, !tbaa !16
  %302 = load i64, ptr %20, align 8, !tbaa !19
  %303 = zext nneg i32 %293 to i64
  %304 = load ptr, ptr %17, align 8
  br label %305

305:                                              ; preds = %311, %300
  %306 = phi i64 [ %318, %311 ], [ %303, %300 ]
  %307 = phi i64 [ %312, %311 ], [ %302, %300 ]
  %308 = phi i64 [ %317, %311 ], [ %298, %300 ]
  %309 = icmp eq i64 %307, %301
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

311:                                              ; preds = %305
  %312 = add i64 %307, 1
  store i64 %312, ptr %20, align 8, !tbaa !19
  %313 = getelementptr inbounds i8, ptr %304, i64 %307
  %314 = load i8, ptr %313, align 1, !tbaa !20
  %315 = zext i8 %314 to i64
  %316 = shl i64 %315, %306
  %317 = or i64 %316, %308
  %318 = add nuw nsw i64 %306, 8
  %319 = trunc i64 %318 to i32
  store i32 %319, ptr %22, align 4, !tbaa !18
  %320 = trunc i64 %306 to i32
  %321 = icmp slt i32 %320, -4
  br i1 %321, label %305, label %322, !llvm.loop !21

322:                                              ; preds = %311, %288
  %323 = phi i64 [ %298, %288 ], [ %317, %311 ]
  %324 = phi i32 [ %293, %288 ], [ %319, %311 ]
  %325 = lshr i64 %323, 4
  %326 = trunc i64 %325 to i32
  store i32 %326, ptr %21, align 8, !tbaa !17
  %327 = add nsw i32 %324, -4
  store i32 %327, ptr %22, align 4, !tbaa !18
  %328 = icmp ugt i32 %261, 29
  %329 = icmp ugt i32 %295, 29
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %663, label %331

331:                                              ; preds = %322
  %332 = and i64 %323, 15
  %333 = add nuw nsw i64 %332, 3
  %334 = load i64, ptr %20, align 8, !tbaa !19
  %335 = load i64, ptr %19, align 8
  %336 = load ptr, ptr %17, align 8
  %337 = add nuw nsw i64 %332, 4
  br label %359

338:                                              ; preds = %383
  %339 = trunc i64 %333 to i32
  %340 = icmp ult i32 %339, 18
  br i1 %340, label %341, label %421

341:                                              ; preds = %338
  %342 = and i64 %323, 3
  %343 = xor i64 %342, 3
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %355, label %345

345:                                              ; preds = %341, %345
  %346 = phi i64 [ %352, %345 ], [ %337, %341 ]
  %347 = phi i64 [ %353, %345 ], [ 0, %341 ]
  %348 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %346
  %349 = load i16, ptr %348, align 2, !tbaa !27
  %350 = sext i16 %349 to i64
  %351 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %350
  store i16 0, ptr %351, align 2, !tbaa !27
  %352 = add nuw nsw i64 %346, 1
  %353 = add i64 %347, 1
  %354 = icmp eq i64 %353, %343
  br i1 %354, label %355, label %345, !llvm.loop !30

355:                                              ; preds = %345, %341
  %356 = phi i64 [ %337, %341 ], [ %352, %345 ]
  %357 = add nsw i64 %332, -12
  %358 = icmp ult i64 %357, 3
  br i1 %358, label %421, label %398

359:                                              ; preds = %383, %331
  %360 = phi i64 [ %334, %331 ], [ %384, %383 ]
  %361 = phi i64 [ 0, %331 ], [ %396, %383 ]
  %362 = phi i64 [ %325, %331 ], [ %387, %383 ]
  %363 = phi i32 [ %327, %331 ], [ %389, %383 ]
  %364 = shl i64 %362, 32
  %365 = ashr exact i64 %364, 32
  %366 = icmp slt i32 %363, 3
  br i1 %366, label %367, label %383

367:                                              ; preds = %359, %373
  %368 = phi i64 [ %374, %373 ], [ %360, %359 ]
  %369 = phi i64 [ %380, %373 ], [ %365, %359 ]
  %370 = phi i32 [ %381, %373 ], [ %363, %359 ]
  %371 = icmp eq i64 %368, %335
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

373:                                              ; preds = %367
  %374 = add i64 %368, 1
  store i64 %374, ptr %20, align 8, !tbaa !19
  %375 = getelementptr inbounds i8, ptr %336, i64 %368
  %376 = load i8, ptr %375, align 1, !tbaa !20
  %377 = zext i8 %376 to i64
  %378 = zext nneg i32 %370 to i64
  %379 = shl i64 %377, %378
  %380 = or i64 %379, %369
  %381 = add nsw i32 %370, 8
  store i32 %381, ptr %22, align 4, !tbaa !18
  %382 = icmp slt i32 %370, -5
  br i1 %382, label %367, label %383, !llvm.loop !21

383:                                              ; preds = %373, %359
  %384 = phi i64 [ %360, %359 ], [ %374, %373 ]
  %385 = phi i64 [ %365, %359 ], [ %380, %373 ]
  %386 = phi i32 [ %363, %359 ], [ %381, %373 ]
  %387 = lshr i64 %385, 3
  %388 = trunc i64 %387 to i32
  store i32 %388, ptr %21, align 8, !tbaa !17
  %389 = add nsw i32 %386, -3
  store i32 %389, ptr %22, align 4, !tbaa !18
  %390 = trunc i64 %385 to i16
  %391 = and i16 %390, 7
  %392 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %361
  %393 = load i16, ptr %392, align 2, !tbaa !27
  %394 = sext i16 %393 to i64
  %395 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %394
  store i16 %391, ptr %395, align 2, !tbaa !27
  %396 = add nuw nsw i64 %361, 1
  %397 = icmp eq i64 %361, %333
  br i1 %397, label %338, label %359, !llvm.loop !32

398:                                              ; preds = %355, %398
  %399 = phi i64 [ %419, %398 ], [ %356, %355 ]
  %400 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %399
  %401 = load i16, ptr %400, align 2, !tbaa !27
  %402 = sext i16 %401 to i64
  %403 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %402
  store i16 0, ptr %403, align 2, !tbaa !27
  %404 = add nuw nsw i64 %399, 1
  %405 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !27
  %407 = sext i16 %406 to i64
  %408 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %407
  store i16 0, ptr %408, align 2, !tbaa !27
  %409 = add nuw nsw i64 %399, 2
  %410 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %409
  %411 = load i16, ptr %410, align 2, !tbaa !27
  %412 = sext i16 %411 to i64
  %413 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %412
  store i16 0, ptr %413, align 2, !tbaa !27
  %414 = add nuw nsw i64 %399, 3
  %415 = getelementptr inbounds [19 x i16], ptr @dynamic.order, i64 0, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !27
  %417 = sext i16 %416 to i64
  %418 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %417
  store i16 0, ptr %418, align 2, !tbaa !27
  %419 = add nuw nsw i64 %399, 4
  %420 = icmp eq i64 %419, 19
  br i1 %420, label %421, label %398, !llvm.loop !33

421:                                              ; preds = %355, %398, %338
  %422 = call fastcc i32 @construct(ptr noundef nonnull %10, ptr noundef nonnull %5, i32 noundef 19)
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %663

424:                                              ; preds = %421
  %425 = add nuw nsw i32 %296, %262
  %426 = load i32, ptr %21, align 8, !tbaa !17
  %427 = load i32, ptr %22, align 4, !tbaa !18
  %428 = load i64, ptr %19, align 8
  %429 = load ptr, ptr %17, align 8
  %430 = load i64, ptr %20, align 8, !tbaa !19
  br label %431

431:                                              ; preds = %624, %424
  %432 = phi i64 [ %430, %424 ], [ %625, %624 ]
  %433 = phi i32 [ 0, %424 ], [ %628, %624 ]
  %434 = phi i32 [ %426, %424 ], [ %627, %624 ]
  %435 = phi i32 [ %427, %424 ], [ %626, %624 ]
  br label %436

436:                                              ; preds = %482, %431
  %437 = phi i64 [ %432, %431 ], [ %484, %482 ]
  %438 = phi i32 [ 1, %431 ], [ %479, %482 ]
  %439 = phi i32 [ 0, %431 ], [ %478, %482 ]
  %440 = phi i32 [ 0, %431 ], [ %477, %482 ]
  %441 = phi i32 [ 0, %431 ], [ %476, %482 ]
  %442 = phi i32 [ %434, %431 ], [ %487, %482 ]
  %443 = phi i32 [ %435, %431 ], [ %488, %482 ]
  %444 = phi ptr [ %29, %431 ], [ %475, %482 ]
  %445 = icmp eq i32 %443, 0
  br i1 %445, label %474, label %446

446:                                              ; preds = %436
  %447 = add i32 %443, %438
  br label %448

448:                                              ; preds = %463, %446
  %449 = phi i32 [ %464, %463 ], [ %443, %446 ]
  %450 = phi ptr [ %465, %463 ], [ %444, %446 ]
  %451 = phi i32 [ %458, %463 ], [ %442, %446 ]
  %452 = phi i32 [ %466, %463 ], [ %441, %446 ]
  %453 = phi i32 [ %468, %463 ], [ %440, %446 ]
  %454 = phi i32 [ %469, %463 ], [ %439, %446 ]
  %455 = phi i32 [ %470, %463 ], [ %438, %446 ]
  %456 = and i32 %451, 1
  %457 = or i32 %454, %456
  %458 = ashr i32 %451, 1
  %459 = load i16, ptr %450, align 2, !tbaa !27
  %460 = sext i16 %459 to i32
  %461 = sub nsw i32 %457, %460
  %462 = icmp slt i32 %461, %453
  br i1 %462, label %489, label %463

463:                                              ; preds = %448
  %464 = add nsw i32 %449, -1
  %465 = getelementptr inbounds i16, ptr %450, i64 1
  %466 = add nsw i32 %452, %460
  %467 = add nsw i32 %453, %460
  %468 = shl i32 %467, 1
  %469 = shl i32 %457, 1
  %470 = add nsw i32 %455, 1
  %471 = icmp eq i32 %464, 0
  br i1 %471, label %472, label %448, !llvm.loop !34

472:                                              ; preds = %463
  %473 = icmp eq i32 %447, 16
  br i1 %473, label %663, label %474

474:                                              ; preds = %472, %436
  %475 = phi ptr [ %465, %472 ], [ %444, %436 ]
  %476 = phi i32 [ %466, %472 ], [ %441, %436 ]
  %477 = phi i32 [ %468, %472 ], [ %440, %436 ]
  %478 = phi i32 [ %469, %472 ], [ %439, %436 ]
  %479 = phi i32 [ %447, %472 ], [ %438, %436 ]
  %480 = icmp eq i64 %437, %428
  br i1 %480, label %481, label %482

481:                                              ; preds = %474
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

482:                                              ; preds = %474
  %483 = sub nsw i32 16, %479
  %484 = add i64 %437, 1
  store i64 %484, ptr %20, align 8, !tbaa !19
  %485 = getelementptr inbounds i8, ptr %429, i64 %437
  %486 = load i8, ptr %485, align 1, !tbaa !20
  %487 = zext i8 %486 to i32
  %488 = call i32 @llvm.smin.i32(i32 %483, i32 8)
  br label %436

489:                                              ; preds = %448
  store i32 %458, ptr %21, align 8, !tbaa !17
  %490 = sub nsw i32 %435, %455
  %491 = and i32 %490, 7
  store i32 %491, ptr %22, align 4, !tbaa !18
  %492 = sub i32 %452, %453
  %493 = add i32 %492, %457
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i16, ptr %7, i64 %494
  %496 = load i16, ptr %495, align 2, !tbaa !27
  %497 = icmp slt i16 %496, 0
  br i1 %497, label %661, label %498

498:                                              ; preds = %489
  %499 = icmp ult i16 %496, 16
  br i1 %499, label %500, label %504

500:                                              ; preds = %498
  %501 = add nsw i32 %433, 1
  %502 = sext i32 %433 to i64
  %503 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %502
  store i16 %496, ptr %503, align 2, !tbaa !27
  br label %624

504:                                              ; preds = %498
  switch i16 %496, label %555 [
    i16 16, label %505
    i16 17, label %533
  ]

505:                                              ; preds = %504
  %506 = icmp eq i32 %433, 0
  br i1 %506, label %663, label %507

507:                                              ; preds = %505
  %508 = add nsw i32 %433, -1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %509
  %511 = load i16, ptr %510, align 2, !tbaa !27
  %512 = sext i32 %458 to i64
  %513 = icmp ult i32 %491, 2
  br i1 %513, label %514, label %526

514:                                              ; preds = %507
  %515 = icmp eq i64 %437, %428
  br i1 %515, label %516, label %517

516:                                              ; preds = %514
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

517:                                              ; preds = %514
  %518 = add i64 %437, 1
  store i64 %518, ptr %20, align 8, !tbaa !19
  %519 = getelementptr inbounds i8, ptr %429, i64 %437
  %520 = load i8, ptr %519, align 1, !tbaa !20
  %521 = zext i8 %520 to i64
  %522 = zext nneg i32 %491 to i64
  %523 = shl nuw nsw i64 %521, %522
  %524 = or i64 %523, %512
  %525 = or disjoint i32 %491, 8
  br label %526

526:                                              ; preds = %517, %507
  %527 = phi i64 [ %437, %507 ], [ %518, %517 ]
  %528 = phi i64 [ %512, %507 ], [ %524, %517 ]
  %529 = phi i32 [ %491, %507 ], [ %525, %517 ]
  %530 = lshr i64 %528, 2
  %531 = trunc i64 %530 to i32
  store i32 %531, ptr %21, align 8, !tbaa !17
  %532 = add nsw i32 %529, -2
  br label %577

533:                                              ; preds = %504
  %534 = sext i32 %458 to i64
  %535 = icmp ult i32 %491, 3
  br i1 %535, label %536, label %548

536:                                              ; preds = %533
  %537 = icmp eq i64 %437, %428
  br i1 %537, label %538, label %539

538:                                              ; preds = %536
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

539:                                              ; preds = %536
  %540 = add i64 %437, 1
  store i64 %540, ptr %20, align 8, !tbaa !19
  %541 = getelementptr inbounds i8, ptr %429, i64 %437
  %542 = load i8, ptr %541, align 1, !tbaa !20
  %543 = zext i8 %542 to i64
  %544 = zext nneg i32 %491 to i64
  %545 = shl nuw nsw i64 %543, %544
  %546 = or i64 %545, %534
  %547 = or disjoint i32 %491, 8
  br label %548

548:                                              ; preds = %539, %533
  %549 = phi i64 [ %437, %533 ], [ %540, %539 ]
  %550 = phi i64 [ %534, %533 ], [ %546, %539 ]
  %551 = phi i32 [ %491, %533 ], [ %547, %539 ]
  %552 = lshr i64 %550, 3
  %553 = trunc i64 %552 to i32
  store i32 %553, ptr %21, align 8, !tbaa !17
  %554 = add nsw i32 %551, -3
  br label %577

555:                                              ; preds = %504
  %556 = sext i32 %458 to i64
  %557 = icmp eq i32 %491, 7
  br i1 %557, label %570, label %558

558:                                              ; preds = %555
  %559 = icmp eq i64 %437, %428
  br i1 %559, label %560, label %561

560:                                              ; preds = %558
  call void @longjmp(ptr noundef nonnull %23, i32 noundef 1) #9
  unreachable

561:                                              ; preds = %558
  %562 = add i64 %437, 1
  store i64 %562, ptr %20, align 8, !tbaa !19
  %563 = getelementptr inbounds i8, ptr %429, i64 %437
  %564 = load i8, ptr %563, align 1, !tbaa !20
  %565 = zext i8 %564 to i64
  %566 = zext nneg i32 %491 to i64
  %567 = shl nuw nsw i64 %565, %566
  %568 = or i64 %567, %556
  %569 = or disjoint i32 %491, 8
  br label %570

570:                                              ; preds = %561, %555
  %571 = phi i64 [ %437, %555 ], [ %562, %561 ]
  %572 = phi i64 [ %556, %555 ], [ %568, %561 ]
  %573 = phi i32 [ 7, %555 ], [ %569, %561 ]
  %574 = lshr i64 %572, 7
  %575 = trunc i64 %574 to i32
  store i32 %575, ptr %21, align 8, !tbaa !17
  %576 = add nsw i32 %573, -7
  br label %577

577:                                              ; preds = %570, %548, %526
  %578 = phi i64 [ %549, %548 ], [ %571, %570 ], [ %527, %526 ]
  %579 = phi i32 [ %554, %548 ], [ %576, %570 ], [ %532, %526 ]
  %580 = phi i64 [ %550, %548 ], [ %572, %570 ], [ %528, %526 ]
  %581 = phi i32 [ 7, %548 ], [ 127, %570 ], [ 3, %526 ]
  %582 = phi i32 [ 3, %548 ], [ 11, %570 ], [ 3, %526 ]
  %583 = phi i32 [ %553, %548 ], [ %575, %570 ], [ %531, %526 ]
  %584 = phi i16 [ 0, %548 ], [ 0, %570 ], [ %511, %526 ]
  store i32 %579, ptr %22, align 4, !tbaa !18
  %585 = trunc i64 %580 to i32
  %586 = and i32 %581, %585
  %587 = add nuw nsw i32 %586, %582
  %588 = add nsw i32 %587, %433
  %589 = icmp sgt i32 %588, %425
  br i1 %589, label %663, label %590

590:                                              ; preds = %577
  %591 = sext i32 %433 to i64
  %592 = add nuw nsw i32 %582, %586
  %593 = zext nneg i32 %592 to i64
  %594 = icmp ult i32 %592, 16
  br i1 %594, label %611, label %595

595:                                              ; preds = %590
  %596 = and i64 %593, 240
  %597 = add nsw i64 %596, %591
  %598 = trunc i64 %596 to i32
  %599 = sub nsw i32 %587, %598
  %600 = insertelement <8 x i16> poison, i16 %584, i64 0
  %601 = shufflevector <8 x i16> %600, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %602

602:                                              ; preds = %602, %595
  %603 = phi i64 [ 0, %595 ], [ %607, %602 ]
  %604 = add i64 %603, %591
  %605 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %604
  %606 = getelementptr inbounds i16, ptr %605, i64 8
  store <8 x i16> %601, ptr %605, align 2, !tbaa !27
  store <8 x i16> %601, ptr %606, align 2, !tbaa !27
  %607 = add nuw i64 %603, 16
  %608 = icmp eq i64 %607, %596
  br i1 %608, label %609, label %602, !llvm.loop !35

609:                                              ; preds = %602
  %610 = icmp eq i64 %596, %593
  br i1 %610, label %621, label %611

611:                                              ; preds = %590, %609
  %612 = phi i64 [ %591, %590 ], [ %597, %609 ]
  %613 = phi i32 [ %587, %590 ], [ %599, %609 ]
  br label %614

614:                                              ; preds = %611, %614
  %615 = phi i64 [ %618, %614 ], [ %612, %611 ]
  %616 = phi i32 [ %617, %614 ], [ %613, %611 ]
  %617 = add nsw i32 %616, -1
  %618 = add nsw i64 %615, 1
  %619 = getelementptr inbounds [316 x i16], ptr %5, i64 0, i64 %615
  store i16 %584, ptr %619, align 2, !tbaa !27
  %620 = icmp eq i32 %617, 0
  br i1 %620, label %621, label %614, !llvm.loop !38

621:                                              ; preds = %614, %609
  %622 = phi i64 [ %597, %609 ], [ %618, %614 ]
  %623 = trunc i64 %622 to i32
  br label %624

624:                                              ; preds = %621, %500
  %625 = phi i64 [ %437, %500 ], [ %578, %621 ]
  %626 = phi i32 [ %491, %500 ], [ %579, %621 ]
  %627 = phi i32 [ %458, %500 ], [ %583, %621 ]
  %628 = phi i32 [ %501, %500 ], [ %623, %621 ]
  %629 = icmp slt i32 %628, %425
  br i1 %629, label %431, label %630, !llvm.loop !39

630:                                              ; preds = %624
  %631 = load i16, ptr %30, align 16, !tbaa !27
  %632 = icmp eq i16 %631, 0
  br i1 %632, label %663, label %633

633:                                              ; preds = %630
  %634 = call fastcc i32 @construct(ptr noundef nonnull %10, ptr noundef nonnull %5, i32 noundef %262)
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %645, label %636

636:                                              ; preds = %633
  %637 = icmp slt i32 %634, 0
  br i1 %637, label %663, label %638

638:                                              ; preds = %636
  %639 = load i16, ptr %6, align 16, !tbaa !27
  %640 = sext i16 %639 to i32
  %641 = load i16, ptr %29, align 2, !tbaa !27
  %642 = sext i16 %641 to i32
  %643 = add nsw i32 %642, %640
  %644 = icmp eq i32 %262, %643
  br i1 %644, label %645, label %663

645:                                              ; preds = %638, %633
  %646 = zext nneg i32 %262 to i64
  %647 = getelementptr inbounds i16, ptr %5, i64 %646
  %648 = call fastcc i32 @construct(ptr noundef nonnull %11, ptr noundef nonnull %647, i32 noundef %296)
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %659, label %650

650:                                              ; preds = %645
  %651 = icmp slt i32 %648, 0
  br i1 %651, label %663, label %652

652:                                              ; preds = %650
  %653 = load i16, ptr %8, align 16, !tbaa !27
  %654 = sext i16 %653 to i32
  %655 = load i16, ptr %31, align 2, !tbaa !27
  %656 = sext i16 %655 to i32
  %657 = add nsw i32 %656, %654
  %658 = icmp eq i32 %296, %657
  br i1 %658, label %659, label %663

659:                                              ; preds = %652, %645
  %660 = call fastcc i32 @codes(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !29
  br label %663

661:                                              ; preds = %489
  %662 = sext i16 %496 to i32
  br label %663

663:                                              ; preds = %505, %577, %472, %322, %421, %630, %636, %638, %650, %652, %659, %661
  %664 = phi i32 [ %660, %659 ], [ -3, %322 ], [ -4, %421 ], [ -9, %630 ], [ -7, %638 ], [ -7, %636 ], [ -8, %652 ], [ -8, %650 ], [ %662, %661 ], [ -10, %472 ], [ -6, %577 ], [ -5, %505 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 572, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %5) #7
  br label %665

665:                                              ; preds = %226, %663
  %666 = phi i32 [ %227, %226 ], [ %664, %663 ]
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %671

668:                                              ; preds = %194, %198, %177, %220, %665
  %669 = and i64 %98, 1
  %670 = icmp eq i64 %669, 0
  br i1 %670, label %72, label %673, !llvm.loop !40

671:                                              ; preds = %665
  %672 = icmp slt i32 %666, 1
  br i1 %672, label %673, label %677

673:                                              ; preds = %128, %158, %141, %668, %671
  %674 = phi i32 [ %666, %671 ], [ -2, %141 ], [ -2, %158 ], [ -1, %128 ], [ 0, %668 ]
  %675 = load i64, ptr %16, align 8, !tbaa !14
  store i64 %675, ptr %1, align 8, !tbaa !12
  %676 = load i64, ptr %20, align 8, !tbaa !19
  store i64 %676, ptr %3, align 8, !tbaa !12
  br label %677

677:                                              ; preds = %136, %165, %174, %4, %673, %671
  %678 = phi i32 [ %674, %673 ], [ 1, %671 ], [ 2, %4 ], [ 1, %174 ], [ 2, %165 ], [ 2, %136 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #7
  ret i32 %678
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @construct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %5, i8 0, i64 32, i1 false), !tbaa !27
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %3
  %8 = zext nneg i32 %2 to i64
  %9 = and i64 %8, 3
  %10 = icmp ult i32 %2, 4
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = and i64 %8, 2147483644
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %43, %13 ]
  %15 = phi i64 [ 0, %11 ], [ %44, %13 ]
  %16 = getelementptr inbounds i16, ptr %1, i64 %14
  %17 = load i16, ptr %16, align 2, !tbaa !27
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds i16, ptr %5, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !27
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 2, !tbaa !27
  %22 = or disjoint i64 %14, 1
  %23 = getelementptr inbounds i16, ptr %1, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !27
  %25 = sext i16 %24 to i64
  %26 = getelementptr inbounds i16, ptr %5, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !27
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 2, !tbaa !27
  %29 = or disjoint i64 %14, 2
  %30 = getelementptr inbounds i16, ptr %1, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !27
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds i16, ptr %5, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !27
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 2, !tbaa !27
  %36 = or disjoint i64 %14, 3
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !27
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i16, ptr %5, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !27
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 2, !tbaa !27
  %43 = add nuw nsw i64 %14, 4
  %44 = add i64 %15, 4
  %45 = icmp eq i64 %44, %12
  br i1 %45, label %46, label %13, !llvm.loop !41

46:                                               ; preds = %13, %7
  %47 = phi i64 [ 0, %7 ], [ %43, %13 ]
  %48 = icmp eq i64 %9, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %58, %49 ], [ %47, %46 ]
  %51 = phi i64 [ %59, %49 ], [ 0, %46 ]
  %52 = getelementptr inbounds i16, ptr %1, i64 %50
  %53 = load i16, ptr %52, align 2, !tbaa !27
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds i16, ptr %5, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !27
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 2, !tbaa !27
  %58 = add nuw nsw i64 %50, 1
  %59 = add i64 %51, 1
  %60 = icmp eq i64 %59, %9
  br i1 %60, label %61, label %49, !llvm.loop !42

61:                                               ; preds = %49, %46
  %62 = load i16, ptr %5, align 2, !tbaa !27
  %63 = sext i16 %62 to i32
  br label %64

64:                                               ; preds = %61, %3
  %65 = phi i32 [ %63, %61 ], [ 0, %3 ]
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %256, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i16, ptr %5, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !27
  %70 = sext i16 %69 to i32
  %71 = sub nsw i32 2, %70
  %72 = icmp sgt i16 %69, 2
  br i1 %72, label %256, label %73

73:                                               ; preds = %67
  %74 = shl nuw nsw i32 %71, 1
  %75 = getelementptr inbounds i16, ptr %5, i64 2
  %76 = load i16, ptr %75, align 2, !tbaa !27
  %77 = sext i16 %76 to i32
  %78 = sub nsw i32 %74, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %256, label %80

80:                                               ; preds = %73
  %81 = shl nuw nsw i32 %78, 1
  %82 = getelementptr inbounds i16, ptr %5, i64 3
  %83 = load i16, ptr %82, align 2, !tbaa !27
  %84 = sext i16 %83 to i32
  %85 = sub nsw i32 %81, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %256, label %87

87:                                               ; preds = %80
  %88 = shl nuw nsw i32 %85, 1
  %89 = getelementptr inbounds i16, ptr %5, i64 4
  %90 = load i16, ptr %89, align 2, !tbaa !27
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 %88, %91
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %256, label %94

94:                                               ; preds = %87
  %95 = shl nuw i32 %92, 1
  %96 = getelementptr inbounds i16, ptr %5, i64 5
  %97 = load i16, ptr %96, align 2, !tbaa !27
  %98 = sext i16 %97 to i32
  %99 = sub nsw i32 %95, %98
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %256, label %101

101:                                              ; preds = %94
  %102 = shl nuw i32 %99, 1
  %103 = getelementptr inbounds i16, ptr %5, i64 6
  %104 = load i16, ptr %103, align 2, !tbaa !27
  %105 = sext i16 %104 to i32
  %106 = sub nsw i32 %102, %105
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %256, label %108

108:                                              ; preds = %101
  %109 = shl nuw i32 %106, 1
  %110 = getelementptr inbounds i16, ptr %5, i64 7
  %111 = load i16, ptr %110, align 2, !tbaa !27
  %112 = sext i16 %111 to i32
  %113 = sub nsw i32 %109, %112
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %256, label %115

115:                                              ; preds = %108
  %116 = shl nuw i32 %113, 1
  %117 = getelementptr inbounds i16, ptr %5, i64 8
  %118 = load i16, ptr %117, align 2, !tbaa !27
  %119 = sext i16 %118 to i32
  %120 = sub nsw i32 %116, %119
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %256, label %122

122:                                              ; preds = %115
  %123 = shl nuw i32 %120, 1
  %124 = getelementptr inbounds i16, ptr %5, i64 9
  %125 = load i16, ptr %124, align 2, !tbaa !27
  %126 = sext i16 %125 to i32
  %127 = sub nsw i32 %123, %126
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %256, label %129

129:                                              ; preds = %122
  %130 = shl nuw i32 %127, 1
  %131 = getelementptr inbounds i16, ptr %5, i64 10
  %132 = load i16, ptr %131, align 2, !tbaa !27
  %133 = sext i16 %132 to i32
  %134 = sub nsw i32 %130, %133
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %256, label %136

136:                                              ; preds = %129
  %137 = shl nuw i32 %134, 1
  %138 = getelementptr inbounds i16, ptr %5, i64 11
  %139 = load i16, ptr %138, align 2, !tbaa !27
  %140 = sext i16 %139 to i32
  %141 = sub nsw i32 %137, %140
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %256, label %143

143:                                              ; preds = %136
  %144 = shl nuw i32 %141, 1
  %145 = getelementptr inbounds i16, ptr %5, i64 12
  %146 = load i16, ptr %145, align 2, !tbaa !27
  %147 = sext i16 %146 to i32
  %148 = sub nsw i32 %144, %147
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %256, label %150

150:                                              ; preds = %143
  %151 = shl nuw i32 %148, 1
  %152 = getelementptr inbounds i16, ptr %5, i64 13
  %153 = load i16, ptr %152, align 2, !tbaa !27
  %154 = sext i16 %153 to i32
  %155 = sub nsw i32 %151, %154
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %256, label %157

157:                                              ; preds = %150
  %158 = shl nuw i32 %155, 1
  %159 = getelementptr inbounds i16, ptr %5, i64 14
  %160 = load i16, ptr %159, align 2, !tbaa !27
  %161 = sext i16 %160 to i32
  %162 = sub nsw i32 %158, %161
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %256, label %164

164:                                              ; preds = %157
  %165 = shl nuw i32 %162, 1
  %166 = getelementptr inbounds i16, ptr %5, i64 15
  %167 = load i16, ptr %166, align 2, !tbaa !27
  %168 = sext i16 %167 to i32
  %169 = sub nsw i32 %165, %168
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %256, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 1
  store i16 0, ptr %172, align 2, !tbaa !27
  %173 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 2
  store i16 %69, ptr %173, align 4, !tbaa !27
  %174 = add i16 %76, %69
  %175 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 3
  store i16 %174, ptr %175, align 2, !tbaa !27
  %176 = add i16 %83, %174
  %177 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 4
  store i16 %176, ptr %177, align 8, !tbaa !27
  %178 = add i16 %90, %176
  %179 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 5
  store i16 %178, ptr %179, align 2, !tbaa !27
  %180 = add i16 %97, %178
  %181 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 6
  store i16 %180, ptr %181, align 4, !tbaa !27
  %182 = add i16 %104, %180
  %183 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 7
  store i16 %182, ptr %183, align 2, !tbaa !27
  %184 = add i16 %111, %182
  %185 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 8
  store i16 %184, ptr %185, align 16, !tbaa !27
  %186 = add i16 %118, %184
  %187 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 9
  store i16 %186, ptr %187, align 2, !tbaa !27
  %188 = add i16 %125, %186
  %189 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 10
  store i16 %188, ptr %189, align 4, !tbaa !27
  %190 = add i16 %132, %188
  %191 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 11
  store i16 %190, ptr %191, align 2, !tbaa !27
  %192 = add i16 %139, %190
  %193 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 12
  store i16 %192, ptr %193, align 8, !tbaa !27
  %194 = add i16 %146, %192
  %195 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 13
  store i16 %194, ptr %195, align 2, !tbaa !27
  %196 = add i16 %153, %194
  %197 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 14
  store i16 %196, ptr %197, align 4, !tbaa !27
  %198 = add i16 %160, %196
  %199 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 15
  store i16 %198, ptr %199, align 2, !tbaa !27
  br i1 %6, label %200, label %256

200:                                              ; preds = %171
  %201 = getelementptr inbounds %struct.huffman, ptr %0, i64 0, i32 1
  %202 = zext nneg i32 %2 to i64
  %203 = and i64 %202, 1
  %204 = icmp eq i32 %2, 1
  br i1 %204, label %240, label %205

205:                                              ; preds = %200
  %206 = and i64 %202, 2147483646
  br label %207

207:                                              ; preds = %236, %205
  %208 = phi i64 [ 0, %205 ], [ %237, %236 ]
  %209 = phi i64 [ 0, %205 ], [ %238, %236 ]
  %210 = getelementptr inbounds i16, ptr %1, i64 %208
  %211 = load i16, ptr %210, align 2, !tbaa !27
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %207
  %214 = trunc i64 %208 to i16
  %215 = load ptr, ptr %201, align 8, !tbaa !26
  %216 = sext i16 %211 to i64
  %217 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !27
  %219 = add i16 %218, 1
  store i16 %219, ptr %217, align 2, !tbaa !27
  %220 = sext i16 %218 to i64
  %221 = getelementptr inbounds i16, ptr %215, i64 %220
  store i16 %214, ptr %221, align 2, !tbaa !27
  br label %222

222:                                              ; preds = %207, %213
  %223 = or disjoint i64 %208, 1
  %224 = getelementptr inbounds i16, ptr %1, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !27
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %222
  %228 = trunc i64 %223 to i16
  %229 = load ptr, ptr %201, align 8, !tbaa !26
  %230 = sext i16 %225 to i64
  %231 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !27
  %233 = add i16 %232, 1
  store i16 %233, ptr %231, align 2, !tbaa !27
  %234 = sext i16 %232 to i64
  %235 = getelementptr inbounds i16, ptr %229, i64 %234
  store i16 %228, ptr %235, align 2, !tbaa !27
  br label %236

236:                                              ; preds = %227, %222
  %237 = add nuw nsw i64 %208, 2
  %238 = add i64 %209, 2
  %239 = icmp eq i64 %238, %206
  br i1 %239, label %240, label %207, !llvm.loop !43

240:                                              ; preds = %236, %200
  %241 = phi i64 [ 0, %200 ], [ %237, %236 ]
  %242 = icmp eq i64 %203, 0
  br i1 %242, label %256, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds i16, ptr %1, i64 %241
  %245 = load i16, ptr %244, align 2, !tbaa !27
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %243
  %248 = trunc i64 %241 to i16
  %249 = load ptr, ptr %201, align 8, !tbaa !26
  %250 = sext i16 %245 to i64
  %251 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !27
  %253 = add i16 %252, 1
  store i16 %253, ptr %251, align 2, !tbaa !27
  %254 = sext i16 %252 to i64
  %255 = getelementptr inbounds i16, ptr %249, i64 %254
  store i16 %248, ptr %255, align 2, !tbaa !27
  br label %256

256:                                              ; preds = %240, %247, %243, %67, %73, %80, %87, %94, %101, %108, %115, %122, %129, %136, %143, %150, %157, %164, %171, %64
  %257 = phi i32 [ 0, %64 ], [ %169, %171 ], [ %71, %67 ], [ %78, %73 ], [ %85, %80 ], [ %92, %87 ], [ %99, %94 ], [ %106, %101 ], [ %113, %108 ], [ %120, %115 ], [ %127, %122 ], [ %134, %129 ], [ %141, %136 ], [ %148, %143 ], [ %155, %150 ], [ %162, %157 ], [ %169, %164 ], [ %169, %243 ], [ %169, %247 ], [ %169, %240 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret i32 %257
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.huffman, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.huffman, ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %313, %3
  %14 = load i32, ptr %4, align 8, !tbaa !17
  %15 = load i32, ptr %5, align 4, !tbaa !18
  %16 = load ptr, ptr %1, align 8, !tbaa !24
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  br label %18

18:                                               ; preds = %66, %13
  %19 = phi i32 [ 1, %13 ], [ %60, %66 ]
  %20 = phi i32 [ 0, %13 ], [ %59, %66 ]
  %21 = phi i32 [ 0, %13 ], [ %58, %66 ]
  %22 = phi i32 [ 0, %13 ], [ %57, %66 ]
  %23 = phi i32 [ %14, %13 ], [ %72, %66 ]
  %24 = phi i32 [ %15, %13 ], [ %73, %66 ]
  %25 = phi ptr [ %17, %13 ], [ %56, %66 ]
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %18
  %28 = add i32 %24, %19
  br label %29

29:                                               ; preds = %44, %27
  %30 = phi i32 [ %45, %44 ], [ %24, %27 ]
  %31 = phi ptr [ %46, %44 ], [ %25, %27 ]
  %32 = phi i32 [ %39, %44 ], [ %23, %27 ]
  %33 = phi i32 [ %47, %44 ], [ %22, %27 ]
  %34 = phi i32 [ %49, %44 ], [ %21, %27 ]
  %35 = phi i32 [ %50, %44 ], [ %20, %27 ]
  %36 = phi i32 [ %51, %44 ], [ %19, %27 ]
  %37 = and i32 %32, 1
  %38 = or i32 %35, %37
  %39 = ashr i32 %32, 1
  %40 = load i16, ptr %31, align 2, !tbaa !27
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %38, %41
  %43 = icmp slt i32 %42, %34
  br i1 %43, label %74, label %44

44:                                               ; preds = %29
  %45 = add nsw i32 %30, -1
  %46 = getelementptr inbounds i16, ptr %31, i64 1
  %47 = add nsw i32 %33, %41
  %48 = add nsw i32 %34, %41
  %49 = shl i32 %48, 1
  %50 = shl i32 %38, 1
  %51 = add nsw i32 %36, 1
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %53, label %29, !llvm.loop !34

53:                                               ; preds = %44
  %54 = icmp eq i32 %28, 16
  br i1 %54, label %316, label %55

55:                                               ; preds = %18, %53
  %56 = phi ptr [ %46, %53 ], [ %25, %18 ]
  %57 = phi i32 [ %47, %53 ], [ %22, %18 ]
  %58 = phi i32 [ %49, %53 ], [ %21, %18 ]
  %59 = phi i32 [ %50, %53 ], [ %20, %18 ]
  %60 = phi i32 [ %28, %53 ], [ %19, %18 ]
  %61 = load i64, ptr %6, align 8, !tbaa !19
  %62 = load i64, ptr %7, align 8, !tbaa !16
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 8
  tail call void @longjmp(ptr noundef nonnull %65, i32 noundef 1) #9
  unreachable

66:                                               ; preds = %55
  %67 = sub nsw i32 16, %60
  %68 = load ptr, ptr %8, align 8, !tbaa !15
  %69 = add i64 %61, 1
  store i64 %69, ptr %6, align 8, !tbaa !19
  %70 = getelementptr inbounds i8, ptr %68, i64 %61
  %71 = load i8, ptr %70, align 1, !tbaa !20
  %72 = zext i8 %71 to i32
  %73 = tail call i32 @llvm.smin.i32(i32 %67, i32 8)
  br label %18

74:                                               ; preds = %29
  store i32 %39, ptr %4, align 8, !tbaa !17
  %75 = sub nsw i32 %15, %36
  %76 = and i32 %75, 7
  store i32 %76, ptr %5, align 4, !tbaa !18
  %77 = load ptr, ptr %9, align 8, !tbaa !26
  %78 = sub i32 %33, %34
  %79 = add i32 %78, %38
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %77, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !27
  %83 = sext i16 %82 to i32
  %84 = icmp slt i16 %82, 0
  br i1 %84, label %316, label %85

85:                                               ; preds = %74
  %86 = icmp ult i16 %82, 256
  br i1 %86, label %87, label %101

87:                                               ; preds = %85
  %88 = load ptr, ptr %0, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  %90 = load i64, ptr %11, align 8, !tbaa !14
  br i1 %89, label %98, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %12, align 8, !tbaa !13
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %316, label %94

94:                                               ; preds = %91
  %95 = trunc i16 %82 to i8
  %96 = getelementptr inbounds i8, ptr %88, i64 %90
  store i8 %95, ptr %96, align 1, !tbaa !20
  %97 = load i64, ptr %11, align 8, !tbaa !14
  br label %98

98:                                               ; preds = %94, %87
  %99 = phi i64 [ %97, %94 ], [ %90, %87 ]
  %100 = add i64 %99, 1
  br label %310

101:                                              ; preds = %85
  %102 = icmp eq i16 %82, 256
  br i1 %102, label %316, label %103

103:                                              ; preds = %101
  %104 = icmp ugt i16 %82, 285
  br i1 %104, label %316, label %105

105:                                              ; preds = %103
  %106 = add nsw i32 %83, -257
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [29 x i16], ptr @codes.lens, i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !27
  %110 = sext i16 %109 to i32
  %111 = getelementptr inbounds [29 x i16], ptr @codes.lext, i64 0, i64 %107
  %112 = load i16, ptr %111, align 2, !tbaa !27
  %113 = sext i16 %112 to i32
  %114 = sext i32 %39 to i64
  %115 = icmp slt i32 %76, %113
  br i1 %115, label %116, label %137

116:                                              ; preds = %105
  %117 = load i64, ptr %7, align 8, !tbaa !16
  %118 = load i64, ptr %6, align 8, !tbaa !19
  br label %119

119:                                              ; preds = %126, %116
  %120 = phi i64 [ %118, %116 ], [ %128, %126 ]
  %121 = phi i64 [ %114, %116 ], [ %134, %126 ]
  %122 = phi i32 [ %76, %116 ], [ %135, %126 ]
  %123 = icmp eq i64 %120, %117
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 8
  tail call void @longjmp(ptr noundef nonnull %125, i32 noundef 1) #9
  unreachable

126:                                              ; preds = %119
  %127 = load ptr, ptr %8, align 8, !tbaa !15
  %128 = add i64 %120, 1
  store i64 %128, ptr %6, align 8, !tbaa !19
  %129 = getelementptr inbounds i8, ptr %127, i64 %120
  %130 = load i8, ptr %129, align 1, !tbaa !20
  %131 = zext i8 %130 to i64
  %132 = zext nneg i32 %122 to i64
  %133 = shl i64 %131, %132
  %134 = or i64 %133, %121
  %135 = add nuw nsw i32 %122, 8
  store i32 %135, ptr %5, align 4, !tbaa !18
  %136 = icmp slt i32 %135, %113
  br i1 %136, label %119, label %137, !llvm.loop !21

137:                                              ; preds = %126, %105
  %138 = phi i64 [ %114, %105 ], [ %134, %126 ]
  %139 = phi i32 [ %76, %105 ], [ %135, %126 ]
  %140 = zext i32 %113 to i64
  %141 = ashr i64 %138, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, ptr %4, align 8, !tbaa !17
  %143 = sub nsw i32 %139, %113
  store i32 %143, ptr %5, align 4, !tbaa !18
  %144 = shl nsw i64 -1, %140
  %145 = xor i64 %144, -1
  %146 = and i64 %138, %145
  %147 = trunc i64 %146 to i32
  %148 = add i32 %147, %110
  %149 = load ptr, ptr %2, align 8, !tbaa !24
  %150 = getelementptr inbounds i16, ptr %149, i64 1
  br label %151

151:                                              ; preds = %199, %137
  %152 = phi i32 [ 1, %137 ], [ %193, %199 ]
  %153 = phi i32 [ 0, %137 ], [ %192, %199 ]
  %154 = phi i32 [ 0, %137 ], [ %191, %199 ]
  %155 = phi i32 [ 0, %137 ], [ %190, %199 ]
  %156 = phi i32 [ %142, %137 ], [ %205, %199 ]
  %157 = phi i32 [ %143, %137 ], [ %206, %199 ]
  %158 = phi ptr [ %150, %137 ], [ %189, %199 ]
  %159 = icmp eq i32 %157, 0
  br i1 %159, label %188, label %160

160:                                              ; preds = %151
  %161 = add i32 %157, %152
  br label %162

162:                                              ; preds = %177, %160
  %163 = phi i32 [ %178, %177 ], [ %157, %160 ]
  %164 = phi ptr [ %179, %177 ], [ %158, %160 ]
  %165 = phi i32 [ %172, %177 ], [ %156, %160 ]
  %166 = phi i32 [ %180, %177 ], [ %155, %160 ]
  %167 = phi i32 [ %182, %177 ], [ %154, %160 ]
  %168 = phi i32 [ %183, %177 ], [ %153, %160 ]
  %169 = phi i32 [ %184, %177 ], [ %152, %160 ]
  %170 = and i32 %165, 1
  %171 = or i32 %168, %170
  %172 = ashr i32 %165, 1
  %173 = load i16, ptr %164, align 2, !tbaa !27
  %174 = sext i16 %173 to i32
  %175 = sub nsw i32 %171, %174
  %176 = icmp slt i32 %175, %167
  br i1 %176, label %207, label %177

177:                                              ; preds = %162
  %178 = add nsw i32 %163, -1
  %179 = getelementptr inbounds i16, ptr %164, i64 1
  %180 = add nsw i32 %166, %174
  %181 = add nsw i32 %167, %174
  %182 = shl i32 %181, 1
  %183 = shl i32 %171, 1
  %184 = add nsw i32 %169, 1
  %185 = icmp eq i32 %178, 0
  br i1 %185, label %186, label %162, !llvm.loop !34

186:                                              ; preds = %177
  %187 = icmp eq i32 %161, 16
  br i1 %187, label %316, label %188

188:                                              ; preds = %151, %186
  %189 = phi ptr [ %179, %186 ], [ %158, %151 ]
  %190 = phi i32 [ %180, %186 ], [ %155, %151 ]
  %191 = phi i32 [ %182, %186 ], [ %154, %151 ]
  %192 = phi i32 [ %183, %186 ], [ %153, %151 ]
  %193 = phi i32 [ %161, %186 ], [ %152, %151 ]
  %194 = load i64, ptr %6, align 8, !tbaa !19
  %195 = load i64, ptr %7, align 8, !tbaa !16
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 8
  tail call void @longjmp(ptr noundef nonnull %198, i32 noundef 1) #9
  unreachable

199:                                              ; preds = %188
  %200 = sub nsw i32 16, %193
  %201 = load ptr, ptr %8, align 8, !tbaa !15
  %202 = add i64 %194, 1
  store i64 %202, ptr %6, align 8, !tbaa !19
  %203 = getelementptr inbounds i8, ptr %201, i64 %194
  %204 = load i8, ptr %203, align 1, !tbaa !20
  %205 = zext i8 %204 to i32
  %206 = tail call i32 @llvm.smin.i32(i32 %200, i32 8)
  br label %151

207:                                              ; preds = %162
  store i32 %172, ptr %4, align 8, !tbaa !17
  %208 = sub nsw i32 %143, %169
  %209 = and i32 %208, 7
  store i32 %209, ptr %5, align 4, !tbaa !18
  %210 = load ptr, ptr %10, align 8, !tbaa !26
  %211 = sub i32 %166, %167
  %212 = add i32 %211, %171
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i16, ptr %210, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !27
  %216 = sext i16 %215 to i32
  %217 = icmp slt i16 %215, 0
  br i1 %217, label %316, label %218

218:                                              ; preds = %207
  %219 = zext nneg i32 %216 to i64
  %220 = getelementptr inbounds [30 x i16], ptr @codes.dists, i64 0, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !27
  %222 = sext i16 %221 to i64
  %223 = getelementptr inbounds [30 x i16], ptr @codes.dext, i64 0, i64 %219
  %224 = load i16, ptr %223, align 2, !tbaa !27
  %225 = sext i16 %224 to i32
  %226 = sext i32 %172 to i64
  %227 = icmp slt i32 %209, %225
  br i1 %227, label %228, label %249

228:                                              ; preds = %218
  %229 = load i64, ptr %7, align 8, !tbaa !16
  %230 = load i64, ptr %6, align 8, !tbaa !19
  br label %231

231:                                              ; preds = %238, %228
  %232 = phi i64 [ %230, %228 ], [ %240, %238 ]
  %233 = phi i64 [ %226, %228 ], [ %246, %238 ]
  %234 = phi i32 [ %209, %228 ], [ %247, %238 ]
  %235 = icmp eq i64 %232, %229
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 8
  tail call void @longjmp(ptr noundef nonnull %237, i32 noundef 1) #9
  unreachable

238:                                              ; preds = %231
  %239 = load ptr, ptr %8, align 8, !tbaa !15
  %240 = add i64 %232, 1
  store i64 %240, ptr %6, align 8, !tbaa !19
  %241 = getelementptr inbounds i8, ptr %239, i64 %232
  %242 = load i8, ptr %241, align 1, !tbaa !20
  %243 = zext i8 %242 to i64
  %244 = zext nneg i32 %234 to i64
  %245 = shl i64 %243, %244
  %246 = or i64 %245, %233
  %247 = add nuw nsw i32 %234, 8
  store i32 %247, ptr %5, align 4, !tbaa !18
  %248 = icmp slt i32 %247, %225
  br i1 %248, label %231, label %249, !llvm.loop !21

249:                                              ; preds = %238, %218
  %250 = phi i64 [ %226, %218 ], [ %246, %238 ]
  %251 = phi i32 [ %209, %218 ], [ %247, %238 ]
  %252 = zext i32 %225 to i64
  %253 = ashr i64 %250, %252
  %254 = trunc i64 %253 to i32
  store i32 %254, ptr %4, align 8, !tbaa !17
  %255 = sub nsw i32 %251, %225
  store i32 %255, ptr %5, align 4, !tbaa !18
  %256 = shl nsw i64 -1, %252
  %257 = xor i64 %256, -1
  %258 = and i64 %250, %257
  %259 = add i64 %258, %222
  %260 = and i64 %259, 4294967295
  %261 = load i64, ptr %11, align 8, !tbaa !14
  %262 = icmp ult i64 %261, %260
  br i1 %262, label %316, label %263

263:                                              ; preds = %249
  %264 = load ptr, ptr %0, align 8, !tbaa !5
  %265 = icmp eq ptr %264, null
  %266 = sext i32 %148 to i64
  %267 = add i64 %261, %266
  br i1 %265, label %310, label %268

268:                                              ; preds = %263
  %269 = load i64, ptr %12, align 8, !tbaa !13
  %270 = icmp ugt i64 %267, %269
  br i1 %270, label %316, label %271

271:                                              ; preds = %268
  %272 = icmp eq i32 %148, 0
  br i1 %272, label %313, label %273

273:                                              ; preds = %271
  %274 = add nsw i32 %110, -1
  %275 = and i32 %148, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %273
  %278 = add nsw i32 %148, -1
  %279 = load ptr, ptr %0, align 8, !tbaa !5
  %280 = sub i64 %261, %260
  %281 = getelementptr inbounds i8, ptr %279, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !20
  %283 = getelementptr inbounds i8, ptr %279, i64 %261
  store i8 %282, ptr %283, align 1, !tbaa !20
  %284 = load i64, ptr %11, align 8, !tbaa !14
  %285 = add i64 %284, 1
  store i64 %285, ptr %11, align 8, !tbaa !14
  br label %286

286:                                              ; preds = %277, %273
  %287 = phi i64 [ %261, %273 ], [ %285, %277 ]
  %288 = phi i32 [ %148, %273 ], [ %278, %277 ]
  %289 = sub i32 0, %147
  %290 = icmp eq i32 %274, %289
  br i1 %290, label %313, label %291

291:                                              ; preds = %286, %291
  %292 = phi i64 [ %308, %291 ], [ %287, %286 ]
  %293 = phi i32 [ %301, %291 ], [ %288, %286 ]
  %294 = load ptr, ptr %0, align 8, !tbaa !5
  %295 = sub i64 %292, %260
  %296 = getelementptr inbounds i8, ptr %294, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !20
  %298 = getelementptr inbounds i8, ptr %294, i64 %292
  store i8 %297, ptr %298, align 1, !tbaa !20
  %299 = load i64, ptr %11, align 8, !tbaa !14
  %300 = add i64 %299, 1
  store i64 %300, ptr %11, align 8, !tbaa !14
  %301 = add nsw i32 %293, -2
  %302 = load ptr, ptr %0, align 8, !tbaa !5
  %303 = sub i64 %300, %260
  %304 = getelementptr inbounds i8, ptr %302, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !20
  %306 = getelementptr inbounds i8, ptr %302, i64 %300
  store i8 %305, ptr %306, align 1, !tbaa !20
  %307 = load i64, ptr %11, align 8, !tbaa !14
  %308 = add i64 %307, 1
  store i64 %308, ptr %11, align 8, !tbaa !14
  %309 = icmp eq i32 %301, 0
  br i1 %309, label %313, label %291, !llvm.loop !44

310:                                              ; preds = %263, %98
  %311 = phi i64 [ %100, %98 ], [ %267, %263 ]
  %312 = phi i32 [ %83, %98 ], [ %216, %263 ]
  store i64 %311, ptr %11, align 8, !tbaa !14
  br label %313

313:                                              ; preds = %286, %291, %310, %271
  %314 = phi i32 [ %216, %271 ], [ %312, %310 ], [ %216, %291 ], [ %216, %286 ]
  %315 = icmp eq i32 %314, 256
  br i1 %315, label %316, label %13, !llvm.loop !45

316:                                              ; preds = %101, %313, %268, %249, %207, %103, %91, %74, %53, %186
  %317 = phi i32 [ -10, %186 ], [ -10, %53 ], [ 0, %101 ], [ 0, %313 ], [ 1, %268 ], [ -11, %249 ], [ %216, %207 ], [ -10, %103 ], [ 1, %91 ], [ %83, %74 ]
  ret i32 %317
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind returns_twice }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"state", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 52, !8, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 8}
!14 = !{!6, !10, i64 16}
!15 = !{!6, !7, i64 24}
!16 = !{!6, !10, i64 32}
!17 = !{!6, !11, i64 48}
!18 = !{!6, !11, i64 52}
!19 = !{!6, !10, i64 40}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!25, !7, i64 0}
!25 = !{!"huffman", !7, i64 0, !7, i64 8}
!26 = !{!25, !7, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{i32 -2147483648, i32 2}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !22, !37, !36}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !31}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
