; ModuleID = 'corpus_src/zlib/contrib/infback9/inftree9.c'
source_filename = "corpus_src/zlib/contrib/infback9/inftree9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflate9_copyright = dso_local local_unnamed_addr constant [50 x i8] c" inflate9 1.3.2.1 Copyright 1995-2026 Mark Adler \00", align 16
@inflate_table9.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 3, i16 0, i16 0], align 16
@inflate_table9.lext = internal unnamed_addr constant [31 x i16] [i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 128, i16 129, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 130, i16 131, i16 131, i16 131, i16 131, i16 132, i16 132, i16 132, i16 132, i16 133, i16 133, i16 133, i16 133, i16 144, i16 68, i16 193], align 16
@inflate_table9.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 -32767, i16 -16383], align 16
@inflate_table9.dext = internal unnamed_addr constant [32 x i16] [i16 128, i16 128, i16 128, i16 128, i16 129, i16 129, i16 130, i16 130, i16 131, i16 131, i16 132, i16 132, i16 133, i16 133, i16 134, i16 134, i16 135, i16 135, i16 136, i16 136, i16 137, i16 137, i16 138, i16 138, i16 139, i16 139, i16 140, i16 140, i16 141, i16 141, i16 142, i16 142], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflate_table9(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !9
  br label %71

12:                                               ; preds = %6
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 3
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967292
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %48, %18 ]
  %20 = phi i64 [ 0, %16 ], [ %49, %18 ]
  %21 = getelementptr inbounds i16, ptr %1, i64 %19
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !5
  %27 = or disjoint i64 %19, 1
  %28 = getelementptr inbounds i16, ptr %1, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !5
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 2, !tbaa !5
  %34 = or disjoint i64 %19, 2
  %35 = getelementptr inbounds i16, ptr %1, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !5
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !5
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 2, !tbaa !5
  %41 = or disjoint i64 %19, 3
  %42 = getelementptr inbounds i16, ptr %1, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !5
  %48 = add nuw nsw i64 %19, 4
  %49 = add i64 %20, 4
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %18, !llvm.loop !11

51:                                               ; preds = %18, %12
  %52 = phi i64 [ 0, %12 ], [ %48, %18 ]
  %53 = icmp eq i64 %14, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %63, %54 ], [ %52, %51 ]
  %56 = phi i64 [ %64, %54 ], [ 0, %51 ]
  %57 = getelementptr inbounds i16, ptr %1, i64 %55
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 2, !tbaa !5
  %63 = add nuw nsw i64 %55, 1
  %64 = add i64 %56, 1
  %65 = icmp eq i64 %64, %14
  br i1 %65, label %66, label %54, !llvm.loop !13

66:                                               ; preds = %54, %51
  %67 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = load i32, ptr %4, align 4, !tbaa !9
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %71, label %128

71:                                               ; preds = %10, %66
  %72 = phi i32 [ %11, %10 ], [ %69, %66 ]
  %73 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %74 = load i16, ptr %73, align 4, !tbaa !5
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %71
  %77 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %78 = load i16, ptr %77, align 2, !tbaa !5
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %128

80:                                               ; preds = %76
  %81 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %82 = load i16, ptr %81, align 8, !tbaa !5
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %80
  %85 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  %89 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %90 = load i16, ptr %89, align 4, !tbaa !5
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %94 = load i16, ptr %93, align 2, !tbaa !5
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %98 = load i16, ptr %97, align 16, !tbaa !5
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %102 = load i16, ptr %101, align 2, !tbaa !5
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %106 = load i16, ptr %105, align 4, !tbaa !5
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %110 = load i16, ptr %109, align 2, !tbaa !5
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %114 = load i16, ptr %113, align 8, !tbaa !5
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %122 = load i16, ptr %121, align 4, !tbaa !5
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !5
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %571, label %128

128:                                              ; preds = %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %71, %66
  %129 = phi i32 [ 15, %66 ], [ 16, %71 ], [ 16, %76 ], [ 16, %80 ], [ 16, %84 ], [ 16, %88 ], [ 16, %92 ], [ 16, %96 ], [ 16, %100 ], [ 16, %104 ], [ 16, %108 ], [ 16, %112 ], [ 16, %116 ], [ 16, %120 ], [ 16, %124 ]
  %130 = phi i32 [ %69, %66 ], [ %72, %71 ], [ %72, %76 ], [ %72, %80 ], [ %72, %84 ], [ %72, %88 ], [ %72, %92 ], [ %72, %96 ], [ %72, %100 ], [ %72, %104 ], [ %72, %108 ], [ %72, %112 ], [ %72, %116 ], [ %72, %120 ], [ %72, %124 ]
  %131 = phi i16 [ %68, %66 ], [ 0, %71 ], [ 0, %76 ], [ 0, %80 ], [ 0, %84 ], [ 0, %88 ], [ 0, %92 ], [ 0, %96 ], [ 0, %100 ], [ 0, %104 ], [ 0, %108 ], [ 0, %112 ], [ 0, %116 ], [ 0, %120 ], [ 0, %124 ]
  %132 = phi i1 [ true, %66 ], [ true, %71 ], [ true, %76 ], [ true, %80 ], [ true, %84 ], [ true, %88 ], [ true, %92 ], [ true, %96 ], [ true, %100 ], [ true, %104 ], [ true, %108 ], [ true, %112 ], [ true, %116 ], [ true, %120 ], [ false, %124 ]
  %133 = phi i32 [ 15, %66 ], [ 14, %71 ], [ 13, %76 ], [ 12, %80 ], [ 11, %84 ], [ 10, %88 ], [ 9, %92 ], [ 8, %96 ], [ 7, %100 ], [ 6, %104 ], [ 5, %108 ], [ 4, %112 ], [ 3, %116 ], [ 2, %120 ], [ 1, %124 ]
  %134 = tail call i32 @llvm.umin.i32(i32 %130, i32 %133)
  %135 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %136 = load i16, ptr %135, align 2, !tbaa !5
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %194

138:                                              ; preds = %128
  %139 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %140 = load i16, ptr %139, align 4, !tbaa !5
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %191

142:                                              ; preds = %138
  %143 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %144 = load i16, ptr %143, align 2, !tbaa !5
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %191

146:                                              ; preds = %142
  %147 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %148 = load i16, ptr %147, align 8, !tbaa !5
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %191

150:                                              ; preds = %146
  %151 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %152 = load i16, ptr %151, align 2, !tbaa !5
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %191

154:                                              ; preds = %150
  %155 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %156 = load i16, ptr %155, align 4, !tbaa !5
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %191

158:                                              ; preds = %154
  %159 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %160 = load i16, ptr %159, align 2, !tbaa !5
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  %163 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %164 = load i16, ptr %163, align 16, !tbaa !5
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %168 = load i16, ptr %167, align 2, !tbaa !5
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %172 = load i16, ptr %171, align 4, !tbaa !5
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %170
  %175 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %176 = load i16, ptr %175, align 2, !tbaa !5
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %180 = load i16, ptr %179, align 8, !tbaa !5
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %184 = load i16, ptr %183, align 2, !tbaa !5
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %188 = load i16, ptr %187, align 4, !tbaa !5
  %189 = icmp eq i16 %188, 0
  %190 = select i1 %189, i32 %129, i32 14
  br label %191

191:                                              ; preds = %186, %182, %178, %174, %170, %166, %162, %158, %154, %150, %146, %142, %138
  %192 = phi i32 [ 13, %182 ], [ 12, %178 ], [ 11, %174 ], [ 10, %170 ], [ 9, %166 ], [ 8, %162 ], [ 7, %158 ], [ 6, %154 ], [ 5, %150 ], [ 4, %146 ], [ 3, %142 ], [ 2, %138 ], [ %190, %186 ]
  %193 = tail call i32 @llvm.umax.i32(i32 %134, i32 %192)
  br label %197

194:                                              ; preds = %128
  %195 = tail call i32 @llvm.umax.i32(i32 %134, i32 1)
  %196 = icmp ugt i16 %136, 2
  br i1 %196, label %571, label %197

197:                                              ; preds = %191, %194
  %198 = phi i32 [ %193, %191 ], [ %195, %194 ]
  %199 = phi i32 [ %192, %191 ], [ 1, %194 ]
  %200 = shl nuw nsw i16 %136, 1
  %201 = zext nneg i16 %200 to i32
  %202 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %203 = load i16, ptr %202, align 4, !tbaa !5
  %204 = zext i16 %203 to i32
  %205 = add nuw nsw i32 %201, %204
  %206 = icmp ugt i32 %205, 4
  br i1 %206, label %571, label %207

207:                                              ; preds = %197
  %208 = shl nuw nsw i32 %205, 1
  %209 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = zext i16 %210 to i32
  %212 = add nuw nsw i32 %208, %211
  %213 = icmp ugt i32 %212, 8
  br i1 %213, label %571, label %214

214:                                              ; preds = %207
  %215 = shl nuw nsw i32 %212, 1
  %216 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %217 = load i16, ptr %216, align 8, !tbaa !5
  %218 = zext i16 %217 to i32
  %219 = add nuw nsw i32 %215, %218
  %220 = icmp ugt i32 %219, 16
  br i1 %220, label %571, label %221

221:                                              ; preds = %214
  %222 = shl nuw nsw i32 %219, 1
  %223 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %224 = load i16, ptr %223, align 2, !tbaa !5
  %225 = zext i16 %224 to i32
  %226 = add nuw nsw i32 %222, %225
  %227 = icmp ugt i32 %226, 32
  br i1 %227, label %571, label %228

228:                                              ; preds = %221
  %229 = shl nuw nsw i32 %226, 1
  %230 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %231 = load i16, ptr %230, align 4, !tbaa !5
  %232 = zext i16 %231 to i32
  %233 = add nuw nsw i32 %229, %232
  %234 = icmp ugt i32 %233, 64
  br i1 %234, label %571, label %235

235:                                              ; preds = %228
  %236 = shl nuw nsw i32 %233, 1
  %237 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %238 = load i16, ptr %237, align 2, !tbaa !5
  %239 = zext i16 %238 to i32
  %240 = add nuw nsw i32 %236, %239
  %241 = icmp ugt i32 %240, 128
  br i1 %241, label %571, label %242

242:                                              ; preds = %235
  %243 = shl nuw nsw i32 %240, 1
  %244 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %245 = load i16, ptr %244, align 16, !tbaa !5
  %246 = zext i16 %245 to i32
  %247 = add nuw nsw i32 %243, %246
  %248 = icmp ugt i32 %247, 256
  br i1 %248, label %571, label %249

249:                                              ; preds = %242
  %250 = shl nuw nsw i32 %247, 1
  %251 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %252 = load i16, ptr %251, align 2, !tbaa !5
  %253 = zext i16 %252 to i32
  %254 = add nuw nsw i32 %250, %253
  %255 = icmp ugt i32 %254, 512
  br i1 %255, label %571, label %256

256:                                              ; preds = %249
  %257 = shl nuw nsw i32 %254, 1
  %258 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %259 = load i16, ptr %258, align 4, !tbaa !5
  %260 = zext i16 %259 to i32
  %261 = add nuw nsw i32 %257, %260
  %262 = icmp ugt i32 %261, 1024
  br i1 %262, label %571, label %263

263:                                              ; preds = %256
  %264 = shl nuw nsw i32 %261, 1
  %265 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %266 = load i16, ptr %265, align 2, !tbaa !5
  %267 = zext i16 %266 to i32
  %268 = add nuw nsw i32 %264, %267
  %269 = icmp ugt i32 %268, 2048
  br i1 %269, label %571, label %270

270:                                              ; preds = %263
  %271 = shl nuw nsw i32 %268, 1
  %272 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %273 = load i16, ptr %272, align 8, !tbaa !5
  %274 = zext i16 %273 to i32
  %275 = add nuw nsw i32 %271, %274
  %276 = icmp ugt i32 %275, 4096
  br i1 %276, label %571, label %277

277:                                              ; preds = %270
  %278 = shl nuw nsw i32 %275, 1
  %279 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %280 = load i16, ptr %279, align 2, !tbaa !5
  %281 = zext i16 %280 to i32
  %282 = add nuw nsw i32 %278, %281
  %283 = icmp ugt i32 %282, 8192
  br i1 %283, label %571, label %284

284:                                              ; preds = %277
  %285 = shl nuw nsw i32 %282, 1
  %286 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %287 = load i16, ptr %286, align 4, !tbaa !5
  %288 = zext i16 %287 to i32
  %289 = add nuw nsw i32 %285, %288
  %290 = icmp ugt i32 %289, 16384
  br i1 %290, label %571, label %291

291:                                              ; preds = %284
  %292 = shl nuw nsw i32 %289, 1
  %293 = zext i16 %131 to i32
  %294 = add nuw nsw i32 %292, %293
  %295 = icmp ugt i32 %294, 32768
  br i1 %295, label %571, label %296

296:                                              ; preds = %291
  %297 = icmp ne i32 %294, 32768
  %298 = icmp eq i32 %0, 0
  %299 = or i1 %298, %132
  %300 = and i1 %297, %299
  br i1 %300, label %571, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %302, align 2, !tbaa !5
  %303 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 2
  store i16 %136, ptr %303, align 4, !tbaa !5
  %304 = add i16 %203, %136
  %305 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 3
  store i16 %304, ptr %305, align 2, !tbaa !5
  %306 = add i16 %210, %304
  %307 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 4
  store i16 %306, ptr %307, align 8, !tbaa !5
  %308 = add i16 %217, %306
  %309 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 5
  store i16 %308, ptr %309, align 2, !tbaa !5
  %310 = add i16 %224, %308
  %311 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 6
  store i16 %310, ptr %311, align 4, !tbaa !5
  %312 = add i16 %231, %310
  %313 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 7
  store i16 %312, ptr %313, align 2, !tbaa !5
  %314 = add i16 %238, %312
  %315 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 8
  store i16 %314, ptr %315, align 16, !tbaa !5
  %316 = add i16 %245, %314
  %317 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 9
  store i16 %316, ptr %317, align 2, !tbaa !5
  %318 = add i16 %252, %316
  %319 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 10
  store i16 %318, ptr %319, align 4, !tbaa !5
  %320 = add i16 %259, %318
  %321 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 11
  store i16 %320, ptr %321, align 2, !tbaa !5
  %322 = add i16 %266, %320
  %323 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 12
  store i16 %322, ptr %323, align 8, !tbaa !5
  %324 = add i16 %273, %322
  %325 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 13
  store i16 %324, ptr %325, align 2, !tbaa !5
  %326 = add i16 %280, %324
  %327 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 14
  store i16 %326, ptr %327, align 4, !tbaa !5
  %328 = add i16 %287, %326
  %329 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 15
  store i16 %328, ptr %329, align 2, !tbaa !5
  br i1 %9, label %382, label %330

330:                                              ; preds = %301
  %331 = zext i32 %2 to i64
  %332 = and i64 %331, 1
  %333 = icmp eq i32 %2, 1
  br i1 %333, label %367, label %334

334:                                              ; preds = %330
  %335 = and i64 %331, 4294967294
  br label %336

336:                                              ; preds = %363, %334
  %337 = phi i64 [ 0, %334 ], [ %364, %363 ]
  %338 = phi i64 [ 0, %334 ], [ %365, %363 ]
  %339 = getelementptr inbounds i16, ptr %1, i64 %337
  %340 = load i16, ptr %339, align 2, !tbaa !5
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %350, label %342

342:                                              ; preds = %336
  %343 = trunc i64 %337 to i16
  %344 = zext i16 %340 to i64
  %345 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %344
  %346 = load i16, ptr %345, align 2, !tbaa !5
  %347 = add i16 %346, 1
  store i16 %347, ptr %345, align 2, !tbaa !5
  %348 = zext i16 %346 to i64
  %349 = getelementptr inbounds i16, ptr %5, i64 %348
  store i16 %343, ptr %349, align 2, !tbaa !5
  br label %350

350:                                              ; preds = %336, %342
  %351 = or disjoint i64 %337, 1
  %352 = getelementptr inbounds i16, ptr %1, i64 %351
  %353 = load i16, ptr %352, align 2, !tbaa !5
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %363, label %355

355:                                              ; preds = %350
  %356 = trunc i64 %351 to i16
  %357 = zext i16 %353 to i64
  %358 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !5
  %360 = add i16 %359, 1
  store i16 %360, ptr %358, align 2, !tbaa !5
  %361 = zext i16 %359 to i64
  %362 = getelementptr inbounds i16, ptr %5, i64 %361
  store i16 %356, ptr %362, align 2, !tbaa !5
  br label %363

363:                                              ; preds = %355, %350
  %364 = add nuw nsw i64 %337, 2
  %365 = add i64 %338, 2
  %366 = icmp eq i64 %365, %335
  br i1 %366, label %367, label %336, !llvm.loop !15

367:                                              ; preds = %363, %330
  %368 = phi i64 [ 0, %330 ], [ %364, %363 ]
  %369 = icmp eq i64 %332, 0
  br i1 %369, label %382, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds i16, ptr %1, i64 %368
  %372 = load i16, ptr %371, align 2, !tbaa !5
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = trunc i64 %368 to i16
  %376 = zext i16 %372 to i64
  %377 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %376
  %378 = load i16, ptr %377, align 2, !tbaa !5
  %379 = add i16 %378, 1
  store i16 %379, ptr %377, align 2, !tbaa !5
  %380 = zext i16 %378 to i64
  %381 = getelementptr inbounds i16, ptr %5, i64 %380
  store i16 %375, ptr %381, align 2, !tbaa !5
  br label %382

382:                                              ; preds = %367, %374, %370, %301
  switch i32 %0, label %385 [
    i32 0, label %389
    i32 1, label %383
  ]

383:                                              ; preds = %382
  %384 = icmp ugt i32 %198, 9
  br i1 %384, label %571, label %389

385:                                              ; preds = %382
  %386 = icmp ugt i32 %198, 9
  %387 = icmp eq i32 %0, 2
  %388 = select i1 %387, i1 %386, i1 false
  br i1 %388, label %571, label %389

389:                                              ; preds = %383, %382, %385
  %390 = phi i1 [ %387, %385 ], [ false, %382 ], [ false, %383 ]
  %391 = phi ptr [ @inflate_table9.dbase, %385 ], [ %5, %382 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table9.lbase, i64 -9, i64 22), %383 ]
  %392 = phi ptr [ @inflate_table9.dext, %385 ], [ %5, %382 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table9.lext, i64 -9, i64 22), %383 ]
  %393 = phi i32 [ -1, %385 ], [ 19, %382 ], [ 256, %383 ]
  %394 = phi i1 [ false, %385 ], [ false, %382 ], [ true, %383 ]
  %395 = shl nuw nsw i32 1, %198
  %396 = add nsw i32 %395, -1
  %397 = load ptr, ptr %3, align 8, !tbaa !16
  %398 = trunc i32 %198 to i8
  br label %399

399:                                              ; preds = %519, %389
  %400 = phi i32 [ %476, %519 ], [ %199, %389 ]
  %401 = phi i32 [ %457, %519 ], [ 0, %389 ]
  %402 = phi i32 [ %512, %519 ], [ %198, %389 ]
  %403 = phi i32 [ %484, %519 ], [ 0, %389 ]
  %404 = phi i32 [ %513, %519 ], [ %395, %389 ]
  %405 = phi i32 [ %456, %519 ], [ 0, %389 ]
  %406 = phi i32 [ %479, %519 ], [ -1, %389 ]
  %407 = phi ptr [ %486, %519 ], [ %397, %389 ]
  %408 = shl nuw i32 1, %402
  br label %409

409:                                              ; preds = %481, %399
  %410 = phi i32 [ %400, %399 ], [ %476, %481 ]
  %411 = phi i32 [ %401, %399 ], [ %457, %481 ]
  %412 = phi i32 [ %405, %399 ], [ %456, %481 ]
  %413 = sub nsw i32 %410, %403
  %414 = trunc i32 %413 to i8
  %415 = zext i32 %411 to i64
  %416 = getelementptr inbounds i16, ptr %5, i64 %415
  %417 = load i16, ptr %416, align 2, !tbaa !5
  %418 = zext i16 %417 to i32
  %419 = icmp sgt i32 %393, %418
  br i1 %419, label %429, label %420

420:                                              ; preds = %409
  %421 = icmp slt i32 %393, %418
  br i1 %421, label %422, label %429

422:                                              ; preds = %420
  %423 = zext i16 %417 to i64
  %424 = getelementptr inbounds i16, ptr %392, i64 %423
  %425 = load i16, ptr %424, align 2, !tbaa !5
  %426 = trunc i16 %425 to i8
  %427 = getelementptr inbounds i16, ptr %391, i64 %423
  %428 = load i16, ptr %427, align 2, !tbaa !5
  br label %429

429:                                              ; preds = %420, %409, %422
  %430 = phi i16 [ %428, %422 ], [ %417, %409 ], [ 0, %420 ]
  %431 = phi i8 [ %426, %422 ], [ 0, %409 ], [ 96, %420 ]
  %432 = shl nsw i32 -1, %413
  %433 = lshr i32 %412, %403
  br label %434

434:                                              ; preds = %434, %429
  %435 = phi i32 [ %408, %429 ], [ %436, %434 ]
  %436 = add i32 %435, %432
  %437 = add i32 %436, %433
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.code, ptr %407, i64 %438
  store i8 %431, ptr %439, align 2, !tbaa.struct !18
  %440 = getelementptr inbounds i8, ptr %439, i64 1
  store i8 %414, ptr %440, align 1, !tbaa.struct !20
  %441 = getelementptr inbounds i8, ptr %439, i64 2
  store i16 %430, ptr %441, align 2, !tbaa.struct !21
  %442 = icmp eq i32 %436, 0
  br i1 %442, label %443, label %434, !llvm.loop !22

443:                                              ; preds = %434
  %444 = add nsw i32 %410, -1
  %445 = shl nuw i32 1, %444
  br label %446

446:                                              ; preds = %446, %443
  %447 = phi i32 [ %445, %443 ], [ %450, %446 ]
  %448 = and i32 %447, %412
  %449 = icmp eq i32 %448, 0
  %450 = lshr i32 %447, 1
  br i1 %449, label %451, label %446, !llvm.loop !23

451:                                              ; preds = %446
  %452 = icmp eq i32 %447, 0
  %453 = add i32 %447, -1
  %454 = and i32 %453, %412
  %455 = add i32 %454, %447
  %456 = select i1 %452, i32 0, i32 %455
  %457 = add i32 %411, 1
  %458 = zext nneg i32 %410 to i64
  %459 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %458
  %460 = load i16, ptr %459, align 2, !tbaa !5
  %461 = add i16 %460, -1
  store i16 %461, ptr %459, align 2, !tbaa !5
  %462 = icmp eq i16 %461, 0
  br i1 %462, label %463, label %475

463:                                              ; preds = %451
  %464 = icmp eq i32 %410, %133
  br i1 %464, label %465, label %467

465:                                              ; preds = %463
  %466 = icmp eq i32 %456, 0
  br i1 %466, label %567, label %531

467:                                              ; preds = %463
  %468 = zext i32 %457 to i64
  %469 = getelementptr inbounds i16, ptr %5, i64 %468
  %470 = load i16, ptr %469, align 2, !tbaa !5
  %471 = zext i16 %470 to i64
  %472 = getelementptr inbounds i16, ptr %1, i64 %471
  %473 = load i16, ptr %472, align 2, !tbaa !5
  %474 = zext i16 %473 to i32
  br label %475

475:                                              ; preds = %467, %451
  %476 = phi i32 [ %474, %467 ], [ %410, %451 ]
  %477 = icmp ugt i32 %476, %198
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = and i32 %456, %396
  %480 = icmp eq i32 %479, %406
  br i1 %480, label %481, label %482

481:                                              ; preds = %478, %475
  br label %409

482:                                              ; preds = %478
  %483 = icmp eq i32 %403, 0
  %484 = select i1 %483, i32 %198, i32 %403
  %485 = zext i32 %408 to i64
  %486 = getelementptr inbounds %struct.code, ptr %407, i64 %485
  %487 = sub nsw i32 %476, %484
  %488 = shl nuw i32 1, %487
  %489 = icmp ult i32 %476, %133
  br i1 %489, label %490, label %510

490:                                              ; preds = %482
  %491 = sub nsw i32 %133, %484
  br label %492

492:                                              ; preds = %490, %502
  %493 = phi i32 [ %505, %502 ], [ %476, %490 ]
  %494 = phi i32 [ %504, %502 ], [ %488, %490 ]
  %495 = phi i32 [ %503, %502 ], [ %487, %490 ]
  %496 = zext i32 %493 to i64
  %497 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %496
  %498 = load i16, ptr %497, align 2, !tbaa !5
  %499 = zext i16 %498 to i32
  %500 = sub nsw i32 %494, %499
  %501 = icmp slt i32 %500, 1
  br i1 %501, label %507, label %502

502:                                              ; preds = %492
  %503 = add i32 %495, 1
  %504 = shl nuw i32 %500, 1
  %505 = add i32 %503, %484
  %506 = icmp ult i32 %505, %133
  br i1 %506, label %492, label %507, !llvm.loop !24

507:                                              ; preds = %492, %502
  %508 = phi i32 [ %491, %502 ], [ %495, %492 ]
  %509 = shl nuw i32 1, %508
  br label %510

510:                                              ; preds = %507, %482
  %511 = phi i32 [ %509, %507 ], [ %488, %482 ]
  %512 = phi i32 [ %508, %507 ], [ %487, %482 ]
  %513 = add i32 %511, %404
  %514 = icmp ugt i32 %513, 851
  %515 = select i1 %394, i1 %514, i1 false
  %516 = icmp ugt i32 %513, 593
  %517 = select i1 %390, i1 %516, i1 false
  %518 = select i1 %515, i1 true, i1 %517
  br i1 %518, label %571, label %519

519:                                              ; preds = %510
  %520 = trunc i32 %512 to i8
  %521 = load ptr, ptr %3, align 8, !tbaa !16
  %522 = zext nneg i32 %479 to i64
  %523 = getelementptr inbounds %struct.code, ptr %521, i64 %522
  store i8 %520, ptr %523, align 2, !tbaa !25
  %524 = getelementptr inbounds %struct.code, ptr %521, i64 %522, i32 1
  store i8 %398, ptr %524, align 1, !tbaa !27
  %525 = ptrtoint ptr %486 to i64
  %526 = ptrtoint ptr %521 to i64
  %527 = sub i64 %525, %526
  %528 = lshr exact i64 %527, 2
  %529 = trunc i64 %528 to i16
  %530 = getelementptr inbounds %struct.code, ptr %521, i64 %522, i32 2
  store i16 %529, ptr %530, align 2, !tbaa !28
  br label %399

531:                                              ; preds = %465, %560
  %532 = phi ptr [ %547, %560 ], [ %407, %465 ]
  %533 = phi i8 [ %546, %560 ], [ %414, %465 ]
  %534 = phi i32 [ %564, %560 ], [ %455, %465 ]
  %535 = phi i32 [ %545, %560 ], [ %403, %465 ]
  %536 = phi i32 [ %544, %560 ], [ %133, %465 ]
  %537 = icmp eq i32 %535, 0
  br i1 %537, label %543, label %538

538:                                              ; preds = %531
  %539 = and i32 %534, %396
  %540 = icmp eq i32 %539, %406
  br i1 %540, label %543, label %541

541:                                              ; preds = %538
  %542 = load ptr, ptr %3, align 8, !tbaa !16
  br label %543

543:                                              ; preds = %541, %538, %531
  %544 = phi i32 [ %198, %541 ], [ %536, %538 ], [ %536, %531 ]
  %545 = phi i32 [ 0, %541 ], [ %535, %538 ], [ 0, %531 ]
  %546 = phi i8 [ %398, %541 ], [ %533, %538 ], [ %533, %531 ]
  %547 = phi ptr [ %542, %541 ], [ %532, %538 ], [ %532, %531 ]
  %548 = lshr i32 %534, %545
  %549 = zext i32 %548 to i64
  %550 = getelementptr inbounds %struct.code, ptr %547, i64 %549
  store i8 64, ptr %550, align 2, !tbaa.struct !18
  %551 = getelementptr inbounds i8, ptr %550, i64 1
  store i8 %546, ptr %551, align 1, !tbaa.struct !20
  %552 = getelementptr inbounds i8, ptr %550, i64 2
  store i16 0, ptr %552, align 2, !tbaa.struct !21
  %553 = add i32 %544, -1
  %554 = shl nuw i32 1, %553
  br label %555

555:                                              ; preds = %555, %543
  %556 = phi i32 [ %554, %543 ], [ %559, %555 ]
  %557 = and i32 %556, %534
  %558 = icmp eq i32 %557, 0
  %559 = lshr i32 %556, 1
  br i1 %558, label %560, label %555, !llvm.loop !29

560:                                              ; preds = %555
  %561 = icmp eq i32 %556, 0
  %562 = add i32 %556, -1
  %563 = and i32 %562, %534
  %564 = add i32 %563, %556
  %565 = icmp eq i32 %564, 0
  %566 = select i1 %561, i1 true, i1 %565
  br i1 %566, label %567, label %531

567:                                              ; preds = %560, %465
  %568 = load ptr, ptr %3, align 8, !tbaa !16
  %569 = zext i32 %404 to i64
  %570 = getelementptr inbounds %struct.code, ptr %568, i64 %569
  store ptr %570, ptr %3, align 8, !tbaa !16
  store i32 %198, ptr %4, align 4, !tbaa !9
  br label %571

571:                                              ; preds = %510, %296, %194, %197, %207, %214, %221, %228, %235, %242, %249, %256, %263, %270, %277, %284, %291, %124, %383, %385, %567
  %572 = phi i32 [ 0, %567 ], [ 1, %385 ], [ 1, %383 ], [ -1, %124 ], [ -1, %291 ], [ -1, %284 ], [ -1, %277 ], [ -1, %270 ], [ -1, %263 ], [ -1, %256 ], [ -1, %249 ], [ -1, %242 ], [ -1, %235 ], [ -1, %228 ], [ -1, %221 ], [ -1, %214 ], [ -1, %207 ], [ -1, %197 ], [ -1, %194 ], [ -1, %296 ], [ 1, %510 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #4
  ret i32 %572
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{i64 0, i64 1, !19, i64 1, i64 1, !19, i64 2, i64 2, !5}
!19 = !{!7, !7, i64 0}
!20 = !{i64 0, i64 1, !19, i64 1, i64 2, !5}
!21 = !{i64 0, i64 2, !5}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26, !7, i64 0}
!26 = !{!"", !7, i64 0, !7, i64 1, !6, i64 2}
!27 = !{!26, !7, i64 1}
!28 = !{!26, !6, i64 2}
!29 = distinct !{!29, !12}
