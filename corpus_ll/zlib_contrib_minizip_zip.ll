; ModuleID = 'corpus_src/zlib/contrib/minizip/zip.c'
source_filename = "corpus_src/zlib/contrib/minizip/zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.zip64_internal = type { %struct.zlib_filefunc64_32_def_s, ptr, %struct.linkedlist_data_s, i32, %struct.curfile64_info, i64, i64, i64, ptr, %struct.set_s, %struct.block_t }
%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linkedlist_data_s = type { ptr, ptr }
%struct.curfile64_info = type { %struct.z_stream_s, i32, i32, i64, ptr, i64, i64, i64, i64, i32, i32, [65536 x i8], i64, i64, i32, i32, i64, i64, i64, [3 x i64], ptr, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.set_s = type { ptr, ptr, ptr, i16, i64, %struct.set_rand_t, [1 x %struct.__jmp_buf_tag] }
%struct.set_rand_t = type { i64, i64 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.block_t = type { ptr, i64, ptr }
%struct.set_node_s = type { ptr, i16, i16, ptr }
%struct.linkedlist_datablock_internal_s = type { ptr, i64, i64, i64, [4080 x i8] }
%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }

@zip_copyright = dso_local local_unnamed_addr constant [93 x i8] c" zip 1.01 Copyright 1998-2004 Gilles Vollant - https://www.winimage.com/zLibDll/minizip.html\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"1.3.2.1-motley\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"set_ok(set) && \22improper use\22\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"corpus_src/zlib/contrib/minizip/skipset.h\00", align 1
@__PRETTY_FUNCTION__.set_insert = private unnamed_addr constant [35 x i8] c"int set_insert(set_t *, set_key_t)\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"level < 32767 && \22Overhead, without any fuss, the stars were going out.\22\00", align 1
@__PRETTY_FUNCTION__.set_found = private unnamed_addr constant [34 x i8] c"int set_found(set_t *, set_key_t)\00", align 1
@crypthead.calls = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @zipAlreadyThere(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %580, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %580, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 6
  %11 = call i32 @_setjmp(ptr noundef nonnull %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  call fastcc void @set_end(ptr noundef nonnull %9)
  br label %580

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.set_node_s, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %15, align 8, !tbaa !24
  %23 = icmp eq i8 %22, -119
  br i1 %23, label %65, label %24

24:                                               ; preds = %14, %17, %21
  %25 = call dereferenceable_or_null(24) ptr @malloc(i64 24)
  %26 = icmp eq ptr %25, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 1
  %30 = getelementptr inbounds %struct.set_node_s, ptr %25, i64 0, i32 1
  store i16 0, ptr %30, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.set_node_s, ptr %25, i64 0, i32 2
  store i16 0, ptr %31, align 2, !tbaa !26
  %32 = getelementptr inbounds %struct.set_node_s, ptr %25, i64 0, i32 3
  store ptr null, ptr %32, align 8, !tbaa !22
  store ptr %25, ptr %29, align 8, !tbaa !27
  %33 = call dereferenceable_or_null(24) ptr @malloc(i64 24)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.set_node_s, ptr %33, i64 0, i32 1
  store i16 0, ptr %37, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.set_node_s, ptr %33, i64 0, i32 2
  store i16 0, ptr %38, align 2, !tbaa !26
  %39 = getelementptr inbounds %struct.set_node_s, ptr %33, i64 0, i32 3
  store ptr null, ptr %39, align 8, !tbaa !22
  store ptr %33, ptr %9, align 8, !tbaa !21
  %40 = call dereferenceable_or_null(8) ptr @malloc(i64 8)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

43:                                               ; preds = %36
  store ptr %40, ptr %39, align 8, !tbaa !22
  store i16 1, ptr %37, align 8, !tbaa !25
  store ptr %33, ptr %40, align 8, !tbaa !28
  store i16 1, ptr %38, align 2, !tbaa !26
  store i8 -119, ptr %33, align 8, !tbaa !24
  %44 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 3
  store i16 0, ptr %44, align 8, !tbaa !29
  %45 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 5
  %46 = ptrtoint ptr %9 to i64
  %47 = shl i64 %46, 32
  %48 = call i64 @time(ptr noundef null) #17
  %49 = shl i64 %48, 12
  %50 = xor i64 %49, %47
  %51 = call i64 @clock() #17
  %52 = xor i64 %50, %51
  %53 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 5, i32 1
  store i64 1, ptr %53, align 8, !tbaa !30
  %54 = mul i64 %52, 6364136223846793005
  %55 = add i64 %54, 6364136223846793006
  store i64 %55, ptr %45, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 4
  store i64 1, ptr %56, align 8, !tbaa !32
  %57 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %5, align 8, !tbaa !33
  %59 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %58, i64 0, i32 4
  store ptr %60, ptr %57, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %58, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !36
  %63 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10
  br label %70

65:                                               ; preds = %21
  %66 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10
  %69 = icmp eq ptr %67, null
  br i1 %69, label %335, label %70

70:                                               ; preds = %43, %65
  %71 = phi ptr [ %64, %43 ], [ %68, %65 ]
  %72 = phi ptr [ %58, %43 ], [ %67, %65 ]
  %73 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10, i32 2
  %74 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 10, i32 1
  %75 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 4
  %76 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 5
  %77 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 5, i32 1
  %78 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 3
  %79 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 1
  %80 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9, i32 2
  br label %81

81:                                               ; preds = %70, %569
  %82 = phi ptr [ %72, %70 ], [ %570, %569 ]
  %83 = load ptr, ptr %71, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %323, %81
  %85 = phi ptr [ %83, %81 ], [ %319, %323 ]
  %86 = phi ptr [ %82, %81 ], [ %324, %323 ]
  %87 = phi ptr [ null, %81 ], [ %210, %323 ]
  %88 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %86, i64 0, i32 4
  %89 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %86, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !36
  %91 = getelementptr inbounds i8, ptr %88, i64 %90
  %92 = icmp ult ptr %85, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %84, %97
  %94 = phi ptr [ %95, %97 ], [ %86, %84 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  %96 = icmp eq ptr %95, null
  br i1 %96, label %335, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %94, i64 0, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !36
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %93, label %101, !llvm.loop !40

101:                                              ; preds = %97, %84
  %102 = call fastcc i64 @block_get2(ptr noundef nonnull %71)
  %103 = icmp eq i64 %102, 19280
  br i1 %103, label %104, label %329

104:                                              ; preds = %101
  %105 = call fastcc i64 @block_get2(ptr noundef nonnull %71)
  %106 = icmp eq i64 %105, 513
  br i1 %106, label %107, label %329

107:                                              ; preds = %104
  %108 = load i64, ptr %74, align 8, !tbaa !38
  %109 = icmp ult i64 %108, 24
  %110 = load ptr, ptr %71, align 8, !tbaa !35
  br i1 %109, label %111, label %149

111:                                              ; preds = %107
  %112 = load ptr, ptr %73, align 8, !tbaa !34
  br label %113

113:                                              ; preds = %140, %111
  %114 = phi ptr [ %112, %111 ], [ %141, %140 ]
  %115 = phi ptr [ %110, %111 ], [ %145, %140 ]
  %116 = phi i64 [ 24, %111 ], [ %147, %140 ]
  %117 = phi i64 [ %108, %111 ], [ %144, %140 ]
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  br label %119

119:                                              ; preds = %135, %113
  %120 = phi ptr [ %114, %113 ], [ %133, %135 ]
  %121 = phi ptr [ %118, %113 ], [ %136, %135 ]
  %122 = icmp eq ptr %120, null
  br i1 %122, label %155, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %120, i64 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !36
  %126 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %120, i64 0, i32 4
  %127 = ptrtoint ptr %121 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %128, %127
  %130 = add i64 %125, %129
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load ptr, ptr %120, align 8, !tbaa !39
  %134 = icmp eq ptr %133, null
  br i1 %134, label %155, label %135

135:                                              ; preds = %132
  store ptr %133, ptr %73, align 8, !tbaa !34
  %136 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %133, i64 0, i32 4
  %137 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %133, i64 0, i32 2
  %138 = load i64, ptr %137, align 8, !tbaa !36
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %119, label %140, !llvm.loop !42

140:                                              ; preds = %135, %123
  %141 = phi ptr [ %133, %135 ], [ %120, %123 ]
  %142 = phi ptr [ %136, %135 ], [ %121, %123 ]
  %143 = phi i64 [ %138, %135 ], [ %130, %123 ]
  %144 = add i64 %143, -1
  %145 = getelementptr inbounds i8, ptr %142, i64 1
  %146 = xor i64 %117, -1
  %147 = add i64 %116, %146
  %148 = icmp ugt i64 %147, %144
  br i1 %148, label %113, label %149, !llvm.loop !43

149:                                              ; preds = %140, %107
  %150 = phi ptr [ %110, %107 ], [ %145, %140 ]
  %151 = phi i64 [ 24, %107 ], [ %147, %140 ]
  %152 = phi i64 [ %108, %107 ], [ %144, %140 ]
  %153 = getelementptr inbounds i8, ptr %150, i64 %151
  store ptr %153, ptr %71, align 8, !tbaa !35
  %154 = sub i64 %152, %151
  br label %156

155:                                              ; preds = %132, %119
  store ptr %121, ptr %71, align 8, !tbaa !35
  br label %156

156:                                              ; preds = %155, %149
  %157 = phi i64 [ %154, %149 ], [ 0, %155 ]
  store i64 %157, ptr %74, align 8, !tbaa !38
  %158 = call fastcc i64 @block_get2(ptr noundef nonnull %71)
  %159 = call fastcc i64 @block_get2(ptr noundef nonnull %71)
  %160 = call fastcc i64 @block_get2(ptr noundef nonnull %71)
  %161 = load i64, ptr %74, align 8, !tbaa !38
  %162 = icmp ult i64 %161, 12
  %163 = load ptr, ptr %71, align 8, !tbaa !35
  br i1 %162, label %164, label %202

164:                                              ; preds = %156
  %165 = load ptr, ptr %73, align 8, !tbaa !34
  br label %166

166:                                              ; preds = %193, %164
  %167 = phi ptr [ %165, %164 ], [ %194, %193 ]
  %168 = phi ptr [ %163, %164 ], [ %198, %193 ]
  %169 = phi i64 [ 12, %164 ], [ %200, %193 ]
  %170 = phi i64 [ %161, %164 ], [ %197, %193 ]
  %171 = getelementptr inbounds i8, ptr %168, i64 %170
  br label %172

172:                                              ; preds = %188, %166
  %173 = phi ptr [ %167, %166 ], [ %186, %188 ]
  %174 = phi ptr [ %171, %166 ], [ %189, %188 ]
  %175 = icmp eq ptr %173, null
  br i1 %175, label %326, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %173, i64 0, i32 2
  %178 = load i64, ptr %177, align 8, !tbaa !36
  %179 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %173, i64 0, i32 4
  %180 = ptrtoint ptr %174 to i64
  %181 = ptrtoint ptr %179 to i64
  %182 = sub i64 %181, %180
  %183 = add i64 %178, %182
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %176
  %186 = load ptr, ptr %173, align 8, !tbaa !39
  %187 = icmp eq ptr %186, null
  br i1 %187, label %326, label %188

188:                                              ; preds = %185
  store ptr %186, ptr %73, align 8, !tbaa !34
  %189 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %186, i64 0, i32 4
  %190 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %186, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !36
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %172, label %193, !llvm.loop !42

193:                                              ; preds = %188, %176
  %194 = phi ptr [ %186, %188 ], [ %173, %176 ]
  %195 = phi ptr [ %189, %188 ], [ %174, %176 ]
  %196 = phi i64 [ %191, %188 ], [ %183, %176 ]
  %197 = add i64 %196, -1
  %198 = getelementptr inbounds i8, ptr %195, i64 1
  %199 = xor i64 %170, -1
  %200 = add i64 %169, %199
  %201 = icmp ugt i64 %200, %197
  br i1 %201, label %166, label %202, !llvm.loop !43

202:                                              ; preds = %193, %156
  %203 = phi ptr [ %163, %156 ], [ %198, %193 ]
  %204 = phi i64 [ 12, %156 ], [ %200, %193 ]
  %205 = phi i64 [ %161, %156 ], [ %197, %193 ]
  %206 = getelementptr inbounds i8, ptr %203, i64 %204
  store ptr %206, ptr %71, align 8, !tbaa !35
  %207 = sub i64 %205, %204
  store i64 %207, ptr %74, align 8, !tbaa !38
  %208 = add i64 %158, 1
  %209 = and i64 %208, 4294967295
  %210 = call ptr @malloc(i64 %209)
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

213:                                              ; preds = %202
  %214 = and i64 %158, 4294967295
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %267, label %216

216:                                              ; preds = %213, %263
  %217 = phi ptr [ %265, %263 ], [ %210, %213 ]
  %218 = phi i64 [ %264, %263 ], [ %214, %213 ]
  %219 = load i64, ptr %74, align 8, !tbaa !38
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %254

221:                                              ; preds = %216
  %222 = load ptr, ptr %73, align 8, !tbaa !34
  br label %223

223:                                              ; preds = %239, %221
  %224 = phi ptr [ %222, %221 ], [ %237, %239 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %267, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %224, i64 0, i32 2
  %228 = load i64, ptr %227, align 8, !tbaa !36
  %229 = load ptr, ptr %71, align 8, !tbaa !35
  %230 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %224, i64 0, i32 4
  %231 = ptrtoint ptr %229 to i64
  %232 = ptrtoint ptr %230 to i64
  %233 = sub i64 %232, %231
  %234 = add i64 %233, %228
  store i64 %234, ptr %74, align 8, !tbaa !38
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %226
  %237 = load ptr, ptr %224, align 8, !tbaa !39
  %238 = icmp eq ptr %237, null
  br i1 %238, label %267, label %239

239:                                              ; preds = %236
  store ptr %237, ptr %73, align 8, !tbaa !34
  %240 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %237, i64 0, i32 4
  store ptr %240, ptr %71, align 8, !tbaa !35
  %241 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %237, i64 0, i32 2
  %242 = load i64, ptr %241, align 8, !tbaa !36
  store i64 %242, ptr %74, align 8, !tbaa !38
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %223, label %244, !llvm.loop !42

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %237, i64 0, i32 4
  br label %246

246:                                              ; preds = %226, %244
  %247 = phi ptr [ %245, %244 ], [ %229, %226 ]
  %248 = phi i64 [ %242, %244 ], [ %234, %226 ]
  %249 = add i64 %248, -1
  store i64 %249, ptr %74, align 8, !tbaa !38
  %250 = getelementptr inbounds i8, ptr %247, i64 1
  store ptr %250, ptr %71, align 8, !tbaa !35
  %251 = load i8, ptr %247, align 1, !tbaa !24
  %252 = getelementptr inbounds i8, ptr %217, i64 1
  store i8 %251, ptr %217, align 1, !tbaa !24
  %253 = add i64 %218, -1
  br label %263

254:                                              ; preds = %216
  %255 = call i64 @llvm.umin.i64(i64 %218, i64 %219)
  %256 = load ptr, ptr %71, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr align 1 %256, i64 %255, i1 false)
  %257 = load ptr, ptr %71, align 8, !tbaa !35
  %258 = getelementptr inbounds i8, ptr %257, i64 %255
  store ptr %258, ptr %71, align 8, !tbaa !35
  %259 = load i64, ptr %74, align 8, !tbaa !38
  %260 = sub i64 %259, %255
  store i64 %260, ptr %74, align 8, !tbaa !38
  %261 = getelementptr inbounds i8, ptr %217, i64 %255
  %262 = sub i64 %218, %255
  br label %263

263:                                              ; preds = %254, %246
  %264 = phi i64 [ %253, %246 ], [ %262, %254 ]
  %265 = phi ptr [ %252, %246 ], [ %261, %254 ]
  %266 = icmp eq i64 %264, 0
  br i1 %266, label %267, label %216, !llvm.loop !44

267:                                              ; preds = %263, %236, %223, %213
  %268 = phi i64 [ 0, %213 ], [ %218, %223 ], [ %218, %236 ], [ 0, %263 ]
  %269 = sub i64 %214, %268
  %270 = icmp ult i64 %269, %214
  br i1 %270, label %329, label %271

271:                                              ; preds = %267
  %272 = add i64 %160, %159
  %273 = and i64 %272, 4294967295
  %274 = load i64, ptr %74, align 8, !tbaa !38
  %275 = icmp ult i64 %274, %273
  %276 = load ptr, ptr %71, align 8, !tbaa !35
  br i1 %275, label %277, label %315

277:                                              ; preds = %271
  %278 = load ptr, ptr %73, align 8, !tbaa !34
  br label %279

279:                                              ; preds = %306, %277
  %280 = phi ptr [ %278, %277 ], [ %307, %306 ]
  %281 = phi ptr [ %276, %277 ], [ %311, %306 ]
  %282 = phi i64 [ %273, %277 ], [ %313, %306 ]
  %283 = phi i64 [ %274, %277 ], [ %310, %306 ]
  %284 = getelementptr inbounds i8, ptr %281, i64 %283
  br label %285

285:                                              ; preds = %301, %279
  %286 = phi ptr [ %280, %279 ], [ %299, %301 ]
  %287 = phi ptr [ %284, %279 ], [ %302, %301 ]
  %288 = icmp eq ptr %286, null
  br i1 %288, label %326, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %286, i64 0, i32 2
  %291 = load i64, ptr %290, align 8, !tbaa !36
  %292 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %286, i64 0, i32 4
  %293 = ptrtoint ptr %287 to i64
  %294 = ptrtoint ptr %292 to i64
  %295 = sub i64 %294, %293
  %296 = add i64 %291, %295
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %289
  %299 = load ptr, ptr %286, align 8, !tbaa !39
  %300 = icmp eq ptr %299, null
  br i1 %300, label %326, label %301

301:                                              ; preds = %298
  store ptr %299, ptr %73, align 8, !tbaa !34
  %302 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %299, i64 0, i32 4
  %303 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %299, i64 0, i32 2
  %304 = load i64, ptr %303, align 8, !tbaa !36
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %285, label %306, !llvm.loop !42

306:                                              ; preds = %301, %289
  %307 = phi ptr [ %299, %301 ], [ %286, %289 ]
  %308 = phi ptr [ %302, %301 ], [ %287, %289 ]
  %309 = phi i64 [ %304, %301 ], [ %296, %289 ]
  %310 = add i64 %309, -1
  %311 = getelementptr inbounds i8, ptr %308, i64 1
  %312 = xor i64 %283, -1
  %313 = add i64 %282, %312
  %314 = icmp ugt i64 %313, %310
  br i1 %314, label %279, label %315, !llvm.loop !43

315:                                              ; preds = %306, %271
  %316 = phi ptr [ %276, %271 ], [ %311, %306 ]
  %317 = phi i64 [ %273, %271 ], [ %313, %306 ]
  %318 = phi i64 [ %274, %271 ], [ %310, %306 ]
  %319 = getelementptr inbounds i8, ptr %316, i64 %317
  store ptr %319, ptr %71, align 8, !tbaa !35
  %320 = sub i64 %318, %317
  store i64 %320, ptr %74, align 8, !tbaa !38
  %321 = call ptr @memchr(ptr noundef nonnull %210, i32 noundef 0, i64 noundef %214) #18
  %322 = icmp eq ptr %321, null
  br i1 %322, label %331, label %323

323:                                              ; preds = %315
  call void @free(ptr noundef %210) #17
  %324 = load ptr, ptr %73, align 8, !tbaa !34
  %325 = icmp eq ptr %324, null
  br i1 %325, label %335, label %84

326:                                              ; preds = %185, %172, %298, %285
  %327 = phi ptr [ %287, %285 ], [ %287, %298 ], [ %174, %172 ], [ %174, %185 ]
  %328 = phi ptr [ %210, %285 ], [ %210, %298 ], [ %87, %172 ], [ %87, %185 ]
  store ptr %327, ptr %71, align 8, !tbaa !35
  store i64 0, ptr %74, align 8, !tbaa !38
  br label %329

329:                                              ; preds = %267, %104, %101, %326
  %330 = phi ptr [ %328, %326 ], [ %87, %101 ], [ %87, %104 ], [ %210, %267 ]
  call void @free(ptr noundef %330) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  br label %580

331:                                              ; preds = %315
  %332 = getelementptr inbounds i8, ptr %210, i64 %214
  store i8 0, ptr %332, align 1, !tbaa !24
  %333 = load ptr, ptr %9, align 8, !tbaa !21
  %334 = icmp eq ptr %333, null
  br i1 %334, label %346, label %339

335:                                              ; preds = %569, %323, %93, %65
  %336 = phi ptr [ %68, %65 ], [ %71, %93 ], [ %71, %323 ], [ %71, %569 ]
  %337 = load ptr, ptr %336, align 8, !tbaa !45
  %338 = icmp eq ptr %337, null
  br i1 %338, label %580, label %572

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.set_node_s, ptr %333, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !22
  %342 = icmp eq ptr %341, null
  br i1 %342, label %346, label %343

343:                                              ; preds = %339
  %344 = load i8, ptr %333, align 8, !tbaa !24
  %345 = icmp eq i8 %344, -119
  br i1 %345, label %347, label %346

346:                                              ; preds = %343, %339, %331
  call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 338, ptr noundef nonnull @__PRETTY_FUNCTION__.set_insert) #16
  unreachable

347:                                              ; preds = %343
  %348 = call fastcc i32 @set_found(ptr noundef nonnull %9, ptr noundef nonnull %210), !range !46
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %568

350:                                              ; preds = %347
  %351 = load i64, ptr %75, align 8, !tbaa !32
  br label %352

352:                                              ; preds = %380, %350
  %353 = phi i64 [ %383, %380 ], [ 0, %350 ]
  %354 = phi i32 [ %382, %380 ], [ 1, %350 ]
  %355 = phi i64 [ %374, %380 ], [ %351, %350 ]
  %356 = phi i32 [ %381, %380 ], [ 0, %350 ]
  %357 = icmp eq i64 %355, 1
  br i1 %357, label %358, label %372

358:                                              ; preds = %352
  %359 = load i64, ptr %76, align 8, !tbaa !31
  %360 = mul i64 %359, 6364136223846793005
  %361 = load i64, ptr %77, align 8, !tbaa !30
  %362 = add i64 %360, %361
  store i64 %362, ptr %76, align 8, !tbaa !31
  %363 = lshr i64 %359, 45
  %364 = lshr i64 %359, 27
  %365 = xor i64 %363, %364
  %366 = trunc i64 %365 to i32
  %367 = lshr i64 %359, 59
  %368 = trunc i64 %367 to i32
  %369 = call i32 @llvm.fshr.i32(i32 %366, i32 %366, i32 %368)
  %370 = zext i32 %369 to i64
  %371 = or disjoint i64 %370, 4294967296
  br label %372

372:                                              ; preds = %358, %352
  %373 = phi i64 [ %371, %358 ], [ %355, %352 ]
  %374 = lshr i64 %373, 1
  %375 = and i64 %373, 1
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %372
  %378 = icmp eq i32 %356, 32767
  br i1 %378, label %379, label %380

379:                                              ; preds = %377
  store i64 %374, ptr %75, align 8, !tbaa !32
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__.set_insert) #16
  unreachable

380:                                              ; preds = %377
  %381 = add nuw nsw i32 %356, 1
  %382 = add nuw nsw i32 %354, 1
  %383 = add i64 %353, 1
  br label %352

384:                                              ; preds = %372
  store i64 %374, ptr %75, align 8, !tbaa !32
  %385 = load i16, ptr %78, align 8, !tbaa !29
  %386 = sext i16 %385 to i32
  %387 = icmp sgt i32 %356, %386
  br i1 %387, label %388, label %518

388:                                              ; preds = %384
  %389 = load ptr, ptr %79, align 8, !tbaa !27
  %390 = add nuw nsw i32 %356, 1
  %391 = getelementptr inbounds %struct.set_node_s, ptr %389, i64 0, i32 1
  %392 = load i16, ptr %391, align 8, !tbaa !25
  %393 = sext i16 %392 to i32
  %394 = icmp slt i32 %356, %393
  br i1 %394, label %412, label %395

395:                                              ; preds = %388
  %396 = icmp eq i16 %392, 0
  %397 = select i1 %396, i32 1, i32 %393
  br label %398

398:                                              ; preds = %398, %395
  %399 = phi i32 [ %397, %395 ], [ %401, %398 ]
  %400 = icmp sgt i32 %399, %356
  %401 = shl i32 %399, 1
  br i1 %400, label %402, label %398, !llvm.loop !47

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.set_node_s, ptr %389, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !22
  %405 = sext i32 %399 to i64
  %406 = shl nsw i64 %405, 3
  %407 = call ptr @realloc(ptr noundef %404, i64 noundef %406) #19
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

410:                                              ; preds = %402
  store ptr %407, ptr %403, align 8, !tbaa !22
  %411 = trunc i32 %399 to i16
  store i16 %411, ptr %391, align 8, !tbaa !25
  br label %412

412:                                              ; preds = %410, %388
  %413 = getelementptr inbounds %struct.set_node_s, ptr %389, i64 0, i32 2
  %414 = load i16, ptr %413, align 2, !tbaa !26
  %415 = sext i16 %414 to i32
  %416 = icmp slt i32 %356, %415
  br i1 %416, label %452, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.set_node_s, ptr %389, i64 0, i32 3
  %419 = sext i16 %414 to i64
  %420 = zext nneg i32 %390 to i64
  %421 = load ptr, ptr %9, align 8, !tbaa !21
  %422 = sub nsw i64 %420, %419
  %423 = sub i64 %353, %419
  %424 = and i64 %422, 3
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %434, label %426

426:                                              ; preds = %417, %426
  %427 = phi i64 [ %431, %426 ], [ %419, %417 ]
  %428 = phi i64 [ %432, %426 ], [ 0, %417 ]
  %429 = load ptr, ptr %418, align 8, !tbaa !22
  %430 = getelementptr inbounds ptr, ptr %429, i64 %427
  store ptr %421, ptr %430, align 8, !tbaa !28
  %431 = add nsw i64 %427, 1
  %432 = add i64 %428, 1
  %433 = icmp eq i64 %432, %424
  br i1 %433, label %434, label %426, !llvm.loop !48

434:                                              ; preds = %426, %417
  %435 = phi i64 [ %419, %417 ], [ %431, %426 ]
  %436 = icmp ult i64 %423, 3
  br i1 %436, label %452, label %437

437:                                              ; preds = %434, %437
  %438 = phi i64 [ %450, %437 ], [ %435, %434 ]
  %439 = load ptr, ptr %418, align 8, !tbaa !22
  %440 = getelementptr inbounds ptr, ptr %439, i64 %438
  store ptr %421, ptr %440, align 8, !tbaa !28
  %441 = load ptr, ptr %418, align 8, !tbaa !22
  %442 = getelementptr ptr, ptr %441, i64 %438
  %443 = getelementptr ptr, ptr %442, i64 1
  store ptr %421, ptr %443, align 8, !tbaa !28
  %444 = load ptr, ptr %418, align 8, !tbaa !22
  %445 = getelementptr ptr, ptr %444, i64 %438
  %446 = getelementptr ptr, ptr %445, i64 2
  store ptr %421, ptr %446, align 8, !tbaa !28
  %447 = load ptr, ptr %418, align 8, !tbaa !22
  %448 = getelementptr ptr, ptr %447, i64 %438
  %449 = getelementptr ptr, ptr %448, i64 3
  store ptr %421, ptr %449, align 8, !tbaa !28
  %450 = add nsw i64 %438, 4
  %451 = icmp eq i64 %450, %420
  br i1 %451, label %452, label %437, !llvm.loop !50

452:                                              ; preds = %434, %437, %412
  %453 = trunc i32 %390 to i16
  store i16 %453, ptr %413, align 2, !tbaa !26
  %454 = load ptr, ptr %9, align 8, !tbaa !21
  %455 = getelementptr inbounds %struct.set_node_s, ptr %454, i64 0, i32 1
  %456 = load i16, ptr %455, align 8, !tbaa !25
  %457 = sext i16 %456 to i32
  %458 = icmp slt i32 %356, %457
  br i1 %458, label %476, label %459

459:                                              ; preds = %452
  %460 = icmp eq i16 %456, 0
  %461 = select i1 %460, i32 1, i32 %457
  br label %462

462:                                              ; preds = %462, %459
  %463 = phi i32 [ %461, %459 ], [ %465, %462 ]
  %464 = icmp sgt i32 %463, %356
  %465 = shl i32 %463, 1
  br i1 %464, label %466, label %462, !llvm.loop !47

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.set_node_s, ptr %454, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !22
  %469 = sext i32 %463 to i64
  %470 = shl nsw i64 %469, 3
  %471 = call ptr @realloc(ptr noundef %468, i64 noundef %470) #19
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %474

473:                                              ; preds = %466
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

474:                                              ; preds = %466
  store ptr %471, ptr %467, align 8, !tbaa !22
  %475 = trunc i32 %463 to i16
  store i16 %475, ptr %455, align 8, !tbaa !25
  br label %476

476:                                              ; preds = %474, %452
  %477 = getelementptr inbounds %struct.set_node_s, ptr %454, i64 0, i32 2
  %478 = load i16, ptr %477, align 2, !tbaa !26
  %479 = sext i16 %478 to i32
  %480 = icmp slt i32 %356, %479
  br i1 %480, label %516, label %481

481:                                              ; preds = %476
  %482 = getelementptr inbounds %struct.set_node_s, ptr %454, i64 0, i32 3
  %483 = sext i16 %478 to i64
  %484 = zext nneg i32 %390 to i64
  %485 = load ptr, ptr %9, align 8, !tbaa !21
  %486 = sub nsw i64 %484, %483
  %487 = sub i64 %353, %483
  %488 = and i64 %486, 3
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %481, %490
  %491 = phi i64 [ %495, %490 ], [ %483, %481 ]
  %492 = phi i64 [ %496, %490 ], [ 0, %481 ]
  %493 = load ptr, ptr %482, align 8, !tbaa !22
  %494 = getelementptr inbounds ptr, ptr %493, i64 %491
  store ptr %485, ptr %494, align 8, !tbaa !28
  %495 = add nsw i64 %491, 1
  %496 = add i64 %492, 1
  %497 = icmp eq i64 %496, %488
  br i1 %497, label %498, label %490, !llvm.loop !51

498:                                              ; preds = %490, %481
  %499 = phi i64 [ %483, %481 ], [ %495, %490 ]
  %500 = icmp ult i64 %487, 3
  br i1 %500, label %516, label %501

501:                                              ; preds = %498, %501
  %502 = phi i64 [ %514, %501 ], [ %499, %498 ]
  %503 = load ptr, ptr %482, align 8, !tbaa !22
  %504 = getelementptr inbounds ptr, ptr %503, i64 %502
  store ptr %485, ptr %504, align 8, !tbaa !28
  %505 = load ptr, ptr %482, align 8, !tbaa !22
  %506 = getelementptr ptr, ptr %505, i64 %502
  %507 = getelementptr ptr, ptr %506, i64 1
  store ptr %485, ptr %507, align 8, !tbaa !28
  %508 = load ptr, ptr %482, align 8, !tbaa !22
  %509 = getelementptr ptr, ptr %508, i64 %502
  %510 = getelementptr ptr, ptr %509, i64 2
  store ptr %485, ptr %510, align 8, !tbaa !28
  %511 = load ptr, ptr %482, align 8, !tbaa !22
  %512 = getelementptr ptr, ptr %511, i64 %502
  %513 = getelementptr ptr, ptr %512, i64 3
  store ptr %485, ptr %513, align 8, !tbaa !28
  %514 = add nsw i64 %502, 4
  %515 = icmp eq i64 %514, %484
  br i1 %515, label %516, label %501, !llvm.loop !50

516:                                              ; preds = %498, %501, %476
  store i16 %453, ptr %477, align 2, !tbaa !26
  %517 = trunc i32 %356 to i16
  store i16 %517, ptr %78, align 8, !tbaa !29
  br label %518

518:                                              ; preds = %516, %384
  %519 = call dereferenceable_or_null(24) ptr @malloc(i64 24)
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %522

521:                                              ; preds = %518
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.set_node_s, ptr %519, i64 0, i32 1
  store i16 0, ptr %523, align 8, !tbaa !25
  %524 = getelementptr inbounds %struct.set_node_s, ptr %519, i64 0, i32 2
  store i16 0, ptr %524, align 2, !tbaa !26
  %525 = getelementptr inbounds %struct.set_node_s, ptr %519, i64 0, i32 3
  store ptr null, ptr %525, align 8, !tbaa !22
  store ptr %519, ptr %80, align 8, !tbaa !52
  store ptr %210, ptr %519, align 8, !tbaa !53
  br label %526

526:                                              ; preds = %526, %522
  %527 = phi i32 [ 1, %522 ], [ %529, %526 ]
  %528 = icmp sgt i32 %527, %356
  %529 = shl i32 %527, 1
  br i1 %528, label %530, label %526, !llvm.loop !47

530:                                              ; preds = %526
  %531 = sext i32 %527 to i64
  %532 = shl nsw i64 %531, 3
  %533 = call ptr @malloc(i64 %532)
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %536

535:                                              ; preds = %530
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

536:                                              ; preds = %530
  store ptr %533, ptr %525, align 8, !tbaa !22
  %537 = trunc i32 %527 to i16
  store i16 %537, ptr %523, align 8, !tbaa !25
  %538 = trunc i32 %356 to i16
  %539 = add i16 %538, 1
  store i16 %539, ptr %524, align 2, !tbaa !26
  %540 = zext nneg i32 %354 to i64
  br label %541

541:                                              ; preds = %541, %536
  %542 = phi ptr [ %519, %536 ], [ %556, %541 ]
  %543 = phi i64 [ 0, %536 ], [ %565, %541 ]
  %544 = load ptr, ptr %79, align 8, !tbaa !27
  %545 = getelementptr inbounds %struct.set_node_s, ptr %544, i64 0, i32 3
  %546 = load ptr, ptr %545, align 8, !tbaa !22
  %547 = getelementptr inbounds ptr, ptr %546, i64 %543
  %548 = load ptr, ptr %547, align 8, !tbaa !28
  %549 = getelementptr inbounds %struct.set_node_s, ptr %548, i64 0, i32 3
  %550 = load ptr, ptr %549, align 8, !tbaa !22
  %551 = getelementptr inbounds ptr, ptr %550, i64 %543
  %552 = load ptr, ptr %551, align 8, !tbaa !28
  %553 = getelementptr inbounds %struct.set_node_s, ptr %542, i64 0, i32 3
  %554 = load ptr, ptr %553, align 8, !tbaa !22
  %555 = getelementptr inbounds ptr, ptr %554, i64 %543
  store ptr %552, ptr %555, align 8, !tbaa !28
  %556 = load ptr, ptr %80, align 8, !tbaa !52
  %557 = load ptr, ptr %79, align 8, !tbaa !27
  %558 = getelementptr inbounds %struct.set_node_s, ptr %557, i64 0, i32 3
  %559 = load ptr, ptr %558, align 8, !tbaa !22
  %560 = getelementptr inbounds ptr, ptr %559, i64 %543
  %561 = load ptr, ptr %560, align 8, !tbaa !28
  %562 = getelementptr inbounds %struct.set_node_s, ptr %561, i64 0, i32 3
  %563 = load ptr, ptr %562, align 8, !tbaa !22
  %564 = getelementptr inbounds ptr, ptr %563, i64 %543
  store ptr %556, ptr %564, align 8, !tbaa !28
  %565 = add nuw nsw i64 %543, 1
  %566 = icmp eq i64 %565, %540
  br i1 %566, label %567, label %541, !llvm.loop !54

567:                                              ; preds = %541
  store ptr null, ptr %80, align 8, !tbaa !52
  br label %569

568:                                              ; preds = %347
  call void @free(ptr noundef nonnull %210) #17
  br label %569

569:                                              ; preds = %567, %568
  %570 = load ptr, ptr %73, align 8, !tbaa !34
  %571 = icmp eq ptr %570, null
  br i1 %571, label %335, label %81

572:                                              ; preds = %335
  %573 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %574 = add i64 %573, 1
  %575 = call ptr @malloc(i64 %574)
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %578

577:                                              ; preds = %572
  call void @longjmp(ptr noundef nonnull %10, i32 noundef 12) #16
  unreachable

578:                                              ; preds = %572
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %575, ptr align 1 %1, i64 %574, i1 false)
  %579 = call fastcc i32 @set_found(ptr noundef nonnull %9, ptr noundef nonnull %575), !range !46
  call void @free(ptr noundef nonnull %575) #17
  br label %580

580:                                              ; preds = %329, %335, %4, %2, %578, %13
  %581 = phi i32 [ -2, %13 ], [ %579, %578 ], [ -102, %2 ], [ 0, %4 ], [ -1, %335 ], [ -1, %329 ]
  ret i32 %581
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_end(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.set_node_s, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !28
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %15, %11 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.set_node_s, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = load ptr, ptr %12, align 8, !tbaa !53
  tail call void @free(ptr noundef %16) #17
  %17 = load ptr, ptr %13, align 8, !tbaa !22
  tail call void @free(ptr noundef %17) #17
  tail call void @free(ptr noundef %12) #17
  %18 = load ptr, ptr %0, align 8, !tbaa !21
  %19 = icmp eq ptr %15, %18
  br i1 %19, label %20, label %11, !llvm.loop !55

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.set_node_s, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  br label %23

23:                                               ; preds = %20, %8
  %24 = phi ptr [ %22, %20 ], [ %6, %8 ]
  tail call void @free(ptr noundef %24) #17
  %25 = load ptr, ptr %0, align 8, !tbaa !21
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi ptr [ %25, %23 ], [ %2, %4 ]
  tail call void @free(ptr noundef %27) #17
  store ptr null, ptr %0, align 8, !tbaa !21
  br label %28

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.set_node_s, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  tail call void @free(ptr noundef %34) #17
  %35 = load ptr, ptr %29, align 8, !tbaa !27
  tail call void @free(ptr noundef %35) #17
  store ptr null, ptr %29, align 8, !tbaa !27
  br label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !53
  tail call void @free(ptr noundef %41) #17
  %42 = load ptr, ptr %37, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.set_node_s, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  tail call void @free(ptr noundef %44) #17
  %45 = load ptr, ptr %37, align 8, !tbaa !52
  tail call void @free(ptr noundef %45) #17
  store ptr null, ptr %37, align 8, !tbaa !52
  br label %46

46:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_found(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.set_node_s, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %3, align 8, !tbaa !24
  %11 = icmp eq i8 %10, -119
  br i1 %11, label %13, label %12

12:                                               ; preds = %2, %5, %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 314, ptr noundef nonnull @__PRETTY_FUNCTION__.set_found) #16
  unreachable

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !29
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = add i16 %15, 1
  %20 = getelementptr inbounds %struct.set_node_s, ptr %18, i64 0, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !25
  %22 = icmp slt i16 %15, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %13
  %24 = tail call i16 @llvm.umax.i16(i16 %21, i16 1)
  %25 = sext i16 %24 to i32
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %25, %23 ], [ %29, %26 ]
  %28 = icmp sgt i32 %27, %16
  %29 = shl i32 %27, 1
  br i1 %28, label %30, label %26, !llvm.loop !47

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.set_node_s, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = sext i32 %27 to i64
  %34 = shl nsw i64 %33, 3
  %35 = tail call ptr @realloc(ptr noundef %32, i64 noundef %34) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 6
  tail call void @longjmp(ptr noundef nonnull %38, i32 noundef 12) #16
  unreachable

39:                                               ; preds = %30
  store ptr %35, ptr %31, align 8, !tbaa !22
  %40 = trunc i32 %27 to i16
  store i16 %40, ptr %20, align 8, !tbaa !25
  br label %41

41:                                               ; preds = %13, %39
  %42 = getelementptr inbounds %struct.set_node_s, ptr %18, i64 0, i32 2
  store i16 %19, ptr %42, align 2, !tbaa !26
  %43 = sext i16 %15 to i64
  br label %44

44:                                               ; preds = %58, %41
  %45 = phi i64 [ %63, %58 ], [ %43, %41 ]
  %46 = phi ptr [ %48, %58 ], [ %3, %41 ]
  br label %47

47:                                               ; preds = %54, %44
  %48 = phi ptr [ %46, %44 ], [ %52, %54 ]
  %49 = getelementptr inbounds %struct.set_node_s, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = getelementptr inbounds ptr, ptr %50, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %52, align 8, !tbaa !53
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %1) #18
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %47, label %58, !llvm.loop !56

58:                                               ; preds = %47, %54
  %59 = load ptr, ptr %17, align 8, !tbaa !27
  %60 = getelementptr inbounds %struct.set_node_s, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = getelementptr inbounds ptr, ptr %61, i64 %45
  store ptr %48, ptr %62, align 8, !tbaa !28
  %63 = add nsw i64 %45, -1
  %64 = icmp eq i64 %45, 0
  br i1 %64, label %65, label %44, !llvm.loop !57

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.set_node_s, ptr %48, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = load ptr, ptr %67, align 8, !tbaa !28
  %69 = icmp eq ptr %68, %3
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %68, align 8, !tbaa !53
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %1) #18
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i32 [ 0, %65 ], [ %74, %70 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.zip64_internal, align 8
  call void @llvm.lifetime.start.p0(i64 66232, ptr nonnull %29) #17
  %30 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %29, i64 0, i32 2
  %31 = icmp eq ptr %3, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  call void @fill_fopen64_filefunc(ptr noundef nonnull %29) #17
  br label %34

33:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %29, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false), !tbaa.struct !58
  br label %34

34:                                               ; preds = %33, %32
  %35 = icmp eq i32 %1, 0
  %36 = select i1 %35, i32 11, i32 7
  %37 = call ptr @call_zopen64(ptr noundef nonnull %29, ptr noundef %0, i32 noundef %36) #17
  %38 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !59
  %39 = icmp eq ptr %37, null
  br i1 %39, label %635, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %1, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef nonnull %37, i64 noundef 0, i32 noundef 2) #17
  %44 = load ptr, ptr %38, align 8, !tbaa !59
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %44, %42 ], [ %37, %40 ]
  %47 = call i64 @call_ztell64(ptr noundef nonnull %29, ptr noundef %46) #17
  %48 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 5
  store i64 %47, ptr %48, align 8, !tbaa !60
  %49 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 4, i32 1
  store i32 0, ptr %49, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 7
  %51 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 6
  %52 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 2
  %53 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %53, i8 0, i64 256, i1 false)
  %54 = call noalias dereferenceable_or_null(66232) ptr @malloc(i64 noundef 66232) #20
  %55 = icmp eq ptr %54, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %52, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  %61 = load ptr, ptr %38, align 8, !tbaa !59
  %62 = call i32 %58(ptr noundef %60, ptr noundef %61) #17
  br label %635

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 8
  store ptr null, ptr %64, align 8, !tbaa !64
  %65 = icmp eq i32 %1, 2
  br i1 %65, label %66, label %626

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #17
  %67 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #17
  %68 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %67, i64 noundef 0, i32 noundef 2) #17
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %154

70:                                               ; preds = %66
  %71 = call i64 @call_ztell64(ptr noundef nonnull %29, ptr noundef %67) #17
  %72 = call i64 @llvm.umin.i64(i64 %71, i64 65535)
  %73 = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %154, label %75

75:                                               ; preds = %70
  %76 = icmp ugt i64 %71, 4
  br i1 %76, label %77, label %153

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 1
  %79 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  br label %80

80:                                               ; preds = %120, %77
  %81 = phi i64 [ 4, %77 ], [ %83, %120 ]
  %82 = add nuw nsw i64 %81, 1024
  %83 = call i64 @llvm.umin.i64(i64 %82, i64 %72)
  %84 = sub i64 %71, %83
  %85 = call i64 @llvm.umin.i64(i64 %83, i64 1028)
  %86 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %67, i64 noundef %84, i32 noundef 0) #17
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %153

88:                                               ; preds = %80
  %89 = load ptr, ptr %78, align 8, !tbaa !65
  %90 = load ptr, ptr %79, align 8, !tbaa !66
  %91 = call i64 %89(ptr noundef %90, ptr noundef %67, ptr noundef nonnull %73, i64 noundef %85) #17
  %92 = icmp eq i64 %91, %85
  br i1 %92, label %93, label %153

93:                                               ; preds = %88
  %94 = add nuw nsw i64 %85, 4294967292
  %95 = and i64 %94, 4294967295
  br label %96

96:                                               ; preds = %113, %93
  %97 = phi i64 [ %95, %93 ], [ %114, %113 ]
  %98 = getelementptr inbounds i8, ptr %73, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !24
  %100 = icmp eq i8 %99, 80
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %98, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !24
  %104 = icmp eq i8 %103, 75
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %98, i64 2
  %107 = load i8, ptr %106, align 1, !tbaa !24
  %108 = icmp eq i8 %107, 6
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %98, i64 3
  %111 = load i8, ptr %110, align 1, !tbaa !24
  %112 = icmp eq i8 %111, 7
  br i1 %112, label %116, label %113

113:                                              ; preds = %109, %105, %101, %96
  %114 = add nsw i64 %97, -1
  %115 = icmp sgt i64 %97, 0
  br i1 %115, label %96, label %120, !llvm.loop !67

116:                                              ; preds = %109
  %117 = and i64 %97, 4294967295
  %118 = add i64 %117, %84
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113, %116
  %121 = icmp ult i64 %82, %72
  br i1 %121, label %80, label %153

122:                                              ; preds = %116
  call void @free(ptr noundef nonnull %73) #17
  %123 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %67, i64 noundef %118, i32 noundef 0) #17
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %67, ptr noundef nonnull %19)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %67, ptr noundef nonnull %19)
  %130 = icmp eq i32 %129, 0
  %131 = load i64, ptr %19, align 8
  %132 = icmp eq i64 %131, 0
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %67, ptr noundef nonnull %20), !range !68
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %67, ptr noundef nonnull %19)
  %139 = icmp eq i32 %138, 0
  %140 = load i64, ptr %19, align 8
  %141 = icmp eq i64 %140, 1
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load i64, ptr %20, align 8
  %145 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %67, i64 noundef %144, i32 noundef 0) #17
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %67, ptr noundef nonnull %19)
  %149 = icmp eq i32 %148, 0
  %150 = load i64, ptr %19, align 8
  %151 = icmp eq i64 %150, 101075792
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %155, label %154

153:                                              ; preds = %120, %88, %80, %75
  call void @free(ptr noundef nonnull %73) #17
  br label %154

154:                                              ; preds = %153, %147, %143, %137, %134, %128, %125, %122, %70, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #17
  br label %157

155:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #17
  %156 = icmp eq i64 %144, 0
  br i1 %156, label %157, label %213

157:                                              ; preds = %155, %154
  %158 = load ptr, ptr %38, align 8, !tbaa !59
  %159 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %158, i64 noundef 0, i32 noundef 2) #17
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %284

161:                                              ; preds = %157
  %162 = call i64 @call_ztell64(ptr noundef nonnull %29, ptr noundef %158) #17
  %163 = call i64 @llvm.umin.i64(i64 %162, i64 65535)
  %164 = call noalias dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #20
  %165 = icmp eq ptr %164, null
  br i1 %165, label %284, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 1
  %168 = icmp ugt i64 %162, 4
  br i1 %168, label %169, label %282

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  br label %171

171:                                              ; preds = %211, %169
  %172 = phi i64 [ 4, %169 ], [ %174, %211 ]
  %173 = add nuw nsw i64 %172, 1024
  %174 = call i64 @llvm.umin.i64(i64 %173, i64 %163)
  %175 = sub i64 %162, %174
  %176 = call i64 @llvm.umin.i64(i64 %174, i64 1028)
  %177 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %158, i64 noundef %175, i32 noundef 0) #17
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %282

179:                                              ; preds = %171
  %180 = load ptr, ptr %167, align 8, !tbaa !65
  %181 = load ptr, ptr %170, align 8, !tbaa !66
  %182 = call i64 %180(ptr noundef %181, ptr noundef %158, ptr noundef nonnull %164, i64 noundef %176) #17
  %183 = icmp eq i64 %182, %176
  br i1 %183, label %184, label %282

184:                                              ; preds = %179
  %185 = add nuw nsw i64 %176, 4294967292
  %186 = and i64 %185, 4294967295
  br label %187

187:                                              ; preds = %204, %184
  %188 = phi i64 [ %186, %184 ], [ %205, %204 ]
  %189 = getelementptr inbounds i8, ptr %164, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !24
  %191 = icmp eq i8 %190, 80
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, ptr %189, i64 1
  %194 = load i8, ptr %193, align 1, !tbaa !24
  %195 = icmp eq i8 %194, 75
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = getelementptr inbounds i8, ptr %189, i64 2
  %198 = load i8, ptr %197, align 1, !tbaa !24
  %199 = icmp eq i8 %198, 5
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %189, i64 3
  %202 = load i8, ptr %201, align 1, !tbaa !24
  %203 = icmp eq i8 %202, 6
  br i1 %203, label %207, label %204

204:                                              ; preds = %200, %196, %192, %187
  %205 = add nsw i64 %188, -1
  %206 = icmp sgt i64 %188, 0
  br i1 %206, label %187, label %211, !llvm.loop !69

207:                                              ; preds = %200
  %208 = and i64 %188, 4294967295
  %209 = add i64 %208, %175
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %282

211:                                              ; preds = %204, %207
  %212 = icmp ult i64 %173, %163
  br i1 %212, label %171, label %282

213:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #17
  %214 = load ptr, ptr %38, align 8, !tbaa !59
  %215 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %214, i64 noundef %144, i32 noundef 0) #17
  %216 = icmp eq i64 %215, 0
  %217 = load ptr, ptr %38, align 8, !tbaa !59
  %218 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %217, ptr noundef nonnull %23)
  %219 = load ptr, ptr %38, align 8, !tbaa !59
  %220 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %219, ptr noundef nonnull %28), !range !68
  %221 = or i32 %220, %218
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i1 %216, i1 false
  %224 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #17
  %225 = load ptr, ptr %78, align 8, !tbaa !65
  %226 = load ptr, ptr %79, align 8, !tbaa !66
  %227 = call i64 %225(ptr noundef %226, ptr noundef %224, ptr noundef nonnull %18, i64 noundef 1) #17
  %228 = and i64 %227, 4294967295
  %229 = icmp eq i64 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #17
  br label %237

231:                                              ; preds = %213
  %232 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %233 = load ptr, ptr %232, align 8, !tbaa !70
  %234 = load ptr, ptr %79, align 8, !tbaa !66
  %235 = call i32 %233(ptr noundef %234, ptr noundef %224) #17
  %236 = icmp eq i32 %235, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #17
  br i1 %236, label %237, label %252

237:                                              ; preds = %231, %230
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #17
  %238 = load ptr, ptr %78, align 8, !tbaa !65
  %239 = load ptr, ptr %79, align 8, !tbaa !66
  %240 = call i64 %238(ptr noundef %239, ptr noundef %224, ptr noundef nonnull %17, i64 noundef 1) #17
  %241 = and i64 %240, 4294967295
  %242 = icmp eq i64 %241, 1
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #17
  br label %251

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !70
  %247 = load ptr, ptr %79, align 8, !tbaa !66
  %248 = call i32 %246(ptr noundef %247, ptr noundef %224) #17
  %249 = freeze i32 %248
  %250 = icmp eq i32 %249, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #17
  br i1 %250, label %251, label %252

251:                                              ; preds = %244, %243
  br label %252

252:                                              ; preds = %251, %244, %231
  %253 = phi i1 [ %223, %251 ], [ false, %244 ], [ false, %231 ]
  %254 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #17
  %255 = load ptr, ptr %78, align 8, !tbaa !65
  %256 = load ptr, ptr %79, align 8, !tbaa !66
  %257 = call i64 %255(ptr noundef %256, ptr noundef %254, ptr noundef nonnull %16, i64 noundef 1) #17
  %258 = and i64 %257, 4294967295
  %259 = icmp eq i64 %258, 1
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #17
  br label %267

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !70
  %264 = load ptr, ptr %79, align 8, !tbaa !66
  %265 = call i32 %263(ptr noundef %264, ptr noundef %254) #17
  %266 = icmp eq i32 %265, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #17
  br i1 %266, label %267, label %528

267:                                              ; preds = %261, %260
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #17
  %268 = load ptr, ptr %78, align 8, !tbaa !65
  %269 = load ptr, ptr %79, align 8, !tbaa !66
  %270 = call i64 %268(ptr noundef %269, ptr noundef %254, ptr noundef nonnull %15, i64 noundef 1) #17
  %271 = and i64 %270, 4294967295
  %272 = icmp eq i64 %271, 1
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #17
  br label %281

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %276 = load ptr, ptr %275, align 8, !tbaa !70
  %277 = load ptr, ptr %79, align 8, !tbaa !66
  %278 = call i32 %276(ptr noundef %277, ptr noundef %254) #17
  %279 = freeze i32 %278
  %280 = icmp eq i32 %279, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #17
  br i1 %280, label %281, label %528

281:                                              ; preds = %274, %273
  br label %528

282:                                              ; preds = %211, %207, %179, %171, %166
  %283 = phi i64 [ 0, %166 ], [ 0, %211 ], [ 0, %171 ], [ 0, %179 ], [ %209, %207 ]
  call void @free(ptr noundef nonnull %164) #17
  br label %284

284:                                              ; preds = %282, %161, %157
  %285 = phi i64 [ 0, %157 ], [ 0, %161 ], [ %283, %282 ]
  %286 = load ptr, ptr %38, align 8, !tbaa !59
  %287 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %286, i64 noundef %285, i32 noundef 0) #17
  %288 = icmp ne i64 %287, 0
  %289 = load ptr, ptr %38, align 8, !tbaa !59
  %290 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %289, ptr noundef nonnull %23)
  %291 = icmp ne i32 %290, 0
  %292 = select i1 %291, i1 true, i1 %288
  %293 = sext i1 %292 to i32
  %294 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #17
  %295 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !65
  %297 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !66
  %299 = call i64 %296(ptr noundef %298, ptr noundef %294, ptr noundef nonnull %14, i64 noundef 1) #17
  %300 = and i64 %299, 4294967295
  %301 = icmp eq i64 %300, 1
  br i1 %301, label %302, label %306

302:                                              ; preds = %284
  %303 = load i8, ptr %14, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #17
  %304 = zext i8 %303 to i64
  %305 = shl nuw nsw i64 %304, 8
  br label %313

306:                                              ; preds = %284
  %307 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !70
  %309 = load ptr, ptr %297, align 8, !tbaa !66
  %310 = call i32 %308(ptr noundef %309, ptr noundef %294) #17
  %311 = icmp eq i32 %310, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #17
  br i1 %311, label %313, label %312

312:                                              ; preds = %306
  store i64 0, ptr %24, align 8, !tbaa !71
  br label %336

313:                                              ; preds = %306, %302
  %314 = phi i64 [ %304, %302 ], [ 0, %306 ]
  %315 = phi i64 [ %305, %302 ], [ 0, %306 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #17
  %316 = load ptr, ptr %295, align 8, !tbaa !65
  %317 = load ptr, ptr %297, align 8, !tbaa !66
  %318 = call i64 %316(ptr noundef %317, ptr noundef %294, ptr noundef nonnull %13, i64 noundef 1) #17
  %319 = and i64 %318, 4294967295
  %320 = icmp eq i64 %319, 1
  br i1 %320, label %321, label %326

321:                                              ; preds = %313
  %322 = load i8, ptr %13, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  %323 = zext i8 %322 to i64
  %324 = shl nuw nsw i64 %323, 8
  %325 = or disjoint i64 %324, %314
  store i64 %325, ptr %24, align 8, !tbaa !71
  br label %336

326:                                              ; preds = %313
  %327 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %328 = load ptr, ptr %327, align 8, !tbaa !70
  %329 = load ptr, ptr %297, align 8, !tbaa !66
  %330 = call i32 %328(ptr noundef %329, ptr noundef %294) #17
  %331 = freeze i32 %330
  %332 = icmp eq i32 %331, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  %333 = or disjoint i64 %315, %314
  %334 = select i1 %332, i64 %333, i64 0
  store i64 %334, ptr %24, align 8, !tbaa !71
  %335 = select i1 %332, i32 %293, i32 -1
  br label %336

336:                                              ; preds = %326, %321, %312
  %337 = phi i64 [ 0, %312 ], [ %325, %321 ], [ %334, %326 ]
  %338 = phi i32 [ -1, %312 ], [ %293, %321 ], [ %335, %326 ]
  %339 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #17
  %340 = load ptr, ptr %295, align 8, !tbaa !65
  %341 = load ptr, ptr %297, align 8, !tbaa !66
  %342 = call i64 %340(ptr noundef %341, ptr noundef %339, ptr noundef nonnull %12, i64 noundef 1) #17
  %343 = and i64 %342, 4294967295
  %344 = icmp eq i64 %343, 1
  br i1 %344, label %345, label %349

345:                                              ; preds = %336
  %346 = load i8, ptr %12, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #17
  %347 = zext i8 %346 to i64
  %348 = shl nuw nsw i64 %347, 8
  br label %355

349:                                              ; preds = %336
  %350 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %351 = load ptr, ptr %350, align 8, !tbaa !70
  %352 = load ptr, ptr %297, align 8, !tbaa !66
  %353 = call i32 %351(ptr noundef %352, ptr noundef %339) #17
  %354 = icmp eq i32 %353, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #17
  br i1 %354, label %355, label %378

355:                                              ; preds = %349, %345
  %356 = phi i64 [ %347, %345 ], [ 0, %349 ]
  %357 = phi i64 [ %348, %345 ], [ 0, %349 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #17
  %358 = load ptr, ptr %295, align 8, !tbaa !65
  %359 = load ptr, ptr %297, align 8, !tbaa !66
  %360 = call i64 %358(ptr noundef %359, ptr noundef %339, ptr noundef nonnull %11, i64 noundef 1) #17
  %361 = and i64 %360, 4294967295
  %362 = icmp eq i64 %361, 1
  br i1 %362, label %363, label %368

363:                                              ; preds = %355
  %364 = load i8, ptr %11, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  %365 = zext i8 %364 to i64
  %366 = shl nuw nsw i64 %365, 8
  %367 = or disjoint i64 %366, %356
  br label %378

368:                                              ; preds = %355
  %369 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !70
  %371 = load ptr, ptr %297, align 8, !tbaa !66
  %372 = call i32 %370(ptr noundef %371, ptr noundef %339) #17
  %373 = freeze i32 %372
  %374 = icmp eq i32 %373, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  %375 = or disjoint i64 %357, %356
  %376 = select i1 %374, i64 %375, i64 0
  %377 = select i1 %374, i32 %338, i32 -1
  br label %378

378:                                              ; preds = %368, %363, %349
  %379 = phi i64 [ %367, %363 ], [ %376, %368 ], [ 0, %349 ]
  %380 = phi i32 [ %338, %363 ], [ %377, %368 ], [ -1, %349 ]
  %381 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #17
  %382 = load ptr, ptr %295, align 8, !tbaa !65
  %383 = load ptr, ptr %297, align 8, !tbaa !66
  %384 = call i64 %382(ptr noundef %383, ptr noundef %381, ptr noundef nonnull %10, i64 noundef 1) #17
  %385 = and i64 %384, 4294967295
  %386 = icmp eq i64 %385, 1
  br i1 %386, label %387, label %391

387:                                              ; preds = %378
  %388 = load i8, ptr %10, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  %389 = zext i8 %388 to i64
  %390 = shl nuw nsw i64 %389, 8
  br label %397

391:                                              ; preds = %378
  %392 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %393 = load ptr, ptr %392, align 8, !tbaa !70
  %394 = load ptr, ptr %297, align 8, !tbaa !66
  %395 = call i32 %393(ptr noundef %394, ptr noundef %381) #17
  %396 = icmp eq i32 %395, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  br i1 %396, label %397, label %420

397:                                              ; preds = %391, %387
  %398 = phi i64 [ %389, %387 ], [ 0, %391 ]
  %399 = phi i64 [ %390, %387 ], [ 0, %391 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #17
  %400 = load ptr, ptr %295, align 8, !tbaa !65
  %401 = load ptr, ptr %297, align 8, !tbaa !66
  %402 = call i64 %400(ptr noundef %401, ptr noundef %381, ptr noundef nonnull %9, i64 noundef 1) #17
  %403 = and i64 %402, 4294967295
  %404 = icmp eq i64 %403, 1
  br i1 %404, label %405, label %410

405:                                              ; preds = %397
  %406 = load i8, ptr %9, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  %407 = zext i8 %406 to i64
  %408 = shl nuw nsw i64 %407, 8
  %409 = or disjoint i64 %408, %398
  br label %420

410:                                              ; preds = %397
  %411 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %412 = load ptr, ptr %411, align 8, !tbaa !70
  %413 = load ptr, ptr %297, align 8, !tbaa !66
  %414 = call i32 %412(ptr noundef %413, ptr noundef %381) #17
  %415 = freeze i32 %414
  %416 = icmp eq i32 %415, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  %417 = or disjoint i64 %399, %398
  %418 = select i1 %416, i64 %417, i64 0
  %419 = select i1 %416, i32 %380, i32 -1
  br label %420

420:                                              ; preds = %410, %405, %391
  %421 = phi i64 [ 0, %391 ], [ %409, %405 ], [ %418, %410 ]
  %422 = phi i32 [ -1, %391 ], [ %380, %405 ], [ %419, %410 ]
  %423 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  %424 = load ptr, ptr %295, align 8, !tbaa !65
  %425 = load ptr, ptr %297, align 8, !tbaa !66
  %426 = call i64 %424(ptr noundef %425, ptr noundef %423, ptr noundef nonnull %8, i64 noundef 1) #17
  %427 = and i64 %426, 4294967295
  %428 = icmp eq i64 %427, 1
  br i1 %428, label %429, label %433

429:                                              ; preds = %420
  %430 = load i8, ptr %8, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  %431 = zext i8 %430 to i64
  %432 = shl nuw nsw i64 %431, 8
  br label %440

433:                                              ; preds = %420
  %434 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %435 = load ptr, ptr %434, align 8, !tbaa !70
  %436 = load ptr, ptr %297, align 8, !tbaa !66
  %437 = call i32 %435(ptr noundef %436, ptr noundef %423) #17
  %438 = icmp eq i32 %437, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  br i1 %438, label %440, label %439

439:                                              ; preds = %433
  store i64 0, ptr %23, align 8, !tbaa !71
  br label %463

440:                                              ; preds = %433, %429
  %441 = phi i64 [ %431, %429 ], [ 0, %433 ]
  %442 = phi i64 [ %432, %429 ], [ 0, %433 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  %443 = load ptr, ptr %295, align 8, !tbaa !65
  %444 = load ptr, ptr %297, align 8, !tbaa !66
  %445 = call i64 %443(ptr noundef %444, ptr noundef %423, ptr noundef nonnull %7, i64 noundef 1) #17
  %446 = and i64 %445, 4294967295
  %447 = icmp eq i64 %446, 1
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load i8, ptr %7, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  %450 = zext i8 %449 to i64
  %451 = shl nuw nsw i64 %450, 8
  %452 = or disjoint i64 %451, %441
  store i64 %452, ptr %23, align 8, !tbaa !71
  br label %463

453:                                              ; preds = %440
  %454 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %455 = load ptr, ptr %454, align 8, !tbaa !70
  %456 = load ptr, ptr %297, align 8, !tbaa !66
  %457 = call i32 %455(ptr noundef %456, ptr noundef %423) #17
  %458 = freeze i32 %457
  %459 = icmp eq i32 %458, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  %460 = or disjoint i64 %442, %441
  %461 = select i1 %459, i64 %460, i64 0
  store i64 %461, ptr %23, align 8, !tbaa !71
  %462 = select i1 %459, i32 %422, i32 -1
  br label %463

463:                                              ; preds = %453, %448, %439
  %464 = phi i64 [ 0, %439 ], [ %452, %448 ], [ %461, %453 ]
  %465 = phi i32 [ -1, %439 ], [ %422, %448 ], [ %462, %453 ]
  %466 = load ptr, ptr %38, align 8, !tbaa !59
  %467 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %466, ptr noundef nonnull %23)
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %463
  %470 = icmp eq i64 %464, %421
  %471 = icmp eq i64 %379, 0
  %472 = select i1 %470, i1 %471, i1 false
  %473 = icmp eq i64 %337, 0
  %474 = select i1 %472, i1 %473, i1 false
  %475 = load i64, ptr %23, align 8, !tbaa !71
  %476 = icmp eq i32 %465, 0
  %477 = select i1 %474, i1 %476, i1 false
  br label %478

478:                                              ; preds = %469, %463
  %479 = phi i64 [ %475, %469 ], [ 0, %463 ]
  %480 = phi i1 [ %477, %469 ], [ false, %463 ]
  %481 = load ptr, ptr %38, align 8, !tbaa !59
  %482 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %481, ptr noundef nonnull %23)
  %483 = icmp eq i32 %482, 0
  %484 = load i64, ptr %23, align 8
  %485 = select i1 %483, i64 %484, i64 0
  %486 = load ptr, ptr %38, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  %487 = load ptr, ptr %295, align 8, !tbaa !65
  %488 = load ptr, ptr %297, align 8, !tbaa !66
  %489 = call i64 %487(ptr noundef %488, ptr noundef %486, ptr noundef nonnull %6, i64 noundef 1) #17
  %490 = and i64 %489, 4294967295
  %491 = icmp eq i64 %490, 1
  br i1 %491, label %492, label %496

492:                                              ; preds = %478
  %493 = load i8, ptr %6, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %494 = zext i8 %493 to i64
  %495 = shl nuw nsw i64 %494, 8
  br label %502

496:                                              ; preds = %478
  %497 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %498 = load ptr, ptr %497, align 8, !tbaa !70
  %499 = load ptr, ptr %297, align 8, !tbaa !66
  %500 = call i32 %498(ptr noundef %499, ptr noundef %486) #17
  %501 = icmp eq i32 %500, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  br i1 %501, label %502, label %565

502:                                              ; preds = %496, %492
  %503 = phi i64 [ %494, %492 ], [ 0, %496 ]
  %504 = phi i64 [ %495, %492 ], [ 0, %496 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  %505 = load ptr, ptr %295, align 8, !tbaa !65
  %506 = load ptr, ptr %297, align 8, !tbaa !66
  %507 = call i64 %505(ptr noundef %506, ptr noundef %486, ptr noundef nonnull %5, i64 noundef 1) #17
  %508 = and i64 %507, 4294967295
  %509 = icmp eq i64 %508, 1
  br i1 %509, label %510, label %514

510:                                              ; preds = %502
  %511 = load i8, ptr %5, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  %512 = zext i8 %511 to i64
  %513 = shl nuw nsw i64 %512, 8
  br label %521

514:                                              ; preds = %502
  %515 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 6
  %516 = load ptr, ptr %515, align 8, !tbaa !70
  %517 = load ptr, ptr %297, align 8, !tbaa !66
  %518 = call i32 %516(ptr noundef %517, ptr noundef %486) #17
  %519 = freeze i32 %518
  %520 = icmp eq i32 %519, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  br i1 %520, label %521, label %565

521:                                              ; preds = %514, %510
  %522 = phi i64 [ %513, %510 ], [ %504, %514 ]
  %523 = or disjoint i64 %522, %503
  %524 = add i64 %485, %479
  %525 = icmp uge i64 %285, %524
  %526 = and i1 %483, %525
  %527 = select i1 %526, i1 %480, i1 false
  br i1 %527, label %572, label %565

528:                                              ; preds = %281, %274, %261
  %529 = phi i1 [ %253, %281 ], [ false, %274 ], [ false, %261 ]
  %530 = load ptr, ptr %38, align 8, !tbaa !59
  %531 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %530, ptr noundef nonnull %24)
  %532 = load ptr, ptr %38, align 8, !tbaa !59
  %533 = call fastcc i32 @zip64local_getLong(ptr noundef nonnull %29, ptr noundef %532, ptr noundef nonnull %25)
  %534 = or i32 %533, %531
  %535 = load ptr, ptr %38, align 8, !tbaa !59
  %536 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %535, ptr noundef nonnull %26), !range !68
  %537 = or i32 %534, %536
  %538 = load ptr, ptr %38, align 8, !tbaa !59
  %539 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %538, ptr noundef nonnull %27), !range !68
  %540 = or i32 %537, %539
  %541 = icmp eq i32 %540, 0
  %542 = load i64, ptr %27, align 8, !tbaa !71
  %543 = load i64, ptr %26, align 8, !tbaa !71
  %544 = icmp eq i64 %542, %543
  %545 = load i64, ptr %25, align 8
  %546 = icmp eq i64 %545, 0
  %547 = select i1 %544, i1 %546, i1 false
  %548 = load i64, ptr %24, align 8
  %549 = icmp eq i64 %548, 0
  %550 = select i1 %547, i1 %549, i1 false
  %551 = load ptr, ptr %38, align 8, !tbaa !59
  %552 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %551, ptr noundef nonnull %21), !range !68
  %553 = load ptr, ptr %38, align 8, !tbaa !59
  %554 = call fastcc i32 @zip64local_getLong64(ptr noundef nonnull %29, ptr noundef %553, ptr noundef nonnull %22), !range !68
  %555 = or i32 %554, %552
  %556 = icmp eq i32 %555, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #17
  %557 = load i64, ptr %22, align 8, !tbaa !71
  %558 = load i64, ptr %21, align 8, !tbaa !71
  %559 = add i64 %558, %557
  %560 = icmp uge i64 %144, %559
  %561 = and i1 %541, %550
  %562 = and i1 %556, %560
  %563 = select i1 %562, i1 %561, i1 false
  %564 = select i1 %563, i1 %529, i1 false
  br i1 %564, label %585, label %565

565:                                              ; preds = %528, %521, %514, %496
  %566 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 5
  %567 = load ptr, ptr %566, align 8, !tbaa !62
  %568 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  %569 = load ptr, ptr %568, align 8, !tbaa !63
  %570 = load ptr, ptr %38, align 8, !tbaa !59
  %571 = call i32 %567(ptr noundef %569, ptr noundef %570) #17
  br label %624

572:                                              ; preds = %521
  %573 = icmp eq i64 %523, 0
  br i1 %573, label %585, label %574

574:                                              ; preds = %572
  %575 = add nuw nsw i64 %523, 1
  %576 = call noalias ptr @malloc(i64 noundef %575) #20
  store ptr %576, ptr %64, align 8, !tbaa !64
  %577 = icmp eq ptr %576, null
  br i1 %577, label %585, label %578

578:                                              ; preds = %574
  %579 = load ptr, ptr %295, align 8, !tbaa !72
  %580 = load ptr, ptr %297, align 8, !tbaa !63
  %581 = load ptr, ptr %38, align 8, !tbaa !59
  %582 = call i64 %579(ptr noundef %580, ptr noundef %581, ptr noundef nonnull %576, i64 noundef %523) #17
  %583 = load ptr, ptr %64, align 8, !tbaa !64
  %584 = getelementptr inbounds i8, ptr %583, i64 %582
  store i8 0, ptr %584, align 1, !tbaa !24
  br label %585

585:                                              ; preds = %578, %574, %572, %528
  %586 = phi i64 [ %464, %574 ], [ %464, %578 ], [ %464, %572 ], [ %542, %528 ]
  %587 = phi i64 [ %479, %574 ], [ %479, %578 ], [ %479, %572 ], [ %558, %528 ]
  %588 = phi i64 [ %485, %574 ], [ %485, %578 ], [ %485, %572 ], [ %557, %528 ]
  %589 = phi i64 [ %285, %574 ], [ %285, %578 ], [ %285, %572 ], [ %144, %528 ]
  %590 = phi i64 [ %524, %574 ], [ %524, %578 ], [ %524, %572 ], [ %559, %528 ]
  %591 = sub i64 %589, %590
  store i64 %591, ptr %51, align 8, !tbaa !73
  %592 = call noalias dereferenceable_or_null(4080) ptr @malloc(i64 noundef 4080) #20
  %593 = load ptr, ptr %38, align 8, !tbaa !59
  %594 = add i64 %591, %588
  %595 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %593, i64 noundef %594, i32 noundef 0) #17
  %596 = icmp ne i64 %595, 0
  %597 = sext i1 %596 to i32
  %598 = icmp eq i64 %587, 0
  %599 = select i1 %598, i1 true, i1 %596
  br i1 %599, label %617, label %600

600:                                              ; preds = %585
  %601 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 1
  %602 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %29, i64 0, i32 7
  br label %603

603:                                              ; preds = %611, %600
  %604 = phi i64 [ %587, %600 ], [ %613, %611 ]
  %605 = call i64 @llvm.umin.i64(i64 %604, i64 4080)
  %606 = load ptr, ptr %601, align 8, !tbaa !72
  %607 = load ptr, ptr %602, align 8, !tbaa !63
  %608 = load ptr, ptr %38, align 8, !tbaa !59
  %609 = call i64 %606(ptr noundef %607, ptr noundef %608, ptr noundef %592, i64 noundef %605) #17
  %610 = icmp eq i64 %609, %605
  br i1 %610, label %611, label %617

611:                                              ; preds = %603
  %612 = call fastcc i32 @add_data_in_datablock(ptr noundef nonnull %52, ptr noundef %592, i64 noundef %605)
  %613 = sub i64 %604, %605
  %614 = icmp ne i64 %613, 0
  %615 = icmp eq i32 %612, 0
  %616 = and i1 %614, %615
  br i1 %616, label %603, label %617, !llvm.loop !74

617:                                              ; preds = %611, %603, %585
  %618 = phi i32 [ %597, %585 ], [ %612, %611 ], [ -1, %603 ]
  call void @free(ptr noundef %592) #17
  store i64 %591, ptr %48, align 8, !tbaa !60
  store i64 %586, ptr %50, align 8, !tbaa !75
  %619 = load ptr, ptr %38, align 8, !tbaa !59
  %620 = call i64 @call_zseek64(ptr noundef nonnull %29, ptr noundef %619, i64 noundef %594, i32 noundef 0) #17
  %621 = icmp eq i64 %620, 0
  %622 = icmp eq i32 %618, 0
  %623 = select i1 %621, i1 %622, i1 false
  br label %624

624:                                              ; preds = %565, %617
  %625 = phi i1 [ false, %565 ], [ %623, %617 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #17
  br label %626

626:                                              ; preds = %624, %63
  %627 = phi i1 [ %625, %624 ], [ true, %63 ]
  %628 = icmp eq ptr %2, null
  br i1 %628, label %631, label %629

629:                                              ; preds = %626
  %630 = load ptr, ptr %64, align 8, !tbaa !64
  store ptr %630, ptr %2, align 8, !tbaa !28
  br label %631

631:                                              ; preds = %629, %626
  br i1 %627, label %634, label %632

632:                                              ; preds = %631
  %633 = load ptr, ptr %64, align 8, !tbaa !64
  call void @free(ptr noundef %633) #17
  call void @free(ptr noundef %54) #17
  br label %635

634:                                              ; preds = %631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(66232) %54, ptr noundef nonnull align 8 dereferenceable(66232) %29, i64 66232, i1 false), !tbaa.struct !76
  br label %635

635:                                              ; preds = %34, %634, %632, %56
  %636 = phi ptr [ null, %56 ], [ null, %632 ], [ %54, %634 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 66232, ptr nonnull %29) #17
  ret ptr %636
}

declare void @fill_fopen64_filefunc(ptr noundef) local_unnamed_addr #5

declare ptr @call_zopen64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @call_ztell64(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipOpen2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #17
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef nonnull %5, ptr noundef nonnull %3) #17
  %8 = call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #17
  br label %11

9:                                                ; preds = %4
  %10 = tail call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null)
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  ret ptr %12
}

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipOpen2_64(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.zlib_filefunc64_32_def_s, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !79
  %8 = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #17
  br label %12

10:                                               ; preds = %4
  %11 = tail call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null)
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %9, %7 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipOpen(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zipOpen64(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @zipOpen3(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef readonly %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %18) local_unnamed_addr #0 {
  %20 = alloca [10 x i8], align 1
  %21 = alloca [8 x i8], align 8
  %22 = alloca [8 x i8], align 8
  %23 = alloca [8 x i8], align 1
  %24 = alloca [8 x i8], align 1
  %25 = alloca [8 x i8], align 2
  %26 = alloca [8 x i8], align 2
  %27 = alloca [8 x i8], align 4
  %28 = alloca [8 x i8], align 4
  %29 = alloca [8 x i8], align 4
  %30 = alloca [8 x i8], align 4
  %31 = alloca [8 x i8], align 4
  %32 = alloca [8 x i8], align 4
  %33 = alloca [8 x i8], align 2
  %34 = alloca [8 x i8], align 2
  %35 = alloca [8 x i8], align 1
  %36 = alloca [8 x i8], align 1
  %37 = alloca [8 x i8], align 4
  %38 = alloca [12 x i8], align 1
  %39 = icmp ne ptr %0, null
  %40 = and i32 %8, -9
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %39, %41
  br i1 %42, label %43, label %1037

43:                                               ; preds = %19
  %44 = icmp eq ptr %1, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %47 = icmp ugt i64 %46, 65535
  br i1 %47, label %1037, label %48

48:                                               ; preds = %45, %43
  %49 = icmp eq ptr %7, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18
  %52 = icmp ult i64 %51, 65536
  %53 = or i32 %6, %4
  %54 = icmp ult i32 %53, 65536
  %55 = and i1 %54, %52
  br i1 %55, label %59, label %1037

56:                                               ; preds = %48
  %57 = or i32 %6, %4
  %58 = icmp ult i32 %57, 65536
  br i1 %58, label %59, label %1037

59:                                               ; preds = %50, %56
  %60 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !80
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = tail call i32 @zipCloseFileInZipRaw64(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %1037

66:                                               ; preds = %63, %59
  %67 = select i1 %44, ptr @.str, ptr %1
  br i1 %49, label %71, label %68

68:                                               ; preds = %66
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18
  %70 = trunc i64 %69 to i32
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 0, %66 ]
  %73 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #18
  %74 = trunc i64 %73 to i32
  %75 = icmp eq ptr %2, null
  br i1 %75, label %116, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.zip_fileinfo, ptr %2, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !81
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tm_zip_s, ptr %2, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !84
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i32 %82, 1979
  %85 = add nsw i64 %83, -1980
  %86 = icmp ugt i32 %82, 79
  %87 = add nsw i64 %83, -80
  %88 = select i1 %86, i64 %87, i64 %83
  %89 = select i1 %84, i64 %85, i64 %88
  %90 = getelementptr inbounds %struct.tm_zip_s, ptr %2, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !85
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tm_zip_s, ptr %2, i64 0, i32 4
  %94 = load i32, ptr %93, align 4, !tbaa !86
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %89, 25
  %98 = shl nsw i64 %96, 21
  %99 = shl nsw i64 %92, 16
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, %97
  %102 = load i32, ptr %2, align 4, !tbaa !87
  %103 = sext i32 %102 to i64
  %104 = lshr i64 %103, 1
  %105 = getelementptr inbounds %struct.tm_zip_s, ptr %2, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !88
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 5
  %109 = add i64 %108, %104
  %110 = getelementptr inbounds %struct.tm_zip_s, ptr %2, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !89
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 11
  %114 = add i64 %109, %113
  %115 = or i64 %114, %101
  br label %116

116:                                              ; preds = %76, %71, %80
  %117 = phi i64 [ %115, %80 ], [ 0, %71 ], [ %78, %76 ]
  %118 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 12
  store i64 %117, ptr %118, align 8, !tbaa !90
  %119 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4
  %120 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 8
  %121 = and i32 %9, -2
  %122 = icmp eq i32 %121, 8
  %123 = or i64 %17, 2
  %124 = select i1 %122, i64 %123, i64 %17
  store i64 %124, ptr %120, align 8, !tbaa !91
  switch i32 %9, label %129 [
    i32 2, label %126
    i32 1, label %125
  ]

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %116, %125
  %127 = phi i64 [ 6, %125 ], [ 4, %116 ]
  %128 = or i64 %127, %17
  store i64 %128, ptr %120, align 8, !tbaa !91
  br label %129

129:                                              ; preds = %126, %116
  %130 = phi i64 [ %124, %116 ], [ %128, %126 ]
  %131 = icmp eq ptr %14, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = or i64 %130, 1
  store i64 %133, ptr %120, align 8, !tbaa !91
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i64 [ %133, %132 ], [ %130, %129 ]
  %136 = and i64 %73, 4294967295
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %268, label %147

138:                                              ; preds = %151
  %139 = getelementptr inbounds i8, ptr %153, i64 1
  %140 = add i64 %152, -1
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %199, label %151, !llvm.loop !92

142:                                              ; preds = %195, %193, %191, %180, %167
  %143 = phi i64 [ 2, %167 ], [ 3, %180 ], [ 4, %193 ], [ 4, %191 ], [ 4, %195 ]
  %144 = getelementptr inbounds i8, ptr %153, i64 %143
  %145 = sub i64 %152, %143
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %200, label %147, !llvm.loop !92

147:                                              ; preds = %134, %142
  %148 = phi i1 [ false, %142 ], [ true, %134 ]
  %149 = phi i64 [ %145, %142 ], [ %136, %134 ]
  %150 = phi ptr [ %144, %142 ], [ %67, %134 ]
  br label %151

151:                                              ; preds = %147, %138
  %152 = phi i64 [ %149, %147 ], [ %140, %138 ]
  %153 = phi ptr [ %150, %147 ], [ %139, %138 ]
  %154 = load i8, ptr %153, align 1, !tbaa !24
  %155 = icmp sgt i8 %154, -1
  br i1 %155, label %138, label %156

156:                                              ; preds = %151
  %157 = icmp ult i8 %154, -64
  %158 = icmp eq i64 %152, 1
  %159 = or i1 %158, %157
  br i1 %159, label %268, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %153, i64 1
  %162 = load i8, ptr %161, align 1, !tbaa !24
  %163 = and i8 %162, -64
  %164 = icmp ne i8 %163, -128
  %165 = icmp ult i8 %154, -62
  %166 = or i1 %165, %164
  br i1 %166, label %268, label %167

167:                                              ; preds = %160
  %168 = icmp ult i8 %154, -32
  br i1 %168, label %142, label %169

169:                                              ; preds = %167
  %170 = icmp ult i64 %152, 3
  br i1 %170, label %268, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds i8, ptr %153, i64 2
  %173 = load i8, ptr %172, align 1, !tbaa !24
  %174 = and i8 %173, -64
  %175 = icmp eq i8 %174, -128
  br i1 %175, label %176, label %268

176:                                              ; preds = %171
  %177 = icmp eq i8 %154, -32
  %178 = icmp ult i8 %162, -96
  %179 = and i1 %177, %178
  br i1 %179, label %268, label %180

180:                                              ; preds = %176
  %181 = icmp ult i8 %154, -16
  br i1 %181, label %142, label %182

182:                                              ; preds = %180
  %183 = icmp eq i64 %152, 3
  br i1 %183, label %268, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %153, i64 3
  %186 = load i8, ptr %185, align 1, !tbaa !24
  %187 = and i8 %186, -64
  %188 = icmp eq i8 %187, -128
  br i1 %188, label %189, label %268

189:                                              ; preds = %184
  %190 = icmp eq i8 %154, -16
  br i1 %190, label %191, label %193

191:                                              ; preds = %189
  %192 = icmp ult i8 %162, -112
  br i1 %192, label %268, label %142

193:                                              ; preds = %189
  %194 = icmp ult i8 %154, -12
  br i1 %194, label %142, label %195

195:                                              ; preds = %193
  %196 = icmp eq i8 %154, -12
  %197 = icmp ult i8 %162, -112
  %198 = and i1 %196, %197
  br i1 %198, label %142, label %268

199:                                              ; preds = %138
  br i1 %148, label %268, label %200

200:                                              ; preds = %142, %199
  %201 = icmp eq i32 %72, 0
  br i1 %201, label %266, label %202

202:                                              ; preds = %200
  %203 = zext i32 %72 to i64
  br label %213

204:                                              ; preds = %217
  %205 = getelementptr inbounds i8, ptr %219, i64 1
  %206 = add i64 %218, -1
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %265, label %217, !llvm.loop !92

208:                                              ; preds = %261, %259, %257, %246, %233
  %209 = phi i64 [ 2, %233 ], [ 3, %246 ], [ 4, %259 ], [ 4, %257 ], [ 4, %261 ]
  %210 = getelementptr inbounds i8, ptr %219, i64 %209
  %211 = sub i64 %218, %209
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %266, label %213, !llvm.loop !92

213:                                              ; preds = %202, %208
  %214 = phi i1 [ false, %208 ], [ true, %202 ]
  %215 = phi i64 [ %211, %208 ], [ %203, %202 ]
  %216 = phi ptr [ %210, %208 ], [ %7, %202 ]
  br label %217

217:                                              ; preds = %213, %204
  %218 = phi i64 [ %215, %213 ], [ %206, %204 ]
  %219 = phi ptr [ %216, %213 ], [ %205, %204 ]
  %220 = load i8, ptr %219, align 1, !tbaa !24
  %221 = icmp sgt i8 %220, -1
  br i1 %221, label %204, label %222

222:                                              ; preds = %217
  %223 = icmp ult i8 %220, -64
  %224 = icmp eq i64 %218, 1
  %225 = or i1 %224, %223
  br i1 %225, label %268, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds i8, ptr %219, i64 1
  %228 = load i8, ptr %227, align 1, !tbaa !24
  %229 = and i8 %228, -64
  %230 = icmp ne i8 %229, -128
  %231 = icmp ult i8 %220, -62
  %232 = or i1 %231, %230
  br i1 %232, label %268, label %233

233:                                              ; preds = %226
  %234 = icmp ult i8 %220, -32
  br i1 %234, label %208, label %235

235:                                              ; preds = %233
  %236 = icmp ult i64 %218, 3
  br i1 %236, label %268, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds i8, ptr %219, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !24
  %240 = and i8 %239, -64
  %241 = icmp eq i8 %240, -128
  br i1 %241, label %242, label %268

242:                                              ; preds = %237
  %243 = icmp eq i8 %220, -32
  %244 = icmp ult i8 %228, -96
  %245 = and i1 %243, %244
  br i1 %245, label %268, label %246

246:                                              ; preds = %242
  %247 = icmp ult i8 %220, -16
  br i1 %247, label %208, label %248

248:                                              ; preds = %246
  %249 = icmp eq i64 %218, 3
  br i1 %249, label %268, label %250

250:                                              ; preds = %248
  %251 = getelementptr inbounds i8, ptr %219, i64 3
  %252 = load i8, ptr %251, align 1, !tbaa !24
  %253 = and i8 %252, -64
  %254 = icmp eq i8 %253, -128
  br i1 %254, label %255, label %268

255:                                              ; preds = %250
  %256 = icmp eq i8 %220, -16
  br i1 %256, label %257, label %259

257:                                              ; preds = %255
  %258 = icmp ult i8 %228, -112
  br i1 %258, label %268, label %208

259:                                              ; preds = %255
  %260 = icmp ult i8 %220, -12
  br i1 %260, label %208, label %261

261:                                              ; preds = %259
  %262 = icmp eq i8 %220, -12
  %263 = icmp ult i8 %228, -112
  %264 = and i1 %262, %263
  br i1 %264, label %208, label %268

265:                                              ; preds = %204
  br i1 %214, label %268, label %266

266:                                              ; preds = %208, %265, %200
  %267 = or i64 %135, 2048
  store i64 %267, ptr %120, align 8, !tbaa !91
  br label %268

268:                                              ; preds = %195, %176, %182, %184, %169, %171, %160, %156, %191, %261, %242, %248, %250, %235, %237, %226, %222, %257, %199, %265, %266, %134
  %269 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 13
  store i64 0, ptr %269, align 8, !tbaa !93
  %270 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 9
  store i32 %8, ptr %270, align 8, !tbaa !94
  %271 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 14
  store i32 0, ptr %271, align 8, !tbaa !95
  %272 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %272, align 8, !tbaa !61
  %273 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  store i32 0, ptr %273, align 4, !tbaa !96
  %274 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 10
  store i32 %10, ptr %274, align 4, !tbaa !97
  %275 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !59
  %277 = tail call i64 @call_ztell64(ptr noundef nonnull %0, ptr noundef %276) #17
  %278 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 3
  store i64 %277, ptr %278, align 8, !tbaa !98
  %279 = add i32 %6, 46
  %280 = add i32 %279, %72
  %281 = add i32 %280, %74
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 6
  store i64 %282, ptr %283, align 8, !tbaa !99
  %284 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 7
  store i64 32, ptr %284, align 8, !tbaa !100
  %285 = add nuw nsw i64 %282, 32
  %286 = tail call noalias ptr @malloc(i64 noundef %285) #20
  %287 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 4
  store ptr %286, ptr %287, align 8, !tbaa !101
  %288 = zext i32 %6 to i64
  %289 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 5
  store i64 %288, ptr %289, align 8, !tbaa !102
  store <4 x i8> <i8 80, i8 75, i8 1, i8 2>, ptr %286, align 1, !tbaa !24
  %290 = getelementptr inbounds i8, ptr %286, i64 4
  %291 = trunc i64 %16 to i8
  store i8 %291, ptr %290, align 1, !tbaa !24
  %292 = lshr i64 %16, 8
  %293 = trunc i64 %292 to i8
  %294 = getelementptr inbounds i8, ptr %286, i64 5
  store i8 %293, ptr %294, align 1, !tbaa !24
  %295 = icmp ugt i64 %16, 65535
  br i1 %295, label %296, label %297

296:                                              ; preds = %268
  store i16 -1, ptr %290, align 1
  br label %297

297:                                              ; preds = %268, %296
  %298 = getelementptr inbounds i8, ptr %286, i64 6
  store i8 20, ptr %298, align 1, !tbaa !24
  %299 = getelementptr inbounds i8, ptr %286, i64 7
  store i8 0, ptr %299, align 1, !tbaa !24
  %300 = getelementptr inbounds i8, ptr %286, i64 8
  %301 = load i64, ptr %120, align 8, !tbaa !91
  %302 = trunc i64 %301 to i8
  store i8 %302, ptr %300, align 1, !tbaa !24
  %303 = lshr i64 %301, 8
  %304 = trunc i64 %303 to i8
  %305 = getelementptr inbounds i8, ptr %286, i64 9
  store i8 %304, ptr %305, align 1, !tbaa !24
  %306 = icmp ugt i64 %301, 65535
  br i1 %306, label %307, label %308

307:                                              ; preds = %297
  store i16 -1, ptr %300, align 1
  br label %308

308:                                              ; preds = %297, %307
  %309 = getelementptr inbounds i8, ptr %286, i64 10
  %310 = load i32, ptr %270, align 8, !tbaa !94
  %311 = trunc i32 %310 to i8
  store i8 %311, ptr %309, align 1, !tbaa !24
  %312 = lshr i32 %310, 8
  %313 = trunc i32 %312 to i8
  %314 = getelementptr inbounds i8, ptr %286, i64 11
  store i8 %313, ptr %314, align 1, !tbaa !24
  %315 = icmp ugt i32 %310, 65535
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  store i16 -1, ptr %309, align 1
  br label %317

317:                                              ; preds = %308, %316
  %318 = getelementptr inbounds i8, ptr %286, i64 12
  %319 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 12
  %320 = load i64, ptr %319, align 8, !tbaa !90
  %321 = trunc i64 %320 to i8
  store i8 %321, ptr %318, align 1, !tbaa !24
  %322 = lshr i64 %320, 8
  %323 = trunc i64 %322 to i8
  %324 = getelementptr inbounds i8, ptr %286, i64 13
  store i8 %323, ptr %324, align 1, !tbaa !24
  %325 = lshr i64 %320, 16
  %326 = trunc i64 %325 to i8
  %327 = getelementptr inbounds i8, ptr %286, i64 14
  store i8 %326, ptr %327, align 1, !tbaa !24
  %328 = lshr i64 %320, 24
  %329 = trunc i64 %328 to i8
  %330 = getelementptr inbounds i8, ptr %286, i64 15
  store i8 %329, ptr %330, align 1, !tbaa !24
  %331 = icmp ugt i64 %320, 4294967295
  br i1 %331, label %332, label %333

332:                                              ; preds = %317
  store i32 -1, ptr %318, align 1
  br label %333

333:                                              ; preds = %317, %332
  %334 = getelementptr inbounds i8, ptr %286, i64 16
  store i32 0, ptr %334, align 1
  %335 = getelementptr inbounds i8, ptr %286, i64 20
  store i32 0, ptr %335, align 1
  %336 = getelementptr inbounds i8, ptr %286, i64 24
  store i32 0, ptr %336, align 1
  %337 = getelementptr inbounds i8, ptr %286, i64 28
  %338 = trunc i64 %73 to i8
  store i8 %338, ptr %337, align 1, !tbaa !24
  %339 = lshr i64 %73, 8
  %340 = trunc i64 %339 to i8
  %341 = getelementptr inbounds i8, ptr %286, i64 29
  store i8 %340, ptr %341, align 1, !tbaa !24
  %342 = icmp ugt i64 %136, 65535
  br i1 %342, label %343, label %344

343:                                              ; preds = %333
  store i16 -1, ptr %337, align 1
  br label %344

344:                                              ; preds = %333, %343
  %345 = getelementptr inbounds i8, ptr %286, i64 30
  %346 = trunc i32 %6 to i8
  store i8 %346, ptr %345, align 1, !tbaa !24
  %347 = lshr i64 %288, 8
  %348 = trunc i64 %347 to i8
  %349 = getelementptr inbounds i8, ptr %286, i64 31
  store i8 %348, ptr %349, align 1, !tbaa !24
  %350 = icmp ugt i32 %6, 65535
  br i1 %350, label %351, label %352

351:                                              ; preds = %344
  store i16 -1, ptr %345, align 1
  br label %352

352:                                              ; preds = %344, %351
  %353 = getelementptr inbounds i8, ptr %286, i64 32
  %354 = zext i32 %72 to i64
  %355 = trunc i32 %72 to i8
  store i8 %355, ptr %353, align 1, !tbaa !24
  %356 = lshr i64 %354, 8
  %357 = trunc i64 %356 to i8
  %358 = getelementptr inbounds i8, ptr %286, i64 33
  store i8 %357, ptr %358, align 1, !tbaa !24
  %359 = icmp ugt i32 %72, 65535
  br i1 %359, label %360, label %361

360:                                              ; preds = %352
  store i16 -1, ptr %353, align 1
  br label %361

361:                                              ; preds = %352, %360
  %362 = getelementptr inbounds i8, ptr %286, i64 34
  store i16 0, ptr %362, align 1
  %363 = getelementptr inbounds i8, ptr %286, i64 36
  br i1 %75, label %373, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.zip_fileinfo, ptr %2, i64 0, i32 2
  %366 = load i64, ptr %365, align 8, !tbaa !103
  %367 = trunc i64 %366 to i8
  store i8 %367, ptr %363, align 1, !tbaa !24
  %368 = lshr i64 %366, 8
  %369 = trunc i64 %368 to i8
  %370 = getelementptr inbounds i8, ptr %286, i64 37
  store i8 %369, ptr %370, align 1, !tbaa !24
  %371 = icmp ugt i64 %366, 65535
  br i1 %371, label %372, label %375

372:                                              ; preds = %364
  store i16 -1, ptr %363, align 1
  br label %375

373:                                              ; preds = %361
  store i16 0, ptr %363, align 1
  %374 = getelementptr inbounds i8, ptr %286, i64 38
  store i32 0, ptr %374, align 1
  br label %391

375:                                              ; preds = %372, %364
  %376 = getelementptr inbounds i8, ptr %286, i64 38
  %377 = getelementptr inbounds %struct.zip_fileinfo, ptr %2, i64 0, i32 3
  %378 = load i64, ptr %377, align 8, !tbaa !104
  %379 = trunc i64 %378 to i8
  store i8 %379, ptr %376, align 1, !tbaa !24
  %380 = lshr i64 %378, 8
  %381 = trunc i64 %380 to i8
  %382 = getelementptr inbounds i8, ptr %286, i64 39
  store i8 %381, ptr %382, align 1, !tbaa !24
  %383 = lshr i64 %378, 16
  %384 = trunc i64 %383 to i8
  %385 = getelementptr inbounds i8, ptr %286, i64 40
  store i8 %384, ptr %385, align 1, !tbaa !24
  %386 = lshr i64 %378, 24
  %387 = trunc i64 %386 to i8
  %388 = getelementptr inbounds i8, ptr %286, i64 41
  store i8 %387, ptr %388, align 1, !tbaa !24
  %389 = icmp ugt i64 %378, 4294967295
  br i1 %389, label %390, label %391

390:                                              ; preds = %375
  store i32 -1, ptr %376, align 1
  br label %391

391:                                              ; preds = %373, %390, %375
  %392 = icmp ugt i64 %277, 4294967294
  %393 = getelementptr inbounds i8, ptr %286, i64 42
  br i1 %392, label %409, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 6
  %396 = load i64, ptr %395, align 8, !tbaa !73
  %397 = sub i64 %277, %396
  %398 = trunc i64 %397 to i8
  store i8 %398, ptr %393, align 1, !tbaa !24
  %399 = lshr i64 %397, 8
  %400 = trunc i64 %399 to i8
  %401 = getelementptr inbounds i8, ptr %286, i64 43
  store i8 %400, ptr %401, align 1, !tbaa !24
  %402 = lshr i64 %397, 16
  %403 = trunc i64 %402 to i8
  %404 = getelementptr inbounds i8, ptr %286, i64 44
  store i8 %403, ptr %404, align 1, !tbaa !24
  %405 = lshr i64 %397, 24
  %406 = trunc i64 %405 to i8
  %407 = getelementptr inbounds i8, ptr %286, i64 45
  store i8 %406, ptr %407, align 1, !tbaa !24
  %408 = icmp ugt i64 %397, 4294967295
  br i1 %408, label %409, label %410

409:                                              ; preds = %394, %391
  store i32 -1, ptr %393, align 1
  br label %410

410:                                              ; preds = %409, %394
  %411 = icmp eq i32 %74, 0
  br i1 %411, label %432, label %412

412:                                              ; preds = %410
  %413 = add nsw i64 %136, -1
  %414 = and i64 %73, 3
  %415 = icmp ult i64 %413, 3
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  %417 = sub nsw i64 %136, %414
  br label %439

418:                                              ; preds = %439, %412
  %419 = phi i64 [ 0, %412 ], [ %465, %439 ]
  %420 = icmp eq i64 %414, 0
  br i1 %420, label %432, label %421

421:                                              ; preds = %418, %421
  %422 = phi i64 [ %429, %421 ], [ %419, %418 ]
  %423 = phi i64 [ %430, %421 ], [ 0, %418 ]
  %424 = getelementptr inbounds i8, ptr %67, i64 %422
  %425 = load i8, ptr %424, align 1, !tbaa !24
  %426 = load ptr, ptr %287, align 8, !tbaa !101
  %427 = getelementptr inbounds i8, ptr %426, i64 46
  %428 = getelementptr inbounds i8, ptr %427, i64 %422
  store i8 %425, ptr %428, align 1, !tbaa !24
  %429 = add nuw nsw i64 %422, 1
  %430 = add i64 %423, 1
  %431 = icmp eq i64 %430, %414
  br i1 %431, label %432, label %421, !llvm.loop !105

432:                                              ; preds = %418, %421, %410
  %433 = icmp eq i32 %6, 0
  br i1 %433, label %483, label %434

434:                                              ; preds = %432
  %435 = and i64 %288, 3
  %436 = icmp ult i32 %6, 4
  br i1 %436, label %468, label %437

437:                                              ; preds = %434
  %438 = and i64 %288, 4294967292
  br label %490

439:                                              ; preds = %439, %416
  %440 = phi i64 [ 0, %416 ], [ %465, %439 ]
  %441 = phi i64 [ 0, %416 ], [ %466, %439 ]
  %442 = getelementptr inbounds i8, ptr %67, i64 %440
  %443 = load i8, ptr %442, align 1, !tbaa !24
  %444 = load ptr, ptr %287, align 8, !tbaa !101
  %445 = getelementptr inbounds i8, ptr %444, i64 46
  %446 = getelementptr inbounds i8, ptr %445, i64 %440
  store i8 %443, ptr %446, align 1, !tbaa !24
  %447 = or disjoint i64 %440, 1
  %448 = getelementptr inbounds i8, ptr %67, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !24
  %450 = load ptr, ptr %287, align 8, !tbaa !101
  %451 = getelementptr inbounds i8, ptr %450, i64 46
  %452 = getelementptr inbounds i8, ptr %451, i64 %447
  store i8 %449, ptr %452, align 1, !tbaa !24
  %453 = or disjoint i64 %440, 2
  %454 = getelementptr inbounds i8, ptr %67, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !24
  %456 = load ptr, ptr %287, align 8, !tbaa !101
  %457 = getelementptr inbounds i8, ptr %456, i64 46
  %458 = getelementptr inbounds i8, ptr %457, i64 %453
  store i8 %455, ptr %458, align 1, !tbaa !24
  %459 = or disjoint i64 %440, 3
  %460 = getelementptr inbounds i8, ptr %67, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !24
  %462 = load ptr, ptr %287, align 8, !tbaa !101
  %463 = getelementptr inbounds i8, ptr %462, i64 46
  %464 = getelementptr inbounds i8, ptr %463, i64 %459
  store i8 %461, ptr %464, align 1, !tbaa !24
  %465 = add nuw nsw i64 %440, 4
  %466 = add i64 %441, 4
  %467 = icmp eq i64 %466, %417
  br i1 %467, label %418, label %439, !llvm.loop !106

468:                                              ; preds = %490, %434
  %469 = phi i64 [ 0, %434 ], [ %520, %490 ]
  %470 = icmp eq i64 %435, 0
  br i1 %470, label %483, label %471

471:                                              ; preds = %468, %471
  %472 = phi i64 [ %480, %471 ], [ %469, %468 ]
  %473 = phi i64 [ %481, %471 ], [ 0, %468 ]
  %474 = getelementptr inbounds i8, ptr %5, i64 %472
  %475 = load i8, ptr %474, align 1, !tbaa !24
  %476 = load ptr, ptr %287, align 8, !tbaa !101
  %477 = getelementptr inbounds i8, ptr %476, i64 46
  %478 = getelementptr inbounds i8, ptr %477, i64 %136
  %479 = getelementptr inbounds i8, ptr %478, i64 %472
  store i8 %475, ptr %479, align 1, !tbaa !24
  %480 = add nuw nsw i64 %472, 1
  %481 = add i64 %473, 1
  %482 = icmp eq i64 %481, %435
  br i1 %482, label %483, label %471, !llvm.loop !107

483:                                              ; preds = %468, %471, %432
  %484 = icmp eq i32 %72, 0
  br i1 %484, label %576, label %485

485:                                              ; preds = %483
  %486 = and i64 %354, 3
  %487 = icmp ult i32 %72, 4
  br i1 %487, label %560, label %488

488:                                              ; preds = %485
  %489 = and i64 %354, 4294967292
  br label %523

490:                                              ; preds = %490, %437
  %491 = phi i64 [ 0, %437 ], [ %520, %490 ]
  %492 = phi i64 [ 0, %437 ], [ %521, %490 ]
  %493 = getelementptr inbounds i8, ptr %5, i64 %491
  %494 = load i8, ptr %493, align 1, !tbaa !24
  %495 = load ptr, ptr %287, align 8, !tbaa !101
  %496 = getelementptr inbounds i8, ptr %495, i64 46
  %497 = getelementptr inbounds i8, ptr %496, i64 %136
  %498 = getelementptr inbounds i8, ptr %497, i64 %491
  store i8 %494, ptr %498, align 1, !tbaa !24
  %499 = or disjoint i64 %491, 1
  %500 = getelementptr inbounds i8, ptr %5, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !24
  %502 = load ptr, ptr %287, align 8, !tbaa !101
  %503 = getelementptr inbounds i8, ptr %502, i64 46
  %504 = getelementptr inbounds i8, ptr %503, i64 %136
  %505 = getelementptr inbounds i8, ptr %504, i64 %499
  store i8 %501, ptr %505, align 1, !tbaa !24
  %506 = or disjoint i64 %491, 2
  %507 = getelementptr inbounds i8, ptr %5, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !24
  %509 = load ptr, ptr %287, align 8, !tbaa !101
  %510 = getelementptr inbounds i8, ptr %509, i64 46
  %511 = getelementptr inbounds i8, ptr %510, i64 %136
  %512 = getelementptr inbounds i8, ptr %511, i64 %506
  store i8 %508, ptr %512, align 1, !tbaa !24
  %513 = or disjoint i64 %491, 3
  %514 = getelementptr inbounds i8, ptr %5, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !24
  %516 = load ptr, ptr %287, align 8, !tbaa !101
  %517 = getelementptr inbounds i8, ptr %516, i64 46
  %518 = getelementptr inbounds i8, ptr %517, i64 %136
  %519 = getelementptr inbounds i8, ptr %518, i64 %513
  store i8 %515, ptr %519, align 1, !tbaa !24
  %520 = add nuw nsw i64 %491, 4
  %521 = add i64 %492, 4
  %522 = icmp eq i64 %521, %438
  br i1 %522, label %468, label %490, !llvm.loop !108

523:                                              ; preds = %523, %488
  %524 = phi i64 [ 0, %488 ], [ %557, %523 ]
  %525 = phi i64 [ 0, %488 ], [ %558, %523 ]
  %526 = getelementptr inbounds i8, ptr %7, i64 %524
  %527 = load i8, ptr %526, align 1, !tbaa !24
  %528 = load ptr, ptr %287, align 8, !tbaa !101
  %529 = getelementptr inbounds i8, ptr %528, i64 46
  %530 = getelementptr inbounds i8, ptr %529, i64 %136
  %531 = getelementptr inbounds i8, ptr %530, i64 %288
  %532 = getelementptr inbounds i8, ptr %531, i64 %524
  store i8 %527, ptr %532, align 1, !tbaa !24
  %533 = or disjoint i64 %524, 1
  %534 = getelementptr inbounds i8, ptr %7, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !24
  %536 = load ptr, ptr %287, align 8, !tbaa !101
  %537 = getelementptr inbounds i8, ptr %536, i64 46
  %538 = getelementptr inbounds i8, ptr %537, i64 %136
  %539 = getelementptr inbounds i8, ptr %538, i64 %288
  %540 = getelementptr inbounds i8, ptr %539, i64 %533
  store i8 %535, ptr %540, align 1, !tbaa !24
  %541 = or disjoint i64 %524, 2
  %542 = getelementptr inbounds i8, ptr %7, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !24
  %544 = load ptr, ptr %287, align 8, !tbaa !101
  %545 = getelementptr inbounds i8, ptr %544, i64 46
  %546 = getelementptr inbounds i8, ptr %545, i64 %136
  %547 = getelementptr inbounds i8, ptr %546, i64 %288
  %548 = getelementptr inbounds i8, ptr %547, i64 %541
  store i8 %543, ptr %548, align 1, !tbaa !24
  %549 = or disjoint i64 %524, 3
  %550 = getelementptr inbounds i8, ptr %7, i64 %549
  %551 = load i8, ptr %550, align 1, !tbaa !24
  %552 = load ptr, ptr %287, align 8, !tbaa !101
  %553 = getelementptr inbounds i8, ptr %552, i64 46
  %554 = getelementptr inbounds i8, ptr %553, i64 %136
  %555 = getelementptr inbounds i8, ptr %554, i64 %288
  %556 = getelementptr inbounds i8, ptr %555, i64 %549
  store i8 %551, ptr %556, align 1, !tbaa !24
  %557 = add nuw nsw i64 %524, 4
  %558 = add i64 %525, 4
  %559 = icmp eq i64 %558, %489
  br i1 %559, label %560, label %523, !llvm.loop !109

560:                                              ; preds = %523, %485
  %561 = phi i64 [ 0, %485 ], [ %557, %523 ]
  %562 = icmp eq i64 %486, 0
  br i1 %562, label %576, label %563

563:                                              ; preds = %560, %563
  %564 = phi i64 [ %573, %563 ], [ %561, %560 ]
  %565 = phi i64 [ %574, %563 ], [ 0, %560 ]
  %566 = getelementptr inbounds i8, ptr %7, i64 %564
  %567 = load i8, ptr %566, align 1, !tbaa !24
  %568 = load ptr, ptr %287, align 8, !tbaa !101
  %569 = getelementptr inbounds i8, ptr %568, i64 46
  %570 = getelementptr inbounds i8, ptr %569, i64 %136
  %571 = getelementptr inbounds i8, ptr %570, i64 %288
  %572 = getelementptr inbounds i8, ptr %571, i64 %564
  store i8 %567, ptr %572, align 1, !tbaa !24
  %573 = add nuw nsw i64 %564, 1
  %574 = add i64 %565, 1
  %575 = icmp eq i64 %574, %486
  br i1 %575, label %576, label %563, !llvm.loop !110

576:                                              ; preds = %560, %563, %483
  %577 = load ptr, ptr %287, align 8, !tbaa !101
  %578 = icmp eq ptr %577, null
  br i1 %578, label %1037, label %579

579:                                              ; preds = %576
  %580 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 15
  store i32 %18, ptr %580, align 4, !tbaa !111
  %581 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %581, i8 0, i64 24, i1 false)
  %582 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #18
  %583 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #17
  store <4 x i8> <i8 80, i8 75, i8 3, i8 4>, ptr %37, align 4, !tbaa !24
  %584 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !112
  %586 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %587 = load ptr, ptr %586, align 8, !tbaa !66
  %588 = call i64 %585(ptr noundef %587, ptr noundef %583, ptr noundef nonnull %37, i64 noundef 4) #17
  %589 = icmp eq i64 %588, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #17
  br i1 %589, label %590, label %753

590:                                              ; preds = %579
  %591 = load i32, ptr %580, align 4, !tbaa !111
  %592 = icmp eq i32 %591, 0
  %593 = load ptr, ptr %275, align 8, !tbaa !59
  br i1 %592, label %599, label %594

594:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #17
  store i8 45, ptr %36, align 1, !tbaa !24
  %595 = getelementptr inbounds [8 x i8], ptr %36, i64 0, i64 1
  store i8 0, ptr %595, align 1, !tbaa !24
  %596 = load ptr, ptr %584, align 8, !tbaa !112
  %597 = load ptr, ptr %586, align 8, !tbaa !66
  %598 = call i64 %596(ptr noundef %597, ptr noundef %593, ptr noundef nonnull %36, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #17
  br label %604

599:                                              ; preds = %590
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #17
  store i8 20, ptr %35, align 1, !tbaa !24
  %600 = getelementptr inbounds [8 x i8], ptr %35, i64 0, i64 1
  store i8 0, ptr %600, align 1, !tbaa !24
  %601 = load ptr, ptr %584, align 8, !tbaa !112
  %602 = load ptr, ptr %586, align 8, !tbaa !66
  %603 = call i64 %601(ptr noundef %602, ptr noundef %593, ptr noundef nonnull %35, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #17
  br label %604

604:                                              ; preds = %599, %594
  %605 = phi i64 [ %598, %594 ], [ %603, %599 ]
  %606 = icmp eq i64 %605, 2
  br i1 %606, label %607, label %753

607:                                              ; preds = %604
  %608 = load ptr, ptr %275, align 8, !tbaa !59
  %609 = load i64, ptr %120, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #17
  %610 = trunc i64 %609 to i8
  store i8 %610, ptr %34, align 2, !tbaa !24
  %611 = lshr i64 %609, 8
  %612 = trunc i64 %611 to i8
  %613 = getelementptr inbounds [8 x i8], ptr %34, i64 0, i64 1
  store i8 %612, ptr %613, align 1, !tbaa !24
  %614 = icmp ugt i64 %609, 65535
  br i1 %614, label %615, label %616

615:                                              ; preds = %607
  store i16 -1, ptr %34, align 2
  br label %616

616:                                              ; preds = %615, %607
  %617 = load ptr, ptr %584, align 8, !tbaa !112
  %618 = load ptr, ptr %586, align 8, !tbaa !66
  %619 = call i64 %617(ptr noundef %618, ptr noundef %608, ptr noundef nonnull %34, i64 noundef 2) #17
  %620 = icmp eq i64 %619, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #17
  br i1 %620, label %621, label %753

621:                                              ; preds = %616
  %622 = load ptr, ptr %275, align 8, !tbaa !59
  %623 = load i32, ptr %270, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #17
  %624 = trunc i32 %623 to i8
  store i8 %624, ptr %33, align 2, !tbaa !24
  %625 = lshr i32 %623, 8
  %626 = trunc i32 %625 to i8
  %627 = getelementptr inbounds [8 x i8], ptr %33, i64 0, i64 1
  store i8 %626, ptr %627, align 1, !tbaa !24
  %628 = icmp ugt i32 %623, 65535
  br i1 %628, label %629, label %630

629:                                              ; preds = %621
  store i16 -1, ptr %33, align 2
  br label %630

630:                                              ; preds = %629, %621
  %631 = load ptr, ptr %584, align 8, !tbaa !112
  %632 = load ptr, ptr %586, align 8, !tbaa !66
  %633 = call i64 %631(ptr noundef %632, ptr noundef %622, ptr noundef nonnull %33, i64 noundef 2) #17
  %634 = icmp eq i64 %633, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #17
  br i1 %634, label %635, label %753

635:                                              ; preds = %630
  %636 = load ptr, ptr %275, align 8, !tbaa !59
  %637 = load i64, ptr %319, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #17
  %638 = trunc i64 %637 to i8
  store i8 %638, ptr %32, align 4, !tbaa !24
  %639 = lshr i64 %637, 8
  %640 = trunc i64 %639 to i8
  %641 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 1
  store i8 %640, ptr %641, align 1, !tbaa !24
  %642 = lshr i64 %637, 16
  %643 = trunc i64 %642 to i8
  %644 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 2
  store i8 %643, ptr %644, align 2, !tbaa !24
  %645 = lshr i64 %637, 24
  %646 = trunc i64 %645 to i8
  %647 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 3
  store i8 %646, ptr %647, align 1, !tbaa !24
  %648 = icmp ugt i64 %637, 4294967295
  br i1 %648, label %649, label %650

649:                                              ; preds = %635
  store i32 -1, ptr %32, align 4
  br label %650

650:                                              ; preds = %649, %635
  %651 = load ptr, ptr %584, align 8, !tbaa !112
  %652 = load ptr, ptr %586, align 8, !tbaa !66
  %653 = call i64 %651(ptr noundef %652, ptr noundef %636, ptr noundef nonnull %32, i64 noundef 4) #17
  %654 = icmp eq i64 %653, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #17
  br i1 %654, label %655, label %753

655:                                              ; preds = %650
  %656 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #17
  store i32 0, ptr %31, align 4
  %657 = load ptr, ptr %584, align 8, !tbaa !112
  %658 = load ptr, ptr %586, align 8, !tbaa !66
  %659 = call i64 %657(ptr noundef %658, ptr noundef %656, ptr noundef nonnull %31, i64 noundef 4) #17
  %660 = icmp eq i64 %659, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #17
  br i1 %660, label %661, label %753

661:                                              ; preds = %655
  %662 = load i32, ptr %580, align 4, !tbaa !111
  %663 = icmp eq i32 %662, 0
  %664 = load ptr, ptr %275, align 8, !tbaa !59
  br i1 %663, label %669, label %665

665:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #17
  store i32 -1, ptr %30, align 4
  %666 = load ptr, ptr %584, align 8, !tbaa !112
  %667 = load ptr, ptr %586, align 8, !tbaa !66
  %668 = call i64 %666(ptr noundef %667, ptr noundef %664, ptr noundef nonnull %30, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #17
  br label %673

669:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #17
  store i32 0, ptr %29, align 4
  %670 = load ptr, ptr %584, align 8, !tbaa !112
  %671 = load ptr, ptr %586, align 8, !tbaa !66
  %672 = call i64 %670(ptr noundef %671, ptr noundef %664, ptr noundef nonnull %29, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #17
  br label %673

673:                                              ; preds = %669, %665
  %674 = phi i64 [ %668, %665 ], [ %672, %669 ]
  %675 = icmp eq i64 %674, 4
  br i1 %675, label %676, label %753

676:                                              ; preds = %673
  %677 = load i32, ptr %580, align 4, !tbaa !111
  %678 = icmp eq i32 %677, 0
  %679 = load ptr, ptr %275, align 8, !tbaa !59
  br i1 %678, label %684, label %680

680:                                              ; preds = %676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #17
  store i32 -1, ptr %28, align 4
  %681 = load ptr, ptr %584, align 8, !tbaa !112
  %682 = load ptr, ptr %586, align 8, !tbaa !66
  %683 = call i64 %681(ptr noundef %682, ptr noundef %679, ptr noundef nonnull %28, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #17
  br label %688

684:                                              ; preds = %676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #17
  store i32 0, ptr %27, align 4
  %685 = load ptr, ptr %584, align 8, !tbaa !112
  %686 = load ptr, ptr %586, align 8, !tbaa !66
  %687 = call i64 %685(ptr noundef %686, ptr noundef %679, ptr noundef nonnull %27, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #17
  br label %688

688:                                              ; preds = %684, %680
  %689 = phi i64 [ %683, %680 ], [ %687, %684 ]
  %690 = icmp eq i64 %689, 4
  br i1 %690, label %691, label %753

691:                                              ; preds = %688
  %692 = load ptr, ptr %275, align 8, !tbaa !59
  %693 = and i64 %582, 4294967295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #17
  %694 = trunc i64 %582 to i8
  store i8 %694, ptr %26, align 2, !tbaa !24
  %695 = lshr i64 %582, 8
  %696 = trunc i64 %695 to i8
  %697 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 1
  store i8 %696, ptr %697, align 1, !tbaa !24
  %698 = icmp ugt i64 %693, 65535
  br i1 %698, label %699, label %700

699:                                              ; preds = %691
  store i16 -1, ptr %26, align 2
  br label %700

700:                                              ; preds = %699, %691
  %701 = load ptr, ptr %584, align 8, !tbaa !112
  %702 = load ptr, ptr %586, align 8, !tbaa !66
  %703 = call i64 %701(ptr noundef %702, ptr noundef %692, ptr noundef nonnull %26, i64 noundef 2) #17
  %704 = icmp eq i64 %703, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #17
  br i1 %704, label %705, label %753

705:                                              ; preds = %700
  %706 = load i32, ptr %580, align 4, !tbaa !111
  %707 = icmp eq i32 %706, 0
  %708 = add nuw nsw i32 %4, 20
  %709 = select i1 %707, i32 %4, i32 %708
  %710 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #17
  %711 = trunc i32 %709 to i8
  store i8 %711, ptr %25, align 2, !tbaa !24
  %712 = lshr i32 %709, 8
  %713 = trunc i32 %712 to i8
  %714 = getelementptr inbounds [8 x i8], ptr %25, i64 0, i64 1
  store i8 %713, ptr %714, align 1, !tbaa !24
  %715 = icmp ugt i32 %709, 65535
  br i1 %715, label %716, label %717

716:                                              ; preds = %705
  store i16 -1, ptr %25, align 2
  br label %717

717:                                              ; preds = %716, %705
  %718 = load ptr, ptr %584, align 8, !tbaa !112
  %719 = load ptr, ptr %586, align 8, !tbaa !66
  %720 = call i64 %718(ptr noundef %719, ptr noundef %710, ptr noundef nonnull %25, i64 noundef 2) #17
  %721 = icmp ne i64 %720, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #17
  %722 = icmp eq i64 %693, 0
  %723 = or i1 %722, %721
  br i1 %723, label %730, label %724

724:                                              ; preds = %717
  %725 = load ptr, ptr %584, align 8, !tbaa !113
  %726 = load ptr, ptr %586, align 8, !tbaa !63
  %727 = load ptr, ptr %275, align 8, !tbaa !59
  %728 = call i64 %725(ptr noundef %726, ptr noundef %727, ptr noundef nonnull %67, i64 noundef %693) #17
  %729 = icmp ne i64 %728, %693
  br label %730

730:                                              ; preds = %724, %717
  %731 = phi i1 [ %721, %717 ], [ %729, %724 ]
  %732 = icmp eq i32 %4, 0
  %733 = or i1 %732, %731
  br i1 %733, label %741, label %734

734:                                              ; preds = %730
  %735 = load ptr, ptr %584, align 8, !tbaa !113
  %736 = load ptr, ptr %586, align 8, !tbaa !63
  %737 = load ptr, ptr %275, align 8, !tbaa !59
  %738 = zext nneg i32 %4 to i64
  %739 = call i64 %735(ptr noundef %736, ptr noundef %737, ptr noundef %3, i64 noundef %738) #17
  %740 = icmp eq i64 %739, %738
  br i1 %740, label %742, label %753

741:                                              ; preds = %730
  br i1 %731, label %753, label %742

742:                                              ; preds = %741, %734
  %743 = load i32, ptr %580, align 4, !tbaa !111
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %761

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %746, align 8, !tbaa !114
  %747 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %747, align 8, !tbaa !115
  %748 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %749 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 3
  store ptr %748, ptr %749, align 8, !tbaa !116
  %750 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i64 0, ptr %750, align 8, !tbaa !117
  %751 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 5
  store i64 0, ptr %751, align 8, !tbaa !118
  %752 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 11
  store i32 0, ptr %752, align 8, !tbaa !119
  br label %790

753:                                              ; preds = %741, %734, %700, %688, %673, %655, %650, %630, %616, %604, %579
  %754 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %754, align 8, !tbaa !114
  %755 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %755, align 8, !tbaa !115
  %756 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %757 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 3
  store ptr %756, ptr %757, align 8, !tbaa !116
  %758 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i64 0, ptr %758, align 8, !tbaa !117
  %759 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 5
  store i64 0, ptr %759, align 8, !tbaa !118
  %760 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 11
  store i32 0, ptr %760, align 8, !tbaa !119
  br label %803

761:                                              ; preds = %742
  %762 = load ptr, ptr %275, align 8, !tbaa !59
  %763 = call i64 @call_ztell64(ptr noundef nonnull %0, ptr noundef %762) #17
  store i64 %763, ptr %581, align 8, !tbaa !120
  %764 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #17
  store i8 1, ptr %24, align 1, !tbaa !24
  %765 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 1
  store i8 0, ptr %765, align 1, !tbaa !24
  %766 = load ptr, ptr %584, align 8, !tbaa !112
  %767 = load ptr, ptr %586, align 8, !tbaa !66
  %768 = call i64 %766(ptr noundef %767, ptr noundef %764, ptr noundef nonnull %24, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #17
  %769 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #17
  store i8 16, ptr %23, align 1, !tbaa !24
  %770 = getelementptr inbounds [8 x i8], ptr %23, i64 0, i64 1
  store i8 0, ptr %770, align 1, !tbaa !24
  %771 = load ptr, ptr %584, align 8, !tbaa !112
  %772 = load ptr, ptr %586, align 8, !tbaa !66
  %773 = call i64 %771(ptr noundef %772, ptr noundef %769, ptr noundef nonnull %23, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #17
  %774 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #17
  store i64 0, ptr %22, align 8
  %775 = load ptr, ptr %584, align 8, !tbaa !112
  %776 = load ptr, ptr %586, align 8, !tbaa !66
  %777 = call i64 %775(ptr noundef %776, ptr noundef %774, ptr noundef nonnull %22, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #17
  %778 = load ptr, ptr %275, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #17
  store i64 0, ptr %21, align 8
  %779 = load ptr, ptr %584, align 8, !tbaa !112
  %780 = load ptr, ptr %586, align 8, !tbaa !66
  %781 = call i64 %779(ptr noundef %780, ptr noundef %778, ptr noundef nonnull %21, i64 noundef 8) #17
  %782 = icmp eq i64 %781, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #17
  %783 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %783, align 8, !tbaa !114
  %784 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %784, align 8, !tbaa !115
  %785 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %786 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 3
  store ptr %785, ptr %786, align 8, !tbaa !116
  %787 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 2
  store i64 0, ptr %787, align 8, !tbaa !117
  %788 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 5
  store i64 0, ptr %788, align 8, !tbaa !118
  %789 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 11
  store i32 0, ptr %789, align 8, !tbaa !119
  br i1 %782, label %790, label %803

790:                                              ; preds = %745, %761
  %791 = load i32, ptr %270, align 8, !tbaa !94
  %792 = icmp eq i32 %791, 8
  br i1 %792, label %793, label %806

793:                                              ; preds = %790
  %794 = load i32, ptr %274, align 4, !tbaa !97
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %806

796:                                              ; preds = %793
  %797 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 8
  %798 = call i32 @llvm.abs.i32(i32 %11, i1 false)
  %799 = sub i32 0, %798
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %797, i8 0, i64 24, i1 false)
  %800 = call i32 @deflateInit2_(ptr noundef nonnull %119, i32 noundef %9, i32 noundef 8, i32 noundef %799, i32 noundef %12, i32 noundef %13, ptr noundef nonnull @.str.1, i32 noundef 112) #17
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %803

802:                                              ; preds = %796
  store i32 8, ptr %272, align 8, !tbaa !61
  br label %806

803:                                              ; preds = %753, %796, %761
  %804 = phi i32 [ -1, %761 ], [ %800, %796 ], [ -1, %753 ]
  %805 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 21
  store i32 0, ptr %805, align 8, !tbaa !121
  br label %1037

806:                                              ; preds = %802, %793, %790
  %807 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 21
  store i32 0, ptr %807, align 8, !tbaa !121
  br i1 %131, label %1036, label %808

808:                                              ; preds = %806
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #17
  store i32 1, ptr %271, align 8, !tbaa !95
  %809 = call ptr @get_crc_table() #17
  %810 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 20
  store ptr %809, ptr %810, align 8, !tbaa !122
  %811 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %20) #17
  %812 = load i32, ptr @crypthead.calls, align 4, !tbaa !77
  %813 = add i32 %812, 1
  store i32 %813, ptr @crypthead.calls, align 4, !tbaa !77
  %814 = icmp eq i32 %812, 0
  br i1 %814, label %815, label %819

815:                                              ; preds = %808
  %816 = call i64 @time(ptr noundef null) #17
  %817 = trunc i64 %816 to i32
  %818 = xor i32 %817, -1153374642
  call void @srand(i32 noundef %818) #17
  br label %819

819:                                              ; preds = %815, %808
  store i64 305419896, ptr %811, align 8, !tbaa !71
  %820 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19, i64 1
  store i64 591751049, ptr %820, align 8, !tbaa !71
  %821 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19, i64 2
  store i64 878082192, ptr %821, align 8, !tbaa !71
  %822 = load i8, ptr %14, align 1, !tbaa !24
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %853, label %824

824:                                              ; preds = %819, %824
  %825 = phi i64 [ %849, %824 ], [ 878082192, %819 ]
  %826 = phi i64 [ %841, %824 ], [ 591751049, %819 ]
  %827 = phi i64 [ %837, %824 ], [ 305419896, %819 ]
  %828 = phi i8 [ %851, %824 ], [ %822, %819 ]
  %829 = phi ptr [ %850, %824 ], [ %14, %819 ]
  %830 = trunc i64 %827 to i8
  %831 = xor i8 %828, %830
  %832 = zext i8 %831 to i64
  %833 = getelementptr inbounds i32, ptr %809, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !77
  %835 = zext i32 %834 to i64
  %836 = lshr i64 %827, 8
  %837 = xor i64 %836, %835
  store i64 %837, ptr %811, align 8, !tbaa !71
  %838 = and i64 %837, 255
  %839 = add i64 %838, %826
  %840 = mul i64 %839, 134775813
  %841 = add i64 %840, 1
  store i64 %841, ptr %820, align 8, !tbaa !71
  %842 = lshr i64 %841, 24
  %843 = xor i64 %842, %825
  %844 = and i64 %843, 255
  %845 = getelementptr inbounds i32, ptr %809, i64 %844
  %846 = load i32, ptr %845, align 4, !tbaa !77
  %847 = zext i32 %846 to i64
  %848 = lshr i64 %825, 8
  %849 = xor i64 %848, %847
  store i64 %849, ptr %821, align 8, !tbaa !71
  %850 = getelementptr inbounds i8, ptr %829, i64 1
  %851 = load i8, ptr %850, align 1, !tbaa !24
  %852 = icmp eq i8 %851, 0
  br i1 %852, label %853, label %824, !llvm.loop !123

853:                                              ; preds = %824, %819
  br label %854

854:                                              ; preds = %853, %854
  %855 = phi i64 [ %891, %854 ], [ 0, %853 ]
  %856 = call i32 @rand() #17
  %857 = lshr i32 %856, 7
  %858 = load i64, ptr %821, align 8, !tbaa !71
  %859 = trunc i64 %858 to i32
  %860 = and i32 %859, 65533
  %861 = or i32 %859, 2
  %862 = xor i32 %860, 3
  %863 = mul i32 %862, %861
  %864 = lshr i32 %863, 8
  %865 = load i64, ptr %811, align 8, !tbaa !71
  %866 = trunc i64 %865 to i32
  %867 = xor i32 %857, %866
  %868 = and i32 %867, 255
  %869 = zext nneg i32 %868 to i64
  %870 = getelementptr inbounds i32, ptr %809, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !77
  %872 = zext i32 %871 to i64
  %873 = lshr i64 %865, 8
  %874 = xor i64 %873, %872
  store i64 %874, ptr %811, align 8, !tbaa !71
  %875 = and i64 %874, 255
  %876 = load i64, ptr %820, align 8, !tbaa !71
  %877 = add i64 %875, %876
  %878 = mul i64 %877, 134775813
  %879 = add i64 %878, 1
  store i64 %879, ptr %820, align 8, !tbaa !71
  %880 = lshr i64 %879, 24
  %881 = xor i64 %880, %858
  %882 = and i64 %881, 255
  %883 = getelementptr inbounds i32, ptr %809, i64 %882
  %884 = load i32, ptr %883, align 4, !tbaa !77
  %885 = zext i32 %884 to i64
  %886 = lshr i64 %858, 8
  %887 = xor i64 %886, %885
  store i64 %887, ptr %821, align 8, !tbaa !71
  %888 = xor i32 %864, %857
  %889 = trunc i32 %888 to i8
  %890 = getelementptr inbounds [10 x i8], ptr %20, i64 0, i64 %855
  store i8 %889, ptr %890, align 1, !tbaa !24
  %891 = add nuw nsw i64 %855, 1
  %892 = icmp eq i64 %891, 10
  br i1 %892, label %893, label %854, !llvm.loop !124

893:                                              ; preds = %854
  store i64 305419896, ptr %811, align 8, !tbaa !71
  store i64 591751049, ptr %820, align 8, !tbaa !71
  store i64 878082192, ptr %821, align 8, !tbaa !71
  %894 = load i8, ptr %14, align 1, !tbaa !24
  %895 = icmp eq i8 %894, 0
  br i1 %895, label %925, label %896

896:                                              ; preds = %893, %896
  %897 = phi i64 [ %921, %896 ], [ 878082192, %893 ]
  %898 = phi i64 [ %913, %896 ], [ 591751049, %893 ]
  %899 = phi i64 [ %909, %896 ], [ 305419896, %893 ]
  %900 = phi i8 [ %923, %896 ], [ %894, %893 ]
  %901 = phi ptr [ %922, %896 ], [ %14, %893 ]
  %902 = trunc i64 %899 to i8
  %903 = xor i8 %900, %902
  %904 = zext i8 %903 to i64
  %905 = getelementptr inbounds i32, ptr %809, i64 %904
  %906 = load i32, ptr %905, align 4, !tbaa !77
  %907 = zext i32 %906 to i64
  %908 = lshr i64 %899, 8
  %909 = xor i64 %908, %907
  store i64 %909, ptr %811, align 8, !tbaa !71
  %910 = and i64 %909, 255
  %911 = add i64 %910, %898
  %912 = mul i64 %911, 134775813
  %913 = add i64 %912, 1
  store i64 %913, ptr %820, align 8, !tbaa !71
  %914 = lshr i64 %913, 24
  %915 = xor i64 %914, %897
  %916 = and i64 %915, 255
  %917 = getelementptr inbounds i32, ptr %809, i64 %916
  %918 = load i32, ptr %917, align 4, !tbaa !77
  %919 = zext i32 %918 to i64
  %920 = lshr i64 %897, 8
  %921 = xor i64 %920, %919
  store i64 %921, ptr %821, align 8, !tbaa !71
  %922 = getelementptr inbounds i8, ptr %901, i64 1
  %923 = load i8, ptr %922, align 1, !tbaa !24
  %924 = icmp eq i8 %923, 0
  br i1 %924, label %925, label %896, !llvm.loop !123

925:                                              ; preds = %896, %893
  %926 = phi i64 [ 591751049, %893 ], [ %913, %896 ]
  %927 = phi i64 [ 305419896, %893 ], [ %909, %896 ]
  %928 = phi i64 [ 878082192, %893 ], [ %921, %896 ]
  br label %929

929:                                              ; preds = %925, %929
  %930 = phi i64 [ %953, %929 ], [ %926, %925 ]
  %931 = phi i64 [ %949, %929 ], [ %927, %925 ]
  %932 = phi i64 [ %961, %929 ], [ %928, %925 ]
  %933 = phi i64 [ %965, %929 ], [ 0, %925 ]
  %934 = trunc i64 %932 to i32
  %935 = and i32 %934, 65533
  %936 = or i32 %934, 2
  %937 = xor i32 %935, 3
  %938 = mul i32 %937, %936
  %939 = lshr i32 %938, 8
  %940 = getelementptr inbounds [10 x i8], ptr %20, i64 0, i64 %933
  %941 = load i8, ptr %940, align 1, !tbaa !24
  %942 = trunc i64 %931 to i8
  %943 = xor i8 %941, %942
  %944 = zext i8 %943 to i64
  %945 = getelementptr inbounds i32, ptr %809, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !77
  %947 = zext i32 %946 to i64
  %948 = lshr i64 %931, 8
  %949 = xor i64 %948, %947
  %950 = and i64 %949, 255
  %951 = add i64 %950, %930
  %952 = mul i64 %951, 134775813
  %953 = add i64 %952, 1
  %954 = lshr i64 %953, 24
  %955 = xor i64 %954, %932
  %956 = and i64 %955, 255
  %957 = getelementptr inbounds i32, ptr %809, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !77
  %959 = zext i32 %958 to i64
  %960 = lshr i64 %932, 8
  %961 = xor i64 %960, %959
  %962 = trunc i32 %939 to i8
  %963 = xor i8 %941, %962
  %964 = getelementptr inbounds i8, ptr %38, i64 %933
  store i8 %963, ptr %964, align 1, !tbaa !24
  %965 = add nuw nsw i64 %933, 1
  %966 = icmp eq i64 %965, 10
  br i1 %966, label %967, label %929, !llvm.loop !125

967:                                              ; preds = %929
  %968 = trunc i64 %961 to i32
  %969 = and i32 %968, 65533
  %970 = or i32 %968, 2
  %971 = xor i32 %969, 3
  %972 = mul i32 %971, %970
  %973 = lshr i32 %972, 8
  %974 = trunc i64 %15 to i32
  %975 = lshr i32 %974, 16
  %976 = trunc i64 %949 to i32
  %977 = xor i32 %975, %976
  %978 = and i32 %977, 255
  %979 = zext nneg i32 %978 to i64
  %980 = getelementptr inbounds i32, ptr %809, i64 %979
  %981 = load i32, ptr %980, align 4, !tbaa !77
  %982 = zext i32 %981 to i64
  %983 = lshr i64 %949, 8
  %984 = xor i64 %983, %982
  %985 = and i64 %984, 255
  %986 = add i64 %985, %953
  %987 = mul i64 %986, 134775813
  %988 = add i64 %987, 1
  %989 = lshr i64 %988, 24
  %990 = xor i64 %989, %961
  %991 = and i64 %990, 255
  %992 = getelementptr inbounds i32, ptr %809, i64 %991
  %993 = load i32, ptr %992, align 4, !tbaa !77
  %994 = zext i32 %993 to i64
  %995 = lshr i64 %961, 8
  %996 = xor i64 %995, %994
  %997 = xor i32 %973, %975
  %998 = trunc i32 %997 to i8
  %999 = getelementptr inbounds i8, ptr %38, i64 10
  store i8 %998, ptr %999, align 1, !tbaa !24
  %1000 = trunc i64 %996 to i32
  %1001 = and i32 %1000, 65533
  %1002 = or i32 %1000, 2
  %1003 = xor i32 %1001, 3
  %1004 = mul i32 %1003, %1002
  %1005 = lshr i32 %1004, 8
  %1006 = lshr i32 %974, 24
  %1007 = trunc i64 %984 to i32
  %1008 = and i32 %1007, 255
  %1009 = xor i32 %1008, %1006
  %1010 = zext nneg i32 %1009 to i64
  %1011 = getelementptr inbounds i32, ptr %809, i64 %1010
  %1012 = load i32, ptr %1011, align 4, !tbaa !77
  %1013 = zext i32 %1012 to i64
  %1014 = lshr i64 %984, 8
  %1015 = xor i64 %1014, %1013
  store i64 %1015, ptr %811, align 8, !tbaa !71
  %1016 = and i64 %1015, 255
  %1017 = add i64 %1016, %988
  %1018 = mul i64 %1017, 134775813
  %1019 = add i64 %1018, 1
  store i64 %1019, ptr %820, align 8, !tbaa !71
  %1020 = lshr i64 %1019, 24
  %1021 = xor i64 %1020, %996
  %1022 = and i64 %1021, 255
  %1023 = getelementptr inbounds i32, ptr %809, i64 %1022
  %1024 = load i32, ptr %1023, align 4, !tbaa !77
  %1025 = zext i32 %1024 to i64
  %1026 = lshr i64 %996, 8
  %1027 = xor i64 %1026, %1025
  store i64 %1027, ptr %821, align 8, !tbaa !71
  %1028 = xor i32 %1005, %1006
  %1029 = trunc i32 %1028 to i8
  %1030 = getelementptr inbounds i8, ptr %38, i64 11
  store i8 %1029, ptr %1030, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %20) #17
  store i32 12, ptr %807, align 8, !tbaa !121
  %1031 = load ptr, ptr %584, align 8, !tbaa !113
  %1032 = load ptr, ptr %586, align 8, !tbaa !63
  %1033 = load ptr, ptr %275, align 8, !tbaa !59
  %1034 = call i64 %1031(ptr noundef %1032, ptr noundef %1033, ptr noundef nonnull %38, i64 noundef 12) #17
  %1035 = icmp eq i64 %1034, 12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #17
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %967, %806
  store i32 1, ptr %60, align 8, !tbaa !80
  br label %1037

1037:                                             ; preds = %803, %967, %1036, %576, %63, %56, %50, %45, %19
  %1038 = phi i32 [ -102, %19 ], [ -102, %45 ], [ -102, %50 ], [ -102, %56 ], [ %64, %63 ], [ -104, %576 ], [ 0, %1036 ], [ -1, %967 ], [ %804, %803 ]
  ret i32 %1038
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipCloseFileInZip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @zipCloseFileInZipRaw64(ptr noundef %0, i64 noundef 0, i64 noundef 0)
  ret i32 %2
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @get_crc_table() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17) local_unnamed_addr #0 {
  %19 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef 0)
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15) local_unnamed_addr #0 {
  %17 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip3_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef 0, i64 noundef 0, i32 noundef %16)
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip2_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %11)
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %10)
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipOpenNewFileInZip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipWriteInFileInZip(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %120, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %120, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 13
  %12 = load i64, ptr %11, align 8, !tbaa !93
  %13 = tail call i64 @crc32(i64 noundef %12, ptr noundef %1, i32 noundef %2) #17
  store i64 %13, ptr %11, align 8, !tbaa !93
  store ptr %1, ptr %10, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 %2, ptr %14, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 4
  %16 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %17 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 9
  %19 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 10
  %20 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 5
  %22 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  br label %23

23:                                               ; preds = %9, %114
  %24 = load i32, ptr %14, align 8, !tbaa !114
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %120, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %15, align 8, !tbaa !115
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @zip64FlushWriteBuffer(ptr noundef nonnull %0), !range !68
  %31 = icmp eq i32 %30, -1
  store i32 65536, ptr %15, align 8, !tbaa !115
  store ptr %16, ptr %17, align 8, !tbaa !116
  br i1 %31, label %120, label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ 65536, %29 ], [ %27, %26 ]
  %34 = load i32, ptr %18, align 8, !tbaa !94
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, ptr %19, align 4, !tbaa !97
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, ptr %21, align 8, !tbaa !118
  %41 = tail call i32 @deflate(ptr noundef nonnull %10, i32 noundef 0) #17
  %42 = load i64, ptr %21, align 8, !tbaa !118
  %43 = sub i64 %42, %40
  %44 = trunc i64 %43 to i32
  br label %114

45:                                               ; preds = %36, %32
  %46 = load i32, ptr %14, align 8, !tbaa !114
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %33)
  %48 = icmp eq i32 %46, 0
  %49 = zext i32 %47 to i64
  br i1 %48, label %101, label %50

50:                                               ; preds = %45
  %51 = and i64 %49, 3
  %52 = icmp ult i32 %47, 4
  br i1 %52, label %84, label %53

53:                                               ; preds = %50
  %54 = and i64 %49, 4294967292
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %81, %55 ]
  %57 = phi i64 [ 0, %53 ], [ %82, %55 ]
  %58 = load ptr, ptr %10, align 8, !tbaa !126
  %59 = getelementptr inbounds i8, ptr %58, i64 %56
  %60 = load i8, ptr %59, align 1, !tbaa !24
  %61 = load ptr, ptr %17, align 8, !tbaa !116
  %62 = getelementptr inbounds i8, ptr %61, i64 %56
  store i8 %60, ptr %62, align 1, !tbaa !24
  %63 = or disjoint i64 %56, 1
  %64 = load ptr, ptr %10, align 8, !tbaa !126
  %65 = getelementptr inbounds i8, ptr %64, i64 %63
  %66 = load i8, ptr %65, align 1, !tbaa !24
  %67 = load ptr, ptr %17, align 8, !tbaa !116
  %68 = getelementptr inbounds i8, ptr %67, i64 %63
  store i8 %66, ptr %68, align 1, !tbaa !24
  %69 = or disjoint i64 %56, 2
  %70 = load ptr, ptr %10, align 8, !tbaa !126
  %71 = getelementptr inbounds i8, ptr %70, i64 %69
  %72 = load i8, ptr %71, align 1, !tbaa !24
  %73 = load ptr, ptr %17, align 8, !tbaa !116
  %74 = getelementptr inbounds i8, ptr %73, i64 %69
  store i8 %72, ptr %74, align 1, !tbaa !24
  %75 = or disjoint i64 %56, 3
  %76 = load ptr, ptr %10, align 8, !tbaa !126
  %77 = getelementptr inbounds i8, ptr %76, i64 %75
  %78 = load i8, ptr %77, align 1, !tbaa !24
  %79 = load ptr, ptr %17, align 8, !tbaa !116
  %80 = getelementptr inbounds i8, ptr %79, i64 %75
  store i8 %78, ptr %80, align 1, !tbaa !24
  %81 = add nuw nsw i64 %56, 4
  %82 = add i64 %57, 4
  %83 = icmp eq i64 %82, %54
  br i1 %83, label %84, label %55, !llvm.loop !127

84:                                               ; preds = %55, %50
  %85 = phi i64 [ 0, %50 ], [ %81, %55 ]
  %86 = icmp eq i64 %51, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %95, %87 ], [ %85, %84 ]
  %89 = phi i64 [ %96, %87 ], [ 0, %84 ]
  %90 = load ptr, ptr %10, align 8, !tbaa !126
  %91 = getelementptr inbounds i8, ptr %90, i64 %88
  %92 = load i8, ptr %91, align 1, !tbaa !24
  %93 = load ptr, ptr %17, align 8, !tbaa !116
  %94 = getelementptr inbounds i8, ptr %93, i64 %88
  store i8 %92, ptr %94, align 1, !tbaa !24
  %95 = add nuw nsw i64 %88, 1
  %96 = add i64 %89, 1
  %97 = icmp eq i64 %96, %51
  br i1 %97, label %98, label %87, !llvm.loop !128

98:                                               ; preds = %87, %84
  %99 = load i32, ptr %14, align 8, !tbaa !114
  %100 = load i32, ptr %15, align 8, !tbaa !115
  br label %101

101:                                              ; preds = %45, %98
  %102 = phi i32 [ %100, %98 ], [ %33, %45 ]
  %103 = phi i32 [ %99, %98 ], [ 0, %45 ]
  %104 = sub i32 %103, %47
  store i32 %104, ptr %14, align 8, !tbaa !114
  %105 = sub i32 %102, %47
  store i32 %105, ptr %15, align 8, !tbaa !115
  %106 = load ptr, ptr %10, align 8, !tbaa !126
  %107 = getelementptr inbounds i8, ptr %106, i64 %49
  store ptr %107, ptr %10, align 8, !tbaa !126
  %108 = load ptr, ptr %17, align 8, !tbaa !116
  %109 = getelementptr inbounds i8, ptr %108, i64 %49
  store ptr %109, ptr %17, align 8, !tbaa !116
  %110 = load i64, ptr %20, align 8, !tbaa !117
  %111 = add i64 %110, %49
  store i64 %111, ptr %20, align 8, !tbaa !117
  %112 = load i64, ptr %21, align 8, !tbaa !118
  %113 = add i64 %112, %49
  store i64 %113, ptr %21, align 8, !tbaa !118
  br label %114

114:                                              ; preds = %101, %39
  %115 = phi i32 [ %47, %101 ], [ %44, %39 ]
  %116 = phi i32 [ 0, %101 ], [ %41, %39 ]
  %117 = load i32, ptr %22, align 4, !tbaa !96
  %118 = add i32 %117, %115
  store i32 %118, ptr %22, align 4, !tbaa !96
  %119 = icmp eq i32 %116, 0
  br i1 %119, label %23, label %120, !llvm.loop !129

120:                                              ; preds = %29, %23, %114, %5, %3
  %121 = phi i32 [ -102, %3 ], [ -102, %5 ], [ -1, %29 ], [ %116, %114 ], [ 0, %23 ]
  ret i32 %121
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zip64FlushWriteBuffer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !95
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !96
  br i1 %4, label %54, label %7

7:                                                ; preds = %1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19
  %11 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 20
  %12 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19, i64 2
  %13 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 19, i64 1
  %14 = zext i32 %6 to i64
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %52, %15 ]
  %17 = load i64, ptr %12, align 8, !tbaa !71
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65533
  %20 = or i32 %18, 2
  %21 = xor i32 %19, 3
  %22 = mul i32 %21, %20
  %23 = lshr i32 %22, 8
  %24 = load ptr, ptr %11, align 8, !tbaa !122
  %25 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11, i64 %16
  %26 = load i8, ptr %25, align 1, !tbaa !24
  %27 = load i64, ptr %10, align 8, !tbaa !71
  %28 = trunc i64 %27 to i8
  %29 = xor i8 %26, %28
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i32, ptr %24, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !77
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %27, 8
  %35 = xor i64 %34, %33
  store i64 %35, ptr %10, align 8, !tbaa !71
  %36 = and i64 %35, 255
  %37 = load i64, ptr %13, align 8, !tbaa !71
  %38 = add i64 %36, %37
  %39 = mul i64 %38, 134775813
  %40 = add i64 %39, 1
  store i64 %40, ptr %13, align 8, !tbaa !71
  %41 = lshr i64 %40, 24
  %42 = xor i64 %41, %17
  %43 = and i64 %42, 255
  %44 = getelementptr inbounds i32, ptr %24, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !77
  %46 = zext i32 %45 to i64
  %47 = lshr i64 %17, 8
  %48 = xor i64 %47, %46
  store i64 %48, ptr %12, align 8, !tbaa !71
  %49 = load i8, ptr %25, align 1, !tbaa !24
  %50 = trunc i32 %23 to i8
  %51 = xor i8 %49, %50
  store i8 %51, ptr %25, align 1, !tbaa !24
  %52 = add nuw nsw i64 %16, 1
  %53 = icmp eq i64 %52, %14
  br i1 %53, label %54, label %15, !llvm.loop !130

54:                                               ; preds = %15, %1, %7
  %55 = phi i32 [ 0, %7 ], [ %6, %1 ], [ %6, %15 ]
  %56 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !113
  %58 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  %62 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %63 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  %64 = zext i32 %55 to i64
  %65 = tail call i64 %57(ptr noundef %59, ptr noundef %61, ptr noundef nonnull %62, i64 noundef %64) #17
  %66 = load i32, ptr %63, align 4, !tbaa !96
  %67 = zext i32 %66 to i64
  %68 = icmp ne i64 %65, %67
  %69 = sext i1 %68 to i32
  %70 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 17
  %71 = load i64, ptr %70, align 8, !tbaa !131
  %72 = add i64 %71, %67
  store i64 %72, ptr %70, align 8, !tbaa !131
  %73 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !117
  %75 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 18
  %76 = load i64, ptr %75, align 8, !tbaa !132
  %77 = add i64 %76, %74
  store i64 %77, ptr %75, align 8, !tbaa !132
  store i64 0, ptr %73, align 8, !tbaa !117
  store i32 0, ptr %63, align 4, !tbaa !96
  ret i32 %69
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @zipCloseFileInZipRaw(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @zipCloseFileInZipRaw64(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipCloseFileInZipRaw64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %426, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !80
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %426, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !94
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !97
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 4
  %26 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 11
  %27 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 5
  %29 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  br label %30

30:                                               ; preds = %24, %35
  %31 = load i32, ptr %25, align 8, !tbaa !115
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @zip64FlushWriteBuffer(ptr noundef nonnull %0), !range !68
  store i32 65536, ptr %25, align 8, !tbaa !115
  store ptr %26, ptr %27, align 8, !tbaa !116
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64, ptr %28, align 8, !tbaa !118
  %37 = tail call i32 @deflate(ptr noundef nonnull %15, i32 noundef 4) #17
  %38 = freeze i32 %37
  %39 = load i64, ptr %28, align 8, !tbaa !118
  %40 = sub i64 %39, %36
  %41 = trunc i64 %40 to i32
  %42 = load i32, ptr %29, align 4, !tbaa !96
  %43 = add i32 %42, %41
  store i32 %43, ptr %29, align 4, !tbaa !96
  switch i32 %38, label %52 [
    i32 0, label %30
    i32 1, label %44
  ]

44:                                               ; preds = %35, %14, %20
  %45 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !96
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @zip64FlushWriteBuffer(ptr noundef nonnull %0), !range !68
  %50 = icmp eq i32 %49, -1
  %51 = sext i1 %50 to i32
  br label %52

52:                                               ; preds = %35, %48, %44
  %53 = phi i32 [ 0, %44 ], [ %51, %48 ], [ %38, %35 ]
  %54 = load i32, ptr %17, align 8, !tbaa !94
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 10
  %58 = load i32, ptr %57, align 4, !tbaa !97
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = tail call i32 @deflateEnd(ptr noundef nonnull %15) #17
  %62 = icmp eq i32 %53, 0
  %63 = select i1 %62, i32 %61, i32 %53
  %64 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %64, align 8, !tbaa !61
  br label %65

65:                                               ; preds = %60, %56, %52
  %66 = phi i32 [ %53, %56 ], [ %63, %60 ], [ %53, %52 ]
  %67 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !97
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 13
  %72 = load i64, ptr %71, align 8, !tbaa !93
  %73 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 18
  %74 = load i64, ptr %73, align 8, !tbaa !132
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i64 [ %2, %65 ], [ %72, %70 ]
  %77 = phi i64 [ %1, %65 ], [ %74, %70 ]
  %78 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 17
  %79 = load i64, ptr %78, align 8, !tbaa !131
  %80 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 21
  %81 = load i32, ptr %80, align 8, !tbaa !121
  %82 = zext i32 %81 to i64
  %83 = add i64 %79, %82
  %84 = icmp ugt i64 %83, 4294967294
  %85 = icmp ugt i64 %77, 4294967294
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !98
  %90 = icmp ugt i64 %89, 4294967294
  br i1 %90, label %91, label %99

91:                                               ; preds = %87, %75
  %92 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !101
  %94 = getelementptr inbounds i8, ptr %93, i64 4
  store i8 45, ptr %94, align 1, !tbaa !24
  %95 = getelementptr inbounds i8, ptr %93, i64 5
  store i8 0, ptr %95, align 1, !tbaa !24
  %96 = load ptr, ptr %92, align 8, !tbaa !101
  %97 = getelementptr inbounds i8, ptr %96, i64 6
  store i8 45, ptr %97, align 1, !tbaa !24
  %98 = getelementptr inbounds i8, ptr %96, i64 7
  store i8 0, ptr %98, align 1, !tbaa !24
  br label %99

99:                                               ; preds = %91, %87
  %100 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !101
  %102 = getelementptr inbounds i8, ptr %101, i64 16
  %103 = trunc i64 %76 to i8
  store i8 %103, ptr %102, align 1, !tbaa !24
  %104 = lshr i64 %76, 8
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds i8, ptr %101, i64 17
  store i8 %105, ptr %106, align 1, !tbaa !24
  %107 = lshr i64 %76, 16
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds i8, ptr %101, i64 18
  store i8 %108, ptr %109, align 1, !tbaa !24
  %110 = lshr i64 %76, 24
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, ptr %101, i64 19
  store i8 %111, ptr %112, align 1, !tbaa !24
  %113 = icmp ugt i64 %76, 4294967295
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  store i32 -1, ptr %102, align 1
  br label %115

115:                                              ; preds = %99, %114
  %116 = load ptr, ptr %100, align 8, !tbaa !101
  %117 = getelementptr inbounds i8, ptr %116, i64 20
  br i1 %84, label %118, label %119

118:                                              ; preds = %115
  store i32 -1, ptr %117, align 1
  br label %130

119:                                              ; preds = %115
  %120 = trunc i64 %83 to i8
  store i8 %120, ptr %117, align 1, !tbaa !24
  %121 = lshr i64 %83, 8
  %122 = trunc i64 %121 to i8
  %123 = getelementptr inbounds i8, ptr %116, i64 21
  store i8 %122, ptr %123, align 1, !tbaa !24
  %124 = lshr i64 %83, 16
  %125 = trunc i64 %124 to i8
  %126 = getelementptr inbounds i8, ptr %116, i64 22
  store i8 %125, ptr %126, align 1, !tbaa !24
  %127 = lshr i64 %83, 24
  %128 = trunc i64 %127 to i8
  %129 = getelementptr inbounds i8, ptr %116, i64 23
  store i8 %128, ptr %129, align 1, !tbaa !24
  br label %130

130:                                              ; preds = %119, %118
  %131 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 0, i32 11
  %132 = load i32, ptr %131, align 8, !tbaa !119
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load ptr, ptr %100, align 8, !tbaa !101
  %136 = getelementptr inbounds i8, ptr %135, i64 36
  store i8 1, ptr %136, align 1, !tbaa !24
  %137 = getelementptr inbounds i8, ptr %135, i64 37
  store i8 0, ptr %137, align 1, !tbaa !24
  br label %138

138:                                              ; preds = %134, %130
  %139 = load ptr, ptr %100, align 8, !tbaa !101
  %140 = getelementptr inbounds i8, ptr %139, i64 24
  br i1 %85, label %141, label %142

141:                                              ; preds = %138
  store i32 -1, ptr %140, align 1
  br label %153

142:                                              ; preds = %138
  %143 = trunc i64 %77 to i8
  store i8 %143, ptr %140, align 1, !tbaa !24
  %144 = lshr i64 %77, 8
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds i8, ptr %139, i64 25
  store i8 %145, ptr %146, align 1, !tbaa !24
  %147 = lshr i64 %77, 16
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds i8, ptr %139, i64 26
  store i8 %148, ptr %149, align 1, !tbaa !24
  %150 = lshr i64 %77, 24
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds i8, ptr %139, i64 27
  store i8 %151, ptr %152, align 1, !tbaa !24
  br label %153

153:                                              ; preds = %142, %141
  %154 = phi i32 [ 0, %142 ], [ 8, %141 ]
  %155 = add nuw nsw i32 %154, 8
  %156 = select i1 %84, i32 %155, i32 %154
  %157 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 3
  %158 = load i64, ptr %157, align 8, !tbaa !98
  %159 = icmp ugt i64 %158, 4294967294
  %160 = add nuw nsw i32 %156, 8
  %161 = select i1 %159, i32 %160, i32 %156
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %272, label %163

163:                                              ; preds = %153
  %164 = or disjoint i32 %161, 4
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 7
  %167 = load i64, ptr %166, align 8, !tbaa !100
  %168 = icmp ult i64 %167, %165
  br i1 %168, label %426, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr %100, align 8, !tbaa !101
  %171 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 6
  %172 = load i64, ptr %171, align 8, !tbaa !99
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  store i8 1, ptr %173, align 1, !tbaa !24
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 0, ptr %174, align 1, !tbaa !24
  %175 = getelementptr inbounds i8, ptr %173, i64 2
  %176 = trunc i32 %161 to i8
  store i8 %176, ptr %175, align 1, !tbaa !24
  %177 = getelementptr inbounds i8, ptr %173, i64 3
  store i8 0, ptr %177, align 1, !tbaa !24
  %178 = getelementptr inbounds i8, ptr %173, i64 4
  br i1 %85, label %179, label %203

179:                                              ; preds = %169
  %180 = trunc i64 %77 to i8
  store i8 %180, ptr %178, align 1, !tbaa !24
  %181 = lshr i64 %77, 8
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds i8, ptr %173, i64 5
  store i8 %182, ptr %183, align 1, !tbaa !24
  %184 = lshr i64 %77, 16
  %185 = trunc i64 %184 to i8
  %186 = getelementptr inbounds i8, ptr %173, i64 6
  store i8 %185, ptr %186, align 1, !tbaa !24
  %187 = lshr i64 %77, 24
  %188 = trunc i64 %187 to i8
  %189 = getelementptr inbounds i8, ptr %173, i64 7
  store i8 %188, ptr %189, align 1, !tbaa !24
  %190 = lshr i64 %77, 32
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds i8, ptr %173, i64 8
  store i8 %191, ptr %192, align 1, !tbaa !24
  %193 = lshr i64 %77, 40
  %194 = trunc i64 %193 to i8
  %195 = getelementptr inbounds i8, ptr %173, i64 9
  store i8 %194, ptr %195, align 1, !tbaa !24
  %196 = lshr i64 %77, 48
  %197 = trunc i64 %196 to i8
  %198 = getelementptr inbounds i8, ptr %173, i64 10
  store i8 %197, ptr %198, align 1, !tbaa !24
  %199 = lshr i64 %77, 56
  %200 = trunc i64 %199 to i8
  %201 = getelementptr inbounds i8, ptr %173, i64 11
  store i8 %200, ptr %201, align 1, !tbaa !24
  %202 = getelementptr inbounds i8, ptr %173, i64 12
  br label %203

203:                                              ; preds = %179, %169
  %204 = phi ptr [ %202, %179 ], [ %178, %169 ]
  br i1 %84, label %205, label %229

205:                                              ; preds = %203
  %206 = trunc i64 %83 to i8
  store i8 %206, ptr %204, align 1, !tbaa !24
  %207 = lshr i64 %83, 8
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds i8, ptr %204, i64 1
  store i8 %208, ptr %209, align 1, !tbaa !24
  %210 = lshr i64 %83, 16
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds i8, ptr %204, i64 2
  store i8 %211, ptr %212, align 1, !tbaa !24
  %213 = lshr i64 %83, 24
  %214 = trunc i64 %213 to i8
  %215 = getelementptr inbounds i8, ptr %204, i64 3
  store i8 %214, ptr %215, align 1, !tbaa !24
  %216 = lshr i64 %83, 32
  %217 = trunc i64 %216 to i8
  %218 = getelementptr inbounds i8, ptr %204, i64 4
  store i8 %217, ptr %218, align 1, !tbaa !24
  %219 = lshr i64 %83, 40
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds i8, ptr %204, i64 5
  store i8 %220, ptr %221, align 1, !tbaa !24
  %222 = lshr i64 %83, 48
  %223 = trunc i64 %222 to i8
  %224 = getelementptr inbounds i8, ptr %204, i64 6
  store i8 %223, ptr %224, align 1, !tbaa !24
  %225 = lshr i64 %83, 56
  %226 = trunc i64 %225 to i8
  %227 = getelementptr inbounds i8, ptr %204, i64 7
  store i8 %226, ptr %227, align 1, !tbaa !24
  %228 = getelementptr inbounds i8, ptr %204, i64 8
  br label %229

229:                                              ; preds = %205, %203
  %230 = phi ptr [ %228, %205 ], [ %204, %203 ]
  %231 = load i64, ptr %157, align 8, !tbaa !98
  %232 = icmp ugt i64 %231, 4294967294
  br i1 %232, label %233, label %256

233:                                              ; preds = %229
  %234 = trunc i64 %231 to i8
  store i8 %234, ptr %230, align 1, !tbaa !24
  %235 = lshr i64 %231, 8
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 %236, ptr %237, align 1, !tbaa !24
  %238 = lshr i64 %231, 16
  %239 = trunc i64 %238 to i8
  %240 = getelementptr inbounds i8, ptr %230, i64 2
  store i8 %239, ptr %240, align 1, !tbaa !24
  %241 = lshr i64 %231, 24
  %242 = trunc i64 %241 to i8
  %243 = getelementptr inbounds i8, ptr %230, i64 3
  store i8 %242, ptr %243, align 1, !tbaa !24
  %244 = lshr i64 %231, 32
  %245 = trunc i64 %244 to i8
  %246 = getelementptr inbounds i8, ptr %230, i64 4
  store i8 %245, ptr %246, align 1, !tbaa !24
  %247 = lshr i64 %231, 40
  %248 = trunc i64 %247 to i8
  %249 = getelementptr inbounds i8, ptr %230, i64 5
  store i8 %248, ptr %249, align 1, !tbaa !24
  %250 = lshr i64 %231, 48
  %251 = trunc i64 %250 to i8
  %252 = getelementptr inbounds i8, ptr %230, i64 6
  store i8 %251, ptr %252, align 1, !tbaa !24
  %253 = lshr i64 %231, 56
  %254 = trunc i64 %253 to i8
  %255 = getelementptr inbounds i8, ptr %230, i64 7
  store i8 %254, ptr %255, align 1, !tbaa !24
  br label %256

256:                                              ; preds = %233, %229
  %257 = load i64, ptr %166, align 8, !tbaa !100
  %258 = sub i64 %257, %165
  store i64 %258, ptr %166, align 8, !tbaa !100
  %259 = load i64, ptr %171, align 8, !tbaa !99
  %260 = add i64 %259, %165
  store i64 %260, ptr %171, align 8, !tbaa !99
  %261 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 5
  %262 = load i64, ptr %261, align 8, !tbaa !102
  %263 = add i64 %262, %165
  store i64 %263, ptr %261, align 8, !tbaa !102
  %264 = load ptr, ptr %100, align 8, !tbaa !101
  %265 = getelementptr inbounds i8, ptr %264, i64 30
  %266 = trunc i64 %263 to i8
  store i8 %266, ptr %265, align 1, !tbaa !24
  %267 = lshr i64 %263, 8
  %268 = trunc i64 %267 to i8
  %269 = getelementptr inbounds i8, ptr %264, i64 31
  store i8 %268, ptr %269, align 1, !tbaa !24
  %270 = icmp ugt i64 %263, 65535
  br i1 %270, label %271, label %272

271:                                              ; preds = %256
  store i16 -1, ptr %265, align 1
  br label %272

272:                                              ; preds = %271, %256, %153
  %273 = icmp eq i32 %66, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %272
  %275 = load ptr, ptr %100, align 8, !tbaa !101
  tail call void @free(ptr noundef %275) #17
  br label %421

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 2
  %278 = load ptr, ptr %100, align 8, !tbaa !101
  %279 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 6
  %280 = load i64, ptr %279, align 8, !tbaa !99
  %281 = tail call fastcc i32 @add_data_in_datablock(ptr noundef nonnull %277, ptr noundef %278, i64 noundef %280)
  %282 = load ptr, ptr %100, align 8, !tbaa !101
  tail call void @free(ptr noundef %282) #17
  %283 = icmp eq i32 %281, 0
  br i1 %283, label %284, label %421

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !59
  %287 = tail call i64 @call_ztell64(ptr noundef nonnull %0, ptr noundef %286) #17
  %288 = load ptr, ptr %285, align 8, !tbaa !59
  %289 = load i64, ptr %157, align 8, !tbaa !98
  %290 = add i64 %289, 14
  %291 = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %288, i64 noundef %290, i32 noundef 0) #17
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %284
  %294 = load ptr, ptr %285, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store i8 %103, ptr %8, align 4, !tbaa !24
  %295 = getelementptr inbounds [8 x i8], ptr %8, i64 0, i64 1
  store i8 %105, ptr %295, align 1, !tbaa !24
  %296 = getelementptr inbounds [8 x i8], ptr %8, i64 0, i64 2
  store i8 %108, ptr %296, align 2, !tbaa !24
  %297 = getelementptr inbounds [8 x i8], ptr %8, i64 0, i64 3
  store i8 %111, ptr %297, align 1, !tbaa !24
  br i1 %113, label %298, label %299

298:                                              ; preds = %293
  store i32 -1, ptr %8, align 4
  br label %299

299:                                              ; preds = %298, %293
  %300 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !112
  %302 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %303 = load ptr, ptr %302, align 8, !tbaa !66
  %304 = call i64 %301(ptr noundef %303, ptr noundef %294, ptr noundef nonnull %8, i64 noundef 4) #17
  %305 = icmp ne i64 %304, 4
  %306 = sext i1 %305 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  %307 = or i1 %85, %84
  br i1 %307, label %310, label %381

308:                                              ; preds = %284
  %309 = or i1 %85, %84
  br i1 %309, label %310, label %415

310:                                              ; preds = %308, %299
  %311 = phi i32 [ -1, %308 ], [ %306, %299 ]
  %312 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 4, i32 16
  %313 = load i64, ptr %312, align 8, !tbaa !120
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %415, label %315

315:                                              ; preds = %310
  %316 = load ptr, ptr %285, align 8, !tbaa !59
  %317 = add i64 %313, 4
  %318 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %316, i64 noundef %317, i32 noundef 0) #17
  %319 = icmp eq i64 %318, 0
  %320 = icmp eq i32 %311, 0
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %322, label %415

322:                                              ; preds = %315
  %323 = load ptr, ptr %285, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %324 = trunc i64 %77 to i8
  store i8 %324, ptr %7, align 1, !tbaa !24
  %325 = lshr i64 %77, 8
  %326 = trunc i64 %325 to i8
  %327 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 1
  store i8 %326, ptr %327, align 1, !tbaa !24
  %328 = lshr i64 %77, 16
  %329 = trunc i64 %328 to i8
  %330 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 2
  store i8 %329, ptr %330, align 1, !tbaa !24
  %331 = lshr i64 %77, 24
  %332 = trunc i64 %331 to i8
  %333 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 3
  store i8 %332, ptr %333, align 1, !tbaa !24
  %334 = lshr i64 %77, 32
  %335 = trunc i64 %334 to i8
  %336 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 4
  store i8 %335, ptr %336, align 1, !tbaa !24
  %337 = lshr i64 %77, 40
  %338 = trunc i64 %337 to i8
  %339 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 5
  store i8 %338, ptr %339, align 1, !tbaa !24
  %340 = lshr i64 %77, 48
  %341 = trunc i64 %340 to i8
  %342 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 6
  store i8 %341, ptr %342, align 1, !tbaa !24
  %343 = lshr i64 %77, 56
  %344 = trunc i64 %343 to i8
  %345 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 7
  store i8 %344, ptr %345, align 1, !tbaa !24
  %346 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !112
  %348 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !66
  %350 = call i64 %347(ptr noundef %349, ptr noundef %323, ptr noundef nonnull %7, i64 noundef 8) #17
  %351 = icmp eq i64 %350, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br i1 %351, label %352, label %415

352:                                              ; preds = %322
  %353 = load ptr, ptr %285, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %354 = trunc i64 %83 to i8
  store i8 %354, ptr %6, align 1, !tbaa !24
  %355 = lshr i64 %83, 8
  %356 = trunc i64 %355 to i8
  %357 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 1
  store i8 %356, ptr %357, align 1, !tbaa !24
  %358 = lshr i64 %83, 16
  %359 = trunc i64 %358 to i8
  %360 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 2
  store i8 %359, ptr %360, align 1, !tbaa !24
  %361 = lshr i64 %83, 24
  %362 = trunc i64 %361 to i8
  %363 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 3
  store i8 %362, ptr %363, align 1, !tbaa !24
  %364 = lshr i64 %83, 32
  %365 = trunc i64 %364 to i8
  %366 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 4
  store i8 %365, ptr %366, align 1, !tbaa !24
  %367 = lshr i64 %83, 40
  %368 = trunc i64 %367 to i8
  %369 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 5
  store i8 %368, ptr %369, align 1, !tbaa !24
  %370 = lshr i64 %83, 48
  %371 = trunc i64 %370 to i8
  %372 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 6
  store i8 %371, ptr %372, align 1, !tbaa !24
  %373 = lshr i64 %83, 56
  %374 = trunc i64 %373 to i8
  %375 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 7
  store i8 %374, ptr %375, align 1, !tbaa !24
  %376 = load ptr, ptr %346, align 8, !tbaa !112
  %377 = load ptr, ptr %348, align 8, !tbaa !66
  %378 = call i64 %376(ptr noundef %377, ptr noundef %353, ptr noundef nonnull %6, i64 noundef 8) #17
  %379 = icmp ne i64 %378, 8
  %380 = sext i1 %379 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %415

381:                                              ; preds = %299
  br i1 %305, label %415, label %382

382:                                              ; preds = %381
  %383 = load ptr, ptr %285, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %384 = trunc i64 %83 to i8
  store i8 %384, ptr %5, align 1, !tbaa !24
  %385 = lshr i64 %83, 8
  %386 = trunc i64 %385 to i8
  %387 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 1
  store i8 %386, ptr %387, align 1, !tbaa !24
  %388 = lshr i64 %83, 16
  %389 = trunc i64 %388 to i8
  %390 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 2
  store i8 %389, ptr %390, align 1, !tbaa !24
  %391 = lshr i64 %83, 24
  %392 = trunc i64 %391 to i8
  %393 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 3
  store i8 %392, ptr %393, align 1, !tbaa !24
  %394 = load ptr, ptr %300, align 8, !tbaa !112
  %395 = load ptr, ptr %302, align 8, !tbaa !66
  %396 = call i64 %394(ptr noundef %395, ptr noundef %383, ptr noundef nonnull %5, i64 noundef 4) #17
  %397 = icmp eq i64 %396, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br i1 %397, label %398, label %415

398:                                              ; preds = %382
  %399 = load ptr, ptr %285, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %400 = trunc i64 %77 to i8
  store i8 %400, ptr %4, align 1, !tbaa !24
  %401 = lshr i64 %77, 8
  %402 = trunc i64 %401 to i8
  %403 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 1
  store i8 %402, ptr %403, align 1, !tbaa !24
  %404 = lshr i64 %77, 16
  %405 = trunc i64 %404 to i8
  %406 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 2
  store i8 %405, ptr %406, align 1, !tbaa !24
  %407 = lshr i64 %77, 24
  %408 = trunc i64 %407 to i8
  %409 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 3
  store i8 %408, ptr %409, align 1, !tbaa !24
  %410 = load ptr, ptr %300, align 8, !tbaa !112
  %411 = load ptr, ptr %302, align 8, !tbaa !66
  %412 = call i64 %410(ptr noundef %411, ptr noundef %399, ptr noundef nonnull %4, i64 noundef 4) #17
  %413 = icmp ne i64 %412, 4
  %414 = sext i1 %413 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %415

415:                                              ; preds = %308, %381, %315, %310, %382, %398, %352, %322
  %416 = phi i32 [ %380, %352 ], [ -1, %322 ], [ %414, %398 ], [ -1, %382 ], [ -103, %310 ], [ -1, %315 ], [ -1, %381 ], [ -1, %308 ]
  %417 = load ptr, ptr %285, align 8, !tbaa !59
  %418 = call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %417, i64 noundef %287, i32 noundef 0) #17
  %419 = icmp eq i64 %418, 0
  %420 = select i1 %419, i32 %416, i32 -1
  br label %421

421:                                              ; preds = %274, %415, %276
  %422 = phi i32 [ %420, %415 ], [ %281, %276 ], [ %66, %274 ]
  %423 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 7
  %424 = load i64, ptr %423, align 8, !tbaa !75
  %425 = add i64 %424, 1
  store i64 %425, ptr %423, align 8, !tbaa !75
  store i32 0, ptr %11, align 8, !tbaa !80
  br label %426

426:                                              ; preds = %163, %10, %3, %421
  %427 = phi i32 [ %422, %421 ], [ -102, %3 ], [ -102, %10 ], [ -103, %163 ]
  ret i32 %427
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @add_data_in_datablock(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %139, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.linkedlist_data_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = tail call noalias dereferenceable_or_null(4112) ptr @malloc(i64 noundef 4112) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %139

13:                                               ; preds = %9
  store ptr null, ptr %10, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %10, i64 0, i32 2
  store i64 0, ptr %14, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %10, i64 0, i32 1
  store i64 4080, ptr %15, align 8, !tbaa !134
  store ptr %10, ptr %6, align 8, !tbaa !133
  store ptr %10, ptr %0, align 8, !tbaa !33
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %10, %13 ], [ %7, %5 ]
  %18 = icmp eq i64 %2, 0
  br i1 %18, label %139, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %17, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !134
  br label %22

22:                                               ; preds = %19, %130
  %23 = phi i64 [ %135, %130 ], [ %21, %19 ]
  %24 = phi ptr [ %136, %130 ], [ %1, %19 ]
  %25 = phi ptr [ %42, %130 ], [ %17, %19 ]
  %26 = phi i64 [ %137, %130 ], [ %2, %19 ]
  %27 = ptrtoint ptr %24 to i64
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %25, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !36
  br label %39

32:                                               ; preds = %22
  %33 = tail call noalias dereferenceable_or_null(4112) ptr @malloc(i64 noundef 4112) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store ptr null, ptr %25, align 8, !tbaa !39
  br label %139

36:                                               ; preds = %32
  store ptr null, ptr %33, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %33, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !36
  %38 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %33, i64 0, i32 1
  store i64 4080, ptr %38, align 8, !tbaa !134
  store ptr %33, ptr %25, align 8, !tbaa !39
  store ptr %33, ptr %6, align 8, !tbaa !133
  br label %39

39:                                               ; preds = %29, %36
  %40 = phi i64 [ 0, %36 ], [ %31, %29 ]
  %41 = phi i64 [ 4080, %36 ], [ %23, %29 ]
  %42 = phi ptr [ %33, %36 ], [ %25, %29 ]
  %43 = ptrtoint ptr %42 to i64
  %44 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %42, i64 0, i32 1
  %45 = tail call i64 @llvm.umin.i64(i64 %41, i64 %26)
  %46 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %42, i64 0, i32 2
  %47 = getelementptr %struct.linkedlist_datablock_internal_s, ptr %42, i64 0, i32 4, i64 %40
  %48 = and i64 %45, 4294967295
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %130, label %50

50:                                               ; preds = %39
  %51 = and i64 %45, 4294967295
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %90, label %53

53:                                               ; preds = %50
  %54 = add i64 %40, 32
  %55 = add i64 %54, %43
  %56 = sub i64 %55, %27
  %57 = icmp ult i64 %56, 32
  br i1 %57, label %90, label %58

58:                                               ; preds = %53
  %59 = icmp ult i64 %51, 32
  br i1 %59, label %77, label %60

60:                                               ; preds = %58
  %61 = and i64 %45, 31
  %62 = sub nsw i64 %51, %61
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i64 [ 0, %60 ], [ %71, %63 ]
  %65 = getelementptr inbounds i8, ptr %24, i64 %64
  %66 = getelementptr inbounds i8, ptr %65, i64 16
  %67 = load <16 x i8>, ptr %65, align 1, !tbaa !24
  %68 = load <16 x i8>, ptr %66, align 1, !tbaa !24
  %69 = getelementptr inbounds i8, ptr %47, i64 %64
  %70 = getelementptr inbounds i8, ptr %69, i64 16
  store <16 x i8> %67, ptr %69, align 1, !tbaa !24
  store <16 x i8> %68, ptr %70, align 1, !tbaa !24
  %71 = add nuw i64 %64, 32
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %73, label %63, !llvm.loop !135

73:                                               ; preds = %63
  %74 = icmp eq i64 %61, 0
  br i1 %74, label %127, label %75

75:                                               ; preds = %73
  %76 = icmp ult i64 %61, 8
  br i1 %76, label %90, label %77

77:                                               ; preds = %58, %75
  %78 = phi i64 [ %62, %75 ], [ 0, %58 ]
  %79 = and i64 %45, 7
  %80 = sub nsw i64 %51, %79
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi i64 [ %78, %77 ], [ %86, %81 ]
  %83 = getelementptr inbounds i8, ptr %24, i64 %82
  %84 = load <8 x i8>, ptr %83, align 1, !tbaa !24
  %85 = getelementptr inbounds i8, ptr %47, i64 %82
  store <8 x i8> %84, ptr %85, align 1, !tbaa !24
  %86 = add nuw i64 %82, 8
  %87 = icmp eq i64 %86, %80
  br i1 %87, label %88, label %81, !llvm.loop !138

88:                                               ; preds = %81
  %89 = icmp eq i64 %79, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %53, %50, %75, %88
  %91 = phi i64 [ 0, %50 ], [ 0, %53 ], [ %62, %75 ], [ %80, %88 ]
  %92 = sub i64 %45, %91
  %93 = and i64 %92, 3
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %90, %95
  %96 = phi i64 [ %101, %95 ], [ %91, %90 ]
  %97 = phi i64 [ %102, %95 ], [ 0, %90 ]
  %98 = getelementptr inbounds i8, ptr %24, i64 %96
  %99 = load i8, ptr %98, align 1, !tbaa !24
  %100 = getelementptr inbounds i8, ptr %47, i64 %96
  store i8 %99, ptr %100, align 1, !tbaa !24
  %101 = add nuw nsw i64 %96, 1
  %102 = add i64 %97, 1
  %103 = icmp eq i64 %102, %93
  br i1 %103, label %104, label %95, !llvm.loop !139

104:                                              ; preds = %95, %90
  %105 = phi i64 [ %91, %90 ], [ %101, %95 ]
  %106 = sub nsw i64 %91, %51
  %107 = icmp ugt i64 %106, -4
  br i1 %107, label %127, label %108

108:                                              ; preds = %104, %108
  %109 = phi i64 [ %125, %108 ], [ %105, %104 ]
  %110 = getelementptr inbounds i8, ptr %24, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !24
  %112 = getelementptr inbounds i8, ptr %47, i64 %109
  store i8 %111, ptr %112, align 1, !tbaa !24
  %113 = add nuw nsw i64 %109, 1
  %114 = getelementptr inbounds i8, ptr %24, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !24
  %116 = getelementptr inbounds i8, ptr %47, i64 %113
  store i8 %115, ptr %116, align 1, !tbaa !24
  %117 = add nuw nsw i64 %109, 2
  %118 = getelementptr inbounds i8, ptr %24, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !24
  %120 = getelementptr inbounds i8, ptr %47, i64 %117
  store i8 %119, ptr %120, align 1, !tbaa !24
  %121 = add nuw nsw i64 %109, 3
  %122 = getelementptr inbounds i8, ptr %24, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !24
  %124 = getelementptr inbounds i8, ptr %47, i64 %121
  store i8 %123, ptr %124, align 1, !tbaa !24
  %125 = add nuw nsw i64 %109, 4
  %126 = icmp eq i64 %125, %51
  br i1 %126, label %127, label %108, !llvm.loop !140

127:                                              ; preds = %104, %108, %88, %73
  %128 = load i64, ptr %46, align 8, !tbaa !36
  %129 = load i64, ptr %44, align 8, !tbaa !134
  br label %130

130:                                              ; preds = %127, %39
  %131 = phi i64 [ %129, %127 ], [ %41, %39 ]
  %132 = phi i64 [ %128, %127 ], [ %40, %39 ]
  %133 = and i64 %45, 4294967295
  %134 = add i64 %132, %133
  store i64 %134, ptr %46, align 8, !tbaa !36
  %135 = sub i64 %131, %133
  store i64 %135, ptr %44, align 8, !tbaa !134
  %136 = getelementptr inbounds i8, ptr %24, i64 %133
  %137 = sub i64 %26, %133
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %22, !llvm.loop !141

139:                                              ; preds = %130, %16, %35, %12, %3
  %140 = phi i32 [ -104, %3 ], [ -104, %12 ], [ -104, %35 ], [ 0, %16 ], [ 0, %130 ]
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zipClose(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 2
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 4
  %6 = alloca [8 x i8], align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca [8 x i8], align 1
  %10 = alloca [8 x i8], align 1
  %11 = alloca [8 x i8], align 2
  %12 = alloca [8 x i8], align 2
  %13 = alloca [8 x i8], align 4
  %14 = alloca [8 x i8], align 4
  %15 = alloca [8 x i8], align 1
  %16 = alloca [8 x i8], align 4
  %17 = alloca [8 x i8], align 4
  %18 = alloca [8 x i8], align 1
  %19 = alloca [8 x i8], align 1
  %20 = alloca [8 x i8], align 1
  %21 = alloca [8 x i8], align 1
  %22 = alloca [8 x i8], align 4
  %23 = alloca [8 x i8], align 4
  %24 = alloca [8 x i8], align 1
  %25 = alloca [8 x i8], align 1
  %26 = alloca [8 x i8], align 1
  %27 = alloca [8 x i8], align 4
  %28 = icmp eq ptr %0, null
  br i1 %28, label %462, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !80
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @zipCloseFileInZipRaw64(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0)
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %34, %33 ], [ 0, %29 ]
  %37 = icmp eq ptr %1, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ %1, %35 ]
  %43 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = tail call i64 @call_ztell64(ptr noundef nonnull %0, ptr noundef %44) #17
  %46 = icmp eq i32 %36, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = icmp eq ptr %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  br label %54

54:                                               ; preds = %51, %72
  %55 = phi ptr [ %49, %51 ], [ %76, %72 ]
  %56 = phi i32 [ 0, %51 ], [ %74, %72 ]
  %57 = phi i64 [ 0, %51 ], [ %75, %72 ]
  %58 = icmp eq i32 %56, 0
  %59 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %55, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !36
  br i1 %58, label %61, label %72

61:                                               ; preds = %54
  %62 = icmp eq i64 %60, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %52, align 8, !tbaa !113
  %65 = load ptr, ptr %53, align 8, !tbaa !63
  %66 = load ptr, ptr %43, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %55, i64 0, i32 4
  %68 = tail call i64 %64(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %67, i64 noundef %60) #17
  %69 = load i64, ptr %59, align 8, !tbaa !36
  %70 = icmp ne i64 %68, %69
  %71 = sext i1 %70 to i32
  br label %72

72:                                               ; preds = %54, %63, %61
  %73 = phi i64 [ 0, %61 ], [ %69, %63 ], [ %60, %54 ]
  %74 = phi i32 [ 0, %61 ], [ %71, %63 ], [ -1, %54 ]
  %75 = add i64 %73, %57
  %76 = load ptr, ptr %55, align 8, !tbaa !28
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %54, !llvm.loop !142

78:                                               ; preds = %72, %47, %41
  %79 = phi i64 [ 0, %41 ], [ 0, %47 ], [ %75, %72 ]
  %80 = phi i32 [ %36, %41 ], [ 0, %47 ], [ %74, %72 ]
  %81 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78, %84
  %85 = phi ptr [ %86, %84 ], [ %82, %78 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  tail call void @free(ptr noundef nonnull %85) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %84, !llvm.loop !143

88:                                               ; preds = %84, %78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  %89 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 9
  tail call fastcc void @set_end(ptr noundef nonnull %89)
  %90 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 6
  %91 = load i64, ptr %90, align 8, !tbaa !73
  %92 = sub i64 %45, %91
  %93 = icmp ugt i64 %92, 4294967294
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 7
  %96 = load i64, ptr %95, align 8, !tbaa !75
  %97 = icmp ugt i64 %96, 65534
  br i1 %97, label %98, label %304

98:                                               ; preds = %94, %88
  %99 = load ptr, ptr %43, align 8, !tbaa !59
  %100 = tail call i64 @call_ztell64(ptr noundef nonnull %0, ptr noundef %99) #17
  %101 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #17
  store <4 x i8> <i8 80, i8 75, i8 6, i8 6>, ptr %27, align 4, !tbaa !24
  %102 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !112
  %104 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !66
  %106 = call i64 %103(ptr noundef %105, ptr noundef %101, ptr noundef nonnull %27, i64 noundef 4) #17
  %107 = icmp eq i64 %106, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #17
  br i1 %107, label %108, label %257

108:                                              ; preds = %98
  %109 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #17
  store i8 44, ptr %26, align 1, !tbaa !24
  %110 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %110, i8 0, i64 7, i1 false)
  %111 = load ptr, ptr %102, align 8, !tbaa !112
  %112 = load ptr, ptr %104, align 8, !tbaa !66
  %113 = call i64 %111(ptr noundef %112, ptr noundef %109, ptr noundef nonnull %26, i64 noundef 8) #17
  %114 = icmp eq i64 %113, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #17
  br i1 %114, label %115, label %257

115:                                              ; preds = %108
  %116 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #17
  store i8 45, ptr %25, align 1, !tbaa !24
  %117 = getelementptr inbounds [8 x i8], ptr %25, i64 0, i64 1
  store i8 0, ptr %117, align 1, !tbaa !24
  %118 = load ptr, ptr %102, align 8, !tbaa !112
  %119 = load ptr, ptr %104, align 8, !tbaa !66
  %120 = call i64 %118(ptr noundef %119, ptr noundef %116, ptr noundef nonnull %25, i64 noundef 2) #17
  %121 = icmp eq i64 %120, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #17
  br i1 %121, label %122, label %257

122:                                              ; preds = %115
  %123 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #17
  store i8 45, ptr %24, align 1, !tbaa !24
  %124 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 1
  store i8 0, ptr %124, align 1, !tbaa !24
  %125 = load ptr, ptr %102, align 8, !tbaa !112
  %126 = load ptr, ptr %104, align 8, !tbaa !66
  %127 = call i64 %125(ptr noundef %126, ptr noundef %123, ptr noundef nonnull %24, i64 noundef 2) #17
  %128 = icmp eq i64 %127, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #17
  br i1 %128, label %129, label %257

129:                                              ; preds = %122
  %130 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #17
  store i32 0, ptr %23, align 4
  %131 = load ptr, ptr %102, align 8, !tbaa !112
  %132 = load ptr, ptr %104, align 8, !tbaa !66
  %133 = call i64 %131(ptr noundef %132, ptr noundef %130, ptr noundef nonnull %23, i64 noundef 4) #17
  %134 = icmp eq i64 %133, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #17
  br i1 %134, label %135, label %257

135:                                              ; preds = %129
  %136 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #17
  store i32 0, ptr %22, align 4
  %137 = load ptr, ptr %102, align 8, !tbaa !112
  %138 = load ptr, ptr %104, align 8, !tbaa !66
  %139 = call i64 %137(ptr noundef %138, ptr noundef %136, ptr noundef nonnull %22, i64 noundef 4) #17
  %140 = icmp eq i64 %139, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #17
  br i1 %140, label %141, label %257

141:                                              ; preds = %135
  %142 = load ptr, ptr %43, align 8, !tbaa !59
  %143 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 7
  %144 = load i64, ptr %143, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #17
  %145 = trunc i64 %144 to i8
  store i8 %145, ptr %21, align 1, !tbaa !24
  %146 = lshr i64 %144, 8
  %147 = trunc i64 %146 to i8
  %148 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 1
  store i8 %147, ptr %148, align 1, !tbaa !24
  %149 = lshr i64 %144, 16
  %150 = trunc i64 %149 to i8
  %151 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 2
  store i8 %150, ptr %151, align 1, !tbaa !24
  %152 = lshr i64 %144, 24
  %153 = trunc i64 %152 to i8
  %154 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 3
  store i8 %153, ptr %154, align 1, !tbaa !24
  %155 = lshr i64 %144, 32
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 4
  store i8 %156, ptr %157, align 1, !tbaa !24
  %158 = lshr i64 %144, 40
  %159 = trunc i64 %158 to i8
  %160 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 5
  store i8 %159, ptr %160, align 1, !tbaa !24
  %161 = lshr i64 %144, 48
  %162 = trunc i64 %161 to i8
  %163 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 6
  store i8 %162, ptr %163, align 1, !tbaa !24
  %164 = lshr i64 %144, 56
  %165 = trunc i64 %164 to i8
  %166 = getelementptr inbounds [8 x i8], ptr %21, i64 0, i64 7
  store i8 %165, ptr %166, align 1, !tbaa !24
  %167 = load ptr, ptr %102, align 8, !tbaa !112
  %168 = load ptr, ptr %104, align 8, !tbaa !66
  %169 = call i64 %167(ptr noundef %168, ptr noundef %142, ptr noundef nonnull %21, i64 noundef 8) #17
  %170 = icmp eq i64 %169, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #17
  br i1 %170, label %171, label %257

171:                                              ; preds = %141
  %172 = load ptr, ptr %43, align 8, !tbaa !59
  %173 = load i64, ptr %143, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #17
  %174 = trunc i64 %173 to i8
  store i8 %174, ptr %20, align 1, !tbaa !24
  %175 = lshr i64 %173, 8
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 1
  store i8 %176, ptr %177, align 1, !tbaa !24
  %178 = lshr i64 %173, 16
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 2
  store i8 %179, ptr %180, align 1, !tbaa !24
  %181 = lshr i64 %173, 24
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 3
  store i8 %182, ptr %183, align 1, !tbaa !24
  %184 = lshr i64 %173, 32
  %185 = trunc i64 %184 to i8
  %186 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 4
  store i8 %185, ptr %186, align 1, !tbaa !24
  %187 = lshr i64 %173, 40
  %188 = trunc i64 %187 to i8
  %189 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 5
  store i8 %188, ptr %189, align 1, !tbaa !24
  %190 = lshr i64 %173, 48
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 6
  store i8 %191, ptr %192, align 1, !tbaa !24
  %193 = lshr i64 %173, 56
  %194 = trunc i64 %193 to i8
  %195 = getelementptr inbounds [8 x i8], ptr %20, i64 0, i64 7
  store i8 %194, ptr %195, align 1, !tbaa !24
  %196 = load ptr, ptr %102, align 8, !tbaa !112
  %197 = load ptr, ptr %104, align 8, !tbaa !66
  %198 = call i64 %196(ptr noundef %197, ptr noundef %172, ptr noundef nonnull %20, i64 noundef 8) #17
  %199 = icmp eq i64 %198, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #17
  br i1 %199, label %200, label %257

200:                                              ; preds = %171
  %201 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #17
  %202 = trunc i64 %79 to i8
  store i8 %202, ptr %19, align 1, !tbaa !24
  %203 = lshr i64 %79, 8
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 1
  store i8 %204, ptr %205, align 1, !tbaa !24
  %206 = lshr i64 %79, 16
  %207 = trunc i64 %206 to i8
  %208 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 2
  store i8 %207, ptr %208, align 1, !tbaa !24
  %209 = lshr i64 %79, 24
  %210 = trunc i64 %209 to i8
  %211 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 3
  store i8 %210, ptr %211, align 1, !tbaa !24
  %212 = lshr i64 %79, 32
  %213 = trunc i64 %212 to i8
  %214 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 4
  store i8 %213, ptr %214, align 1, !tbaa !24
  %215 = lshr i64 %79, 40
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 5
  store i8 %216, ptr %217, align 1, !tbaa !24
  %218 = lshr i64 %79, 48
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 6
  store i8 %219, ptr %220, align 1, !tbaa !24
  %221 = lshr i64 %79, 56
  %222 = trunc i64 %221 to i8
  %223 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 7
  store i8 %222, ptr %223, align 1, !tbaa !24
  %224 = load ptr, ptr %102, align 8, !tbaa !112
  %225 = load ptr, ptr %104, align 8, !tbaa !66
  %226 = call i64 %224(ptr noundef %225, ptr noundef %201, ptr noundef nonnull %19, i64 noundef 8) #17
  %227 = icmp eq i64 %226, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #17
  br i1 %227, label %228, label %257

228:                                              ; preds = %200
  %229 = load i64, ptr %90, align 8, !tbaa !73
  %230 = sub i64 %45, %229
  %231 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #17
  %232 = trunc i64 %230 to i8
  store i8 %232, ptr %18, align 1, !tbaa !24
  %233 = lshr i64 %230, 8
  %234 = trunc i64 %233 to i8
  %235 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 1
  store i8 %234, ptr %235, align 1, !tbaa !24
  %236 = lshr i64 %230, 16
  %237 = trunc i64 %236 to i8
  %238 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 2
  store i8 %237, ptr %238, align 1, !tbaa !24
  %239 = lshr i64 %230, 24
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 3
  store i8 %240, ptr %241, align 1, !tbaa !24
  %242 = lshr i64 %230, 32
  %243 = trunc i64 %242 to i8
  %244 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 4
  store i8 %243, ptr %244, align 1, !tbaa !24
  %245 = lshr i64 %230, 40
  %246 = trunc i64 %245 to i8
  %247 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 5
  store i8 %246, ptr %247, align 1, !tbaa !24
  %248 = lshr i64 %230, 48
  %249 = trunc i64 %248 to i8
  %250 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 6
  store i8 %249, ptr %250, align 1, !tbaa !24
  %251 = lshr i64 %230, 56
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds [8 x i8], ptr %18, i64 0, i64 7
  store i8 %252, ptr %253, align 1, !tbaa !24
  %254 = load ptr, ptr %102, align 8, !tbaa !112
  %255 = load ptr, ptr %104, align 8, !tbaa !66
  %256 = call i64 %254(ptr noundef %255, ptr noundef %231, ptr noundef nonnull %18, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #17
  br label %257

257:                                              ; preds = %98, %108, %115, %122, %129, %135, %141, %171, %200, %228
  %258 = load i64, ptr %90, align 8, !tbaa !73
  %259 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #17
  store <4 x i8> <i8 80, i8 75, i8 6, i8 7>, ptr %17, align 4, !tbaa !24
  %260 = sub i64 %100, %258
  %261 = load ptr, ptr %102, align 8, !tbaa !112
  %262 = load ptr, ptr %104, align 8, !tbaa !66
  %263 = call i64 %261(ptr noundef %262, ptr noundef %259, ptr noundef nonnull %17, i64 noundef 4) #17
  %264 = icmp eq i64 %263, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #17
  br i1 %264, label %265, label %304

265:                                              ; preds = %257
  %266 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #17
  store i32 0, ptr %16, align 4
  %267 = load ptr, ptr %102, align 8, !tbaa !112
  %268 = load ptr, ptr %104, align 8, !tbaa !66
  %269 = call i64 %267(ptr noundef %268, ptr noundef %266, ptr noundef nonnull %16, i64 noundef 4) #17
  %270 = icmp eq i64 %269, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #17
  br i1 %270, label %271, label %304

271:                                              ; preds = %265
  %272 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  %273 = trunc i64 %260 to i8
  store i8 %273, ptr %15, align 1, !tbaa !24
  %274 = lshr i64 %260, 8
  %275 = trunc i64 %274 to i8
  %276 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 1
  store i8 %275, ptr %276, align 1, !tbaa !24
  %277 = lshr i64 %260, 16
  %278 = trunc i64 %277 to i8
  %279 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 2
  store i8 %278, ptr %279, align 1, !tbaa !24
  %280 = lshr i64 %260, 24
  %281 = trunc i64 %280 to i8
  %282 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 3
  store i8 %281, ptr %282, align 1, !tbaa !24
  %283 = lshr i64 %260, 32
  %284 = trunc i64 %283 to i8
  %285 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 4
  store i8 %284, ptr %285, align 1, !tbaa !24
  %286 = lshr i64 %260, 40
  %287 = trunc i64 %286 to i8
  %288 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 5
  store i8 %287, ptr %288, align 1, !tbaa !24
  %289 = lshr i64 %260, 48
  %290 = trunc i64 %289 to i8
  %291 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 6
  store i8 %290, ptr %291, align 1, !tbaa !24
  %292 = lshr i64 %260, 56
  %293 = trunc i64 %292 to i8
  %294 = getelementptr inbounds [8 x i8], ptr %15, i64 0, i64 7
  store i8 %293, ptr %294, align 1, !tbaa !24
  %295 = load ptr, ptr %102, align 8, !tbaa !112
  %296 = load ptr, ptr %104, align 8, !tbaa !66
  %297 = call i64 %295(ptr noundef %296, ptr noundef %272, ptr noundef nonnull %15, i64 noundef 8) #17
  %298 = icmp eq i64 %297, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  br i1 %298, label %299, label %304

299:                                              ; preds = %271
  %300 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %14, align 4, !tbaa !24
  %301 = load ptr, ptr %102, align 8, !tbaa !112
  %302 = load ptr, ptr %104, align 8, !tbaa !66
  %303 = call i64 %301(ptr noundef %302, ptr noundef %300, ptr noundef nonnull %14, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  br label %304

304:                                              ; preds = %299, %271, %265, %257, %94
  %305 = icmp eq i32 %80, 0
  br i1 %305, label %306, label %447

306:                                              ; preds = %304
  %307 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  store <4 x i8> <i8 80, i8 75, i8 5, i8 6>, ptr %13, align 4, !tbaa !24
  %308 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !112
  %310 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %311 = load ptr, ptr %310, align 8, !tbaa !66
  %312 = call i64 %309(ptr noundef %311, ptr noundef %307, ptr noundef nonnull %13, i64 noundef 4) #17
  %313 = icmp eq i64 %312, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  br i1 %313, label %314, label %447

314:                                              ; preds = %306
  %315 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  store i16 0, ptr %12, align 2
  %316 = load ptr, ptr %308, align 8, !tbaa !112
  %317 = load ptr, ptr %310, align 8, !tbaa !66
  %318 = call i64 %316(ptr noundef %317, ptr noundef %315, ptr noundef nonnull %12, i64 noundef 2) #17
  %319 = icmp eq i64 %318, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  br i1 %319, label %320, label %447

320:                                              ; preds = %314
  %321 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  store i16 0, ptr %11, align 2
  %322 = load ptr, ptr %308, align 8, !tbaa !112
  %323 = load ptr, ptr %310, align 8, !tbaa !66
  %324 = call i64 %322(ptr noundef %323, ptr noundef %321, ptr noundef nonnull %11, i64 noundef 2) #17
  %325 = icmp eq i64 %324, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  br i1 %325, label %326, label %447

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 7
  %328 = load i64, ptr %327, align 8, !tbaa !75
  %329 = icmp ugt i64 %328, 65534
  %330 = load ptr, ptr %43, align 8, !tbaa !59
  br i1 %329, label %331, label %336

331:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  store i8 -1, ptr %10, align 1, !tbaa !24
  %332 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 1
  store i8 -1, ptr %332, align 1, !tbaa !24
  %333 = load ptr, ptr %308, align 8, !tbaa !112
  %334 = load ptr, ptr %310, align 8, !tbaa !66
  %335 = call i64 %333(ptr noundef %334, ptr noundef %330, ptr noundef nonnull %10, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  br label %344

336:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %337 = trunc i64 %328 to i8
  store i8 %337, ptr %9, align 1, !tbaa !24
  %338 = lshr i64 %328, 8
  %339 = trunc i64 %338 to i8
  %340 = getelementptr inbounds [8 x i8], ptr %9, i64 0, i64 1
  store i8 %339, ptr %340, align 1, !tbaa !24
  %341 = load ptr, ptr %308, align 8, !tbaa !112
  %342 = load ptr, ptr %310, align 8, !tbaa !66
  %343 = call i64 %341(ptr noundef %342, ptr noundef %330, ptr noundef nonnull %9, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  br label %344

344:                                              ; preds = %336, %331
  %345 = phi i64 [ %335, %331 ], [ %343, %336 ]
  %346 = icmp eq i64 %345, 2
  br i1 %346, label %347, label %447

347:                                              ; preds = %344
  %348 = load i64, ptr %327, align 8, !tbaa !75
  %349 = icmp ugt i64 %348, 65534
  %350 = load ptr, ptr %43, align 8, !tbaa !59
  br i1 %349, label %351, label %356

351:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store i8 -1, ptr %8, align 1, !tbaa !24
  %352 = getelementptr inbounds [8 x i8], ptr %8, i64 0, i64 1
  store i8 -1, ptr %352, align 1, !tbaa !24
  %353 = load ptr, ptr %308, align 8, !tbaa !112
  %354 = load ptr, ptr %310, align 8, !tbaa !66
  %355 = call i64 %353(ptr noundef %354, ptr noundef %350, ptr noundef nonnull %8, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %364

356:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %357 = trunc i64 %348 to i8
  store i8 %357, ptr %7, align 1, !tbaa !24
  %358 = lshr i64 %348, 8
  %359 = trunc i64 %358 to i8
  %360 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 1
  store i8 %359, ptr %360, align 1, !tbaa !24
  %361 = load ptr, ptr %308, align 8, !tbaa !112
  %362 = load ptr, ptr %310, align 8, !tbaa !66
  %363 = call i64 %361(ptr noundef %362, ptr noundef %350, ptr noundef nonnull %7, i64 noundef 2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %364

364:                                              ; preds = %356, %351
  %365 = phi i64 [ %355, %351 ], [ %363, %356 ]
  %366 = icmp eq i64 %365, 2
  br i1 %366, label %367, label %447

367:                                              ; preds = %364
  %368 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %369 = trunc i64 %79 to i8
  store i8 %369, ptr %6, align 4, !tbaa !24
  %370 = lshr i64 %79, 8
  %371 = trunc i64 %370 to i8
  %372 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 1
  store i8 %371, ptr %372, align 1, !tbaa !24
  %373 = lshr i64 %79, 16
  %374 = trunc i64 %373 to i8
  %375 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 2
  store i8 %374, ptr %375, align 2, !tbaa !24
  %376 = lshr i64 %79, 24
  %377 = trunc i64 %376 to i8
  %378 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 3
  store i8 %377, ptr %378, align 1, !tbaa !24
  %379 = icmp ugt i64 %79, 4294967295
  br i1 %379, label %380, label %381

380:                                              ; preds = %367
  store i32 -1, ptr %6, align 4
  br label %381

381:                                              ; preds = %380, %367
  %382 = load ptr, ptr %308, align 8, !tbaa !112
  %383 = load ptr, ptr %310, align 8, !tbaa !66
  %384 = call i64 %382(ptr noundef %383, ptr noundef %368, ptr noundef nonnull %6, i64 noundef 4) #17
  %385 = icmp eq i64 %384, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %385, label %386, label %447

386:                                              ; preds = %381
  %387 = load i64, ptr %90, align 8, !tbaa !73
  %388 = sub i64 %45, %387
  %389 = icmp ugt i64 %388, 4294967294
  %390 = load ptr, ptr %43, align 8, !tbaa !59
  br i1 %389, label %391, label %395

391:                                              ; preds = %386
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i32 -1, ptr %5, align 4
  %392 = load ptr, ptr %308, align 8, !tbaa !112
  %393 = load ptr, ptr %310, align 8, !tbaa !66
  %394 = call i64 %392(ptr noundef %393, ptr noundef %390, ptr noundef nonnull %5, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %409

395:                                              ; preds = %386
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %396 = trunc i64 %388 to i8
  store i8 %396, ptr %4, align 1, !tbaa !24
  %397 = lshr i64 %388, 8
  %398 = trunc i64 %397 to i8
  %399 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 1
  store i8 %398, ptr %399, align 1, !tbaa !24
  %400 = lshr i64 %388, 16
  %401 = trunc i64 %400 to i8
  %402 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 2
  store i8 %401, ptr %402, align 1, !tbaa !24
  %403 = lshr i64 %388, 24
  %404 = trunc i64 %403 to i8
  %405 = getelementptr inbounds [8 x i8], ptr %4, i64 0, i64 3
  store i8 %404, ptr %405, align 1, !tbaa !24
  %406 = load ptr, ptr %308, align 8, !tbaa !112
  %407 = load ptr, ptr %310, align 8, !tbaa !66
  %408 = call i64 %406(ptr noundef %407, ptr noundef %390, ptr noundef nonnull %4, i64 noundef 4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %409

409:                                              ; preds = %395, %391
  %410 = phi i64 [ %394, %391 ], [ %408, %395 ]
  %411 = icmp eq i64 %410, 4
  br i1 %411, label %412, label %447

412:                                              ; preds = %409
  %413 = icmp eq ptr %42, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %412
  %415 = load ptr, ptr %43, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i8 0, ptr %3, align 2, !tbaa !24
  %416 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %416, align 1, !tbaa !24
  br label %428

417:                                              ; preds = %412
  %418 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #18
  %419 = trunc i64 %418 to i32
  %420 = load ptr, ptr %43, align 8, !tbaa !59
  %421 = and i64 %418, 4294967295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %422 = trunc i64 %418 to i8
  store i8 %422, ptr %3, align 2, !tbaa !24
  %423 = lshr i64 %418, 8
  %424 = trunc i64 %423 to i8
  %425 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 1
  store i8 %424, ptr %425, align 1, !tbaa !24
  %426 = icmp ugt i32 %419, 65535
  br i1 %426, label %427, label %428

427:                                              ; preds = %417
  store i16 -1, ptr %3, align 2
  br label %428

428:                                              ; preds = %427, %417, %414
  %429 = phi i64 [ 0, %414 ], [ %421, %417 ], [ %421, %427 ]
  %430 = phi ptr [ %415, %414 ], [ %420, %417 ], [ %420, %427 ]
  %431 = phi i32 [ 0, %414 ], [ %419, %417 ], [ 1, %427 ]
  %432 = load ptr, ptr %308, align 8, !tbaa !112
  %433 = load ptr, ptr %310, align 8, !tbaa !66
  %434 = call i64 %432(ptr noundef %433, ptr noundef %430, ptr noundef nonnull %3, i64 noundef 2) #17
  %435 = icmp ne i64 %434, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %436 = icmp eq i32 %431, 0
  %437 = or i1 %436, %435
  br i1 %437, label %444, label %438

438:                                              ; preds = %428
  %439 = load ptr, ptr %308, align 8, !tbaa !113
  %440 = load ptr, ptr %310, align 8, !tbaa !63
  %441 = load ptr, ptr %43, align 8, !tbaa !59
  %442 = call i64 %439(ptr noundef %440, ptr noundef %441, ptr noundef %42, i64 noundef %429) #17
  %443 = icmp ne i64 %442, %429
  br label %444

444:                                              ; preds = %428, %438
  %445 = phi i1 [ %435, %428 ], [ %443, %438 ]
  %446 = sext i1 %445 to i32
  br label %447

447:                                              ; preds = %306, %314, %320, %344, %364, %381, %304, %444, %409
  %448 = phi i32 [ %446, %444 ], [ -1, %409 ], [ -1, %306 ], [ -1, %314 ], [ -1, %320 ], [ -1, %344 ], [ -1, %364 ], [ -1, %381 ], [ %80, %304 ]
  %449 = freeze i32 %448
  %450 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !62
  %452 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %453 = load ptr, ptr %452, align 8, !tbaa !63
  %454 = load ptr, ptr %43, align 8, !tbaa !59
  %455 = call i32 %451(ptr noundef %453, ptr noundef %454) #17
  %456 = icmp eq i32 %455, 0
  %457 = icmp eq i32 %449, 0
  %458 = select i1 %457, i32 -1, i32 %449
  %459 = select i1 %456, i32 %449, i32 %458
  %460 = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 8
  %461 = load ptr, ptr %460, align 8, !tbaa !64
  call void @free(ptr noundef %461) #17
  call void @free(ptr noundef nonnull %0) #17
  br label %462

462:                                              ; preds = %2, %447
  %463 = phi i32 [ %459, %447 ], [ -102, %2 ]
  ret i32 %463
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zipRemoveExtraInfoBlock(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4, !tbaa !77
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #20
  %13 = getelementptr inbounds i8, ptr %0, i64 %11
  br label %14

14:                                               ; preds = %10, %29
  %15 = phi ptr [ %32, %29 ], [ %0, %10 ]
  %16 = phi i32 [ %30, %29 ], [ 0, %10 ]
  %17 = load i16, ptr %15, align 2, !tbaa !78
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !78
  %20 = icmp eq i16 %17, %2
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = sext i16 %19 to i64
  %23 = add nsw i64 %22, 4
  br label %29

24:                                               ; preds = %14
  %25 = sext i16 %19 to i32
  %26 = add nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr nonnull align 1 %15, i64 %27, i1 false)
  %28 = add nsw i32 %26, %16
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i32 [ %16, %21 ], [ %28, %24 ]
  %31 = phi i64 [ %23, %21 ], [ %27, %24 ]
  %32 = getelementptr inbounds i8, ptr %15, i64 %31
  %33 = icmp ult ptr %32, %13
  br i1 %33, label %14, label %34, !llvm.loop !144

34:                                               ; preds = %29
  %35 = icmp slt i32 %30, %8
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %11, i1 false)
  %37 = icmp sgt i32 %30, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = zext nneg i32 %30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %12, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %38, %36
  store i32 %30, ptr %1, align 4, !tbaa !77
  br label %41

41:                                               ; preds = %34, %40
  %42 = phi i32 [ 0, %40 ], [ -1, %34 ]
  tail call void @free(ptr noundef %12) #17
  br label %43

43:                                               ; preds = %3, %7, %41
  %44 = phi i32 [ %42, %41 ], [ -102, %7 ], [ -102, %3 ]
  ret i32 %44
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @block_get2(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  br label %33

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi ptr [ %9, %7 ], [ %24, %26 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %11, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = load ptr, ptr %0, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %11, i64 0, i32 4
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %19, %18
  %21 = add i64 %20, %15
  store i64 %21, ptr %2, align 8, !tbaa !38
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load ptr, ptr %11, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  store ptr %24, ptr %8, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %24, i64 0, i32 4
  store ptr %27, ptr %0, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %24, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !36
  store i64 %29, ptr %2, align 8, !tbaa !38
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %10, label %31, !llvm.loop !42

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %24, i64 0, i32 4
  br label %33

33:                                               ; preds = %13, %31, %5
  %34 = phi ptr [ %6, %5 ], [ %32, %31 ], [ %16, %13 ]
  %35 = phi i64 [ %3, %5 ], [ %29, %31 ], [ %21, %13 ]
  %36 = add i64 %35, -1
  store i64 %36, ptr %2, align 8, !tbaa !38
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %37, ptr %0, align 8, !tbaa !35
  %38 = load i8, ptr %34, align 1, !tbaa !24
  %39 = zext i8 %38 to i32
  %40 = icmp eq i64 %36, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %10, %33
  %42 = phi i32 [ %39, %33 ], [ -1, %10 ]
  %43 = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  br label %47

45:                                               ; preds = %33
  %46 = load ptr, ptr %0, align 8, !tbaa !35
  br label %74

47:                                               ; preds = %23, %41
  %48 = phi ptr [ %44, %41 ], [ %11, %23 ]
  %49 = phi i32 [ %42, %41 ], [ -1, %23 ]
  %50 = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 2
  br label %51

51:                                               ; preds = %67, %47
  %52 = phi ptr [ %48, %47 ], [ %65, %67 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %52, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !36
  %57 = load ptr, ptr %0, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %52, i64 0, i32 4
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %60, %59
  %62 = add i64 %61, %56
  store i64 %62, ptr %2, align 8, !tbaa !38
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load ptr, ptr %52, align 8, !tbaa !39
  %66 = icmp eq ptr %65, null
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  store ptr %65, ptr %50, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %65, i64 0, i32 4
  store ptr %68, ptr %0, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %65, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !36
  store i64 %70, ptr %2, align 8, !tbaa !38
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %51, label %72, !llvm.loop !42

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %65, i64 0, i32 4
  br label %74

74:                                               ; preds = %54, %72, %45
  %75 = phi i32 [ %39, %45 ], [ %49, %72 ], [ %49, %54 ]
  %76 = phi ptr [ %46, %45 ], [ %73, %72 ], [ %57, %54 ]
  %77 = phi i64 [ %36, %45 ], [ %70, %72 ], [ %62, %54 ]
  %78 = add i64 %77, -1
  store i64 %78, ptr %2, align 8, !tbaa !38
  %79 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %79, ptr %0, align 8, !tbaa !35
  %80 = load i8, ptr %76, align 1, !tbaa !24
  %81 = zext i8 %80 to i32
  br label %82

82:                                               ; preds = %51, %64, %74
  %83 = phi i32 [ %75, %74 ], [ %49, %64 ], [ %49, %51 ]
  %84 = phi i32 [ %81, %74 ], [ -1, %64 ], [ -1, %51 ]
  %85 = icmp slt i32 %83, 0
  %86 = icmp slt i32 %84, 0
  %87 = select i1 %85, i1 true, i1 %86
  %88 = sext i32 %83 to i64
  %89 = sext i32 %84 to i64
  %90 = shl nsw i64 %89, 8
  %91 = or i64 %90, %88
  %92 = select i1 %87, i64 -1, i64 %91
  ret i64 %92
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @zip64local_getLong(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  %8 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = call i64 %9(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %7, i64 noundef 1) #17
  %13 = and i64 %12, 4294967295
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8, ptr %7, align 1, !tbaa !24
  %17 = zext i8 %16 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  %18 = zext i8 %16 to i64
  br label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = load ptr, ptr %10, align 8, !tbaa !66
  %23 = call i32 %21(ptr noundef %22, ptr noundef %1) #17
  %24 = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  br i1 %24, label %25, label %94

25:                                               ; preds = %15, %19
  %26 = phi i64 [ %18, %15 ], [ 0, %19 ]
  %27 = phi i32 [ %17, %15 ], [ 0, %19 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  %28 = load ptr, ptr %8, align 8, !tbaa !65
  %29 = load ptr, ptr %10, align 8, !tbaa !66
  %30 = call i64 %28(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %6, i64 noundef 1) #17
  %31 = and i64 %30, 4294967295
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i8, ptr %6, align 1, !tbaa !24
  %35 = zext i8 %34 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %36 = zext i8 %34 to i64
  %37 = shl nuw nsw i64 %36, 8
  %38 = or disjoint i64 %37, %26
  br label %48

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = load ptr, ptr %10, align 8, !tbaa !66
  %43 = call i32 %41(ptr noundef %42, ptr noundef %1) #17
  %44 = icmp eq i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %45 = shl nuw nsw i32 %27, 8
  %46 = zext nneg i32 %45 to i64
  %47 = or disjoint i64 %26, %46
  br i1 %44, label %48, label %94

48:                                               ; preds = %33, %39
  %49 = phi i64 [ %38, %33 ], [ %47, %39 ]
  %50 = phi i32 [ %35, %33 ], [ %27, %39 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  %51 = load ptr, ptr %8, align 8, !tbaa !65
  %52 = load ptr, ptr %10, align 8, !tbaa !66
  %53 = call i64 %51(ptr noundef %52, ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1) #17
  %54 = and i64 %53, 4294967295
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i8, ptr %5, align 1, !tbaa !24
  %58 = zext i8 %57 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  %59 = zext i8 %57 to i64
  br label %67

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = load ptr, ptr %10, align 8, !tbaa !66
  %64 = call i32 %62(ptr noundef %63, ptr noundef %1) #17
  %65 = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  %66 = zext nneg i32 %50 to i64
  br i1 %65, label %67, label %94

67:                                               ; preds = %56, %60
  %68 = phi i64 [ %59, %56 ], [ %66, %60 ]
  %69 = phi i32 [ %58, %56 ], [ %50, %60 ]
  %70 = shl nuw nsw i64 %68, 16
  %71 = add nuw nsw i64 %70, %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  %72 = load ptr, ptr %8, align 8, !tbaa !65
  %73 = load ptr, ptr %10, align 8, !tbaa !66
  %74 = call i64 %72(ptr noundef %73, ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1) #17
  %75 = and i64 %74, 4294967295
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i8, ptr %4, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 24
  %81 = add nuw nsw i64 %80, %71
  br label %94

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = load ptr, ptr %10, align 8, !tbaa !66
  %86 = call i32 %84(ptr noundef %85, ptr noundef %1) #17
  %87 = freeze i32 %86
  %88 = icmp ne i32 %87, 0
  %89 = sext i1 %88 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  %90 = zext nneg i32 %69 to i64
  %91 = shl nuw nsw i64 %90, 24
  %92 = add nuw nsw i64 %91, %71
  %93 = select i1 %88, i64 0, i64 %92
  br label %94

94:                                               ; preds = %82, %19, %39, %60, %77
  %95 = phi i32 [ 0, %77 ], [ -1, %60 ], [ -1, %39 ], [ -1, %19 ], [ %89, %82 ]
  %96 = phi i64 [ %81, %77 ], [ 0, %60 ], [ 0, %39 ], [ 0, %19 ], [ %93, %82 ]
  store i64 %96, ptr %2, align 8, !tbaa !71
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @zip64local_getLong64(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #17
  %12 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = call i64 %13(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %11, i64 noundef 1) #17
  %17 = and i64 %16, 4294967295
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8, ptr %11, align 1, !tbaa !24
  %21 = zext i8 %20 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  %22 = zext i8 %20 to i64
  br label %29

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = load ptr, ptr %14, align 8, !tbaa !66
  %27 = call i32 %25(ptr noundef %26, ptr noundef %1) #17
  %28 = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  br i1 %28, label %29, label %182

29:                                               ; preds = %19, %23
  %30 = phi i64 [ %22, %19 ], [ 0, %23 ]
  %31 = phi i32 [ %21, %19 ], [ 0, %23 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #17
  %32 = load ptr, ptr %12, align 8, !tbaa !65
  %33 = load ptr, ptr %14, align 8, !tbaa !66
  %34 = call i64 %32(ptr noundef %33, ptr noundef %1, ptr noundef nonnull %10, i64 noundef 1) #17
  %35 = and i64 %34, 4294967295
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i8, ptr %10, align 1, !tbaa !24
  %39 = zext i8 %38 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  %40 = zext i8 %38 to i64
  %41 = shl nuw nsw i64 %40, 8
  %42 = or disjoint i64 %41, %30
  br label %52

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = load ptr, ptr %14, align 8, !tbaa !66
  %47 = call i32 %45(ptr noundef %46, ptr noundef %1) #17
  %48 = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  %49 = shl nuw nsw i32 %31, 8
  %50 = zext nneg i32 %49 to i64
  %51 = or disjoint i64 %30, %50
  br i1 %48, label %52, label %182

52:                                               ; preds = %37, %43
  %53 = phi i64 [ %42, %37 ], [ %51, %43 ]
  %54 = phi i32 [ %39, %37 ], [ %31, %43 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #17
  %55 = load ptr, ptr %12, align 8, !tbaa !65
  %56 = load ptr, ptr %14, align 8, !tbaa !66
  %57 = call i64 %55(ptr noundef %56, ptr noundef %1, ptr noundef nonnull %9, i64 noundef 1) #17
  %58 = and i64 %57, 4294967295
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i8, ptr %9, align 1, !tbaa !24
  %62 = zext i8 %61 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  %63 = zext i8 %61 to i64
  br label %71

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = load ptr, ptr %14, align 8, !tbaa !66
  %68 = call i32 %66(ptr noundef %67, ptr noundef %1) #17
  %69 = icmp eq i32 %68, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  %70 = zext nneg i32 %54 to i64
  br i1 %69, label %71, label %182

71:                                               ; preds = %60, %64
  %72 = phi i64 [ %63, %60 ], [ %70, %64 ]
  %73 = phi i32 [ %62, %60 ], [ %54, %64 ]
  %74 = shl nuw nsw i64 %72, 16
  %75 = add nuw nsw i64 %74, %53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  %76 = load ptr, ptr %12, align 8, !tbaa !65
  %77 = load ptr, ptr %14, align 8, !tbaa !66
  %78 = call i64 %76(ptr noundef %77, ptr noundef %1, ptr noundef nonnull %8, i64 noundef 1) #17
  %79 = and i64 %78, 4294967295
  %80 = icmp eq i64 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i8, ptr %8, align 1, !tbaa !24
  %83 = zext i8 %82 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  %84 = zext i8 %82 to i64
  br label %92

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = load ptr, ptr %14, align 8, !tbaa !66
  %89 = call i32 %87(ptr noundef %88, ptr noundef %1) #17
  %90 = icmp eq i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  %91 = zext nneg i32 %73 to i64
  br i1 %90, label %92, label %182

92:                                               ; preds = %81, %85
  %93 = phi i64 [ %84, %81 ], [ %91, %85 ]
  %94 = phi i32 [ %83, %81 ], [ %73, %85 ]
  %95 = shl nuw nsw i64 %93, 24
  %96 = add nuw nsw i64 %75, %95
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  %97 = load ptr, ptr %12, align 8, !tbaa !65
  %98 = load ptr, ptr %14, align 8, !tbaa !66
  %99 = call i64 %97(ptr noundef %98, ptr noundef %1, ptr noundef nonnull %7, i64 noundef 1) #17
  %100 = and i64 %99, 4294967295
  %101 = icmp eq i64 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i8, ptr %7, align 1, !tbaa !24
  %104 = zext i8 %103 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  %105 = zext i8 %103 to i64
  br label %113

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  %109 = load ptr, ptr %14, align 8, !tbaa !66
  %110 = call i32 %108(ptr noundef %109, ptr noundef %1) #17
  %111 = icmp eq i32 %110, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  %112 = zext nneg i32 %94 to i64
  br i1 %111, label %113, label %182

113:                                              ; preds = %102, %106
  %114 = phi i64 [ %105, %102 ], [ %112, %106 ]
  %115 = phi i32 [ %104, %102 ], [ %94, %106 ]
  %116 = shl nuw nsw i64 %114, 32
  %117 = add nuw nsw i64 %96, %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  %118 = load ptr, ptr %12, align 8, !tbaa !65
  %119 = load ptr, ptr %14, align 8, !tbaa !66
  %120 = call i64 %118(ptr noundef %119, ptr noundef %1, ptr noundef nonnull %6, i64 noundef 1) #17
  %121 = and i64 %120, 4294967295
  %122 = icmp eq i64 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i8, ptr %6, align 1, !tbaa !24
  %125 = zext i8 %124 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %126 = zext i8 %124 to i64
  br label %134

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  %130 = load ptr, ptr %14, align 8, !tbaa !66
  %131 = call i32 %129(ptr noundef %130, ptr noundef %1) #17
  %132 = icmp eq i32 %131, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  %133 = zext nneg i32 %115 to i64
  br i1 %132, label %134, label %182

134:                                              ; preds = %123, %127
  %135 = phi i64 [ %126, %123 ], [ %133, %127 ]
  %136 = phi i32 [ %125, %123 ], [ %115, %127 ]
  %137 = shl nuw nsw i64 %135, 40
  %138 = add nuw nsw i64 %117, %137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  %139 = load ptr, ptr %12, align 8, !tbaa !65
  %140 = load ptr, ptr %14, align 8, !tbaa !66
  %141 = call i64 %139(ptr noundef %140, ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1) #17
  %142 = and i64 %141, 4294967295
  %143 = icmp eq i64 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i8, ptr %5, align 1, !tbaa !24
  %146 = zext i8 %145 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  %147 = zext i8 %145 to i64
  br label %155

148:                                              ; preds = %134
  %149 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  %151 = load ptr, ptr %14, align 8, !tbaa !66
  %152 = call i32 %150(ptr noundef %151, ptr noundef %1) #17
  %153 = icmp eq i32 %152, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  %154 = zext nneg i32 %136 to i64
  br i1 %153, label %155, label %182

155:                                              ; preds = %144, %148
  %156 = phi i64 [ %147, %144 ], [ %154, %148 ]
  %157 = phi i32 [ %146, %144 ], [ %136, %148 ]
  %158 = shl nuw nsw i64 %156, 48
  %159 = add nuw nsw i64 %138, %158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  %160 = load ptr, ptr %12, align 8, !tbaa !65
  %161 = load ptr, ptr %14, align 8, !tbaa !66
  %162 = call i64 %160(ptr noundef %161, ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1) #17
  %163 = and i64 %162, 4294967295
  %164 = icmp eq i64 %163, 1
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = load i8, ptr %4, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  %167 = zext i8 %166 to i64
  %168 = shl nuw i64 %167, 56
  %169 = add nuw i64 %168, %159
  br label %182

170:                                              ; preds = %155
  %171 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %0, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !70
  %173 = load ptr, ptr %14, align 8, !tbaa !66
  %174 = call i32 %172(ptr noundef %173, ptr noundef %1) #17
  %175 = freeze i32 %174
  %176 = icmp ne i32 %175, 0
  %177 = sext i1 %176 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  %178 = zext nneg i32 %157 to i64
  %179 = shl nuw i64 %178, 56
  %180 = add nuw i64 %179, %159
  %181 = select i1 %176, i64 0, i64 %180
  br label %182

182:                                              ; preds = %170, %23, %43, %64, %85, %106, %127, %148, %165
  %183 = phi i32 [ 0, %165 ], [ -1, %148 ], [ -1, %127 ], [ -1, %106 ], [ -1, %85 ], [ -1, %64 ], [ -1, %43 ], [ -1, %23 ], [ %177, %170 ]
  %184 = phi i64 [ %169, %165 ], [ 0, %148 ], [ 0, %127 ], [ 0, %106 ], [ 0, %85 ], [ 0, %64 ], [ 0, %43 ], [ 0, %23 ], [ %181, %170 ]
  store i64 %184, ptr %2, align 8, !tbaa !71
  ret i32 %183
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind returns_twice }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !9, i64 96}
!6 = !{!"", !7, i64 0, !9, i64 88, !12, i64 96, !13, i64 112, !14, i64 120, !16, i64 65920, !16, i64 65928, !16, i64 65936, !9, i64 65944, !17, i64 65952, !20, i64 66208}
!7 = !{!"zlib_filefunc64_32_def_s", !8, i64 0, !9, i64 64, !9, i64 72, !9, i64 80}
!8 = !{!"zlib_filefunc64_def_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"linkedlist_data_s", !9, i64 0, !9, i64 8}
!13 = !{!"int", !10, i64 0}
!14 = !{!"", !15, i64 0, !13, i64 112, !13, i64 116, !16, i64 120, !9, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !13, i64 168, !13, i64 172, !10, i64 176, !16, i64 65712, !16, i64 65720, !13, i64 65728, !13, i64 65732, !16, i64 65736, !16, i64 65744, !16, i64 65752, !10, i64 65760, !9, i64 65784, !13, i64 65792}
!15 = !{!"z_stream_s", !9, i64 0, !13, i64 8, !16, i64 16, !9, i64 24, !13, i64 32, !16, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !13, i64 88, !16, i64 96, !16, i64 104}
!16 = !{!"long", !10, i64 0}
!17 = !{!"set_s", !9, i64 0, !9, i64 8, !9, i64 16, !18, i64 24, !16, i64 32, !19, i64 40, !10, i64 56}
!18 = !{!"short", !10, i64 0}
!19 = !{!"", !16, i64 0, !16, i64 8}
!20 = !{!"", !9, i64 0, !16, i64 8, !9, i64 16}
!21 = !{!17, !9, i64 0}
!22 = !{!23, !9, i64 16}
!23 = !{!"set_node_s", !9, i64 0, !18, i64 8, !18, i64 10, !9, i64 16}
!24 = !{!10, !10, i64 0}
!25 = !{!23, !18, i64 8}
!26 = !{!23, !18, i64 10}
!27 = !{!17, !9, i64 8}
!28 = !{!9, !9, i64 0}
!29 = !{!17, !18, i64 24}
!30 = !{!19, !16, i64 8}
!31 = !{!19, !16, i64 0}
!32 = !{!17, !16, i64 32}
!33 = !{!12, !9, i64 0}
!34 = !{!20, !9, i64 16}
!35 = !{!20, !9, i64 0}
!36 = !{!37, !16, i64 16}
!37 = !{!"linkedlist_datablock_internal_s", !9, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !10, i64 32}
!38 = !{!20, !16, i64 8}
!39 = !{!37, !9, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = !{!6, !9, i64 66208}
!46 = !{i32 0, i32 2}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !41}
!51 = distinct !{!51, !49}
!52 = !{!17, !9, i64 16}
!53 = !{!23, !9, i64 0}
!54 = distinct !{!54, !41}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !41}
!58 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28}
!59 = !{!6, !9, i64 88}
!60 = !{!6, !16, i64 65920}
!61 = !{!6, !13, i64 232}
!62 = !{!6, !9, i64 40}
!63 = !{!6, !9, i64 56}
!64 = !{!6, !9, i64 65944}
!65 = !{!7, !9, i64 8}
!66 = !{!7, !9, i64 56}
!67 = distinct !{!67, !41}
!68 = !{i32 -1, i32 1}
!69 = distinct !{!69, !41}
!70 = !{!7, !9, i64 48}
!71 = !{!16, !16, i64 0}
!72 = !{!6, !9, i64 8}
!73 = !{!6, !16, i64 65928}
!74 = distinct !{!74, !41}
!75 = !{!6, !16, i64 65936}
!76 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28, i64 64, i64 8, !28, i64 72, i64 8, !28, i64 80, i64 8, !28, i64 88, i64 8, !28, i64 96, i64 8, !28, i64 104, i64 8, !28, i64 112, i64 4, !77, i64 120, i64 8, !28, i64 128, i64 4, !77, i64 136, i64 8, !71, i64 144, i64 8, !28, i64 152, i64 4, !77, i64 160, i64 8, !71, i64 168, i64 8, !28, i64 176, i64 8, !28, i64 184, i64 8, !28, i64 192, i64 8, !28, i64 200, i64 8, !28, i64 208, i64 4, !77, i64 216, i64 8, !71, i64 224, i64 8, !71, i64 232, i64 4, !77, i64 236, i64 4, !77, i64 240, i64 8, !71, i64 248, i64 8, !28, i64 256, i64 8, !71, i64 264, i64 8, !71, i64 272, i64 8, !71, i64 280, i64 8, !71, i64 288, i64 4, !77, i64 292, i64 4, !77, i64 296, i64 65536, !24, i64 65832, i64 8, !71, i64 65840, i64 8, !71, i64 65848, i64 4, !77, i64 65852, i64 4, !77, i64 65856, i64 8, !71, i64 65864, i64 8, !71, i64 65872, i64 8, !71, i64 65880, i64 24, !24, i64 65904, i64 8, !28, i64 65912, i64 4, !77, i64 65920, i64 8, !71, i64 65928, i64 8, !71, i64 65936, i64 8, !71, i64 65944, i64 8, !28, i64 65952, i64 8, !28, i64 65960, i64 8, !28, i64 65968, i64 8, !28, i64 65976, i64 2, !78, i64 65984, i64 8, !71, i64 65992, i64 8, !71, i64 66000, i64 8, !71, i64 66008, i64 200, !24, i64 66208, i64 8, !28, i64 66216, i64 8, !71, i64 66224, i64 8, !28}
!77 = !{!13, !13, i64 0}
!78 = !{!18, !18, i64 0}
!79 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 8, !28, i64 40, i64 8, !28, i64 48, i64 8, !28, i64 56, i64 8, !28}
!80 = !{!6, !13, i64 112}
!81 = !{!82, !16, i64 24}
!82 = !{!"", !83, i64 0, !16, i64 24, !16, i64 32, !16, i64 40}
!83 = !{!"tm_zip_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!84 = !{!83, !13, i64 20}
!85 = !{!83, !13, i64 12}
!86 = !{!83, !13, i64 16}
!87 = !{!83, !13, i64 0}
!88 = !{!83, !13, i64 4}
!89 = !{!83, !13, i64 8}
!90 = !{!6, !16, i64 65832}
!91 = !{!6, !16, i64 280}
!92 = distinct !{!92, !41}
!93 = !{!6, !16, i64 65840}
!94 = !{!6, !13, i64 288}
!95 = !{!6, !13, i64 65848}
!96 = !{!6, !13, i64 236}
!97 = !{!6, !13, i64 292}
!98 = !{!6, !16, i64 240}
!99 = !{!6, !16, i64 264}
!100 = !{!6, !16, i64 272}
!101 = !{!6, !9, i64 248}
!102 = !{!6, !16, i64 256}
!103 = !{!82, !16, i64 32}
!104 = !{!82, !16, i64 40}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !49}
!111 = !{!6, !13, i64 65852}
!112 = !{!7, !9, i64 16}
!113 = !{!6, !9, i64 16}
!114 = !{!6, !13, i64 128}
!115 = !{!6, !13, i64 152}
!116 = !{!6, !9, i64 144}
!117 = !{!6, !16, i64 136}
!118 = !{!6, !16, i64 160}
!119 = !{!6, !13, i64 208}
!120 = !{!6, !16, i64 65856}
!121 = !{!6, !13, i64 65912}
!122 = !{!6, !9, i64 65904}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = !{!6, !9, i64 120}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = !{!6, !16, i64 65864}
!132 = !{!6, !16, i64 65872}
!133 = !{!12, !9, i64 8}
!134 = !{!37, !16, i64 8}
!135 = distinct !{!135, !41, !136, !137}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = distinct !{!138, !41, !136, !137}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !41, !136}
!141 = distinct !{!141, !41}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !41}
