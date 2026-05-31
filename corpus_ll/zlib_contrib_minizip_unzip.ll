; ModuleID = 'corpus_src/zlib/contrib/minizip/unzip.c'
source_filename = "corpus_src/zlib/contrib/minizip/unzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unz64_s = type { %struct.zlib_filefunc64_32_def_s, i32, ptr, %struct.unz_global_info64_s, i64, i64, i64, i64, i64, i64, i64, %struct.unz_file_info64_s, %struct.unz_file_info64_internal_s, ptr, i32, i32, [3 x i64], ptr }
%struct.unz_global_info64_s = type { i64, i64 }
%struct.unz_file_info64_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }
%struct.tm_unz_s = type { i32, i32, i32, i32, i32, i32 }
%struct.unz_file_info64_internal_s = type { i64 }
%struct.file_in_zip64_read_info_s = type { ptr, %struct.z_stream_s, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, %struct.zlib_filefunc64_32_def_s, ptr, i64, i64, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.unz_file_info_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.tm_unz_s }

@unz_copyright = dso_local local_unnamed_addr constant [95 x i8] c" unzip 1.01 Copyright 1998-2004 Gilles Vollant - https://www.winimage.com/zLibDll/minizip.html\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @unzStringFileNameCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #13
  br label %32

7:                                                ; preds = %3, %30
  %8 = phi ptr [ %10, %30 ], [ %0, %3 ]
  %9 = phi ptr [ %12, %30 ], [ %1, %3 ]
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = load i8, ptr %8, align 1, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i8, ptr %9, align 1, !tbaa !5
  %14 = add i8 %11, -97
  %15 = icmp ult i8 %14, 26
  %16 = add nsw i8 %11, -32
  %17 = select i1 %15, i8 %16, i8 %11
  %18 = add i8 %13, -97
  %19 = icmp ult i8 %18, 26
  %20 = add nsw i8 %13, -32
  %21 = select i1 %19, i8 %20, i8 %13
  %22 = icmp eq i8 %17, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = icmp ne i8 %21, 0
  %25 = sext i1 %24 to i32
  br label %32

26:                                               ; preds = %7
  %27 = icmp eq i8 %21, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = icmp slt i8 %17, %21
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = icmp sgt i8 %17, %21
  br i1 %31, label %32, label %7

32:                                               ; preds = %30, %28, %26, %23, %5
  %33 = phi i32 [ %6, %5 ], [ %25, %23 ], [ 1, %30 ], [ -1, %28 ], [ 1, %26 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @unzOpen2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef nonnull %3, ptr noundef nonnull %1) #14
  %6 = call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  br label %9

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 0)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @unzOpenInternal(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [8 x i8], align 8
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [4 x i8], align 1
  %15 = alloca [8 x i8], align 8
  %16 = alloca [8 x i8], align 8
  %17 = alloca [8 x i8], align 8
  %18 = alloca [8 x i8], align 8
  %19 = alloca [4 x i8], align 4
  %20 = alloca [4 x i8], align 4
  %21 = alloca [2 x i8], align 1
  %22 = alloca [2 x i8], align 1
  %23 = alloca [8 x i8], align 1
  %24 = alloca [4 x i8], align 1
  %25 = alloca [4 x i8], align 4
  %26 = alloca [4 x i8], align 1
  %27 = alloca %struct.unz64_s, align 8
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %27) #14
  %28 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %27, i64 0, i32 2
  %29 = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  call void @fill_fopen64_filefunc(ptr noundef nonnull %27) #14
  br label %32

31:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !tbaa.struct !8
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 1
  store i32 %2, ptr %33, align 8, !tbaa !11
  %34 = call ptr @call_zopen64(ptr noundef nonnull %27, ptr noundef %0, i32 noundef 5) #14
  %35 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !21
  %36 = icmp eq ptr %34, null
  br i1 %36, label %642, label %37

37:                                               ; preds = %32
  %38 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef nonnull %34, i64 noundef 0, i32 noundef 2) #14
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %374

40:                                               ; preds = %37
  %41 = call i64 @call_ztell64(ptr noundef nonnull %27, ptr noundef nonnull %34) #14
  %42 = call i64 @llvm.umin.i64(i64 %41, i64 65535)
  %43 = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %374, label %45

45:                                               ; preds = %40
  %46 = icmp ugt i64 %41, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 1
  %49 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 7
  br label %51

50:                                               ; preds = %91, %45
  call void @free(ptr noundef nonnull %43) #14
  br label %374

51:                                               ; preds = %91, %47
  %52 = phi i64 [ 4, %47 ], [ %54, %91 ]
  %53 = add nuw nsw i64 %52, 1024
  %54 = call i64 @llvm.umin.i64(i64 %53, i64 %42)
  %55 = sub i64 %41, %54
  %56 = call i64 @llvm.umin.i64(i64 %54, i64 1028)
  %57 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef nonnull %34, i64 noundef %55, i32 noundef 0) #14
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %51
  %60 = load ptr, ptr %48, align 8, !tbaa !22
  %61 = load ptr, ptr %49, align 8, !tbaa !23
  %62 = call i64 %60(ptr noundef %61, ptr noundef nonnull %34, ptr noundef nonnull %43, i64 noundef %56) #14
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %64, label %93

64:                                               ; preds = %59
  %65 = add nuw nsw i64 %56, 4294967292
  %66 = and i64 %65, 4294967295
  br label %67

67:                                               ; preds = %84, %64
  %68 = phi i64 [ %66, %64 ], [ %85, %84 ]
  %69 = getelementptr inbounds i8, ptr %43, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 80
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 75
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %69, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = icmp eq i8 %78, 6
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %69, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !5
  %83 = icmp eq i8 %82, 7
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %76, %72, %67
  %85 = add nsw i64 %68, -1
  %86 = icmp sgt i64 %68, 0
  br i1 %86, label %67, label %91, !llvm.loop !24

87:                                               ; preds = %80
  %88 = and i64 %68, 4294967295
  %89 = add i64 %88, %55
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %84, %87
  %92 = icmp ult i64 %53, %42
  br i1 %92, label %51, label %50

93:                                               ; preds = %59, %51
  call void @free(ptr noundef nonnull %43) #14
  br label %374

94:                                               ; preds = %87
  call void @free(ptr noundef nonnull %43) #14
  %95 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef nonnull %34, i64 noundef %89, i32 noundef 0) #14
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %374

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #14
  %98 = load ptr, ptr %48, align 8, !tbaa !22
  %99 = load ptr, ptr %49, align 8, !tbaa !23
  %100 = call i64 %98(ptr noundef %99, ptr noundef nonnull %34, ptr noundef nonnull %26, i64 noundef 4) #14
  %101 = and i64 %100, 4294967295
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #14
  br label %110

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !26
  %107 = load ptr, ptr %49, align 8, !tbaa !23
  %108 = call i32 %106(ptr noundef %107, ptr noundef nonnull %34) #14
  %109 = icmp eq i32 %108, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #14
  br i1 %109, label %110, label %374

110:                                              ; preds = %104, %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  %111 = load ptr, ptr %48, align 8, !tbaa !22
  %112 = load ptr, ptr %49, align 8, !tbaa !23
  %113 = call i64 %111(ptr noundef %112, ptr noundef nonnull %34, ptr noundef nonnull %25, i64 noundef 4) #14
  %114 = and i64 %113, 4294967295
  %115 = icmp eq i64 %114, 4
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, ptr %25, align 4
  %118 = zext i32 %117 to i64
  br label %125

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !26
  %122 = load ptr, ptr %49, align 8, !tbaa !23
  %123 = call i32 %121(ptr noundef %122, ptr noundef nonnull %34) #14
  %124 = icmp eq i32 %123, 0
  br label %125

125:                                              ; preds = %119, %116
  %126 = phi i64 [ %118, %116 ], [ 0, %119 ]
  %127 = phi i1 [ true, %116 ], [ %124, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  %128 = icmp eq i64 %126, 0
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %374

130:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %131 = load ptr, ptr %48, align 8, !tbaa !22
  %132 = load ptr, ptr %49, align 8, !tbaa !23
  %133 = call i64 %131(ptr noundef %132, ptr noundef nonnull %34, ptr noundef nonnull %4, i64 noundef 8) #14
  %134 = and i64 %133, 4294967295
  %135 = icmp eq i64 %134, 8
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %144

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !26
  %141 = load ptr, ptr %49, align 8, !tbaa !23
  %142 = call i32 %140(ptr noundef %141, ptr noundef nonnull %34) #14
  %143 = icmp eq i32 %142, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br i1 %143, label %144, label %374

144:                                              ; preds = %136, %138
  %145 = phi i64 [ %137, %136 ], [ 0, %138 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %146 = load ptr, ptr %48, align 8, !tbaa !22
  %147 = load ptr, ptr %49, align 8, !tbaa !23
  %148 = call i64 %146(ptr noundef %147, ptr noundef nonnull %34, ptr noundef nonnull %5, i64 noundef 4) #14
  %149 = and i64 %148, 4294967295
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !26
  %154 = load ptr, ptr %49, align 8, !tbaa !23
  %155 = call i32 %153(ptr noundef %154, ptr noundef nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %374

156:                                              ; preds = %144
  %157 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %374

159:                                              ; preds = %156
  %160 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef nonnull %34, i64 noundef %145, i32 noundef 0) #14
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %374

162:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %163 = load ptr, ptr %48, align 8, !tbaa !22
  %164 = load ptr, ptr %49, align 8, !tbaa !23
  %165 = call i64 %163(ptr noundef %164, ptr noundef nonnull %34, ptr noundef nonnull %6, i64 noundef 4) #14
  %166 = and i64 %165, 4294967295
  %167 = icmp eq i64 %166, 4
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !26
  %171 = load ptr, ptr %49, align 8, !tbaa !23
  %172 = call i32 %170(ptr noundef %171, ptr noundef nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %374

173:                                              ; preds = %162
  %174 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %175 = icmp ne i32 %174, 101075792
  %176 = icmp eq i64 %145, -1
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %374, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 15
  store i32 1, ptr %179, align 4, !tbaa !27
  %180 = load ptr, ptr %35, align 8, !tbaa !21
  %181 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef %180, i64 noundef %145, i32 noundef 0) #14
  %182 = icmp ne i64 %181, 0
  %183 = sext i1 %182 to i32
  %184 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #14
  %185 = load ptr, ptr %48, align 8, !tbaa !22
  %186 = load ptr, ptr %49, align 8, !tbaa !23
  %187 = call i64 %185(ptr noundef %186, ptr noundef %184, ptr noundef nonnull %24, i64 noundef 4) #14
  %188 = and i64 %187, 4294967295
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  br label %198

191:                                              ; preds = %178
  %192 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %193 = load ptr, ptr %192, align 8, !tbaa !26
  %194 = load ptr, ptr %49, align 8, !tbaa !23
  %195 = call i32 %193(ptr noundef %194, ptr noundef %184) #14
  %196 = freeze i32 %195
  %197 = icmp eq i32 %196, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  br i1 %197, label %198, label %199

198:                                              ; preds = %190, %191
  br label %199

199:                                              ; preds = %191, %198
  %200 = phi i32 [ %183, %198 ], [ -1, %191 ]
  %201 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #14
  %202 = load ptr, ptr %48, align 8, !tbaa !22
  %203 = load ptr, ptr %49, align 8, !tbaa !23
  %204 = call i64 %202(ptr noundef %203, ptr noundef %201, ptr noundef nonnull %23, i64 noundef 8) #14
  %205 = and i64 %204, 4294967295
  %206 = icmp eq i64 %205, 8
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  br label %215

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !26
  %211 = load ptr, ptr %49, align 8, !tbaa !23
  %212 = call i32 %210(ptr noundef %211, ptr noundef %201) #14
  %213 = freeze i32 %212
  %214 = icmp eq i32 %213, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  br i1 %214, label %215, label %216

215:                                              ; preds = %207, %208
  br label %216

216:                                              ; preds = %208, %215
  %217 = phi i32 [ %200, %215 ], [ -1, %208 ]
  %218 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #14
  %219 = load ptr, ptr %48, align 8, !tbaa !22
  %220 = load ptr, ptr %49, align 8, !tbaa !23
  %221 = call i64 %219(ptr noundef %220, ptr noundef %218, ptr noundef nonnull %22, i64 noundef 2) #14
  %222 = and i64 %221, 4294967295
  %223 = icmp eq i64 %222, 2
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #14
  br label %232

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %227 = load ptr, ptr %226, align 8, !tbaa !26
  %228 = load ptr, ptr %49, align 8, !tbaa !23
  %229 = call i32 %227(ptr noundef %228, ptr noundef %218) #14
  %230 = freeze i32 %229
  %231 = icmp eq i32 %230, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #14
  br i1 %231, label %232, label %233

232:                                              ; preds = %224, %225
  br label %233

233:                                              ; preds = %225, %232
  %234 = phi i32 [ %217, %232 ], [ -1, %225 ]
  %235 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #14
  %236 = load ptr, ptr %48, align 8, !tbaa !22
  %237 = load ptr, ptr %49, align 8, !tbaa !23
  %238 = call i64 %236(ptr noundef %237, ptr noundef %235, ptr noundef nonnull %21, i64 noundef 2) #14
  %239 = and i64 %238, 4294967295
  %240 = icmp eq i64 %239, 2
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #14
  br label %249

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %244 = load ptr, ptr %243, align 8, !tbaa !26
  %245 = load ptr, ptr %49, align 8, !tbaa !23
  %246 = call i32 %244(ptr noundef %245, ptr noundef %235) #14
  %247 = freeze i32 %246
  %248 = icmp eq i32 %247, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #14
  br i1 %248, label %249, label %250

249:                                              ; preds = %241, %242
  br label %250

250:                                              ; preds = %242, %249
  %251 = phi i32 [ %234, %249 ], [ -1, %242 ]
  %252 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #14
  %253 = load ptr, ptr %48, align 8, !tbaa !22
  %254 = load ptr, ptr %49, align 8, !tbaa !23
  %255 = call i64 %253(ptr noundef %254, ptr noundef %252, ptr noundef nonnull %20, i64 noundef 4) #14
  %256 = and i64 %255, 4294967295
  %257 = icmp eq i64 %256, 4
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i32, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  %260 = icmp ne i32 %259, 0
  br label %269

261:                                              ; preds = %250
  %262 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !26
  %264 = load ptr, ptr %49, align 8, !tbaa !23
  %265 = call i32 %263(ptr noundef %264, ptr noundef %252) #14
  %266 = freeze i32 %265
  %267 = icmp eq i32 %266, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  %268 = select i1 %267, i32 %251, i32 -1
  br label %269

269:                                              ; preds = %261, %258
  %270 = phi i1 [ %260, %258 ], [ false, %261 ]
  %271 = phi i32 [ %251, %258 ], [ %268, %261 ]
  %272 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #14
  %273 = load ptr, ptr %48, align 8, !tbaa !22
  %274 = load ptr, ptr %49, align 8, !tbaa !23
  %275 = call i64 %273(ptr noundef %274, ptr noundef %272, ptr noundef nonnull %19, i64 noundef 4) #14
  %276 = and i64 %275, 4294967295
  %277 = icmp eq i64 %276, 4
  br i1 %277, label %278, label %281

278:                                              ; preds = %269
  %279 = load i32, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  %280 = icmp ne i32 %279, 0
  br label %289

281:                                              ; preds = %269
  %282 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !26
  %284 = load ptr, ptr %49, align 8, !tbaa !23
  %285 = call i32 %283(ptr noundef %284, ptr noundef %272) #14
  %286 = freeze i32 %285
  %287 = icmp eq i32 %286, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #14
  %288 = select i1 %287, i32 %271, i32 -1
  br label %289

289:                                              ; preds = %281, %278
  %290 = phi i1 [ %280, %278 ], [ false, %281 ]
  %291 = phi i32 [ %271, %278 ], [ %288, %281 ]
  %292 = load ptr, ptr %35, align 8, !tbaa !21
  %293 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #14
  %294 = load ptr, ptr %48, align 8, !tbaa !22
  %295 = load ptr, ptr %49, align 8, !tbaa !23
  %296 = call i64 %294(ptr noundef %295, ptr noundef %292, ptr noundef nonnull %18, i64 noundef 8) #14
  %297 = and i64 %296, 4294967295
  %298 = icmp eq i64 %297, 8
  br i1 %298, label %299, label %301

299:                                              ; preds = %289
  %300 = load i64, ptr %18, align 8
  store i64 %300, ptr %293, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  br label %308

301:                                              ; preds = %289
  store i64 0, ptr %293, align 8, !tbaa !28
  %302 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !26
  %304 = load ptr, ptr %49, align 8, !tbaa !23
  %305 = call i32 %303(ptr noundef %304, ptr noundef %292) #14
  %306 = freeze i32 %305
  %307 = icmp eq i32 %306, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  br i1 %307, label %308, label %309

308:                                              ; preds = %299, %301
  br label %309

309:                                              ; preds = %301, %308
  %310 = phi i32 [ %291, %308 ], [ -1, %301 ]
  %311 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  %312 = load ptr, ptr %48, align 8, !tbaa !22
  %313 = load ptr, ptr %49, align 8, !tbaa !23
  %314 = call i64 %312(ptr noundef %313, ptr noundef %311, ptr noundef nonnull %17, i64 noundef 8) #14
  %315 = and i64 %314, 4294967295
  %316 = icmp eq i64 %315, 8
  br i1 %316, label %317, label %319

317:                                              ; preds = %309
  %318 = load i64, ptr %17, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  br label %327

319:                                              ; preds = %309
  %320 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %321 = load ptr, ptr %320, align 8, !tbaa !26
  %322 = load ptr, ptr %49, align 8, !tbaa !23
  %323 = call i32 %321(ptr noundef %322, ptr noundef %311) #14
  %324 = freeze i32 %323
  %325 = icmp eq i32 %324, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  %326 = select i1 %325, i32 %310, i32 -1
  br label %327

327:                                              ; preds = %319, %317
  %328 = phi i64 [ %318, %317 ], [ 0, %319 ]
  %329 = phi i32 [ %310, %317 ], [ %326, %319 ]
  %330 = load i64, ptr %293, align 8, !tbaa !29
  %331 = icmp ne i64 %328, %330
  %332 = select i1 %331, i1 true, i1 %290
  %333 = select i1 %332, i1 true, i1 %270
  %334 = select i1 %333, i32 -103, i32 %329
  %335 = load ptr, ptr %35, align 8, !tbaa !21
  %336 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  %337 = load ptr, ptr %48, align 8, !tbaa !22
  %338 = load ptr, ptr %49, align 8, !tbaa !23
  %339 = call i64 %337(ptr noundef %338, ptr noundef %335, ptr noundef nonnull %16, i64 noundef 8) #14
  %340 = and i64 %339, 4294967295
  %341 = icmp eq i64 %340, 8
  br i1 %341, label %342, label %344

342:                                              ; preds = %327
  %343 = load i64, ptr %16, align 8
  store i64 %343, ptr %336, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  br label %351

344:                                              ; preds = %327
  store i64 0, ptr %336, align 8, !tbaa !28
  %345 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !26
  %347 = load ptr, ptr %49, align 8, !tbaa !23
  %348 = call i32 %346(ptr noundef %347, ptr noundef %335) #14
  %349 = freeze i32 %348
  %350 = icmp eq i32 %349, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  br i1 %350, label %351, label %352

351:                                              ; preds = %342, %344
  br label %352

352:                                              ; preds = %344, %351
  %353 = phi i32 [ %334, %351 ], [ -1, %344 ]
  %354 = load ptr, ptr %35, align 8, !tbaa !21
  %355 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  %356 = load ptr, ptr %48, align 8, !tbaa !22
  %357 = load ptr, ptr %49, align 8, !tbaa !23
  %358 = call i64 %356(ptr noundef %357, ptr noundef %354, ptr noundef nonnull %15, i64 noundef 8) #14
  %359 = and i64 %358, 4294967295
  %360 = icmp eq i64 %359, 8
  br i1 %360, label %361, label %363

361:                                              ; preds = %352
  %362 = load i64, ptr %15, align 8
  store i64 %362, ptr %355, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  br label %370

363:                                              ; preds = %352
  store i64 0, ptr %355, align 8, !tbaa !28
  %364 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !26
  %366 = load ptr, ptr %49, align 8, !tbaa !23
  %367 = call i32 %365(ptr noundef %366, ptr noundef %354) #14
  %368 = freeze i32 %367
  %369 = icmp eq i32 %368, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  br i1 %369, label %370, label %371

370:                                              ; preds = %361, %363
  br label %371

371:                                              ; preds = %363, %370
  %372 = phi i32 [ %353, %370 ], [ -1, %363 ]
  %373 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 3, i32 1
  store i64 0, ptr %373, align 8, !tbaa !30
  br label %605

374:                                              ; preds = %168, %151, %93, %50, %173, %159, %156, %138, %125, %104, %94, %40, %37
  %375 = load ptr, ptr %35, align 8, !tbaa !21
  %376 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef %375, i64 noundef 0, i32 noundef 2) #14
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %433

378:                                              ; preds = %374
  %379 = call i64 @call_ztell64(ptr noundef nonnull %27, ptr noundef %375) #14
  %380 = call i64 @llvm.umin.i64(i64 %379, i64 65535)
  %381 = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #15
  %382 = icmp eq ptr %381, null
  br i1 %382, label %433, label %383

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 1
  %385 = icmp ugt i64 %379, 4
  br i1 %385, label %386, label %430

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 7
  br label %388

388:                                              ; preds = %428, %386
  %389 = phi i64 [ 4, %386 ], [ %391, %428 ]
  %390 = add nuw nsw i64 %389, 1024
  %391 = call i64 @llvm.umin.i64(i64 %390, i64 %380)
  %392 = sub i64 %379, %391
  %393 = call i64 @llvm.umin.i64(i64 %391, i64 1028)
  %394 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef %375, i64 noundef %392, i32 noundef 0) #14
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %430

396:                                              ; preds = %388
  %397 = load ptr, ptr %384, align 8, !tbaa !22
  %398 = load ptr, ptr %387, align 8, !tbaa !23
  %399 = call i64 %397(ptr noundef %398, ptr noundef %375, ptr noundef nonnull %381, i64 noundef %393) #14
  %400 = icmp eq i64 %399, %393
  br i1 %400, label %401, label %430

401:                                              ; preds = %396
  %402 = add nuw nsw i64 %393, 4294967292
  %403 = and i64 %402, 4294967295
  br label %404

404:                                              ; preds = %421, %401
  %405 = phi i64 [ %403, %401 ], [ %422, %421 ]
  %406 = getelementptr inbounds i8, ptr %381, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !5
  %408 = icmp eq i8 %407, 80
  br i1 %408, label %409, label %421

409:                                              ; preds = %404
  %410 = getelementptr inbounds i8, ptr %406, i64 1
  %411 = load i8, ptr %410, align 1, !tbaa !5
  %412 = icmp eq i8 %411, 75
  br i1 %412, label %413, label %421

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %406, i64 2
  %415 = load i8, ptr %414, align 1, !tbaa !5
  %416 = icmp eq i8 %415, 5
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = getelementptr inbounds i8, ptr %406, i64 3
  %419 = load i8, ptr %418, align 1, !tbaa !5
  %420 = icmp eq i8 %419, 6
  br i1 %420, label %424, label %421

421:                                              ; preds = %417, %413, %409, %404
  %422 = add nsw i64 %405, -1
  %423 = icmp sgt i64 %405, 0
  br i1 %423, label %404, label %428, !llvm.loop !31

424:                                              ; preds = %417
  %425 = and i64 %405, 4294967295
  %426 = add i64 %425, %392
  %427 = icmp eq i64 %426, -1
  br i1 %427, label %428, label %430

428:                                              ; preds = %421, %424
  %429 = icmp ult i64 %390, %380
  br i1 %429, label %388, label %430

430:                                              ; preds = %424, %428, %388, %396, %383
  %431 = phi i64 [ -1, %383 ], [ -1, %396 ], [ -1, %388 ], [ -1, %428 ], [ %426, %424 ]
  %432 = phi i32 [ -1, %383 ], [ -1, %396 ], [ -1, %388 ], [ -1, %428 ], [ 0, %424 ]
  call void @free(ptr noundef nonnull %381) #14
  br label %433

433:                                              ; preds = %430, %378, %374
  %434 = phi i64 [ -1, %374 ], [ -1, %378 ], [ %431, %430 ]
  %435 = phi i32 [ -1, %374 ], [ -1, %378 ], [ %432, %430 ]
  %436 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 15
  store i32 0, ptr %436, align 4, !tbaa !27
  %437 = load ptr, ptr %35, align 8, !tbaa !21
  %438 = call i64 @call_zseek64(ptr noundef nonnull %27, ptr noundef %437, i64 noundef %434, i32 noundef 0) #14
  %439 = icmp eq i64 %438, 0
  %440 = select i1 %439, i32 %435, i32 -1
  %441 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  %442 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !22
  %444 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 7
  %445 = load ptr, ptr %444, align 8, !tbaa !23
  %446 = call i64 %443(ptr noundef %445, ptr noundef %441, ptr noundef nonnull %14, i64 noundef 4) #14
  %447 = and i64 %446, 4294967295
  %448 = icmp eq i64 %447, 4
  br i1 %448, label %449, label %450

449:                                              ; preds = %433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  br label %457

450:                                              ; preds = %433
  %451 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %452 = load ptr, ptr %451, align 8, !tbaa !26
  %453 = load ptr, ptr %444, align 8, !tbaa !23
  %454 = call i32 %452(ptr noundef %453, ptr noundef %441) #14
  %455 = freeze i32 %454
  %456 = icmp eq i32 %455, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  br i1 %456, label %457, label %458

457:                                              ; preds = %449, %450
  br label %458

458:                                              ; preds = %450, %457
  %459 = phi i32 [ %440, %457 ], [ -1, %450 ]
  %460 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  %461 = load ptr, ptr %442, align 8, !tbaa !22
  %462 = load ptr, ptr %444, align 8, !tbaa !23
  %463 = call i64 %461(ptr noundef %462, ptr noundef %460, ptr noundef nonnull %13, i64 noundef 2) #14
  %464 = and i64 %463, 4294967295
  %465 = icmp eq i64 %464, 2
  br i1 %465, label %466, label %469

466:                                              ; preds = %458
  %467 = load i16, ptr %13, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %468 = icmp ne i16 %467, 0
  br label %477

469:                                              ; preds = %458
  %470 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %471 = load ptr, ptr %470, align 8, !tbaa !26
  %472 = load ptr, ptr %444, align 8, !tbaa !23
  %473 = call i32 %471(ptr noundef %472, ptr noundef %460) #14
  %474 = freeze i32 %473
  %475 = icmp eq i32 %474, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %476 = select i1 %475, i32 %459, i32 -1
  br label %477

477:                                              ; preds = %469, %466
  %478 = phi i1 [ %468, %466 ], [ false, %469 ]
  %479 = phi i32 [ %459, %466 ], [ %476, %469 ]
  %480 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #14
  %481 = load ptr, ptr %442, align 8, !tbaa !22
  %482 = load ptr, ptr %444, align 8, !tbaa !23
  %483 = call i64 %481(ptr noundef %482, ptr noundef %480, ptr noundef nonnull %12, i64 noundef 2) #14
  %484 = and i64 %483, 4294967295
  %485 = icmp eq i64 %484, 2
  br i1 %485, label %486, label %489

486:                                              ; preds = %477
  %487 = load i16, ptr %12, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  %488 = icmp ne i16 %487, 0
  br label %497

489:                                              ; preds = %477
  %490 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %491 = load ptr, ptr %490, align 8, !tbaa !26
  %492 = load ptr, ptr %444, align 8, !tbaa !23
  %493 = call i32 %491(ptr noundef %492, ptr noundef %480) #14
  %494 = freeze i32 %493
  %495 = icmp eq i32 %494, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  %496 = select i1 %495, i32 %479, i32 -1
  br label %497

497:                                              ; preds = %489, %486
  %498 = phi i1 [ %488, %486 ], [ false, %489 ]
  %499 = phi i32 [ %479, %486 ], [ %496, %489 ]
  %500 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #14
  %501 = load ptr, ptr %442, align 8, !tbaa !22
  %502 = load ptr, ptr %444, align 8, !tbaa !23
  %503 = call i64 %501(ptr noundef %502, ptr noundef %500, ptr noundef nonnull %11, i64 noundef 2) #14
  %504 = and i64 %503, 4294967295
  %505 = icmp eq i64 %504, 2
  br i1 %505, label %506, label %509

506:                                              ; preds = %497
  %507 = load i16, ptr %11, align 2
  %508 = zext i16 %507 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  br label %517

509:                                              ; preds = %497
  %510 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %511 = load ptr, ptr %510, align 8, !tbaa !26
  %512 = load ptr, ptr %444, align 8, !tbaa !23
  %513 = call i32 %511(ptr noundef %512, ptr noundef %500) #14
  %514 = freeze i32 %513
  %515 = icmp eq i32 %514, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #14
  %516 = select i1 %515, i32 %499, i32 -1
  br label %517

517:                                              ; preds = %509, %506
  %518 = phi i64 [ %508, %506 ], [ 0, %509 ]
  %519 = phi i32 [ %499, %506 ], [ %516, %509 ]
  %520 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 3
  store i64 %518, ptr %520, align 8, !tbaa !29
  %521 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #14
  %522 = load ptr, ptr %442, align 8, !tbaa !22
  %523 = load ptr, ptr %444, align 8, !tbaa !23
  %524 = call i64 %522(ptr noundef %523, ptr noundef %521, ptr noundef nonnull %10, i64 noundef 2) #14
  %525 = and i64 %524, 4294967295
  %526 = icmp eq i64 %525, 2
  br i1 %526, label %527, label %530

527:                                              ; preds = %517
  %528 = load i16, ptr %10, align 2
  %529 = zext i16 %528 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #14
  br label %538

530:                                              ; preds = %517
  %531 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %532 = load ptr, ptr %531, align 8, !tbaa !26
  %533 = load ptr, ptr %444, align 8, !tbaa !23
  %534 = call i32 %532(ptr noundef %533, ptr noundef %521) #14
  %535 = freeze i32 %534
  %536 = icmp eq i32 %535, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #14
  %537 = select i1 %536, i32 %519, i32 -1
  br label %538

538:                                              ; preds = %530, %527
  %539 = phi i64 [ %529, %527 ], [ 0, %530 ]
  %540 = phi i32 [ %519, %527 ], [ %537, %530 ]
  %541 = load i64, ptr %520, align 8, !tbaa !29
  %542 = icmp ne i64 %539, %541
  %543 = select i1 %542, i1 true, i1 %498
  %544 = select i1 %543, i1 true, i1 %478
  %545 = select i1 %544, i32 -103, i32 %540
  %546 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %547 = load ptr, ptr %442, align 8, !tbaa !22
  %548 = load ptr, ptr %444, align 8, !tbaa !23
  %549 = call i64 %547(ptr noundef %548, ptr noundef %546, ptr noundef nonnull %9, i64 noundef 4) #14
  %550 = and i64 %549, 4294967295
  %551 = icmp eq i64 %550, 4
  br i1 %551, label %552, label %555

552:                                              ; preds = %538
  %553 = load i32, ptr %9, align 4
  %554 = zext i32 %553 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %563

555:                                              ; preds = %538
  %556 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %557 = load ptr, ptr %556, align 8, !tbaa !26
  %558 = load ptr, ptr %444, align 8, !tbaa !23
  %559 = call i32 %557(ptr noundef %558, ptr noundef %546) #14
  %560 = freeze i32 %559
  %561 = icmp eq i32 %560, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %562 = select i1 %561, i32 %545, i32 -1
  br label %563

563:                                              ; preds = %555, %552
  %564 = phi i64 [ %554, %552 ], [ 0, %555 ]
  %565 = phi i32 [ %545, %552 ], [ %562, %555 ]
  %566 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 9
  store i64 %564, ptr %566, align 8, !tbaa !32
  %567 = load ptr, ptr %35, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %568 = load ptr, ptr %442, align 8, !tbaa !22
  %569 = load ptr, ptr %444, align 8, !tbaa !23
  %570 = call i64 %568(ptr noundef %569, ptr noundef %567, ptr noundef nonnull %8, i64 noundef 4) #14
  %571 = and i64 %570, 4294967295
  %572 = icmp eq i64 %571, 4
  br i1 %572, label %573, label %576

573:                                              ; preds = %563
  %574 = load i32, ptr %8, align 4
  %575 = zext i32 %574 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %584

576:                                              ; preds = %563
  %577 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %578 = load ptr, ptr %577, align 8, !tbaa !26
  %579 = load ptr, ptr %444, align 8, !tbaa !23
  %580 = call i32 %578(ptr noundef %579, ptr noundef %567) #14
  %581 = freeze i32 %580
  %582 = icmp eq i32 %581, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %583 = select i1 %582, i32 %565, i32 -1
  br label %584

584:                                              ; preds = %576, %573
  %585 = phi i64 [ %575, %573 ], [ 0, %576 ]
  %586 = phi i32 [ %565, %573 ], [ %583, %576 ]
  %587 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 10
  store i64 %585, ptr %587, align 8, !tbaa !33
  %588 = load ptr, ptr %35, align 8, !tbaa !21
  %589 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  %590 = load ptr, ptr %442, align 8, !tbaa !22
  %591 = load ptr, ptr %444, align 8, !tbaa !23
  %592 = call i64 %590(ptr noundef %591, ptr noundef %588, ptr noundef nonnull %7, i64 noundef 2) #14
  %593 = and i64 %592, 4294967295
  %594 = icmp eq i64 %593, 2
  br i1 %594, label %595, label %598

595:                                              ; preds = %584
  %596 = load i16, ptr %7, align 2
  %597 = zext i16 %596 to i64
  store i64 %597, ptr %589, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br label %605

598:                                              ; preds = %584
  store i64 0, ptr %589, align 8, !tbaa !28
  %599 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 6
  %600 = load ptr, ptr %599, align 8, !tbaa !26
  %601 = load ptr, ptr %444, align 8, !tbaa !23
  %602 = call i32 %600(ptr noundef %601, ptr noundef %588) #14
  %603 = freeze i32 %602
  %604 = icmp eq i32 %603, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br i1 %604, label %605, label %616

605:                                              ; preds = %598, %595, %371
  %606 = phi i64 [ %145, %371 ], [ %434, %595 ], [ %434, %598 ]
  %607 = phi i32 [ %372, %371 ], [ %586, %595 ], [ %586, %598 ]
  %608 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 10
  %609 = load i64, ptr %608, align 8, !tbaa !33
  %610 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 9
  %611 = load i64, ptr %610, align 8, !tbaa !32
  %612 = add i64 %611, %609
  %613 = icmp uge i64 %606, %612
  %614 = icmp eq i32 %607, 0
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %623, label %616

616:                                              ; preds = %598, %605
  %617 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 5
  %618 = load ptr, ptr %617, align 8, !tbaa !34
  %619 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %27, i64 0, i32 7
  %620 = load ptr, ptr %619, align 8, !tbaa !35
  %621 = load ptr, ptr %35, align 8, !tbaa !21
  %622 = call i32 %618(ptr noundef %620, ptr noundef %621) #14
  br label %642

623:                                              ; preds = %605
  %624 = sub i64 %606, %612
  %625 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 4
  store i64 %624, ptr %625, align 8, !tbaa !36
  %626 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 8
  store i64 %606, ptr %626, align 8, !tbaa !37
  %627 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 13
  store ptr null, ptr %627, align 8, !tbaa !38
  %628 = getelementptr inbounds %struct.unz64_s, ptr %27, i64 0, i32 14
  store i32 0, ptr %628, align 8, !tbaa !39
  %629 = call noalias dereferenceable_or_null(368) ptr @malloc(i64 noundef 368) #15
  %630 = icmp eq ptr %629, null
  br i1 %630, label %642, label %631

631:                                              ; preds = %623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %629, ptr noundef nonnull align 8 dereferenceable(368) %27, i64 368, i1 false), !tbaa.struct !40
  %632 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 10
  %633 = load i64, ptr %632, align 8, !tbaa !33
  %634 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 6
  store i64 %633, ptr %634, align 8, !tbaa !42
  %635 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 5
  store i64 0, ptr %635, align 8, !tbaa !43
  %636 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 11
  %637 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 12
  %638 = call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %629, ptr noundef nonnull %636, ptr noundef nonnull %637, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %639 = icmp eq i32 %638, 0
  %640 = zext i1 %639 to i64
  %641 = getelementptr inbounds %struct.unz64_s, ptr %629, i64 0, i32 7
  store i64 %640, ptr %641, align 8, !tbaa !45
  br label %642

642:                                              ; preds = %623, %631, %32, %616
  %643 = phi ptr [ null, %616 ], [ null, %32 ], [ %629, %631 ], [ null, %623 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %27) #14
  ret ptr %643
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @unzOpen2_64(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %3, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 1)
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @unzOpen(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @unzOpen64(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call fastcc ptr @unzOpenInternal(ptr noundef %0, ptr noundef null, i32 noundef 1)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @unzClose(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @free(ptr noundef %8) #14
  store ptr null, ptr %5, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 1
  %14 = tail call i32 @inflateEnd(ptr noundef nonnull %13) #14
  br label %15

15:                                               ; preds = %7, %12
  tail call void @free(ptr noundef nonnull %5) #14
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %16

16:                                               ; preds = %15, %3
  %17 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = tail call i32 %18(ptr noundef %20, ptr noundef %22) #14
  tail call void @free(ptr noundef nonnull %0) #14
  br label %24

24:                                               ; preds = %1, %16
  %25 = phi i32 [ 0, %16 ], [ -102, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzCloseCurrentFile(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 11
  %9 = load i64, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 9
  %19 = load i64, ptr %18, align 8, !tbaa !54
  %20 = icmp eq i64 %17, %19
  %21 = select i1 %20, i32 0, i32 -105
  br label %22

22:                                               ; preds = %15, %11, %7
  %23 = phi i32 [ 0, %11 ], [ 0, %7 ], [ %21, %15 ]
  %24 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @free(ptr noundef %24) #14
  store ptr null, ptr %5, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !50
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 1
  %30 = tail call i32 @inflateEnd(ptr noundef nonnull %29) #14
  br label %31

31:                                               ; preds = %28, %22
  tail call void @free(ptr noundef nonnull %5) #14
  store ptr null, ptr %4, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %3, %1, %31
  %33 = phi i32 [ %23, %31 ], [ -102, %1 ], [ -102, %3 ]
  ret i32 %33
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @unzGetGlobalInfo64(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !55
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ 0, %4 ], [ -102, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @unzGetGlobalInfo(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %6 = load <2 x i64>, ptr %5, align 8, !tbaa !28
  store <2 x i64> %6, ptr %1, align 8, !tbaa !28
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 0, %4 ], [ -102, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGetCurrentFileInfo64(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #2 {
  %9 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7), !range !44
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #2 {
  %10 = alloca [4 x i8], align 4
  %11 = alloca [8 x i8], align 8
  %12 = alloca [8 x i8], align 8
  %13 = alloca [8 x i8], align 8
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [4 x i8], align 4
  %17 = alloca [4 x i8], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [4 x i8], align 4
  %24 = alloca [4 x i8], align 4
  %25 = alloca [4 x i8], align 4
  %26 = alloca [4 x i8], align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [4 x i8], align 4
  %32 = icmp eq ptr %0, null
  br i1 %32, label %661, label %33

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !36
  %40 = add i64 %39, %37
  %41 = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %35, i64 noundef %40, i32 noundef 0) #14
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %33
  %44 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #14
  %45 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = call i64 %46(ptr noundef %48, ptr noundef %44, ptr noundef nonnull %31, i64 noundef 4) #14
  %50 = and i64 %49, 4294967295
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !26
  %55 = load ptr, ptr %47, align 8, !tbaa !23
  %56 = call i32 %54(ptr noundef %55, ptr noundef %44) #14
  %57 = icmp eq i32 %56, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #14
  %58 = select i1 %57, i32 -103, i32 -1
  br label %64

59:                                               ; preds = %43
  %60 = load i32, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #14
  %61 = freeze i32 %60
  %62 = icmp eq i32 %61, 33639248
  %63 = select i1 %62, i32 0, i32 -103
  br label %64

64:                                               ; preds = %59, %52, %33
  %65 = phi i32 [ -1, %33 ], [ %58, %52 ], [ %63, %59 ]
  %66 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #14
  %67 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !23
  %71 = call i64 %68(ptr noundef %70, ptr noundef %66, ptr noundef nonnull %30, i64 noundef 2) #14
  %72 = and i64 %71, 4294967295
  %73 = icmp eq i64 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i16, ptr %30, align 2
  %76 = zext i16 %75 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #14
  br label %85

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !26
  %80 = load ptr, ptr %69, align 8, !tbaa !23
  %81 = call i32 %79(ptr noundef %80, ptr noundef %66) #14
  %82 = freeze i32 %81
  %83 = icmp eq i32 %82, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #14
  %84 = select i1 %83, i32 %65, i32 -1
  br label %85

85:                                               ; preds = %77, %74
  %86 = phi i64 [ %76, %74 ], [ 0, %77 ]
  %87 = phi i32 [ %65, %74 ], [ %84, %77 ]
  %88 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #14
  %89 = load ptr, ptr %67, align 8, !tbaa !22
  %90 = load ptr, ptr %69, align 8, !tbaa !23
  %91 = call i64 %89(ptr noundef %90, ptr noundef %88, ptr noundef nonnull %29, i64 noundef 2) #14
  %92 = and i64 %91, 4294967295
  %93 = icmp eq i64 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i16, ptr %29, align 2
  %96 = zext i16 %95 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #14
  br label %105

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !26
  %100 = load ptr, ptr %69, align 8, !tbaa !23
  %101 = call i32 %99(ptr noundef %100, ptr noundef %88) #14
  %102 = freeze i32 %101
  %103 = icmp eq i32 %102, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #14
  %104 = select i1 %103, i32 %87, i32 -1
  br label %105

105:                                              ; preds = %97, %94
  %106 = phi i64 [ %96, %94 ], [ 0, %97 ]
  %107 = phi i32 [ %87, %94 ], [ %104, %97 ]
  %108 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #14
  %109 = load ptr, ptr %67, align 8, !tbaa !22
  %110 = load ptr, ptr %69, align 8, !tbaa !23
  %111 = call i64 %109(ptr noundef %110, ptr noundef %108, ptr noundef nonnull %28, i64 noundef 2) #14
  %112 = and i64 %111, 4294967295
  %113 = icmp eq i64 %112, 2
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i16, ptr %28, align 2
  %116 = zext i16 %115 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #14
  br label %125

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = load ptr, ptr %69, align 8, !tbaa !23
  %121 = call i32 %119(ptr noundef %120, ptr noundef %108) #14
  %122 = freeze i32 %121
  %123 = icmp eq i32 %122, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #14
  %124 = select i1 %123, i32 %107, i32 -1
  br label %125

125:                                              ; preds = %117, %114
  %126 = phi i64 [ %116, %114 ], [ 0, %117 ]
  %127 = phi i32 [ %107, %114 ], [ %124, %117 ]
  %128 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #14
  %129 = load ptr, ptr %67, align 8, !tbaa !22
  %130 = load ptr, ptr %69, align 8, !tbaa !23
  %131 = call i64 %129(ptr noundef %130, ptr noundef %128, ptr noundef nonnull %27, i64 noundef 2) #14
  %132 = and i64 %131, 4294967295
  %133 = icmp eq i64 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i16, ptr %27, align 2
  %136 = zext i16 %135 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #14
  br label %145

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !26
  %140 = load ptr, ptr %69, align 8, !tbaa !23
  %141 = call i32 %139(ptr noundef %140, ptr noundef %128) #14
  %142 = freeze i32 %141
  %143 = icmp eq i32 %142, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #14
  %144 = select i1 %143, i32 %127, i32 -1
  br label %145

145:                                              ; preds = %137, %134
  %146 = phi i64 [ %136, %134 ], [ 0, %137 ]
  %147 = phi i32 [ %127, %134 ], [ %144, %137 ]
  %148 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #14
  %149 = load ptr, ptr %67, align 8, !tbaa !22
  %150 = load ptr, ptr %69, align 8, !tbaa !23
  %151 = call i64 %149(ptr noundef %150, ptr noundef %148, ptr noundef nonnull %26, i64 noundef 4) #14
  %152 = and i64 %151, 4294967295
  %153 = icmp eq i64 %152, 4
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, ptr %26, align 4
  %156 = zext i32 %155 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #14
  br label %165

157:                                              ; preds = %145
  %158 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !26
  %160 = load ptr, ptr %69, align 8, !tbaa !23
  %161 = call i32 %159(ptr noundef %160, ptr noundef %148) #14
  %162 = freeze i32 %161
  %163 = icmp eq i32 %162, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #14
  %164 = select i1 %163, i32 %147, i32 -1
  br label %165

165:                                              ; preds = %157, %154
  %166 = phi i64 [ %156, %154 ], [ 0, %157 ]
  %167 = phi i32 [ %147, %154 ], [ %164, %157 ]
  %168 = trunc i64 %166 to i32
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 31
  %171 = lshr i32 %168, 21
  %172 = and i32 %171, 15
  %173 = add nsw i32 %172, -1
  %174 = lshr i32 %168, 25
  %175 = add nuw nsw i32 %174, 1980
  %176 = lshr i32 %168, 11
  %177 = and i32 %176, 31
  %178 = lshr i32 %168, 5
  %179 = and i32 %178, 63
  %180 = shl i32 %168, 1
  %181 = and i32 %180, 62
  %182 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  %183 = load ptr, ptr %67, align 8, !tbaa !22
  %184 = load ptr, ptr %69, align 8, !tbaa !23
  %185 = call i64 %183(ptr noundef %184, ptr noundef %182, ptr noundef nonnull %25, i64 noundef 4) #14
  %186 = and i64 %185, 4294967295
  %187 = icmp eq i64 %186, 4
  br i1 %187, label %188, label %191

188:                                              ; preds = %165
  %189 = load i32, ptr %25, align 4
  %190 = zext i32 %189 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  br label %199

191:                                              ; preds = %165
  %192 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %193 = load ptr, ptr %192, align 8, !tbaa !26
  %194 = load ptr, ptr %69, align 8, !tbaa !23
  %195 = call i32 %193(ptr noundef %194, ptr noundef %182) #14
  %196 = freeze i32 %195
  %197 = icmp eq i32 %196, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  %198 = select i1 %197, i32 %167, i32 -1
  br label %199

199:                                              ; preds = %191, %188
  %200 = phi i64 [ %190, %188 ], [ 0, %191 ]
  %201 = phi i32 [ %167, %188 ], [ %198, %191 ]
  %202 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #14
  %203 = load ptr, ptr %67, align 8, !tbaa !22
  %204 = load ptr, ptr %69, align 8, !tbaa !23
  %205 = call i64 %203(ptr noundef %204, ptr noundef %202, ptr noundef nonnull %24, i64 noundef 4) #14
  %206 = and i64 %205, 4294967295
  %207 = icmp eq i64 %206, 4
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, ptr %24, align 4
  %210 = zext i32 %209 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  br label %219

211:                                              ; preds = %199
  %212 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %213 = load ptr, ptr %212, align 8, !tbaa !26
  %214 = load ptr, ptr %69, align 8, !tbaa !23
  %215 = call i32 %213(ptr noundef %214, ptr noundef %202) #14
  %216 = freeze i32 %215
  %217 = icmp eq i32 %216, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  %218 = select i1 %217, i32 %201, i32 -1
  br label %219

219:                                              ; preds = %211, %208
  %220 = phi i64 [ %210, %208 ], [ 0, %211 ]
  %221 = phi i32 [ %201, %208 ], [ %218, %211 ]
  %222 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #14
  %223 = load ptr, ptr %67, align 8, !tbaa !22
  %224 = load ptr, ptr %69, align 8, !tbaa !23
  %225 = call i64 %223(ptr noundef %224, ptr noundef %222, ptr noundef nonnull %23, i64 noundef 4) #14
  %226 = and i64 %225, 4294967295
  %227 = icmp eq i64 %226, 4
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = load i32, ptr %23, align 4
  %230 = zext i32 %229 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  br label %239

231:                                              ; preds = %219
  %232 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8, !tbaa !26
  %234 = load ptr, ptr %69, align 8, !tbaa !23
  %235 = call i32 %233(ptr noundef %234, ptr noundef %222) #14
  %236 = freeze i32 %235
  %237 = icmp eq i32 %236, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  %238 = select i1 %237, i32 %221, i32 -1
  br label %239

239:                                              ; preds = %231, %228
  %240 = phi i64 [ %230, %228 ], [ 0, %231 ]
  %241 = phi i32 [ %221, %228 ], [ %238, %231 ]
  %242 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #14
  %243 = load ptr, ptr %67, align 8, !tbaa !22
  %244 = load ptr, ptr %69, align 8, !tbaa !23
  %245 = call i64 %243(ptr noundef %244, ptr noundef %242, ptr noundef nonnull %22, i64 noundef 2) #14
  %246 = and i64 %245, 4294967295
  %247 = icmp eq i64 %246, 2
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i16, ptr %22, align 2
  %250 = zext i16 %249 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #14
  br label %259

251:                                              ; preds = %239
  %252 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !26
  %254 = load ptr, ptr %69, align 8, !tbaa !23
  %255 = call i32 %253(ptr noundef %254, ptr noundef %242) #14
  %256 = freeze i32 %255
  %257 = icmp eq i32 %256, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #14
  %258 = select i1 %257, i32 %241, i32 -1
  br label %259

259:                                              ; preds = %251, %248
  %260 = phi i64 [ %250, %248 ], [ 0, %251 ]
  %261 = phi i32 [ %241, %248 ], [ %258, %251 ]
  %262 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #14
  %263 = load ptr, ptr %67, align 8, !tbaa !22
  %264 = load ptr, ptr %69, align 8, !tbaa !23
  %265 = call i64 %263(ptr noundef %264, ptr noundef %262, ptr noundef nonnull %21, i64 noundef 2) #14
  %266 = and i64 %265, 4294967295
  %267 = icmp eq i64 %266, 2
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = load i16, ptr %21, align 2
  %270 = zext i16 %269 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #14
  br label %279

271:                                              ; preds = %259
  %272 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %273 = load ptr, ptr %272, align 8, !tbaa !26
  %274 = load ptr, ptr %69, align 8, !tbaa !23
  %275 = call i32 %273(ptr noundef %274, ptr noundef %262) #14
  %276 = freeze i32 %275
  %277 = icmp eq i32 %276, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #14
  %278 = select i1 %277, i32 %261, i32 -1
  br label %279

279:                                              ; preds = %271, %268
  %280 = phi i64 [ %270, %268 ], [ 0, %271 ]
  %281 = phi i32 [ %261, %268 ], [ %278, %271 ]
  %282 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #14
  %283 = load ptr, ptr %67, align 8, !tbaa !22
  %284 = load ptr, ptr %69, align 8, !tbaa !23
  %285 = call i64 %283(ptr noundef %284, ptr noundef %282, ptr noundef nonnull %20, i64 noundef 2) #14
  %286 = and i64 %285, 4294967295
  %287 = icmp eq i64 %286, 2
  br i1 %287, label %288, label %291

288:                                              ; preds = %279
  %289 = load i16, ptr %20, align 2
  %290 = zext i16 %289 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #14
  br label %299

291:                                              ; preds = %279
  %292 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %293 = load ptr, ptr %292, align 8, !tbaa !26
  %294 = load ptr, ptr %69, align 8, !tbaa !23
  %295 = call i32 %293(ptr noundef %294, ptr noundef %282) #14
  %296 = freeze i32 %295
  %297 = icmp eq i32 %296, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #14
  %298 = select i1 %297, i32 %281, i32 -1
  br label %299

299:                                              ; preds = %291, %288
  %300 = phi i64 [ %290, %288 ], [ 0, %291 ]
  %301 = phi i32 [ %281, %288 ], [ %298, %291 ]
  %302 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #14
  %303 = load ptr, ptr %67, align 8, !tbaa !22
  %304 = load ptr, ptr %69, align 8, !tbaa !23
  %305 = call i64 %303(ptr noundef %304, ptr noundef %302, ptr noundef nonnull %19, i64 noundef 2) #14
  %306 = and i64 %305, 4294967295
  %307 = icmp eq i64 %306, 2
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load i16, ptr %19, align 2
  %310 = zext i16 %309 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #14
  br label %319

311:                                              ; preds = %299
  %312 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !26
  %314 = load ptr, ptr %69, align 8, !tbaa !23
  %315 = call i32 %313(ptr noundef %314, ptr noundef %302) #14
  %316 = freeze i32 %315
  %317 = icmp eq i32 %316, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #14
  %318 = select i1 %317, i32 %301, i32 -1
  br label %319

319:                                              ; preds = %311, %308
  %320 = phi i64 [ %310, %308 ], [ 0, %311 ]
  %321 = phi i32 [ %301, %308 ], [ %318, %311 ]
  %322 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #14
  %323 = load ptr, ptr %67, align 8, !tbaa !22
  %324 = load ptr, ptr %69, align 8, !tbaa !23
  %325 = call i64 %323(ptr noundef %324, ptr noundef %322, ptr noundef nonnull %18, i64 noundef 2) #14
  %326 = and i64 %325, 4294967295
  %327 = icmp eq i64 %326, 2
  br i1 %327, label %328, label %331

328:                                              ; preds = %319
  %329 = load i16, ptr %18, align 2
  %330 = zext i16 %329 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #14
  br label %339

331:                                              ; preds = %319
  %332 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %333 = load ptr, ptr %332, align 8, !tbaa !26
  %334 = load ptr, ptr %69, align 8, !tbaa !23
  %335 = call i32 %333(ptr noundef %334, ptr noundef %322) #14
  %336 = freeze i32 %335
  %337 = icmp eq i32 %336, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #14
  %338 = select i1 %337, i32 %321, i32 -1
  br label %339

339:                                              ; preds = %331, %328
  %340 = phi i64 [ %330, %328 ], [ 0, %331 ]
  %341 = phi i32 [ %321, %328 ], [ %338, %331 ]
  %342 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  %343 = load ptr, ptr %67, align 8, !tbaa !22
  %344 = load ptr, ptr %69, align 8, !tbaa !23
  %345 = call i64 %343(ptr noundef %344, ptr noundef %342, ptr noundef nonnull %17, i64 noundef 4) #14
  %346 = and i64 %345, 4294967295
  %347 = icmp eq i64 %346, 4
  br i1 %347, label %348, label %351

348:                                              ; preds = %339
  %349 = load i32, ptr %17, align 4
  %350 = zext i32 %349 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  br label %359

351:                                              ; preds = %339
  %352 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %353 = load ptr, ptr %352, align 8, !tbaa !26
  %354 = load ptr, ptr %69, align 8, !tbaa !23
  %355 = call i32 %353(ptr noundef %354, ptr noundef %342) #14
  %356 = freeze i32 %355
  %357 = icmp eq i32 %356, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  %358 = select i1 %357, i32 %341, i32 -1
  br label %359

359:                                              ; preds = %351, %348
  %360 = phi i64 [ %350, %348 ], [ 0, %351 ]
  %361 = phi i32 [ %341, %348 ], [ %358, %351 ]
  %362 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  %363 = load ptr, ptr %67, align 8, !tbaa !22
  %364 = load ptr, ptr %69, align 8, !tbaa !23
  %365 = call i64 %363(ptr noundef %364, ptr noundef %362, ptr noundef nonnull %16, i64 noundef 4) #14
  %366 = and i64 %365, 4294967295
  %367 = icmp eq i64 %366, 4
  br i1 %367, label %368, label %371

368:                                              ; preds = %359
  %369 = load i32, ptr %16, align 4
  %370 = zext i32 %369 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  br label %378

371:                                              ; preds = %359
  %372 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %373 = load ptr, ptr %372, align 8, !tbaa !26
  %374 = load ptr, ptr %69, align 8, !tbaa !23
  %375 = call i32 %373(ptr noundef %374, ptr noundef %362) #14
  %376 = freeze i32 %375
  %377 = icmp eq i32 %376, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  br i1 %377, label %378, label %434

378:                                              ; preds = %371, %368
  %379 = phi i64 [ %370, %368 ], [ 0, %371 ]
  %380 = icmp eq i32 %361, 0
  %381 = icmp ne ptr %3, null
  %382 = and i1 %381, %380
  br i1 %382, label %383, label %402

383:                                              ; preds = %378
  %384 = icmp ult i64 %260, %4
  br i1 %384, label %385, label %387

385:                                              ; preds = %383
  %386 = getelementptr inbounds i8, ptr %3, i64 %260
  store i8 0, ptr %386, align 1, !tbaa !5
  br label %387

387:                                              ; preds = %383, %385
  %388 = phi i64 [ %260, %385 ], [ %4, %383 ]
  %389 = icmp ne i64 %260, 0
  %390 = icmp ne i64 %4, 0
  %391 = and i1 %390, %389
  br i1 %391, label %392, label %399

392:                                              ; preds = %387
  %393 = load ptr, ptr %67, align 8, !tbaa !56
  %394 = load ptr, ptr %69, align 8, !tbaa !35
  %395 = load ptr, ptr %34, align 8, !tbaa !21
  %396 = call i64 %393(ptr noundef %394, ptr noundef %395, ptr noundef nonnull %3, i64 noundef %388) #14
  %397 = icmp ne i64 %396, %388
  %398 = sext i1 %397 to i32
  br label %399

399:                                              ; preds = %392, %387
  %400 = phi i32 [ 0, %387 ], [ %398, %392 ]
  %401 = sub nsw i64 %260, %388
  br label %402

402:                                              ; preds = %399, %378
  %403 = phi i32 [ %400, %399 ], [ %361, %378 ]
  %404 = phi i64 [ %401, %399 ], [ %260, %378 ]
  %405 = icmp eq i32 %403, 0
  %406 = icmp ne ptr %5, null
  %407 = and i1 %406, %405
  br i1 %407, label %408, label %434

408:                                              ; preds = %402
  %409 = call i64 @llvm.umin.i64(i64 %280, i64 %6)
  %410 = icmp eq i64 %404, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %408
  %412 = load ptr, ptr %34, align 8, !tbaa !21
  %413 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %412, i64 noundef %404, i32 noundef 1) #14
  %414 = icmp ne i64 %413, 0
  %415 = sext i1 %414 to i32
  %416 = select i1 %414, i64 %404, i64 0
  br label %417

417:                                              ; preds = %411, %408
  %418 = phi i32 [ 0, %408 ], [ %415, %411 ]
  %419 = phi i64 [ 0, %408 ], [ %416, %411 ]
  %420 = icmp ne i64 %280, 0
  %421 = icmp ne i64 %6, 0
  %422 = and i1 %421, %420
  br i1 %422, label %423, label %430

423:                                              ; preds = %417
  %424 = load ptr, ptr %67, align 8, !tbaa !56
  %425 = load ptr, ptr %69, align 8, !tbaa !35
  %426 = load ptr, ptr %34, align 8, !tbaa !21
  %427 = call i64 %424(ptr noundef %425, ptr noundef %426, ptr noundef nonnull %5, i64 noundef %409) #14
  %428 = icmp eq i64 %427, %409
  %429 = select i1 %428, i32 %418, i32 -1
  br label %430

430:                                              ; preds = %423, %417
  %431 = phi i32 [ %418, %417 ], [ %429, %423 ]
  %432 = sub nsw i64 %280, %409
  %433 = add nsw i64 %432, %419
  br label %439

434:                                              ; preds = %371, %402
  %435 = phi i64 [ %404, %402 ], [ %260, %371 ]
  %436 = phi i32 [ %403, %402 ], [ -1, %371 ]
  %437 = phi i64 [ %379, %402 ], [ 0, %371 ]
  %438 = add nsw i64 %435, %280
  br label %439

439:                                              ; preds = %434, %430
  %440 = phi i64 [ %379, %430 ], [ %437, %434 ]
  %441 = phi i32 [ %431, %430 ], [ %436, %434 ]
  %442 = phi i64 [ %433, %430 ], [ %438, %434 ]
  %443 = icmp eq i32 %441, 0
  %444 = icmp ne i64 %280, 0
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %446, label %598

446:                                              ; preds = %439
  %447 = icmp eq i64 %442, %280
  br i1 %447, label %455, label %448

448:                                              ; preds = %446
  %449 = sub nsw i64 %442, %280
  %450 = load ptr, ptr %34, align 8, !tbaa !21
  %451 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %450, i64 noundef %449, i32 noundef 1) #14
  %452 = icmp ne i64 %451, 0
  %453 = sext i1 %452 to i32
  %454 = select i1 %452, i64 %449, i64 0
  br label %455

455:                                              ; preds = %448, %446
  %456 = phi i32 [ 0, %446 ], [ %453, %448 ]
  %457 = phi i64 [ 0, %446 ], [ %454, %448 ]
  %458 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  br label %459

459:                                              ; preds = %455, %589
  %460 = phi i64 [ 0, %455 ], [ %596, %589 ]
  %461 = phi i32 [ %456, %455 ], [ %594, %589 ]
  %462 = phi i64 [ %440, %455 ], [ %593, %589 ]
  %463 = phi i64 [ %220, %455 ], [ %592, %589 ]
  %464 = phi i64 [ %240, %455 ], [ %591, %589 ]
  %465 = phi i64 [ %320, %455 ], [ %590, %589 ]
  %466 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #14
  %467 = load ptr, ptr %67, align 8, !tbaa !22
  %468 = load ptr, ptr %69, align 8, !tbaa !23
  %469 = call i64 %467(ptr noundef %468, ptr noundef %466, ptr noundef nonnull %15, i64 noundef 2) #14
  %470 = and i64 %469, 4294967295
  %471 = icmp eq i64 %470, 2
  br i1 %471, label %472, label %475

472:                                              ; preds = %459
  %473 = load i16, ptr %15, align 2
  %474 = zext i16 %473 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #14
  br label %482

475:                                              ; preds = %459
  %476 = load ptr, ptr %458, align 8, !tbaa !26
  %477 = load ptr, ptr %69, align 8, !tbaa !23
  %478 = call i32 %476(ptr noundef %477, ptr noundef %466) #14
  %479 = freeze i32 %478
  %480 = icmp eq i32 %479, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #14
  %481 = select i1 %480, i32 %461, i32 -1
  br label %482

482:                                              ; preds = %475, %472
  %483 = phi i64 [ %474, %472 ], [ 0, %475 ]
  %484 = phi i32 [ %461, %472 ], [ %481, %475 ]
  %485 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  %486 = load ptr, ptr %67, align 8, !tbaa !22
  %487 = load ptr, ptr %69, align 8, !tbaa !23
  %488 = call i64 %486(ptr noundef %487, ptr noundef %485, ptr noundef nonnull %14, i64 noundef 2) #14
  %489 = and i64 %488, 4294967295
  %490 = icmp eq i64 %489, 2
  br i1 %490, label %491, label %494

491:                                              ; preds = %482
  %492 = load i16, ptr %14, align 2
  %493 = zext i16 %492 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %501

494:                                              ; preds = %482
  %495 = load ptr, ptr %458, align 8, !tbaa !26
  %496 = load ptr, ptr %69, align 8, !tbaa !23
  %497 = call i32 %495(ptr noundef %496, ptr noundef %485) #14
  %498 = freeze i32 %497
  %499 = icmp eq i32 %498, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  %500 = select i1 %499, i32 %484, i32 -1
  br label %501

501:                                              ; preds = %494, %491
  %502 = phi i64 [ %493, %491 ], [ 0, %494 ]
  %503 = phi i32 [ %484, %491 ], [ %500, %494 ]
  %504 = icmp eq i64 %483, 1
  br i1 %504, label %505, label %584

505:                                              ; preds = %501
  %506 = icmp eq i64 %464, 4294967295
  br i1 %506, label %507, label %523

507:                                              ; preds = %505
  %508 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %509 = load ptr, ptr %67, align 8, !tbaa !22
  %510 = load ptr, ptr %69, align 8, !tbaa !23
  %511 = call i64 %509(ptr noundef %510, ptr noundef %508, ptr noundef nonnull %13, i64 noundef 8) #14
  %512 = and i64 %511, 4294967295
  %513 = icmp eq i64 %512, 8
  br i1 %513, label %514, label %516

514:                                              ; preds = %507
  %515 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %523

516:                                              ; preds = %507
  %517 = load ptr, ptr %458, align 8, !tbaa !26
  %518 = load ptr, ptr %69, align 8, !tbaa !23
  %519 = call i32 %517(ptr noundef %518, ptr noundef %508) #14
  %520 = freeze i32 %519
  %521 = icmp eq i32 %520, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  %522 = select i1 %521, i32 %503, i32 -1
  br label %523

523:                                              ; preds = %516, %514, %505
  %524 = phi i64 [ %464, %505 ], [ %515, %514 ], [ 0, %516 ]
  %525 = phi i32 [ %503, %505 ], [ %503, %514 ], [ %522, %516 ]
  %526 = icmp eq i64 %463, 4294967295
  br i1 %526, label %527, label %543

527:                                              ; preds = %523
  %528 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  %529 = load ptr, ptr %67, align 8, !tbaa !22
  %530 = load ptr, ptr %69, align 8, !tbaa !23
  %531 = call i64 %529(ptr noundef %530, ptr noundef %528, ptr noundef nonnull %12, i64 noundef 8) #14
  %532 = and i64 %531, 4294967295
  %533 = icmp eq i64 %532, 8
  br i1 %533, label %534, label %536

534:                                              ; preds = %527
  %535 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  br label %543

536:                                              ; preds = %527
  %537 = load ptr, ptr %458, align 8, !tbaa !26
  %538 = load ptr, ptr %69, align 8, !tbaa !23
  %539 = call i32 %537(ptr noundef %538, ptr noundef %528) #14
  %540 = freeze i32 %539
  %541 = icmp eq i32 %540, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  %542 = select i1 %541, i32 %525, i32 -1
  br label %543

543:                                              ; preds = %536, %534, %523
  %544 = phi i64 [ %463, %523 ], [ %535, %534 ], [ 0, %536 ]
  %545 = phi i32 [ %525, %523 ], [ %525, %534 ], [ %542, %536 ]
  %546 = icmp eq i64 %462, 4294967295
  br i1 %546, label %547, label %563

547:                                              ; preds = %543
  %548 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %549 = load ptr, ptr %67, align 8, !tbaa !22
  %550 = load ptr, ptr %69, align 8, !tbaa !23
  %551 = call i64 %549(ptr noundef %550, ptr noundef %548, ptr noundef nonnull %11, i64 noundef 8) #14
  %552 = and i64 %551, 4294967295
  %553 = icmp eq i64 %552, 8
  br i1 %553, label %554, label %556

554:                                              ; preds = %547
  %555 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %563

556:                                              ; preds = %547
  %557 = load ptr, ptr %458, align 8, !tbaa !26
  %558 = load ptr, ptr %69, align 8, !tbaa !23
  %559 = call i32 %557(ptr noundef %558, ptr noundef %548) #14
  %560 = freeze i32 %559
  %561 = icmp eq i32 %560, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  %562 = select i1 %561, i32 %545, i32 -1
  br label %563

563:                                              ; preds = %556, %554, %543
  %564 = phi i64 [ %462, %543 ], [ %555, %554 ], [ 0, %556 ]
  %565 = phi i32 [ %545, %543 ], [ %545, %554 ], [ %562, %556 ]
  %566 = icmp eq i64 %465, 65535
  br i1 %566, label %567, label %589

567:                                              ; preds = %563
  %568 = load ptr, ptr %34, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %569 = load ptr, ptr %67, align 8, !tbaa !22
  %570 = load ptr, ptr %69, align 8, !tbaa !23
  %571 = call i64 %569(ptr noundef %570, ptr noundef %568, ptr noundef nonnull %10, i64 noundef 4) #14
  %572 = and i64 %571, 4294967295
  %573 = icmp eq i64 %572, 4
  br i1 %573, label %574, label %577

574:                                              ; preds = %567
  %575 = load i32, ptr %10, align 4
  %576 = zext i32 %575 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br label %589

577:                                              ; preds = %567
  %578 = load ptr, ptr %458, align 8, !tbaa !26
  %579 = load ptr, ptr %69, align 8, !tbaa !23
  %580 = call i32 %578(ptr noundef %579, ptr noundef %568) #14
  %581 = freeze i32 %580
  %582 = icmp eq i32 %581, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %583 = select i1 %582, i32 %565, i32 -1
  br label %589

584:                                              ; preds = %501
  %585 = load ptr, ptr %34, align 8, !tbaa !21
  %586 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %585, i64 noundef %502, i32 noundef 1) #14
  %587 = icmp eq i64 %586, 0
  %588 = select i1 %587, i32 %503, i32 -1
  br label %589

589:                                              ; preds = %577, %574, %584, %563
  %590 = phi i64 [ %465, %563 ], [ %465, %584 ], [ %576, %574 ], [ 0, %577 ]
  %591 = phi i64 [ %524, %563 ], [ %464, %584 ], [ %524, %574 ], [ %524, %577 ]
  %592 = phi i64 [ %544, %563 ], [ %463, %584 ], [ %544, %574 ], [ %544, %577 ]
  %593 = phi i64 [ %564, %563 ], [ %462, %584 ], [ %564, %574 ], [ %564, %577 ]
  %594 = phi i32 [ %565, %563 ], [ %588, %584 ], [ %565, %574 ], [ %583, %577 ]
  %595 = add i64 %460, 4
  %596 = add i64 %595, %502
  %597 = icmp ult i64 %596, %280
  br i1 %597, label %459, label %598, !llvm.loop !57

598:                                              ; preds = %589, %439
  %599 = phi i64 [ %320, %439 ], [ %590, %589 ]
  %600 = phi i64 [ %240, %439 ], [ %591, %589 ]
  %601 = phi i64 [ %220, %439 ], [ %592, %589 ]
  %602 = phi i64 [ %440, %439 ], [ %593, %589 ]
  %603 = phi i32 [ %441, %439 ], [ %594, %589 ]
  %604 = phi i64 [ %442, %439 ], [ %457, %589 ]
  %605 = icmp eq i32 %603, 0
  %606 = icmp ne ptr %7, null
  %607 = and i1 %606, %605
  br i1 %607, label %608, label %632

608:                                              ; preds = %598
  %609 = icmp ult i64 %300, %8
  br i1 %609, label %610, label %612

610:                                              ; preds = %608
  %611 = getelementptr inbounds i8, ptr %7, i64 %300
  store i8 0, ptr %611, align 1, !tbaa !5
  br label %612

612:                                              ; preds = %608, %610
  %613 = phi i64 [ %300, %610 ], [ %8, %608 ]
  %614 = icmp eq i64 %604, 0
  br i1 %614, label %620, label %615

615:                                              ; preds = %612
  %616 = load ptr, ptr %34, align 8, !tbaa !21
  %617 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %616, i64 noundef %604, i32 noundef 1) #14
  %618 = icmp ne i64 %617, 0
  %619 = sext i1 %618 to i32
  br label %620

620:                                              ; preds = %615, %612
  %621 = phi i32 [ 0, %612 ], [ %619, %615 ]
  %622 = icmp ne i64 %300, 0
  %623 = icmp ne i64 %8, 0
  %624 = and i1 %623, %622
  br i1 %624, label %625, label %632

625:                                              ; preds = %620
  %626 = load ptr, ptr %67, align 8, !tbaa !56
  %627 = load ptr, ptr %69, align 8, !tbaa !35
  %628 = load ptr, ptr %34, align 8, !tbaa !21
  %629 = call i64 %626(ptr noundef %627, ptr noundef %628, ptr noundef nonnull %7, i64 noundef %613) #14
  %630 = icmp eq i64 %629, %613
  %631 = select i1 %630, i32 %621, i32 -1
  br label %632

632:                                              ; preds = %625, %598, %620
  %633 = phi i32 [ %621, %620 ], [ %631, %625 ], [ %603, %598 ]
  %634 = icmp eq i32 %633, 0
  %635 = icmp ne ptr %1, null
  %636 = and i1 %635, %634
  br i1 %636, label %637, label %657

637:                                              ; preds = %632
  store i64 %86, ptr %1, align 8, !tbaa.struct !58
  %638 = getelementptr inbounds i8, ptr %1, i64 8
  store i64 %106, ptr %638, align 8, !tbaa.struct !59
  %639 = getelementptr inbounds i8, ptr %1, i64 16
  store i64 %126, ptr %639, align 8, !tbaa.struct !60
  %640 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 %146, ptr %640, align 8, !tbaa.struct !61
  %641 = getelementptr inbounds i8, ptr %1, i64 32
  store i64 %166, ptr %641, align 8, !tbaa.struct !62
  %642 = getelementptr inbounds i8, ptr %1, i64 40
  store i64 %200, ptr %642, align 8, !tbaa.struct !63
  %643 = getelementptr inbounds i8, ptr %1, i64 48
  store i64 %601, ptr %643, align 8, !tbaa.struct !64
  %644 = getelementptr inbounds i8, ptr %1, i64 56
  store i64 %600, ptr %644, align 8, !tbaa.struct !65
  %645 = getelementptr inbounds i8, ptr %1, i64 64
  store i64 %260, ptr %645, align 8, !tbaa.struct !66
  %646 = getelementptr inbounds i8, ptr %1, i64 72
  store i64 %280, ptr %646, align 8, !tbaa.struct !67
  %647 = getelementptr inbounds i8, ptr %1, i64 80
  store i64 %300, ptr %647, align 8, !tbaa.struct !68
  %648 = getelementptr inbounds i8, ptr %1, i64 88
  store i64 %599, ptr %648, align 8, !tbaa.struct !69
  %649 = getelementptr inbounds i8, ptr %1, i64 96
  store i64 %340, ptr %649, align 8, !tbaa.struct !70
  %650 = getelementptr inbounds i8, ptr %1, i64 104
  store i64 %360, ptr %650, align 8, !tbaa.struct !71
  %651 = getelementptr inbounds i8, ptr %1, i64 112
  store i32 %181, ptr %651, align 8, !tbaa.struct !72
  %652 = getelementptr inbounds i8, ptr %1, i64 116
  store i32 %179, ptr %652, align 4, !tbaa.struct !73
  %653 = getelementptr inbounds i8, ptr %1, i64 120
  store i32 %177, ptr %653, align 8, !tbaa.struct !74
  %654 = getelementptr inbounds i8, ptr %1, i64 124
  store i32 %170, ptr %654, align 4, !tbaa.struct !75
  %655 = getelementptr inbounds i8, ptr %1, i64 128
  store i32 %173, ptr %655, align 8, !tbaa.struct !76
  %656 = getelementptr inbounds i8, ptr %1, i64 132
  store i32 %175, ptr %656, align 4, !tbaa.struct !77
  br label %657

657:                                              ; preds = %637, %632
  %658 = icmp ne ptr %2, null
  %659 = and i1 %658, %634
  br i1 %659, label %660, label %661

660:                                              ; preds = %657
  store i64 %602, ptr %2, align 8, !tbaa !28
  br label %661

661:                                              ; preds = %657, %660, %9
  %662 = phi i32 [ -102, %9 ], [ 0, %660 ], [ %633, %657 ]
  ret i32 %662
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGetCurrentFileInfo(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #2 {
  %9 = alloca %struct.unz_file_info64_s, align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %9) #14
  %10 = call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7), !range !44
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne ptr %1, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load <2 x i64>, ptr %9, align 16, !tbaa !28
  store <2 x i64> %15, ptr %1, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 2
  %17 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 2
  %18 = load <2 x i64>, ptr %16, align 16, !tbaa !28
  store <2 x i64> %18, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 4
  %20 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 4
  %21 = load <2 x i64>, ptr %19, align 16, !tbaa !28
  store <2 x i64> %21, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 8
  %23 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 8
  %24 = load <2 x i64>, ptr %22, align 16, !tbaa !28
  store <2 x i64> %24, ptr %23, align 8, !tbaa !28
  %25 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 10
  %26 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 10
  %27 = load <2 x i64>, ptr %25, align 16, !tbaa !28
  store <2 x i64> %27, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 12
  %29 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 12
  %30 = load <2 x i64>, ptr %28, align 16, !tbaa !28
  store <2 x i64> %30, ptr %29, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 14
  %32 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 16 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !72
  %33 = getelementptr inbounds %struct.unz_file_info64_s, ptr %9, i64 0, i32 6
  %34 = getelementptr inbounds %struct.unz_file_info_s, ptr %1, i64 0, i32 6
  %35 = load <2 x i64>, ptr %33, align 16, !tbaa !28
  store <2 x i64> %35, ptr %34, align 8, !tbaa !28
  br label %36

36:                                               ; preds = %14, %8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %9) #14
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGoToFirstFile(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  store i64 %5, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  store i64 0, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %9 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %10 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  store i64 %12, ptr %13, align 8, !tbaa !45
  br label %14

14:                                               ; preds = %1, %3
  %15 = phi i32 [ %10, %3 ], [ -102, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGoToNextFile(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp ne i64 %9, 65535
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !43
  %13 = add i64 %12, 1
  %14 = icmp eq i64 %13, %9
  %15 = select i1 %10, i1 %14, i1 false
  br i1 %15, label %35, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %18 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !78
  %20 = add i64 %19, 46
  %21 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !79
  %23 = add i64 %20, %22
  %24 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !80
  %26 = add i64 %23, %25
  %27 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !42
  %29 = add i64 %26, %28
  store i64 %29, ptr %27, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  store i64 %13, ptr %30, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %32 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %31, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i64
  store i64 %34, ptr %4, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %7, %3, %1, %16
  %36 = phi i32 [ %32, %16 ], [ -102, %1 ], [ -100, %3 ], [ -100, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzLocateFile(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.unz_file_info64_s, align 8
  %5 = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %9 = icmp ugt i64 %8, 255
  br i1 %9, label %90, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !45
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %90, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  %17 = load <2 x i64>, ptr %15, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) %18, i64 136, i1 false), !tbaa.struct !58
  %19 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %20 = load i64, ptr %19, align 8, !tbaa.struct !81
  %21 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 10
  %22 = load i64, ptr %21, align 8, !tbaa !33
  store i64 %22, ptr %16, align 8, !tbaa !42
  store i64 0, ptr %15, align 8, !tbaa !43
  %23 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  store i64 %25, ptr %11, align 8, !tbaa !45
  br i1 %24, label %26, label %88

26:                                               ; preds = %14
  %27 = icmp ult i32 %2, 2
  %28 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %29 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 8
  %30 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 9
  %31 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 10
  br label %32

32:                                               ; preds = %26, %75
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %5) #14
  %33 = call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, i64 noundef 256, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  br i1 %27, label %36, label %38

36:                                               ; preds = %35
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #13
  br label %59

38:                                               ; preds = %35, %55
  %39 = phi ptr [ %57, %55 ], [ %5, %35 ]
  %40 = phi ptr [ %56, %55 ], [ %1, %35 ]
  %41 = load i8, ptr %39, align 1, !tbaa !5
  %42 = load i8, ptr %40, align 1, !tbaa !5
  %43 = add i8 %41, -97
  %44 = icmp ult i8 %43, 26
  %45 = add nsw i8 %41, -32
  %46 = select i1 %44, i8 %45, i8 %41
  %47 = add i8 %42, -97
  %48 = icmp ult i8 %47, 26
  %49 = add nsw i8 %42, -32
  %50 = select i1 %48, i8 %49, i8 %42
  %51 = icmp eq i8 %46, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = icmp ne i8 %50, 0
  %54 = sext i1 %53 to i32
  br label %59

55:                                               ; preds = %38
  %56 = getelementptr inbounds i8, ptr %40, i64 1
  %57 = getelementptr inbounds i8, ptr %39, i64 1
  %58 = icmp eq i8 %46, %50
  br i1 %58, label %38, label %63

59:                                               ; preds = %36, %52
  %60 = phi i32 [ %37, %36 ], [ %54, %52 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #14
  br label %90

63:                                               ; preds = %55, %59
  %64 = load i64, ptr %11, align 8, !tbaa !45
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %28, align 8, !tbaa !29
  %68 = icmp ne i64 %67, 65535
  %69 = load i64, ptr %15, align 8, !tbaa !43
  %70 = add i64 %69, 1
  %71 = icmp eq i64 %70, %67
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %73, label %75

73:                                               ; preds = %32, %63, %66
  %74 = phi i32 [ -100, %66 ], [ -100, %63 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #14
  br label %88

75:                                               ; preds = %66
  %76 = load i64, ptr %29, align 8, !tbaa !78
  %77 = add i64 %76, 46
  %78 = load i64, ptr %30, align 8, !tbaa !79
  %79 = add i64 %77, %78
  %80 = load i64, ptr %31, align 8, !tbaa !80
  %81 = add i64 %79, %80
  %82 = load i64, ptr %16, align 8, !tbaa !42
  %83 = add i64 %81, %82
  store i64 %83, ptr %16, align 8, !tbaa !42
  store i64 %70, ptr %15, align 8, !tbaa !43
  %84 = call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i64
  store i64 %86, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %5) #14
  %87 = icmp eq i32 %84, 0
  br i1 %87, label %32, label %88, !llvm.loop !82

88:                                               ; preds = %75, %73, %14
  %89 = phi i32 [ %23, %14 ], [ %74, %73 ], [ %84, %75 ]
  store <2 x i64> %17, ptr %15, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(136) %4, i64 136, i1 false), !tbaa.struct !58
  store i64 %20, ptr %19, align 8, !tbaa.struct !81
  br label %90

90:                                               ; preds = %62, %10, %7, %3, %88
  %91 = phi i32 [ %89, %88 ], [ -102, %3 ], [ -102, %7 ], [ -100, %10 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4)
  ret i32 %91
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @unzGetFilePos64(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %8 = load i64, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %12 = load <2 x i64>, ptr %11, align 8, !tbaa !28
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %13, ptr %1, align 8, !tbaa !28
  br label %14

14:                                               ; preds = %6, %2, %10
  %15 = phi i32 [ 0, %10 ], [ -102, %2 ], [ -100, %6 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @unzGetFilePos(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !45
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %10 = load <2 x i64>, ptr %9, align 8, !tbaa !28
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %11, ptr %1, align 8, !tbaa !28
  br label %12

12:                                               ; preds = %4, %2, %8
  %13 = phi i32 [ 0, %8 ], [ -100, %4 ], [ -102, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGoToFilePos64(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %8 = load <2 x i64>, ptr %1, align 8, !tbaa !28
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %9, ptr %7, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %12 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  store i64 %14, ptr %15, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %12, %6 ], [ -102, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGoToFilePos(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %8 = load <2 x i64>, ptr %1, align 8, !tbaa !28
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %9, ptr %7, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %12 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  store i64 %14, ptr %15, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ -102, %2 ], [ %12, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [4 x i8], align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca [4 x i8], align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 1
  %15 = alloca [4 x i8], align 4
  %16 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #14
  %17 = icmp eq ptr %0, null
  br i1 %17, label %457, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !45
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %457, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !47
  tail call void @free(ptr noundef %27) #14
  store ptr null, ptr %24, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %24, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %24, i64 0, i32 1
  %33 = tail call i32 @inflateEnd(ptr noundef nonnull %32) #14
  br label %34

34:                                               ; preds = %26, %31
  tail call void @free(ptr noundef nonnull %24) #14
  store ptr null, ptr %23, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %34, %22
  %36 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %39 = load i64, ptr %38, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !36
  %42 = add i64 %41, %39
  %43 = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %37, i64 noundef %42, i32 noundef 0) #14
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %457

45:                                               ; preds = %35
  %46 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  %47 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = call i64 %48(ptr noundef %50, ptr noundef %46, ptr noundef nonnull %15, i64 noundef 4) #14
  %52 = and i64 %51, 4294967295
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  %56 = freeze i32 %55
  %57 = icmp eq i32 %56, 67324752
  %58 = select i1 %57, i32 0, i32 -103
  br label %67

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = load ptr, ptr %49, align 8, !tbaa !23
  %63 = call i32 %61(ptr noundef %62, ptr noundef %46) #14
  %64 = freeze i32 %63
  %65 = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  %66 = select i1 %65, i32 -103, i32 -1
  br label %67

67:                                               ; preds = %59, %54
  %68 = phi i32 [ %58, %54 ], [ %66, %59 ]
  %69 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  %70 = load ptr, ptr %47, align 8, !tbaa !22
  %71 = load ptr, ptr %49, align 8, !tbaa !23
  %72 = call i64 %70(ptr noundef %71, ptr noundef %69, ptr noundef nonnull %14, i64 noundef 2) #14
  %73 = and i64 %72, 4294967295
  %74 = icmp eq i64 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %83

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !26
  %79 = load ptr, ptr %49, align 8, !tbaa !23
  %80 = call i32 %78(ptr noundef %79, ptr noundef %69) #14
  %81 = freeze i32 %80
  %82 = icmp eq i32 %81, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %75
  br label %84

84:                                               ; preds = %83, %76
  %85 = phi i32 [ %68, %83 ], [ -1, %76 ]
  %86 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  %87 = load ptr, ptr %47, align 8, !tbaa !22
  %88 = load ptr, ptr %49, align 8, !tbaa !23
  %89 = call i64 %87(ptr noundef %88, ptr noundef %86, ptr noundef nonnull %13, i64 noundef 2) #14
  %90 = and i64 %89, 4294967295
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i16, ptr %13, align 2
  %94 = zext i16 %93 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  br label %103

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !26
  %98 = load ptr, ptr %49, align 8, !tbaa !23
  %99 = call i32 %97(ptr noundef %98, ptr noundef %86) #14
  %100 = freeze i32 %99
  %101 = icmp eq i32 %100, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %102 = select i1 %101, i32 %85, i32 -1
  br label %103

103:                                              ; preds = %95, %92
  %104 = phi i64 [ %94, %92 ], [ 0, %95 ]
  %105 = phi i32 [ %85, %92 ], [ %102, %95 ]
  %106 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #14
  %107 = load ptr, ptr %47, align 8, !tbaa !22
  %108 = load ptr, ptr %49, align 8, !tbaa !23
  %109 = call i64 %107(ptr noundef %108, ptr noundef %106, ptr noundef nonnull %12, i64 noundef 2) #14
  %110 = and i64 %109, 4294967295
  %111 = icmp eq i64 %110, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i16, ptr %12, align 2
  %114 = zext i16 %113 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  br label %121

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !26
  %118 = load ptr, ptr %49, align 8, !tbaa !23
  %119 = call i32 %117(ptr noundef %118, ptr noundef %106) #14
  %120 = icmp eq i32 %119, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  br i1 %120, label %121, label %131

121:                                              ; preds = %115, %112
  %122 = phi i64 [ %114, %112 ], [ 0, %115 ]
  %123 = icmp eq i32 %105, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 3
  %126 = load i64, ptr %125, align 8, !tbaa !84
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = trunc i64 %122 to i16
  switch i16 %129, label %130 [
    i16 0, label %131
    i16 12, label %131
    i16 8, label %131
  ]

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %128, %128, %128, %124, %121, %115
  %132 = phi i32 [ -103, %130 ], [ 0, %128 ], [ 0, %128 ], [ 0, %128 ], [ -103, %124 ], [ -1, %115 ], [ %105, %121 ]
  %133 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  %134 = load ptr, ptr %47, align 8, !tbaa !22
  %135 = load ptr, ptr %49, align 8, !tbaa !23
  %136 = call i64 %134(ptr noundef %135, ptr noundef %133, ptr noundef nonnull %11, i64 noundef 4) #14
  %137 = and i64 %136, 4294967295
  %138 = icmp eq i64 %137, 4
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %147

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !26
  %143 = load ptr, ptr %49, align 8, !tbaa !23
  %144 = call i32 %142(ptr noundef %143, ptr noundef %133) #14
  %145 = freeze i32 %144
  %146 = icmp eq i32 %145, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br i1 %146, label %147, label %148

147:                                              ; preds = %140, %139
  br label %148

148:                                              ; preds = %147, %140
  %149 = phi i32 [ %132, %147 ], [ -1, %140 ]
  %150 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  %151 = load ptr, ptr %47, align 8, !tbaa !22
  %152 = load ptr, ptr %49, align 8, !tbaa !23
  %153 = call i64 %151(ptr noundef %152, ptr noundef %150, ptr noundef nonnull %10, i64 noundef 4) #14
  %154 = and i64 %153, 4294967295
  %155 = icmp eq i64 %154, 4
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, ptr %10, align 4
  %158 = zext i32 %157 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br label %165

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !26
  %162 = load ptr, ptr %49, align 8, !tbaa !23
  %163 = call i32 %161(ptr noundef %162, ptr noundef %150) #14
  %164 = icmp eq i32 %163, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br i1 %164, label %165, label %176

165:                                              ; preds = %159, %156
  %166 = phi i64 [ %158, %156 ], [ 0, %159 ]
  %167 = icmp eq i32 %149, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 5
  %170 = load i64, ptr %169, align 8, !tbaa !85
  %171 = icmp eq i64 %166, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = and i64 %104, 8
  %174 = icmp eq i64 %173, 0
  %175 = select i1 %174, i32 -103, i32 0
  br label %176

176:                                              ; preds = %172, %168, %165, %159
  %177 = phi i32 [ 0, %168 ], [ %149, %165 ], [ -1, %159 ], [ %175, %172 ]
  %178 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %179 = load ptr, ptr %47, align 8, !tbaa !22
  %180 = load ptr, ptr %49, align 8, !tbaa !23
  %181 = call i64 %179(ptr noundef %180, ptr noundef %178, ptr noundef nonnull %9, i64 noundef 4) #14
  %182 = and i64 %181, 4294967295
  %183 = icmp eq i64 %182, 4
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, ptr %9, align 4
  %186 = zext i32 %185 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %193

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %189 = load ptr, ptr %188, align 8, !tbaa !26
  %190 = load ptr, ptr %49, align 8, !tbaa !23
  %191 = call i32 %189(ptr noundef %190, ptr noundef %178) #14
  %192 = icmp eq i32 %191, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br i1 %192, label %193, label %206

193:                                              ; preds = %187, %184
  %194 = phi i64 [ %186, %184 ], [ 0, %187 ]
  %195 = icmp ne i64 %194, 4294967295
  %196 = icmp eq i32 %177, 0
  %197 = and i1 %196, %195
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 6
  %200 = load i64, ptr %199, align 8, !tbaa !86
  %201 = icmp eq i64 %194, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = and i64 %104, 8
  %204 = icmp eq i64 %203, 0
  %205 = select i1 %204, i32 -103, i32 0
  br label %206

206:                                              ; preds = %202, %198, %193, %187
  %207 = phi i32 [ 0, %198 ], [ %177, %193 ], [ -1, %187 ], [ %205, %202 ]
  %208 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %209 = load ptr, ptr %47, align 8, !tbaa !22
  %210 = load ptr, ptr %49, align 8, !tbaa !23
  %211 = call i64 %209(ptr noundef %210, ptr noundef %208, ptr noundef nonnull %8, i64 noundef 4) #14
  %212 = and i64 %211, 4294967295
  %213 = icmp eq i64 %212, 4
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32, ptr %8, align 4
  %216 = zext i32 %215 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %223

217:                                              ; preds = %206
  %218 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !26
  %220 = load ptr, ptr %49, align 8, !tbaa !23
  %221 = call i32 %219(ptr noundef %220, ptr noundef %208) #14
  %222 = icmp eq i32 %221, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %222, label %223, label %236

223:                                              ; preds = %217, %214
  %224 = phi i64 [ %216, %214 ], [ 0, %217 ]
  %225 = icmp ne i64 %224, 4294967295
  %226 = icmp eq i32 %207, 0
  %227 = and i1 %226, %225
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 7
  %230 = load i64, ptr %229, align 8, !tbaa !87
  %231 = icmp eq i64 %224, %230
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = and i64 %104, 8
  %234 = icmp eq i64 %233, 0
  %235 = select i1 %234, i32 -103, i32 0
  br label %236

236:                                              ; preds = %232, %228, %223, %217
  %237 = phi i32 [ 0, %228 ], [ %207, %223 ], [ -1, %217 ], [ %235, %232 ]
  %238 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  %239 = load ptr, ptr %47, align 8, !tbaa !22
  %240 = load ptr, ptr %49, align 8, !tbaa !23
  %241 = call i64 %239(ptr noundef %240, ptr noundef %238, ptr noundef nonnull %7, i64 noundef 2) #14
  %242 = and i64 %241, 4294967295
  %243 = icmp eq i64 %242, 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i16, ptr %7, align 2
  %246 = zext i16 %245 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br label %253

247:                                              ; preds = %236
  %248 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %249 = load ptr, ptr %248, align 8, !tbaa !26
  %250 = load ptr, ptr %49, align 8, !tbaa !23
  %251 = call i32 %249(ptr noundef %250, ptr noundef %238) #14
  %252 = icmp eq i32 %251, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br i1 %252, label %253, label %260

253:                                              ; preds = %247, %244
  %254 = phi i64 [ %246, %244 ], [ 0, %247 ]
  %255 = icmp eq i32 %237, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 8
  %258 = load i64, ptr %257, align 8, !tbaa !78
  %259 = icmp eq i64 %254, %258
  br label %260

260:                                              ; preds = %256, %253, %247
  %261 = phi i64 [ %254, %253 ], [ 0, %247 ], [ %254, %256 ]
  %262 = phi i1 [ false, %253 ], [ false, %247 ], [ %259, %256 ]
  %263 = trunc i64 %261 to i32
  %264 = load ptr, ptr %36, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  %265 = load ptr, ptr %47, align 8, !tbaa !22
  %266 = load ptr, ptr %49, align 8, !tbaa !23
  %267 = call i64 %265(ptr noundef %266, ptr noundef %264, ptr noundef nonnull %6, i64 noundef 2) #14
  %268 = and i64 %267, 4294967295
  %269 = icmp eq i64 %268, 2
  br i1 %269, label %270, label %273

270:                                              ; preds = %260
  %271 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  %272 = zext i16 %271 to i32
  br label %280

273:                                              ; preds = %260
  %274 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !26
  %276 = load ptr, ptr %49, align 8, !tbaa !23
  %277 = call i32 %275(ptr noundef %276, ptr noundef %264) #14
  %278 = freeze i32 %277
  %279 = icmp eq i32 %278, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  br i1 %279, label %280, label %457

280:                                              ; preds = %273, %270
  %281 = phi i32 [ %272, %270 ], [ 0, %273 ]
  %282 = load i64, ptr %38, align 8, !tbaa !83
  %283 = add nuw nsw i64 %261, 30
  %284 = add i64 %283, %282
  %285 = add nuw nsw i32 %281, %263
  br i1 %262, label %286, label %457

286:                                              ; preds = %280
  %287 = call noalias dereferenceable_or_null(320) ptr @malloc(i64 noundef 320) #15
  %288 = icmp eq ptr %287, null
  br i1 %288, label %457, label %289

289:                                              ; preds = %286
  %290 = call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #15
  store ptr %290, ptr %287, align 8, !tbaa !47
  %291 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 4
  store i64 %284, ptr %291, align 8, !tbaa !88
  %292 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 5
  store i32 %281, ptr %292, align 8, !tbaa !89
  %293 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 6
  store i64 0, ptr %293, align 8, !tbaa !90
  %294 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 16
  store i32 %3, ptr %294, align 8, !tbaa !52
  %295 = icmp eq ptr %290, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  call void @free(ptr noundef nonnull %287) #14
  br label %457

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 3
  store i64 0, ptr %298, align 8, !tbaa !50
  %299 = icmp eq ptr %1, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 3
  %302 = load i64, ptr %301, align 8, !tbaa !84
  %303 = trunc i64 %302 to i32
  store i32 %303, ptr %1, align 4, !tbaa !41
  br label %304

304:                                              ; preds = %300, %297
  %305 = icmp eq ptr %2, null
  br i1 %305, label %314, label %306

306:                                              ; preds = %304
  store i32 6, ptr %2, align 4, !tbaa !41
  %307 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 2
  %308 = load i64, ptr %307, align 8, !tbaa !91
  %309 = and i64 %308, 6
  switch i64 %309, label %314 [
    i64 6, label %312
    i64 4, label %310
    i64 2, label %311
  ]

310:                                              ; preds = %306
  br label %312

311:                                              ; preds = %306
  br label %312

312:                                              ; preds = %306, %311, %310
  %313 = phi i32 [ 2, %310 ], [ 9, %311 ], [ 1, %306 ]
  store i32 %313, ptr %2, align 4, !tbaa !41
  br label %314

314:                                              ; preds = %312, %306, %304
  %315 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 3
  %316 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 5
  %317 = load i64, ptr %316, align 8, !tbaa !85
  %318 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 9
  store i64 %317, ptr %318, align 8, !tbaa !54
  %319 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %319, i8 0, i64 16, i1 false)
  %320 = load i64, ptr %315, align 8, !tbaa !84
  %321 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 14
  store i64 %320, ptr %321, align 8, !tbaa !92
  %322 = load ptr, ptr %36, align 8, !tbaa !21
  %323 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 13
  store ptr %322, ptr %323, align 8, !tbaa !93
  %324 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %324, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !tbaa.struct !8
  %325 = load i64, ptr %40, align 8, !tbaa !36
  %326 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 15
  store i64 %325, ptr %326, align 8, !tbaa !94
  %327 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 1
  %328 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 1, i32 5
  store i64 0, ptr %328, align 8, !tbaa !95
  %329 = icmp ne i64 %320, 12
  %330 = icmp ne i32 %3, 0
  %331 = or i1 %330, %329
  br i1 %331, label %333, label %332

332:                                              ; preds = %314
  store i32 1, ptr %294, align 8, !tbaa !52
  br label %345

333:                                              ; preds = %314
  %334 = icmp ne i64 %320, 8
  %335 = or i1 %330, %334
  br i1 %335, label %345, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 1, i32 8
  store ptr null, ptr %327, align 8, !tbaa !96
  %338 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 1, i32 1
  store i32 0, ptr %338, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %337, i8 0, i64 24, i1 false)
  %339 = call i32 @inflateInit2_(ptr noundef nonnull %327, i32 noundef -15, ptr noundef nonnull @.str, i32 noundef 112) #14
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  store i64 8, ptr %298, align 8, !tbaa !50
  %342 = load i64, ptr %38, align 8, !tbaa !83
  br label %345

343:                                              ; preds = %336
  %344 = load ptr, ptr %287, align 8, !tbaa !47
  call void @free(ptr noundef %344) #14
  call void @free(ptr noundef nonnull %287) #14
  br label %457

345:                                              ; preds = %333, %341, %332
  %346 = phi i64 [ %282, %333 ], [ %342, %341 ], [ %282, %332 ]
  %347 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11, i32 6
  %348 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 10
  %349 = load <2 x i64>, ptr %347, align 8, !tbaa !28
  store <2 x i64> %349, ptr %348, align 8, !tbaa !28
  %350 = zext nneg i32 %285 to i64
  %351 = add nuw nsw i64 %350, 30
  %352 = add i64 %351, %346
  %353 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 2
  store i64 %352, ptr %353, align 8, !tbaa !98
  %354 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %287, i64 0, i32 1, i32 1
  store i32 0, ptr %354, align 8, !tbaa !97
  store ptr %287, ptr %23, align 8, !tbaa !38
  %355 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %355, align 8, !tbaa !39
  %356 = icmp eq ptr %4, null
  br i1 %356, label %457, label %357

357:                                              ; preds = %345
  %358 = call ptr @get_crc_table() #14
  %359 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 17
  store ptr %358, ptr %359, align 8, !tbaa !99
  %360 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16
  store i64 305419896, ptr %360, align 8, !tbaa !28
  %361 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16, i64 1
  store i64 591751049, ptr %361, align 8, !tbaa !28
  %362 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16, i64 2
  store i64 878082192, ptr %362, align 8, !tbaa !28
  %363 = load i8, ptr %4, align 1, !tbaa !5
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %394, label %365

365:                                              ; preds = %357, %365
  %366 = phi i64 [ %390, %365 ], [ 878082192, %357 ]
  %367 = phi i64 [ %382, %365 ], [ 591751049, %357 ]
  %368 = phi i64 [ %378, %365 ], [ 305419896, %357 ]
  %369 = phi i8 [ %392, %365 ], [ %363, %357 ]
  %370 = phi ptr [ %391, %365 ], [ %4, %357 ]
  %371 = trunc i64 %368 to i8
  %372 = xor i8 %369, %371
  %373 = zext i8 %372 to i64
  %374 = getelementptr inbounds i32, ptr %358, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !41
  %376 = zext i32 %375 to i64
  %377 = lshr i64 %368, 8
  %378 = xor i64 %377, %376
  store i64 %378, ptr %360, align 8, !tbaa !28
  %379 = and i64 %378, 255
  %380 = add i64 %379, %367
  %381 = mul i64 %380, 134775813
  %382 = add i64 %381, 1
  store i64 %382, ptr %361, align 8, !tbaa !28
  %383 = lshr i64 %382, 24
  %384 = xor i64 %383, %366
  %385 = and i64 %384, 255
  %386 = getelementptr inbounds i32, ptr %358, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !41
  %388 = zext i32 %387 to i64
  %389 = lshr i64 %366, 8
  %390 = xor i64 %389, %388
  store i64 %390, ptr %362, align 8, !tbaa !28
  %391 = getelementptr inbounds i8, ptr %370, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !5
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %365, !llvm.loop !100

394:                                              ; preds = %365, %357
  %395 = load ptr, ptr %36, align 8, !tbaa !21
  %396 = load ptr, ptr %23, align 8, !tbaa !38
  %397 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %396, i64 0, i32 2
  %398 = load i64, ptr %397, align 8, !tbaa !98
  %399 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %396, i64 0, i32 15
  %400 = load i64, ptr %399, align 8, !tbaa !94
  %401 = add i64 %400, %398
  %402 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %395, i64 noundef %401, i32 noundef 0) #14
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %404, label %457

404:                                              ; preds = %394
  %405 = load ptr, ptr %47, align 8, !tbaa !56
  %406 = load ptr, ptr %49, align 8, !tbaa !35
  %407 = load ptr, ptr %36, align 8, !tbaa !21
  %408 = call i64 %405(ptr noundef %406, ptr noundef %407, ptr noundef nonnull %16, i64 noundef 12) #14
  %409 = icmp ult i64 %408, 12
  br i1 %409, label %457, label %410

410:                                              ; preds = %404
  %411 = load ptr, ptr %359, align 8, !tbaa !99
  %412 = load i64, ptr %362, align 8, !tbaa !28
  %413 = load i64, ptr %360, align 8, !tbaa !28
  %414 = load i64, ptr %361, align 8, !tbaa !28
  br label %415

415:                                              ; preds = %410, %415
  %416 = phi i64 [ 0, %410 ], [ %450, %415 ]
  %417 = phi i64 [ %412, %410 ], [ %449, %415 ]
  %418 = phi i64 [ %413, %410 ], [ %437, %415 ]
  %419 = phi i64 [ %414, %410 ], [ %441, %415 ]
  %420 = trunc i64 %417 to i32
  %421 = and i32 %420, 65533
  %422 = or i32 %420, 2
  %423 = xor i32 %421, 3
  %424 = mul i32 %423, %422
  %425 = lshr i32 %424, 8
  %426 = getelementptr inbounds [12 x i8], ptr %16, i64 0, i64 %416
  %427 = load i8, ptr %426, align 1, !tbaa !5
  %428 = trunc i32 %425 to i8
  %429 = xor i8 %427, %428
  store i8 %429, ptr %426, align 1, !tbaa !5
  %430 = trunc i64 %418 to i8
  %431 = xor i8 %429, %430
  %432 = zext i8 %431 to i64
  %433 = getelementptr inbounds i32, ptr %411, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !41
  %435 = zext i32 %434 to i64
  %436 = lshr i64 %418, 8
  %437 = xor i64 %436, %435
  %438 = and i64 %437, 255
  %439 = add i64 %438, %419
  %440 = mul i64 %439, 134775813
  %441 = add i64 %440, 1
  %442 = lshr i64 %441, 24
  %443 = xor i64 %442, %417
  %444 = and i64 %443, 255
  %445 = getelementptr inbounds i32, ptr %411, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !41
  %447 = zext i32 %446 to i64
  %448 = lshr i64 %417, 8
  %449 = xor i64 %448, %447
  %450 = add nuw nsw i64 %416, 1
  %451 = icmp eq i64 %450, 12
  br i1 %451, label %452, label %415, !llvm.loop !101

452:                                              ; preds = %415
  store i64 %449, ptr %362, align 8, !tbaa !28
  store i64 %437, ptr %360, align 8, !tbaa !28
  store i64 %441, ptr %361, align 8, !tbaa !28
  %453 = load ptr, ptr %23, align 8, !tbaa !38
  %454 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %453, i64 0, i32 2
  %455 = load i64, ptr %454, align 8, !tbaa !98
  %456 = add i64 %455, 12
  store i64 %456, ptr %454, align 8, !tbaa !98
  store i32 1, ptr %355, align 8, !tbaa !39
  br label %457

457:                                              ; preds = %273, %35, %345, %452, %394, %404, %286, %280, %18, %5, %343, %296
  %458 = phi i32 [ -104, %296 ], [ %339, %343 ], [ -102, %5 ], [ -102, %18 ], [ -103, %280 ], [ -104, %286 ], [ -104, %404 ], [ -104, %394 ], [ 0, %452 ], [ 0, %345 ], [ -103, %35 ], [ -103, %273 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #14
  ret i32 %458
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @get_crc_table() local_unnamed_addr #4

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @unzOpenCurrentFile(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzOpenCurrentFilePassword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzOpenCurrentFile2(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @unzGetCurrentFileZStreamPos64(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 15
  %11 = load i64, ptr %10, align 8, !tbaa !94
  %12 = add i64 %11, %9
  br label %13

13:                                               ; preds = %3, %1, %7
  %14 = phi i64 [ %12, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzReadCurrentFile(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %255, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %255, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %255, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %255, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1
  %16 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1, i32 3
  store ptr %1, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1, i32 4
  store i32 %2, ptr %17, align 8, !tbaa !103
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 11
  %20 = load i64, ptr %19, align 8, !tbaa !51
  %21 = icmp ult i64 %20, %18
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = trunc i64 %20 to i32
  store i32 %27, ptr %17, align 8, !tbaa !103
  br label %28

28:                                               ; preds = %26, %22, %14
  %29 = phi i32 [ %27, %26 ], [ %2, %22 ], [ %2, %14 ]
  %30 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !97
  %34 = zext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = icmp ult i64 %35, %18
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 16
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = trunc i64 %31 to i32
  %43 = add i32 %33, %42
  store i32 %43, ptr %17, align 8, !tbaa !103
  br label %44

44:                                               ; preds = %41, %37, %28
  %45 = phi i32 [ %43, %41 ], [ %29, %37 ], [ %29, %28 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %255, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12
  %49 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 13
  %50 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 2
  %51 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 15
  %52 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12, i32 0, i32 7
  %54 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 14
  %55 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16
  %56 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 17
  %57 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16, i64 2
  %58 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 16, i64 1
  %59 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 14
  %60 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 16
  %61 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1, i32 5
  %62 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 1, i32 6
  %63 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 7
  %64 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 8
  br label %65

65:                                               ; preds = %47, %250
  %66 = phi i32 [ 0, %47 ], [ %251, %250 ]
  %67 = load i32, ptr %32, align 8, !tbaa !97
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %65
  %70 = load i64, ptr %30, align 8, !tbaa !104
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %139, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @llvm.umin.i64(i64 %70, i64 16384)
  %74 = trunc i64 %73 to i32
  %75 = load ptr, ptr %49, align 8, !tbaa !93
  %76 = load i64, ptr %50, align 8, !tbaa !98
  %77 = load i64, ptr %51, align 8, !tbaa !94
  %78 = add i64 %77, %76
  %79 = tail call i64 @call_zseek64(ptr noundef nonnull %48, ptr noundef %75, i64 noundef %78, i32 noundef 0) #14
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %255

81:                                               ; preds = %72
  %82 = load ptr, ptr %52, align 8, !tbaa !105
  %83 = load ptr, ptr %53, align 8, !tbaa !106
  %84 = load ptr, ptr %49, align 8, !tbaa !93
  %85 = load ptr, ptr %7, align 8, !tbaa !47
  %86 = tail call i64 %82(ptr noundef %83, ptr noundef %84, ptr noundef %85, i64 noundef %73) #14
  %87 = icmp eq i64 %86, %73
  br i1 %87, label %88, label %255

88:                                               ; preds = %81
  %89 = load i32, ptr %54, align 8, !tbaa !39
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %133, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %131, %91 ], [ 0, %88 ]
  %93 = load ptr, ptr %56, align 8, !tbaa !99
  %94 = load i64, ptr %57, align 8, !tbaa !28
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 65533
  %97 = or i32 %95, 2
  %98 = xor i32 %96, 3
  %99 = mul i32 %98, %97
  %100 = lshr i32 %99, 8
  %101 = load ptr, ptr %7, align 8, !tbaa !47
  %102 = getelementptr inbounds i8, ptr %101, i64 %92
  %103 = load i8, ptr %102, align 1, !tbaa !5
  %104 = trunc i32 %100 to i8
  %105 = xor i8 %103, %104
  store i8 %105, ptr %102, align 1, !tbaa !5
  %106 = load i64, ptr %55, align 8, !tbaa !28
  %107 = trunc i64 %106 to i8
  %108 = xor i8 %105, %107
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i32, ptr %93, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !41
  %112 = zext i32 %111 to i64
  %113 = lshr i64 %106, 8
  %114 = xor i64 %113, %112
  store i64 %114, ptr %55, align 8, !tbaa !28
  %115 = and i64 %114, 255
  %116 = load i64, ptr %58, align 8, !tbaa !28
  %117 = add i64 %115, %116
  %118 = mul i64 %117, 134775813
  %119 = add i64 %118, 1
  store i64 %119, ptr %58, align 8, !tbaa !28
  %120 = lshr i64 %119, 24
  %121 = load i64, ptr %57, align 8, !tbaa !28
  %122 = xor i64 %120, %121
  %123 = and i64 %122, 255
  %124 = getelementptr inbounds i32, ptr %93, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !41
  %126 = zext i32 %125 to i64
  %127 = lshr i64 %121, 8
  %128 = xor i64 %127, %126
  store i64 %128, ptr %57, align 8, !tbaa !28
  %129 = load ptr, ptr %7, align 8, !tbaa !47
  %130 = getelementptr inbounds i8, ptr %129, i64 %92
  store i8 %105, ptr %130, align 1, !tbaa !5
  %131 = add nuw nsw i64 %92, 1
  %132 = icmp eq i64 %131, %73
  br i1 %132, label %133, label %91, !llvm.loop !107

133:                                              ; preds = %91, %88
  %134 = load i64, ptr %50, align 8, !tbaa !98
  %135 = add i64 %134, %73
  store i64 %135, ptr %50, align 8, !tbaa !98
  %136 = load i64, ptr %30, align 8, !tbaa !104
  %137 = sub i64 %136, %73
  store i64 %137, ptr %30, align 8, !tbaa !104
  %138 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %138, ptr %15, align 8, !tbaa !96
  store i32 %74, ptr %32, align 8, !tbaa !97
  br label %139

139:                                              ; preds = %133, %69, %65
  %140 = phi i32 [ %74, %133 ], [ 0, %69 ], [ %67, %65 ]
  %141 = load i64, ptr %59, align 8, !tbaa !92
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, ptr %60, align 8, !tbaa !52
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %224, label %146

146:                                              ; preds = %143, %139
  %147 = icmp eq i32 %140, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load i64, ptr %30, align 8, !tbaa !104
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %255, label %151

151:                                              ; preds = %148, %146
  %152 = load i32, ptr %17, align 8, !tbaa !103
  %153 = tail call i32 @llvm.umin.i32(i32 %152, i32 %140)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %204, label %155

155:                                              ; preds = %151
  %156 = zext i32 %153 to i64
  %157 = and i64 %156, 3
  %158 = icmp ult i32 %153, 4
  br i1 %158, label %190, label %159

159:                                              ; preds = %155
  %160 = and i64 %156, 4294967292
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 0, %159 ], [ %187, %161 ]
  %163 = phi i64 [ 0, %159 ], [ %188, %161 ]
  %164 = load ptr, ptr %15, align 8, !tbaa !96
  %165 = getelementptr inbounds i8, ptr %164, i64 %162
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = load ptr, ptr %16, align 8, !tbaa !102
  %168 = getelementptr inbounds i8, ptr %167, i64 %162
  store i8 %166, ptr %168, align 1, !tbaa !5
  %169 = or disjoint i64 %162, 1
  %170 = load ptr, ptr %15, align 8, !tbaa !96
  %171 = getelementptr inbounds i8, ptr %170, i64 %169
  %172 = load i8, ptr %171, align 1, !tbaa !5
  %173 = load ptr, ptr %16, align 8, !tbaa !102
  %174 = getelementptr inbounds i8, ptr %173, i64 %169
  store i8 %172, ptr %174, align 1, !tbaa !5
  %175 = or disjoint i64 %162, 2
  %176 = load ptr, ptr %15, align 8, !tbaa !96
  %177 = getelementptr inbounds i8, ptr %176, i64 %175
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = load ptr, ptr %16, align 8, !tbaa !102
  %180 = getelementptr inbounds i8, ptr %179, i64 %175
  store i8 %178, ptr %180, align 1, !tbaa !5
  %181 = or disjoint i64 %162, 3
  %182 = load ptr, ptr %15, align 8, !tbaa !96
  %183 = getelementptr inbounds i8, ptr %182, i64 %181
  %184 = load i8, ptr %183, align 1, !tbaa !5
  %185 = load ptr, ptr %16, align 8, !tbaa !102
  %186 = getelementptr inbounds i8, ptr %185, i64 %181
  store i8 %184, ptr %186, align 1, !tbaa !5
  %187 = add nuw nsw i64 %162, 4
  %188 = add i64 %163, 4
  %189 = icmp eq i64 %188, %160
  br i1 %189, label %190, label %161, !llvm.loop !108

190:                                              ; preds = %161, %155
  %191 = phi i64 [ 0, %155 ], [ %187, %161 ]
  %192 = icmp eq i64 %157, 0
  br i1 %192, label %204, label %193

193:                                              ; preds = %190, %193
  %194 = phi i64 [ %201, %193 ], [ %191, %190 ]
  %195 = phi i64 [ %202, %193 ], [ 0, %190 ]
  %196 = load ptr, ptr %15, align 8, !tbaa !96
  %197 = getelementptr inbounds i8, ptr %196, i64 %194
  %198 = load i8, ptr %197, align 1, !tbaa !5
  %199 = load ptr, ptr %16, align 8, !tbaa !102
  %200 = getelementptr inbounds i8, ptr %199, i64 %194
  store i8 %198, ptr %200, align 1, !tbaa !5
  %201 = add nuw nsw i64 %194, 1
  %202 = add i64 %195, 1
  %203 = icmp eq i64 %202, %157
  br i1 %203, label %204, label %193, !llvm.loop !109

204:                                              ; preds = %190, %193, %151
  %205 = phi i64 [ 0, %151 ], [ %156, %193 ], [ %156, %190 ]
  %206 = load i64, ptr %63, align 8, !tbaa !111
  %207 = add i64 %206, %205
  store i64 %207, ptr %63, align 8, !tbaa !111
  %208 = load i64, ptr %64, align 8, !tbaa !53
  %209 = load ptr, ptr %16, align 8, !tbaa !102
  %210 = tail call i64 @crc32(i64 noundef %208, ptr noundef %209, i32 noundef %153) #14
  store i64 %210, ptr %64, align 8, !tbaa !53
  %211 = load i64, ptr %19, align 8, !tbaa !51
  %212 = sub i64 %211, %205
  store i64 %212, ptr %19, align 8, !tbaa !51
  %213 = load i32, ptr %32, align 8, !tbaa !97
  %214 = sub i32 %213, %153
  store i32 %214, ptr %32, align 8, !tbaa !97
  %215 = load i32, ptr %17, align 8, !tbaa !103
  %216 = sub i32 %215, %153
  store i32 %216, ptr %17, align 8, !tbaa !103
  %217 = load ptr, ptr %16, align 8, !tbaa !102
  %218 = getelementptr inbounds i8, ptr %217, i64 %205
  store ptr %218, ptr %16, align 8, !tbaa !102
  %219 = load ptr, ptr %15, align 8, !tbaa !96
  %220 = getelementptr inbounds i8, ptr %219, i64 %205
  store ptr %220, ptr %15, align 8, !tbaa !96
  %221 = load i64, ptr %61, align 8, !tbaa !95
  %222 = add i64 %221, %205
  store i64 %222, ptr %61, align 8, !tbaa !95
  %223 = add i32 %153, %66
  br label %250

224:                                              ; preds = %143
  %225 = icmp eq i64 %141, 12
  br i1 %225, label %250, label %226

226:                                              ; preds = %224
  %227 = load i64, ptr %61, align 8, !tbaa !95
  %228 = load ptr, ptr %16, align 8, !tbaa !102
  %229 = tail call i32 @inflate(ptr noundef nonnull %15, i32 noundef 2) #14
  %230 = icmp sgt i32 %229, -1
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load ptr, ptr %62, align 8, !tbaa !112
  %233 = icmp eq ptr %232, null
  %234 = select i1 %233, i32 %229, i32 -3
  br label %235

235:                                              ; preds = %231, %226
  %236 = phi i32 [ %229, %226 ], [ %234, %231 ]
  %237 = load i64, ptr %61, align 8, !tbaa !95
  %238 = icmp ult i64 %237, %227
  %239 = add i64 %237, 4294967296
  %240 = select i1 %238, i64 %239, i64 %237
  %241 = sub i64 %240, %227
  %242 = load i64, ptr %63, align 8, !tbaa !111
  %243 = add i64 %241, %242
  store i64 %243, ptr %63, align 8, !tbaa !111
  %244 = load i64, ptr %64, align 8, !tbaa !53
  %245 = trunc i64 %241 to i32
  %246 = tail call i64 @crc32(i64 noundef %244, ptr noundef %228, i32 noundef %245) #14
  store i64 %246, ptr %64, align 8, !tbaa !53
  %247 = load i64, ptr %19, align 8, !tbaa !51
  %248 = sub i64 %247, %241
  store i64 %248, ptr %19, align 8, !tbaa !51
  %249 = add i32 %66, %245
  switch i32 %236, label %254 [
    i32 1, label %255
    i32 0, label %250
  ]

250:                                              ; preds = %235, %204, %224
  %251 = phi i32 [ %66, %224 ], [ %223, %204 ], [ %249, %235 ]
  %252 = load i32, ptr %17, align 8, !tbaa !103
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %65, !llvm.loop !113

254:                                              ; preds = %235
  br label %255

255:                                              ; preds = %81, %72, %148, %250, %235, %254, %44, %12, %9, %5, %3
  %256 = phi i32 [ -102, %3 ], [ -102, %5 ], [ -100, %9 ], [ 0, %12 ], [ 0, %44 ], [ %249, %235 ], [ -1, %81 ], [ -1, %72 ], [ %66, %148 ], [ %251, %250 ], [ %236, %254 ]
  ret i32 %256
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @unztell(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 1, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !95
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i64 [ %9, %7 ], [ -102, %1 ], [ -102, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @unztell64(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !111
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i64 [ %9, %7 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @unzeof(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %5, i64 0, i32 11
  %9 = load i64, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ -102, %1 ], [ -102, %3 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGetLocalExtrafield(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !90
  %15 = sub i64 %12, %14
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = trunc i64 %15 to i32
  br label %44

19:                                               ; preds = %9
  %20 = zext i32 %2 to i64
  %21 = icmp ult i64 %15, %20
  %22 = trunc i64 %15 to i32
  %23 = select i1 %21, i32 %22, i32 %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !88
  %31 = add i64 %30, %14
  %32 = tail call i64 @call_zseek64(ptr noundef nonnull %26, ptr noundef %28, i64 noundef %31, i32 noundef 0) #14
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  %37 = getelementptr inbounds %struct.file_in_zip64_read_info_s, ptr %7, i64 0, i32 12, i32 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  %39 = load ptr, ptr %27, align 8, !tbaa !93
  %40 = zext i32 %23 to i64
  %41 = tail call i64 %36(ptr noundef %38, ptr noundef %39, ptr noundef nonnull %1, i64 noundef %40) #14
  %42 = icmp eq i64 %41, %40
  %43 = select i1 %42, i32 %23, i32 -1
  br label %44

44:                                               ; preds = %34, %25, %19, %5, %3, %17
  %45 = phi i32 [ %18, %17 ], [ -102, %3 ], [ -102, %5 ], [ 0, %19 ], [ -1, %25 ], [ %43, %34 ]
  ret i32 %45
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @unzGetGlobalComment(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !30
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %2)
  %9 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !37
  %13 = add i64 %12, 22
  %14 = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %10, i64 noundef %13, i32 noundef 0) #14
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %5
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  store i8 0, ptr %1, align 1, !tbaa !5
  %19 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load ptr, ptr %9, align 8, !tbaa !21
  %24 = tail call i64 %20(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %1, i64 noundef %8) #14
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %28, label %35

26:                                               ; preds = %16
  %27 = icmp eq ptr %1, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18, %26
  %29 = load i64, ptr %6, align 8, !tbaa !30
  %30 = icmp ult i64 %29, %2
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 %29
  store i8 0, ptr %32, align 1, !tbaa !5
  br label %33

33:                                               ; preds = %31, %28, %26
  %34 = trunc i64 %8 to i32
  br label %35

35:                                               ; preds = %18, %5, %3, %33
  %36 = phi i32 [ %34, %33 ], [ -102, %3 ], [ -1, %5 ], [ -1, %18 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @unzGetOffset64(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !29
  switch i64 %9, label %10 [
    i64 0, label %14
    i64 65535, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %17, label %14

14:                                               ; preds = %7, %7, %10
  %15 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !42
  br label %17

17:                                               ; preds = %10, %3, %1, %14
  %18 = phi i64 [ %16, %14 ], [ 0, %1 ], [ 0, %3 ], [ 0, %10 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @unzGetOffset(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !29
  switch i64 %9, label %10 [
    i64 0, label %14
    i64 65535, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !43
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %7, %7
  %15 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !42
  br label %17

17:                                               ; preds = %14, %10, %3, %1
  %18 = phi i64 [ 0, %1 ], [ %16, %14 ], [ 0, %3 ], [ 0, %10 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzSetOffset64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  store i64 %1, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  store i64 %7, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %10 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %11 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  store i64 %13, ptr %14, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %2, %4
  %16 = phi i32 [ %11, %4 ], [ -102, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unzSetOffset(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 6
  store i64 %1, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 5
  store i64 %7, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 11
  %10 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 12
  %11 = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0), !range !44
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds %struct.unz64_s, ptr %0, i64 0, i32 7
  store i64 %13, ptr %14, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %2, %4
  %16 = phi i32 [ %11, %4 ], [ -102, %2 ]
  ret i32 %16
}

declare void @fill_fopen64_filefunc(ptr noundef) local_unnamed_addr #4

declare ptr @call_zopen64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @call_ztell64(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9, i64 64, i64 8, !9, i64 72, i64 8, !9, i64 80, i64 8, !9}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !15, i64 88}
!12 = !{!"", !13, i64 0, !15, i64 88, !10, i64 96, !16, i64 104, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !18, i64 176, !20, i64 312, !10, i64 320, !15, i64 328, !15, i64 332, !6, i64 336, !10, i64 360}
!13 = !{!"zlib_filefunc64_32_def_s", !14, i64 0, !10, i64 64, !10, i64 72, !10, i64 80}
!14 = !{!"zlib_filefunc64_def_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"int", !6, i64 0}
!16 = !{!"unz_global_info64_s", !17, i64 0, !17, i64 8}
!17 = !{!"long", !6, i64 0}
!18 = !{!"unz_file_info64_s", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !19, i64 112}
!19 = !{!"tm_unz_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!20 = !{!"unz_file_info64_internal_s", !17, i64 0}
!21 = !{!12, !10, i64 96}
!22 = !{!13, !10, i64 8}
!23 = !{!13, !10, i64 56}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!13, !10, i64 48}
!27 = !{!12, !15, i64 332}
!28 = !{!17, !17, i64 0}
!29 = !{!12, !17, i64 104}
!30 = !{!12, !17, i64 112}
!31 = distinct !{!31, !25}
!32 = !{!12, !17, i64 160}
!33 = !{!12, !17, i64 168}
!34 = !{!12, !10, i64 40}
!35 = !{!12, !10, i64 56}
!36 = !{!12, !17, i64 120}
!37 = !{!12, !17, i64 152}
!38 = !{!12, !10, i64 320}
!39 = !{!12, !15, i64 328}
!40 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9, i64 64, i64 8, !9, i64 72, i64 8, !9, i64 80, i64 8, !9, i64 88, i64 4, !41, i64 96, i64 8, !9, i64 104, i64 8, !28, i64 112, i64 8, !28, i64 120, i64 8, !28, i64 128, i64 8, !28, i64 136, i64 8, !28, i64 144, i64 8, !28, i64 152, i64 8, !28, i64 160, i64 8, !28, i64 168, i64 8, !28, i64 176, i64 8, !28, i64 184, i64 8, !28, i64 192, i64 8, !28, i64 200, i64 8, !28, i64 208, i64 8, !28, i64 216, i64 8, !28, i64 224, i64 8, !28, i64 232, i64 8, !28, i64 240, i64 8, !28, i64 248, i64 8, !28, i64 256, i64 8, !28, i64 264, i64 8, !28, i64 272, i64 8, !28, i64 280, i64 8, !28, i64 288, i64 4, !41, i64 292, i64 4, !41, i64 296, i64 4, !41, i64 300, i64 4, !41, i64 304, i64 4, !41, i64 308, i64 4, !41, i64 312, i64 8, !28, i64 320, i64 8, !9, i64 328, i64 4, !41, i64 332, i64 4, !41, i64 336, i64 24, !5, i64 360, i64 8, !9}
!41 = !{!15, !15, i64 0}
!42 = !{!12, !17, i64 136}
!43 = !{!12, !17, i64 128}
!44 = !{i32 -103, i32 1}
!45 = !{!12, !17, i64 144}
!46 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9}
!47 = !{!48, !10, i64 0}
!48 = !{!"", !10, i64 0, !49, i64 8, !17, i64 120, !17, i64 128, !17, i64 136, !15, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !13, i64 200, !10, i64 288, !17, i64 296, !17, i64 304, !15, i64 312}
!49 = !{!"z_stream_s", !10, i64 0, !15, i64 8, !17, i64 16, !10, i64 24, !15, i64 32, !17, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !15, i64 88, !17, i64 96, !17, i64 104}
!50 = !{!48, !17, i64 128}
!51 = !{!48, !17, i64 192}
!52 = !{!48, !15, i64 312}
!53 = !{!48, !17, i64 168}
!54 = !{!48, !17, i64 176}
!55 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!56 = !{!12, !10, i64 8}
!57 = distinct !{!57, !25}
!58 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 8, !28, i64 96, i64 8, !28, i64 104, i64 8, !28, i64 112, i64 4, !41, i64 116, i64 4, !41, i64 120, i64 4, !41, i64 124, i64 4, !41, i64 128, i64 4, !41, i64 132, i64 4, !41}
!59 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 8, !28, i64 96, i64 8, !28, i64 104, i64 4, !41, i64 108, i64 4, !41, i64 112, i64 4, !41, i64 116, i64 4, !41, i64 120, i64 4, !41, i64 124, i64 4, !41}
!60 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 8, !28, i64 96, i64 4, !41, i64 100, i64 4, !41, i64 104, i64 4, !41, i64 108, i64 4, !41, i64 112, i64 4, !41, i64 116, i64 4, !41}
!61 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 4, !41, i64 92, i64 4, !41, i64 96, i64 4, !41, i64 100, i64 4, !41, i64 104, i64 4, !41, i64 108, i64 4, !41}
!62 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 4, !41, i64 84, i64 4, !41, i64 88, i64 4, !41, i64 92, i64 4, !41, i64 96, i64 4, !41, i64 100, i64 4, !41}
!63 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 4, !41, i64 76, i64 4, !41, i64 80, i64 4, !41, i64 84, i64 4, !41, i64 88, i64 4, !41, i64 92, i64 4, !41}
!64 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 4, !41, i64 68, i64 4, !41, i64 72, i64 4, !41, i64 76, i64 4, !41, i64 80, i64 4, !41, i64 84, i64 4, !41}
!65 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 4, !41, i64 60, i64 4, !41, i64 64, i64 4, !41, i64 68, i64 4, !41, i64 72, i64 4, !41, i64 76, i64 4, !41}
!66 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 4, !41, i64 52, i64 4, !41, i64 56, i64 4, !41, i64 60, i64 4, !41, i64 64, i64 4, !41, i64 68, i64 4, !41}
!67 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 4, !41, i64 44, i64 4, !41, i64 48, i64 4, !41, i64 52, i64 4, !41, i64 56, i64 4, !41, i64 60, i64 4, !41}
!68 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 4, !41, i64 36, i64 4, !41, i64 40, i64 4, !41, i64 44, i64 4, !41, i64 48, i64 4, !41, i64 52, i64 4, !41}
!69 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 4, !41, i64 36, i64 4, !41, i64 40, i64 4, !41, i64 44, i64 4, !41}
!70 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 4, !41, i64 36, i64 4, !41}
!71 = !{i64 0, i64 8, !28, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 4, !41}
!72 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 4, !41}
!73 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41}
!74 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!75 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41}
!76 = !{i64 0, i64 4, !41, i64 4, i64 4, !41}
!77 = !{i64 0, i64 4, !41}
!78 = !{!12, !17, i64 240}
!79 = !{!12, !17, i64 248}
!80 = !{!12, !17, i64 256}
!81 = !{i64 0, i64 8, !28}
!82 = distinct !{!82, !25}
!83 = !{!12, !17, i64 312}
!84 = !{!12, !17, i64 200}
!85 = !{!12, !17, i64 216}
!86 = !{!12, !17, i64 224}
!87 = !{!12, !17, i64 232}
!88 = !{!48, !17, i64 136}
!89 = !{!48, !15, i64 144}
!90 = !{!48, !17, i64 152}
!91 = !{!12, !17, i64 192}
!92 = !{!48, !17, i64 296}
!93 = !{!48, !10, i64 288}
!94 = !{!48, !17, i64 304}
!95 = !{!48, !17, i64 48}
!96 = !{!48, !10, i64 8}
!97 = !{!48, !15, i64 16}
!98 = !{!48, !17, i64 120}
!99 = !{!12, !10, i64 360}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = !{!48, !10, i64 32}
!103 = !{!48, !15, i64 40}
!104 = !{!48, !17, i64 184}
!105 = !{!48, !10, i64 208}
!106 = !{!48, !10, i64 256}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!48, !17, i64 160}
!112 = !{!48, !10, i64 56}
!113 = distinct !{!113, !25}
