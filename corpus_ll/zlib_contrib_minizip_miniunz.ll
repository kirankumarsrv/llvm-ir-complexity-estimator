; ModuleID = 'corpus_src/zlib/contrib/minizip/miniunz.c'
source_filename = "corpus_src/zlib/contrib/minizip/miniunz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.unz_global_info64_s = type { i64, i64 }
%struct.unz_file_info64_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }
%struct.utimbuf = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot open %s or %s.zip\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s opened\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error changing into %s, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"error %d with zipfile in unzGetGlobalInfo\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"error %d with zipfile in unzGetCurrentFileInfo\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Stored\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Defl:N\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Defl:X\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Defl:F\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"BZip2 \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Unkn. \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"  %6s%c\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c" %3lu%%  %2.2lu-%2.2lu-%2.2lu  %2.2lu:%2.2lu  %8.8lx   %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"error %d with zipfile in unzGoToNextFile\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"creating directory: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"error %d with zipfile in unzOpenCurrentFilePassword\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"The file %s exists. Overwrite ? [y]es, [n]o, [A]ll: \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%1s\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c" extracting: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"error %d with zipfile in unzReadCurrentFile\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"error %d with zipfile in unzCloseCurrentFile\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"couldn't create directory %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"file %s not found in the zipfile\0A\00", align 1
@str = private unnamed_addr constant [66 x i8] c"MiniUnz 1.1, demo of zLib + Unz package written by Gilles Vollant\00", align 1
@str.37 = private unnamed_addr constant [58 x i8] c"more info at https://www.winimage.com/zLibDll/unzip.html\0A\00", align 1
@str.38 = private unnamed_addr constant [320 x i8] c"Usage : miniunz [-e] [-x] [-v] [-l] [-o] [-p password] file.zip [file_to_extr.] [-d extractdir]\0A\0A  -e  Extract without pathname (junk paths)\0A  -x  Extract with pathname\0A  -v  list files\0A  -l  list files\0A  -d  directory to extract into\0A  -o  overwrite files without prompting\0A  -p  extract encrypted file using password\0A\00", align 1
@str.39 = private unnamed_addr constant [65 x i8] c"  Length  Method     Size Ratio   Date    Time   CRC-32     Name\00", align 1
@str.40 = private unnamed_addr constant [65 x i8] c"  ------  ------     ---- -----   ----    ----   ------     ----\00", align 1
@str.41 = private unnamed_addr constant [32 x i8] c"error in writing extracted file\00", align 1
@str.43 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.unz_global_info64_s, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  %10 = alloca %struct.unz_global_info64_s, align 8
  %11 = alloca [65537 x i8], align 16
  %12 = alloca %struct.unz_file_info64_s, align 8
  %13 = alloca [272 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %13) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %13, i8 0, i64 272, i1 false)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  %16 = icmp eq i32 %0, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = icmp sgt i32 %0, 1
  br i1 %18, label %19, label %111

19:                                               ; preds = %17
  %20 = getelementptr ptr, ptr %1, i64 1
  br label %23

21:                                               ; preds = %2
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  br label %314

23:                                               ; preds = %19, %87
  %24 = phi ptr [ null, %19 ], [ %96, %87 ]
  %25 = phi i32 [ 0, %19 ], [ %95, %87 ]
  %26 = phi i32 [ 0, %19 ], [ %94, %87 ]
  %27 = phi i32 [ 0, %19 ], [ %93, %87 ]
  %28 = phi i32 [ 0, %19 ], [ %92, %87 ]
  %29 = phi i32 [ 1, %19 ], [ %97, %87 ]
  %30 = phi ptr [ null, %19 ], [ %90, %87 ]
  %31 = phi ptr [ null, %19 ], [ %89, %87 ]
  %32 = phi ptr [ null, %19 ], [ %88, %87 ]
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 45
  br i1 %37, label %38, label %80

38:                                               ; preds = %23
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %87, label %42

42:                                               ; preds = %38, %72
  %43 = phi i8 [ %78, %72 ], [ %40, %38 ]
  %44 = phi ptr [ %77, %72 ], [ %39, %38 ]
  %45 = phi ptr [ %73, %72 ], [ %24, %38 ]
  %46 = phi i32 [ %74, %72 ], [ %25, %38 ]
  %47 = phi i32 [ %60, %72 ], [ %26, %38 ]
  %48 = phi i32 [ %58, %72 ], [ %27, %38 ]
  %49 = phi i32 [ %56, %72 ], [ %28, %38 ]
  %50 = phi i32 [ %76, %72 ], [ %29, %38 ]
  %51 = phi ptr [ %75, %72 ], [ %30, %38 ]
  %52 = and i8 %43, -33
  %53 = icmp eq i8 %52, 76
  %54 = icmp eq i8 %52, 86
  %55 = or i1 %54, %53
  %56 = select i1 %55, i32 1, i32 %49
  %57 = icmp eq i8 %52, 69
  %58 = select i1 %57, i32 1, i32 %48
  %59 = icmp eq i8 %52, 79
  %60 = select i1 %59, i32 1, i32 %47
  switch i8 %52, label %72 [
    i8 68, label %61
    i8 80, label %65
  ]

61:                                               ; preds = %42
  %62 = sext i32 %50 to i64
  %63 = getelementptr ptr, ptr %20, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  br label %72

65:                                               ; preds = %42
  %66 = add nsw i32 %50, 1
  %67 = icmp slt i32 %66, %0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = sext i32 %66 to i64
  %70 = getelementptr inbounds ptr, ptr %1, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  br label %72

72:                                               ; preds = %42, %61, %68, %65
  %73 = phi ptr [ %45, %68 ], [ %45, %65 ], [ %64, %61 ], [ %45, %42 ]
  %74 = phi i32 [ %46, %68 ], [ %46, %65 ], [ 1, %61 ], [ %46, %42 ]
  %75 = phi ptr [ %71, %68 ], [ %51, %65 ], [ %51, %61 ], [ %51, %42 ]
  %76 = phi i32 [ %66, %68 ], [ %50, %65 ], [ %50, %61 ], [ %50, %42 ]
  %77 = getelementptr inbounds i8, ptr %44, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %42, !llvm.loop !10

80:                                               ; preds = %23
  %81 = icmp eq ptr %32, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %80
  %83 = icmp ne ptr %31, null
  %84 = icmp ne i32 %25, 0
  %85 = select i1 %83, i1 true, i1 %84
  %86 = select i1 %85, ptr %31, ptr %35
  br label %87

87:                                               ; preds = %72, %38, %82, %80
  %88 = phi ptr [ %35, %80 ], [ %32, %82 ], [ %32, %38 ], [ %32, %72 ]
  %89 = phi ptr [ %31, %80 ], [ %86, %82 ], [ %31, %38 ], [ %31, %72 ]
  %90 = phi ptr [ %30, %80 ], [ %30, %82 ], [ %30, %38 ], [ %75, %72 ]
  %91 = phi i32 [ %29, %80 ], [ %29, %82 ], [ %29, %38 ], [ %76, %72 ]
  %92 = phi i32 [ %28, %80 ], [ %28, %82 ], [ %28, %38 ], [ %56, %72 ]
  %93 = phi i32 [ %27, %80 ], [ %27, %82 ], [ %27, %38 ], [ %58, %72 ]
  %94 = phi i32 [ %26, %80 ], [ %26, %82 ], [ %26, %38 ], [ %60, %72 ]
  %95 = phi i32 [ %25, %80 ], [ %25, %82 ], [ %25, %38 ], [ %74, %72 ]
  %96 = phi ptr [ %24, %80 ], [ %24, %82 ], [ %24, %38 ], [ %73, %72 ]
  %97 = add nsw i32 %91, 1
  %98 = icmp slt i32 %97, %0
  br i1 %98, label %23, label %99, !llvm.loop !12

99:                                               ; preds = %87
  %100 = icmp eq ptr %88, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %99
  %102 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %88, i64 noundef 255) #15
  %103 = getelementptr inbounds [272 x i8], ptr %13, i64 0, i64 256
  store i8 0, ptr %103, align 16, !tbaa !9
  %104 = call ptr @unzOpen64(ptr noundef nonnull %88) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = call i64 @strlen(ptr nonnull dereferenceable(1) %13)
  %108 = getelementptr inbounds i8, ptr %13, i64 %107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %108, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %109 = call ptr @unzOpen64(ptr noundef nonnull %13) #15
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %17, %99, %106
  %112 = phi ptr [ null, %99 ], [ %88, %106 ], [ null, %17 ]
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %112, ptr noundef %112)
  br label %314

114:                                              ; preds = %101, %106
  %115 = phi ptr [ %109, %106 ], [ %104, %101 ]
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %13)
  %117 = icmp eq i32 %92, 1
  br i1 %117, label %118, label %265

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  %119 = call i32 @unzGetGlobalInfo64(ptr noundef nonnull %115, ptr noundef nonnull %10) #15
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %119)
  br label %123

123:                                              ; preds = %121, %118
  %124 = call i32 @puts(ptr nonnull dereferenceable(1) @str.39)
  %125 = call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  %126 = load i64, ptr %10, align 8, !tbaa !13
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %264, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 7
  %130 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 6
  %131 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 2
  %132 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 3
  %133 = getelementptr inbounds [21 x i8], ptr %9, i64 0, i64 20
  %134 = getelementptr inbounds [21 x i8], ptr %9, i64 0, i64 19
  %135 = getelementptr inbounds [21 x i8], ptr %8, i64 0, i64 20
  %136 = getelementptr inbounds [21 x i8], ptr %8, i64 0, i64 19
  %137 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 14, i32 4
  %138 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 14, i32 3
  %139 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 14, i32 5
  %140 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 14, i32 2
  %141 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 14, i32 1
  %142 = getelementptr inbounds %struct.unz_file_info64_s, ptr %12, i64 0, i32 5
  br label %143

143:                                              ; preds = %261, %128
  %144 = phi i64 [ 0, %128 ], [ %250, %261 ]
  call void @llvm.lifetime.start.p0(i64 65537, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %12) #15
  %145 = call i32 @unzGetCurrentFileInfo64(ptr noundef nonnull %115, ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #15
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %145)
  br label %260

149:                                              ; preds = %143
  %150 = load i64, ptr %129, align 8, !tbaa !16
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i64, ptr %130, align 8, !tbaa !20
  %154 = mul i64 %153, 100
  %155 = udiv i64 %154, %150
  br label %156

156:                                              ; preds = %152, %149
  %157 = phi i64 [ %155, %152 ], [ 0, %149 ]
  %158 = load i64, ptr %131, align 8, !tbaa !21
  %159 = and i64 %158, 1
  %160 = icmp eq i64 %159, 0
  %161 = select i1 %160, i32 32, i32 42
  %162 = load i64, ptr %132, align 8, !tbaa !22
  switch i64 %162, label %173 [
    i64 0, label %174
    i64 8, label %163
    i64 12, label %172
  ]

163:                                              ; preds = %156
  %164 = trunc i64 %158 to i32
  %165 = lshr i32 %164, 1
  %166 = and i32 %165, 3
  switch i32 %166, label %168 [
    i32 0, label %174
    i32 1, label %167
  ]

167:                                              ; preds = %163
  br label %174

168:                                              ; preds = %163
  %169 = and i32 %164, 4
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, ptr @.str.10, ptr @.str.15
  br label %174

172:                                              ; preds = %156
  br label %174

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %172, %168, %167, %163, %156
  %175 = phi ptr [ @.str.16, %172 ], [ @.str.17, %173 ], [ @.str.12, %156 ], [ @.str.14, %167 ], [ @.str.13, %163 ], [ %171, %168 ]
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %9) #15
  store i8 0, ptr %133, align 4, !tbaa !9
  %176 = urem i64 %150, 10
  %177 = trunc i64 %176 to i8
  %178 = or disjoint i8 %177, 48
  store i8 %178, ptr %134, align 1, !tbaa !9
  br label %179

179:                                              ; preds = %179, %174
  %180 = phi i64 [ 19, %174 ], [ %184, %179 ]
  %181 = phi i32 [ 19, %174 ], [ %191, %179 ]
  %182 = phi i64 [ %150, %174 ], [ %183, %179 ]
  %183 = udiv i64 %182, 10
  %184 = add nsw i64 %180, -1
  %185 = urem i64 %183, 10
  %186 = trunc i64 %185 to i8
  %187 = or disjoint i8 %186, 48
  %188 = getelementptr inbounds [21 x i8], ptr %9, i64 0, i64 %184
  store i8 %187, ptr %188, align 1, !tbaa !9
  %189 = icmp eq i8 %186, 0
  %190 = trunc i64 %184 to i32
  %191 = select i1 %189, i32 %181, i32 %190
  %192 = icmp eq i64 %184, 0
  br i1 %192, label %193, label %179

193:                                              ; preds = %179
  %194 = sub nsw i32 19, %191
  %195 = icmp sgt i32 %191, 12
  br i1 %195, label %196, label %201

196:                                              ; preds = %193, %196
  %197 = phi i32 [ %198, %196 ], [ 7, %193 ]
  %198 = add nsw i32 %197, -1
  %199 = call i32 @putchar(i32 32)
  %200 = icmp sgt i32 %198, %194
  br i1 %200, label %196, label %201, !llvm.loop !23

201:                                              ; preds = %196, %193
  %202 = sext i32 %191 to i64
  %203 = getelementptr inbounds [21 x i8], ptr %9, i64 0, i64 %202
  %204 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %203)
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %9) #15
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %175, i32 noundef %161)
  %206 = load i64, ptr %130, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #15
  store i8 0, ptr %135, align 4, !tbaa !9
  %207 = urem i64 %206, 10
  %208 = trunc i64 %207 to i8
  %209 = or disjoint i8 %208, 48
  store i8 %209, ptr %136, align 1, !tbaa !9
  br label %210

210:                                              ; preds = %210, %201
  %211 = phi i64 [ 19, %201 ], [ %215, %210 ]
  %212 = phi i32 [ 19, %201 ], [ %222, %210 ]
  %213 = phi i64 [ %206, %201 ], [ %214, %210 ]
  %214 = udiv i64 %213, 10
  %215 = add nsw i64 %211, -1
  %216 = urem i64 %214, 10
  %217 = trunc i64 %216 to i8
  %218 = or disjoint i8 %217, 48
  %219 = getelementptr inbounds [21 x i8], ptr %8, i64 0, i64 %215
  store i8 %218, ptr %219, align 1, !tbaa !9
  %220 = icmp eq i8 %217, 0
  %221 = trunc i64 %215 to i32
  %222 = select i1 %220, i32 %212, i32 %221
  %223 = icmp eq i64 %215, 0
  br i1 %223, label %224, label %210

224:                                              ; preds = %210
  %225 = sub nsw i32 19, %222
  %226 = icmp sgt i32 %222, 12
  br i1 %226, label %227, label %232

227:                                              ; preds = %224, %227
  %228 = phi i32 [ %229, %227 ], [ 7, %224 ]
  %229 = add nsw i32 %228, -1
  %230 = call i32 @putchar(i32 32)
  %231 = icmp sgt i32 %229, %225
  br i1 %231, label %227, label %232, !llvm.loop !23

232:                                              ; preds = %227, %224
  %233 = sext i32 %222 to i64
  %234 = getelementptr inbounds [21 x i8], ptr %8, i64 0, i64 %233
  %235 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %234)
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #15
  %236 = load i32, ptr %137, align 8, !tbaa !24
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, 1
  %239 = load i32, ptr %138, align 4, !tbaa !25
  %240 = sext i32 %239 to i64
  %241 = load i32, ptr %139, align 4, !tbaa !26
  %242 = sext i32 %241 to i64
  %243 = urem i64 %242, 100
  %244 = load i32, ptr %140, align 8, !tbaa !27
  %245 = sext i32 %244 to i64
  %246 = load i32, ptr %141, align 4, !tbaa !28
  %247 = sext i32 %246 to i64
  %248 = load i64, ptr %142, align 8, !tbaa !29
  %249 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %157, i64 noundef %238, i64 noundef %240, i64 noundef %243, i64 noundef %245, i64 noundef %247, i64 noundef %248, ptr noundef nonnull %11)
  %250 = add nuw i64 %144, 1
  %251 = load i64, ptr %10, align 8, !tbaa !13
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %232
  %254 = call i32 @unzGoToNextFile(ptr noundef nonnull %115) #15
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i64, ptr %10, align 8, !tbaa !13
  br label %261

258:                                              ; preds = %253
  %259 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %254)
  br label %260

260:                                              ; preds = %258, %147
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 65537, ptr nonnull %11) #15
  br label %264

261:                                              ; preds = %256, %232
  %262 = phi i64 [ %257, %256 ], [ %251, %232 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 65537, ptr nonnull %11) #15
  %263 = icmp ult i64 %250, %262
  br i1 %263, label %143, label %264, !llvm.loop !30

264:                                              ; preds = %261, %123, %260
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %311

265:                                              ; preds = %114
  %266 = icmp eq i32 %95, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %265
  %268 = call i32 @chdir(ptr noundef %96) #15
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %267
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %96)
  call void @exit(i32 noundef -1) #16
  unreachable

272:                                              ; preds = %267, %265
  %273 = icmp eq ptr %89, null
  br i1 %273, label %274, label %302

274:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %93, ptr %5, align 4, !tbaa !31
  store i32 %94, ptr %6, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %275 = call i32 @unzGetGlobalInfo64(ptr noundef nonnull %115, ptr noundef nonnull %7) #15
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i64, ptr %7, align 8, !tbaa !13
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %300, label %282

280:                                              ; preds = %274
  %281 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %275)
  br label %300

282:                                              ; preds = %277, %297
  %283 = phi i64 [ %287, %297 ], [ 0, %277 ]
  %284 = call fastcc i32 @do_extract_currentfile(ptr noundef nonnull %115, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %90)
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %300

286:                                              ; preds = %282
  %287 = add nuw i64 %283, 1
  %288 = load i64, ptr %7, align 8, !tbaa !13
  %289 = icmp ult i64 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = call i32 @unzGoToNextFile(ptr noundef nonnull %115) #15
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i64, ptr %7, align 8, !tbaa !13
  br label %297

295:                                              ; preds = %290
  %296 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %291)
  br label %300

297:                                              ; preds = %293, %286
  %298 = phi i64 [ %294, %293 ], [ %288, %286 ]
  %299 = icmp ult i64 %287, %298
  br i1 %299, label %282, label %300, !llvm.loop !32

300:                                              ; preds = %282, %297, %277, %280, %295
  %301 = phi i32 [ %275, %280 ], [ %291, %295 ], [ 0, %277 ], [ 0, %297 ], [ %284, %282 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %311

302:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %93, ptr %3, align 4, !tbaa !31
  store i32 %94, ptr %4, align 4, !tbaa !31
  %303 = call i32 @unzLocateFile(ptr noundef nonnull %115, ptr noundef nonnull %89, i32 noundef 0) #15
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %89)
  br label %309

307:                                              ; preds = %302
  %308 = call fastcc i32 @do_extract_currentfile(ptr noundef nonnull %115, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %90)
  br label %309

309:                                              ; preds = %305, %307
  %310 = phi i32 [ 2, %305 ], [ %308, %307 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %311

311:                                              ; preds = %309, %300, %264
  %312 = phi i32 [ 0, %264 ], [ %301, %300 ], [ %310, %309 ]
  %313 = call i32 @unzClose(ptr noundef nonnull %115) #15
  br label %314

314:                                              ; preds = %311, %111, %21
  %315 = phi i32 [ 0, %21 ], [ 1, %111 ], [ %312, %311 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %13) #15
  ret i32 %315
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #3

declare ptr @unzOpen64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @unzClose(ptr noundef) local_unnamed_addr #4

declare i32 @unzGetGlobalInfo64(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @unzGetCurrentFileInfo64(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @unzGoToNextFile(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_extract_currentfile(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.utimbuf, align 8
  %6 = alloca %struct.tm, align 16
  %7 = alloca [65537 x i8], align 16
  %8 = alloca %struct.unz_file_info64_s, align 8
  %9 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 65537, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #15
  %10 = call i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 65537, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %10)
  br label %161

14:                                               ; preds = %4
  %15 = call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  br label %161

19:                                               ; preds = %14, %25
  %20 = phi ptr [ %27, %25 ], [ %7, %14 ]
  %21 = phi ptr [ %26, %25 ], [ %7, %14 ]
  %22 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %22, label %25 [
    i8 0, label %28
    i8 47, label %23
    i8 92, label %23
  ]

23:                                               ; preds = %19, %19
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  br label %19, !llvm.loop !33

28:                                               ; preds = %19
  %29 = load i8, ptr %21, align 1, !tbaa !9
  %30 = icmp eq i8 %29, 0
  %31 = load i32, ptr %1, align 4, !tbaa !31
  %32 = icmp eq i32 %31, 0
  br i1 %30, label %33, label %37

33:                                               ; preds = %28
  br i1 %32, label %34, label %159

34:                                               ; preds = %33
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %7)
  %36 = call noundef i32 @mkdir(ptr noundef nonnull %7, i32 noundef 509) #15
  br label %159

37:                                               ; preds = %28
  %38 = select i1 %32, ptr %7, ptr %21
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = select i1 %32, ptr %7, ptr %21
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41, %46
  %47 = phi i8 [ %57, %46 ], [ %44, %41 ]
  %48 = phi ptr [ %56, %46 ], [ %43, %41 ]
  %49 = phi ptr [ %48, %46 ], [ %38, %41 ]
  %50 = phi ptr [ %55, %46 ], [ %38, %41 ]
  %51 = load i8, ptr %49, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 46
  %53 = icmp eq i8 %47, 46
  %54 = and i1 %53, %52
  %55 = select i1 %54, ptr %49, ptr %50
  %56 = getelementptr inbounds i8, ptr %48, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %46, !llvm.loop !34

59:                                               ; preds = %46, %41, %37
  %60 = phi ptr [ %38, %41 ], [ %38, %37 ], [ %55, %46 ]
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %66, %61 ], [ %60, %59 ]
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = and i8 %63, -2
  %65 = icmp eq i8 %64, 46
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  br i1 %65, label %61, label %67, !llvm.loop !35

67:                                               ; preds = %61
  %68 = call i32 @unzOpenCurrentFilePassword(ptr noundef %0, ptr noundef %3) #15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %68)
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, ptr %2, align 4, !tbaa !31
  %74 = or i32 %73, %68
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = call noalias ptr @fopen64(ptr noundef nonnull %62, ptr noundef nonnull @.str.26)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  %80 = call i32 @fclose(ptr noundef nonnull %77)
  br label %81

81:                                               ; preds = %86, %79
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #15
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %62)
  %83 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.28, ptr noundef nonnull %9)
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @exit(i32 noundef 1) #16
  unreachable

86:                                               ; preds = %81
  %87 = load i8, ptr %9, align 16, !tbaa !9
  %88 = add i8 %87, -97
  %89 = icmp ult i8 %88, 26
  %90 = add nsw i8 %87, -32
  %91 = select i1 %89, i8 %90, i8 %87
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #15
  switch i8 %91, label %81 [
    i8 89, label %92
    i8 78, label %92
    i8 65, label %92
  ]

92:                                               ; preds = %86, %86, %86
  %93 = icmp ne i8 %91, 78
  %94 = icmp eq i8 %91, 65
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, ptr %2, align 4, !tbaa !31
  br label %96

96:                                               ; preds = %76, %92, %95, %72
  %97 = phi i1 [ true, %72 ], [ true, %95 ], [ %93, %92 ], [ true, %76 ]
  %98 = and i1 %69, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %96
  %100 = call noalias ptr @fopen64(ptr noundef nonnull %62, ptr noundef nonnull @.str.29)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load i32, ptr %1, align 4, !tbaa !31
  %104 = icmp eq i32 %103, 0
  %105 = icmp ne ptr %21, %7
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, ptr %21, i64 -1
  %109 = load i8, ptr %108, align 1, !tbaa !9
  store i8 0, ptr %108, align 1, !tbaa !9
  call fastcc void @makedir(ptr noundef nonnull %62)
  store i8 %109, ptr %108, align 1, !tbaa !9
  %110 = call noalias ptr @fopen64(ptr noundef nonnull %62, ptr noundef nonnull @.str.29)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %102
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %62)
  br label %151

114:                                              ; preds = %99, %107
  %115 = phi ptr [ %110, %107 ], [ %100, %99 ]
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %62)
  br label %117

117:                                              ; preds = %124, %114
  %118 = call i32 @unzReadCurrentFile(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 8192) #15
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %118)
  br label %130

122:                                              ; preds = %117
  %123 = icmp eq i32 %118, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %122
  %125 = zext nneg i32 %118 to i64
  %126 = call i64 @fwrite(ptr noundef nonnull %15, i64 noundef %125, i64 noundef 1, ptr noundef nonnull %115)
  %127 = icmp eq i64 %126, 1
  br i1 %127, label %117, label %128, !llvm.loop !36

128:                                              ; preds = %124
  %129 = call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  br label %130

130:                                              ; preds = %128, %120
  %131 = phi i32 [ -1, %128 ], [ %118, %120 ]
  %132 = call i32 @fclose(ptr noundef nonnull %115)
  br label %156

133:                                              ; preds = %122
  %134 = call i32 @fclose(ptr noundef nonnull %115)
  %135 = getelementptr inbounds %struct.unz_file_info64_s, ptr %8, i64 0, i32 14
  %136 = getelementptr inbounds %struct.unz_file_info64_s, ptr %8, i64 0, i32 14, i32 4
  %137 = load i32, ptr %136, align 8
  %138 = getelementptr inbounds %struct.unz_file_info64_s, ptr %8, i64 0, i32 14, i32 5
  %139 = load i32, ptr %138, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  %140 = load <4 x i32>, ptr %135, align 8
  store <4 x i32> %140, ptr %6, align 16, !tbaa !31
  %141 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 4
  store i32 %137, ptr %141, align 16, !tbaa !37
  %142 = icmp sgt i32 %139, 1900
  %143 = add nsw i32 %139, -1900
  %144 = select i1 %142, i32 %143, i32 %139
  %145 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 5
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.tm, ptr %6, i64 0, i32 8
  store i32 -1, ptr %146, align 16, !tbaa !39
  %147 = call i64 @mktime(ptr noundef nonnull %6) #15
  %148 = getelementptr inbounds %struct.utimbuf, ptr %5, i64 0, i32 1
  store i64 %147, ptr %148, align 8, !tbaa !40
  store i64 %147, ptr %5, align 8, !tbaa !42
  %149 = call i32 @utime(ptr noundef nonnull %62, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %151

150:                                              ; preds = %96
  br i1 %69, label %151, label %156

151:                                              ; preds = %112, %133, %150
  %152 = call i32 @unzCloseCurrentFile(ptr noundef %0) #15
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %152)
  br label %159

156:                                              ; preds = %130, %150
  %157 = phi i32 [ %131, %130 ], [ %68, %150 ]
  %158 = call i32 @unzCloseCurrentFile(ptr noundef %0) #15
  br label %159

159:                                              ; preds = %156, %154, %151, %33, %34
  %160 = phi i32 [ 0, %34 ], [ 0, %33 ], [ %152, %154 ], [ 0, %151 ], [ %157, %156 ]
  call void @free(ptr noundef %15) #15
  br label %161

161:                                              ; preds = %159, %17, %12
  %162 = phi i32 [ %10, %12 ], [ -104, %17 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 65537, ptr nonnull %7) #15
  ret i32 %162
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @unzOpenCurrentFilePassword(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @makedir(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = add i64 %2, 1
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  br label %38

10:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %0, i64 %5, i1 false)
  %11 = getelementptr i8, ptr %6, i64 %2
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1, !tbaa !9
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call noundef i32 @mkdir(ptr noundef nonnull %6, i32 noundef 509) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %6) #15
  br label %38

20:                                               ; preds = %16, %24
  %21 = phi ptr [ %22, %24 ], [ %6, %16 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  switch i8 %23, label %24 [
    i8 0, label %25
    i8 92, label %25
    i8 47, label %25
  ]

24:                                               ; preds = %20, %36
  br label %20, !llvm.loop !43

25:                                               ; preds = %20, %20, %20
  store i8 0, ptr %22, align 1, !tbaa !9
  %26 = tail call noundef i32 @mkdir(ptr noundef nonnull %6, i32 noundef 509) #15
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = tail call ptr @__errno_location() #19
  %30 = load i32, ptr %29, align 4, !tbaa !31
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %6)
  tail call void @free(ptr noundef %6) #15
  br label %38

34:                                               ; preds = %28, %25
  %35 = icmp eq i8 %23, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  store i8 %23, ptr %22, align 1, !tbaa !9
  br label %24

37:                                               ; preds = %34
  tail call void @free(ptr noundef %6) #15
  br label %38

38:                                               ; preds = %32, %1, %37, %19, %8
  ret void
}

declare i32 @unzReadCurrentFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @unzCloseCurrentFile(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @unzLocateFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }

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
!13 = !{!14, !15, i64 0}
!14 = !{!"unz_global_info64_s", !15, i64 0, !15, i64 8}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !15, i64 56}
!17 = !{!"unz_file_info64_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !18, i64 112}
!18 = !{!"tm_unz_s", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!19 = !{!"int", !7, i64 0}
!20 = !{!17, !15, i64 48}
!21 = !{!17, !15, i64 16}
!22 = !{!17, !15, i64 24}
!23 = distinct !{!23, !11}
!24 = !{!17, !19, i64 128}
!25 = !{!17, !19, i64 124}
!26 = !{!17, !19, i64 132}
!27 = !{!17, !19, i64 120}
!28 = !{!17, !19, i64 116}
!29 = !{!17, !15, i64 40}
!30 = distinct !{!30, !11}
!31 = !{!19, !19, i64 0}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = !{!38, !19, i64 16}
!38 = !{!"tm", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !15, i64 40, !6, i64 48}
!39 = !{!38, !19, i64 32}
!40 = !{!41, !15, i64 8}
!41 = !{!"utimbuf", !15, i64 0, !15, i64 8}
!42 = !{!41, !15, i64 0}
!43 = distinct !{!43, !11}
