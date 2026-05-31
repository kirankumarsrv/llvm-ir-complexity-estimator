; ModuleID = 'corpus_src/zlib/contrib/minizip/minizip.c'
source_filename = "corpus_src/zlib/contrib/minizip/minizip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str.1 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"The file %s exists. Overwrite ? [y]es, [n]o, [a]ppend : \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%1s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"creating %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error in opening %s in zipfile\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"error in opening %s for reading\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"error in reading %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"error in writing %s in the zipfile\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error in closing %s in the zipfile\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"error in closing %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"file %s crc %lx\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"File : %s is %lu bytes\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@str.19 = private unnamed_addr constant [73 x i8] c"MiniZip 1.1, demo of zLib + MiniZip64 package, written by Gilles Vollant\00", align 1
@str.20 = private unnamed_addr constant [71 x i8] c"more info on MiniZip at https://www.winimage.com/zLibDll/minizip.html\0A\00", align 1
@str.21 = private unnamed_addr constant [258 x i8] c"Usage : minizip [-o] [-a] [-0 to -9] [-p password] [-j] file.zip [files_to_add]\0A\0A  -o  Overwrite existing file.zip\0A  -a  Append to existing file.zip\0A  -0  Store only\0A  -1  Compress faster\0A  -9  Compress better\0A\0A  -j  exclude path. store only the file name.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca i64, align 8
  %5 = alloca [257 x i8], align 16
  %6 = alloca [272 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.zip_fileinfo, align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %6) #14
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  %11 = icmp eq i32 %0, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = icmp sgt i32 %0, 1
  br i1 %13, label %16, label %81

14:                                               ; preds = %2
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  br label %347

16:                                               ; preds = %12, %68
  %17 = phi i32 [ %75, %68 ], [ 1, %12 ]
  %18 = phi i32 [ %73, %68 ], [ 0, %12 ]
  %19 = phi i32 [ %72, %68 ], [ -1, %12 ]
  %20 = phi i32 [ %71, %68 ], [ 0, %12 ]
  %21 = phi i32 [ %70, %68 ], [ 0, %12 ]
  %22 = phi ptr [ %69, %68 ], [ null, %12 ]
  %23 = sext i32 %17 to i64
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 45
  br i1 %27, label %28, label %65

28:                                               ; preds = %16
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %28, %59
  %33 = phi i8 [ %63, %59 ], [ %30, %28 ]
  %34 = phi ptr [ %62, %59 ], [ %29, %28 ]
  %35 = phi i32 [ %61, %59 ], [ %17, %28 ]
  %36 = phi i32 [ %44, %59 ], [ %18, %28 ]
  %37 = phi i32 [ %48, %59 ], [ %19, %28 ]
  %38 = phi i32 [ %50, %59 ], [ %20, %28 ]
  %39 = phi ptr [ %60, %59 ], [ %22, %28 ]
  %40 = and i8 %33, -33
  %41 = icmp eq i8 %40, 79
  %42 = select i1 %41, i32 1, i32 %36
  %43 = icmp eq i8 %40, 65
  %44 = select i1 %43, i32 2, i32 %42
  %45 = add i8 %33, -48
  %46 = icmp ult i8 %45, 10
  %47 = zext nneg i8 %45 to i32
  %48 = select i1 %46, i32 %47, i32 %37
  %49 = icmp eq i8 %40, 74
  %50 = select i1 %49, i32 1, i32 %38
  %51 = icmp eq i8 %40, 80
  br i1 %51, label %52, label %59

52:                                               ; preds = %32
  %53 = add nsw i32 %35, 1
  %54 = icmp slt i32 %53, %0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %32, %55, %52
  %60 = phi ptr [ %58, %55 ], [ %39, %52 ], [ %39, %32 ]
  %61 = phi i32 [ %53, %55 ], [ %35, %52 ], [ %35, %32 ]
  %62 = getelementptr inbounds i8, ptr %34, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %32, !llvm.loop !10

65:                                               ; preds = %16
  %66 = icmp eq i32 %21, 0
  %67 = select i1 %66, i32 %17, i32 %21
  br label %68

68:                                               ; preds = %59, %28, %65
  %69 = phi ptr [ %22, %65 ], [ %22, %28 ], [ %60, %59 ]
  %70 = phi i32 [ %67, %65 ], [ %21, %28 ], [ %21, %59 ]
  %71 = phi i32 [ %20, %65 ], [ %20, %28 ], [ %50, %59 ]
  %72 = phi i32 [ %19, %65 ], [ %19, %28 ], [ %48, %59 ]
  %73 = phi i32 [ %18, %65 ], [ %18, %28 ], [ %44, %59 ]
  %74 = phi i32 [ %17, %65 ], [ %17, %28 ], [ %61, %59 ]
  %75 = add nsw i32 %74, 1
  %76 = icmp slt i32 %75, %0
  br i1 %76, label %16, label %77, !llvm.loop !12

77:                                               ; preds = %68
  %78 = icmp eq i32 %71, 0
  %79 = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %86

81:                                               ; preds = %12
  %82 = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %341

84:                                               ; preds = %81, %77
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %347

86:                                               ; preds = %77
  %87 = icmp eq i32 %70, 0
  br i1 %87, label %341, label %88

88:                                               ; preds = %86
  %89 = sext i32 %70 to i64
  %90 = getelementptr inbounds ptr, ptr %1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %91, i64 noundef 255) #14
  %93 = getelementptr inbounds [272 x i8], ptr %6, i64 0, i64 256
  store i8 0, ptr %93, align 16, !tbaa !9
  %94 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %88
  %98 = and i64 %94, 4294967295
  %99 = icmp ult i64 %98, 8
  br i1 %99, label %125, label %100

100:                                              ; preds = %97
  %101 = and i64 %94, 7
  %102 = sub nsw i64 %98, %101
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi i64 [ 0, %100 ], [ %115, %103 ]
  %105 = phi <4 x i32> [ zeroinitializer, %100 ], [ %113, %103 ]
  %106 = phi <4 x i32> [ zeroinitializer, %100 ], [ %114, %103 ]
  %107 = getelementptr inbounds [272 x i8], ptr %6, i64 0, i64 %104
  %108 = getelementptr inbounds i8, ptr %107, i64 4
  %109 = load <4 x i8>, ptr %107, align 8, !tbaa !9
  %110 = load <4 x i8>, ptr %108, align 4, !tbaa !9
  %111 = icmp eq <4 x i8> %109, <i8 46, i8 46, i8 46, i8 46>
  %112 = icmp eq <4 x i8> %110, <i8 46, i8 46, i8 46, i8 46>
  %113 = select <4 x i1> %111, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %105
  %114 = select <4 x i1> %112, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %106
  %115 = add nuw i64 %104, 8
  %116 = icmp eq i64 %115, %102
  br i1 %116, label %117, label %103, !llvm.loop !13

117:                                              ; preds = %103
  %118 = icmp ne <4 x i32> %113, zeroinitializer
  %119 = icmp ne <4 x i32> %114, zeroinitializer
  %120 = select <4 x i1> %118, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %119
  %121 = bitcast <4 x i1> %120 to i4
  %122 = icmp ne i4 %121, 0
  %123 = zext i1 %122 to i32
  %124 = icmp eq i64 %101, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %97, %117
  %126 = phi i64 [ 0, %97 ], [ %102, %117 ]
  %127 = phi i32 [ 0, %97 ], [ %123, %117 ]
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ %135, %128 ], [ %126, %125 ]
  %130 = phi i32 [ %134, %128 ], [ %127, %125 ]
  %131 = getelementptr inbounds [272 x i8], ptr %6, i64 0, i64 %129
  %132 = load i8, ptr %131, align 1, !tbaa !9
  %133 = icmp eq i8 %132, 46
  %134 = select i1 %133, i32 1, i32 %130
  %135 = add nuw nsw i64 %129, 1
  %136 = icmp eq i64 %135, %98
  br i1 %136, label %137, label %128, !llvm.loop !16

137:                                              ; preds = %128, %117
  %138 = phi i32 [ %123, %117 ], [ %134, %128 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %88, %137
  %141 = call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %142 = getelementptr inbounds i8, ptr %6, i64 %141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %142, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  br label %143

143:                                              ; preds = %140, %137
  switch i32 %73, label %169 [
    i32 2, label %144
    i32 0, label %149
  ]

144:                                              ; preds = %143
  %145 = call noalias ptr @fopen64(ptr noundef nonnull %6, ptr noundef nonnull @.str.7)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %174, label %147

147:                                              ; preds = %144
  %148 = call i32 @fclose(ptr noundef nonnull %145)
  br label %173

149:                                              ; preds = %143
  %150 = call noalias ptr @fopen64(ptr noundef nonnull %6, ptr noundef nonnull @.str.7)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %174, label %152

152:                                              ; preds = %149
  %153 = call i32 @fclose(ptr noundef nonnull %150)
  br label %154

154:                                              ; preds = %152, %159
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #14
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %6)
  %156 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.3, ptr noundef nonnull %7)
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  call void @exit(i32 noundef 1) #17
  unreachable

159:                                              ; preds = %154
  %160 = load i8, ptr %7, align 16, !tbaa !9
  %161 = add i8 %160, -97
  %162 = icmp ult i8 %161, 26
  %163 = add nsw i8 %160, -32
  %164 = select i1 %162, i8 %163, i8 %160
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #14
  switch i8 %164, label %154 [
    i8 89, label %165
    i8 78, label %165
    i8 65, label %165
  ]

165:                                              ; preds = %159, %159, %159
  %166 = icmp eq i8 %164, 78
  %167 = icmp eq i8 %164, 65
  %168 = select i1 %167, i32 2, i32 0
  br i1 %166, label %341, label %169

169:                                              ; preds = %143, %165
  %170 = phi i32 [ %168, %165 ], [ %73, %143 ]
  %171 = freeze i32 %170
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %147, %169
  br label %174

174:                                              ; preds = %149, %144, %169, %173
  %175 = phi i32 [ 2, %173 ], [ 0, %169 ], [ 0, %144 ], [ 0, %149 ]
  %176 = call ptr @zipOpen64(ptr noundef nonnull %6, i32 noundef %175) #14
  %177 = icmp ne ptr %176, null
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %6)
  br label %335

180:                                              ; preds = %174
  %181 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %6)
  %182 = add nsw i32 %70, 1
  %183 = icmp slt i32 %182, %0
  %184 = and i1 %177, %183
  br i1 %184, label %185, label %335

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.tm_zip_s, ptr %8, i64 0, i32 4
  %187 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 256
  %188 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %189 = icmp eq ptr %69, null
  %190 = icmp eq i32 %72, 0
  %191 = select i1 %190, i32 0, i32 8
  %192 = sext i32 %182 to i64
  %193 = zext nneg i32 %0 to i64
  br label %194

194:                                              ; preds = %185, %329
  %195 = phi i64 [ %192, %185 ], [ %331, %329 ]
  %196 = getelementptr inbounds ptr, ptr %1, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = load i8, ptr %197, align 1, !tbaa !9
  switch i8 %198, label %208 [
    i8 45, label %199
    i8 47, label %199
  ]

199:                                              ; preds = %194, %194
  %200 = getelementptr inbounds i8, ptr %197, i64 1
  %201 = load i8, ptr %200, align 1, !tbaa !9
  switch i8 %201, label %202 [
    i8 111, label %205
    i8 79, label %205
    i8 97, label %205
    i8 65, label %205
    i8 112, label %205
    i8 80, label %205
  ]

202:                                              ; preds = %199
  %203 = add i8 %201, -48
  %204 = icmp ult i8 %203, 10
  br i1 %204, label %205, label %208

205:                                              ; preds = %202, %199, %199, %199, %199, %199, %199
  %206 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %197) #16
  %207 = icmp eq i64 %206, 2
  br i1 %207, label %329, label %208

208:                                              ; preds = %194, %205, %202
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !tbaa !17
  %209 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(2) @.str.16) #16
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %5) #14
  %212 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %197) #16
  %213 = call i64 @llvm.umin.i64(i64 %212, i64 256)
  %214 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %197, i64 noundef 255) #14
  store i8 0, ptr %187, align 16, !tbaa !9
  %215 = add nsw i64 %213, -1
  %216 = getelementptr inbounds [257 x i8], ptr %5, i64 0, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !9
  %218 = icmp eq i8 %217, 47
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  store i8 0, ptr %216, align 1, !tbaa !9
  br label %220

220:                                              ; preds = %219, %211
  %221 = call i32 @stat(ptr noundef nonnull %5, ptr noundef nonnull %3) #14
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i64, ptr %188, align 8, !tbaa !19
  store i64 %224, ptr %4, align 8, !tbaa !17
  br label %225

225:                                              ; preds = %223, %220
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #14
  br label %226

226:                                              ; preds = %208, %225
  %227 = call ptr @localtime(ptr noundef nonnull %4) #14
  %228 = load <4 x i32>, ptr %227, align 8, !tbaa !23
  store <4 x i32> %228, ptr %8, align 16, !tbaa !23
  %229 = getelementptr inbounds %struct.tm, ptr %227, i64 0, i32 4
  %230 = load <2 x i32>, ptr %229, align 8, !tbaa !23
  store <2 x i32> %230, ptr %186, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  br i1 %189, label %254, label %231

231:                                              ; preds = %226
  %232 = call noalias ptr @fopen64(ptr noundef nonnull %197, ptr noundef nonnull @.str.7)
  %233 = icmp eq ptr %232, null
  br i1 %233, label %251, label %234

234:                                              ; preds = %231, %245
  %235 = phi i64 [ %247, %245 ], [ 0, %231 ]
  %236 = call i64 @fread(ptr noundef nonnull %79, i64 noundef 1, i64 noundef 16384, ptr noundef nonnull %232)
  %237 = icmp ult i64 %236, 16384
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = call i32 @feof(ptr noundef nonnull %232) #14
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %238
  %242 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %197)
  br label %243

243:                                              ; preds = %241, %238
  %244 = icmp eq i64 %236, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %243, %234
  %246 = phi i1 [ %240, %243 ], [ true, %234 ]
  %247 = call i64 @crc32_z(i64 noundef %235, ptr noundef nonnull %79, i64 noundef %236) #14
  br i1 %246, label %234, label %248, !llvm.loop !24

248:                                              ; preds = %245, %243
  %249 = phi i64 [ %247, %245 ], [ %235, %243 ]
  %250 = call i32 @fclose(ptr noundef nonnull %232)
  br label %251

251:                                              ; preds = %231, %248
  %252 = phi i64 [ %249, %248 ], [ 0, %231 ]
  %253 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %197, i64 noundef %252)
  br label %254

254:                                              ; preds = %251, %226
  %255 = phi i64 [ 0, %226 ], [ %252, %251 ]
  %256 = call noalias ptr @fopen64(ptr noundef nonnull %197, ptr noundef nonnull @.str.7)
  %257 = icmp eq ptr %256, null
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = call i32 @fseeko64(ptr noundef nonnull %256, i64 noundef 0, i32 noundef 2)
  %260 = call i64 @ftello64(ptr noundef nonnull %256)
  %261 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %197, i64 noundef %260)
  %262 = icmp ugt i64 %260, 4294967294
  %263 = zext i1 %262 to i32
  %264 = call i32 @fclose(ptr noundef nonnull %256)
  br label %265

265:                                              ; preds = %254, %258
  %266 = phi i32 [ %263, %258 ], [ 0, %254 ]
  br label %267

267:                                              ; preds = %270, %265
  %268 = phi ptr [ %197, %265 ], [ %271, %270 ]
  %269 = load i8, ptr %268, align 1, !tbaa !9
  switch i8 %269, label %272 [
    i8 92, label %270
    i8 47, label %270
  ]

270:                                              ; preds = %267, %267
  %271 = getelementptr inbounds i8, ptr %268, i64 1
  br label %267, !llvm.loop !25

272:                                              ; preds = %267
  br i1 %78, label %286, label %273

273:                                              ; preds = %272, %278
  %274 = phi i8 [ %281, %278 ], [ %269, %272 ]
  %275 = phi ptr [ %280, %278 ], [ %268, %272 ]
  %276 = phi ptr [ %279, %278 ], [ null, %272 ]
  switch i8 %274, label %278 [
    i8 0, label %282
    i8 92, label %277
    i8 47, label %277
  ]

277:                                              ; preds = %273, %273
  br label %278

278:                                              ; preds = %273, %277
  %279 = phi ptr [ %275, %277 ], [ %276, %273 ]
  %280 = getelementptr inbounds i8, ptr %275, i64 1
  %281 = load i8, ptr %280, align 1, !tbaa !9
  br label %273, !llvm.loop !26

282:                                              ; preds = %273
  %283 = icmp eq ptr %276, null
  %284 = getelementptr inbounds i8, ptr %276, i64 1
  %285 = select i1 %283, ptr %268, ptr %284
  br label %286

286:                                              ; preds = %282, %272
  %287 = phi ptr [ %285, %282 ], [ %268, %272 ]
  %288 = call i32 @zipOpenNewFileInZip3_64(ptr noundef nonnull %176, ptr noundef %287, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %191, i32 noundef %72, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef %69, i64 noundef %255, i32 noundef %266) #14
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %197)
  br label %317

292:                                              ; preds = %286
  %293 = call noalias ptr @fopen64(ptr noundef nonnull %197, ptr noundef nonnull @.str.7)
  %294 = icmp eq ptr %293, null
  br i1 %294, label %323, label %295

295:                                              ; preds = %292, %312
  %296 = call i64 @fread(ptr noundef nonnull %79, i64 noundef 1, i64 noundef 16384, ptr noundef nonnull %293)
  %297 = icmp ult i64 %296, 16384
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = call i32 @feof(ptr noundef nonnull %293) #14
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %197)
  br label %303

303:                                              ; preds = %298, %301
  %304 = phi i32 [ -1, %301 ], [ 0, %298 ]
  %305 = icmp eq i64 %296, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %295, %303
  %307 = trunc i64 %296 to i32
  %308 = call i32 @zipWriteInFileInZip(ptr noundef nonnull %176, ptr noundef nonnull %79, i32 noundef %307) #14
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %197)
  br label %314

312:                                              ; preds = %306
  %313 = icmp eq i32 %308, 0
  br i1 %313, label %295, label %314, !llvm.loop !27

314:                                              ; preds = %303, %312, %310
  %315 = phi i32 [ %308, %310 ], [ %304, %303 ], [ %308, %312 ]
  %316 = call i32 @fclose(ptr noundef nonnull %293)
  br label %317

317:                                              ; preds = %290, %314
  %318 = phi i32 [ %315, %314 ], [ %288, %290 ]
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  %321 = call i32 @zipCloseFileInZip(ptr noundef nonnull %176) #14
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %320, %292
  %324 = phi ptr [ @.str.8, %292 ], [ @.str.11, %320 ]
  %325 = phi i32 [ -1, %292 ], [ %321, %320 ]
  %326 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %324, ptr noundef nonnull %197)
  br label %327

327:                                              ; preds = %323, %317, %320
  %328 = phi i32 [ 0, %320 ], [ -1, %317 ], [ %325, %323 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #14
  br label %329

329:                                              ; preds = %205, %327
  %330 = phi i32 [ 0, %205 ], [ %328, %327 ]
  %331 = add nsw i64 %195, 1
  %332 = icmp slt i64 %331, %193
  %333 = icmp eq i32 %330, 0
  %334 = and i1 %333, %332
  br i1 %334, label %194, label %335, !llvm.loop !28

335:                                              ; preds = %329, %178, %180
  %336 = phi i32 [ 0, %180 ], [ -1, %178 ], [ %330, %329 ]
  %337 = call i32 @zipClose(ptr noundef %176, ptr noundef null) #14
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %335
  %340 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %6)
  br label %344

341:                                              ; preds = %81, %86, %165
  %342 = phi ptr [ %79, %86 ], [ %79, %165 ], [ %82, %81 ]
  %343 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  br label %344

344:                                              ; preds = %335, %339, %341
  %345 = phi ptr [ %342, %341 ], [ %79, %339 ], [ %79, %335 ]
  %346 = phi i32 [ 0, %341 ], [ %336, %339 ], [ %336, %335 ]
  call void @free(ptr noundef %345) #14
  br label %347

347:                                              ; preds = %344, %84, %14
  %348 = phi i32 [ 0, %14 ], [ -104, %84 ], [ %346, %344 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %6) #14
  ret i32 %348
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare ptr @zipOpen64(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @zipOpenNewFileInZip3_64(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @zipWriteInFileInZip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @zipCloseFileInZip(ptr noundef) local_unnamed_addr #7

declare i32 @zipClose(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #9

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko64(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftello64(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }

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
!13 = distinct !{!13, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !11, !15, !14}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!20, !18, i64 88}
!20 = !{!"stat", !18, i64 0, !18, i64 8, !18, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !7, i64 120}
!21 = !{!"int", !7, i64 0}
!22 = !{!"timespec", !18, i64 0, !18, i64 8}
!23 = !{!21, !21, i64 0}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
