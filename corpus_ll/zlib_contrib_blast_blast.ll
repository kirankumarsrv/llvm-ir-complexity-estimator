; ModuleID = 'corpus_src/zlib/contrib/blast/blast.c'
source_filename = "corpus_src/zlib/contrib/blast/blast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.huffman = type { ptr, ptr }
%struct.state = type { ptr, ptr, ptr, i32, i32, i32, [1 x %struct.__jmp_buf_tag], ptr, ptr, i32, i32, [4096 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@decomp.virgin = internal unnamed_addr global i1 false, align 4
@decomp.litcnt = internal global [14 x i16] zeroinitializer, align 16
@decomp.litsym = internal global [256 x i16] zeroinitializer, align 16
@decomp.lencnt = internal global [14 x i16] zeroinitializer, align 16
@decomp.lensym = internal global [16 x i16] zeroinitializer, align 16
@decomp.distcnt = internal global [14 x i16] zeroinitializer, align 16
@decomp.distsym = internal global [64 x i16] zeroinitializer, align 16
@decomp.litcode = internal global %struct.huffman { ptr @decomp.litcnt, ptr @decomp.litsym }, align 8
@decomp.lencode = internal global %struct.huffman { ptr @decomp.lencnt, ptr @decomp.lensym }, align 8
@decomp.distcode = internal global %struct.huffman { ptr @decomp.distcnt, ptr @decomp.distsym }, align 8
@decomp.litlen = internal constant [98 x i8] c"\0B|\08\07\1C\07\BC\0DL\04\0A\08\0C\0A\0C\0A\08\17\08\09\07\06\07\08\07\067\08\17\18\0C\0B\07\09\0B\0C\06\07\16\05\07\18\06\0B\09\06\07\16\07\0B&\07\09\08\19\0B\08\0B\09\0C\08\0C\05&\05&\05\0B\07\05\06\15\06\0A5\08\07\18\0A\1B,\FD\FD\FD\FC\FC\FC\0D\0C-\0C-\0C=\0C-,\AD", align 16
@decomp.lenlen = internal constant [6 x i8] c"\02#$5&\17", align 1
@decomp.distlen = internal constant [7 x i8] c"\02\145\E6\F7\97\F8", align 1
@decomp.base = internal unnamed_addr constant [16 x i16] [i16 3, i16 2, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 12, i16 16, i16 24, i16 40, i16 72, i16 136, i16 264], align 16
@decomp.extra = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08", align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @blast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.state, align 8
  call void @llvm.lifetime.start.p0(i64 4360, ptr nonnull %7) #7
  store ptr %0, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !11
  %9 = icmp eq ptr %4, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  store i32 %11, ptr %14, align 8, !tbaa !13
  %15 = load ptr, ptr %5, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !15
  br label %19

17:                                               ; preds = %10, %6
  %18 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  store i32 0, ptr %18, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 4
  store i32 0, ptr %20, align 4, !tbaa !16
  %21 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 5
  store i32 0, ptr %21, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 7
  store ptr %2, ptr %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 8
  store ptr %3, ptr %23, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 9
  store i32 0, ptr %24, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 10
  store i32 1, ptr %25, align 4, !tbaa !21
  %26 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 6
  %27 = call i32 @_setjmp(ptr noundef nonnull %26) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %439

29:                                               ; preds = %19
  %30 = load i1, ptr @decomp.virgin, align 4
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call fastcc void @construct(ptr noundef nonnull @decomp.litcode, ptr noundef nonnull @decomp.litlen, i32 noundef 98)
  call fastcc void @construct(ptr noundef nonnull @decomp.lencode, ptr noundef nonnull @decomp.lenlen, i32 noundef 6)
  call fastcc void @construct(ptr noundef nonnull @decomp.distcode, ptr noundef nonnull @decomp.distlen, i32 noundef 7)
  store i1 true, ptr @decomp.virgin, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, ptr %20, align 4, !tbaa !16
  %34 = load i32, ptr %21, align 8, !tbaa !17
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  %38 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %39 = load i32, ptr %37, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %53, %36
  %41 = phi i32 [ %34, %36 ], [ %63, %53 ]
  %42 = phi i32 [ %39, %36 ], [ %62, %53 ]
  %43 = phi i32 [ %33, %36 ], [ %61, %53 ]
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load ptr, ptr %7, align 8, !tbaa !5
  %47 = load ptr, ptr %8, align 8, !tbaa !11
  %48 = call i32 %46(ptr noundef %47, ptr noundef nonnull %38) #7
  store i32 %48, ptr %37, align 8, !tbaa !13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %21, align 8, !tbaa !17
  br label %53

52:                                               ; preds = %45
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

53:                                               ; preds = %50, %40
  %54 = phi i32 [ %48, %50 ], [ %42, %40 ]
  %55 = phi i32 [ %51, %50 ], [ %41, %40 ]
  %56 = load ptr, ptr %38, align 8, !tbaa !15
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %38, align 8, !tbaa !15
  %58 = load i8, ptr %56, align 1, !tbaa !22
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, %55
  %61 = or i32 %60, %43
  %62 = add i32 %54, -1
  store i32 %62, ptr %37, align 8, !tbaa !13
  %63 = add nsw i32 %55, 8
  store i32 %63, ptr %21, align 8, !tbaa !17
  %64 = icmp slt i32 %55, 0
  br i1 %64, label %40, label %65, !llvm.loop !23

65:                                               ; preds = %53, %32
  %66 = phi i32 [ %33, %32 ], [ %61, %53 ]
  %67 = phi i32 [ %34, %32 ], [ %63, %53 ]
  %68 = ashr i32 %66, 8
  store i32 %68, ptr %20, align 4, !tbaa !16
  %69 = add nsw i32 %67, -8
  store i32 %69, ptr %21, align 8, !tbaa !17
  %70 = and i32 %66, 255
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %439, label %72

72:                                               ; preds = %65
  %73 = icmp ult i32 %69, 8
  br i1 %73, label %74, label %103

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  %76 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %77 = load i32, ptr %75, align 8, !tbaa !13
  br label %78

78:                                               ; preds = %91, %74
  %79 = phi i32 [ %69, %74 ], [ %101, %91 ]
  %80 = phi i32 [ %77, %74 ], [ %100, %91 ]
  %81 = phi i32 [ %68, %74 ], [ %99, %91 ]
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load ptr, ptr %7, align 8, !tbaa !5
  %85 = load ptr, ptr %8, align 8, !tbaa !11
  %86 = call i32 %84(ptr noundef %85, ptr noundef nonnull %76) #7
  store i32 %86, ptr %75, align 8, !tbaa !13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %21, align 8, !tbaa !17
  br label %91

90:                                               ; preds = %83
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

91:                                               ; preds = %88, %78
  %92 = phi i32 [ %86, %88 ], [ %80, %78 ]
  %93 = phi i32 [ %89, %88 ], [ %79, %78 ]
  %94 = load ptr, ptr %76, align 8, !tbaa !15
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %95, ptr %76, align 8, !tbaa !15
  %96 = load i8, ptr %94, align 1, !tbaa !22
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, %93
  %99 = or i32 %98, %81
  %100 = add i32 %92, -1
  store i32 %100, ptr %75, align 8, !tbaa !13
  %101 = add nsw i32 %93, 8
  store i32 %101, ptr %21, align 8, !tbaa !17
  %102 = icmp slt i32 %93, 0
  br i1 %102, label %78, label %103, !llvm.loop !23

103:                                              ; preds = %91, %72
  %104 = phi i32 [ %68, %72 ], [ %99, %91 ]
  %105 = phi i32 [ %69, %72 ], [ %101, %91 ]
  %106 = ashr i32 %104, 8
  store i32 %106, ptr %20, align 4, !tbaa !16
  %107 = add nsw i32 %105, -8
  store i32 %107, ptr %21, align 8, !tbaa !17
  %108 = and i32 %104, 255
  %109 = add nsw i32 %108, -7
  %110 = icmp ult i32 %109, -3
  br i1 %110, label %439, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  %113 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %114 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 11
  %115 = icmp eq i32 %70, 0
  br label %116

116:                                              ; preds = %436, %111
  %117 = phi i32 [ %438, %436 ], [ %106, %111 ]
  %118 = phi i32 [ %437, %436 ], [ %107, %111 ]
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load i32, ptr %112, align 8, !tbaa !13
  br label %122

122:                                              ; preds = %135, %120
  %123 = phi i32 [ %118, %120 ], [ %145, %135 ]
  %124 = phi i32 [ %121, %120 ], [ %144, %135 ]
  %125 = phi i32 [ %117, %120 ], [ %143, %135 ]
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load ptr, ptr %7, align 8, !tbaa !5
  %129 = load ptr, ptr %8, align 8, !tbaa !11
  %130 = call i32 %128(ptr noundef %129, ptr noundef nonnull %113) #7
  store i32 %130, ptr %112, align 8, !tbaa !13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load i32, ptr %21, align 8, !tbaa !17
  br label %135

134:                                              ; preds = %127
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

135:                                              ; preds = %132, %122
  %136 = phi i32 [ %130, %132 ], [ %124, %122 ]
  %137 = phi i32 [ %133, %132 ], [ %123, %122 ]
  %138 = load ptr, ptr %113, align 8, !tbaa !15
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %113, align 8, !tbaa !15
  %140 = load i8, ptr %138, align 1, !tbaa !22
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, %137
  %143 = or i32 %142, %125
  %144 = add i32 %136, -1
  store i32 %144, ptr %112, align 8, !tbaa !13
  %145 = add nsw i32 %137, 8
  store i32 %145, ptr %21, align 8, !tbaa !17
  %146 = icmp slt i32 %137, -7
  br i1 %146, label %122, label %147, !llvm.loop !23

147:                                              ; preds = %135, %116
  %148 = phi i32 [ %117, %116 ], [ %143, %135 ]
  %149 = phi i32 [ %118, %116 ], [ %145, %135 ]
  %150 = ashr i32 %148, 1
  store i32 %150, ptr %20, align 4, !tbaa !16
  %151 = add nsw i32 %149, -1
  store i32 %151, ptr %21, align 8, !tbaa !17
  %152 = and i32 %148, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %384

154:                                              ; preds = %147
  %155 = call fastcc i32 @decode(ptr noundef nonnull %7, ptr noundef nonnull @decomp.lencode), !range !25
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [16 x i16], ptr @decomp.base, i64 0, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !26
  %159 = sext i16 %158 to i32
  %160 = getelementptr inbounds [16 x i8], ptr @decomp.extra, i64 0, i64 %156
  %161 = load i8, ptr %160, align 1, !tbaa !22
  %162 = sext i8 %161 to i32
  %163 = load i32, ptr %20, align 4, !tbaa !16
  %164 = load i32, ptr %21, align 8, !tbaa !17
  %165 = icmp slt i32 %164, %162
  br i1 %165, label %166, label %193

166:                                              ; preds = %154
  %167 = load i32, ptr %112, align 8, !tbaa !13
  br label %168

168:                                              ; preds = %181, %166
  %169 = phi i32 [ %164, %166 ], [ %191, %181 ]
  %170 = phi i32 [ %167, %166 ], [ %190, %181 ]
  %171 = phi i32 [ %163, %166 ], [ %189, %181 ]
  %172 = icmp eq i32 %170, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load ptr, ptr %7, align 8, !tbaa !5
  %175 = load ptr, ptr %8, align 8, !tbaa !11
  %176 = call i32 %174(ptr noundef %175, ptr noundef nonnull %113) #7
  store i32 %176, ptr %112, align 8, !tbaa !13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = load i32, ptr %21, align 8, !tbaa !17
  br label %181

180:                                              ; preds = %173
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

181:                                              ; preds = %178, %168
  %182 = phi i32 [ %176, %178 ], [ %170, %168 ]
  %183 = phi i32 [ %179, %178 ], [ %169, %168 ]
  %184 = load ptr, ptr %113, align 8, !tbaa !15
  %185 = getelementptr inbounds i8, ptr %184, i64 1
  store ptr %185, ptr %113, align 8, !tbaa !15
  %186 = load i8, ptr %184, align 1, !tbaa !22
  %187 = zext i8 %186 to i32
  %188 = shl i32 %187, %183
  %189 = or i32 %188, %171
  %190 = add i32 %182, -1
  store i32 %190, ptr %112, align 8, !tbaa !13
  %191 = add nsw i32 %183, 8
  store i32 %191, ptr %21, align 8, !tbaa !17
  %192 = icmp slt i32 %191, %162
  br i1 %192, label %168, label %193, !llvm.loop !23

193:                                              ; preds = %181, %154
  %194 = phi i32 [ %163, %154 ], [ %189, %181 ]
  %195 = phi i32 [ %164, %154 ], [ %191, %181 ]
  %196 = ashr i32 %194, %162
  store i32 %196, ptr %20, align 4, !tbaa !16
  %197 = sub nsw i32 %195, %162
  store i32 %197, ptr %21, align 8, !tbaa !17
  %198 = shl nsw i32 -1, %162
  %199 = xor i32 %198, -1
  %200 = and i32 %194, %199
  %201 = add nsw i32 %200, %159
  %202 = icmp eq i32 %201, 519
  br i1 %202, label %439, label %203

203:                                              ; preds = %193
  %204 = icmp eq i32 %201, 2
  %205 = select i1 %204, i32 2, i32 %108
  %206 = call fastcc i32 @decode(ptr noundef nonnull %7, ptr noundef nonnull @decomp.distcode), !range !25
  %207 = shl i32 %206, %205
  %208 = load i32, ptr %20, align 4, !tbaa !16
  %209 = load i32, ptr %21, align 8, !tbaa !17
  %210 = icmp slt i32 %209, %205
  br i1 %210, label %211, label %238

211:                                              ; preds = %203
  %212 = load i32, ptr %112, align 8, !tbaa !13
  br label %213

213:                                              ; preds = %226, %211
  %214 = phi i32 [ %209, %211 ], [ %236, %226 ]
  %215 = phi i32 [ %212, %211 ], [ %235, %226 ]
  %216 = phi i32 [ %208, %211 ], [ %234, %226 ]
  %217 = icmp eq i32 %215, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load ptr, ptr %7, align 8, !tbaa !5
  %220 = load ptr, ptr %8, align 8, !tbaa !11
  %221 = call i32 %219(ptr noundef %220, ptr noundef nonnull %113) #7
  store i32 %221, ptr %112, align 8, !tbaa !13
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %218
  %224 = load i32, ptr %21, align 8, !tbaa !17
  br label %226

225:                                              ; preds = %218
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

226:                                              ; preds = %223, %213
  %227 = phi i32 [ %221, %223 ], [ %215, %213 ]
  %228 = phi i32 [ %224, %223 ], [ %214, %213 ]
  %229 = load ptr, ptr %113, align 8, !tbaa !15
  %230 = getelementptr inbounds i8, ptr %229, i64 1
  store ptr %230, ptr %113, align 8, !tbaa !15
  %231 = load i8, ptr %229, align 1, !tbaa !22
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, %228
  %234 = or i32 %233, %216
  %235 = add i32 %227, -1
  store i32 %235, ptr %112, align 8, !tbaa !13
  %236 = add nsw i32 %228, 8
  store i32 %236, ptr %21, align 8, !tbaa !17
  %237 = icmp slt i32 %236, %205
  br i1 %237, label %213, label %238, !llvm.loop !23

238:                                              ; preds = %226, %203
  %239 = phi i32 [ %208, %203 ], [ %234, %226 ]
  %240 = phi i32 [ %209, %203 ], [ %236, %226 ]
  %241 = ashr i32 %239, %205
  store i32 %241, ptr %20, align 4, !tbaa !16
  %242 = sub nsw i32 %240, %205
  store i32 %242, ptr %21, align 8, !tbaa !17
  %243 = shl nsw i32 -1, %205
  %244 = xor i32 %243, -1
  %245 = and i32 %239, %244
  %246 = or disjoint i32 %207, 1
  %247 = add i32 %246, %245
  %248 = load i32, ptr %25, align 4, !tbaa !21
  %249 = icmp ne i32 %248, 0
  %250 = load i32, ptr %24, align 8, !tbaa !20
  %251 = icmp ugt i32 %247, %250
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %439, label %253

253:                                              ; preds = %238
  %254 = zext i32 %247 to i64
  %255 = sub nsw i64 0, %254
  %256 = add nuw nsw i32 %245, 1
  %257 = add i32 %256, %207
  %258 = zext i32 %257 to i64
  br label %259

259:                                              ; preds = %381, %253
  %260 = phi i32 [ %250, %253 ], [ %382, %381 ]
  %261 = phi i32 [ %201, %253 ], [ %372, %381 ]
  %262 = zext i32 %260 to i64
  %263 = getelementptr i8, ptr %114, i64 %262
  %264 = getelementptr inbounds i8, ptr %263, i64 %255
  %265 = icmp ult i32 %260, %247
  %266 = select i1 %265, i32 %247, i32 4096
  %267 = select i1 %265, i64 4096, i64 0
  %268 = getelementptr inbounds i8, ptr %264, i64 %267
  %269 = sub i32 %266, %260
  %270 = call i32 @llvm.smin.i32(i32 %269, i32 %261)
  %271 = add i32 %270, %260
  store i32 %271, ptr %24, align 8, !tbaa !20
  %272 = add nsw i32 %270, -1
  %273 = zext i32 %272 to i64
  %274 = add nuw nsw i64 %273, 1
  %275 = icmp ult i32 %272, 7
  %276 = sub nsw i64 %258, %267
  %277 = icmp ult i64 %276, 32
  %278 = select i1 %275, i1 true, i1 %277
  br i1 %278, label %318, label %279

279:                                              ; preds = %259
  %280 = icmp ult i32 %272, 31
  br i1 %280, label %302, label %281

281:                                              ; preds = %279
  %282 = and i64 %274, 8589934560
  br label %283

283:                                              ; preds = %283, %281
  %284 = phi i64 [ 0, %281 ], [ %291, %283 ]
  %285 = getelementptr i8, ptr %268, i64 %284
  %286 = getelementptr i8, ptr %263, i64 %284
  %287 = getelementptr i8, ptr %285, i64 16
  %288 = load <16 x i8>, ptr %285, align 1, !tbaa !22
  %289 = load <16 x i8>, ptr %287, align 1, !tbaa !22
  %290 = getelementptr i8, ptr %286, i64 16
  store <16 x i8> %288, ptr %286, align 1, !tbaa !22
  store <16 x i8> %289, ptr %290, align 1, !tbaa !22
  %291 = add nuw i64 %284, 32
  %292 = icmp eq i64 %291, %282
  br i1 %292, label %293, label %283, !llvm.loop !28

293:                                              ; preds = %283
  %294 = icmp eq i64 %274, %282
  br i1 %294, label %371, label %295

295:                                              ; preds = %293
  %296 = getelementptr i8, ptr %263, i64 %282
  %297 = getelementptr i8, ptr %268, i64 %282
  %298 = trunc i64 %282 to i32
  %299 = sub i32 %270, %298
  %300 = and i64 %274, 24
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %318, label %302

302:                                              ; preds = %279, %295
  %303 = phi i64 [ %282, %295 ], [ 0, %279 ]
  %304 = and i64 %274, 8589934584
  %305 = trunc i64 %304 to i32
  %306 = sub i32 %270, %305
  %307 = getelementptr i8, ptr %268, i64 %304
  %308 = getelementptr i8, ptr %263, i64 %304
  br label %309

309:                                              ; preds = %309, %302
  %310 = phi i64 [ %303, %302 ], [ %314, %309 ]
  %311 = getelementptr i8, ptr %268, i64 %310
  %312 = getelementptr i8, ptr %263, i64 %310
  %313 = load <8 x i8>, ptr %311, align 1, !tbaa !22
  store <8 x i8> %313, ptr %312, align 1, !tbaa !22
  %314 = add nuw i64 %310, 8
  %315 = icmp eq i64 %314, %304
  br i1 %315, label %316, label %309, !llvm.loop !31

316:                                              ; preds = %309
  %317 = icmp eq i64 %274, %304
  br i1 %317, label %371, label %318

318:                                              ; preds = %259, %295, %316
  %319 = phi i32 [ %270, %259 ], [ %299, %295 ], [ %306, %316 ]
  %320 = phi ptr [ %268, %259 ], [ %297, %295 ], [ %307, %316 ]
  %321 = phi ptr [ %263, %259 ], [ %296, %295 ], [ %308, %316 ]
  %322 = add nsw i32 %319, -1
  %323 = and i32 %319, 7
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %336, label %325

325:                                              ; preds = %318, %325
  %326 = phi i32 [ %333, %325 ], [ %319, %318 ]
  %327 = phi ptr [ %330, %325 ], [ %320, %318 ]
  %328 = phi ptr [ %332, %325 ], [ %321, %318 ]
  %329 = phi i32 [ %334, %325 ], [ 0, %318 ]
  %330 = getelementptr inbounds i8, ptr %327, i64 1
  %331 = load i8, ptr %327, align 1, !tbaa !22
  %332 = getelementptr inbounds i8, ptr %328, i64 1
  store i8 %331, ptr %328, align 1, !tbaa !22
  %333 = add nsw i32 %326, -1
  %334 = add i32 %329, 1
  %335 = icmp eq i32 %334, %323
  br i1 %335, label %336, label %325, !llvm.loop !32

336:                                              ; preds = %325, %318
  %337 = phi i32 [ %319, %318 ], [ %333, %325 ]
  %338 = phi ptr [ %320, %318 ], [ %330, %325 ]
  %339 = phi ptr [ %321, %318 ], [ %332, %325 ]
  %340 = icmp ult i32 %322, 7
  br i1 %340, label %371, label %341

341:                                              ; preds = %336, %341
  %342 = phi i32 [ %369, %341 ], [ %337, %336 ]
  %343 = phi ptr [ %366, %341 ], [ %338, %336 ]
  %344 = phi ptr [ %368, %341 ], [ %339, %336 ]
  %345 = getelementptr inbounds i8, ptr %343, i64 1
  %346 = load i8, ptr %343, align 1, !tbaa !22
  %347 = getelementptr inbounds i8, ptr %344, i64 1
  store i8 %346, ptr %344, align 1, !tbaa !22
  %348 = getelementptr inbounds i8, ptr %343, i64 2
  %349 = load i8, ptr %345, align 1, !tbaa !22
  %350 = getelementptr inbounds i8, ptr %344, i64 2
  store i8 %349, ptr %347, align 1, !tbaa !22
  %351 = getelementptr inbounds i8, ptr %343, i64 3
  %352 = load i8, ptr %348, align 1, !tbaa !22
  %353 = getelementptr inbounds i8, ptr %344, i64 3
  store i8 %352, ptr %350, align 1, !tbaa !22
  %354 = getelementptr inbounds i8, ptr %343, i64 4
  %355 = load i8, ptr %351, align 1, !tbaa !22
  %356 = getelementptr inbounds i8, ptr %344, i64 4
  store i8 %355, ptr %353, align 1, !tbaa !22
  %357 = getelementptr inbounds i8, ptr %343, i64 5
  %358 = load i8, ptr %354, align 1, !tbaa !22
  %359 = getelementptr inbounds i8, ptr %344, i64 5
  store i8 %358, ptr %356, align 1, !tbaa !22
  %360 = getelementptr inbounds i8, ptr %343, i64 6
  %361 = load i8, ptr %357, align 1, !tbaa !22
  %362 = getelementptr inbounds i8, ptr %344, i64 6
  store i8 %361, ptr %359, align 1, !tbaa !22
  %363 = getelementptr inbounds i8, ptr %343, i64 7
  %364 = load i8, ptr %360, align 1, !tbaa !22
  %365 = getelementptr inbounds i8, ptr %344, i64 7
  store i8 %364, ptr %362, align 1, !tbaa !22
  %366 = getelementptr inbounds i8, ptr %343, i64 8
  %367 = load i8, ptr %363, align 1, !tbaa !22
  %368 = getelementptr inbounds i8, ptr %344, i64 8
  store i8 %367, ptr %365, align 1, !tbaa !22
  %369 = add nsw i32 %342, -8
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %341, !llvm.loop !34

371:                                              ; preds = %336, %341, %316, %293
  %372 = sub nsw i32 %261, %270
  %373 = load i32, ptr %24, align 8, !tbaa !20
  %374 = icmp eq i32 %373, 4096
  br i1 %374, label %375, label %381

375:                                              ; preds = %371
  %376 = load ptr, ptr %22, align 8, !tbaa !18
  %377 = load ptr, ptr %23, align 8, !tbaa !19
  %378 = call i32 %376(ptr noundef %377, ptr noundef nonnull %114, i32 noundef 4096) #7
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %439

380:                                              ; preds = %375
  store i32 0, ptr %24, align 8, !tbaa !20
  store i32 0, ptr %25, align 4, !tbaa !21
  br label %381

381:                                              ; preds = %380, %371
  %382 = phi i32 [ %373, %371 ], [ 0, %380 ]
  %383 = icmp eq i32 %372, 0
  br i1 %383, label %436, label %259, !llvm.loop !35

384:                                              ; preds = %147
  br i1 %115, label %387, label %385

385:                                              ; preds = %384
  %386 = call fastcc i32 @decode(ptr noundef nonnull %7, ptr noundef nonnull @decomp.litcode), !range !25
  br label %422

387:                                              ; preds = %384
  %388 = icmp ult i32 %151, 8
  br i1 %388, label %389, label %416

389:                                              ; preds = %387
  %390 = load i32, ptr %112, align 8, !tbaa !13
  br label %391

391:                                              ; preds = %404, %389
  %392 = phi i32 [ %151, %389 ], [ %414, %404 ]
  %393 = phi i32 [ %390, %389 ], [ %413, %404 ]
  %394 = phi i32 [ %150, %389 ], [ %412, %404 ]
  %395 = icmp eq i32 %393, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load ptr, ptr %7, align 8, !tbaa !5
  %398 = load ptr, ptr %8, align 8, !tbaa !11
  %399 = call i32 %397(ptr noundef %398, ptr noundef nonnull %113) #7
  store i32 %399, ptr %112, align 8, !tbaa !13
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %396
  %402 = load i32, ptr %21, align 8, !tbaa !17
  br label %404

403:                                              ; preds = %396
  call void @longjmp(ptr noundef nonnull %26, i32 noundef 1) #9
  unreachable

404:                                              ; preds = %401, %391
  %405 = phi i32 [ %399, %401 ], [ %393, %391 ]
  %406 = phi i32 [ %402, %401 ], [ %392, %391 ]
  %407 = load ptr, ptr %113, align 8, !tbaa !15
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %408, ptr %113, align 8, !tbaa !15
  %409 = load i8, ptr %407, align 1, !tbaa !22
  %410 = zext i8 %409 to i32
  %411 = shl i32 %410, %406
  %412 = or i32 %411, %394
  %413 = add i32 %405, -1
  store i32 %413, ptr %112, align 8, !tbaa !13
  %414 = add nsw i32 %406, 8
  store i32 %414, ptr %21, align 8, !tbaa !17
  %415 = icmp slt i32 %406, 0
  br i1 %415, label %391, label %416, !llvm.loop !23

416:                                              ; preds = %404, %387
  %417 = phi i32 [ %150, %387 ], [ %412, %404 ]
  %418 = phi i32 [ %151, %387 ], [ %414, %404 ]
  %419 = ashr i32 %417, 8
  store i32 %419, ptr %20, align 4, !tbaa !16
  %420 = add nsw i32 %418, -8
  store i32 %420, ptr %21, align 8, !tbaa !17
  %421 = and i32 %417, 255
  br label %422

422:                                              ; preds = %416, %385
  %423 = phi i32 [ %386, %385 ], [ %421, %416 ]
  %424 = trunc i32 %423 to i8
  %425 = load i32, ptr %24, align 8, !tbaa !20
  %426 = add i32 %425, 1
  store i32 %426, ptr %24, align 8, !tbaa !20
  %427 = zext i32 %425 to i64
  %428 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 11, i64 %427
  store i8 %424, ptr %428, align 1, !tbaa !22
  %429 = icmp eq i32 %426, 4096
  br i1 %429, label %430, label %436

430:                                              ; preds = %422
  %431 = load ptr, ptr %22, align 8, !tbaa !18
  %432 = load ptr, ptr %23, align 8, !tbaa !19
  %433 = call i32 %431(ptr noundef %432, ptr noundef nonnull %114, i32 noundef 4096) #7
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %430
  store i32 0, ptr %24, align 8, !tbaa !20
  store i32 0, ptr %25, align 4, !tbaa !21
  br label %436

436:                                              ; preds = %381, %435, %422
  %437 = load i32, ptr %21, align 8, !tbaa !17
  %438 = load i32, ptr %20, align 4, !tbaa !16
  br label %116

439:                                              ; preds = %430, %238, %193, %375, %103, %65, %19
  %440 = phi i1 [ true, %19 ], [ true, %65 ], [ true, %103 ], [ false, %375 ], [ %153, %193 ], [ %153, %238 ], [ %153, %430 ]
  %441 = phi i1 [ false, %19 ], [ false, %65 ], [ false, %103 ], [ false, %375 ], [ false, %430 ], [ false, %238 ], [ true, %193 ]
  %442 = phi i32 [ 2, %19 ], [ -1, %65 ], [ -2, %103 ], [ 1, %375 ], [ 1, %430 ], [ -3, %238 ], [ 0, %193 ]
  br i1 %9, label %446, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  %445 = load i32, ptr %444, align 8, !tbaa !13
  store i32 %445, ptr %4, align 4, !tbaa !12
  br label %446

446:                                              ; preds = %443, %439
  %447 = icmp eq ptr %5, null
  br i1 %447, label %455, label %448

448:                                              ; preds = %446
  %449 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 3
  %450 = load i32, ptr %449, align 8, !tbaa !13
  %451 = icmp eq i32 %450, 0
  %452 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %453 = load ptr, ptr %452, align 8
  %454 = select i1 %451, ptr null, ptr %453
  store ptr %454, ptr %5, align 8, !tbaa !14
  br label %455

455:                                              ; preds = %448, %446
  %456 = load i32, ptr %24, align 8
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %440, i1 %457, i1 false
  br i1 %458, label %459, label %467

459:                                              ; preds = %455
  %460 = load ptr, ptr %22, align 8, !tbaa !18
  %461 = load ptr, ptr %23, align 8, !tbaa !19
  %462 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 11
  %463 = call i32 %460(ptr noundef %461, ptr noundef nonnull %462, i32 noundef %456) #7
  %464 = icmp ne i32 %463, 0
  %465 = and i1 %441, %464
  %466 = select i1 %465, i32 1, i32 %442
  br label %467

467:                                              ; preds = %459, %455
  %468 = phi i32 [ %466, %459 ], [ %442, %455 ]
  call void @llvm.lifetime.end.p0(i64 4360, ptr nonnull %7) #7
  ret i32 %468
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @construct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca [14 x i16], align 16
  %5 = alloca [256 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #7
  br label %6

6:                                                ; preds = %48, %3
  %7 = phi ptr [ %1, %3 ], [ %51, %48 ]
  %8 = phi i32 [ %2, %3 ], [ %52, %48 ]
  %9 = phi i64 [ 0, %3 ], [ %50, %48 ]
  %10 = load i8, ptr %7, align 1, !tbaa !22
  %11 = lshr i8 %10, 4
  %12 = add nuw nsw i8 %11, 1
  %13 = zext nneg i8 %12 to i32
  %14 = and i8 %10, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl i64 %9, 32
  %17 = ashr exact i64 %16, 32
  %18 = lshr i8 %10, 4
  %19 = add nuw nsw i8 %18, 1
  %20 = zext nneg i8 %19 to i64
  %21 = icmp ult i8 %10, 112
  br i1 %21, label %38, label %22

22:                                               ; preds = %6
  %23 = and i64 %20, 24
  %24 = add nsw i64 %17, %23
  %25 = trunc i64 %23 to i32
  %26 = sub nsw i32 %13, %25
  %27 = insertelement <8 x i16> poison, i16 %15, i64 0
  %28 = shufflevector <8 x i16> %27, <8 x i16> poison, <8 x i32> zeroinitializer
  %29 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %17
  store <8 x i16> %28, ptr %29, align 2, !tbaa !26
  %30 = icmp eq i64 %23, 8
  br i1 %30, label %34, label %31, !llvm.loop !36

31:                                               ; preds = %22
  %32 = add nsw i64 %17, 8
  %33 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %32
  store <8 x i16> %28, ptr %33, align 2, !tbaa !26
  br label %34

34:                                               ; preds = %31, %22
  %35 = icmp eq i64 %23, %20
  %36 = add nsw i64 %23, -1
  %37 = add nsw i64 %17, %36
  br i1 %35, label %48, label %38

38:                                               ; preds = %6, %34
  %39 = phi i64 [ %17, %6 ], [ %24, %34 ]
  %40 = phi i32 [ %13, %6 ], [ %26, %34 ]
  br label %41

41:                                               ; preds = %38, %41
  %42 = phi i64 [ %44, %41 ], [ %39, %38 ]
  %43 = phi i32 [ %46, %41 ], [ %40, %38 ]
  %44 = add nsw i64 %42, 1
  %45 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %42
  store i16 %15, ptr %45, align 2, !tbaa !26
  %46 = add nsw i32 %43, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %41, !llvm.loop !37

48:                                               ; preds = %41, %34
  %49 = phi i64 [ %37, %34 ], [ %42, %41 ]
  %50 = phi i64 [ %24, %34 ], [ %44, %41 ]
  %51 = getelementptr inbounds i8, ptr %7, i64 1
  %52 = add nsw i32 %8, -1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %6, !llvm.loop !38

54:                                               ; preds = %48
  %55 = trunc i64 %50 to i32
  %56 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %56, i8 0, i64 28, i1 false), !tbaa !26
  %57 = and i64 %49, 2147483648
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %54
  %60 = and i64 %49, 2147483647
  %61 = add nuw nsw i64 %60, 1
  %62 = and i64 %61, 3
  %63 = icmp ult i64 %60, 3
  br i1 %63, label %99, label %64

64:                                               ; preds = %59
  %65 = and i64 %61, 4294967292
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i64 [ 0, %64 ], [ %96, %66 ]
  %68 = phi i64 [ 0, %64 ], [ %97, %66 ]
  %69 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %67
  %70 = load i16, ptr %69, align 8, !tbaa !26
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i16, ptr %56, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !26
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 2, !tbaa !26
  %75 = or disjoint i64 %67, 1
  %76 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !26
  %78 = sext i16 %77 to i64
  %79 = getelementptr inbounds i16, ptr %56, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !26
  %81 = add i16 %80, 1
  store i16 %81, ptr %79, align 2, !tbaa !26
  %82 = or disjoint i64 %67, 2
  %83 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %82
  %84 = load i16, ptr %83, align 4, !tbaa !26
  %85 = sext i16 %84 to i64
  %86 = getelementptr inbounds i16, ptr %56, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !26
  %88 = add i16 %87, 1
  store i16 %88, ptr %86, align 2, !tbaa !26
  %89 = or disjoint i64 %67, 3
  %90 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !26
  %92 = sext i16 %91 to i64
  %93 = getelementptr inbounds i16, ptr %56, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !26
  %95 = add i16 %94, 1
  store i16 %95, ptr %93, align 2, !tbaa !26
  %96 = add nuw nsw i64 %67, 4
  %97 = add i64 %68, 4
  %98 = icmp eq i64 %97, %65
  br i1 %98, label %99, label %66, !llvm.loop !41

99:                                               ; preds = %66, %59
  %100 = phi i64 [ 0, %59 ], [ %96, %66 ]
  %101 = icmp eq i64 %62, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %111, %102 ], [ %100, %99 ]
  %104 = phi i64 [ %112, %102 ], [ 0, %99 ]
  %105 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %103
  %106 = load i16, ptr %105, align 2, !tbaa !26
  %107 = sext i16 %106 to i64
  %108 = getelementptr inbounds i16, ptr %56, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !26
  %110 = add i16 %109, 1
  store i16 %110, ptr %108, align 2, !tbaa !26
  %111 = add nuw nsw i64 %103, 1
  %112 = add i64 %104, 1
  %113 = icmp eq i64 %112, %62
  br i1 %113, label %114, label %102, !llvm.loop !42

114:                                              ; preds = %102, %99
  %115 = load i16, ptr %56, align 2, !tbaa !26
  %116 = sext i16 %115 to i32
  br label %117

117:                                              ; preds = %114, %54
  %118 = phi i32 [ %116, %114 ], [ 0, %54 ]
  %119 = icmp eq i32 %118, %55
  br i1 %119, label %291, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds i16, ptr %56, i64 1
  %122 = load i16, ptr %121, align 2, !tbaa !26
  %123 = icmp sgt i16 %122, 2
  br i1 %123, label %291, label %124

124:                                              ; preds = %120
  %125 = sext i16 %122 to i32
  %126 = shl nsw i32 %125, 1
  %127 = getelementptr inbounds i16, ptr %56, i64 2
  %128 = load i16, ptr %127, align 2, !tbaa !26
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %126, %129
  %131 = icmp sgt i32 %130, 4
  br i1 %131, label %291, label %132

132:                                              ; preds = %124
  %133 = shl nsw i32 %130, 1
  %134 = getelementptr inbounds i16, ptr %56, i64 3
  %135 = load i16, ptr %134, align 2, !tbaa !26
  %136 = sext i16 %135 to i32
  %137 = add nsw i32 %133, %136
  %138 = icmp sgt i32 %137, 8
  br i1 %138, label %291, label %139

139:                                              ; preds = %132
  %140 = shl nsw i32 %137, 1
  %141 = getelementptr inbounds i16, ptr %56, i64 4
  %142 = load i16, ptr %141, align 2, !tbaa !26
  %143 = sext i16 %142 to i32
  %144 = add nsw i32 %140, %143
  %145 = sub i32 16, %144
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %291, label %147

147:                                              ; preds = %139
  %148 = shl nuw i32 %145, 1
  %149 = getelementptr inbounds i16, ptr %56, i64 5
  %150 = load i16, ptr %149, align 2, !tbaa !26
  %151 = sext i16 %150 to i32
  %152 = sub nsw i32 %148, %151
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %291, label %154

154:                                              ; preds = %147
  %155 = shl nuw i32 %152, 1
  %156 = getelementptr inbounds i16, ptr %56, i64 6
  %157 = load i16, ptr %156, align 2, !tbaa !26
  %158 = sext i16 %157 to i32
  %159 = sub nsw i32 %155, %158
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %291, label %161

161:                                              ; preds = %154
  %162 = shl nuw i32 %159, 1
  %163 = getelementptr inbounds i16, ptr %56, i64 7
  %164 = load i16, ptr %163, align 2, !tbaa !26
  %165 = sext i16 %164 to i32
  %166 = sub nsw i32 %162, %165
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %291, label %168

168:                                              ; preds = %161
  %169 = shl nuw i32 %166, 1
  %170 = getelementptr inbounds i16, ptr %56, i64 8
  %171 = load i16, ptr %170, align 2, !tbaa !26
  %172 = sext i16 %171 to i32
  %173 = sub nsw i32 %169, %172
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %291, label %175

175:                                              ; preds = %168
  %176 = shl nuw i32 %173, 1
  %177 = getelementptr inbounds i16, ptr %56, i64 9
  %178 = load i16, ptr %177, align 2, !tbaa !26
  %179 = sext i16 %178 to i32
  %180 = sub nsw i32 %176, %179
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %291, label %182

182:                                              ; preds = %175
  %183 = shl nuw i32 %180, 1
  %184 = getelementptr inbounds i16, ptr %56, i64 10
  %185 = load i16, ptr %184, align 2, !tbaa !26
  %186 = sext i16 %185 to i32
  %187 = sub nsw i32 %183, %186
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %291, label %189

189:                                              ; preds = %182
  %190 = shl nuw i32 %187, 1
  %191 = getelementptr inbounds i16, ptr %56, i64 11
  %192 = load i16, ptr %191, align 2, !tbaa !26
  %193 = sext i16 %192 to i32
  %194 = sub nsw i32 %190, %193
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %291, label %196

196:                                              ; preds = %189
  %197 = shl nuw i32 %194, 1
  %198 = getelementptr inbounds i16, ptr %56, i64 12
  %199 = load i16, ptr %198, align 2, !tbaa !26
  %200 = sext i16 %199 to i32
  %201 = sub nsw i32 %197, %200
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %291, label %203

203:                                              ; preds = %196
  %204 = shl nuw i32 %201, 1
  %205 = getelementptr inbounds i16, ptr %56, i64 13
  %206 = load i16, ptr %205, align 2, !tbaa !26
  %207 = sext i16 %206 to i32
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %291, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 1
  store i16 0, ptr %210, align 2, !tbaa !26
  %211 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 2
  store i16 %122, ptr %211, align 4, !tbaa !26
  %212 = add i16 %128, %122
  %213 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 3
  store i16 %212, ptr %213, align 2, !tbaa !26
  %214 = add i16 %135, %212
  %215 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 4
  store i16 %214, ptr %215, align 8, !tbaa !26
  %216 = add i16 %142, %214
  %217 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 5
  store i16 %216, ptr %217, align 2, !tbaa !26
  %218 = add i16 %150, %216
  %219 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 6
  store i16 %218, ptr %219, align 4, !tbaa !26
  %220 = add i16 %157, %218
  %221 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 7
  store i16 %220, ptr %221, align 2, !tbaa !26
  %222 = add i16 %164, %220
  %223 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 8
  store i16 %222, ptr %223, align 16, !tbaa !26
  %224 = add i16 %171, %222
  %225 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 9
  store i16 %224, ptr %225, align 2, !tbaa !26
  %226 = add i16 %178, %224
  %227 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 10
  store i16 %226, ptr %227, align 4, !tbaa !26
  %228 = add i16 %185, %226
  %229 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 11
  store i16 %228, ptr %229, align 2, !tbaa !26
  %230 = add i16 %192, %228
  %231 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 12
  store i16 %230, ptr %231, align 8, !tbaa !26
  %232 = add i16 %199, %230
  %233 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 13
  store i16 %232, ptr %233, align 2, !tbaa !26
  br i1 %58, label %234, label %291

234:                                              ; preds = %209
  %235 = getelementptr inbounds %struct.huffman, ptr %0, i64 0, i32 1
  %236 = and i64 %49, 2147483647
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %274, label %238

238:                                              ; preds = %234
  %239 = add nuw nsw i64 %49, 1
  %240 = and i64 %239, 4294967294
  br label %241

241:                                              ; preds = %270, %238
  %242 = phi i64 [ 0, %238 ], [ %271, %270 ]
  %243 = phi i64 [ 0, %238 ], [ %272, %270 ]
  %244 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %242
  %245 = load i16, ptr %244, align 4, !tbaa !26
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %241
  %248 = trunc i64 %242 to i16
  %249 = load ptr, ptr %235, align 8, !tbaa !43
  %250 = sext i16 %245 to i64
  %251 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !26
  %253 = add i16 %252, 1
  store i16 %253, ptr %251, align 2, !tbaa !26
  %254 = sext i16 %252 to i64
  %255 = getelementptr inbounds i16, ptr %249, i64 %254
  store i16 %248, ptr %255, align 2, !tbaa !26
  br label %256

256:                                              ; preds = %241, %247
  %257 = or disjoint i64 %242, 1
  %258 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !26
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %256
  %262 = trunc i64 %257 to i16
  %263 = load ptr, ptr %235, align 8, !tbaa !43
  %264 = sext i16 %259 to i64
  %265 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !26
  %267 = add i16 %266, 1
  store i16 %267, ptr %265, align 2, !tbaa !26
  %268 = sext i16 %266 to i64
  %269 = getelementptr inbounds i16, ptr %263, i64 %268
  store i16 %262, ptr %269, align 2, !tbaa !26
  br label %270

270:                                              ; preds = %261, %256
  %271 = add nuw nsw i64 %242, 2
  %272 = add i64 %243, 2
  %273 = icmp eq i64 %272, %240
  br i1 %273, label %274, label %241, !llvm.loop !44

274:                                              ; preds = %270, %234
  %275 = phi i64 [ 0, %234 ], [ %271, %270 ]
  %276 = and i64 %49, 1
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = getelementptr inbounds [256 x i16], ptr %5, i64 0, i64 %275
  %280 = load i16, ptr %279, align 2, !tbaa !26
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %291, label %282

282:                                              ; preds = %278
  %283 = trunc i64 %275 to i16
  %284 = load ptr, ptr %235, align 8, !tbaa !43
  %285 = sext i16 %280 to i64
  %286 = getelementptr inbounds [14 x i16], ptr %4, i64 0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !26
  %288 = add i16 %287, 1
  store i16 %288, ptr %286, align 2, !tbaa !26
  %289 = sext i16 %287 to i64
  %290 = getelementptr inbounds i16, ptr %284, i64 %289
  store i16 %283, ptr %290, align 2, !tbaa !26
  br label %291

291:                                              ; preds = %274, %282, %278, %120, %124, %132, %139, %147, %154, %161, %168, %175, %182, %189, %196, %203, %209, %117
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !17
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %77, %2
  %13 = phi i32 [ 1, %2 ], [ %66, %77 ]
  %14 = phi i32 [ 0, %2 ], [ %65, %77 ]
  %15 = phi i32 [ 0, %2 ], [ %64, %77 ]
  %16 = phi i32 [ 0, %2 ], [ %63, %77 ]
  %17 = phi i32 [ %4, %2 ], [ %82, %77 ]
  %18 = phi i32 [ %6, %2 ], [ %84, %77 ]
  %19 = phi ptr [ %8, %2 ], [ %62, %77 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %12
  %22 = add i32 %18, %13
  br label %23

23:                                               ; preds = %21, %51
  %24 = phi i32 [ %52, %51 ], [ %18, %21 ]
  %25 = phi ptr [ %53, %51 ], [ %19, %21 ]
  %26 = phi i32 [ %34, %51 ], [ %17, %21 ]
  %27 = phi i32 [ %54, %51 ], [ %16, %21 ]
  %28 = phi i32 [ %55, %51 ], [ %15, %21 ]
  %29 = phi i32 [ %56, %51 ], [ %14, %21 ]
  %30 = phi i32 [ %57, %51 ], [ %13, %21 ]
  %31 = and i32 %26, 1
  %32 = xor i32 %31, 1
  %33 = or i32 %32, %29
  %34 = ashr i32 %26, 1
  %35 = load i16, ptr %25, align 2, !tbaa !26
  %36 = sext i16 %35 to i32
  %37 = add nsw i32 %28, %36
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  store i32 %34, ptr %3, align 4, !tbaa !16
  %40 = load i32, ptr %5, align 8, !tbaa !17
  %41 = sub nsw i32 %40, %30
  %42 = and i32 %41, 7
  store i32 %42, ptr %5, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.huffman, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = sub i32 %27, %28
  %46 = add i32 %45, %33
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !26
  %50 = sext i16 %49 to i32
  br label %85

51:                                               ; preds = %23
  %52 = add nsw i32 %24, -1
  %53 = getelementptr inbounds i16, ptr %25, i64 1
  %54 = add nsw i32 %27, %36
  %55 = shl i32 %37, 1
  %56 = shl i32 %33, 1
  %57 = add nsw i32 %30, 1
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %59, label %23, !llvm.loop !45

59:                                               ; preds = %51
  %60 = icmp eq i32 %22, 14
  br i1 %60, label %85, label %61

61:                                               ; preds = %12, %59
  %62 = phi ptr [ %53, %59 ], [ %19, %12 ]
  %63 = phi i32 [ %54, %59 ], [ %16, %12 ]
  %64 = phi i32 [ %55, %59 ], [ %15, %12 ]
  %65 = phi i32 [ %56, %59 ], [ %14, %12 ]
  %66 = phi i32 [ %22, %59 ], [ %13, %12 ]
  %67 = sub nsw i32 14, %66
  %68 = load i32, ptr %9, align 8, !tbaa !13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load ptr, ptr %0, align 8, !tbaa !5
  %72 = load ptr, ptr %10, align 8, !tbaa !11
  %73 = tail call i32 %71(ptr noundef %72, ptr noundef nonnull %11) #7
  store i32 %73, ptr %9, align 8, !tbaa !13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.state, ptr %0, i64 0, i32 6
  tail call void @longjmp(ptr noundef nonnull %76, i32 noundef 1) #9
  unreachable

77:                                               ; preds = %70, %61
  %78 = phi i32 [ %73, %70 ], [ %68, %61 ]
  %79 = load ptr, ptr %11, align 8, !tbaa !15
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  store ptr %80, ptr %11, align 8, !tbaa !15
  %81 = load i8, ptr %79, align 1, !tbaa !22
  %82 = zext i8 %81 to i32
  %83 = add i32 %78, -1
  store i32 %83, ptr %9, align 8, !tbaa !13
  %84 = tail call i32 @llvm.smin.i32(i32 %67, i32 8)
  br label %12

85:                                               ; preds = %59, %39
  %86 = phi i32 [ %50, %39 ], [ -9, %59 ]
  ret i32 %86
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"state", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !8, i64 40, !7, i64 240, !7, i64 248, !10, i64 256, !10, i64 260, !8, i64 264}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 24}
!14 = !{!7, !7, i64 0}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !10, i64 28}
!17 = !{!6, !10, i64 32}
!18 = !{!6, !7, i64 240}
!19 = !{!6, !7, i64 248}
!20 = !{!6, !10, i64 256}
!21 = !{!6, !10, i64 260}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{i32 -32768, i32 32768}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !8, i64 0}
!28 = distinct !{!28, !24, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !24, !29, !30}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !24, !29}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24, !29, !30}
!37 = distinct !{!37, !24, !30, !29}
!38 = distinct !{!38, !24}
!39 = !{!40, !7, i64 0}
!40 = !{!"huffman", !7, i64 0, !7, i64 8}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !33}
!43 = !{!40, !7, i64 8}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
