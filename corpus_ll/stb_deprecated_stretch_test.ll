; ModuleID = 'corpus_src/stb/deprecated/stretch_test.c'
source_filename = "corpus_src/stb/deprecated/stretch_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbtt_fontinfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf }
%struct.stbtt__buf = type { ptr, i32, i32 }
%struct.stbtt__csctx = type { i32, i32, float, float, float, float, i32, i32, i32, i32, ptr, i32 }
%struct.stbtt_vertex = type { i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.stbtt_kerningentry = type { i32, i32, i32 }
%struct.stbtt__point = type { float, float }
%struct.stbtt__edge = type { float, float, float, float, i32 }
%struct.stbtt__bitmap = type { i32, i32, i32, ptr }
%struct.stbtt__active_edge = type { ptr, float, float, float, float, float, float }
%struct.stbtt_bakedchar = type { i16, i16, i16, i16, float, float, float }
%struct.stbtt_aligned_quad = type { float, float, float, float, float, float, float, float }
%struct.stbtt_pack_context = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.stbrp_context = type { i32, i32, i32, i32, i32 }
%struct.stbtt_pack_range = type { float, i32, ptr, i32, ptr, i8, i8 }
%struct.stbrp_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.stbtt_packedchar = type { i16, i16, i16, i16, float, float, float, float, float }
%struct.stbds_array_header = type { i64, i64, ptr, i64 }
%struct.stbds_hash_index = type { ptr, i64, i64, i64, i64, i64, i64, i64, i64, %struct.stbds_string_arena, ptr }
%struct.stbds_string_arena = type { ptr, i64, i8, i8 }
%struct.stbds_hash_bucket = type { [8 x i64], [8 x i64] }
%struct.stbds_string_block = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"corpus_src/stb/stb_truetype.h\00", align 1
@__PRETTY_FUNCTION__.stbtt_FindGlyphIndex = private unnamed_addr constant [54 x i8] c"int stbtt_FindGlyphIndex(const stbtt_fontinfo *, int)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"h_oversample <= 8\00", align 1
@__PRETTY_FUNCTION__.stbtt_PackSetOversampling = private unnamed_addr constant [81 x i8] c"void stbtt_PackSetOversampling(stbtt_pack_context *, unsigned int, unsigned int)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"v_oversample <= 8\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"i != 0\00", align 1
@__PRETTY_FUNCTION__.stbtt_GetGlyphSDF = private unnamed_addr constant [124 x i8] c"unsigned char *stbtt_GetGlyphSDF(const stbtt_fontinfo *, float, int, int, unsigned char, float, int *, int *, int *, int *)\00", align 1
@stbds_hash_seed = internal unnamed_addr global i64 826366246, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"arrlen(arr) == 1000000\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"corpus_src/stb/deprecated/stretch_test.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"arr[i] == i\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"!info->cff.size\00", align 1
@__PRETTY_FUNCTION__.stbtt__GetGlyfOffset = private unnamed_addr constant [54 x i8] c"int stbtt__GetGlyfOffset(const stbtt_fontinfo *, int)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"i >= 0 && i < count\00", align 1
@__PRETTY_FUNCTION__.stbtt__cff_index_get = private unnamed_addr constant [49 x i8] c"stbtt__buf stbtt__cff_index_get(stbtt__buf, int)\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"offsize >= 1 && offsize <= 4\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"!(o > b->size || o < 0)\00", align 1
@__PRETTY_FUNCTION__.stbtt__buf_seek = private unnamed_addr constant [40 x i8] c"void stbtt__buf_seek(stbtt__buf *, int)\00", align 1
@__PRETTY_FUNCTION__.stbtt__cff_get_index = private unnamed_addr constant [46 x i8] c"stbtt__buf stbtt__cff_get_index(stbtt__buf *)\00", align 1
@__PRETTY_FUNCTION__.stbtt__cff_int = private unnamed_addr constant [42 x i8] c"stbtt_uint32 stbtt__cff_int(stbtt__buf *)\00", align 1
@__PRETTY_FUNCTION__.stbtt__GetGlyphShapeTT = private unnamed_addr constant [73 x i8] c"int stbtt__GetGlyphShapeTT(const stbtt_fontinfo *, int, stbtt_vertex **)\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"output_ctx.num_vertices == count_ctx.num_vertices\00", align 1
@__PRETTY_FUNCTION__.stbtt__GetGlyphShapeT2 = private unnamed_addr constant [73 x i8] c"int stbtt__GetGlyphShapeT2(const stbtt_fontinfo *, int, stbtt_vertex **)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"z->direction\00", align 1
@__PRETTY_FUNCTION__.stbtt__rasterize_sorted_edges = private unnamed_addr constant [95 x i8] c"void stbtt__rasterize_sorted_edges(stbtt__bitmap *, stbtt__edge *, int, int, int, int, void *)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"z->ey >= scan_y_top\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"z != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.stbtt__new_active = private unnamed_addr constant [89 x i8] c"stbtt__active_edge *stbtt__new_active(stbtt__hheap *, stbtt__edge *, int, float, void *)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"e->ey >= y_top\00", align 1
@__PRETTY_FUNCTION__.stbtt__fill_active_edges_new = private unnamed_addr constant [86 x i8] c"void stbtt__fill_active_edges_new(float *, float *, int, stbtt__active_edge *, float)\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"e->sy <= y_bottom && e->ey >= y_top\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"x >= 0 && x < len\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"dy >= 0\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"dx >= 0\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"fabs(area) <= 1.01f\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"sy1 > y_final-0.01f\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"y0 < y1\00", align 1
@__PRETTY_FUNCTION__.stbtt__handle_clipped_edge = private unnamed_addr constant [96 x i8] c"void stbtt__handle_clipped_edge(float *, int, stbtt__active_edge *, float, float, float, float)\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"e->sy <= e->ey\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"x1 <= x+1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"x1 >= x\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"x1 <= x\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"x1 >= x+1\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"x1 >= x && x1 <= x+1\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"top_width >= 0\00", align 1
@__PRETTY_FUNCTION__.stbtt__sized_trapezoid_area = private unnamed_addr constant [55 x i8] c"float stbtt__sized_trapezoid_area(float, float, float)\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"bottom_width >= 0\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"pixels[i] == 0\00", align 1
@__PRETTY_FUNCTION__.stbtt__h_prefilter = private unnamed_addr constant [70 x i8] c"void stbtt__h_prefilter(unsigned char *, int, int, int, unsigned int)\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"pixels[i*stride_in_bytes] == 0\00", align 1
@__PRETTY_FUNCTION__.stbtt__v_prefilter = private unnamed_addr constant [70 x i8] c"void stbtt__v_prefilter(unsigned char *, int, int, int, unsigned int)\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"x+gw < pw\00", align 1
@__PRETTY_FUNCTION__.stbtt_BakeFontBitmap_internal = private unnamed_addr constant [119 x i8] c"int stbtt_BakeFontBitmap_internal(unsigned char *, int, float, unsigned char *, int, int, int, int, stbtt_bakedchar *)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_FindGlyphIndex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i16
  %15 = or disjoint i16 %11, %14
  switch i16 %15, label %272 [
    i16 0, label %16
    i16 6, label %33
    i16 2, label %67
    i16 4, label %68
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %8, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr inbounds i8, ptr %8, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %20, %23
  %25 = add nsw i32 %24, -6
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %374

27:                                               ; preds = %16
  %28 = getelementptr inbounds i8, ptr %8, i64 6
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i32
  br label %374

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, ptr %8, i64 6
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = getelementptr inbounds i8, ptr %8, i64 7
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  %42 = icmp ugt i32 %41, %1
  br i1 %42, label %374, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds i8, ptr %8, i64 8
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds i8, ptr %8, i64 9
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = add nuw nsw i32 %51, %41
  %53 = icmp ugt i32 %52, %1
  br i1 %53, label %54, label %374

54:                                               ; preds = %43
  %55 = getelementptr inbounds i8, ptr %8, i64 10
  %56 = sub nsw i32 %1, %41
  %57 = shl nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  br label %374

67:                                               ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1514, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_FindGlyphIndex) #32
  unreachable

68:                                               ; preds = %2
  %69 = getelementptr inbounds i8, ptr %8, i64 6
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = getelementptr inbounds i8, ptr %8, i64 7
  %74 = load i8, ptr %73, align 1, !tbaa !13
  %75 = zext i8 %74 to i32
  %76 = or disjoint i32 %72, %75
  %77 = lshr i32 %76, 1
  %78 = icmp sgt i32 %1, 65535
  br i1 %78, label %374, label %79

79:                                               ; preds = %68
  %80 = add i32 %6, 14
  %81 = getelementptr inbounds i8, ptr %8, i64 12
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i16
  %84 = shl nuw i16 %83, 8
  %85 = getelementptr inbounds i8, ptr %8, i64 13
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = getelementptr inbounds i8, ptr %8, i64 10
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = zext i8 %88 to i16
  %90 = shl nuw i16 %89, 8
  %91 = getelementptr inbounds i8, ptr %8, i64 11
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = zext i8 %92 to i16
  %94 = or disjoint i16 %90, %93
  %95 = and i8 %86, -2
  %96 = zext i8 %95 to i16
  %97 = or disjoint i16 %84, %96
  %98 = zext i32 %80 to i64
  %99 = getelementptr inbounds i8, ptr %4, i64 %98
  %100 = zext i16 %97 to i64
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !13
  %107 = zext i8 %106 to i32
  %108 = or disjoint i32 %104, %107
  %109 = icmp sgt i32 %108, %1
  %110 = zext i16 %97 to i32
  %111 = select i1 %109, i32 0, i32 %110
  %112 = add i32 %6, 12
  %113 = add i32 %112, %111
  %114 = icmp eq i16 %94, 0
  br i1 %114, label %192, label %115

115:                                              ; preds = %79
  %116 = getelementptr inbounds i8, ptr %8, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !13
  %118 = zext i8 %117 to i16
  %119 = shl nuw i16 %118, 8
  %120 = getelementptr inbounds i8, ptr %8, i64 9
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = zext i8 %121 to i16
  %123 = or disjoint i16 %119, %122
  %124 = or disjoint i16 %90, %93
  %125 = and i16 %93, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %115
  %128 = lshr i16 %123, 1
  %129 = zext i32 %113 to i64
  %130 = getelementptr inbounds i8, ptr %4, i64 %129
  %131 = and i16 %128, 32766
  %132 = zext nneg i16 %131 to i64
  %133 = getelementptr inbounds i8, ptr %130, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = getelementptr inbounds i8, ptr %133, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i32
  %140 = or disjoint i32 %136, %139
  %141 = icmp slt i32 %140, %1
  %142 = zext nneg i16 %131 to i32
  %143 = select i1 %141, i32 %142, i32 0
  %144 = add i32 %143, %113
  %145 = add nsw i16 %94, -1
  br label %146

146:                                              ; preds = %127, %115
  %147 = phi i32 [ undef, %115 ], [ %144, %127 ]
  %148 = phi i16 [ %123, %115 ], [ %128, %127 ]
  %149 = phi i16 [ %94, %115 ], [ %145, %127 ]
  %150 = phi i32 [ %113, %115 ], [ %144, %127 ]
  %151 = icmp eq i16 %124, 1
  br i1 %151, label %192, label %152

152:                                              ; preds = %146, %152
  %153 = phi i16 [ %173, %152 ], [ %148, %146 ]
  %154 = phi i16 [ %190, %152 ], [ %149, %146 ]
  %155 = phi i32 [ %189, %152 ], [ %150, %146 ]
  %156 = lshr i16 %153, 1
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i8, ptr %4, i64 %157
  %159 = and i16 %156, 32766
  %160 = zext nneg i16 %159 to i64
  %161 = getelementptr inbounds i8, ptr %158, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !13
  %163 = zext i8 %162 to i32
  %164 = shl nuw nsw i32 %163, 8
  %165 = getelementptr inbounds i8, ptr %161, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !13
  %167 = zext i8 %166 to i32
  %168 = or disjoint i32 %164, %167
  %169 = icmp slt i32 %168, %1
  %170 = zext nneg i16 %159 to i32
  %171 = select i1 %169, i32 %170, i32 0
  %172 = add i32 %171, %155
  %173 = lshr i16 %153, 2
  %174 = zext i32 %172 to i64
  %175 = getelementptr inbounds i8, ptr %4, i64 %174
  %176 = and i16 %173, 16382
  %177 = zext nneg i16 %176 to i64
  %178 = getelementptr inbounds i8, ptr %175, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !13
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 8
  %182 = getelementptr inbounds i8, ptr %178, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !13
  %184 = zext i8 %183 to i32
  %185 = or disjoint i32 %181, %184
  %186 = icmp slt i32 %185, %1
  %187 = zext nneg i16 %176 to i32
  %188 = select i1 %186, i32 %187, i32 0
  %189 = add i32 %188, %172
  %190 = add i16 %154, -2
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %152, !llvm.loop !14

192:                                              ; preds = %146, %152, %79
  %193 = phi i32 [ %113, %79 ], [ %147, %146 ], [ %189, %152 ]
  %194 = sub i32 %193, %6
  %195 = add i32 %194, 131060
  %196 = getelementptr inbounds i8, ptr %8, i64 14
  %197 = and i32 %76, 65534
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = getelementptr inbounds i8, ptr %199, i64 2
  %201 = and i32 %195, 131070
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %200, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !13
  %205 = zext i8 %204 to i32
  %206 = shl nuw nsw i32 %205, 8
  %207 = getelementptr inbounds i8, ptr %203, i64 1
  %208 = load i8, ptr %207, align 1, !tbaa !13
  %209 = zext i8 %208 to i32
  %210 = or disjoint i32 %206, %209
  %211 = getelementptr inbounds i8, ptr %99, i64 %202
  %212 = load i8, ptr %211, align 1, !tbaa !13
  %213 = zext i8 %212 to i32
  %214 = shl nuw nsw i32 %213, 8
  %215 = getelementptr inbounds i8, ptr %211, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !13
  %217 = zext i8 %216 to i32
  %218 = or disjoint i32 %214, %217
  %219 = icmp sgt i32 %210, %1
  %220 = icmp slt i32 %218, %1
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %269, label %222

222:                                              ; preds = %192
  %223 = mul nuw nsw i32 %77, 6
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %196, i64 %224
  %226 = getelementptr inbounds i8, ptr %225, i64 2
  %227 = getelementptr inbounds i8, ptr %226, i64 %202
  %228 = load i8, ptr %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i16
  %230 = shl nuw i16 %229, 8
  %231 = getelementptr inbounds i8, ptr %227, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !13
  %233 = zext i8 %232 to i16
  %234 = or disjoint i16 %230, %233
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %222
  %237 = shl nuw nsw i32 %77, 2
  %238 = zext nneg i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %196, i64 %238
  %240 = getelementptr inbounds i8, ptr %239, i64 2
  %241 = getelementptr inbounds i8, ptr %240, i64 %202
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = zext i8 %242 to i32
  %244 = shl nuw nsw i32 %243, 8
  %245 = getelementptr inbounds i8, ptr %241, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !13
  %247 = zext i8 %246 to i32
  %248 = or disjoint i32 %244, %247
  %249 = add nuw nsw i32 %248, %1
  br label %269

250:                                              ; preds = %222
  %251 = zext i16 %234 to i64
  %252 = getelementptr inbounds i8, ptr %4, i64 %251
  %253 = sub nsw i32 %1, %210
  %254 = shl nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, ptr %252, i64 %255
  %257 = getelementptr inbounds i8, ptr %256, i64 %7
  %258 = getelementptr inbounds i8, ptr %257, i64 14
  %259 = getelementptr inbounds i8, ptr %258, i64 %224
  %260 = getelementptr inbounds i8, ptr %259, i64 2
  %261 = getelementptr inbounds i8, ptr %260, i64 %202
  %262 = load i8, ptr %261, align 1, !tbaa !13
  %263 = zext i8 %262 to i32
  %264 = shl nuw nsw i32 %263, 8
  %265 = getelementptr inbounds i8, ptr %261, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = zext i8 %266 to i32
  %268 = or disjoint i32 %264, %267
  br label %269

269:                                              ; preds = %192, %250, %236
  %270 = phi i32 [ %249, %236 ], [ %268, %250 ], [ 0, %192 ]
  %271 = and i32 %270, 65535
  br label %374

272:                                              ; preds = %2
  %273 = icmp eq i16 %15, 12
  %274 = and i16 %15, -2
  %275 = icmp eq i16 %274, 12
  br i1 %275, label %276, label %373

276:                                              ; preds = %272
  %277 = getelementptr inbounds i8, ptr %8, i64 12
  %278 = load i8, ptr %277, align 1, !tbaa !13
  %279 = zext i8 %278 to i32
  %280 = shl nuw i32 %279, 24
  %281 = getelementptr inbounds i8, ptr %8, i64 13
  %282 = load i8, ptr %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 16
  %285 = or disjoint i32 %284, %280
  %286 = getelementptr inbounds i8, ptr %8, i64 14
  %287 = load i8, ptr %286, align 1, !tbaa !13
  %288 = zext i8 %287 to i32
  %289 = shl nuw nsw i32 %288, 8
  %290 = or disjoint i32 %285, %289
  %291 = getelementptr inbounds i8, ptr %8, i64 15
  %292 = load i8, ptr %291, align 1, !tbaa !13
  %293 = zext i8 %292 to i32
  %294 = or disjoint i32 %290, %293
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %374

296:                                              ; preds = %276
  %297 = getelementptr inbounds i8, ptr %8, i64 16
  br label %298

298:                                              ; preds = %296, %369
  %299 = phi i32 [ %294, %296 ], [ %371, %369 ]
  %300 = phi i32 [ 0, %296 ], [ %370, %369 ]
  %301 = sub nsw i32 %299, %300
  %302 = ashr i32 %301, 1
  %303 = add nsw i32 %302, %300
  %304 = mul nsw i32 %303, 12
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %297, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !13
  %308 = zext i8 %307 to i32
  %309 = shl nuw i32 %308, 24
  %310 = getelementptr inbounds i8, ptr %306, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !13
  %312 = zext i8 %311 to i32
  %313 = shl nuw nsw i32 %312, 16
  %314 = or disjoint i32 %313, %309
  %315 = getelementptr inbounds i8, ptr %306, i64 2
  %316 = load i8, ptr %315, align 1, !tbaa !13
  %317 = zext i8 %316 to i32
  %318 = shl nuw nsw i32 %317, 8
  %319 = or disjoint i32 %314, %318
  %320 = getelementptr inbounds i8, ptr %306, i64 3
  %321 = load i8, ptr %320, align 1, !tbaa !13
  %322 = zext i8 %321 to i32
  %323 = or disjoint i32 %319, %322
  %324 = icmp ugt i32 %323, %1
  br i1 %324, label %369, label %325

325:                                              ; preds = %298
  %326 = getelementptr inbounds i8, ptr %306, i64 5
  %327 = load i8, ptr %326, align 1, !tbaa !13
  %328 = zext i8 %327 to i32
  %329 = shl nuw nsw i32 %328, 16
  %330 = getelementptr inbounds i8, ptr %306, i64 4
  %331 = load i8, ptr %330, align 1, !tbaa !13
  %332 = zext i8 %331 to i32
  %333 = shl nuw i32 %332, 24
  %334 = or disjoint i32 %333, %329
  %335 = getelementptr inbounds i8, ptr %306, i64 6
  %336 = load i8, ptr %335, align 1, !tbaa !13
  %337 = zext i8 %336 to i32
  %338 = shl nuw nsw i32 %337, 8
  %339 = or disjoint i32 %334, %338
  %340 = getelementptr inbounds i8, ptr %306, i64 7
  %341 = load i8, ptr %340, align 1, !tbaa !13
  %342 = zext i8 %341 to i32
  %343 = or disjoint i32 %339, %342
  %344 = icmp ult i32 %343, %1
  br i1 %344, label %345, label %347

345:                                              ; preds = %325
  %346 = add nsw i32 %303, 1
  br label %369

347:                                              ; preds = %325
  %348 = getelementptr inbounds i8, ptr %306, i64 8
  %349 = load i8, ptr %348, align 1, !tbaa !13
  %350 = zext i8 %349 to i32
  %351 = shl nuw i32 %350, 24
  %352 = getelementptr inbounds i8, ptr %306, i64 9
  %353 = load i8, ptr %352, align 1, !tbaa !13
  %354 = zext i8 %353 to i32
  %355 = shl nuw nsw i32 %354, 16
  %356 = or disjoint i32 %355, %351
  %357 = getelementptr inbounds i8, ptr %306, i64 10
  %358 = load i8, ptr %357, align 1, !tbaa !13
  %359 = zext i8 %358 to i32
  %360 = shl nuw nsw i32 %359, 8
  %361 = or disjoint i32 %356, %360
  %362 = getelementptr inbounds i8, ptr %306, i64 11
  %363 = load i8, ptr %362, align 1, !tbaa !13
  %364 = zext i8 %363 to i32
  %365 = or disjoint i32 %361, %364
  %366 = sub i32 %1, %323
  %367 = select i1 %273, i32 %366, i32 0
  %368 = add i32 %365, %367
  br label %374

369:                                              ; preds = %345, %298
  %370 = phi i32 [ %346, %345 ], [ %300, %298 ]
  %371 = phi i32 [ %299, %345 ], [ %303, %298 ]
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %298, label %374, !llvm.loop !16

373:                                              ; preds = %272
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_FindGlyphIndex) #32
  unreachable

374:                                              ; preds = %369, %276, %347, %269, %68, %54, %43, %33, %27, %16
  %375 = phi i32 [ %32, %27 ], [ 0, %16 ], [ %66, %54 ], [ 0, %43 ], [ 0, %33 ], [ %271, %269 ], [ 0, %68 ], [ %368, %347 ], [ 0, %276 ], [ 0, %369 ]
  ret i32 %375
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_GetCodepointShape(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %5 = tail call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %4, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_GetGlyphShape(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stbtt__csctx, align 8
  %5 = alloca %struct.stbtt__csctx, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %778

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull %0, i32 noundef %1)
  store ptr null, ptr %2, align 8, !tbaa !18
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %799, label %15

15:                                               ; preds = %10
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 8
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i16
  %24 = or disjoint i16 %20, %23
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %392

26:                                               ; preds = %15
  %27 = getelementptr inbounds i8, ptr %17, i64 10
  %28 = shl nuw i16 %24, 1
  %29 = zext i16 %28 to i32
  %30 = zext i16 %28 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = getelementptr inbounds i8, ptr %31, i64 -2
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = getelementptr inbounds i8, ptr %31, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = or disjoint i32 %38, %41
  %43 = or disjoint i32 %29, 1
  %44 = add nuw nsw i32 %43, %42
  %45 = mul nuw nsw i32 %44, 14
  %46 = zext nneg i32 %45 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #33
  %48 = icmp eq ptr %47, null
  br i1 %48, label %799, label %49

49:                                               ; preds = %26
  %50 = zext i8 %32 to i64
  %51 = shl nuw nsw i64 %50, 8
  %52 = zext i8 %34 to i64
  %53 = or disjoint i64 %51, %52
  %54 = getelementptr inbounds i8, ptr %31, i64 2
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  %56 = zext i16 %28 to i64
  %57 = or disjoint i32 %38, %41
  %58 = add nuw nsw i32 %57, 1
  %59 = zext nneg i32 %58 to i64
  br label %60

60:                                               ; preds = %49, %76
  %61 = phi i64 [ 0, %49 ], [ %82, %76 ]
  %62 = phi i8 [ 0, %49 ], [ %79, %76 ]
  %63 = phi i8 [ 0, %49 ], [ %78, %76 ]
  %64 = phi ptr [ %55, %49 ], [ %77, %76 ]
  %65 = icmp eq i8 %63, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, ptr %64, i64 1
  %68 = load i8, ptr %64, align 1, !tbaa !13
  %69 = and i8 %68, 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds i8, ptr %64, i64 2
  %73 = load i8, ptr %67, align 1, !tbaa !13
  br label %76

74:                                               ; preds = %60
  %75 = add i8 %63, -1
  br label %76

76:                                               ; preds = %74, %71, %66
  %77 = phi ptr [ %72, %71 ], [ %67, %66 ], [ %64, %74 ]
  %78 = phi i8 [ %73, %71 ], [ 0, %66 ], [ %75, %74 ]
  %79 = phi i8 [ %68, %71 ], [ %68, %66 ], [ %62, %74 ]
  %80 = add nuw nsw i64 %61, %56
  %81 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %80, i32 6
  store i8 %79, ptr %81, align 2, !tbaa !19
  %82 = add nuw nsw i64 %61, 1
  %83 = icmp eq i64 %82, %59
  br i1 %83, label %84, label %60, !llvm.loop !22

84:                                               ; preds = %76, %117
  %85 = phi i64 [ %120, %117 ], [ 0, %76 ]
  %86 = phi ptr [ %119, %117 ], [ %77, %76 ]
  %87 = phi i16 [ %118, %117 ], [ 0, %76 ]
  %88 = add nuw nsw i64 %85, %56
  %89 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %88
  %90 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %88, i32 6
  %91 = load i8, ptr %90, align 2, !tbaa !19
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %84
  %96 = getelementptr inbounds i8, ptr %86, i64 1
  %97 = load i8, ptr %86, align 1, !tbaa !13
  %98 = and i32 %92, 16
  %99 = icmp eq i32 %98, 0
  %100 = zext i8 %97 to i16
  %101 = sub nsw i16 0, %100
  %102 = select i1 %99, i16 %101, i16 %100
  %103 = add i16 %102, %87
  br label %117

104:                                              ; preds = %84
  %105 = and i32 %92, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i8, ptr %86, align 1, !tbaa !13
  %109 = zext i8 %108 to i16
  %110 = shl nuw i16 %109, 8
  %111 = getelementptr inbounds i8, ptr %86, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = zext i8 %112 to i16
  %114 = or disjoint i16 %110, %113
  %115 = add i16 %114, %87
  %116 = getelementptr inbounds i8, ptr %86, i64 2
  br label %117

117:                                              ; preds = %107, %104, %95
  %118 = phi i16 [ %103, %95 ], [ %87, %104 ], [ %115, %107 ]
  %119 = phi ptr [ %96, %95 ], [ %86, %104 ], [ %116, %107 ]
  store i16 %118, ptr %89, align 2, !tbaa !23
  %120 = add nuw nsw i64 %85, 1
  %121 = icmp eq i64 %120, %59
  br i1 %121, label %122, label %84, !llvm.loop !24

122:                                              ; preds = %117, %154
  %123 = phi i64 [ %158, %154 ], [ 0, %117 ]
  %124 = phi ptr [ %156, %154 ], [ %119, %117 ]
  %125 = phi i16 [ %155, %154 ], [ 0, %117 ]
  %126 = add nuw nsw i64 %123, %56
  %127 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %126, i32 6
  %128 = load i8, ptr %127, align 2, !tbaa !19
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %124, i64 1
  %134 = load i8, ptr %124, align 1, !tbaa !13
  %135 = and i32 %129, 32
  %136 = icmp eq i32 %135, 0
  %137 = zext i8 %134 to i16
  %138 = sub nsw i16 0, %137
  %139 = select i1 %136, i16 %138, i16 %137
  %140 = add i16 %139, %125
  br label %154

141:                                              ; preds = %122
  %142 = and i32 %129, 32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i8, ptr %124, align 1, !tbaa !13
  %146 = zext i8 %145 to i16
  %147 = shl nuw i16 %146, 8
  %148 = getelementptr inbounds i8, ptr %124, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !13
  %150 = zext i8 %149 to i16
  %151 = or disjoint i16 %147, %150
  %152 = add i16 %151, %125
  %153 = getelementptr inbounds i8, ptr %124, i64 2
  br label %154

154:                                              ; preds = %144, %141, %132
  %155 = phi i16 [ %140, %132 ], [ %125, %141 ], [ %152, %144 ]
  %156 = phi ptr [ %133, %132 ], [ %124, %141 ], [ %153, %144 ]
  %157 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %126, i32 1
  store i16 %155, ptr %157, align 2, !tbaa !25
  %158 = add nuw nsw i64 %123, 1
  %159 = icmp eq i64 %158, %59
  br i1 %159, label %160, label %122, !llvm.loop !26

160:                                              ; preds = %154, %327
  %161 = phi i32 [ %340, %327 ], [ 0, %154 ]
  %162 = phi i32 [ %341, %327 ], [ 0, %154 ]
  %163 = phi i32 [ %338, %327 ], [ 0, %154 ]
  %164 = phi i32 [ %337, %327 ], [ 0, %154 ]
  %165 = phi i32 [ %336, %327 ], [ 0, %154 ]
  %166 = phi i32 [ %335, %327 ], [ 0, %154 ]
  %167 = phi i32 [ %334, %327 ], [ 0, %154 ]
  %168 = phi i32 [ %333, %327 ], [ 0, %154 ]
  %169 = phi i32 [ %332, %327 ], [ 0, %154 ]
  %170 = phi i32 [ %331, %327 ], [ 0, %154 ]
  %171 = phi i32 [ %330, %327 ], [ 0, %154 ]
  %172 = phi i32 [ %329, %327 ], [ 0, %154 ]
  %173 = add nsw i32 %162, %29
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %174
  %176 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %174, i32 6
  %177 = load i8, ptr %176, align 2, !tbaa !19
  %178 = load i16, ptr %175, align 2, !tbaa !23
  %179 = sext i16 %178 to i32
  %180 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %174, i32 1
  %181 = load i16, ptr %180, align 2, !tbaa !25
  %182 = sext i16 %181 to i32
  %183 = icmp eq i32 %164, %162
  br i1 %183, label %184, label %291

184:                                              ; preds = %160
  %185 = icmp eq i32 %162, 0
  br i1 %185, label %236, label %186

186:                                              ; preds = %184
  %187 = icmp eq i32 %171, 0
  %188 = icmp eq i32 %172, 0
  br i1 %187, label %217, label %189

189:                                              ; preds = %186
  br i1 %188, label %206, label %190

190:                                              ; preds = %189
  %191 = add nsw i32 %161, 1
  %192 = sext i32 %161 to i64
  %193 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %192
  %194 = add nsw i32 %166, %170
  %195 = lshr i32 %194, 1
  %196 = add nsw i32 %165, %169
  %197 = lshr i32 %196, 1
  %198 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %192, i32 6
  store i8 3, ptr %198, align 2, !tbaa !19
  %199 = trunc i32 %195 to i16
  store i16 %199, ptr %193, align 2, !tbaa !23
  %200 = trunc i32 %197 to i16
  %201 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %192, i32 1
  store i16 %200, ptr %201, align 2, !tbaa !25
  %202 = trunc i32 %170 to i16
  %203 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %192, i32 2
  store i16 %202, ptr %203, align 2, !tbaa !27
  %204 = trunc i32 %169 to i16
  %205 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %192, i32 3
  store i16 %204, ptr %205, align 2, !tbaa !28
  br label %206

206:                                              ; preds = %190, %189
  %207 = phi i32 [ %191, %190 ], [ %161, %189 ]
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %208
  %210 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %208, i32 6
  store i8 3, ptr %210, align 2, !tbaa !19
  %211 = trunc i32 %168 to i16
  store i16 %211, ptr %209, align 2, !tbaa !23
  %212 = trunc i32 %167 to i16
  %213 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %208, i32 1
  store i16 %212, ptr %213, align 2, !tbaa !25
  %214 = trunc i32 %166 to i16
  %215 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %208, i32 2
  store i16 %214, ptr %215, align 2, !tbaa !27
  %216 = trunc i32 %165 to i16
  br label %230

217:                                              ; preds = %186
  %218 = sext i32 %161 to i64
  %219 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %218
  %220 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %218, i32 6
  %221 = trunc i32 %168 to i16
  %222 = trunc i32 %167 to i16
  %223 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %218, i32 1
  br i1 %188, label %228, label %224

224:                                              ; preds = %217
  store i8 3, ptr %220, align 2, !tbaa !19
  store i16 %221, ptr %219, align 2, !tbaa !23
  store i16 %222, ptr %223, align 2, !tbaa !25
  %225 = trunc i32 %170 to i16
  %226 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %218, i32 2
  store i16 %225, ptr %226, align 2, !tbaa !27
  %227 = trunc i32 %169 to i16
  br label %230

228:                                              ; preds = %217
  store i8 2, ptr %220, align 2, !tbaa !19
  store i16 %221, ptr %219, align 2, !tbaa !23
  store i16 %222, ptr %223, align 2, !tbaa !25
  %229 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %218, i32 2
  store i16 0, ptr %229, align 2, !tbaa !27
  br label %230

230:                                              ; preds = %206, %224, %228
  %231 = phi i64 [ %218, %224 ], [ %218, %228 ], [ %208, %206 ]
  %232 = phi i16 [ %227, %224 ], [ 0, %228 ], [ %216, %206 ]
  %233 = phi i32 [ %161, %224 ], [ %161, %228 ], [ %207, %206 ]
  %234 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %231, i32 3
  store i16 %232, ptr %234, align 2, !tbaa !28
  %235 = add nsw i32 %233, 1
  br label %236

236:                                              ; preds = %230, %184
  %237 = phi i32 [ %235, %230 ], [ %161, %184 ]
  %238 = and i8 %177, 1
  %239 = icmp eq i8 %238, 0
  %240 = xor i8 %238, 1
  %241 = zext nneg i8 %240 to i32
  br i1 %239, label %242, label %264

242:                                              ; preds = %236
  %243 = getelementptr %struct.stbtt_vertex, ptr %175, i64 1
  %244 = getelementptr %struct.stbtt_vertex, ptr %175, i64 1, i32 6
  %245 = load i8, ptr %244, align 2, !tbaa !19
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  %248 = load i16, ptr %243, align 2, !tbaa !23
  br i1 %247, label %249, label %258

249:                                              ; preds = %242
  %250 = sext i16 %248 to i32
  %251 = add nsw i32 %250, %179
  %252 = ashr i32 %251, 1
  %253 = getelementptr %struct.stbtt_vertex, ptr %175, i64 1, i32 1
  %254 = load i16, ptr %253, align 2, !tbaa !25
  %255 = sext i16 %254 to i32
  %256 = add nsw i32 %255, %182
  %257 = ashr i32 %256, 1
  br label %264

258:                                              ; preds = %242
  %259 = zext i16 %248 to i32
  %260 = getelementptr %struct.stbtt_vertex, ptr %175, i64 1, i32 1
  %261 = load i16, ptr %260, align 2, !tbaa !25
  %262 = zext i16 %261 to i32
  %263 = add nuw nsw i32 %162, 1
  br label %264

264:                                              ; preds = %258, %249, %236
  %265 = phi i32 [ %259, %258 ], [ %252, %249 ], [ %179, %236 ]
  %266 = phi i32 [ %262, %258 ], [ %257, %249 ], [ %182, %236 ]
  %267 = phi i32 [ %179, %258 ], [ %179, %249 ], [ %166, %236 ]
  %268 = phi i32 [ %182, %258 ], [ %182, %249 ], [ %165, %236 ]
  %269 = phi i32 [ %263, %258 ], [ %162, %249 ], [ %162, %236 ]
  %270 = add nsw i32 %237, 1
  %271 = sext i32 %237 to i64
  %272 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %271
  %273 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %271, i32 6
  store i8 1, ptr %273, align 2, !tbaa !19
  %274 = trunc i32 %265 to i16
  store i16 %274, ptr %272, align 2, !tbaa !23
  %275 = trunc i32 %266 to i16
  %276 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %271, i32 1
  store i16 %275, ptr %276, align 2, !tbaa !25
  %277 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %271, i32 2
  store i16 0, ptr %277, align 2, !tbaa !27
  %278 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %271, i32 3
  store i16 0, ptr %278, align 2, !tbaa !28
  %279 = shl nsw i32 %163, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %27, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 8
  %285 = getelementptr inbounds i8, ptr %281, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !13
  %287 = zext i8 %286 to i32
  %288 = or disjoint i32 %284, %287
  %289 = add nuw nsw i32 %288, 1
  %290 = add nsw i32 %163, 1
  br label %327

291:                                              ; preds = %160
  %292 = and i8 %177, 1
  %293 = icmp eq i8 %292, 0
  %294 = icmp eq i32 %172, 0
  br i1 %293, label %295, label %312

295:                                              ; preds = %291
  br i1 %294, label %327, label %296

296:                                              ; preds = %295
  %297 = add nsw i32 %161, 1
  %298 = sext i32 %161 to i64
  %299 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %298
  %300 = add nsw i32 %170, %179
  %301 = lshr i32 %300, 1
  %302 = add nsw i32 %169, %182
  %303 = lshr i32 %302, 1
  %304 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %298, i32 6
  store i8 3, ptr %304, align 2, !tbaa !19
  %305 = trunc i32 %301 to i16
  store i16 %305, ptr %299, align 2, !tbaa !23
  %306 = trunc i32 %303 to i16
  %307 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %298, i32 1
  store i16 %306, ptr %307, align 2, !tbaa !25
  %308 = trunc i32 %170 to i16
  %309 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %298, i32 2
  store i16 %308, ptr %309, align 2, !tbaa !27
  %310 = trunc i32 %169 to i16
  %311 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %298, i32 3
  store i16 %310, ptr %311, align 2, !tbaa !28
  br label %327

312:                                              ; preds = %291
  %313 = sext i32 %161 to i64
  %314 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313
  %315 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313, i32 6
  %316 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313, i32 1
  br i1 %294, label %321, label %317

317:                                              ; preds = %312
  store i8 3, ptr %315, align 2, !tbaa !19
  store i16 %178, ptr %314, align 2, !tbaa !23
  store i16 %181, ptr %316, align 2, !tbaa !25
  %318 = trunc i32 %170 to i16
  %319 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313, i32 2
  store i16 %318, ptr %319, align 2, !tbaa !27
  %320 = trunc i32 %169 to i16
  br label %323

321:                                              ; preds = %312
  store i8 2, ptr %315, align 2, !tbaa !19
  store i16 %178, ptr %314, align 2, !tbaa !23
  store i16 %181, ptr %316, align 2, !tbaa !25
  %322 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313, i32 2
  store i16 0, ptr %322, align 2, !tbaa !27
  br label %323

323:                                              ; preds = %321, %317
  %324 = phi i16 [ 0, %321 ], [ %320, %317 ]
  %325 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %313, i32 3
  store i16 %324, ptr %325, align 2, !tbaa !28
  %326 = add nsw i32 %161, 1
  br label %327

327:                                              ; preds = %323, %296, %295, %264
  %328 = phi i1 [ true, %264 ], [ true, %323 ], [ false, %296 ], [ false, %295 ]
  %329 = phi i32 [ 0, %264 ], [ 0, %323 ], [ 1, %296 ], [ 1, %295 ]
  %330 = phi i32 [ %241, %264 ], [ %171, %323 ], [ %171, %296 ], [ %171, %295 ]
  %331 = phi i32 [ %170, %264 ], [ %170, %323 ], [ %179, %296 ], [ %179, %295 ]
  %332 = phi i32 [ %169, %264 ], [ %169, %323 ], [ %182, %296 ], [ %182, %295 ]
  %333 = phi i32 [ %265, %264 ], [ %168, %323 ], [ %168, %296 ], [ %168, %295 ]
  %334 = phi i32 [ %266, %264 ], [ %167, %323 ], [ %167, %296 ], [ %167, %295 ]
  %335 = phi i32 [ %267, %264 ], [ %166, %323 ], [ %166, %296 ], [ %166, %295 ]
  %336 = phi i32 [ %268, %264 ], [ %165, %323 ], [ %165, %296 ], [ %165, %295 ]
  %337 = phi i32 [ %289, %264 ], [ %164, %323 ], [ %164, %296 ], [ %164, %295 ]
  %338 = phi i32 [ %290, %264 ], [ %163, %323 ], [ %163, %296 ], [ %163, %295 ]
  %339 = phi i32 [ %269, %264 ], [ %162, %323 ], [ %162, %296 ], [ %162, %295 ]
  %340 = phi i32 [ %270, %264 ], [ %326, %323 ], [ %297, %296 ], [ %161, %295 ]
  %341 = add nsw i32 %339, 1
  %342 = icmp slt i32 %339, %42
  br i1 %342, label %160, label %343, !llvm.loop !29

343:                                              ; preds = %327
  %344 = icmp eq i32 %330, 0
  br i1 %344, label %373, label %345

345:                                              ; preds = %343
  br i1 %328, label %362, label %346

346:                                              ; preds = %345
  %347 = add nsw i32 %340, 1
  %348 = sext i32 %340 to i64
  %349 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %348
  %350 = add nsw i32 %335, %331
  %351 = lshr i32 %350, 1
  %352 = add nsw i32 %336, %332
  %353 = lshr i32 %352, 1
  %354 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %348, i32 6
  store i8 3, ptr %354, align 2, !tbaa !19
  %355 = trunc i32 %351 to i16
  store i16 %355, ptr %349, align 2, !tbaa !23
  %356 = trunc i32 %353 to i16
  %357 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %348, i32 1
  store i16 %356, ptr %357, align 2, !tbaa !25
  %358 = trunc i32 %331 to i16
  %359 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %348, i32 2
  store i16 %358, ptr %359, align 2, !tbaa !27
  %360 = trunc i32 %332 to i16
  %361 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %348, i32 3
  store i16 %360, ptr %361, align 2, !tbaa !28
  br label %362

362:                                              ; preds = %346, %345
  %363 = phi i32 [ %347, %346 ], [ %340, %345 ]
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %364
  %366 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %364, i32 6
  store i8 3, ptr %366, align 2, !tbaa !19
  %367 = trunc i32 %333 to i16
  store i16 %367, ptr %365, align 2, !tbaa !23
  %368 = trunc i32 %334 to i16
  %369 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %364, i32 1
  store i16 %368, ptr %369, align 2, !tbaa !25
  %370 = trunc i32 %335 to i16
  %371 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %364, i32 2
  store i16 %370, ptr %371, align 2, !tbaa !27
  %372 = trunc i32 %336 to i16
  br label %386

373:                                              ; preds = %343
  %374 = sext i32 %340 to i64
  %375 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %374
  %376 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %374, i32 6
  %377 = trunc i32 %333 to i16
  %378 = trunc i32 %334 to i16
  %379 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %374, i32 1
  br i1 %328, label %384, label %380

380:                                              ; preds = %373
  store i8 3, ptr %376, align 2, !tbaa !19
  store i16 %377, ptr %375, align 2, !tbaa !23
  store i16 %378, ptr %379, align 2, !tbaa !25
  %381 = trunc i32 %331 to i16
  %382 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %374, i32 2
  store i16 %381, ptr %382, align 2, !tbaa !27
  %383 = trunc i32 %332 to i16
  br label %386

384:                                              ; preds = %373
  store i8 2, ptr %376, align 2, !tbaa !19
  store i16 %377, ptr %375, align 2, !tbaa !23
  store i16 %378, ptr %379, align 2, !tbaa !25
  %385 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %374, i32 2
  store i16 0, ptr %385, align 2, !tbaa !27
  br label %386

386:                                              ; preds = %384, %380, %362
  %387 = phi i64 [ %374, %380 ], [ %374, %384 ], [ %364, %362 ]
  %388 = phi i16 [ %383, %380 ], [ 0, %384 ], [ %372, %362 ]
  %389 = phi i32 [ %340, %380 ], [ %340, %384 ], [ %363, %362 ]
  %390 = getelementptr inbounds %struct.stbtt_vertex, ptr %47, i64 %387, i32 3
  store i16 %388, ptr %390, align 2, !tbaa !28
  %391 = add nsw i32 %389, 1
  br label %775

392:                                              ; preds = %15
  %393 = icmp slt i16 %24, 0
  br i1 %393, label %394, label %775

394:                                              ; preds = %392
  %395 = getelementptr inbounds i8, ptr %17, i64 10
  br label %396

396:                                              ; preds = %394, %769
  %397 = phi ptr [ null, %394 ], [ %771, %769 ]
  %398 = phi i32 [ 0, %394 ], [ %770, %769 ]
  %399 = phi ptr [ %395, %394 ], [ %527, %769 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #34
  store ptr null, ptr %6, align 8, !tbaa !18
  %400 = getelementptr inbounds i8, ptr %399, i64 1
  %401 = load i8, ptr %400, align 1, !tbaa !13
  %402 = zext i8 %401 to i32
  %403 = getelementptr inbounds i8, ptr %399, i64 2
  %404 = load i8, ptr %403, align 1, !tbaa !13
  %405 = zext i8 %404 to i32
  %406 = shl nuw nsw i32 %405, 8
  %407 = getelementptr inbounds i8, ptr %399, i64 3
  %408 = load i8, ptr %407, align 1, !tbaa !13
  %409 = zext i8 %408 to i32
  %410 = or disjoint i32 %406, %409
  %411 = and i32 %402, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %440, label %413

413:                                              ; preds = %396
  %414 = getelementptr inbounds i8, ptr %399, i64 4
  %415 = and i32 %402, 1
  %416 = icmp eq i32 %415, 0
  %417 = load i8, ptr %414, align 1, !tbaa !13
  br i1 %416, label %434, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds i8, ptr %399, i64 5
  %420 = load i8, ptr %419, align 1, !tbaa !13
  %421 = getelementptr inbounds i8, ptr %399, i64 6
  %422 = load i8, ptr %421, align 1, !tbaa !13
  %423 = getelementptr inbounds i8, ptr %399, i64 7
  %424 = load i8, ptr %423, align 1, !tbaa !13
  %425 = insertelement <2 x i8> poison, i8 %417, i64 0
  %426 = insertelement <2 x i8> %425, i8 %422, i64 1
  %427 = zext <2 x i8> %426 to <2 x i16>
  %428 = shl nuw <2 x i16> %427, <i16 8, i16 8>
  %429 = insertelement <2 x i8> poison, i8 %420, i64 0
  %430 = insertelement <2 x i8> %429, i8 %424, i64 1
  %431 = zext <2 x i8> %430 to <2 x i16>
  %432 = or disjoint <2 x i16> %428, %431
  %433 = sitofp <2 x i16> %432 to <2 x float>
  br label %441

434:                                              ; preds = %413
  %435 = getelementptr inbounds i8, ptr %399, i64 5
  %436 = load i8, ptr %435, align 1, !tbaa !13
  %437 = insertelement <2 x i8> poison, i8 %417, i64 0
  %438 = insertelement <2 x i8> %437, i8 %436, i64 1
  %439 = sitofp <2 x i8> %438 to <2 x float>
  br label %441

440:                                              ; preds = %396
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1838, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__GetGlyphShapeTT) #32
  unreachable

441:                                              ; preds = %434, %418
  %442 = phi i64 [ 6, %434 ], [ 8, %418 ]
  %443 = phi <2 x float> [ %439, %434 ], [ %433, %418 ]
  %444 = shufflevector <2 x float> %443, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %445 = getelementptr inbounds i8, ptr %399, i64 %442
  %446 = and i32 %402, 8
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %461, label %448

448:                                              ; preds = %441
  %449 = load i8, ptr %445, align 1, !tbaa !13
  %450 = zext i8 %449 to i16
  %451 = shl nuw i16 %450, 8
  %452 = getelementptr inbounds i8, ptr %445, i64 1
  %453 = load i8, ptr %452, align 1, !tbaa !13
  %454 = zext i8 %453 to i16
  %455 = or disjoint i16 %451, %454
  %456 = sitofp i16 %455 to float
  %457 = fmul float %456, 0x3F10000000000000
  %458 = getelementptr inbounds i8, ptr %445, i64 2
  %459 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %457, i64 0
  %460 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %457, i64 1
  br label %526

461:                                              ; preds = %441
  %462 = and i32 %402, 64
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %487, label %464

464:                                              ; preds = %461
  %465 = load i8, ptr %445, align 1, !tbaa !13
  %466 = zext i8 %465 to i16
  %467 = shl nuw i16 %466, 8
  %468 = getelementptr inbounds i8, ptr %445, i64 1
  %469 = load i8, ptr %468, align 1, !tbaa !13
  %470 = zext i8 %469 to i16
  %471 = or disjoint i16 %467, %470
  %472 = sitofp i16 %471 to float
  %473 = fmul float %472, 0x3F10000000000000
  %474 = getelementptr inbounds i8, ptr %445, i64 2
  %475 = load i8, ptr %474, align 1, !tbaa !13
  %476 = zext i8 %475 to i16
  %477 = shl nuw i16 %476, 8
  %478 = getelementptr inbounds i8, ptr %445, i64 3
  %479 = load i8, ptr %478, align 1, !tbaa !13
  %480 = zext i8 %479 to i16
  %481 = or disjoint i16 %477, %480
  %482 = sitofp i16 %481 to float
  %483 = fmul float %482, 0x3F10000000000000
  %484 = getelementptr inbounds i8, ptr %445, i64 4
  %485 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %473, i64 0
  %486 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %483, i64 1
  br label %526

487:                                              ; preds = %461
  %488 = icmp sgt i8 %401, -1
  br i1 %488, label %526, label %489

489:                                              ; preds = %487
  %490 = load i8, ptr %445, align 1, !tbaa !13
  %491 = getelementptr inbounds i8, ptr %445, i64 1
  %492 = load i8, ptr %491, align 1, !tbaa !13
  %493 = getelementptr inbounds i8, ptr %445, i64 2
  %494 = load i8, ptr %493, align 1, !tbaa !13
  %495 = getelementptr inbounds i8, ptr %445, i64 3
  %496 = load i8, ptr %495, align 1, !tbaa !13
  %497 = getelementptr inbounds i8, ptr %445, i64 4
  %498 = load i8, ptr %497, align 1, !tbaa !13
  %499 = getelementptr inbounds i8, ptr %445, i64 5
  %500 = load i8, ptr %499, align 1, !tbaa !13
  %501 = getelementptr inbounds i8, ptr %445, i64 6
  %502 = load i8, ptr %501, align 1, !tbaa !13
  %503 = getelementptr inbounds i8, ptr %445, i64 7
  %504 = load i8, ptr %503, align 1, !tbaa !13
  %505 = insertelement <2 x i8> poison, i8 %490, i64 0
  %506 = insertelement <2 x i8> %505, i8 %498, i64 1
  %507 = zext <2 x i8> %506 to <2 x i16>
  %508 = shl nuw <2 x i16> %507, <i16 8, i16 8>
  %509 = insertelement <2 x i8> poison, i8 %492, i64 0
  %510 = insertelement <2 x i8> %509, i8 %500, i64 1
  %511 = zext <2 x i8> %510 to <2 x i16>
  %512 = or disjoint <2 x i16> %508, %511
  %513 = sitofp <2 x i16> %512 to <2 x float>
  %514 = insertelement <2 x i8> poison, i8 %494, i64 0
  %515 = insertelement <2 x i8> %514, i8 %502, i64 1
  %516 = zext <2 x i8> %515 to <2 x i16>
  %517 = shl nuw <2 x i16> %516, <i16 8, i16 8>
  %518 = insertelement <2 x i8> poison, i8 %496, i64 0
  %519 = insertelement <2 x i8> %518, i8 %504, i64 1
  %520 = zext <2 x i8> %519 to <2 x i16>
  %521 = or disjoint <2 x i16> %517, %520
  %522 = sitofp <2 x i16> %521 to <2 x float>
  %523 = fmul <2 x float> %513, <float 0x3F10000000000000, float 0x3F10000000000000>
  %524 = fmul <2 x float> %522, <float 0x3F10000000000000, float 0x3F10000000000000>
  %525 = getelementptr inbounds i8, ptr %445, i64 8
  br label %526

526:                                              ; preds = %489, %487, %464, %448
  %527 = phi ptr [ %458, %448 ], [ %484, %464 ], [ %525, %489 ], [ %445, %487 ]
  %528 = phi <2 x float> [ %459, %448 ], [ %485, %464 ], [ %523, %489 ], [ <float 1.000000e+00, float 0.000000e+00>, %487 ]
  %529 = phi <2 x float> [ %460, %448 ], [ %486, %464 ], [ %524, %489 ], [ <float 0.000000e+00, float 1.000000e+00>, %487 ]
  %530 = fmul <2 x float> %529, %529
  %531 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %528, <2 x float> %528, <2 x float> %530)
  %532 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %531)
  %533 = shufflevector <2 x float> %532, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %534 = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %410, ptr noundef nonnull %6)
  %535 = icmp sgt i32 %534, 0
  br i1 %535, label %536, label %769

536:                                              ; preds = %526
  %537 = load ptr, ptr %6, align 8, !tbaa !18
  %538 = zext nneg i32 %534 to i64
  %539 = icmp ult i32 %534, 9
  br i1 %539, label %716, label %540

540:                                              ; preds = %536
  %541 = and i64 %538, 7
  %542 = icmp eq i64 %541, 0
  %543 = select i1 %542, i64 8, i64 %541
  %544 = sub nsw i64 %538, %543
  %545 = shufflevector <2 x float> %528, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %546 = shufflevector <2 x float> %528, <2 x float> poison, <8 x i32> zeroinitializer
  %547 = shufflevector <2 x float> %443, <2 x float> poison, <8 x i32> zeroinitializer
  %548 = shufflevector <2 x float> %532, <2 x float> poison, <8 x i32> zeroinitializer
  %549 = shufflevector <2 x float> %529, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %550 = shufflevector <2 x float> %529, <2 x float> poison, <8 x i32> zeroinitializer
  %551 = shufflevector <2 x float> %443, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %552 = shufflevector <2 x float> %532, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %553

553:                                              ; preds = %553, %540
  %554 = phi i64 [ 0, %540 ], [ %714, %553 ]
  %555 = or disjoint i64 %554, 1
  %556 = or disjoint i64 %554, 2
  %557 = or disjoint i64 %554, 3
  %558 = or disjoint i64 %554, 4
  %559 = or disjoint i64 %554, 5
  %560 = or disjoint i64 %554, 6
  %561 = or disjoint i64 %554, 7
  %562 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %554
  %563 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %555
  %564 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %556
  %565 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %557
  %566 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %558
  %567 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %559
  %568 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %560
  %569 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %561
  %570 = load i16, ptr %562, align 2, !tbaa !23
  %571 = load i16, ptr %563, align 2, !tbaa !23
  %572 = load i16, ptr %564, align 2, !tbaa !23
  %573 = load i16, ptr %565, align 2, !tbaa !23
  %574 = load i16, ptr %566, align 2, !tbaa !23
  %575 = load i16, ptr %567, align 2, !tbaa !23
  %576 = load i16, ptr %568, align 2, !tbaa !23
  %577 = load i16, ptr %569, align 2, !tbaa !23
  %578 = insertelement <8 x i16> poison, i16 %570, i64 0
  %579 = insertelement <8 x i16> %578, i16 %571, i64 1
  %580 = insertelement <8 x i16> %579, i16 %572, i64 2
  %581 = insertelement <8 x i16> %580, i16 %573, i64 3
  %582 = insertelement <8 x i16> %581, i16 %574, i64 4
  %583 = insertelement <8 x i16> %582, i16 %575, i64 5
  %584 = insertelement <8 x i16> %583, i16 %576, i64 6
  %585 = insertelement <8 x i16> %584, i16 %577, i64 7
  %586 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %554, i32 1
  %587 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %555, i32 1
  %588 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %556, i32 1
  %589 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %557, i32 1
  %590 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %558, i32 1
  %591 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %559, i32 1
  %592 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %560, i32 1
  %593 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %561, i32 1
  %594 = load i16, ptr %586, align 2, !tbaa !25
  %595 = load i16, ptr %587, align 2, !tbaa !25
  %596 = load i16, ptr %588, align 2, !tbaa !25
  %597 = load i16, ptr %589, align 2, !tbaa !25
  %598 = load i16, ptr %590, align 2, !tbaa !25
  %599 = load i16, ptr %591, align 2, !tbaa !25
  %600 = load i16, ptr %592, align 2, !tbaa !25
  %601 = load i16, ptr %593, align 2, !tbaa !25
  %602 = insertelement <8 x i16> poison, i16 %594, i64 0
  %603 = insertelement <8 x i16> %602, i16 %595, i64 1
  %604 = insertelement <8 x i16> %603, i16 %596, i64 2
  %605 = insertelement <8 x i16> %604, i16 %597, i64 3
  %606 = insertelement <8 x i16> %605, i16 %598, i64 4
  %607 = insertelement <8 x i16> %606, i16 %599, i64 5
  %608 = insertelement <8 x i16> %607, i16 %600, i64 6
  %609 = insertelement <8 x i16> %608, i16 %601, i64 7
  %610 = sitofp <8 x i16> %585 to <8 x float>
  %611 = sitofp <8 x i16> %609 to <8 x float>
  %612 = fmul <8 x float> %545, %611
  %613 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %546, <8 x float> %610, <8 x float> %612)
  %614 = fadd <8 x float> %547, %613
  %615 = fmul <8 x float> %548, %614
  %616 = fptosi <8 x float> %615 to <8 x i16>
  %617 = extractelement <8 x i16> %616, i64 0
  store i16 %617, ptr %562, align 2, !tbaa !23
  %618 = extractelement <8 x i16> %616, i64 1
  store i16 %618, ptr %563, align 2, !tbaa !23
  %619 = extractelement <8 x i16> %616, i64 2
  store i16 %619, ptr %564, align 2, !tbaa !23
  %620 = extractelement <8 x i16> %616, i64 3
  store i16 %620, ptr %565, align 2, !tbaa !23
  %621 = extractelement <8 x i16> %616, i64 4
  store i16 %621, ptr %566, align 2, !tbaa !23
  %622 = extractelement <8 x i16> %616, i64 5
  store i16 %622, ptr %567, align 2, !tbaa !23
  %623 = extractelement <8 x i16> %616, i64 6
  store i16 %623, ptr %568, align 2, !tbaa !23
  %624 = extractelement <8 x i16> %616, i64 7
  store i16 %624, ptr %569, align 2, !tbaa !23
  %625 = fmul <8 x float> %549, %611
  %626 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %550, <8 x float> %610, <8 x float> %625)
  %627 = fadd <8 x float> %551, %626
  %628 = fmul <8 x float> %552, %627
  %629 = fptosi <8 x float> %628 to <8 x i16>
  %630 = extractelement <8 x i16> %629, i64 0
  store i16 %630, ptr %586, align 2, !tbaa !25
  %631 = extractelement <8 x i16> %629, i64 1
  store i16 %631, ptr %587, align 2, !tbaa !25
  %632 = extractelement <8 x i16> %629, i64 2
  store i16 %632, ptr %588, align 2, !tbaa !25
  %633 = extractelement <8 x i16> %629, i64 3
  store i16 %633, ptr %589, align 2, !tbaa !25
  %634 = extractelement <8 x i16> %629, i64 4
  store i16 %634, ptr %590, align 2, !tbaa !25
  %635 = extractelement <8 x i16> %629, i64 5
  store i16 %635, ptr %591, align 2, !tbaa !25
  %636 = extractelement <8 x i16> %629, i64 6
  store i16 %636, ptr %592, align 2, !tbaa !25
  %637 = extractelement <8 x i16> %629, i64 7
  store i16 %637, ptr %593, align 2, !tbaa !25
  %638 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %554, i32 2
  %639 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %555, i32 2
  %640 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %556, i32 2
  %641 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %557, i32 2
  %642 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %558, i32 2
  %643 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %559, i32 2
  %644 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %560, i32 2
  %645 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %561, i32 2
  %646 = load i16, ptr %638, align 2, !tbaa !27
  %647 = load i16, ptr %639, align 2, !tbaa !27
  %648 = load i16, ptr %640, align 2, !tbaa !27
  %649 = load i16, ptr %641, align 2, !tbaa !27
  %650 = load i16, ptr %642, align 2, !tbaa !27
  %651 = load i16, ptr %643, align 2, !tbaa !27
  %652 = load i16, ptr %644, align 2, !tbaa !27
  %653 = load i16, ptr %645, align 2, !tbaa !27
  %654 = insertelement <8 x i16> poison, i16 %646, i64 0
  %655 = insertelement <8 x i16> %654, i16 %647, i64 1
  %656 = insertelement <8 x i16> %655, i16 %648, i64 2
  %657 = insertelement <8 x i16> %656, i16 %649, i64 3
  %658 = insertelement <8 x i16> %657, i16 %650, i64 4
  %659 = insertelement <8 x i16> %658, i16 %651, i64 5
  %660 = insertelement <8 x i16> %659, i16 %652, i64 6
  %661 = insertelement <8 x i16> %660, i16 %653, i64 7
  %662 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %554, i32 3
  %663 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %555, i32 3
  %664 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %556, i32 3
  %665 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %557, i32 3
  %666 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %558, i32 3
  %667 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %559, i32 3
  %668 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %560, i32 3
  %669 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %561, i32 3
  %670 = load i16, ptr %662, align 2, !tbaa !28
  %671 = load i16, ptr %663, align 2, !tbaa !28
  %672 = load i16, ptr %664, align 2, !tbaa !28
  %673 = load i16, ptr %665, align 2, !tbaa !28
  %674 = load i16, ptr %666, align 2, !tbaa !28
  %675 = load i16, ptr %667, align 2, !tbaa !28
  %676 = load i16, ptr %668, align 2, !tbaa !28
  %677 = load i16, ptr %669, align 2, !tbaa !28
  %678 = insertelement <8 x i16> poison, i16 %670, i64 0
  %679 = insertelement <8 x i16> %678, i16 %671, i64 1
  %680 = insertelement <8 x i16> %679, i16 %672, i64 2
  %681 = insertelement <8 x i16> %680, i16 %673, i64 3
  %682 = insertelement <8 x i16> %681, i16 %674, i64 4
  %683 = insertelement <8 x i16> %682, i16 %675, i64 5
  %684 = insertelement <8 x i16> %683, i16 %676, i64 6
  %685 = insertelement <8 x i16> %684, i16 %677, i64 7
  %686 = sitofp <8 x i16> %661 to <8 x float>
  %687 = sitofp <8 x i16> %685 to <8 x float>
  %688 = fmul <8 x float> %545, %687
  %689 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %546, <8 x float> %686, <8 x float> %688)
  %690 = fadd <8 x float> %547, %689
  %691 = fmul <8 x float> %548, %690
  %692 = fptosi <8 x float> %691 to <8 x i16>
  %693 = extractelement <8 x i16> %692, i64 0
  store i16 %693, ptr %638, align 2, !tbaa !27
  %694 = extractelement <8 x i16> %692, i64 1
  store i16 %694, ptr %639, align 2, !tbaa !27
  %695 = extractelement <8 x i16> %692, i64 2
  store i16 %695, ptr %640, align 2, !tbaa !27
  %696 = extractelement <8 x i16> %692, i64 3
  store i16 %696, ptr %641, align 2, !tbaa !27
  %697 = extractelement <8 x i16> %692, i64 4
  store i16 %697, ptr %642, align 2, !tbaa !27
  %698 = extractelement <8 x i16> %692, i64 5
  store i16 %698, ptr %643, align 2, !tbaa !27
  %699 = extractelement <8 x i16> %692, i64 6
  store i16 %699, ptr %644, align 2, !tbaa !27
  %700 = extractelement <8 x i16> %692, i64 7
  store i16 %700, ptr %645, align 2, !tbaa !27
  %701 = fmul <8 x float> %549, %687
  %702 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %550, <8 x float> %686, <8 x float> %701)
  %703 = fadd <8 x float> %551, %702
  %704 = fmul <8 x float> %552, %703
  %705 = fptosi <8 x float> %704 to <8 x i16>
  %706 = extractelement <8 x i16> %705, i64 0
  store i16 %706, ptr %662, align 2, !tbaa !28
  %707 = extractelement <8 x i16> %705, i64 1
  store i16 %707, ptr %663, align 2, !tbaa !28
  %708 = extractelement <8 x i16> %705, i64 2
  store i16 %708, ptr %664, align 2, !tbaa !28
  %709 = extractelement <8 x i16> %705, i64 3
  store i16 %709, ptr %665, align 2, !tbaa !28
  %710 = extractelement <8 x i16> %705, i64 4
  store i16 %710, ptr %666, align 2, !tbaa !28
  %711 = extractelement <8 x i16> %705, i64 5
  store i16 %711, ptr %667, align 2, !tbaa !28
  %712 = extractelement <8 x i16> %705, i64 6
  store i16 %712, ptr %668, align 2, !tbaa !28
  %713 = extractelement <8 x i16> %705, i64 7
  store i16 %713, ptr %669, align 2, !tbaa !28
  %714 = add nuw i64 %554, 8
  %715 = icmp eq i64 %714, %544
  br i1 %715, label %716, label %553, !llvm.loop !30

716:                                              ; preds = %553, %536
  %717 = phi i64 [ 0, %536 ], [ %544, %553 ]
  %718 = shufflevector <2 x float> %528, <2 x float> %529, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %719 = shufflevector <2 x float> %528, <2 x float> %529, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %720

720:                                              ; preds = %716, %720
  %721 = phi i64 [ %743, %720 ], [ %717, %716 ]
  %722 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %721
  %723 = load i16, ptr %722, align 2, !tbaa !23
  %724 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %721, i32 1
  %725 = load i16, ptr %724, align 2, !tbaa !25
  %726 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %721, i32 2
  %727 = load i16, ptr %726, align 2, !tbaa !27
  %728 = getelementptr inbounds %struct.stbtt_vertex, ptr %537, i64 %721, i32 3
  %729 = load i16, ptr %728, align 2, !tbaa !28
  %730 = insertelement <2 x i16> poison, i16 %723, i64 0
  %731 = insertelement <2 x i16> %730, i16 %727, i64 1
  %732 = sitofp <2 x i16> %731 to <2 x float>
  %733 = shufflevector <2 x float> %732, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %734 = insertelement <2 x i16> poison, i16 %725, i64 0
  %735 = insertelement <2 x i16> %734, i16 %729, i64 1
  %736 = sitofp <2 x i16> %735 to <2 x float>
  %737 = shufflevector <2 x float> %736, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %738 = fmul <4 x float> %718, %737
  %739 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %719, <4 x float> %733, <4 x float> %738)
  %740 = fadd <4 x float> %444, %739
  %741 = fmul <4 x float> %533, %740
  %742 = fptosi <4 x float> %741 to <4 x i16>
  store <4 x i16> %742, ptr %722, align 2, !tbaa !33
  %743 = add nuw nsw i64 %721, 1
  %744 = icmp eq i64 %743, %538
  br i1 %744, label %745, label %720, !llvm.loop !34

745:                                              ; preds = %720
  %746 = add nsw i32 %534, %398
  %747 = sext i32 %746 to i64
  %748 = mul nsw i64 %747, 14
  %749 = tail call noalias ptr @malloc(i64 noundef %748) #33
  %750 = icmp eq ptr %749, null
  br i1 %750, label %751, label %754

751:                                              ; preds = %745
  %752 = icmp eq ptr %397, null
  br i1 %752, label %774, label %753

753:                                              ; preds = %751
  tail call void @free(ptr noundef nonnull %397) #34
  br label %774

754:                                              ; preds = %745
  %755 = icmp sgt i32 %398, 0
  %756 = icmp ne ptr %397, null
  %757 = select i1 %755, i1 %756, i1 false
  br i1 %757, label %758, label %763

758:                                              ; preds = %754
  %759 = zext nneg i32 %398 to i64
  %760 = mul nuw nsw i64 %759, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %749, ptr nonnull align 2 %397, i64 %760, i1 false)
  %761 = getelementptr inbounds %struct.stbtt_vertex, ptr %749, i64 %759
  %762 = mul nuw nsw i64 %538, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %761, ptr nonnull align 2 %537, i64 %762, i1 false)
  br label %767

763:                                              ; preds = %754
  %764 = sext i32 %398 to i64
  %765 = getelementptr inbounds %struct.stbtt_vertex, ptr %749, i64 %764
  %766 = mul nuw nsw i64 %538, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %765, ptr nonnull align 2 %537, i64 %766, i1 false)
  br i1 %756, label %767, label %768

767:                                              ; preds = %758, %763
  tail call void @free(ptr noundef nonnull %397) #34
  br label %768

768:                                              ; preds = %767, %763
  tail call void @free(ptr noundef nonnull %537) #34
  br label %769

769:                                              ; preds = %526, %768
  %770 = phi i32 [ %746, %768 ], [ %398, %526 ]
  %771 = phi ptr [ %749, %768 ], [ %397, %526 ]
  %772 = and i32 %402, 32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %775, label %396, !llvm.loop !35

774:                                              ; preds = %753, %751
  tail call void @free(ptr noundef nonnull %537) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  br label %799

775:                                              ; preds = %769, %386, %392
  %776 = phi i32 [ %391, %386 ], [ 0, %392 ], [ %770, %769 ]
  %777 = phi ptr [ %47, %386 ], [ null, %392 ], [ %771, %769 ]
  store ptr %777, ptr %2, align 8, !tbaa !18
  br label %799

778:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %779 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %4)
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %796, label %781

781:                                              ; preds = %778
  %782 = getelementptr inbounds %struct.stbtt__csctx, ptr %4, i64 0, i32 11
  %783 = load i32, ptr %782, align 8, !tbaa !36
  %784 = sext i32 %783 to i64
  %785 = mul nsw i64 %784, 14
  %786 = call noalias ptr @malloc(i64 noundef %785) #33
  store ptr %786, ptr %2, align 8, !tbaa !18
  %787 = getelementptr inbounds %struct.stbtt__csctx, ptr %5, i64 0, i32 10
  store ptr %786, ptr %787, align 8, !tbaa !39
  %788 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %5)
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %796, label %790

790:                                              ; preds = %781
  %791 = getelementptr inbounds %struct.stbtt__csctx, ptr %5, i64 0, i32 11
  %792 = load i32, ptr %791, align 8, !tbaa !36
  %793 = load i32, ptr %782, align 8, !tbaa !36
  %794 = icmp eq i32 %792, %793
  br i1 %794, label %797, label %795

795:                                              ; preds = %790
  call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 2278, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__GetGlyphShapeT2) #32
  unreachable

796:                                              ; preds = %781, %778
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %797

797:                                              ; preds = %790, %796
  %798 = phi i32 [ 0, %796 ], [ %792, %790 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #34
  br label %799

799:                                              ; preds = %774, %26, %775, %10, %797
  %800 = phi i32 [ %798, %797 ], [ %776, %775 ], [ 0, %774 ], [ 0, %10 ], [ 0, %26 ]
  ret i32 %800
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stbtt_GetGlyphBox(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.stbtt__csctx, align 8
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store i32 1, ptr %7, align 8
  %12 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %7)
  %13 = icmp eq ptr %2, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %12, 0
  %16 = getelementptr inbounds %struct.stbtt__csctx, ptr %7, i64 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = select i1 %15, i32 0, i32 %17
  store i32 %18, ptr %2, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %14, %11
  %20 = icmp eq ptr %3, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %12, 0
  %23 = getelementptr inbounds %struct.stbtt__csctx, ptr %7, i64 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = select i1 %22, i32 0, i32 %24
  store i32 %25, ptr %3, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %21, %19
  %27 = icmp eq ptr %4, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %12, 0
  %30 = getelementptr inbounds %struct.stbtt__csctx, ptr %7, i64 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = select i1 %29, i32 0, i32 %31
  store i32 %32, ptr %4, align 4, !tbaa !40
  br label %33

33:                                               ; preds = %28, %26
  %34 = icmp eq ptr %5, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %12, 0
  %37 = getelementptr inbounds %struct.stbtt__csctx, ptr %7, i64 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = select i1 %36, i32 0, i32 %38
  store i32 %39, ptr %5, align 4, !tbaa !40
  br label %40

40:                                               ; preds = %33, %35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #34
  br label %108

41:                                               ; preds = %6
  %42 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull %0, i32 noundef %1)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %108, label %44

44:                                               ; preds = %41
  %45 = icmp eq ptr %2, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = zext nneg i32 %42 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i16
  %54 = shl nuw i16 %53, 8
  %55 = getelementptr inbounds i8, ptr %50, i64 3
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i16
  %58 = or disjoint i16 %54, %57
  %59 = sext i16 %58 to i32
  store i32 %59, ptr %2, align 4, !tbaa !40
  br label %60

60:                                               ; preds = %46, %44
  %61 = icmp eq ptr %3, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = zext nneg i32 %42 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = getelementptr inbounds i8, ptr %66, i64 4
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i16
  %70 = shl nuw i16 %69, 8
  %71 = getelementptr inbounds i8, ptr %66, i64 5
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = zext i8 %72 to i16
  %74 = or disjoint i16 %70, %73
  %75 = sext i16 %74 to i32
  store i32 %75, ptr %3, align 4, !tbaa !40
  br label %76

76:                                               ; preds = %62, %60
  %77 = icmp eq ptr %4, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = zext nneg i32 %42 to i64
  %82 = getelementptr inbounds i8, ptr %80, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 6
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  %87 = getelementptr inbounds i8, ptr %82, i64 7
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = zext i8 %88 to i16
  %90 = or disjoint i16 %86, %89
  %91 = sext i16 %90 to i32
  store i32 %91, ptr %4, align 4, !tbaa !40
  br label %92

92:                                               ; preds = %78, %76
  %93 = icmp eq ptr %5, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = zext nneg i32 %42 to i64
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  %99 = getelementptr inbounds i8, ptr %98, i64 8
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i16
  %102 = shl nuw i16 %101, 8
  %103 = getelementptr inbounds i8, ptr %98, i64 9
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = zext i8 %104 to i16
  %106 = or disjoint i16 %102, %105
  %107 = sext i16 %106 to i32
  store i32 %107, ptr %5, align 4, !tbaa !40
  br label %108

108:                                              ; preds = %94, %92, %40, %41
  %109 = phi i32 [ 0, %41 ], [ 1, %40 ], [ 1, %92 ], [ 1, %94 ]
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stbtt__GetGlyfOffset(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1607, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__GetGlyfOffset) #32
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %91

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %91, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, 0
  %17 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  br i1 %16, label %25, label %46

25:                                               ; preds = %15
  %26 = shl nsw i32 %1, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %30, 9
  %35 = shl nuw nsw i32 %33, 1
  %36 = or disjoint i32 %35, %34
  %37 = getelementptr inbounds i8, ptr %28, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %28, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %39, 9
  %44 = shl nuw nsw i32 %42, 1
  %45 = or disjoint i32 %44, %43
  br label %85

46:                                               ; preds = %15
  %47 = shl nsw i32 %1, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %24, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !13
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or disjoint i32 %56, %52
  %58 = getelementptr inbounds i8, ptr %49, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = or disjoint i32 %57, %61
  %63 = getelementptr inbounds i8, ptr %49, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  %67 = getelementptr inbounds i8, ptr %49, i64 4
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i32
  %70 = shl nuw i32 %69, 24
  %71 = getelementptr inbounds i8, ptr %49, i64 5
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or disjoint i32 %74, %70
  %76 = getelementptr inbounds i8, ptr %49, i64 6
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = or disjoint i32 %75, %79
  %81 = getelementptr inbounds i8, ptr %49, i64 7
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i32
  %84 = or disjoint i32 %80, %83
  br label %85

85:                                               ; preds = %46, %25
  %86 = phi i32 [ %84, %46 ], [ %45, %25 ]
  %87 = phi i32 [ %66, %46 ], [ %36, %25 ]
  %88 = add i32 %87, %18
  %89 = icmp eq i32 %87, %86
  %90 = select i1 %89, i32 -1, i32 %88
  br label %91

91:                                               ; preds = %11, %7, %85
  %92 = phi i32 [ %90, %85 ], [ -1, %7 ], [ -1, %11 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stbtt_GetCodepointBox(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %8 = tail call i32 @stbtt_GetGlyphBox(ptr noundef %0, i32 noundef %7, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5), !range !45
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_IsGlyphEmpty(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stbtt__csctx, align 8
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  %8 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3)
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.stbtt__csctx, ptr %3, i64 0, i32 11
  %11 = load i32, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #34
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br label %30

14:                                               ; preds = %2
  %15 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull %0, i32 noundef %1)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i16
  %28 = or disjoint i16 %24, %27
  %29 = icmp eq i16 %28, 0
  br label %30

30:                                               ; preds = %14, %17, %7
  %31 = phi i1 [ %13, %7 ], [ %29, %17 ], [ true, %14 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @stbtt_GetGlyphHMetrics(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 34
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds i8, ptr %10, i64 35
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = icmp sgt i32 %18, %1
  %20 = icmp eq ptr %2, null
  br i1 %19, label %21, label %50

21:                                               ; preds = %4
  br i1 %20, label %38, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %6, i64 %25
  %27 = shl nsw i32 %1, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i16
  %36 = or disjoint i16 %32, %35
  %37 = sext i16 %36 to i32
  store i32 %37, ptr %2, align 4, !tbaa !40
  br label %38

38:                                               ; preds = %22, %21
  %39 = icmp eq ptr %3, null
  br i1 %39, label %93, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !47
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %6, i64 %43
  %45 = shl nsw i32 %1, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 2
  %49 = getelementptr inbounds i8, ptr %47, i64 3
  br label %83

50:                                               ; preds = %4
  br i1 %20, label %68, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !47
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %6, i64 %54
  %56 = shl nuw nsw i32 %18, 2
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr i8, ptr %55, i64 %57
  %59 = getelementptr i8, ptr %58, i64 -4
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i16
  %62 = shl nuw i16 %61, 8
  %63 = getelementptr i8, ptr %58, i64 -3
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = zext i8 %64 to i16
  %66 = or disjoint i16 %62, %65
  %67 = sext i16 %66 to i32
  store i32 %67, ptr %2, align 4, !tbaa !40
  br label %68

68:                                               ; preds = %51, %50
  %69 = icmp eq ptr %3, null
  br i1 %69, label %93, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %72 = load i32, ptr %71, align 8, !tbaa !47
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %6, i64 %73
  %75 = shl nuw nsw i32 %18, 2
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = sub nsw i32 %1, %18
  %79 = shl nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  br label %83

83:                                               ; preds = %40, %70
  %84 = phi ptr [ %82, %70 ], [ %49, %40 ]
  %85 = phi ptr [ %81, %70 ], [ %48, %40 ]
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = zext i8 %86 to i16
  %88 = shl nuw i16 %87, 8
  %89 = load i8, ptr %84, align 1, !tbaa !13
  %90 = zext i8 %89 to i16
  %91 = or disjoint i16 %88, %90
  %92 = sext i16 %91 to i32
  store i32 %92, ptr %3, align 4, !tbaa !40
  br label %93

93:                                               ; preds = %83, %68, %38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_GetKerningTableLength(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %7, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i16
  %13 = shl nuw i16 %12, 8
  %14 = getelementptr inbounds i8, ptr %7, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = zext i8 %15 to i16
  %17 = or disjoint i16 %13, %16
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds i8, ptr %7, i64 8
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = zext i8 %21 to i16
  %23 = shl nuw i16 %22, 8
  %24 = getelementptr inbounds i8, ptr %7, i64 9
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %25 to i16
  %27 = or disjoint i16 %23, %26
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, ptr %7, i64 10
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr inbounds i8, ptr %7, i64 11
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  br label %38

38:                                               ; preds = %19, %9, %1, %29
  %39 = phi i32 [ %37, %29 ], [ 0, %1 ], [ 0, %9 ], [ 0, %19 ]
  ret i32 %39
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_GetKerningTable(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %9, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = getelementptr inbounds i8, ptr %9, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i16
  %19 = or disjoint i16 %15, %18
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %9, i64 8
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = getelementptr inbounds i8, ptr %9, i64 9
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i16
  %29 = or disjoint i16 %25, %28
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %80

31:                                               ; preds = %21
  %32 = getelementptr inbounds i8, ptr %9, i64 10
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = getelementptr inbounds i8, ptr %9, i64 11
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = or disjoint i32 %35, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 %2)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, ptr %9, i64 18
  %44 = getelementptr inbounds i8, ptr %9, i64 20
  %45 = getelementptr inbounds i8, ptr %9, i64 22
  %46 = zext nneg i32 %40 to i64
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ 0, %42 ], [ %78, %47 ]
  %49 = mul nuw nsw i64 %48, 6
  %50 = getelementptr inbounds i8, ptr %43, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = or disjoint i32 %53, %56
  %58 = getelementptr inbounds %struct.stbtt_kerningentry, ptr %1, i64 %48
  store i32 %57, ptr %58, align 4, !tbaa !49
  %59 = getelementptr inbounds i8, ptr %44, i64 %49
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  %67 = getelementptr inbounds %struct.stbtt_kerningentry, ptr %1, i64 %48, i32 1
  store i32 %66, ptr %67, align 4, !tbaa !51
  %68 = getelementptr inbounds i8, ptr %45, i64 %49
  %69 = load i8, ptr %68, align 1, !tbaa !13
  %70 = zext i8 %69 to i16
  %71 = shl nuw i16 %70, 8
  %72 = getelementptr inbounds i8, ptr %68, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i16
  %75 = or disjoint i16 %71, %74
  %76 = sext i16 %75 to i32
  %77 = getelementptr inbounds %struct.stbtt_kerningentry, ptr %1, i64 %48, i32 2
  store i32 %76, ptr %77, align 4, !tbaa !52
  %78 = add nuw nsw i64 %48, 1
  %79 = icmp eq i64 %78, %46
  br i1 %79, label %80, label %47, !llvm.loop !53

80:                                               ; preds = %47, %31, %21, %11, %3
  %81 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %21 ], [ %40, %31 ], [ %40, %47 ]
  ret i32 %81
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_GetGlyphKernAdvance(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %383, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i16
  %14 = shl nuw i16 %13, 8
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i16
  %18 = or disjoint i16 %14, %17
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %476

20:                                               ; preds = %7
  %21 = getelementptr inbounds i8, ptr %11, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = getelementptr inbounds i8, ptr %11, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i16
  %28 = or disjoint i16 %24, %27
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %476

30:                                               ; preds = %20
  %31 = getelementptr inbounds i8, ptr %11, i64 8
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 8
  %35 = getelementptr inbounds i8, ptr %11, i64 9
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i64
  %38 = or disjoint i64 %34, %37
  %39 = getelementptr inbounds i8, ptr %11, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = or disjoint i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %476, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds i8, ptr %39, i64 2
  %50 = zext nneg i32 %46 to i64
  br label %51

51:                                               ; preds = %380, %48
  %52 = phi i64 [ 0, %48 ], [ %381, %380 ]
  %53 = shl nuw nsw i64 %52, 1
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 8
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = zext i8 %59 to i64
  %61 = or disjoint i64 %57, %60
  %62 = getelementptr inbounds i8, ptr %39, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i16
  %65 = shl nuw i16 %64, 8
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i16
  %69 = or disjoint i16 %65, %68
  %70 = getelementptr inbounds i8, ptr %62, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = getelementptr inbounds i8, ptr %62, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !13
  %76 = zext i8 %75 to i32
  %77 = or disjoint i32 %73, %76
  %78 = getelementptr inbounds i8, ptr %62, i64 6
  %79 = icmp eq i16 %69, 2
  %80 = icmp ne i32 %77, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %380

82:                                               ; preds = %51
  %83 = zext nneg i32 %77 to i64
  br label %84

84:                                               ; preds = %377, %82
  %85 = phi i64 [ 0, %82 ], [ %378, %377 ]
  %86 = shl nuw nsw i64 %85, 1
  %87 = getelementptr inbounds i8, ptr %78, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = zext i8 %88 to i64
  %90 = shl nuw nsw i64 %89, 8
  %91 = getelementptr inbounds i8, ptr %87, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = zext i8 %92 to i64
  %94 = or disjoint i64 %90, %93
  %95 = getelementptr inbounds i8, ptr %62, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = zext i8 %96 to i16
  %98 = shl nuw i16 %97, 8
  %99 = getelementptr inbounds i8, ptr %95, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i16
  %102 = or disjoint i16 %98, %101
  %103 = getelementptr inbounds i8, ptr %95, i64 2
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = zext i8 %104 to i64
  %106 = shl nuw nsw i64 %105, 8
  %107 = getelementptr inbounds i8, ptr %95, i64 3
  %108 = load i8, ptr %107, align 1, !tbaa !13
  %109 = zext i8 %108 to i64
  %110 = or disjoint i64 %106, %109
  %111 = getelementptr inbounds i8, ptr %95, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = zext i8 %112 to i16
  %114 = shl nuw i16 %113, 8
  %115 = getelementptr inbounds i8, ptr %111, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !13
  %117 = zext i8 %116 to i16
  %118 = or disjoint i16 %114, %117
  switch i16 %118, label %377 [
    i16 1, label %119
    i16 2, label %158
  ]

119:                                              ; preds = %84
  %120 = getelementptr inbounds i8, ptr %111, i64 2
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 8
  %124 = getelementptr inbounds i8, ptr %111, i64 3
  %125 = load i8, ptr %124, align 1, !tbaa !13
  %126 = zext i8 %125 to i32
  %127 = or disjoint i32 %123, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %377, label %129

129:                                              ; preds = %119
  %130 = add nsw i32 %127, -1
  %131 = getelementptr inbounds i8, ptr %111, i64 4
  br label %132

132:                                              ; preds = %154, %129
  %133 = phi i32 [ 0, %129 ], [ %156, %154 ]
  %134 = phi i32 [ %130, %129 ], [ %155, %154 ]
  %135 = add nsw i32 %134, %133
  %136 = ashr i32 %135, 1
  %137 = and i32 %135, -2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %131, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = getelementptr inbounds i8, ptr %139, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = zext i8 %144 to i32
  %146 = or disjoint i32 %142, %145
  %147 = icmp sgt i32 %146, %1
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = add nsw i32 %136, -1
  br label %154

150:                                              ; preds = %132
  %151 = icmp ult i32 %146, %1
  br i1 %151, label %152, label %216

152:                                              ; preds = %150
  %153 = add nsw i32 %136, 1
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i32 [ %149, %148 ], [ %134, %152 ]
  %156 = phi i32 [ %133, %148 ], [ %153, %152 ]
  %157 = icmp sgt i32 %156, %155
  br i1 %157, label %377, label %132, !llvm.loop !55

158:                                              ; preds = %84
  %159 = getelementptr inbounds i8, ptr %111, i64 2
  %160 = load i8, ptr %159, align 1, !tbaa !13
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 8
  %163 = getelementptr inbounds i8, ptr %111, i64 3
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = zext i8 %164 to i32
  %166 = or disjoint i32 %162, %165
  %167 = getelementptr inbounds i8, ptr %111, i64 4
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %377, label %169

169:                                              ; preds = %158
  %170 = add nsw i32 %166, -1
  br label %171

171:                                              ; preds = %201, %169
  %172 = phi i32 [ %203, %201 ], [ 0, %169 ]
  %173 = phi i32 [ %202, %201 ], [ %170, %169 ]
  %174 = add nsw i32 %173, %172
  %175 = ashr i32 %174, 1
  %176 = mul nsw i32 %175, 6
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, ptr %167, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !13
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 8
  %182 = getelementptr inbounds i8, ptr %178, i64 1
  %183 = load i8, ptr %182, align 1, !tbaa !13
  %184 = zext i8 %183 to i32
  %185 = or disjoint i32 %181, %184
  %186 = icmp sgt i32 %185, %1
  br i1 %186, label %187, label %189

187:                                              ; preds = %171
  %188 = add nsw i32 %175, -1
  br label %201

189:                                              ; preds = %171
  %190 = getelementptr inbounds i8, ptr %178, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !13
  %192 = zext i8 %191 to i32
  %193 = shl nuw nsw i32 %192, 8
  %194 = getelementptr inbounds i8, ptr %178, i64 3
  %195 = load i8, ptr %194, align 1, !tbaa !13
  %196 = zext i8 %195 to i32
  %197 = or disjoint i32 %193, %196
  %198 = icmp ult i32 %197, %1
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = add nsw i32 %175, 1
  br label %201

201:                                              ; preds = %199, %187
  %202 = phi i32 [ %188, %187 ], [ %173, %199 ]
  %203 = phi i32 [ %172, %187 ], [ %200, %199 ]
  %204 = icmp sgt i32 %203, %202
  br i1 %204, label %377, label %171, !llvm.loop !56

205:                                              ; preds = %189
  %206 = getelementptr inbounds i8, ptr %178, i64 4
  %207 = load i8, ptr %206, align 1, !tbaa !13
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 8
  %210 = getelementptr inbounds i8, ptr %178, i64 5
  %211 = load i8, ptr %210, align 1, !tbaa !13
  %212 = zext i8 %211 to i32
  %213 = or disjoint i32 %209, %212
  %214 = sub nsw i32 %1, %185
  %215 = add nsw i32 %214, %213
  br label %216

216:                                              ; preds = %150, %205
  %217 = phi i32 [ %215, %205 ], [ %136, %150 ]
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %377, label %219

219:                                              ; preds = %216
  switch i16 %102, label %476 [
    i16 1, label %220
    i16 2, label %303
  ]

220:                                              ; preds = %219
  %221 = getelementptr inbounds i8, ptr %95, i64 4
  %222 = load i8, ptr %221, align 1, !tbaa !13
  %223 = zext i8 %222 to i16
  %224 = shl nuw i16 %223, 8
  %225 = getelementptr inbounds i8, ptr %95, i64 5
  %226 = load i8, ptr %225, align 1, !tbaa !13
  %227 = zext i8 %226 to i16
  %228 = or disjoint i16 %224, %227
  %229 = getelementptr inbounds i8, ptr %95, i64 6
  %230 = load i8, ptr %229, align 1, !tbaa !13
  %231 = zext i8 %230 to i16
  %232 = shl nuw i16 %231, 8
  %233 = getelementptr inbounds i8, ptr %95, i64 7
  %234 = load i8, ptr %233, align 1, !tbaa !13
  %235 = zext i8 %234 to i16
  %236 = or disjoint i16 %232, %235
  %237 = icmp eq i16 %228, 4
  %238 = icmp eq i16 %236, 0
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %240, label %476

240:                                              ; preds = %220
  %241 = getelementptr inbounds i8, ptr %95, i64 8
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = zext i8 %242 to i32
  %244 = shl nuw nsw i32 %243, 8
  %245 = getelementptr inbounds i8, ptr %95, i64 9
  %246 = load i8, ptr %245, align 1, !tbaa !13
  %247 = zext i8 %246 to i32
  %248 = or disjoint i32 %244, %247
  %249 = getelementptr inbounds i8, ptr %95, i64 10
  %250 = shl nsw i32 %217, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %249, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !13
  %254 = zext i8 %253 to i64
  %255 = shl nuw nsw i64 %254, 8
  %256 = getelementptr inbounds i8, ptr %252, i64 1
  %257 = load i8, ptr %256, align 1, !tbaa !13
  %258 = zext i8 %257 to i64
  %259 = or disjoint i64 %255, %258
  %260 = getelementptr inbounds i8, ptr %95, i64 %259
  %261 = getelementptr inbounds i8, ptr %260, i64 2
  %262 = icmp slt i32 %217, %248
  br i1 %262, label %263, label %476

263:                                              ; preds = %240
  %264 = load i8, ptr %260, align 1, !tbaa !13
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 8
  %267 = getelementptr inbounds i8, ptr %260, i64 1
  %268 = load i8, ptr %267, align 1, !tbaa !13
  %269 = zext i8 %268 to i32
  %270 = or disjoint i32 %266, %269
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %377, label %272

272:                                              ; preds = %263
  %273 = add nsw i32 %270, -1
  br label %274

274:                                              ; preds = %299, %272
  %275 = phi i32 [ %301, %299 ], [ 0, %272 ]
  %276 = phi i32 [ %300, %299 ], [ %273, %272 ]
  %277 = add nsw i32 %276, %275
  %278 = ashr i32 %277, 1
  %279 = shl nsw i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %261, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 8
  %285 = getelementptr inbounds i8, ptr %281, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !13
  %287 = zext i8 %286 to i32
  %288 = or disjoint i32 %284, %287
  %289 = icmp sgt i32 %288, %2
  br i1 %289, label %290, label %292

290:                                              ; preds = %274
  %291 = add nsw i32 %278, -1
  br label %299

292:                                              ; preds = %274
  %293 = icmp ult i32 %288, %2
  br i1 %293, label %294, label %296

294:                                              ; preds = %292
  %295 = add nsw i32 %278, 1
  br label %299

296:                                              ; preds = %292
  %297 = getelementptr inbounds i8, ptr %281, i64 2
  %298 = getelementptr inbounds i8, ptr %281, i64 3
  br label %466

299:                                              ; preds = %294, %290
  %300 = phi i32 [ %291, %290 ], [ %276, %294 ]
  %301 = phi i32 [ %275, %290 ], [ %295, %294 ]
  %302 = icmp sgt i32 %301, %300
  br i1 %302, label %377, label %274, !llvm.loop !57

303:                                              ; preds = %219
  %304 = getelementptr inbounds i8, ptr %95, i64 4
  %305 = load i8, ptr %304, align 1, !tbaa !13
  %306 = zext i8 %305 to i16
  %307 = shl nuw i16 %306, 8
  %308 = getelementptr inbounds i8, ptr %95, i64 5
  %309 = load i8, ptr %308, align 1, !tbaa !13
  %310 = zext i8 %309 to i16
  %311 = or disjoint i16 %307, %310
  %312 = getelementptr inbounds i8, ptr %95, i64 6
  %313 = load i8, ptr %312, align 1, !tbaa !13
  %314 = zext i8 %313 to i16
  %315 = shl nuw i16 %314, 8
  %316 = getelementptr inbounds i8, ptr %95, i64 7
  %317 = load i8, ptr %316, align 1, !tbaa !13
  %318 = zext i8 %317 to i16
  %319 = or disjoint i16 %315, %318
  %320 = icmp eq i16 %311, 4
  %321 = icmp eq i16 %319, 0
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %323, label %476

323:                                              ; preds = %303
  %324 = getelementptr inbounds i8, ptr %95, i64 8
  %325 = load i8, ptr %324, align 1, !tbaa !13
  %326 = zext i8 %325 to i64
  %327 = shl nuw nsw i64 %326, 8
  %328 = getelementptr inbounds i8, ptr %95, i64 9
  %329 = load i8, ptr %328, align 1, !tbaa !13
  %330 = zext i8 %329 to i64
  %331 = or disjoint i64 %327, %330
  %332 = getelementptr inbounds i8, ptr %95, i64 10
  %333 = load i8, ptr %332, align 1, !tbaa !13
  %334 = zext i8 %333 to i64
  %335 = shl nuw nsw i64 %334, 8
  %336 = getelementptr inbounds i8, ptr %95, i64 11
  %337 = load i8, ptr %336, align 1, !tbaa !13
  %338 = zext i8 %337 to i64
  %339 = or disjoint i64 %335, %338
  %340 = getelementptr inbounds i8, ptr %95, i64 %331
  %341 = tail call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %340, i32 noundef %1)
  %342 = getelementptr inbounds i8, ptr %95, i64 %339
  %343 = tail call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %342, i32 noundef %2)
  %344 = getelementptr inbounds i8, ptr %95, i64 12
  %345 = load i8, ptr %344, align 1, !tbaa !13
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 8
  %348 = getelementptr inbounds i8, ptr %95, i64 13
  %349 = load i8, ptr %348, align 1, !tbaa !13
  %350 = zext i8 %349 to i32
  %351 = or disjoint i32 %347, %350
  %352 = icmp slt i32 %341, 0
  %353 = icmp sge i32 %341, %351
  %354 = select i1 %352, i1 true, i1 %353
  %355 = icmp slt i32 %343, 0
  %356 = select i1 %354, i1 true, i1 %355
  br i1 %356, label %476, label %357

357:                                              ; preds = %323
  %358 = getelementptr inbounds i8, ptr %95, i64 14
  %359 = load i8, ptr %358, align 1, !tbaa !13
  %360 = zext i8 %359 to i32
  %361 = shl nuw nsw i32 %360, 8
  %362 = getelementptr inbounds i8, ptr %95, i64 15
  %363 = load i8, ptr %362, align 1, !tbaa !13
  %364 = zext i8 %363 to i32
  %365 = or disjoint i32 %361, %364
  %366 = icmp ult i32 %343, %365
  br i1 %366, label %367, label %476

367:                                              ; preds = %357
  %368 = getelementptr inbounds i8, ptr %95, i64 16
  %369 = shl nuw nsw i32 %341, 1
  %370 = mul i32 %369, %365
  %371 = zext nneg i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %368, i64 %371
  %373 = shl nuw nsw i32 %343, 1
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds i8, ptr %372, i64 %374
  %376 = getelementptr inbounds i8, ptr %375, i64 1
  br label %466

377:                                              ; preds = %201, %154, %299, %263, %216, %158, %119, %84
  %378 = add nuw nsw i64 %85, 1
  %379 = icmp eq i64 %378, %83
  br i1 %379, label %380, label %84, !llvm.loop !58

380:                                              ; preds = %377, %51
  %381 = add nuw nsw i64 %52, 1
  %382 = icmp eq i64 %381, %50
  br i1 %382, label %476, label %51, !llvm.loop !59

383:                                              ; preds = %3
  %384 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 9
  %385 = load i32, ptr %384, align 4, !tbaa !48
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %476, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = sext i32 %385 to i64
  %391 = getelementptr inbounds i8, ptr %389, i64 %390
  %392 = getelementptr inbounds i8, ptr %391, i64 2
  %393 = load i8, ptr %392, align 1, !tbaa !13
  %394 = zext i8 %393 to i16
  %395 = shl nuw i16 %394, 8
  %396 = getelementptr inbounds i8, ptr %391, i64 3
  %397 = load i8, ptr %396, align 1, !tbaa !13
  %398 = zext i8 %397 to i16
  %399 = or disjoint i16 %395, %398
  %400 = icmp eq i16 %399, 0
  br i1 %400, label %476, label %401

401:                                              ; preds = %387
  %402 = getelementptr inbounds i8, ptr %391, i64 8
  %403 = load i8, ptr %402, align 1, !tbaa !13
  %404 = zext i8 %403 to i16
  %405 = shl nuw i16 %404, 8
  %406 = getelementptr inbounds i8, ptr %391, i64 9
  %407 = load i8, ptr %406, align 1, !tbaa !13
  %408 = zext i8 %407 to i16
  %409 = or disjoint i16 %405, %408
  %410 = icmp eq i16 %409, 1
  br i1 %410, label %411, label %476

411:                                              ; preds = %401
  %412 = getelementptr inbounds i8, ptr %391, i64 10
  %413 = load i8, ptr %412, align 1, !tbaa !13
  %414 = zext i8 %413 to i32
  %415 = shl nuw nsw i32 %414, 8
  %416 = getelementptr inbounds i8, ptr %391, i64 11
  %417 = load i8, ptr %416, align 1, !tbaa !13
  %418 = zext i8 %417 to i32
  %419 = or disjoint i32 %415, %418
  %420 = shl i32 %1, 16
  %421 = or i32 %420, %2
  %422 = icmp eq i32 %419, 0
  br i1 %422, label %476, label %423

423:                                              ; preds = %411
  %424 = add nsw i32 %419, -1
  %425 = getelementptr inbounds i8, ptr %391, i64 18
  br label %426

426:                                              ; preds = %462, %423
  %427 = phi i32 [ %424, %423 ], [ %464, %462 ]
  %428 = phi i32 [ 0, %423 ], [ %463, %462 ]
  %429 = add nsw i32 %428, %427
  %430 = ashr i32 %429, 1
  %431 = mul nsw i32 %430, 6
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, ptr %425, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !13
  %435 = zext i8 %434 to i32
  %436 = shl nuw i32 %435, 24
  %437 = getelementptr inbounds i8, ptr %433, i64 1
  %438 = load i8, ptr %437, align 1, !tbaa !13
  %439 = zext i8 %438 to i32
  %440 = shl nuw nsw i32 %439, 16
  %441 = or disjoint i32 %440, %436
  %442 = getelementptr inbounds i8, ptr %433, i64 2
  %443 = load i8, ptr %442, align 1, !tbaa !13
  %444 = zext i8 %443 to i32
  %445 = shl nuw nsw i32 %444, 8
  %446 = or disjoint i32 %441, %445
  %447 = getelementptr inbounds i8, ptr %433, i64 3
  %448 = load i8, ptr %447, align 1, !tbaa !13
  %449 = zext i8 %448 to i32
  %450 = or disjoint i32 %446, %449
  %451 = icmp ult i32 %421, %450
  br i1 %451, label %452, label %454

452:                                              ; preds = %426
  %453 = add nsw i32 %430, -1
  br label %462

454:                                              ; preds = %426
  %455 = icmp ugt i32 %421, %450
  br i1 %455, label %456, label %458

456:                                              ; preds = %454
  %457 = add nsw i32 %430, 1
  br label %462

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %391, i64 22
  %460 = getelementptr inbounds i8, ptr %459, i64 %432
  %461 = getelementptr inbounds i8, ptr %460, i64 1
  br label %466

462:                                              ; preds = %456, %452
  %463 = phi i32 [ %428, %452 ], [ %457, %456 ]
  %464 = phi i32 [ %453, %452 ], [ %427, %456 ]
  %465 = icmp sgt i32 %463, %464
  br i1 %465, label %476, label %426, !llvm.loop !60

466:                                              ; preds = %296, %367, %458
  %467 = phi ptr [ %461, %458 ], [ %298, %296 ], [ %376, %367 ]
  %468 = phi ptr [ %460, %458 ], [ %297, %296 ], [ %375, %367 ]
  %469 = load i8, ptr %468, align 1, !tbaa !13
  %470 = zext i8 %469 to i16
  %471 = shl nuw i16 %470, 8
  %472 = load i8, ptr %467, align 1, !tbaa !13
  %473 = zext i8 %472 to i16
  %474 = or disjoint i16 %471, %473
  %475 = sext i16 %474 to i32
  br label %476

476:                                              ; preds = %380, %240, %220, %219, %462, %466, %411, %401, %387, %357, %323, %303, %30, %20, %7, %383
  %477 = phi i32 [ 0, %383 ], [ 0, %7 ], [ 0, %20 ], [ 0, %303 ], [ 0, %357 ], [ 0, %323 ], [ 0, %30 ], [ 0, %387 ], [ 0, %401 ], [ 0, %411 ], [ %475, %466 ], [ 0, %462 ], [ 0, %219 ], [ 0, %220 ], [ 0, %240 ], [ 0, %380 ]
  ret i32 %477
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_GetCodepointKernAdvance(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !54
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %3
  %12 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %1)
  %13 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %2)
  %14 = tail call i32 @stbtt_GetGlyphKernAdvance(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %13)
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetCodepointHMetrics(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %6 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 34
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = getelementptr inbounds i8, ptr %11, i64 35
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %20 = icmp sgt i32 %19, %5
  %21 = icmp eq ptr %2, null
  br i1 %20, label %22, label %51

22:                                               ; preds = %4
  br i1 %21, label %39, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !47
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %7, i64 %26
  %28 = shl nsw i32 %5, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i16
  %33 = shl nuw i16 %32, 8
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i16
  %37 = or disjoint i16 %33, %36
  %38 = sext i16 %37 to i32
  store i32 %38, ptr %2, align 4, !tbaa !40
  br label %39

39:                                               ; preds = %23, %22
  %40 = icmp eq ptr %3, null
  br i1 %40, label %94, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !47
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %7, i64 %44
  %46 = shl nsw i32 %5, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 2
  %50 = getelementptr inbounds i8, ptr %48, i64 3
  br label %84

51:                                               ; preds = %4
  br i1 %21, label %69, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %54 = load i32, ptr %53, align 8, !tbaa !47
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %7, i64 %55
  %57 = shl nuw nsw i32 %19, 2
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr i8, ptr %56, i64 %58
  %60 = getelementptr i8, ptr %59, i64 -4
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i16
  %63 = shl nuw i16 %62, 8
  %64 = getelementptr i8, ptr %59, i64 -3
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i16
  %67 = or disjoint i16 %63, %66
  %68 = sext i16 %67 to i32
  store i32 %68, ptr %2, align 4, !tbaa !40
  br label %69

69:                                               ; preds = %52, %51
  %70 = icmp eq ptr %3, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  %73 = load i32, ptr %72, align 8, !tbaa !47
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %7, i64 %74
  %76 = shl nuw nsw i32 %19, 2
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  %79 = sub nsw i32 %5, %19
  %80 = shl nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  br label %84

84:                                               ; preds = %71, %41
  %85 = phi ptr [ %83, %71 ], [ %50, %41 ]
  %86 = phi ptr [ %82, %71 ], [ %49, %41 ]
  %87 = load i8, ptr %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = load i8, ptr %85, align 1, !tbaa !13
  %91 = zext i8 %90 to i16
  %92 = or disjoint i16 %89, %91
  %93 = sext i16 %92 to i32
  store i32 %93, ptr %3, align 4, !tbaa !40
  br label %94

94:                                               ; preds = %39, %69, %84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @stbtt_GetFontVMetrics(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i16
  %16 = shl nuw i16 %15, 8
  %17 = getelementptr inbounds i8, ptr %12, i64 5
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i16
  %20 = or disjoint i16 %16, %19
  %21 = sext i16 %20 to i32
  store i32 %21, ptr %1, align 4, !tbaa !40
  br label %22

22:                                               ; preds = %6, %4
  %23 = icmp eq ptr %2, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = getelementptr inbounds i8, ptr %30, i64 6
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i16
  %34 = shl nuw i16 %33, 8
  %35 = getelementptr inbounds i8, ptr %30, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i16
  %38 = or disjoint i16 %34, %37
  %39 = sext i16 %38 to i32
  store i32 %39, ptr %2, align 4, !tbaa !40
  br label %40

40:                                               ; preds = %24, %22
  %41 = icmp eq ptr %3, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !46
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 8
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  %53 = getelementptr inbounds i8, ptr %48, i64 9
  %54 = load i8, ptr %53, align 1, !tbaa !13
  %55 = zext i8 %54 to i16
  %56 = or disjoint i16 %52, %55
  %57 = sext i16 %56 to i32
  store i32 %57, ptr %3, align 4, !tbaa !40
  br label %58

58:                                               ; preds = %42, %40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @stbtt_GetFontVMetricsOS2(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 4
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds i8, ptr %10, i64 5
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = add i32 %8, 12
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %109, label %21

21:                                               ; preds = %4
  %22 = zext nneg i32 %18 to i64
  br label %23

23:                                               ; preds = %44, %21
  %24 = phi i64 [ 0, %21 ], [ %45, %44 ]
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 4
  %27 = add i32 %19, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 79
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, 83
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %29, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = icmp eq i8 %38, 47
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %29, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = icmp eq i8 %42, 50
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %36, %32, %23
  %45 = add nuw nsw i64 %24, 1
  %46 = icmp eq i64 %45, %22
  br i1 %46, label %109, label %23, !llvm.loop !62

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, ptr %29, i64 8
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 %50, 24
  %52 = getelementptr inbounds i8, ptr %29, i64 9
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or disjoint i32 %55, %51
  %57 = getelementptr inbounds i8, ptr %29, i64 10
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or disjoint i32 %56, %60
  %62 = getelementptr inbounds i8, ptr %29, i64 11
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i32
  %65 = or disjoint i32 %61, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %47
  %68 = icmp eq ptr %1, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %67
  %70 = sext i32 %65 to i64
  %71 = getelementptr inbounds i8, ptr %6, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 68
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i16
  %75 = shl nuw i16 %74, 8
  %76 = getelementptr inbounds i8, ptr %71, i64 69
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i16
  %79 = or disjoint i16 %75, %78
  %80 = sext i16 %79 to i32
  store i32 %80, ptr %1, align 4, !tbaa !40
  br label %81

81:                                               ; preds = %69, %67
  %82 = icmp eq ptr %2, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %81
  %84 = sext i32 %65 to i64
  %85 = getelementptr inbounds i8, ptr %6, i64 %84
  %86 = getelementptr inbounds i8, ptr %85, i64 70
  %87 = load i8, ptr %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = getelementptr inbounds i8, ptr %85, i64 71
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = zext i8 %91 to i16
  %93 = or disjoint i16 %89, %92
  %94 = sext i16 %93 to i32
  store i32 %94, ptr %2, align 4, !tbaa !40
  br label %95

95:                                               ; preds = %83, %81
  %96 = icmp eq ptr %3, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %95
  %98 = sext i32 %65 to i64
  %99 = getelementptr inbounds i8, ptr %6, i64 %98
  %100 = getelementptr inbounds i8, ptr %99, i64 72
  %101 = load i8, ptr %100, align 1, !tbaa !13
  %102 = zext i8 %101 to i16
  %103 = shl nuw i16 %102, 8
  %104 = getelementptr inbounds i8, ptr %99, i64 73
  %105 = load i8, ptr %104, align 1, !tbaa !13
  %106 = zext i8 %105 to i16
  %107 = or disjoint i16 %103, %106
  %108 = sext i16 %107 to i32
  store i32 %108, ptr %3, align 4, !tbaa !40
  br label %109

109:                                              ; preds = %44, %4, %95, %97, %47
  %110 = phi i32 [ 0, %47 ], [ 1, %97 ], [ 1, %95 ], [ 0, %4 ], [ 0, %44 ]
  ret i32 %110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @stbtt_GetFontBoundingBox(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds i8, ptr %11, i64 36
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = getelementptr inbounds i8, ptr %11, i64 37
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i16
  %19 = or disjoint i16 %15, %18
  %20 = sext i16 %19 to i32
  store i32 %20, ptr %1, align 4, !tbaa !40
  %21 = load i32, ptr %8, align 4, !tbaa !63
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  %24 = getelementptr inbounds i8, ptr %23, i64 38
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = getelementptr inbounds i8, ptr %23, i64 39
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i16
  %31 = or disjoint i16 %27, %30
  %32 = sext i16 %31 to i32
  store i32 %32, ptr %2, align 4, !tbaa !40
  %33 = load i32, ptr %8, align 4, !tbaa !63
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %7, i64 %34
  %36 = getelementptr inbounds i8, ptr %35, i64 40
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i16
  %39 = shl nuw i16 %38, 8
  %40 = getelementptr inbounds i8, ptr %35, i64 41
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i16
  %43 = or disjoint i16 %39, %42
  %44 = sext i16 %43 to i32
  store i32 %44, ptr %3, align 4, !tbaa !40
  %45 = load i32, ptr %8, align 4, !tbaa !63
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 42
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i16
  %51 = shl nuw i16 %50, 8
  %52 = getelementptr inbounds i8, ptr %47, i64 43
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i16
  %55 = or disjoint i16 %51, %54
  %56 = sext i16 %55 to i32
  store i32 %56, ptr %4, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @stbtt_ScaleForPixelHeight(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 5
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i16
  %16 = or disjoint i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds i8, ptr %8, i64 6
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = zext i8 %19 to i16
  %21 = shl nuw i16 %20, 8
  %22 = getelementptr inbounds i8, ptr %8, i64 7
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i16
  %25 = or disjoint i16 %21, %24
  %26 = sext i16 %25 to i32
  %27 = sub nsw i32 %17, %26
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %1, %28
  ret float %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @stbtt_ScaleForMappingEmToPixels(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 19
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i16
  %16 = or disjoint i16 %12, %15
  %17 = uitofp i16 %16 to float
  %18 = fdiv float %1, %17
  ret float %18
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbtt_FreeShape(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  tail call void @free(ptr noundef %1) #34
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @stbtt_FindSVGDoc(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %93

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds i8, ptr %12, i64 5
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  %21 = add i32 %10, 12
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %91, label %23

23:                                               ; preds = %8
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %46, %23
  %26 = phi i64 [ 0, %23 ], [ %47, %46 ]
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 4
  %29 = add i32 %21, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %4, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 83
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, 86
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %31, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 71
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %31, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = icmp eq i8 %44, 32
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %38, %34, %25
  %47 = add nuw nsw i64 %26, 1
  %48 = icmp eq i64 %47, %24
  br i1 %48, label %91, label %25, !llvm.loop !62

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, ptr %31, i64 8
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr inbounds i8, ptr %31, i64 9
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or disjoint i32 %57, %53
  %59 = getelementptr inbounds i8, ptr %31, i64 10
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or disjoint i32 %58, %62
  %64 = getelementptr inbounds i8, ptr %31, i64 11
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i32
  %67 = or disjoint i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %49
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds i8, ptr %4, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 %74, 24
  %76 = getelementptr inbounds i8, ptr %71, i64 3
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 16
  %80 = or disjoint i32 %79, %75
  %81 = getelementptr inbounds i8, ptr %71, i64 4
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = or disjoint i32 %80, %84
  %86 = getelementptr inbounds i8, ptr %71, i64 5
  %87 = load i8, ptr %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i32
  %89 = or disjoint i32 %85, %88
  %90 = add i32 %89, %67
  br label %91

91:                                               ; preds = %46, %69, %49, %8
  %92 = phi i32 [ %90, %69 ], [ 0, %8 ], [ 0, %49 ], [ 0, %46 ]
  store i32 %92, ptr %5, align 4, !tbaa !64
  br label %93

93:                                               ; preds = %2, %91
  %94 = phi i32 [ %6, %2 ], [ %92, %91 ]
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %4, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = getelementptr inbounds i8, ptr %96, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !13
  %102 = zext i8 %101 to i32
  %103 = or disjoint i32 %99, %102
  %104 = getelementptr inbounds i8, ptr %96, i64 2
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %133, label %106

106:                                              ; preds = %93
  %107 = zext nneg i32 %103 to i64
  br label %108

108:                                              ; preds = %106, %130
  %109 = phi i64 [ 0, %106 ], [ %131, %130 ]
  %110 = mul nuw nsw i64 %109, 12
  %111 = getelementptr inbounds i8, ptr %104, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = getelementptr inbounds i8, ptr %111, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !13
  %117 = zext i8 %116 to i32
  %118 = or disjoint i32 %114, %117
  %119 = icmp sgt i32 %118, %1
  br i1 %119, label %130, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds i8, ptr %111, i64 2
  %122 = load i8, ptr %121, align 1, !tbaa !13
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 8
  %125 = getelementptr inbounds i8, ptr %111, i64 3
  %126 = load i8, ptr %125, align 1, !tbaa !13
  %127 = zext i8 %126 to i32
  %128 = or disjoint i32 %124, %127
  %129 = icmp ult i32 %128, %1
  br i1 %129, label %130, label %133

130:                                              ; preds = %108, %120
  %131 = add nuw nsw i64 %109, 1
  %132 = icmp eq i64 %131, %107
  br i1 %132, label %133, label %108, !llvm.loop !65

133:                                              ; preds = %130, %120, %93
  %134 = phi ptr [ null, %93 ], [ %111, %120 ], [ null, %130 ]
  ret ptr %134
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_GetGlyphSVG(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %6, align 4, !tbaa !64
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %5, i64 %14
  %16 = getelementptr inbounds i8, ptr %10, i64 4
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = getelementptr inbounds i8, ptr %10, i64 5
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = or disjoint i64 %23, %19
  %25 = getelementptr inbounds i8, ptr %10, i64 6
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 8
  %29 = or disjoint i64 %24, %28
  %30 = getelementptr inbounds i8, ptr %10, i64 7
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i64
  %33 = or disjoint i64 %29, %32
  %34 = getelementptr inbounds i8, ptr %15, i64 %33
  store ptr %34, ptr %2, align 8, !tbaa !18
  %35 = getelementptr inbounds i8, ptr %10, i64 8
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = getelementptr inbounds i8, ptr %10, i64 9
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or disjoint i32 %42, %38
  %44 = getelementptr inbounds i8, ptr %10, i64 10
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or disjoint i32 %43, %47
  %49 = getelementptr inbounds i8, ptr %10, i64 11
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %48, %51
  br label %53

53:                                               ; preds = %9, %3, %12
  %54 = phi i32 [ %52, %12 ], [ 0, %3 ], [ 0, %9 ]
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_GetCodepointSVG(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %5 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 4, !tbaa !64
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %6, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 4
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i64
  %20 = shl nuw nsw i64 %19, 24
  %21 = getelementptr inbounds i8, ptr %11, i64 5
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 16
  %25 = or disjoint i64 %24, %20
  %26 = getelementptr inbounds i8, ptr %11, i64 6
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 8
  %30 = or disjoint i64 %25, %29
  %31 = getelementptr inbounds i8, ptr %11, i64 7
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = or disjoint i64 %30, %33
  %35 = getelementptr inbounds i8, ptr %16, i64 %34
  store ptr %35, ptr %2, align 8, !tbaa !18
  %36 = getelementptr inbounds i8, ptr %11, i64 8
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr inbounds i8, ptr %11, i64 9
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or disjoint i32 %43, %39
  %45 = getelementptr inbounds i8, ptr %11, i64 10
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or disjoint i32 %44, %48
  %50 = getelementptr inbounds i8, ptr %11, i64 11
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = or disjoint i32 %49, %52
  br label %54

54:                                               ; preds = %3, %10, %13
  %55 = phi i32 [ %53, %13 ], [ 0, %3 ], [ 0, %10 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetGlyphBitmapBoxSubpixel(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  store i32 0, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  store i32 0, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  %15 = call i32 @stbtt_GetGlyphBox(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14), !range !45
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq ptr %6, null
  br i1 %16, label %18, label %28

18:                                               ; preds = %10
  br i1 %17, label %20, label %19

19:                                               ; preds = %18
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %20

20:                                               ; preds = %19, %18
  %21 = icmp eq ptr %7, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %23

23:                                               ; preds = %22, %20
  %24 = icmp eq ptr %8, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %25, %23
  %27 = icmp eq ptr %9, null
  br i1 %27, label %63, label %61

28:                                               ; preds = %10
  br i1 %17, label %35, label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %11, align 4, !tbaa !40
  %31 = sitofp i32 %30 to float
  %32 = call float @llvm.fmuladd.f32(float %31, float %2, float %4)
  %33 = call float @llvm.floor.f32(float %32)
  %34 = fptosi float %33 to i32
  store i32 %34, ptr %6, align 4, !tbaa !40
  br label %35

35:                                               ; preds = %29, %28
  %36 = icmp eq ptr %7, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %14, align 4, !tbaa !40
  %39 = sub nsw i32 0, %38
  %40 = sitofp i32 %39 to float
  %41 = call float @llvm.fmuladd.f32(float %40, float %3, float %5)
  %42 = call float @llvm.floor.f32(float %41)
  %43 = fptosi float %42 to i32
  store i32 %43, ptr %7, align 4, !tbaa !40
  br label %44

44:                                               ; preds = %37, %35
  %45 = icmp eq ptr %8, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %13, align 4, !tbaa !40
  %48 = sitofp i32 %47 to float
  %49 = call float @llvm.fmuladd.f32(float %48, float %2, float %4)
  %50 = call float @llvm.ceil.f32(float %49)
  %51 = fptosi float %50 to i32
  store i32 %51, ptr %8, align 4, !tbaa !40
  br label %52

52:                                               ; preds = %46, %44
  %53 = icmp eq ptr %9, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %12, align 4, !tbaa !40
  %56 = sub nsw i32 0, %55
  %57 = sitofp i32 %56 to float
  %58 = call float @llvm.fmuladd.f32(float %57, float %3, float %5)
  %59 = call float @llvm.ceil.f32(float %58)
  %60 = fptosi float %59 to i32
  br label %61

61:                                               ; preds = %26, %54
  %62 = phi i32 [ %60, %54 ], [ 0, %26 ]
  store i32 %62, ptr %9, align 4, !tbaa !40
  br label %63

63:                                               ; preds = %61, %52, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetGlyphBitmapBox(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  tail call void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetCodepointBitmapBoxSubpixel(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  tail call void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef %0, i32 noundef %11, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetCodepointBitmapBox(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  tail call void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef %0, i32 noundef %9, float noundef %2, float noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_Rasterize(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture readnone %11) local_unnamed_addr #0 {
  %13 = alloca ptr, align 8
  %14 = alloca [129 x float], align 16
  %15 = alloca { float, float, i32 }, align 8
  %16 = alloca i32, align 4
  %17 = fcmp ogt float %4, %5
  %18 = select i1 %17, float %5, float %4
  %19 = fdiv float %1, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #34
  %20 = fmul float %19, %19
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %190

22:                                               ; preds = %12
  %23 = zext nneg i32 %3 to i64
  %24 = icmp ult i32 %3, 8
  br i1 %24, label %74, label %25

25:                                               ; preds = %22
  %26 = and i64 %23, 2147483640
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %68, %27 ]
  %29 = phi <4 x i32> [ zeroinitializer, %25 ], [ %66, %27 ]
  %30 = phi <4 x i32> [ zeroinitializer, %25 ], [ %67, %27 ]
  %31 = or disjoint i64 %28, 1
  %32 = or disjoint i64 %28, 2
  %33 = or disjoint i64 %28, 3
  %34 = or disjoint i64 %28, 4
  %35 = or disjoint i64 %28, 5
  %36 = or disjoint i64 %28, 6
  %37 = or disjoint i64 %28, 7
  %38 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %28, i32 6
  %39 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %31, i32 6
  %40 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %32, i32 6
  %41 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %33, i32 6
  %42 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %34, i32 6
  %43 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %35, i32 6
  %44 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %36, i32 6
  %45 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %37, i32 6
  %46 = load i8, ptr %38, align 2, !tbaa !19
  %47 = load i8, ptr %39, align 2, !tbaa !19
  %48 = load i8, ptr %40, align 2, !tbaa !19
  %49 = load i8, ptr %41, align 2, !tbaa !19
  %50 = insertelement <4 x i8> poison, i8 %46, i64 0
  %51 = insertelement <4 x i8> %50, i8 %47, i64 1
  %52 = insertelement <4 x i8> %51, i8 %48, i64 2
  %53 = insertelement <4 x i8> %52, i8 %49, i64 3
  %54 = load i8, ptr %42, align 2, !tbaa !19
  %55 = load i8, ptr %43, align 2, !tbaa !19
  %56 = load i8, ptr %44, align 2, !tbaa !19
  %57 = load i8, ptr %45, align 2, !tbaa !19
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = icmp eq <4 x i8> %53, <i8 1, i8 1, i8 1, i8 1>
  %63 = icmp eq <4 x i8> %61, <i8 1, i8 1, i8 1, i8 1>
  %64 = zext <4 x i1> %62 to <4 x i32>
  %65 = zext <4 x i1> %63 to <4 x i32>
  %66 = add <4 x i32> %29, %64
  %67 = add <4 x i32> %30, %65
  %68 = add nuw i64 %28, 8
  %69 = icmp eq i64 %68, %26
  br i1 %69, label %70, label %27, !llvm.loop !66

70:                                               ; preds = %27
  %71 = add <4 x i32> %67, %66
  %72 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %71)
  %73 = icmp eq i64 %26, %23
  br i1 %73, label %87, label %74

74:                                               ; preds = %22, %70
  %75 = phi i64 [ 0, %22 ], [ %26, %70 ]
  %76 = phi i32 [ 0, %22 ], [ %72, %70 ]
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %85, %77 ], [ %75, %74 ]
  %79 = phi i32 [ %84, %77 ], [ %76, %74 ]
  %80 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %78, i32 6
  %81 = load i8, ptr %80, align 2, !tbaa !19
  %82 = icmp eq i8 %81, 1
  %83 = zext i1 %82 to i32
  %84 = add nuw nsw i32 %79, %83
  %85 = add nuw nsw i64 %78, 1
  %86 = icmp eq i64 %85, %23
  br i1 %86, label %87, label %77, !llvm.loop !67

87:                                               ; preds = %77, %70
  %88 = phi i32 [ %72, %70 ], [ %84, %77 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %190, label %90

90:                                               ; preds = %87
  %91 = zext nneg i32 %88 to i64
  %92 = shl nuw nsw i64 %91, 2
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #33
  %94 = icmp eq ptr %93, null
  br i1 %94, label %190, label %95

95:                                               ; preds = %90, %184
  %96 = phi i32 [ %185, %184 ], [ 0, %90 ]
  %97 = phi i1 [ true, %184 ], [ false, %90 ]
  %98 = phi i1 [ false, %184 ], [ true, %90 ]
  %99 = phi i32 [ %180, %184 ], [ 0, %90 ]
  %100 = phi ptr [ %107, %184 ], [ null, %90 ]
  br i1 %97, label %101, label %106

101:                                              ; preds = %95
  %102 = sext i32 %96 to i64
  %103 = shl nsw i64 %102, 3
  %104 = tail call noalias ptr @malloc(i64 noundef %103) #33
  %105 = icmp eq ptr %104, null
  br i1 %105, label %189, label %106

106:                                              ; preds = %95, %101
  %107 = phi ptr [ %104, %101 ], [ %100, %95 ]
  store i32 0, ptr %16, align 4, !tbaa !40
  %108 = icmp eq ptr %107, null
  br label %109

109:                                              ; preds = %178, %106
  %110 = phi i64 [ 0, %106 ], [ %182, %178 ]
  %111 = phi i32 [ %99, %106 ], [ %180, %178 ]
  %112 = phi i32 [ -1, %106 ], [ %179, %178 ]
  %113 = phi <2 x float> [ zeroinitializer, %106 ], [ %181, %178 ]
  %114 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110
  %115 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 6
  %116 = load i8, ptr %115, align 2, !tbaa !19
  switch i8 %116, label %178 [
    i8 1, label %117
    i8 2, label %132
    i8 3, label %140
    i8 4, label %156
  ]

117:                                              ; preds = %109
  %118 = icmp sgt i32 %112, -1
  %119 = load i32, ptr %16, align 4, !tbaa !40
  br i1 %118, label %120, label %124

120:                                              ; preds = %117
  %121 = sub nsw i32 %119, %111
  %122 = zext nneg i32 %112 to i64
  %123 = getelementptr inbounds i32, ptr %93, i64 %122
  store i32 %121, ptr %123, align 4, !tbaa !40
  br label %124

124:                                              ; preds = %120, %117
  %125 = add nsw i32 %112, 1
  %126 = load <2 x i16>, ptr %114, align 2, !tbaa !33
  %127 = sitofp <2 x i16> %126 to <2 x float>
  %128 = add nsw i32 %119, 1
  store i32 %128, ptr %16, align 4, !tbaa !40
  br i1 %108, label %178, label %129

129:                                              ; preds = %124
  %130 = sext i32 %119 to i64
  %131 = getelementptr inbounds %struct.stbtt__point, ptr %107, i64 %130
  store <2 x float> %127, ptr %131, align 4, !tbaa !68
  br label %178

132:                                              ; preds = %109
  %133 = load <2 x i16>, ptr %114, align 2, !tbaa !33
  %134 = sitofp <2 x i16> %133 to <2 x float>
  %135 = load i32, ptr %16, align 4, !tbaa !40
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %16, align 4, !tbaa !40
  br i1 %108, label %178, label %137

137:                                              ; preds = %132
  %138 = sext i32 %135 to i64
  %139 = getelementptr inbounds %struct.stbtt__point, ptr %107, i64 %138
  store <2 x float> %134, ptr %139, align 4, !tbaa !68
  br label %178

140:                                              ; preds = %109
  %141 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 2
  %142 = load i16, ptr %141, align 2, !tbaa !27
  %143 = sitofp i16 %142 to float
  %144 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 3
  %145 = load i16, ptr %144, align 2, !tbaa !28
  %146 = sitofp i16 %145 to float
  %147 = load i16, ptr %114, align 2, !tbaa !23
  %148 = sitofp i16 %147 to float
  %149 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !25
  %151 = sitofp i16 %150 to float
  %152 = extractelement <2 x float> %113, i64 0
  %153 = extractelement <2 x float> %113, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef %107, ptr noundef nonnull %16, float noundef %152, float noundef %153, float noundef %143, float noundef %146, float noundef %148, float noundef %151, float noundef %20, i32 noundef 0)
  %154 = load <2 x i16>, ptr %114, align 2, !tbaa !33
  %155 = sitofp <2 x i16> %154 to <2 x float>
  br label %178

156:                                              ; preds = %109
  %157 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 2
  %158 = load i16, ptr %157, align 2, !tbaa !27
  %159 = sitofp i16 %158 to float
  %160 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 3
  %161 = load i16, ptr %160, align 2, !tbaa !28
  %162 = sitofp i16 %161 to float
  %163 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 4
  %164 = load i16, ptr %163, align 2, !tbaa !69
  %165 = sitofp i16 %164 to float
  %166 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 5
  %167 = load i16, ptr %166, align 2, !tbaa !70
  %168 = sitofp i16 %167 to float
  %169 = load i16, ptr %114, align 2, !tbaa !23
  %170 = sitofp i16 %169 to float
  %171 = getelementptr inbounds %struct.stbtt_vertex, ptr %2, i64 %110, i32 1
  %172 = load i16, ptr %171, align 2, !tbaa !25
  %173 = sitofp i16 %172 to float
  %174 = extractelement <2 x float> %113, i64 0
  %175 = extractelement <2 x float> %113, i64 1
  call fastcc void @stbtt__tesselate_cubic(ptr noundef %107, ptr noundef nonnull %16, float noundef %174, float noundef %175, float noundef %159, float noundef %162, float noundef %165, float noundef %168, float noundef %170, float noundef %173, float noundef %20, i32 noundef 0)
  %176 = load <2 x i16>, ptr %114, align 2, !tbaa !33
  %177 = sitofp <2 x i16> %176 to <2 x float>
  br label %178

178:                                              ; preds = %156, %140, %137, %132, %129, %124, %109
  %179 = phi i32 [ %112, %109 ], [ %112, %156 ], [ %112, %140 ], [ %125, %124 ], [ %125, %129 ], [ %112, %132 ], [ %112, %137 ]
  %180 = phi i32 [ %111, %109 ], [ %111, %156 ], [ %111, %140 ], [ %119, %124 ], [ %119, %129 ], [ %111, %132 ], [ %111, %137 ]
  %181 = phi <2 x float> [ %113, %109 ], [ %177, %156 ], [ %155, %140 ], [ %127, %124 ], [ %127, %129 ], [ %134, %132 ], [ %134, %137 ]
  %182 = add nuw nsw i64 %110, 1
  %183 = icmp eq i64 %182, %23
  br i1 %183, label %184, label %109, !llvm.loop !71

184:                                              ; preds = %178
  %185 = load i32, ptr %16, align 4, !tbaa !40
  %186 = sub nsw i32 %185, %180
  %187 = sext i32 %179 to i64
  %188 = getelementptr inbounds i32, ptr %93, i64 %187
  store i32 %186, ptr %188, align 4, !tbaa !40
  br i1 %98, label %95, label %191, !llvm.loop !72

189:                                              ; preds = %101
  tail call void @free(ptr noundef nonnull %93) #34
  br label %190

190:                                              ; preds = %87, %189, %90, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #34
  br label %794

191:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #34
  br i1 %108, label %794, label %192

192:                                              ; preds = %191
  %193 = fneg float %5
  %194 = icmp ult i32 %88, 8
  br i1 %194, label %213, label %195

195:                                              ; preds = %192
  %196 = and i64 %91, 2147483640
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %207, %197 ]
  %199 = phi <4 x i32> [ zeroinitializer, %195 ], [ %205, %197 ]
  %200 = phi <4 x i32> [ zeroinitializer, %195 ], [ %206, %197 ]
  %201 = getelementptr inbounds i32, ptr %93, i64 %198
  %202 = getelementptr inbounds i32, ptr %201, i64 4
  %203 = load <4 x i32>, ptr %201, align 4, !tbaa !40
  %204 = load <4 x i32>, ptr %202, align 4, !tbaa !40
  %205 = add <4 x i32> %203, %199
  %206 = add <4 x i32> %204, %200
  %207 = add nuw i64 %198, 8
  %208 = icmp eq i64 %207, %196
  br i1 %208, label %209, label %197, !llvm.loop !73

209:                                              ; preds = %197
  %210 = add <4 x i32> %206, %205
  %211 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %210)
  %212 = icmp eq i64 %196, %91
  br i1 %212, label %224, label %213

213:                                              ; preds = %192, %209
  %214 = phi i64 [ 0, %192 ], [ %196, %209 ]
  %215 = phi i32 [ 0, %192 ], [ %211, %209 ]
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ %222, %216 ], [ %214, %213 ]
  %218 = phi i32 [ %221, %216 ], [ %215, %213 ]
  %219 = getelementptr inbounds i32, ptr %93, i64 %217
  %220 = load i32, ptr %219, align 4, !tbaa !40
  %221 = add nsw i32 %220, %218
  %222 = add nuw nsw i64 %217, 1
  %223 = icmp eq i64 %222, %91
  br i1 %223, label %224, label %216, !llvm.loop !74

224:                                              ; preds = %216, %209
  %225 = phi i32 [ %211, %209 ], [ %221, %216 ]
  %226 = icmp eq i32 %10, 0
  %227 = select i1 %226, float %5, float %193
  %228 = add nsw i32 %225, 1
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %229, 20
  %231 = tail call noalias ptr @malloc(i64 noundef %230) #33
  %232 = icmp eq ptr %231, null
  br i1 %232, label %793, label %233

233:                                              ; preds = %224
  %234 = insertelement <4 x float> poison, float %4, i64 0
  %235 = insertelement <4 x float> %234, float %227, i64 1
  %236 = shufflevector <4 x float> %235, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %237 = insertelement <4 x float> poison, float %6, i64 0
  %238 = insertelement <4 x float> %237, float %7, i64 1
  %239 = shufflevector <4 x float> %238, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %240

240:                                              ; preds = %233, %298
  %241 = phi i64 [ %300, %298 ], [ 0, %233 ]
  %242 = phi i32 [ %299, %298 ], [ 0, %233 ]
  %243 = phi i32 [ %248, %298 ], [ 0, %233 ]
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.stbtt__point, ptr %107, i64 %244
  %246 = getelementptr inbounds i32, ptr %93, i64 %241
  %247 = load i32, ptr %246, align 4, !tbaa !40
  %248 = add nsw i32 %247, %243
  %249 = icmp sgt i32 %247, 0
  br i1 %249, label %250, label %298

250:                                              ; preds = %240
  %251 = add nsw i32 %247, -1
  %252 = zext nneg i32 %247 to i64
  br label %253

253:                                              ; preds = %293, %250
  %254 = phi i64 [ 0, %250 ], [ %296, %293 ]
  %255 = phi i32 [ %242, %250 ], [ %295, %293 ]
  %256 = phi i32 [ %251, %250 ], [ %294, %293 ]
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.stbtt__point, ptr %245, i64 %257, i32 1
  %259 = load float, ptr %258, align 4, !tbaa !75
  %260 = getelementptr inbounds %struct.stbtt__point, ptr %245, i64 %254, i32 1
  %261 = load float, ptr %260, align 4, !tbaa !75
  %262 = fcmp oeq float %259, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = trunc i64 %254 to i32
  br label %293

265:                                              ; preds = %253
  %266 = sext i32 %255 to i64
  %267 = getelementptr inbounds %struct.stbtt__edge, ptr %231, i64 %266
  %268 = getelementptr inbounds %struct.stbtt__edge, ptr %231, i64 %266, i32 4
  store i32 0, ptr %268, align 4, !tbaa !77
  %269 = trunc i64 %254 to i32
  br i1 %226, label %272, label %270

270:                                              ; preds = %265
  %271 = fcmp ogt float %259, %261
  br i1 %271, label %274, label %279

272:                                              ; preds = %265
  %273 = fcmp olt float %259, %261
  br i1 %273, label %274, label %279

274:                                              ; preds = %272, %270
  store i32 1, ptr %268, align 4, !tbaa !77
  %275 = shl i64 %254, 32
  %276 = ashr exact i64 %275, 32
  %277 = getelementptr inbounds %struct.stbtt__point, ptr %245, i64 %276, i32 1
  %278 = load float, ptr %277, align 4, !tbaa !75
  br label %279

279:                                              ; preds = %274, %272, %270
  %280 = phi float [ %278, %274 ], [ %259, %272 ], [ %259, %270 ]
  %281 = phi i64 [ %276, %274 ], [ %257, %272 ], [ %257, %270 ]
  %282 = phi i32 [ %256, %274 ], [ %269, %272 ], [ %269, %270 ]
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.stbtt__point, ptr %245, i64 %283
  %285 = load <2 x float>, ptr %284, align 4, !tbaa !68
  %286 = getelementptr inbounds %struct.stbtt__point, ptr %245, i64 %281
  %287 = load float, ptr %286, align 4, !tbaa !79
  %288 = shufflevector <2 x float> %285, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %289 = insertelement <4 x float> %288, float %287, i64 2
  %290 = insertelement <4 x float> %289, float %280, i64 3
  %291 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %290, <4 x float> %236, <4 x float> %239)
  store <4 x float> %291, ptr %267, align 4, !tbaa !68
  %292 = add nsw i32 %255, 1
  br label %293

293:                                              ; preds = %279, %263
  %294 = phi i32 [ %264, %263 ], [ %269, %279 ]
  %295 = phi i32 [ %255, %263 ], [ %292, %279 ]
  %296 = add nuw nsw i64 %254, 1
  %297 = icmp eq i64 %296, %252
  br i1 %297, label %298, label %253, !llvm.loop !80

298:                                              ; preds = %293, %240
  %299 = phi i32 [ %242, %240 ], [ %295, %293 ]
  %300 = add nuw nsw i64 %241, 1
  %301 = icmp eq i64 %300, %91
  br i1 %301, label %302, label %240, !llvm.loop !81

302:                                              ; preds = %298
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %231, i32 noundef %299)
  %303 = icmp sgt i32 %299, 1
  br i1 %303, label %304, label %335

304:                                              ; preds = %302
  %305 = zext nneg i32 %299 to i64
  br label %306

306:                                              ; preds = %332, %304
  %307 = phi i64 [ 1, %304 ], [ %333, %332 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15)
  %308 = getelementptr inbounds %struct.stbtt__edge, ptr %231, i64 %307
  %309 = load <2 x float>, ptr %308, align 4
  %310 = getelementptr inbounds i8, ptr %308, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %310, i64 12, i1 false), !tbaa.struct !82
  %311 = extractelement <2 x float> %309, i64 1
  br label %312

312:                                              ; preds = %318, %306
  %313 = phi i64 [ %307, %306 ], [ %320, %318 ]
  %314 = getelementptr %struct.stbtt__edge, ptr %231, i64 %313
  %315 = getelementptr %struct.stbtt__edge, ptr %314, i64 -1, i32 1
  %316 = load float, ptr %315, align 4, !tbaa !83
  %317 = fcmp olt float %311, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = getelementptr %struct.stbtt__edge, ptr %314, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %314, ptr noundef nonnull align 4 dereferenceable(20) %319, i64 20, i1 false), !tbaa.struct !84
  %320 = add nsw i64 %313, -1
  %321 = icmp sgt i64 %313, 1
  br i1 %321, label %312, label %324

322:                                              ; preds = %312
  %323 = trunc i64 %313 to i32
  br label %324

324:                                              ; preds = %318, %322
  %325 = phi i32 [ %323, %322 ], [ 0, %318 ]
  %326 = zext i32 %325 to i64
  %327 = icmp eq i64 %307, %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = sext i32 %325 to i64
  %330 = getelementptr inbounds %struct.stbtt__edge, ptr %231, i64 %329
  store <2 x float> %309, ptr %330, align 4
  %331 = getelementptr inbounds i8, ptr %330, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %331, ptr noundef nonnull align 8 dereferenceable(12) %15, i64 12, i1 false), !tbaa.struct !82
  br label %332

332:                                              ; preds = %328, %324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15)
  %333 = add nuw nsw i64 %307, 1
  %334 = icmp eq i64 %333, %305
  br i1 %334, label %335, label %306, !llvm.loop !85

335:                                              ; preds = %332, %302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13)
  store ptr null, ptr %13, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 516, ptr nonnull %14) #34
  %336 = load i32, ptr %0, align 8, !tbaa !86
  %337 = icmp sgt i32 %336, 64
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = shl nuw nsw i32 %336, 1
  %340 = or disjoint i32 %339, 1
  %341 = zext nneg i32 %340 to i64
  %342 = shl nuw nsw i64 %341, 2
  %343 = tail call noalias ptr @malloc(i64 noundef %342) #33
  br label %344

344:                                              ; preds = %338, %335
  %345 = phi ptr [ %343, %338 ], [ %14, %335 ]
  %346 = sext i32 %336 to i64
  %347 = getelementptr inbounds float, ptr %345, i64 %346
  %348 = getelementptr inbounds %struct.stbtt__bitmap, ptr %0, i64 0, i32 1
  %349 = load i32, ptr %348, align 4, !tbaa !88
  %350 = add nsw i32 %349, %9
  %351 = sitofp i32 %350 to float
  %352 = fadd float %351, 1.000000e+00
  %353 = sext i32 %299 to i64
  %354 = getelementptr inbounds %struct.stbtt__edge, ptr %231, i64 %353, i32 1
  store float %352, ptr %354, align 4, !tbaa !83
  %355 = icmp sgt i32 %349, 0
  br i1 %355, label %356, label %789

356:                                              ; preds = %344
  %357 = sitofp i32 %8 to float
  %358 = icmp ne i32 %9, 0
  %359 = getelementptr inbounds float, ptr %347, i64 1
  %360 = getelementptr inbounds %struct.stbtt__bitmap, ptr %0, i64 0, i32 3
  %361 = getelementptr inbounds %struct.stbtt__bitmap, ptr %0, i64 0, i32 2
  br label %362

362:                                              ; preds = %778, %356
  %363 = phi i32 [ %336, %356 ], [ %741, %778 ]
  %364 = phi ptr [ null, %356 ], [ %742, %778 ]
  %365 = phi ptr [ %231, %356 ], [ %483, %778 ]
  %366 = phi i32 [ %9, %356 ], [ %779, %778 ]
  %367 = phi i32 [ 0, %356 ], [ %780, %778 ]
  %368 = phi ptr [ null, %356 ], [ %482, %778 ]
  %369 = phi i32 [ 0, %356 ], [ %481, %778 ]
  %370 = phi ptr [ null, %356 ], [ %480, %778 ]
  %371 = sitofp i32 %366 to float
  %372 = fadd float %371, 1.000000e+00
  %373 = sext i32 %363 to i64
  %374 = shl nsw i64 %373, 2
  call void @llvm.memset.p0.i64(ptr align 4 %345, i8 0, i64 %374, i1 false)
  %375 = add nsw i32 %363, 1
  %376 = sext i32 %375 to i64
  %377 = shl nsw i64 %376, 2
  call void @llvm.memset.p0.i64(ptr align 4 %347, i8 0, i64 %377, i1 false)
  %378 = icmp eq ptr %364, null
  br i1 %378, label %379, label %387

379:                                              ; preds = %401, %362
  %380 = phi ptr [ %370, %362 ], [ %402, %401 ]
  %381 = getelementptr inbounds %struct.stbtt__edge, ptr %365, i64 0, i32 1
  %382 = load float, ptr %381, align 4, !tbaa !83
  %383 = fcmp ugt float %382, %372
  br i1 %383, label %479, label %384

384:                                              ; preds = %379
  %385 = icmp eq i32 %367, 0
  %386 = and i1 %358, %385
  br label %406

387:                                              ; preds = %362, %401
  %388 = phi ptr [ %404, %401 ], [ %364, %362 ]
  %389 = phi ptr [ %403, %401 ], [ %13, %362 ]
  %390 = phi ptr [ %402, %401 ], [ %370, %362 ]
  %391 = getelementptr inbounds %struct.stbtt__active_edge, ptr %388, i64 0, i32 6
  %392 = load float, ptr %391, align 4, !tbaa !89
  %393 = fcmp ugt float %392, %371
  br i1 %393, label %401, label %394

394:                                              ; preds = %387
  %395 = load ptr, ptr %388, align 8, !tbaa !91
  store ptr %395, ptr %389, align 8, !tbaa !18
  %396 = getelementptr inbounds %struct.stbtt__active_edge, ptr %388, i64 0, i32 4
  %397 = load float, ptr %396, align 4, !tbaa !92
  %398 = fcmp une float %397, 0.000000e+00
  br i1 %398, label %400, label %399

399:                                              ; preds = %394
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 3331, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__rasterize_sorted_edges) #32
  unreachable

400:                                              ; preds = %394
  store float 0.000000e+00, ptr %396, align 4, !tbaa !92
  store ptr %390, ptr %388, align 8, !tbaa !18
  br label %401

401:                                              ; preds = %400, %387
  %402 = phi ptr [ %390, %387 ], [ %388, %400 ]
  %403 = phi ptr [ %388, %387 ], [ %389, %400 ]
  %404 = load ptr, ptr %403, align 8, !tbaa !18
  %405 = icmp eq ptr %404, null
  br i1 %405, label %379, label %387, !llvm.loop !93

406:                                              ; preds = %471, %384
  %407 = phi float [ %382, %384 ], [ %477, %471 ]
  %408 = phi ptr [ %365, %384 ], [ %475, %471 ]
  %409 = phi ptr [ %368, %384 ], [ %474, %471 ]
  %410 = phi i32 [ %369, %384 ], [ %473, %471 ]
  %411 = phi ptr [ %380, %384 ], [ %472, %471 ]
  %412 = getelementptr inbounds %struct.stbtt__edge, ptr %408, i64 0, i32 3
  %413 = load float, ptr %412, align 4, !tbaa !94
  %414 = fcmp une float %407, %413
  br i1 %414, label %415, label %471

415:                                              ; preds = %406
  %416 = icmp eq ptr %411, null
  br i1 %416, label %419, label %417

417:                                              ; preds = %415
  %418 = load ptr, ptr %411, align 8, !tbaa !18
  br label %435

419:                                              ; preds = %415
  %420 = icmp eq i32 %410, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %419
  %422 = add nsw i32 %410, -1
  br label %427

423:                                              ; preds = %419
  %424 = tail call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #33
  %425 = icmp eq ptr %424, null
  br i1 %425, label %434, label %426

426:                                              ; preds = %423
  store ptr %409, ptr %424, align 8, !tbaa !95
  br label %427

427:                                              ; preds = %426, %421
  %428 = phi ptr [ %424, %426 ], [ %409, %421 ]
  %429 = phi i32 [ 799, %426 ], [ %422, %421 ]
  %430 = getelementptr inbounds i8, ptr %428, i64 8
  %431 = sext i32 %429 to i64
  %432 = shl nsw i64 %431, 5
  %433 = getelementptr inbounds i8, ptr %430, i64 %432
  br label %435

434:                                              ; preds = %423
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 2861, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__new_active) #32
  unreachable

435:                                              ; preds = %427, %417
  %436 = phi ptr [ null, %427 ], [ %418, %417 ]
  %437 = phi i32 [ %429, %427 ], [ %410, %417 ]
  %438 = phi ptr [ %428, %427 ], [ %409, %417 ]
  %439 = phi ptr [ %433, %427 ], [ %411, %417 ]
  %440 = getelementptr inbounds %struct.stbtt__edge, ptr %408, i64 0, i32 2
  %441 = load float, ptr %440, align 4, !tbaa !97
  %442 = load float, ptr %408, align 4, !tbaa !98
  %443 = fsub float %441, %442
  %444 = fsub float %413, %407
  %445 = fdiv float %443, %444
  %446 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 2
  store float %445, ptr %446, align 4, !tbaa !99
  %447 = fcmp une float %445, 0.000000e+00
  %448 = fdiv float 1.000000e+00, %445
  %449 = select i1 %447, float %448, float 0.000000e+00
  %450 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 3
  store float %449, ptr %450, align 8, !tbaa !100
  %451 = fsub float %371, %407
  %452 = tail call float @llvm.fmuladd.f32(float %445, float %451, float %442)
  %453 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 1
  %454 = fsub float %452, %357
  store float %454, ptr %453, align 8, !tbaa !101
  %455 = getelementptr inbounds %struct.stbtt__edge, ptr %408, i64 0, i32 4
  %456 = load i32, ptr %455, align 4, !tbaa !77
  %457 = icmp eq i32 %456, 0
  %458 = select i1 %457, float -1.000000e+00, float 1.000000e+00
  %459 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 4
  store float %458, ptr %459, align 4, !tbaa !92
  %460 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 5
  store float %407, ptr %460, align 8, !tbaa !102
  %461 = getelementptr inbounds %struct.stbtt__active_edge, ptr %439, i64 0, i32 6
  store float %413, ptr %461, align 4, !tbaa !89
  store ptr null, ptr %439, align 8, !tbaa !91
  %462 = fcmp olt float %413, %371
  %463 = select i1 %386, i1 %462, i1 false
  br i1 %463, label %464, label %465

464:                                              ; preds = %435
  store float %371, ptr %461, align 4, !tbaa !89
  br label %465

465:                                              ; preds = %464, %435
  %466 = phi float [ %371, %464 ], [ %413, %435 ]
  %467 = fcmp ult float %466, %371
  br i1 %467, label %468, label %469

468:                                              ; preds = %465
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 3350, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__rasterize_sorted_edges) #32
  unreachable

469:                                              ; preds = %465
  %470 = load ptr, ptr %13, align 8, !tbaa !18
  store ptr %470, ptr %439, align 8, !tbaa !91
  store ptr %439, ptr %13, align 8, !tbaa !18
  br label %471

471:                                              ; preds = %469, %406
  %472 = phi ptr [ %436, %469 ], [ %411, %406 ]
  %473 = phi i32 [ %437, %469 ], [ %410, %406 ]
  %474 = phi ptr [ %438, %469 ], [ %409, %406 ]
  %475 = getelementptr inbounds %struct.stbtt__edge, ptr %408, i64 1
  %476 = getelementptr inbounds %struct.stbtt__edge, ptr %408, i64 1, i32 1
  %477 = load float, ptr %476, align 4, !tbaa !83
  %478 = fcmp ugt float %477, %372
  br i1 %478, label %479, label %406, !llvm.loop !103

479:                                              ; preds = %471, %379
  %480 = phi ptr [ %380, %379 ], [ %472, %471 ]
  %481 = phi i32 [ %369, %379 ], [ %473, %471 ]
  %482 = phi ptr [ %368, %379 ], [ %474, %471 ]
  %483 = phi ptr [ %365, %379 ], [ %475, %471 ]
  %484 = load ptr, ptr %13, align 8, !tbaa !18
  %485 = icmp eq ptr %484, null
  br i1 %485, label %737, label %486

486:                                              ; preds = %479
  %487 = sitofp i32 %363 to float
  %488 = icmp sgt i32 %363, 0
  br label %489

489:                                              ; preds = %732, %486
  %490 = phi ptr [ %484, %486 ], [ %733, %732 ]
  %491 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 6
  %492 = load float, ptr %491, align 4, !tbaa !89
  %493 = fcmp ult float %492, %371
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 3090, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

495:                                              ; preds = %489
  %496 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 2
  %497 = load float, ptr %496, align 4, !tbaa !99
  %498 = fcmp oeq float %497, 0.000000e+00
  %499 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 1
  %500 = load float, ptr %499, align 8, !tbaa !101
  br i1 %498, label %501, label %509

501:                                              ; preds = %495
  %502 = fcmp olt float %500, %487
  br i1 %502, label %503, label %732

503:                                              ; preds = %501
  %504 = fcmp ult float %500, 0.000000e+00
  br i1 %504, label %508, label %505

505:                                              ; preds = %503
  %506 = fptosi float %500 to i32
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %506, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %500, float noundef %372)
  %507 = add nsw i32 %506, 1
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef nonnull %347, i32 noundef %507, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %500, float noundef %372)
  br label %732

508:                                              ; preds = %503
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef nonnull %347, i32 noundef 0, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %500, float noundef %372)
  br label %732

509:                                              ; preds = %495
  %510 = fadd float %497, %500
  %511 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 3
  %512 = load float, ptr %511, align 8, !tbaa !100
  %513 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 5
  %514 = load float, ptr %513, align 8, !tbaa !102
  %515 = fcmp ugt float %514, %372
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 3109, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

517:                                              ; preds = %509
  %518 = fcmp ogt float %514, %371
  %519 = fsub float %514, %371
  %520 = tail call float @llvm.fmuladd.f32(float %497, float %519, float %500)
  %521 = select i1 %518, float %514, float %371
  %522 = select i1 %518, float %520, float %500
  %523 = fcmp olt float %492, %372
  %524 = fsub float %492, %371
  %525 = tail call float @llvm.fmuladd.f32(float %497, float %524, float %500)
  %526 = select i1 %523, float %492, float %372
  %527 = select i1 %523, float %525, float %510
  %528 = fcmp oge float %522, 0.000000e+00
  %529 = fcmp oge float %527, 0.000000e+00
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %531, label %692

531:                                              ; preds = %517
  %532 = fcmp olt float %522, %487
  %533 = fcmp olt float %527, %487
  %534 = select i1 %532, i1 %533, i1 false
  br i1 %534, label %535, label %692

535:                                              ; preds = %531
  %536 = fptosi float %522 to i32
  %537 = fptosi float %527 to i32
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %569

539:                                              ; preds = %535
  %540 = fsub float %526, %521
  %541 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 4
  %542 = load float, ptr %541, align 4, !tbaa !92
  %543 = fmul float %540, %542
  %544 = icmp sgt i32 %536, -1
  %545 = icmp sgt i32 %363, %536
  %546 = and i1 %544, %545
  br i1 %546, label %548, label %547

547:                                              ; preds = %539
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 3137, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

548:                                              ; preds = %539
  %549 = sitofp i32 %536 to float
  %550 = fadd float %549, 1.000000e+00
  %551 = fsub float %550, %522
  %552 = fsub float %550, %527
  %553 = fcmp ult float %551, 0.000000e+00
  br i1 %553, label %554, label %555

554:                                              ; preds = %548
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 3067, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__sized_trapezoid_area) #32
  unreachable

555:                                              ; preds = %548
  %556 = fcmp ult float %552, 0.000000e+00
  br i1 %556, label %557, label %558

557:                                              ; preds = %555
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 3068, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__sized_trapezoid_area) #32
  unreachable

558:                                              ; preds = %555
  %559 = fadd float %551, %552
  %560 = fmul float %559, 5.000000e-01
  %561 = fmul float %560, %543
  %562 = zext nneg i32 %536 to i64
  %563 = getelementptr inbounds float, ptr %345, i64 %562
  %564 = load float, ptr %563, align 4, !tbaa !68
  %565 = fadd float %561, %564
  store float %565, ptr %563, align 4, !tbaa !68
  %566 = getelementptr inbounds float, ptr %359, i64 %562
  %567 = load float, ptr %566, align 4, !tbaa !68
  %568 = fadd float %543, %567
  store float %568, ptr %566, align 4, !tbaa !68
  br label %732

569:                                              ; preds = %535
  %570 = fcmp ogt float %522, %527
  br i1 %570, label %571, label %578

571:                                              ; preds = %569
  %572 = fsub float %371, %521
  %573 = fadd float %372, %572
  %574 = fsub float %371, %526
  %575 = fadd float %372, %574
  %576 = fneg float %497
  %577 = fneg float %512
  br label %578

578:                                              ; preds = %571, %569
  %579 = phi float [ %577, %571 ], [ %512, %569 ]
  %580 = phi float [ %573, %571 ], [ %526, %569 ]
  %581 = phi float [ %575, %571 ], [ %521, %569 ]
  %582 = phi float [ %522, %571 ], [ %527, %569 ]
  %583 = phi float [ %527, %571 ], [ %522, %569 ]
  %584 = phi float [ %576, %571 ], [ %497, %569 ]
  %585 = phi float [ %510, %571 ], [ %500, %569 ]
  %586 = fcmp ult float %579, 0.000000e+00
  br i1 %586, label %587, label %588

587:                                              ; preds = %578
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 3155, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

588:                                              ; preds = %578
  %589 = fcmp ult float %584, 0.000000e+00
  br i1 %589, label %590, label %591

590:                                              ; preds = %588
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 3156, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

591:                                              ; preds = %588
  %592 = fptosi float %583 to i32
  %593 = fptosi float %582 to i32
  %594 = add nsw i32 %592, 1
  %595 = sitofp i32 %594 to float
  %596 = fsub float %595, %585
  %597 = tail call float @llvm.fmuladd.f32(float %579, float %596, float %371)
  %598 = sitofp i32 %593 to float
  %599 = fsub float %598, %585
  %600 = tail call float @llvm.fmuladd.f32(float %579, float %599, float %371)
  %601 = fcmp ogt float %597, %372
  %602 = select i1 %601, float %372, float %597
  %603 = getelementptr inbounds %struct.stbtt__active_edge, ptr %490, i64 0, i32 4
  %604 = load float, ptr %603, align 4, !tbaa !92
  %605 = fsub float %602, %581
  %606 = fmul float %605, %604
  %607 = fsub float %595, %583
  %608 = fmul float %607, %606
  %609 = fmul float %608, 5.000000e-01
  %610 = sext i32 %592 to i64
  %611 = getelementptr inbounds float, ptr %345, i64 %610
  %612 = load float, ptr %611, align 4, !tbaa !68
  %613 = fadd float %612, %609
  store float %613, ptr %611, align 4, !tbaa !68
  %614 = fcmp ogt float %600, %372
  %615 = fsub float %372, %602
  %616 = sub nsw i32 %593, %594
  %617 = sitofp i32 %616 to float
  %618 = fdiv float %615, %617
  %619 = select i1 %614, float %372, float %600
  %620 = select i1 %614, float %618, float %579
  %621 = fmul float %620, %604
  %622 = icmp slt i32 %594, %593
  br i1 %622, label %623, label %660

623:                                              ; preds = %591
  %624 = fmul float %621, 5.000000e-01
  %625 = add nsw i64 %610, 1
  %626 = xor i32 %592, -1
  %627 = add i32 %626, %593
  %628 = add i32 %593, -2
  %629 = and i32 %627, 1
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %638, label %631

631:                                              ; preds = %623
  %632 = fadd float %624, %606
  %633 = getelementptr inbounds float, ptr %345, i64 %625
  %634 = load float, ptr %633, align 4, !tbaa !68
  %635 = fadd float %632, %634
  store float %635, ptr %633, align 4, !tbaa !68
  %636 = fadd float %621, %606
  %637 = add nsw i64 %610, 2
  br label %638

638:                                              ; preds = %631, %623
  %639 = phi float [ undef, %623 ], [ %636, %631 ]
  %640 = phi i64 [ %625, %623 ], [ %637, %631 ]
  %641 = phi float [ %606, %623 ], [ %636, %631 ]
  %642 = icmp eq i32 %628, %592
  br i1 %642, label %660, label %643

643:                                              ; preds = %638, %643
  %644 = phi i64 [ %657, %643 ], [ %640, %638 ]
  %645 = phi float [ %656, %643 ], [ %641, %638 ]
  %646 = fadd float %624, %645
  %647 = getelementptr inbounds float, ptr %345, i64 %644
  %648 = load float, ptr %647, align 4, !tbaa !68
  %649 = fadd float %646, %648
  store float %649, ptr %647, align 4, !tbaa !68
  %650 = fadd float %621, %645
  %651 = add nsw i64 %644, 1
  %652 = fadd float %624, %650
  %653 = getelementptr inbounds float, ptr %345, i64 %651
  %654 = load float, ptr %653, align 4, !tbaa !68
  %655 = fadd float %652, %654
  store float %655, ptr %653, align 4, !tbaa !68
  %656 = fadd float %621, %650
  %657 = add nsw i64 %644, 2
  %658 = trunc i64 %657 to i32
  %659 = icmp eq i32 %658, %593
  br i1 %659, label %660, label %643, !llvm.loop !104

660:                                              ; preds = %638, %643, %591
  %661 = phi float [ %606, %591 ], [ %639, %638 ], [ %656, %643 ]
  %662 = tail call float @llvm.fabs.f32(float %661)
  %663 = fcmp ugt float %662, 0x3FF028F5C0000000
  br i1 %663, label %664, label %665

664:                                              ; preds = %660
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 3220, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

665:                                              ; preds = %660
  %666 = fadd float %619, 0xBF847AE140000000
  %667 = fcmp ogt float %580, %666
  br i1 %667, label %669, label %668

668:                                              ; preds = %665
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 3221, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__fill_active_edges_new) #32
  unreachable

669:                                              ; preds = %665
  %670 = fsub float %580, %619
  %671 = fadd float %598, 1.000000e+00
  %672 = fsub float %671, %598
  %673 = fsub float %671, %582
  %674 = fcmp ult float %672, 0.000000e+00
  br i1 %674, label %675, label %676

675:                                              ; preds = %669
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 3067, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__sized_trapezoid_area) #32
  unreachable

676:                                              ; preds = %669
  %677 = fcmp ult float %673, 0.000000e+00
  br i1 %677, label %678, label %679

678:                                              ; preds = %676
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 3068, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__sized_trapezoid_area) #32
  unreachable

679:                                              ; preds = %676
  %680 = fadd float %672, %673
  %681 = fmul float %680, 5.000000e-01
  %682 = fmul float %681, %670
  %683 = tail call float @llvm.fmuladd.f32(float %604, float %682, float %661)
  %684 = sext i32 %593 to i64
  %685 = getelementptr inbounds float, ptr %345, i64 %684
  %686 = load float, ptr %685, align 4, !tbaa !68
  %687 = fadd float %683, %686
  store float %687, ptr %685, align 4, !tbaa !68
  %688 = fsub float %580, %581
  %689 = getelementptr inbounds float, ptr %359, i64 %684
  %690 = load float, ptr %689, align 4, !tbaa !68
  %691 = tail call float @llvm.fmuladd.f32(float %604, float %688, float %690)
  store float %691, ptr %689, align 4, !tbaa !68
  br label %732

692:                                              ; preds = %531, %517
  br i1 %488, label %693, label %732

693:                                              ; preds = %692, %730
  %694 = phi i32 [ %696, %730 ], [ 0, %692 ]
  %695 = sitofp i32 %694 to float
  %696 = add nuw nsw i32 %694, 1
  %697 = sitofp i32 %696 to float
  %698 = fsub float %695, %500
  %699 = fdiv float %698, %497
  %700 = fadd float %699, %371
  %701 = fsub float %697, %500
  %702 = fdiv float %701, %497
  %703 = fadd float %702, %371
  %704 = fcmp olt float %500, %695
  %705 = fcmp ogt float %510, %697
  %706 = select i1 %704, i1 %705, i1 false
  br i1 %706, label %707, label %708

707:                                              ; preds = %693
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %695, float noundef %700)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %695, float noundef %700, float noundef %697, float noundef %703)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %697, float noundef %703, float noundef %510, float noundef %372)
  br label %730

708:                                              ; preds = %693
  %709 = fcmp olt float %510, %695
  %710 = fcmp ogt float %500, %697
  %711 = select i1 %709, i1 %710, i1 false
  br i1 %711, label %712, label %713

712:                                              ; preds = %708
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %697, float noundef %703)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %697, float noundef %703, float noundef %695, float noundef %700)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %695, float noundef %700, float noundef %510, float noundef %372)
  br label %730

713:                                              ; preds = %708
  %714 = fcmp ogt float %510, %695
  %715 = and i1 %704, %714
  br i1 %715, label %716, label %717

716:                                              ; preds = %713
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %695, float noundef %700)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %695, float noundef %700, float noundef %510, float noundef %372)
  br label %730

717:                                              ; preds = %713
  %718 = fcmp ogt float %500, %695
  %719 = and i1 %709, %718
  br i1 %719, label %720, label %721

720:                                              ; preds = %717
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %695, float noundef %700)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %695, float noundef %700, float noundef %510, float noundef %372)
  br label %730

721:                                              ; preds = %717
  %722 = fcmp olt float %500, %697
  %723 = and i1 %722, %705
  br i1 %723, label %724, label %725

724:                                              ; preds = %721
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %697, float noundef %703)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %697, float noundef %703, float noundef %510, float noundef %372)
  br label %730

725:                                              ; preds = %721
  %726 = fcmp olt float %510, %697
  %727 = and i1 %726, %710
  br i1 %727, label %728, label %729

728:                                              ; preds = %725
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %697, float noundef %703)
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %697, float noundef %703, float noundef %510, float noundef %372)
  br label %730

729:                                              ; preds = %725
  call fastcc void @stbtt__handle_clipped_edge(ptr noundef %345, i32 noundef %694, ptr noundef nonnull %490, float noundef %500, float noundef %371, float noundef %510, float noundef %372)
  br label %730

730:                                              ; preds = %729, %728, %724, %720, %716, %712, %707
  %731 = icmp eq i32 %696, %363
  br i1 %731, label %732, label %693, !llvm.loop !105

732:                                              ; preds = %730, %692, %679, %558, %508, %505, %501
  %733 = load ptr, ptr %490, align 8, !tbaa !91
  %734 = icmp eq ptr %733, null
  br i1 %734, label %735, label %489, !llvm.loop !106

735:                                              ; preds = %732
  %736 = load i32, ptr %0, align 8, !tbaa !86
  br label %737

737:                                              ; preds = %735, %479
  %738 = phi i32 [ %736, %735 ], [ %363, %479 ]
  %739 = icmp sgt i32 %738, 0
  br i1 %739, label %744, label %740

740:                                              ; preds = %744, %737
  %741 = phi i32 [ %738, %737 ], [ %766, %744 ]
  %742 = load ptr, ptr %13, align 8, !tbaa !18
  %743 = icmp eq ptr %742, null
  br i1 %743, label %778, label %769

744:                                              ; preds = %737, %744
  %745 = phi i64 [ %765, %744 ], [ 0, %737 ]
  %746 = phi float [ %749, %744 ], [ 0.000000e+00, %737 ]
  %747 = getelementptr inbounds float, ptr %347, i64 %745
  %748 = load float, ptr %747, align 4, !tbaa !68
  %749 = fadd float %746, %748
  %750 = getelementptr inbounds float, ptr %345, i64 %745
  %751 = load float, ptr %750, align 4, !tbaa !68
  %752 = fadd float %751, %749
  %753 = tail call float @llvm.fabs.f32(float %752)
  %754 = tail call float @llvm.fmuladd.f32(float %753, float 2.550000e+02, float 5.000000e-01)
  %755 = fptosi float %754 to i32
  %756 = tail call i32 @llvm.smin.i32(i32 %755, i32 255)
  %757 = trunc i32 %756 to i8
  %758 = load ptr, ptr %360, align 8, !tbaa !107
  %759 = load i32, ptr %361, align 8, !tbaa !108
  %760 = mul nsw i32 %759, %367
  %761 = trunc i64 %745 to i32
  %762 = add nsw i32 %760, %761
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i8, ptr %758, i64 %763
  store i8 %757, ptr %764, align 1, !tbaa !13
  %765 = add nuw nsw i64 %745, 1
  %766 = load i32, ptr %0, align 8, !tbaa !86
  %767 = sext i32 %766 to i64
  %768 = icmp slt i64 %765, %767
  br i1 %768, label %744, label %740, !llvm.loop !109

769:                                              ; preds = %740, %769
  %770 = phi ptr [ %776, %769 ], [ %742, %740 ]
  %771 = getelementptr inbounds %struct.stbtt__active_edge, ptr %770, i64 0, i32 2
  %772 = load float, ptr %771, align 4, !tbaa !99
  %773 = getelementptr inbounds %struct.stbtt__active_edge, ptr %770, i64 0, i32 1
  %774 = load float, ptr %773, align 8, !tbaa !101
  %775 = fadd float %772, %774
  store float %775, ptr %773, align 8, !tbaa !101
  %776 = load ptr, ptr %770, align 8, !tbaa !18
  %777 = icmp eq ptr %776, null
  br i1 %777, label %778, label %769, !llvm.loop !110

778:                                              ; preds = %769, %740
  %779 = add nsw i32 %366, 1
  %780 = add nuw nsw i32 %367, 1
  %781 = load i32, ptr %348, align 4, !tbaa !88
  %782 = icmp slt i32 %780, %781
  br i1 %782, label %362, label %783, !llvm.loop !111

783:                                              ; preds = %778
  %784 = icmp eq ptr %482, null
  br i1 %784, label %789, label %785

785:                                              ; preds = %783, %785
  %786 = phi ptr [ %787, %785 ], [ %482, %783 ]
  %787 = load ptr, ptr %786, align 8, !tbaa !95
  tail call void @free(ptr noundef nonnull %786) #34
  %788 = icmp eq ptr %787, null
  br i1 %788, label %789, label %785, !llvm.loop !112

789:                                              ; preds = %785, %783, %344
  %790 = icmp eq ptr %345, %14
  br i1 %790, label %792, label %791

791:                                              ; preds = %789
  call void @free(ptr noundef %345) #34
  br label %792

792:                                              ; preds = %791, %789
  call void @llvm.lifetime.end.p0(i64 516, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  call void @free(ptr noundef %231) #34
  br label %793

793:                                              ; preds = %224, %792
  call void @free(ptr noundef %93) #34
  call void @free(ptr noundef %107) #34
  br label %794

794:                                              ; preds = %190, %793, %191
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbtt_FreeBitmap(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #7 {
  tail call void @free(ptr noundef %0) #34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @stbtt_GetGlyphBitmapSubpixel(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stbtt__bitmap, align 8
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #34
  %17 = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %16)
  %18 = fcmp oeq float %1, 0.000000e+00
  %19 = select i1 %18, float %2, float %1
  %20 = fcmp oeq float %2, 0.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = fcmp oeq float %19, 0.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = load ptr, ptr %16, align 8, !tbaa !18
  tail call void @free(ptr noundef %24) #34
  br label %95

25:                                               ; preds = %21, %10
  %26 = phi float [ %2, %10 ], [ %19, %21 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  store i32 0, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  store i32 0, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  %27 = call i32 @stbtt_GetGlyphBox(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14), !range !45
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %11, align 4, !tbaa !40
  %31 = load i32, ptr %14, align 4, !tbaa !40
  %32 = sub nsw i32 0, %31
  %33 = load i32, ptr %13, align 4, !tbaa !40
  %34 = load i32, ptr %12, align 4, !tbaa !40
  %35 = sub nsw i32 0, %34
  %36 = insertelement <2 x i32> poison, i32 %32, i64 0
  %37 = insertelement <2 x i32> %36, i32 %30, i64 1
  %38 = sitofp <2 x i32> %37 to <2 x float>
  %39 = insertelement <2 x float> poison, float %26, i64 0
  %40 = insertelement <2 x float> %39, float %19, i64 1
  %41 = insertelement <2 x float> poison, float %4, i64 0
  %42 = insertelement <2 x float> %41, float %3, i64 1
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %40, <2 x float> %42)
  %44 = call <2 x float> @llvm.floor.v2f32(<2 x float> %43)
  %45 = fptosi <2 x float> %44 to <2 x i32>
  %46 = insertelement <2 x i32> poison, i32 %35, i64 0
  %47 = insertelement <2 x i32> %46, i32 %33, i64 1
  %48 = sitofp <2 x i32> %47 to <2 x float>
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %40, <2 x float> %42)
  %50 = call <2 x float> @llvm.ceil.v2f32(<2 x float> %49)
  %51 = fptosi <2 x float> %50 to <2 x i32>
  br label %52

52:                                               ; preds = %25, %29
  %53 = phi <2 x i32> [ %51, %29 ], [ zeroinitializer, %25 ]
  %54 = phi <2 x i32> [ %45, %29 ], [ zeroinitializer, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  %55 = sub nsw <2 x i32> %53, %54
  %56 = shufflevector <2 x i32> %55, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %56, ptr %15, align 8, !tbaa !40
  %57 = getelementptr inbounds %struct.stbtt__bitmap, ptr %15, i64 0, i32 3
  %58 = icmp eq ptr %6, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = extractelement <2 x i32> %55, i64 1
  store i32 %60, ptr %6, align 4, !tbaa !40
  br label %61

61:                                               ; preds = %59, %52
  %62 = icmp eq ptr %7, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = extractelement <2 x i32> %55, i64 0
  store i32 %64, ptr %7, align 4, !tbaa !40
  br label %65

65:                                               ; preds = %63, %61
  %66 = icmp eq ptr %8, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = extractelement <2 x i32> %54, i64 1
  store i32 %68, ptr %8, align 4, !tbaa !40
  br label %69

69:                                               ; preds = %67, %65
  %70 = icmp eq ptr %9, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = extractelement <2 x i32> %54, i64 0
  store i32 %72, ptr %9, align 4, !tbaa !40
  br label %73

73:                                               ; preds = %71, %69
  %74 = icmp ne <2 x i32> %53, %54
  %75 = extractelement <2 x i1> %74, i64 0
  %76 = extractelement <2 x i1> %74, i64 1
  %77 = select i1 %76, i1 %75, i1 false
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %16, align 8, !tbaa !18
  br label %92

80:                                               ; preds = %73
  %81 = extractelement <2 x i32> %55, i64 0
  %82 = extractelement <2 x i32> %55, i64 1
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = call noalias ptr @malloc(i64 noundef %84) #33
  store ptr %85, ptr %57, align 8, !tbaa !107
  %86 = icmp eq ptr %85, null
  %87 = load ptr, ptr %16, align 8, !tbaa !18
  br i1 %86, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.stbtt__bitmap, ptr %15, i64 0, i32 2
  store i32 %82, ptr %89, align 8, !tbaa !108
  %90 = extractelement <2 x i32> %54, i64 0
  %91 = extractelement <2 x i32> %54, i64 1
  call void @stbtt_Rasterize(ptr noundef nonnull %15, float noundef 0x3FD6666660000000, ptr noundef %87, i32 noundef %17, float noundef %19, float noundef %26, float noundef %3, float noundef %4, i32 noundef %91, i32 noundef %90, i32 noundef 1, ptr poison)
  br label %92

92:                                               ; preds = %78, %80, %88
  %93 = phi ptr [ null, %78 ], [ null, %80 ], [ %85, %88 ]
  %94 = phi ptr [ %79, %78 ], [ %87, %80 ], [ %87, %88 ]
  call void @free(ptr noundef %94) #34
  br label %95

95:                                               ; preds = %92, %23
  %96 = phi ptr [ null, %23 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #34
  ret ptr %96
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @stbtt_GetGlyphBitmap(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @stbtt_GetGlyphBitmapSubpixel(ptr noundef %0, float noundef %1, float noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeGlyphBitmapSubpixel(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca %struct.stbtt__bitmap, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #34
  %17 = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %15)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  store i32 0, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  %18 = call i32 @stbtt_GetGlyphBox(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14), !range !45
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %11, align 4, !tbaa !40
  %22 = load i32, ptr %14, align 4, !tbaa !40
  %23 = sub nsw i32 0, %22
  %24 = insertelement <2 x i32> poison, i32 %21, i64 0
  %25 = insertelement <2 x i32> %24, i32 %23, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x float>
  %27 = insertelement <2 x float> poison, float %5, i64 0
  %28 = insertelement <2 x float> %27, float %6, i64 1
  %29 = insertelement <2 x float> poison, float %7, i64 0
  %30 = insertelement <2 x float> %29, float %8, i64 1
  %31 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %28, <2 x float> %30)
  %32 = call <2 x float> @llvm.floor.v2f32(<2 x float> %31)
  %33 = fptosi <2 x float> %32 to <2 x i32>
  br label %34

34:                                               ; preds = %10, %20
  %35 = phi <2 x i32> [ %33, %20 ], [ zeroinitializer, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  %36 = getelementptr inbounds %struct.stbtt__bitmap, ptr %16, i64 0, i32 3
  store ptr %1, ptr %36, align 8, !tbaa !107
  store i32 %2, ptr %16, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.stbtt__bitmap, ptr %16, i64 0, i32 1
  store i32 %3, ptr %37, align 4, !tbaa !88
  %38 = getelementptr inbounds %struct.stbtt__bitmap, ptr %16, i64 0, i32 2
  store i32 %4, ptr %38, align 8, !tbaa !108
  %39 = icmp ne i32 %2, 0
  %40 = icmp ne i32 %3, 0
  %41 = and i1 %39, %40
  %42 = load ptr, ptr %15, align 8, !tbaa !18
  br i1 %41, label %43, label %46

43:                                               ; preds = %34
  %44 = extractelement <2 x i32> %35, i64 0
  %45 = extractelement <2 x i32> %35, i64 1
  call void @stbtt_Rasterize(ptr noundef nonnull %16, float noundef 0x3FD6666660000000, ptr noundef %42, i32 noundef %17, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %44, i32 noundef %45, i32 noundef 1, ptr poison)
  br label %46

46:                                               ; preds = %43, %34
  call void @free(ptr noundef %42) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeGlyphBitmap(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @stbtt_GetCodepointBitmapSubpixel(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %5)
  %12 = tail call ptr @stbtt_GetGlyphBitmapSubpixel(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %11, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeCodepointBitmapSubpixelPrefilter(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, i32 noundef %13) local_unnamed_addr #0 {
  %15 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %13)
  %16 = add i32 %2, 1
  %17 = sub i32 %16, %9
  %18 = add i32 %3, 1
  %19 = sub i32 %18, %10
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %17, i32 noundef %19, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %15)
  %20 = icmp sgt i32 %9, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call fastcc void @stbtt__h_prefilter(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %9)
  br label %22

22:                                               ; preds = %21, %14
  %23 = icmp sgt i32 %10, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call fastcc void @stbtt__v_prefilter(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %10)
  br label %25

25:                                               ; preds = %24, %22
  %26 = icmp eq i32 %9, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = sub nsw i32 1, %9
  %29 = sitofp i32 %28 to float
  %30 = sitofp i32 %9 to float
  %31 = fmul float %30, 2.000000e+00
  %32 = fdiv float %29, %31
  br label %33

33:                                               ; preds = %27, %25
  %34 = phi float [ %32, %27 ], [ 0.000000e+00, %25 ]
  store float %34, ptr %11, align 4, !tbaa !68
  %35 = icmp eq i32 %10, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = sub nsw i32 1, %10
  %38 = sitofp i32 %37 to float
  %39 = sitofp i32 %10 to float
  %40 = fmul float %39, 2.000000e+00
  %41 = fdiv float %38, %40
  br label %42

42:                                               ; preds = %33, %36
  %43 = phi float [ %41, %36 ], [ 0.000000e+00, %33 ]
  store float %43, ptr %12, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeGlyphBitmapSubpixelPrefilter(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, i32 noundef %13) local_unnamed_addr #0 {
  %15 = add i32 %2, 1
  %16 = sub i32 %15, %9
  %17 = add i32 %3, 1
  %18 = sub i32 %17, %10
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %18, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %13)
  %19 = icmp sgt i32 %9, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call fastcc void @stbtt__h_prefilter(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %9)
  br label %21

21:                                               ; preds = %20, %14
  %22 = icmp sgt i32 %10, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call fastcc void @stbtt__v_prefilter(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %10)
  br label %24

24:                                               ; preds = %23, %21
  %25 = icmp eq i32 %9, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = sub nsw i32 1, %9
  %28 = sitofp i32 %27 to float
  %29 = sitofp i32 %9 to float
  %30 = fmul float %29, 2.000000e+00
  %31 = fdiv float %28, %30
  br label %32

32:                                               ; preds = %24, %26
  %33 = phi float [ %31, %26 ], [ 0.000000e+00, %24 ]
  store float %33, ptr %11, align 4, !tbaa !68
  %34 = icmp eq i32 %10, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = sub nsw i32 1, %10
  %37 = sitofp i32 %36 to float
  %38 = sitofp i32 %10 to float
  %39 = fmul float %38, 2.000000e+00
  %40 = fdiv float %37, %39
  br label %41

41:                                               ; preds = %32, %35
  %42 = phi float [ %40, %35 ], [ 0.000000e+00, %32 ]
  store float %42, ptr %12, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeCodepointBitmapSubpixel(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %9)
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %11)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @stbtt_GetCodepointBitmap(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %3)
  %10 = tail call noundef ptr @stbtt_GetGlyphBitmapSubpixel(ptr noundef %0, float noundef %1, float noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %9, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_MakeCodepointBitmap(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %7)
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %9)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @stbtt_GetBakedQuad(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6, i32 noundef %7) local_unnamed_addr #11 {
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %9, float -5.000000e-01, float 0.000000e+00
  %11 = insertelement <2 x i32> poison, i32 %1, i64 0
  %12 = insertelement <2 x i32> %11, i32 %2, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %0, i64 %14
  %16 = load float, ptr %4, align 4, !tbaa !68
  %17 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %0, i64 %14, i32 4
  %18 = load float, ptr %5, align 4, !tbaa !68
  %19 = load <2 x float>, ptr %17, align 4, !tbaa !68
  %20 = insertelement <2 x float> poison, float %16, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %22 = fadd <2 x float> %21, %19
  %23 = fadd <2 x float> %22, <float 5.000000e-01, float 5.000000e-01>
  %24 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %23)
  %25 = fptosi <2 x float> %24 to <2 x i32>
  %26 = sitofp <2 x i32> %25 to <2 x float>
  %27 = insertelement <2 x float> poison, float %10, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fadd <2 x float> %28, %26
  store <2 x float> %29, ptr %6, align 4, !tbaa !68
  %30 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %0, i64 %14, i32 2
  %31 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 4
  %32 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 2
  %33 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %13
  %34 = load <2 x i16>, ptr %15, align 4, !tbaa !33
  %35 = load <2 x i16>, ptr %30, align 4, !tbaa !33
  %36 = zext <2 x i16> %35 to <2 x i32>
  %37 = add nsw <2 x i32> %36, %25
  %38 = zext <2 x i16> %34 to <2 x i32>
  %39 = sub <2 x i32> %37, %38
  %40 = sitofp <2 x i32> %39 to <2 x float>
  %41 = fadd <2 x float> %28, %40
  store <2 x float> %41, ptr %31, align 4, !tbaa !68
  %42 = uitofp <2 x i16> %34 to <2 x float>
  %43 = fmul <2 x float> %33, %42
  store <2 x float> %43, ptr %32, align 4, !tbaa !68
  %44 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 6
  %45 = uitofp <2 x i16> %35 to <2 x float>
  %46 = fmul <2 x float> %33, %45
  store <2 x float> %46, ptr %44, align 4, !tbaa !68
  %47 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %0, i64 %14, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !113
  %49 = load float, ptr %4, align 4, !tbaa !68
  %50 = fadd float %48, %49
  store float %50, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: write) uwtable
define dso_local noundef i32 @stbtt_PackBegin(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #12 {
  %8 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #33
  %9 = sub nsw i32 %2, %5
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #33
  %12 = icmp eq ptr %8, null
  %13 = icmp eq ptr %11, null
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  br i1 %12, label %17, label %16

16:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %8) #34
  br label %17

17:                                               ; preds = %16, %15
  br i1 %13, label %41, label %18

18:                                               ; preds = %17
  tail call void @free(ptr noundef nonnull %11) #34
  br label %41

19:                                               ; preds = %7
  store ptr %6, ptr %0, align 8, !tbaa !115
  %20 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 2
  store i32 %2, ptr %20, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 3
  store i32 %3, ptr %21, align 4, !tbaa !118
  %22 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 9
  store ptr %1, ptr %22, align 8, !tbaa !119
  %23 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 1
  store ptr %8, ptr %23, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 10
  store ptr %11, ptr %24, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 5
  store i32 %5, ptr %25, align 4, !tbaa !122
  %26 = icmp eq i32 %4, 0
  %27 = select i1 %26, i32 %2, i32 %4
  %28 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !123
  %29 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 7
  store i32 1, ptr %29, align 4, !tbaa !124
  %30 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 8
  store i32 1, ptr %30, align 8, !tbaa !125
  %31 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 6
  store i32 0, ptr %31, align 8, !tbaa !126
  %32 = sub nsw i32 %3, %5
  store i32 %9, ptr %8, align 4, !tbaa !127
  %33 = getelementptr inbounds %struct.stbrp_context, ptr %8, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !129
  %34 = getelementptr inbounds %struct.stbrp_context, ptr %8, i64 0, i32 2
  store i32 0, ptr %34, align 4, !tbaa !130
  %35 = getelementptr inbounds %struct.stbrp_context, ptr %8, i64 0, i32 3
  store i32 0, ptr %35, align 4, !tbaa !131
  %36 = getelementptr inbounds %struct.stbrp_context, ptr %8, i64 0, i32 4
  store i32 0, ptr %36, align 4, !tbaa !132
  %37 = icmp eq ptr %1, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = mul nsw i32 %3, %2
  %40 = sext i32 %39 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %19, %38, %17, %18
  %42 = phi i32 [ 0, %18 ], [ 0, %17 ], [ 1, %38 ], [ 1, %19 ]
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @stbtt_PackEnd(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  tail call void @free(ptr noundef %3) #34
  %4 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  tail call void @free(ptr noundef %5) #34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_PackSetOversampling(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %1, 9
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 3997, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_PackSetOversampling) #32
  unreachable

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 9
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 3998, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_PackSetOversampling) #32
  unreachable

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 7
  store i32 %1, ptr %10, align 4, !tbaa !124
  %11 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 8
  store i32 %2, ptr %11, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @stbtt_PackSetSkipMissingCodepoints(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 6
  store i32 %1, ptr %3, align 8, !tbaa !126
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_PackFontRangesGatherRects(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %162

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 7
  %15 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 5
  %19 = zext nneg i32 %3 to i64
  br label %20

20:                                               ; preds = %11, %157
  %21 = phi i64 [ 0, %11 ], [ %160, %157 ]
  %22 = phi i32 [ 0, %11 ], [ %159, %157 ]
  %23 = phi i32 [ 0, %11 ], [ %158, %157 ]
  %24 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21
  %25 = load float, ptr %24, align 8, !tbaa !133
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load ptr, ptr %12, align 8, !tbaa !5
  %29 = load i32, ptr %14, align 4, !tbaa !46
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 4
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr inbounds i8, ptr %31, i64 5
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i16
  %39 = or disjoint i16 %35, %38
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds i8, ptr %31, i64 6
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = getelementptr inbounds i8, ptr %31, i64 7
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = zext i8 %46 to i16
  %48 = or disjoint i16 %44, %47
  %49 = sext i16 %48 to i32
  %50 = sub nsw i32 %40, %49
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %25, %51
  br label %69

53:                                               ; preds = %20
  %54 = fneg float %25
  %55 = load ptr, ptr %12, align 8, !tbaa !5
  %56 = load i32, ptr %13, align 4, !tbaa !63
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %55, i64 %57
  %59 = getelementptr inbounds i8, ptr %58, i64 18
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i16
  %62 = shl nuw i16 %61, 8
  %63 = getelementptr inbounds i8, ptr %58, i64 19
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = zext i8 %64 to i16
  %66 = or disjoint i16 %62, %65
  %67 = uitofp i16 %66 to float
  %68 = fdiv float %54, %67
  br label %69

69:                                               ; preds = %53, %27
  %70 = phi float [ %52, %27 ], [ %68, %53 ]
  %71 = load i32, ptr %15, align 4, !tbaa !124
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21, i32 5
  store i8 %72, ptr %73, align 8, !tbaa !135
  %74 = load i32, ptr %16, align 8, !tbaa !125
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21, i32 6
  store i8 %75, ptr %76, align 1, !tbaa !136
  %77 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !137
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %157

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21, i32 2
  %82 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %21, i32 1
  %83 = sext i32 %22 to i64
  %84 = insertelement <2 x float> poison, float %70, i64 0
  %85 = shufflevector <2 x float> %84, <2 x float> poison, <2 x i32> zeroinitializer
  br label %86

86:                                               ; preds = %80, %148
  %87 = phi i64 [ %83, %80 ], [ %150, %148 ]
  %88 = phi i64 [ 0, %80 ], [ %151, %148 ]
  %89 = phi i32 [ %23, %80 ], [ %149, %148 ]
  %90 = load ptr, ptr %81, align 8, !tbaa !138
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, ptr %82, align 4, !tbaa !139
  %94 = trunc i64 %88 to i32
  %95 = add nsw i32 %93, %94
  br label %99

96:                                               ; preds = %86
  %97 = getelementptr inbounds i32, ptr %90, i64 %88
  %98 = load i32, ptr %97, align 4, !tbaa !40
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i32 [ %95, %92 ], [ %98, %96 ]
  %101 = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, ptr %17, align 8, !tbaa !126
  %105 = icmp ne i32 %104, 0
  %106 = icmp ne i32 %89, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %87, i32 4
  store i32 0, ptr %109, align 4, !tbaa !140
  %110 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %87, i32 3
  store i32 0, ptr %110, align 4, !tbaa !142
  br label %148

111:                                              ; preds = %103, %99
  %112 = load <2 x i32>, ptr %15, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  %113 = call i32 @stbtt_GetGlyphBox(ptr noundef %1, i32 noundef %101, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !45
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %111
  %116 = uitofp <2 x i32> %112 to <2 x float>
  %117 = load i32, ptr %6, align 4, !tbaa !40
  %118 = load i32, ptr %9, align 4, !tbaa !40
  %119 = sub nsw i32 0, %118
  %120 = load i32, ptr %8, align 4, !tbaa !40
  %121 = load i32, ptr %7, align 4, !tbaa !40
  %122 = sub nsw i32 0, %121
  %123 = fmul <2 x float> %85, %116
  %124 = insertelement <2 x i32> poison, i32 %117, i64 0
  %125 = insertelement <2 x i32> %124, i32 %119, i64 1
  %126 = sitofp <2 x i32> %125 to <2 x float>
  %127 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %126, <2 x float> %123, <2 x float> zeroinitializer)
  %128 = call <2 x float> @llvm.floor.v2f32(<2 x float> %127)
  %129 = fptosi <2 x float> %128 to <2 x i32>
  %130 = insertelement <2 x i32> poison, i32 %120, i64 0
  %131 = insertelement <2 x i32> %130, i32 %122, i64 1
  %132 = sitofp <2 x i32> %131 to <2 x float>
  %133 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %132, <2 x float> %123, <2 x float> zeroinitializer)
  %134 = call <2 x float> @llvm.ceil.v2f32(<2 x float> %133)
  %135 = fptosi <2 x float> %134 to <2 x i32>
  %136 = sub nsw <2 x i32> %135, %129
  br label %137

137:                                              ; preds = %111, %115
  %138 = phi <2 x i32> [ %136, %115 ], [ zeroinitializer, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  %139 = load i32, ptr %18, align 4, !tbaa !122
  %140 = add i32 %139, -1
  %141 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %87, i32 3
  %142 = load <2 x i32>, ptr %15, align 4, !tbaa !40
  %143 = insertelement <2 x i32> poison, i32 %140, i64 0
  %144 = shufflevector <2 x i32> %143, <2 x i32> poison, <2 x i32> zeroinitializer
  %145 = add <2 x i32> %144, %138
  %146 = add <2 x i32> %145, %142
  store <2 x i32> %146, ptr %141, align 4, !tbaa !40
  %147 = select i1 %102, i32 1, i32 %89
  br label %148

148:                                              ; preds = %137, %108
  %149 = phi i32 [ %89, %108 ], [ %147, %137 ]
  %150 = add nsw i64 %87, 1
  %151 = add nuw nsw i64 %88, 1
  %152 = load i32, ptr %77, align 8, !tbaa !137
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %86, label %155, !llvm.loop !143

155:                                              ; preds = %148
  %156 = trunc i64 %150 to i32
  br label %157

157:                                              ; preds = %155, %69
  %158 = phi i32 [ %23, %69 ], [ %149, %155 ]
  %159 = phi i32 [ %22, %69 ], [ %156, %155 ]
  %160 = add nuw nsw i64 %21, 1
  %161 = icmp eq i64 %160, %19
  br i1 %161, label %162, label %20, !llvm.loop !144

162:                                              ; preds = %157, %5
  %163 = phi i32 [ 0, %5 ], [ %159, %157 ]
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbtt__h_prefilter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #34
  store i64 0, ptr %6, align 8
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %234

8:                                                ; preds = %5
  %9 = sub i32 %1, %4
  %10 = zext i32 %4 to i64
  %11 = icmp slt i32 %9, 0
  %12 = sext i32 %3 to i64
  %13 = add i32 %1, 1
  %14 = sub i32 %13, %4
  %15 = zext i32 %14 to i64
  %16 = zext i32 %14 to i64
  %17 = zext i32 %14 to i64
  %18 = add nsw i64 %17, -1
  %19 = and i64 %17, 1
  %20 = icmp eq i64 %18, 0
  %21 = and i64 %17, 4294967294
  %22 = icmp eq i64 %19, 0
  %23 = and i64 %17, 1
  %24 = icmp eq i64 %18, 0
  %25 = and i64 %17, 4294967294
  %26 = icmp eq i64 %23, 0
  br label %27

27:                                               ; preds = %8, %230
  %28 = phi i32 [ 0, %8 ], [ %232, %230 ]
  %29 = phi ptr [ %0, %8 ], [ %231, %230 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %6, i8 0, i64 %10, i1 false)
  switch i32 %4, label %36 [
    i32 2, label %34
    i32 3, label %33
    i32 4, label %31
    i32 5, label %30
  ]

30:                                               ; preds = %27
  br i1 %11, label %206, label %128

31:                                               ; preds = %27
  br i1 %11, label %206, label %32

32:                                               ; preds = %31
  br i1 %20, label %187, label %92

33:                                               ; preds = %27
  br i1 %11, label %206, label %73

34:                                               ; preds = %27
  br i1 %11, label %206, label %35

35:                                               ; preds = %34
  br i1 %24, label %168, label %37

36:                                               ; preds = %27
  br i1 %11, label %206, label %147

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %70, %37 ], [ 0, %35 ]
  %39 = phi i32 [ %64, %37 ], [ 0, %35 ]
  %40 = phi i64 [ %71, %37 ], [ 0, %35 ]
  %41 = getelementptr inbounds i8, ptr %29, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i32
  %44 = and i64 %38, 6
  %45 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %44
  %46 = load i8, ptr %45, align 2, !tbaa !13
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %43, %47
  %49 = add i32 %48, %39
  %50 = add nuw i64 %38, 2
  %51 = and i64 %50, 6
  %52 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %51
  store i8 %42, ptr %52, align 2, !tbaa !13
  %53 = lshr i32 %49, 1
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %41, align 1, !tbaa !13
  %55 = or disjoint i64 %38, 1
  %56 = getelementptr inbounds i8, ptr %29, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = and i64 %55, 7
  %60 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %58, %62
  %64 = add i32 %63, %49
  %65 = add nuw i64 %38, 3
  %66 = and i64 %65, 7
  %67 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %66
  store i8 %57, ptr %67, align 1, !tbaa !13
  %68 = lshr i32 %64, 1
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr %56, align 1, !tbaa !13
  %70 = add nuw nsw i64 %38, 2
  %71 = add i64 %40, 2
  %72 = icmp eq i64 %71, %25
  br i1 %72, label %168, label %37, !llvm.loop !145

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %90, %73 ], [ 0, %33 ]
  %75 = phi i32 [ %84, %73 ], [ 0, %33 ]
  %76 = getelementptr inbounds i8, ptr %29, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = and i64 %74, 7
  %80 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %78, %82
  %84 = add i32 %83, %75
  %85 = add nuw i64 %74, 3
  %86 = and i64 %85, 7
  %87 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %86
  store i8 %77, ptr %87, align 1, !tbaa !13
  %88 = udiv i32 %84, 3
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %76, align 1, !tbaa !13
  %90 = add nuw nsw i64 %74, 1
  %91 = icmp eq i64 %90, %16
  br i1 %91, label %206, label %73, !llvm.loop !146

92:                                               ; preds = %32, %92
  %93 = phi i64 [ %125, %92 ], [ 0, %32 ]
  %94 = phi i32 [ %120, %92 ], [ 0, %32 ]
  %95 = phi i64 [ %126, %92 ], [ 0, %32 ]
  %96 = getelementptr inbounds i8, ptr %29, i64 %93
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i32
  %99 = and i64 %93, 6
  %100 = and i64 %93, 6
  %101 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %100
  %102 = load i8, ptr %101, align 2, !tbaa !13
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %98, %103
  %105 = add i32 %104, %94
  %106 = xor i64 %99, 4
  %107 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %106
  store i8 %97, ptr %107, align 2, !tbaa !13
  %108 = lshr i32 %105, 2
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %96, align 1, !tbaa !13
  %110 = or disjoint i64 %93, 1
  %111 = getelementptr inbounds i8, ptr %29, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = zext i8 %112 to i32
  %114 = and i64 %110, 7
  %115 = and i64 %110, 7
  %116 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !13
  %118 = zext i8 %117 to i32
  %119 = sub nsw i32 %113, %118
  %120 = add i32 %119, %105
  %121 = xor i64 %114, 4
  %122 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %121
  store i8 %112, ptr %122, align 1, !tbaa !13
  %123 = lshr i32 %120, 2
  %124 = trunc i32 %123 to i8
  store i8 %124, ptr %111, align 1, !tbaa !13
  %125 = add nuw nsw i64 %93, 2
  %126 = add i64 %95, 2
  %127 = icmp eq i64 %126, %21
  br i1 %127, label %187, label %92, !llvm.loop !147

128:                                              ; preds = %30, %128
  %129 = phi i64 [ %145, %128 ], [ 0, %30 ]
  %130 = phi i32 [ %139, %128 ], [ 0, %30 ]
  %131 = getelementptr inbounds i8, ptr %29, i64 %129
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = zext i8 %132 to i32
  %134 = and i64 %129, 7
  %135 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %133, %137
  %139 = add i32 %138, %130
  %140 = add nuw i64 %129, 5
  %141 = and i64 %140, 7
  %142 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %141
  store i8 %132, ptr %142, align 1, !tbaa !13
  %143 = udiv i32 %139, 5
  %144 = trunc i32 %143 to i8
  store i8 %144, ptr %131, align 1, !tbaa !13
  %145 = add nuw nsw i64 %129, 1
  %146 = icmp eq i64 %145, %15
  br i1 %146, label %206, label %128, !llvm.loop !148

147:                                              ; preds = %36, %147
  %148 = phi i64 [ %166, %147 ], [ 0, %36 ]
  %149 = phi i32 [ %159, %147 ], [ 0, %36 ]
  %150 = getelementptr inbounds i8, ptr %29, i64 %148
  %151 = load i8, ptr %150, align 1, !tbaa !13
  %152 = zext i8 %151 to i32
  %153 = trunc i64 %148 to i32
  %154 = and i64 %148, 7
  %155 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i32
  %158 = sub nsw i32 %152, %157
  %159 = add i32 %158, %149
  %160 = add i32 %153, %4
  %161 = and i32 %160, 7
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %162
  store i8 %151, ptr %163, align 1, !tbaa !13
  %164 = udiv i32 %159, %4
  %165 = trunc i32 %164 to i8
  store i8 %165, ptr %150, align 1, !tbaa !13
  %166 = add nuw nsw i64 %148, 1
  %167 = icmp eq i64 %166, %17
  br i1 %167, label %206, label %147, !llvm.loop !149

168:                                              ; preds = %37, %35
  %169 = phi i32 [ undef, %35 ], [ %64, %37 ]
  %170 = phi i64 [ 0, %35 ], [ %70, %37 ]
  %171 = phi i32 [ 0, %35 ], [ %64, %37 ]
  br i1 %26, label %206, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds i8, ptr %29, i64 %170
  %174 = load i8, ptr %173, align 1, !tbaa !13
  %175 = zext i8 %174 to i32
  %176 = and i64 %170, 7
  %177 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !13
  %179 = zext i8 %178 to i32
  %180 = sub nsw i32 %175, %179
  %181 = add i32 %180, %171
  %182 = add nuw i64 %170, 2
  %183 = and i64 %182, 7
  %184 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %183
  store i8 %174, ptr %184, align 1, !tbaa !13
  %185 = lshr i32 %181, 1
  %186 = trunc i32 %185 to i8
  store i8 %186, ptr %173, align 1, !tbaa !13
  br label %206

187:                                              ; preds = %92, %32
  %188 = phi i32 [ undef, %32 ], [ %120, %92 ]
  %189 = phi i64 [ 0, %32 ], [ %125, %92 ]
  %190 = phi i32 [ 0, %32 ], [ %120, %92 ]
  br i1 %22, label %206, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds i8, ptr %29, i64 %189
  %193 = load i8, ptr %192, align 1, !tbaa !13
  %194 = zext i8 %193 to i32
  %195 = and i64 %189, 7
  %196 = and i64 %189, 7
  %197 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !13
  %199 = zext i8 %198 to i32
  %200 = sub nsw i32 %194, %199
  %201 = add i32 %200, %190
  %202 = xor i64 %195, 4
  %203 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %202
  store i8 %193, ptr %203, align 1, !tbaa !13
  %204 = lshr i32 %201, 2
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %192, align 1, !tbaa !13
  br label %206

206:                                              ; preds = %128, %191, %187, %73, %172, %168, %147, %30, %31, %33, %34, %36
  %207 = phi i32 [ 0, %36 ], [ 0, %34 ], [ 0, %33 ], [ 0, %31 ], [ 0, %30 ], [ %14, %147 ], [ %14, %168 ], [ %14, %172 ], [ %14, %73 ], [ %14, %187 ], [ %14, %191 ], [ %14, %128 ]
  %208 = phi i32 [ 0, %36 ], [ 0, %34 ], [ 0, %33 ], [ 0, %31 ], [ 0, %30 ], [ %159, %147 ], [ %169, %168 ], [ %181, %172 ], [ %84, %73 ], [ %188, %187 ], [ %201, %191 ], [ %139, %128 ]
  %209 = icmp slt i32 %207, %1
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = zext i32 %207 to i64
  br label %212

212:                                              ; preds = %210, %219
  %213 = phi i64 [ %211, %210 ], [ %227, %219 ]
  %214 = phi i32 [ %208, %210 ], [ %224, %219 ]
  %215 = getelementptr inbounds i8, ptr %29, i64 %213
  %216 = load i8, ptr %215, align 1, !tbaa !13
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  tail call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 4065, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__h_prefilter) #32
  unreachable

219:                                              ; preds = %212
  %220 = and i64 %213, 7
  %221 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !13
  %223 = zext i8 %222 to i32
  %224 = sub i32 %214, %223
  %225 = udiv i32 %224, %4
  %226 = trunc i32 %225 to i8
  store i8 %226, ptr %215, align 1, !tbaa !13
  %227 = add nuw nsw i64 %213, 1
  %228 = trunc i64 %227 to i32
  %229 = icmp slt i32 %228, %1
  br i1 %229, label %212, label %230, !llvm.loop !150

230:                                              ; preds = %219, %206
  %231 = getelementptr inbounds i8, ptr %29, i64 %12
  %232 = add nuw nsw i32 %28, 1
  %233 = icmp eq i32 %232, %2
  br i1 %233, label %234, label %27, !llvm.loop !151

234:                                              ; preds = %230, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbtt__v_prefilter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #34
  store i64 0, ptr %6, align 8
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %159

8:                                                ; preds = %5
  %9 = sub i32 %2, %4
  %10 = zext i32 %4 to i64
  %11 = icmp slt i32 %9, 0
  %12 = sext i32 %3 to i64
  %13 = add i32 %2, 1
  %14 = sub i32 %13, %4
  %15 = zext i32 %14 to i64
  %16 = zext i32 %14 to i64
  %17 = zext i32 %14 to i64
  %18 = zext i32 %14 to i64
  %19 = zext i32 %14 to i64
  br label %20

20:                                               ; preds = %8, %155
  %21 = phi i32 [ 0, %8 ], [ %157, %155 ]
  %22 = phi ptr [ %0, %8 ], [ %156, %155 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %6, i8 0, i64 %10, i1 false)
  switch i32 %4, label %27 [
    i32 2, label %26
    i32 3, label %25
    i32 4, label %24
    i32 5, label %23
  ]

23:                                               ; preds = %20
  br i1 %11, label %130, label %88

24:                                               ; preds = %20
  br i1 %11, label %130, label %68

25:                                               ; preds = %20
  br i1 %11, label %130, label %48

26:                                               ; preds = %20
  br i1 %11, label %130, label %28

27:                                               ; preds = %20
  br i1 %11, label %130, label %108

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %46, %28 ], [ 0, %26 ]
  %30 = phi i32 [ %40, %28 ], [ 0, %26 ]
  %31 = mul nsw i64 %29, %12
  %32 = getelementptr inbounds i8, ptr %22, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = zext i8 %33 to i32
  %35 = and i64 %29, 7
  %36 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %34, %38
  %40 = add i32 %39, %30
  %41 = add nuw i64 %29, 2
  %42 = and i64 %41, 7
  %43 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %42
  store i8 %33, ptr %43, align 1, !tbaa !13
  %44 = lshr i32 %40, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %32, align 1, !tbaa !13
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, %18
  br i1 %47, label %130, label %28, !llvm.loop !152

48:                                               ; preds = %25, %48
  %49 = phi i64 [ %66, %48 ], [ 0, %25 ]
  %50 = phi i32 [ %60, %48 ], [ 0, %25 ]
  %51 = mul nsw i64 %49, %12
  %52 = getelementptr inbounds i8, ptr %22, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = and i64 %49, 7
  %56 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %54, %58
  %60 = add i32 %59, %50
  %61 = add nuw i64 %49, 3
  %62 = and i64 %61, 7
  %63 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %62
  store i8 %53, ptr %63, align 1, !tbaa !13
  %64 = udiv i32 %60, 3
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %52, align 1, !tbaa !13
  %66 = add nuw nsw i64 %49, 1
  %67 = icmp eq i64 %66, %17
  br i1 %67, label %130, label %48, !llvm.loop !153

68:                                               ; preds = %24, %68
  %69 = phi i64 [ %86, %68 ], [ 0, %24 ]
  %70 = phi i32 [ %81, %68 ], [ 0, %24 ]
  %71 = mul nsw i64 %69, %12
  %72 = getelementptr inbounds i8, ptr %22, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  %75 = and i64 %69, 7
  %76 = and i64 %69, 7
  %77 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !13
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %74, %79
  %81 = add i32 %80, %70
  %82 = xor i64 %75, 4
  %83 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %82
  store i8 %73, ptr %83, align 1, !tbaa !13
  %84 = lshr i32 %81, 2
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %72, align 1, !tbaa !13
  %86 = add nuw nsw i64 %69, 1
  %87 = icmp eq i64 %86, %16
  br i1 %87, label %130, label %68, !llvm.loop !154

88:                                               ; preds = %23, %88
  %89 = phi i64 [ %106, %88 ], [ 0, %23 ]
  %90 = phi i32 [ %100, %88 ], [ 0, %23 ]
  %91 = mul nsw i64 %89, %12
  %92 = getelementptr inbounds i8, ptr %22, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !13
  %94 = zext i8 %93 to i32
  %95 = and i64 %89, 7
  %96 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %94, %98
  %100 = add i32 %99, %90
  %101 = add nuw i64 %89, 5
  %102 = and i64 %101, 7
  %103 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %102
  store i8 %93, ptr %103, align 1, !tbaa !13
  %104 = udiv i32 %100, 5
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %92, align 1, !tbaa !13
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, %15
  br i1 %107, label %130, label %88, !llvm.loop !155

108:                                              ; preds = %27, %108
  %109 = phi i64 [ %128, %108 ], [ 0, %27 ]
  %110 = phi i32 [ %121, %108 ], [ 0, %27 ]
  %111 = mul nsw i64 %109, %12
  %112 = getelementptr inbounds i8, ptr %22, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !13
  %114 = zext i8 %113 to i32
  %115 = trunc i64 %109 to i32
  %116 = and i64 %109, 7
  %117 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !13
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %114, %119
  %121 = add i32 %120, %110
  %122 = add i32 %115, %4
  %123 = and i32 %122, 7
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %124
  store i8 %113, ptr %125, align 1, !tbaa !13
  %126 = udiv i32 %121, %4
  %127 = trunc i32 %126 to i8
  store i8 %127, ptr %112, align 1, !tbaa !13
  %128 = add nuw nsw i64 %109, 1
  %129 = icmp eq i64 %128, %19
  br i1 %129, label %130, label %108, !llvm.loop !156

130:                                              ; preds = %88, %68, %48, %28, %108, %23, %24, %25, %26, %27
  %131 = phi i32 [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ %14, %108 ], [ %14, %28 ], [ %14, %48 ], [ %14, %68 ], [ %14, %88 ]
  %132 = phi i32 [ 0, %27 ], [ 0, %26 ], [ 0, %25 ], [ 0, %24 ], [ 0, %23 ], [ %121, %108 ], [ %40, %28 ], [ %60, %48 ], [ %81, %68 ], [ %100, %88 ]
  %133 = icmp slt i32 %131, %2
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = sext i32 %131 to i64
  br label %136

136:                                              ; preds = %134, %144
  %137 = phi i64 [ %135, %134 ], [ %152, %144 ]
  %138 = phi i32 [ %132, %134 ], [ %149, %144 ]
  %139 = mul nsw i64 %137, %12
  %140 = getelementptr inbounds i8, ptr %22, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !13
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 4127, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__v_prefilter) #32
  unreachable

144:                                              ; preds = %136
  %145 = and i64 %137, 7
  %146 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !13
  %148 = zext i8 %147 to i32
  %149 = sub i32 %138, %148
  %150 = udiv i32 %149, %4
  %151 = trunc i32 %150 to i8
  store i8 %151, ptr %140, align 1, !tbaa !13
  %152 = add nsw i64 %137, 1
  %153 = trunc i64 %152 to i32
  %154 = icmp eq i32 %153, %2
  br i1 %154, label %155, label %136, !llvm.loop !157

155:                                              ; preds = %144, %130
  %156 = getelementptr inbounds i8, ptr %22, i64 1
  %157 = add nuw nsw i32 %21, 1
  %158 = icmp eq i32 %157, %1
  br i1 %158, label %159, label %20, !llvm.loop !158

159:                                              ; preds = %155, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_PackFontRangesRenderIntoRects(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 8
  %12 = load <2 x i32>, ptr %10, align 4, !tbaa !40
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %291

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 5
  %17 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %1, i64 0, i32 8
  %20 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 6
  %23 = zext nneg i32 %3 to i64
  br label %24

24:                                               ; preds = %14, %285
  %25 = phi i64 [ 0, %14 ], [ %289, %285 ]
  %26 = phi i32 [ 0, %14 ], [ %288, %285 ]
  %27 = phi i32 [ -1, %14 ], [ %287, %285 ]
  %28 = phi i32 [ 1, %14 ], [ %286, %285 ]
  %29 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25
  %30 = load float, ptr %29, align 8, !tbaa !133
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load ptr, ptr %15, align 8, !tbaa !5
  %34 = load i32, ptr %17, align 4, !tbaa !46
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  %41 = getelementptr inbounds i8, ptr %36, i64 5
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i16
  %44 = or disjoint i16 %40, %43
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds i8, ptr %36, i64 6
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i16
  %49 = shl nuw i16 %48, 8
  %50 = getelementptr inbounds i8, ptr %36, i64 7
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i16
  %53 = or disjoint i16 %49, %52
  %54 = sext i16 %53 to i32
  %55 = sub nsw i32 %45, %54
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %30, %56
  br label %74

58:                                               ; preds = %24
  %59 = fneg float %30
  %60 = load ptr, ptr %15, align 8, !tbaa !5
  %61 = load i32, ptr %16, align 4, !tbaa !63
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = getelementptr inbounds i8, ptr %63, i64 18
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = getelementptr inbounds i8, ptr %63, i64 19
  %69 = load i8, ptr %68, align 1, !tbaa !13
  %70 = zext i8 %69 to i16
  %71 = or disjoint i16 %67, %70
  %72 = uitofp i16 %71 to float
  %73 = fdiv float %59, %72
  br label %74

74:                                               ; preds = %58, %32
  %75 = phi float [ %57, %32 ], [ %73, %58 ]
  %76 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25, i32 5
  %77 = load <2 x i8>, ptr %76, align 8, !tbaa !13
  %78 = zext <2 x i8> %77 to <2 x i32>
  store <2 x i32> %78, ptr %10, align 4, !tbaa !40
  %79 = uitofp <2 x i8> %77 to <2 x float>
  %80 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %79
  %81 = icmp eq <2 x i8> %77, zeroinitializer
  %82 = sub nsw <2 x i32> <i32 1, i32 1>, %78
  %83 = sitofp <2 x i32> %82 to <2 x float>
  %84 = fmul <2 x float> %79, <float 2.000000e+00, float 2.000000e+00>
  %85 = fdiv <2 x float> %83, %84
  %86 = select <2 x i1> %81, <2 x float> zeroinitializer, <2 x float> %85
  %87 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !137
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %285

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25, i32 4
  %92 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25, i32 2
  %93 = getelementptr inbounds %struct.stbtt_pack_range, ptr %2, i64 %25, i32 1
  %94 = sext i32 %26 to i64
  %95 = insertelement <2 x float> poison, float %75, i64 0
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %90, %275
  %98 = phi i64 [ %94, %90 ], [ %278, %275 ]
  %99 = phi i64 [ 0, %90 ], [ %279, %275 ]
  %100 = phi i32 [ %27, %90 ], [ %277, %275 ]
  %101 = phi i32 [ %28, %90 ], [ %276, %275 ]
  %102 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98
  %103 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98, i32 5
  %104 = load i32, ptr %103, align 4, !tbaa !159
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %275, label %106

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !142
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %261, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98, i32 4
  %112 = load i32, ptr %111, align 4, !tbaa !140
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %275, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %91, align 8, !tbaa !160
  %116 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99
  %117 = load ptr, ptr %92, align 8, !tbaa !138
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, ptr %93, align 4, !tbaa !139
  %121 = trunc i64 %99 to i32
  %122 = add nsw i32 %120, %121
  br label %126

123:                                              ; preds = %114
  %124 = getelementptr inbounds i32, ptr %117, i64 %99
  %125 = load i32, ptr %124, align 4, !tbaa !40
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i32 [ %122, %119 ], [ %125, %123 ]
  %128 = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %127)
  %129 = load i32, ptr %18, align 4, !tbaa !122
  %130 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98, i32 1
  %131 = load <2 x i32>, ptr %102, align 4, !tbaa !40
  %132 = insertelement <2 x i32> poison, i32 %129, i64 0
  %133 = shufflevector <2 x i32> %132, <2 x i32> poison, <2 x i32> zeroinitializer
  %134 = add nsw <2 x i32> %131, %133
  store <2 x i32> %134, ptr %102, align 4, !tbaa !40
  %135 = load <2 x i32>, ptr %107, align 4, !tbaa !40
  %136 = sub nsw <2 x i32> %135, %133
  store <2 x i32> %136, ptr %107, align 4, !tbaa !40
  %137 = load ptr, ptr %15, align 8, !tbaa !5
  %138 = load i32, ptr %17, align 4, !tbaa !46
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %137, i64 %139
  %141 = getelementptr inbounds i8, ptr %140, i64 34
  %142 = load i8, ptr %141, align 1, !tbaa !13
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 8
  %145 = getelementptr inbounds i8, ptr %140, i64 35
  %146 = load i8, ptr %145, align 1, !tbaa !13
  %147 = zext i8 %146 to i32
  %148 = or disjoint i32 %144, %147
  %149 = icmp sgt i32 %148, %128
  %150 = load i32, ptr %19, align 8, !tbaa !47
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %137, i64 %151
  %153 = shl nsw i32 %128, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %152, i64 %154
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  %157 = shl nuw nsw i32 %148, 2
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr i8, ptr %152, i64 %158
  %160 = getelementptr i8, ptr %159, i64 -4
  %161 = getelementptr i8, ptr %159, i64 -3
  %162 = select i1 %149, ptr %156, ptr %161
  %163 = select i1 %149, ptr %155, ptr %160
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = zext i8 %164 to i16
  %166 = shl nuw i16 %165, 8
  %167 = load i8, ptr %162, align 1, !tbaa !13
  %168 = zext i8 %167 to i16
  %169 = or disjoint i16 %166, %168
  %170 = load <2 x i32>, ptr %10, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  %171 = call i32 @stbtt_GetGlyphBox(ptr noundef nonnull %1, i32 noundef %128, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !45
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %126
  %174 = uitofp <2 x i32> %170 to <2 x float>
  %175 = load i32, ptr %6, align 4, !tbaa !40
  %176 = load i32, ptr %9, align 4, !tbaa !40
  %177 = sub nsw i32 0, %176
  %178 = fmul <2 x float> %96, %174
  %179 = insertelement <2 x i32> poison, i32 %175, i64 0
  %180 = insertelement <2 x i32> %179, i32 %177, i64 1
  %181 = sitofp <2 x i32> %180 to <2 x float>
  %182 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %181, <2 x float> %178, <2 x float> zeroinitializer)
  %183 = call <2 x float> @llvm.floor.v2f32(<2 x float> %182)
  %184 = fptosi <2 x float> %183 to <2 x i32>
  br label %185

185:                                              ; preds = %126, %173
  %186 = phi <2 x i32> [ %184, %173 ], [ zeroinitializer, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  %187 = load ptr, ptr %20, align 8, !tbaa !119
  %188 = load i32, ptr %102, align 4, !tbaa !161
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %187, i64 %189
  %191 = load i32, ptr %130, align 4, !tbaa !162
  %192 = load i32, ptr %21, align 8, !tbaa !123
  %193 = mul nsw i32 %192, %191
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %190, i64 %194
  %196 = load i32, ptr %107, align 4, !tbaa !142
  %197 = load i32, ptr %10, align 4, !tbaa !124
  %198 = add i32 %196, 1
  %199 = sub i32 %198, %197
  %200 = load i32, ptr %111, align 4, !tbaa !140
  %201 = load i32, ptr %11, align 8, !tbaa !125
  %202 = add i32 %200, 1
  %203 = sub i32 %202, %201
  %204 = uitofp i32 %197 to float
  %205 = fmul float %75, %204
  %206 = uitofp i32 %201 to float
  %207 = fmul float %75, %206
  call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef nonnull %1, ptr noundef %195, i32 noundef %199, i32 noundef %203, i32 noundef %192, float noundef %205, float noundef %207, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %128)
  %208 = load i32, ptr %10, align 4, !tbaa !124
  %209 = icmp ugt i32 %208, 1
  br i1 %209, label %210, label %222

210:                                              ; preds = %185
  %211 = load ptr, ptr %20, align 8, !tbaa !119
  %212 = load i32, ptr %102, align 4, !tbaa !161
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %211, i64 %213
  %215 = load i32, ptr %130, align 4, !tbaa !162
  %216 = load i32, ptr %21, align 8, !tbaa !123
  %217 = mul nsw i32 %216, %215
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %214, i64 %218
  %220 = load i32, ptr %107, align 4, !tbaa !142
  %221 = load i32, ptr %111, align 4, !tbaa !140
  call fastcc void @stbtt__h_prefilter(ptr noundef %219, i32 noundef %220, i32 noundef %221, i32 noundef %216, i32 noundef %208)
  br label %222

222:                                              ; preds = %210, %185
  %223 = load i32, ptr %11, align 8, !tbaa !125
  %224 = icmp ugt i32 %223, 1
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load ptr, ptr %20, align 8, !tbaa !119
  %227 = load i32, ptr %102, align 4, !tbaa !161
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %226, i64 %228
  %230 = load i32, ptr %130, align 4, !tbaa !162
  %231 = load i32, ptr %21, align 8, !tbaa !123
  %232 = mul nsw i32 %231, %230
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %229, i64 %233
  %235 = load i32, ptr %107, align 4, !tbaa !142
  %236 = load i32, ptr %111, align 4, !tbaa !140
  call fastcc void @stbtt__v_prefilter(ptr noundef %234, i32 noundef %235, i32 noundef %236, i32 noundef %231, i32 noundef %223)
  br label %237

237:                                              ; preds = %225, %222
  %238 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99, i32 1
  %239 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99, i32 2
  %240 = sitofp i16 %169 to float
  %241 = fmul float %75, %240
  %242 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99, i32 6
  store float %241, ptr %242, align 4, !tbaa !163
  %243 = sitofp <2 x i32> %186 to <2 x float>
  %244 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99, i32 4
  %245 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %243, <2 x float> %80, <2 x float> %86)
  store <2 x float> %245, ptr %244, align 4, !tbaa !68
  %246 = getelementptr inbounds %struct.stbtt_packedchar, ptr %115, i64 %99, i32 7
  %247 = load <2 x i32>, ptr %107, align 4, !tbaa !40
  %248 = load <2 x i32>, ptr %102, align 4, !tbaa !40
  %249 = bitcast <2 x i32> %248 to <4 x i16>
  %250 = extractelement <4 x i16> %249, i64 0
  store i16 %250, ptr %116, align 4, !tbaa !165
  %251 = bitcast <2 x i32> %248 to <4 x i16>
  %252 = extractelement <4 x i16> %251, i64 2
  store i16 %252, ptr %238, align 2, !tbaa !166
  %253 = add nsw <2 x i32> %247, %248
  %254 = trunc <2 x i32> %253 to <2 x i16>
  store <2 x i16> %254, ptr %239, align 4, !tbaa !33
  %255 = add nsw <2 x i32> %247, %186
  %256 = sitofp <2 x i32> %255 to <2 x float>
  %257 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %256, <2 x float> %80, <2 x float> %86)
  store <2 x float> %257, ptr %246, align 4, !tbaa !68
  %258 = icmp eq i32 %128, 0
  %259 = trunc i64 %99 to i32
  %260 = select i1 %258, i32 %259, i32 %100
  br label %275

261:                                              ; preds = %106
  %262 = load i32, ptr %22, align 8, !tbaa !126
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.stbrp_rect, ptr %4, i64 %98, i32 4
  %266 = load i32, ptr %265, align 4, !tbaa !140
  %267 = icmp eq i32 %266, 0
  %268 = icmp sgt i32 %100, -1
  %269 = select i1 %267, i1 %268, i1 false
  br i1 %269, label %270, label %275

270:                                              ; preds = %264
  %271 = load ptr, ptr %91, align 8, !tbaa !160
  %272 = getelementptr inbounds %struct.stbtt_packedchar, ptr %271, i64 %99
  %273 = zext nneg i32 %100 to i64
  %274 = getelementptr inbounds %struct.stbtt_packedchar, ptr %271, i64 %273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %272, ptr noundef nonnull align 4 dereferenceable(28) %274, i64 28, i1 false), !tbaa.struct !167
  br label %275

275:                                              ; preds = %110, %261, %97, %264, %270, %237
  %276 = phi i32 [ %101, %237 ], [ %101, %270 ], [ 0, %261 ], [ 0, %264 ], [ 0, %97 ], [ 0, %110 ]
  %277 = phi i32 [ %260, %237 ], [ %100, %270 ], [ %100, %261 ], [ %100, %264 ], [ %100, %97 ], [ %100, %110 ]
  %278 = add nsw i64 %98, 1
  %279 = add nuw nsw i64 %99, 1
  %280 = load i32, ptr %87, align 8, !tbaa !137
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %279, %281
  br i1 %282, label %97, label %283, !llvm.loop !168

283:                                              ; preds = %275
  %284 = trunc i64 %278 to i32
  br label %285

285:                                              ; preds = %283, %74
  %286 = phi i32 [ %28, %74 ], [ %276, %283 ]
  %287 = phi i32 [ %27, %74 ], [ %277, %283 ]
  %288 = phi i32 [ %26, %74 ], [ %284, %283 ]
  %289 = add nuw nsw i64 %25, 1
  %290 = icmp eq i64 %289, %23
  br i1 %290, label %291, label %24, !llvm.loop !169

291:                                              ; preds = %285, %5
  %292 = phi i32 [ 1, %5 ], [ %286, %285 ]
  store <2 x i32> %12, ptr %10, align 4, !tbaa !40
  ret i32 %292
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @stbtt_PackFontRangesPackRects(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #17 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.stbrp_context, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %7, align 4, !tbaa !127
  %10 = getelementptr inbounds %struct.stbrp_context, ptr %7, i64 0, i32 4
  %11 = getelementptr inbounds %struct.stbrp_context, ptr %7, i64 0, i32 3
  %12 = getelementptr inbounds %struct.stbrp_context, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !129
  %14 = load i32, ptr %8, align 4, !tbaa !130
  %15 = load i32, ptr %11, align 4, !tbaa !131
  %16 = zext nneg i32 %2 to i64
  br label %17

17:                                               ; preds = %42, %5
  %18 = phi i64 [ 0, %5 ], [ %43, %42 ]
  %19 = phi i32 [ %15, %5 ], [ %29, %42 ]
  %20 = phi i32 [ %14, %5 ], [ %38, %42 ]
  %21 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %18
  %22 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %18, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !142
  %24 = add nsw i32 %23, %20
  %25 = icmp sgt i32 %24, %9
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  store i32 0, ptr %8, align 4, !tbaa !130
  %27 = load i32, ptr %10, align 4, !tbaa !132
  store i32 %27, ptr %11, align 4, !tbaa !131
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i32 [ %27, %26 ], [ %19, %17 ]
  %30 = phi i32 [ 0, %26 ], [ %20, %17 ]
  %31 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %18, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !140
  %33 = add nsw i32 %32, %29
  %34 = icmp sgt i32 %33, %13
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  store i32 %30, ptr %21, align 4, !tbaa !161
  %36 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %18, i32 1
  store i32 %29, ptr %36, align 4, !tbaa !162
  %37 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %18, i32 5
  store i32 1, ptr %37, align 4, !tbaa !159
  %38 = add nsw i32 %30, %23
  store i32 %38, ptr %8, align 4, !tbaa !130
  %39 = load i32, ptr %10, align 4, !tbaa !132
  %40 = icmp sgt i32 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 %33, ptr %10, align 4, !tbaa !132
  br label %42

42:                                               ; preds = %41, %35
  %43 = add nuw nsw i64 %18, 1
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %78, label %17, !llvm.loop !170

45:                                               ; preds = %28
  %46 = trunc i64 %18 to i32
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi i32 [ 0, %3 ], [ %46, %45 ]
  %49 = icmp slt i32 %48, %2
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = zext i32 %48 to i64
  %52 = zext i32 %2 to i64
  %53 = sub nsw i64 %52, %51
  %54 = and i64 %53, 3
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50, %56
  %57 = phi i64 [ %60, %56 ], [ %51, %50 ]
  %58 = phi i64 [ %61, %56 ], [ 0, %50 ]
  %59 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %57, i32 5
  store i32 0, ptr %59, align 4, !tbaa !159
  %60 = add nuw nsw i64 %57, 1
  %61 = add i64 %58, 1
  %62 = icmp eq i64 %61, %54
  br i1 %62, label %63, label %56, !llvm.loop !171

63:                                               ; preds = %56, %50
  %64 = phi i64 [ %51, %50 ], [ %60, %56 ]
  %65 = sub nsw i64 %51, %52
  %66 = icmp ugt i64 %65, -4
  br i1 %66, label %78, label %67

67:                                               ; preds = %63, %67
  %68 = phi i64 [ %76, %67 ], [ %64, %63 ]
  %69 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %68, i32 5
  store i32 0, ptr %69, align 4, !tbaa !159
  %70 = add nuw nsw i64 %68, 1
  %71 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %70, i32 5
  store i32 0, ptr %71, align 4, !tbaa !159
  %72 = add nuw nsw i64 %68, 2
  %73 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %72, i32 5
  store i32 0, ptr %73, align 4, !tbaa !159
  %74 = add nuw nsw i64 %68, 3
  %75 = getelementptr inbounds %struct.stbrp_rect, ptr %1, i64 %74, i32 5
  store i32 0, ptr %75, align 4, !tbaa !159
  %76 = add nuw nsw i64 %68, 4
  %77 = icmp eq i64 %76, %52
  br i1 %77, label %78, label %67, !llvm.loop !173

78:                                               ; preds = %42, %63, %67, %47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_PackFontRanges(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.stbtt_fontinfo, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #34
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %113

8:                                                ; preds = %5
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %98
  %11 = phi i64 [ 0, %8 ], [ %99, %98 ]
  %12 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %11, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !137
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %11, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = zext nneg i32 %13 to i64
  %19 = and i64 %18, 3
  %20 = icmp ult i32 %13, 4
  br i1 %20, label %88, label %21

21:                                               ; preds = %15
  %22 = and i64 %18, 2147483644
  br label %75

23:                                               ; preds = %98
  br i1 %7, label %24, label %113

24:                                               ; preds = %23
  %25 = zext nneg i32 %4 to i64
  %26 = icmp ult i32 %4, 8
  br i1 %26, label %72, label %27

27:                                               ; preds = %24
  %28 = and i64 %9, 2147483640
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %66, %29 ]
  %31 = phi <4 x i32> [ zeroinitializer, %27 ], [ %64, %29 ]
  %32 = phi <4 x i32> [ zeroinitializer, %27 ], [ %65, %29 ]
  %33 = or disjoint i64 %30, 1
  %34 = or disjoint i64 %30, 2
  %35 = or disjoint i64 %30, 3
  %36 = or disjoint i64 %30, 4
  %37 = or disjoint i64 %30, 5
  %38 = or disjoint i64 %30, 6
  %39 = or disjoint i64 %30, 7
  %40 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %30, i32 3
  %41 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %33, i32 3
  %42 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %34, i32 3
  %43 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %35, i32 3
  %44 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %36, i32 3
  %45 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %37, i32 3
  %46 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %38, i32 3
  %47 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %39, i32 3
  %48 = load i32, ptr %40, align 8, !tbaa !137
  %49 = load i32, ptr %41, align 8, !tbaa !137
  %50 = load i32, ptr %42, align 8, !tbaa !137
  %51 = load i32, ptr %43, align 8, !tbaa !137
  %52 = insertelement <4 x i32> poison, i32 %48, i64 0
  %53 = insertelement <4 x i32> %52, i32 %49, i64 1
  %54 = insertelement <4 x i32> %53, i32 %50, i64 2
  %55 = insertelement <4 x i32> %54, i32 %51, i64 3
  %56 = load i32, ptr %44, align 8, !tbaa !137
  %57 = load i32, ptr %45, align 8, !tbaa !137
  %58 = load i32, ptr %46, align 8, !tbaa !137
  %59 = load i32, ptr %47, align 8, !tbaa !137
  %60 = insertelement <4 x i32> poison, i32 %56, i64 0
  %61 = insertelement <4 x i32> %60, i32 %57, i64 1
  %62 = insertelement <4 x i32> %61, i32 %58, i64 2
  %63 = insertelement <4 x i32> %62, i32 %59, i64 3
  %64 = add <4 x i32> %55, %31
  %65 = add <4 x i32> %63, %32
  %66 = add nuw i64 %30, 8
  %67 = icmp eq i64 %66, %28
  br i1 %67, label %68, label %29, !llvm.loop !174

68:                                               ; preds = %29
  %69 = add <4 x i32> %65, %64
  %70 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %69)
  %71 = icmp eq i64 %28, %9
  br i1 %71, label %109, label %72

72:                                               ; preds = %24, %68
  %73 = phi i64 [ 0, %24 ], [ %28, %68 ]
  %74 = phi i32 [ 0, %24 ], [ %70, %68 ]
  br label %101

75:                                               ; preds = %75, %21
  %76 = phi i64 [ 0, %21 ], [ %85, %75 ]
  %77 = phi i64 [ 0, %21 ], [ %86, %75 ]
  %78 = getelementptr inbounds %struct.stbtt_packedchar, ptr %17, i64 %76
  %79 = or disjoint i64 %76, 1
  store i64 0, ptr %78, align 4
  %80 = getelementptr inbounds %struct.stbtt_packedchar, ptr %17, i64 %79
  %81 = or disjoint i64 %76, 2
  store i64 0, ptr %80, align 4
  %82 = getelementptr inbounds %struct.stbtt_packedchar, ptr %17, i64 %81
  %83 = or disjoint i64 %76, 3
  store i64 0, ptr %82, align 4
  %84 = getelementptr inbounds %struct.stbtt_packedchar, ptr %17, i64 %83
  %85 = add nuw nsw i64 %76, 4
  store i64 0, ptr %84, align 4
  %86 = add i64 %77, 4
  %87 = icmp eq i64 %86, %22
  br i1 %87, label %88, label %75, !llvm.loop !175

88:                                               ; preds = %75, %15
  %89 = phi i64 [ 0, %15 ], [ %85, %75 ]
  %90 = icmp eq i64 %19, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %95, %91 ], [ %89, %88 ]
  %93 = phi i64 [ %96, %91 ], [ 0, %88 ]
  %94 = getelementptr inbounds %struct.stbtt_packedchar, ptr %17, i64 %92
  %95 = add nuw nsw i64 %92, 1
  store i64 0, ptr %94, align 4
  %96 = add i64 %93, 1
  %97 = icmp eq i64 %96, %19
  br i1 %97, label %98, label %91, !llvm.loop !176

98:                                               ; preds = %88, %91, %10
  %99 = add nuw nsw i64 %11, 1
  %100 = icmp eq i64 %99, %9
  br i1 %100, label %23, label %10, !llvm.loop !177

101:                                              ; preds = %72, %101
  %102 = phi i64 [ %107, %101 ], [ %73, %72 ]
  %103 = phi i32 [ %106, %101 ], [ %74, %72 ]
  %104 = getelementptr inbounds %struct.stbtt_pack_range, ptr %3, i64 %102, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !137
  %106 = add nsw i32 %105, %103
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %25
  br i1 %108, label %109, label %101, !llvm.loop !178

109:                                              ; preds = %101, %68
  %110 = phi i32 [ %70, %68 ], [ %106, %101 ]
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 24
  br label %113

113:                                              ; preds = %5, %109, %23
  %114 = phi i64 [ 0, %23 ], [ %112, %109 ], [ 0, %5 ]
  %115 = tail call noalias ptr @malloc(i64 noundef %114) #33
  %116 = icmp eq ptr %115, null
  br i1 %116, label %198, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !115
  store ptr %118, ptr %6, align 8, !tbaa !179
  %119 = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %1, i32 noundef %2)
  %120 = call i32 @stbtt_InitFont(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %119), !range !45
  %121 = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %115)
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.stbtt_pack_context, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !120
  %126 = getelementptr inbounds %struct.stbrp_context, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %125, align 4, !tbaa !127
  %128 = getelementptr inbounds %struct.stbrp_context, ptr %125, i64 0, i32 4
  %129 = getelementptr inbounds %struct.stbrp_context, ptr %125, i64 0, i32 3
  %130 = getelementptr inbounds %struct.stbrp_context, ptr %125, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !129
  %132 = load i32, ptr %126, align 4, !tbaa !130
  %133 = load i32, ptr %129, align 4, !tbaa !131
  %134 = zext nneg i32 %121 to i64
  br label %135

135:                                              ; preds = %160, %123
  %136 = phi i64 [ 0, %123 ], [ %161, %160 ]
  %137 = phi i32 [ %133, %123 ], [ %147, %160 ]
  %138 = phi i32 [ %132, %123 ], [ %156, %160 ]
  %139 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %136
  %140 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %136, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !142
  %142 = add nsw i32 %141, %138
  %143 = icmp sgt i32 %142, %127
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  store i32 0, ptr %126, align 4, !tbaa !130
  %145 = load i32, ptr %128, align 4, !tbaa !132
  store i32 %145, ptr %129, align 4, !tbaa !131
  br label %146

146:                                              ; preds = %144, %135
  %147 = phi i32 [ %145, %144 ], [ %137, %135 ]
  %148 = phi i32 [ 0, %144 ], [ %138, %135 ]
  %149 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %136, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !140
  %151 = add nsw i32 %150, %147
  %152 = icmp sgt i32 %151, %131
  br i1 %152, label %163, label %153

153:                                              ; preds = %146
  store i32 %148, ptr %139, align 4, !tbaa !161
  %154 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %136, i32 1
  store i32 %147, ptr %154, align 4, !tbaa !162
  %155 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %136, i32 5
  store i32 1, ptr %155, align 4, !tbaa !159
  %156 = add nsw i32 %148, %141
  store i32 %156, ptr %126, align 4, !tbaa !130
  %157 = load i32, ptr %128, align 4, !tbaa !132
  %158 = icmp sgt i32 %151, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  store i32 %151, ptr %128, align 4, !tbaa !132
  br label %160

160:                                              ; preds = %159, %153
  %161 = add nuw nsw i64 %136, 1
  %162 = icmp eq i64 %161, %134
  br i1 %162, label %196, label %135, !llvm.loop !170

163:                                              ; preds = %146
  %164 = trunc i64 %136 to i32
  br label %165

165:                                              ; preds = %163, %117
  %166 = phi i32 [ 0, %117 ], [ %164, %163 ]
  %167 = icmp slt i32 %166, %121
  br i1 %167, label %168, label %196

168:                                              ; preds = %165
  %169 = zext i32 %166 to i64
  %170 = zext i32 %121 to i64
  %171 = sub nsw i64 %170, %169
  %172 = and i64 %171, 3
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %168, %174
  %175 = phi i64 [ %178, %174 ], [ %169, %168 ]
  %176 = phi i64 [ %179, %174 ], [ 0, %168 ]
  %177 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %175, i32 5
  store i32 0, ptr %177, align 4, !tbaa !159
  %178 = add nuw nsw i64 %175, 1
  %179 = add i64 %176, 1
  %180 = icmp eq i64 %179, %172
  br i1 %180, label %181, label %174, !llvm.loop !180

181:                                              ; preds = %174, %168
  %182 = phi i64 [ %169, %168 ], [ %178, %174 ]
  %183 = sub nsw i64 %169, %170
  %184 = icmp ugt i64 %183, -4
  br i1 %184, label %196, label %185

185:                                              ; preds = %181, %185
  %186 = phi i64 [ %194, %185 ], [ %182, %181 ]
  %187 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %186, i32 5
  store i32 0, ptr %187, align 4, !tbaa !159
  %188 = add nuw nsw i64 %186, 1
  %189 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %188, i32 5
  store i32 0, ptr %189, align 4, !tbaa !159
  %190 = add nuw nsw i64 %186, 2
  %191 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %190, i32 5
  store i32 0, ptr %191, align 4, !tbaa !159
  %192 = add nuw nsw i64 %186, 3
  %193 = getelementptr inbounds %struct.stbrp_rect, ptr %115, i64 %192, i32 5
  store i32 0, ptr %193, align 4, !tbaa !159
  %194 = add nuw nsw i64 %186, 4
  %195 = icmp eq i64 %194, %170
  br i1 %195, label %196, label %185, !llvm.loop !173

196:                                              ; preds = %160, %181, %185, %165
  %197 = call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %115), !range !45
  tail call void @free(ptr noundef nonnull %115) #34
  br label %198

198:                                              ; preds = %113, %196
  %199 = phi i32 [ %197, %196 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #34
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stbtt_InitFont(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stbtt__buf, align 8
  %5 = alloca %struct.stbtt__buf, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 2
  store i32 %2, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14
  %13 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 1
  %14 = zext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr inbounds i8, ptr %15, i64 5
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = zext i8 %21 to i32
  %23 = or disjoint i32 %19, %22
  %24 = add i32 %2, 12
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %116, label %26

26:                                               ; preds = %3
  %27 = zext nneg i32 %23 to i64
  br label %28

28:                                               ; preds = %68, %26
  %29 = phi i64 [ 0, %26 ], [ %69, %68 ]
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 4
  %32 = add i32 %31, %24
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = icmp eq i8 %35, 99
  br i1 %36, label %37, label %68

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 109
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %34, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = icmp eq i8 %43, 97
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %34, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 112
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %34, i64 8
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr inbounds i8, ptr %34, i64 9
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or disjoint i32 %57, %53
  %59 = getelementptr inbounds i8, ptr %34, i64 10
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or disjoint i32 %58, %62
  %64 = getelementptr inbounds i8, ptr %34, i64 11
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i32
  %67 = or disjoint i32 %63, %66
  br label %71

68:                                               ; preds = %45, %41, %37, %28
  %69 = add nuw nsw i64 %29, 1
  %70 = icmp eq i64 %69, %27
  br i1 %70, label %71, label %28, !llvm.loop !62

71:                                               ; preds = %68, %49
  %72 = phi i32 [ %67, %49 ], [ 0, %68 ]
  br label %73

73:                                               ; preds = %113, %71
  %74 = phi i64 [ 0, %71 ], [ %114, %113 ]
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 4
  %77 = add i32 %76, %24
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %1, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !13
  %81 = icmp eq i8 %80, 108
  br i1 %81, label %82, label %113

82:                                               ; preds = %73
  %83 = getelementptr inbounds i8, ptr %79, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = icmp eq i8 %84, 111
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %79, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = icmp eq i8 %88, 99
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %79, i64 3
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = icmp eq i8 %92, 97
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %79, i64 8
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 %97, 24
  %99 = getelementptr inbounds i8, ptr %79, i64 9
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = or disjoint i32 %102, %98
  %104 = getelementptr inbounds i8, ptr %79, i64 10
  %105 = load i8, ptr %104, align 1, !tbaa !13
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 8
  %108 = or disjoint i32 %103, %107
  %109 = getelementptr inbounds i8, ptr %79, i64 11
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = zext i8 %110 to i32
  %112 = or disjoint i32 %108, %111
  br label %116

113:                                              ; preds = %90, %86, %82, %73
  %114 = add nuw nsw i64 %74, 1
  %115 = icmp eq i64 %114, %27
  br i1 %115, label %116, label %73, !llvm.loop !62

116:                                              ; preds = %113, %94, %3
  %117 = phi i32 [ %72, %94 ], [ 0, %3 ], [ %72, %113 ]
  %118 = phi i32 [ %112, %94 ], [ 0, %3 ], [ 0, %113 ]
  %119 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 4
  store i32 %118, ptr %119, align 8, !tbaa !44
  %120 = load i8, ptr %16, align 1, !tbaa !13
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 8
  %123 = load i8, ptr %20, align 1, !tbaa !13
  %124 = zext i8 %123 to i32
  %125 = or disjoint i32 %122, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %172, label %127

127:                                              ; preds = %116
  %128 = zext nneg i32 %125 to i64
  br label %129

129:                                              ; preds = %169, %127
  %130 = phi i64 [ 0, %127 ], [ %170, %169 ]
  %131 = trunc i64 %130 to i32
  %132 = shl i32 %131, 4
  %133 = add i32 %132, %24
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %1, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = icmp eq i8 %136, 104
  br i1 %137, label %138, label %169

138:                                              ; preds = %129
  %139 = getelementptr inbounds i8, ptr %135, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = icmp eq i8 %140, 101
  br i1 %141, label %142, label %169

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %135, i64 2
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = icmp eq i8 %144, 97
  br i1 %145, label %146, label %169

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, ptr %135, i64 3
  %148 = load i8, ptr %147, align 1, !tbaa !13
  %149 = icmp eq i8 %148, 100
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, ptr %135, i64 8
  %152 = load i8, ptr %151, align 1, !tbaa !13
  %153 = zext i8 %152 to i32
  %154 = shl nuw i32 %153, 24
  %155 = getelementptr inbounds i8, ptr %135, i64 9
  %156 = load i8, ptr %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 16
  %159 = or disjoint i32 %158, %154
  %160 = getelementptr inbounds i8, ptr %135, i64 10
  %161 = load i8, ptr %160, align 1, !tbaa !13
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 8
  %164 = or disjoint i32 %159, %163
  %165 = getelementptr inbounds i8, ptr %135, i64 11
  %166 = load i8, ptr %165, align 1, !tbaa !13
  %167 = zext i8 %166 to i32
  %168 = or disjoint i32 %164, %167
  br label %172

169:                                              ; preds = %146, %142, %138, %129
  %170 = add nuw nsw i64 %130, 1
  %171 = icmp eq i64 %170, %128
  br i1 %171, label %172, label %129, !llvm.loop !62

172:                                              ; preds = %169, %150, %116
  %173 = phi i32 [ %168, %150 ], [ 0, %116 ], [ 0, %169 ]
  %174 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 5
  store i32 %173, ptr %174, align 4, !tbaa !63
  %175 = load i8, ptr %16, align 1, !tbaa !13
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 8
  %178 = load i8, ptr %20, align 1, !tbaa !13
  %179 = zext i8 %178 to i32
  %180 = or disjoint i32 %177, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %227, label %182

182:                                              ; preds = %172
  %183 = zext nneg i32 %180 to i64
  br label %184

184:                                              ; preds = %224, %182
  %185 = phi i64 [ 0, %182 ], [ %225, %224 ]
  %186 = trunc i64 %185 to i32
  %187 = shl i32 %186, 4
  %188 = add i32 %187, %24
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %1, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !13
  %192 = icmp eq i8 %191, 103
  br i1 %192, label %193, label %224

193:                                              ; preds = %184
  %194 = getelementptr inbounds i8, ptr %190, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !13
  %196 = icmp eq i8 %195, 108
  br i1 %196, label %197, label %224

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, ptr %190, i64 2
  %199 = load i8, ptr %198, align 1, !tbaa !13
  %200 = icmp eq i8 %199, 121
  br i1 %200, label %201, label %224

201:                                              ; preds = %197
  %202 = getelementptr inbounds i8, ptr %190, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !13
  %204 = icmp eq i8 %203, 102
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = getelementptr inbounds i8, ptr %190, i64 8
  %207 = load i8, ptr %206, align 1, !tbaa !13
  %208 = zext i8 %207 to i32
  %209 = shl nuw i32 %208, 24
  %210 = getelementptr inbounds i8, ptr %190, i64 9
  %211 = load i8, ptr %210, align 1, !tbaa !13
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, 16
  %214 = or disjoint i32 %213, %209
  %215 = getelementptr inbounds i8, ptr %190, i64 10
  %216 = load i8, ptr %215, align 1, !tbaa !13
  %217 = zext i8 %216 to i32
  %218 = shl nuw nsw i32 %217, 8
  %219 = or disjoint i32 %214, %218
  %220 = getelementptr inbounds i8, ptr %190, i64 11
  %221 = load i8, ptr %220, align 1, !tbaa !13
  %222 = zext i8 %221 to i32
  %223 = or disjoint i32 %219, %222
  br label %227

224:                                              ; preds = %201, %197, %193, %184
  %225 = add nuw nsw i64 %185, 1
  %226 = icmp eq i64 %225, %183
  br i1 %226, label %227, label %184, !llvm.loop !62

227:                                              ; preds = %224, %205, %172
  %228 = phi i32 [ %223, %205 ], [ 0, %172 ], [ 0, %224 ]
  %229 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 6
  store i32 %228, ptr %229, align 8, !tbaa !43
  %230 = load i8, ptr %16, align 1, !tbaa !13
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 8
  %233 = load i8, ptr %20, align 1, !tbaa !13
  %234 = zext i8 %233 to i32
  %235 = or disjoint i32 %232, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %282, label %237

237:                                              ; preds = %227
  %238 = zext nneg i32 %235 to i64
  br label %239

239:                                              ; preds = %279, %237
  %240 = phi i64 [ 0, %237 ], [ %280, %279 ]
  %241 = trunc i64 %240 to i32
  %242 = shl i32 %241, 4
  %243 = add i32 %242, %24
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %1, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !13
  %247 = icmp eq i8 %246, 104
  br i1 %247, label %248, label %279

248:                                              ; preds = %239
  %249 = getelementptr inbounds i8, ptr %245, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !13
  %251 = icmp eq i8 %250, 104
  br i1 %251, label %252, label %279

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, ptr %245, i64 2
  %254 = load i8, ptr %253, align 1, !tbaa !13
  %255 = icmp eq i8 %254, 101
  br i1 %255, label %256, label %279

256:                                              ; preds = %252
  %257 = getelementptr inbounds i8, ptr %245, i64 3
  %258 = load i8, ptr %257, align 1, !tbaa !13
  %259 = icmp eq i8 %258, 97
  br i1 %259, label %260, label %279

260:                                              ; preds = %256
  %261 = getelementptr inbounds i8, ptr %245, i64 8
  %262 = load i8, ptr %261, align 1, !tbaa !13
  %263 = zext i8 %262 to i32
  %264 = shl nuw i32 %263, 24
  %265 = getelementptr inbounds i8, ptr %245, i64 9
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = zext i8 %266 to i32
  %268 = shl nuw nsw i32 %267, 16
  %269 = or disjoint i32 %268, %264
  %270 = getelementptr inbounds i8, ptr %245, i64 10
  %271 = load i8, ptr %270, align 1, !tbaa !13
  %272 = zext i8 %271 to i32
  %273 = shl nuw nsw i32 %272, 8
  %274 = or disjoint i32 %269, %273
  %275 = getelementptr inbounds i8, ptr %245, i64 11
  %276 = load i8, ptr %275, align 1, !tbaa !13
  %277 = zext i8 %276 to i32
  %278 = or disjoint i32 %274, %277
  br label %282

279:                                              ; preds = %256, %252, %248, %239
  %280 = add nuw nsw i64 %240, 1
  %281 = icmp eq i64 %280, %238
  br i1 %281, label %282, label %239, !llvm.loop !62

282:                                              ; preds = %279, %260, %227
  %283 = phi i32 [ %278, %260 ], [ 0, %227 ], [ 0, %279 ]
  %284 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 7
  store i32 %283, ptr %284, align 4, !tbaa !46
  %285 = load i8, ptr %16, align 1, !tbaa !13
  %286 = zext i8 %285 to i32
  %287 = shl nuw nsw i32 %286, 8
  %288 = load i8, ptr %20, align 1, !tbaa !13
  %289 = zext i8 %288 to i32
  %290 = or disjoint i32 %287, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %337, label %292

292:                                              ; preds = %282
  %293 = zext nneg i32 %290 to i64
  br label %294

294:                                              ; preds = %334, %292
  %295 = phi i64 [ 0, %292 ], [ %335, %334 ]
  %296 = trunc i64 %295 to i32
  %297 = shl i32 %296, 4
  %298 = add i32 %297, %24
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i8, ptr %1, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !13
  %302 = icmp eq i8 %301, 104
  br i1 %302, label %303, label %334

303:                                              ; preds = %294
  %304 = getelementptr inbounds i8, ptr %300, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !13
  %306 = icmp eq i8 %305, 109
  br i1 %306, label %307, label %334

307:                                              ; preds = %303
  %308 = getelementptr inbounds i8, ptr %300, i64 2
  %309 = load i8, ptr %308, align 1, !tbaa !13
  %310 = icmp eq i8 %309, 116
  br i1 %310, label %311, label %334

311:                                              ; preds = %307
  %312 = getelementptr inbounds i8, ptr %300, i64 3
  %313 = load i8, ptr %312, align 1, !tbaa !13
  %314 = icmp eq i8 %313, 120
  br i1 %314, label %315, label %334

315:                                              ; preds = %311
  %316 = getelementptr inbounds i8, ptr %300, i64 8
  %317 = load i8, ptr %316, align 1, !tbaa !13
  %318 = zext i8 %317 to i32
  %319 = shl nuw i32 %318, 24
  %320 = getelementptr inbounds i8, ptr %300, i64 9
  %321 = load i8, ptr %320, align 1, !tbaa !13
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 16
  %324 = or disjoint i32 %323, %319
  %325 = getelementptr inbounds i8, ptr %300, i64 10
  %326 = load i8, ptr %325, align 1, !tbaa !13
  %327 = zext i8 %326 to i32
  %328 = shl nuw nsw i32 %327, 8
  %329 = or disjoint i32 %324, %328
  %330 = getelementptr inbounds i8, ptr %300, i64 11
  %331 = load i8, ptr %330, align 1, !tbaa !13
  %332 = zext i8 %331 to i32
  %333 = or disjoint i32 %329, %332
  br label %337

334:                                              ; preds = %311, %307, %303, %294
  %335 = add nuw nsw i64 %295, 1
  %336 = icmp eq i64 %335, %293
  br i1 %336, label %337, label %294, !llvm.loop !62

337:                                              ; preds = %334, %315, %282
  %338 = phi i32 [ %333, %315 ], [ 0, %282 ], [ 0, %334 ]
  %339 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 8
  store i32 %338, ptr %339, align 8, !tbaa !47
  %340 = load i8, ptr %16, align 1, !tbaa !13
  %341 = zext i8 %340 to i32
  %342 = shl nuw nsw i32 %341, 8
  %343 = load i8, ptr %20, align 1, !tbaa !13
  %344 = zext i8 %343 to i32
  %345 = or disjoint i32 %342, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %392, label %347

347:                                              ; preds = %337
  %348 = zext nneg i32 %345 to i64
  br label %349

349:                                              ; preds = %389, %347
  %350 = phi i64 [ 0, %347 ], [ %390, %389 ]
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %351, 4
  %353 = add i32 %352, %24
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %1, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !13
  %357 = icmp eq i8 %356, 107
  br i1 %357, label %358, label %389

358:                                              ; preds = %349
  %359 = getelementptr inbounds i8, ptr %355, i64 1
  %360 = load i8, ptr %359, align 1, !tbaa !13
  %361 = icmp eq i8 %360, 101
  br i1 %361, label %362, label %389

362:                                              ; preds = %358
  %363 = getelementptr inbounds i8, ptr %355, i64 2
  %364 = load i8, ptr %363, align 1, !tbaa !13
  %365 = icmp eq i8 %364, 114
  br i1 %365, label %366, label %389

366:                                              ; preds = %362
  %367 = getelementptr inbounds i8, ptr %355, i64 3
  %368 = load i8, ptr %367, align 1, !tbaa !13
  %369 = icmp eq i8 %368, 110
  br i1 %369, label %370, label %389

370:                                              ; preds = %366
  %371 = getelementptr inbounds i8, ptr %355, i64 8
  %372 = load i8, ptr %371, align 1, !tbaa !13
  %373 = zext i8 %372 to i32
  %374 = shl nuw i32 %373, 24
  %375 = getelementptr inbounds i8, ptr %355, i64 9
  %376 = load i8, ptr %375, align 1, !tbaa !13
  %377 = zext i8 %376 to i32
  %378 = shl nuw nsw i32 %377, 16
  %379 = or disjoint i32 %378, %374
  %380 = getelementptr inbounds i8, ptr %355, i64 10
  %381 = load i8, ptr %380, align 1, !tbaa !13
  %382 = zext i8 %381 to i32
  %383 = shl nuw nsw i32 %382, 8
  %384 = or disjoint i32 %379, %383
  %385 = getelementptr inbounds i8, ptr %355, i64 11
  %386 = load i8, ptr %385, align 1, !tbaa !13
  %387 = zext i8 %386 to i32
  %388 = or disjoint i32 %384, %387
  br label %392

389:                                              ; preds = %366, %362, %358, %349
  %390 = add nuw nsw i64 %350, 1
  %391 = icmp eq i64 %390, %348
  br i1 %391, label %392, label %349, !llvm.loop !62

392:                                              ; preds = %389, %370, %337
  %393 = phi i32 [ %388, %370 ], [ 0, %337 ], [ 0, %389 ]
  %394 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 9
  store i32 %393, ptr %394, align 4, !tbaa !48
  %395 = load i8, ptr %16, align 1, !tbaa !13
  %396 = zext i8 %395 to i32
  %397 = shl nuw nsw i32 %396, 8
  %398 = load i8, ptr %20, align 1, !tbaa !13
  %399 = zext i8 %398 to i32
  %400 = or disjoint i32 %397, %399
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %447, label %402

402:                                              ; preds = %392
  %403 = zext nneg i32 %400 to i64
  br label %404

404:                                              ; preds = %444, %402
  %405 = phi i64 [ 0, %402 ], [ %445, %444 ]
  %406 = trunc i64 %405 to i32
  %407 = shl i32 %406, 4
  %408 = add i32 %407, %24
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i8, ptr %1, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !13
  %412 = icmp eq i8 %411, 71
  br i1 %412, label %413, label %444

413:                                              ; preds = %404
  %414 = getelementptr inbounds i8, ptr %410, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !13
  %416 = icmp eq i8 %415, 80
  br i1 %416, label %417, label %444

417:                                              ; preds = %413
  %418 = getelementptr inbounds i8, ptr %410, i64 2
  %419 = load i8, ptr %418, align 1, !tbaa !13
  %420 = icmp eq i8 %419, 79
  br i1 %420, label %421, label %444

421:                                              ; preds = %417
  %422 = getelementptr inbounds i8, ptr %410, i64 3
  %423 = load i8, ptr %422, align 1, !tbaa !13
  %424 = icmp eq i8 %423, 83
  br i1 %424, label %425, label %444

425:                                              ; preds = %421
  %426 = getelementptr inbounds i8, ptr %410, i64 8
  %427 = load i8, ptr %426, align 1, !tbaa !13
  %428 = zext i8 %427 to i32
  %429 = shl nuw i32 %428, 24
  %430 = getelementptr inbounds i8, ptr %410, i64 9
  %431 = load i8, ptr %430, align 1, !tbaa !13
  %432 = zext i8 %431 to i32
  %433 = shl nuw nsw i32 %432, 16
  %434 = or disjoint i32 %433, %429
  %435 = getelementptr inbounds i8, ptr %410, i64 10
  %436 = load i8, ptr %435, align 1, !tbaa !13
  %437 = zext i8 %436 to i32
  %438 = shl nuw nsw i32 %437, 8
  %439 = or disjoint i32 %434, %438
  %440 = getelementptr inbounds i8, ptr %410, i64 11
  %441 = load i8, ptr %440, align 1, !tbaa !13
  %442 = zext i8 %441 to i32
  %443 = or disjoint i32 %439, %442
  br label %447

444:                                              ; preds = %421, %417, %413, %404
  %445 = add nuw nsw i64 %405, 1
  %446 = icmp eq i64 %445, %403
  br i1 %446, label %447, label %404, !llvm.loop !62

447:                                              ; preds = %444, %425, %392
  %448 = phi i32 [ %443, %425 ], [ 0, %392 ], [ 0, %444 ]
  %449 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 10
  store i32 %448, ptr %449, align 8, !tbaa !54
  %450 = icmp eq i32 %117, 0
  %451 = icmp eq i32 %173, 0
  %452 = select i1 %450, i1 true, i1 %451
  %453 = icmp eq i32 %283, 0
  %454 = select i1 %452, i1 true, i1 %453
  %455 = icmp eq i32 %338, 0
  %456 = select i1 %454, i1 true, i1 %455
  br i1 %456, label %762, label %457

457:                                              ; preds = %447
  %458 = icmp eq i32 %228, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %457
  %460 = icmp eq i32 %118, 0
  br i1 %460, label %762, label %615

461:                                              ; preds = %457
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 2, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  store i32 0, ptr %8, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  store i32 0, ptr %9, align 4, !tbaa !40
  %462 = load i8, ptr %16, align 1, !tbaa !13
  %463 = zext i8 %462 to i32
  %464 = shl nuw nsw i32 %463, 8
  %465 = load i8, ptr %20, align 1, !tbaa !13
  %466 = zext i8 %465 to i32
  %467 = or disjoint i32 %464, %466
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %614, label %469

469:                                              ; preds = %461
  %470 = zext nneg i32 %467 to i64
  br label %471

471:                                              ; preds = %492, %469
  %472 = phi i64 [ 0, %469 ], [ %493, %492 ]
  %473 = trunc i64 %472 to i32
  %474 = shl i32 %473, 4
  %475 = add i32 %474, %24
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %1, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !13
  %479 = icmp eq i8 %478, 67
  br i1 %479, label %480, label %492

480:                                              ; preds = %471
  %481 = getelementptr inbounds i8, ptr %477, i64 1
  %482 = load i8, ptr %481, align 1, !tbaa !13
  %483 = icmp eq i8 %482, 70
  br i1 %483, label %484, label %492

484:                                              ; preds = %480
  %485 = getelementptr inbounds i8, ptr %477, i64 2
  %486 = load i8, ptr %485, align 1, !tbaa !13
  %487 = icmp eq i8 %486, 70
  br i1 %487, label %488, label %492

488:                                              ; preds = %484
  %489 = getelementptr inbounds i8, ptr %477, i64 3
  %490 = load i8, ptr %489, align 1, !tbaa !13
  %491 = icmp eq i8 %490, 32
  br i1 %491, label %495, label %492

492:                                              ; preds = %488, %484, %480, %471
  %493 = add nuw nsw i64 %472, 1
  %494 = icmp eq i64 %493, %470
  br i1 %494, label %614, label %471, !llvm.loop !62

495:                                              ; preds = %488
  %496 = getelementptr inbounds i8, ptr %477, i64 8
  %497 = load i8, ptr %496, align 1, !tbaa !13
  %498 = zext i8 %497 to i32
  %499 = shl nuw i32 %498, 24
  %500 = getelementptr inbounds i8, ptr %477, i64 9
  %501 = load i8, ptr %500, align 1, !tbaa !13
  %502 = zext i8 %501 to i32
  %503 = shl nuw nsw i32 %502, 16
  %504 = or disjoint i32 %503, %499
  %505 = getelementptr inbounds i8, ptr %477, i64 10
  %506 = load i8, ptr %505, align 1, !tbaa !13
  %507 = zext i8 %506 to i32
  %508 = shl nuw nsw i32 %507, 8
  %509 = or disjoint i32 %504, %508
  %510 = getelementptr inbounds i8, ptr %477, i64 11
  %511 = load i8, ptr %510, align 1, !tbaa !13
  %512 = zext i8 %511 to i32
  %513 = or disjoint i32 %509, %512
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %614, label %515

515:                                              ; preds = %495
  %516 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 18
  %517 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 18, i32 1
  %518 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 19
  %519 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 19, i32 1
  %520 = zext i32 %513 to i64
  %521 = getelementptr inbounds i8, ptr %1, i64 %520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %516, i8 0, i64 32, i1 false)
  store ptr %521, ptr %12, align 8, !tbaa.struct !181
  store i64 2305843009213693952, ptr %13, align 8, !tbaa.struct !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !181
  %522 = getelementptr inbounds %struct.stbtt__buf, ptr %4, i64 0, i32 1
  %523 = load i32, ptr %522, align 8, !tbaa !183
  %524 = add nsw i32 %523, 2
  %525 = getelementptr inbounds %struct.stbtt__buf, ptr %4, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !184
  %527 = icmp slt i32 %526, %524
  %528 = icmp slt i32 %523, -2
  %529 = or i1 %528, %527
  br i1 %529, label %530, label %531

530:                                              ; preds = %515
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

531:                                              ; preds = %515
  %532 = icmp slt i32 %524, %526
  br i1 %532, label %533, label %539

533:                                              ; preds = %531
  %534 = load ptr, ptr %4, align 8, !tbaa !185
  %535 = zext nneg i32 %524 to i64
  %536 = getelementptr inbounds i8, ptr %534, i64 %535
  %537 = load i8, ptr %536, align 1, !tbaa !13
  %538 = zext i8 %537 to i32
  br label %539

539:                                              ; preds = %533, %531
  %540 = phi i32 [ %538, %533 ], [ 0, %531 ]
  %541 = icmp slt i32 %526, %540
  br i1 %541, label %542, label %543

542:                                              ; preds = %539
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

543:                                              ; preds = %539
  store i32 %540, ptr %522, align 8, !tbaa !183
  %544 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %545 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %546 = extractvalue { ptr, i64 } %545, 0
  %547 = extractvalue { ptr, i64 } %545, 1
  %548 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %546, i64 %547, i32 noundef 0)
  %549 = extractvalue { ptr, i64 } %548, 0
  %550 = extractvalue { ptr, i64 } %548, 1
  store ptr %549, ptr %5, align 8, !tbaa.struct !181
  %551 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 %550, ptr %551, align 8, !tbaa.struct !182
  %552 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %553 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 16
  %554 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %555 = extractvalue { ptr, i64 } %554, 0
  %556 = extractvalue { ptr, i64 } %554, 1
  store ptr %555, ptr %553, align 8, !tbaa.struct !181
  %557 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 16, i32 1
  store i64 %556, ptr %557, align 8, !tbaa.struct !182
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %5, i32 noundef 17, i32 noundef 1, ptr noundef nonnull %7)
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %5, i32 noundef 262, i32 noundef 1, ptr noundef nonnull %6)
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %5, i32 noundef 292, i32 noundef 1, ptr noundef nonnull %8)
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %5, i32 noundef 293, i32 noundef 1, ptr noundef nonnull %9)
  %558 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 17
  %559 = load ptr, ptr %4, align 8
  %560 = load i64, ptr %522, align 8
  %561 = load ptr, ptr %5, align 8
  %562 = load i64, ptr %551, align 8
  %563 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %559, i64 %560, ptr %561, i64 %562)
  %564 = extractvalue { ptr, i64 } %563, 0
  %565 = extractvalue { ptr, i64 } %563, 1
  store ptr %564, ptr %558, align 8, !tbaa.struct !181
  %566 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 17, i32 1
  store i64 %565, ptr %566, align 8, !tbaa.struct !182
  %567 = load i32, ptr %6, align 4, !tbaa !40
  %568 = icmp ne i32 %567, 2
  %569 = load i32, ptr %7, align 4
  %570 = icmp eq i32 %569, 0
  %571 = select i1 %568, i1 true, i1 %570
  %572 = lshr i64 %560, 32
  %573 = trunc i64 %572 to i32
  br i1 %571, label %614, label %574

574:                                              ; preds = %543
  %575 = load i32, ptr %8, align 4, !tbaa !40
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %602, label %577

577:                                              ; preds = %574
  %578 = load i32, ptr %9, align 4, !tbaa !40
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %614, label %580

580:                                              ; preds = %577
  %581 = icmp sgt i32 %575, %573
  %582 = icmp slt i32 %575, 0
  %583 = or i1 %582, %581
  br i1 %583, label %584, label %585

584:                                              ; preds = %580
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

585:                                              ; preds = %580
  store i32 %575, ptr %522, align 8, !tbaa !183
  %586 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %587 = extractvalue { ptr, i64 } %586, 0
  %588 = extractvalue { ptr, i64 } %586, 1
  store ptr %587, ptr %516, align 8, !tbaa.struct !181
  store i64 %588, ptr %517, align 8, !tbaa.struct !182
  %589 = load i32, ptr %525, align 4, !tbaa !184
  %590 = sub i32 %589, %578
  %591 = or i32 %590, %578
  %592 = icmp slt i32 %591, 0
  %593 = icmp slt i32 %589, %578
  %594 = or i1 %593, %592
  %595 = load ptr, ptr %4, align 8
  %596 = zext nneg i32 %578 to i64
  %597 = getelementptr inbounds i8, ptr %595, i64 %596
  %598 = zext nneg i32 %590 to i64
  %599 = shl nuw nsw i64 %598, 32
  %600 = select i1 %594, ptr null, ptr %597
  %601 = select i1 %594, i64 0, i64 %599
  store ptr %600, ptr %518, align 8, !tbaa.struct !181
  store i64 %601, ptr %519, align 8, !tbaa.struct !182
  br label %602

602:                                              ; preds = %585, %574
  %603 = phi i32 [ %589, %585 ], [ %573, %574 ]
  %604 = icmp slt i32 %603, %569
  %605 = icmp slt i32 %569, 0
  %606 = or i1 %605, %604
  br i1 %606, label %607, label %608

607:                                              ; preds = %602
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

608:                                              ; preds = %602
  store i32 %569, ptr %522, align 8, !tbaa !183
  %609 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 15
  %610 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %4)
  %611 = extractvalue { ptr, i64 } %610, 0
  %612 = extractvalue { ptr, i64 } %610, 1
  store ptr %611, ptr %609, align 8, !tbaa.struct !181
  %613 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 15, i32 1
  store i64 %612, ptr %613, align 8, !tbaa.struct !182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #34
  br label %615

614:                                              ; preds = %492, %577, %543, %495, %461
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #34
  br label %762

615:                                              ; preds = %608, %459
  %616 = load i8, ptr %16, align 1, !tbaa !13
  %617 = zext i8 %616 to i32
  %618 = shl nuw nsw i32 %617, 8
  %619 = load i8, ptr %20, align 1, !tbaa !13
  %620 = zext i8 %619 to i32
  %621 = or disjoint i32 %618, %620
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %680, label %623

623:                                              ; preds = %615
  %624 = zext nneg i32 %621 to i64
  br label %625

625:                                              ; preds = %646, %623
  %626 = phi i64 [ 0, %623 ], [ %647, %646 ]
  %627 = trunc i64 %626 to i32
  %628 = shl i32 %627, 4
  %629 = add i32 %628, %24
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds i8, ptr %1, i64 %630
  %632 = load i8, ptr %631, align 1, !tbaa !13
  %633 = icmp eq i8 %632, 109
  br i1 %633, label %634, label %646

634:                                              ; preds = %625
  %635 = getelementptr inbounds i8, ptr %631, i64 1
  %636 = load i8, ptr %635, align 1, !tbaa !13
  %637 = icmp eq i8 %636, 97
  br i1 %637, label %638, label %646

638:                                              ; preds = %634
  %639 = getelementptr inbounds i8, ptr %631, i64 2
  %640 = load i8, ptr %639, align 1, !tbaa !13
  %641 = icmp eq i8 %640, 120
  br i1 %641, label %642, label %646

642:                                              ; preds = %638
  %643 = getelementptr inbounds i8, ptr %631, i64 3
  %644 = load i8, ptr %643, align 1, !tbaa !13
  %645 = icmp eq i8 %644, 112
  br i1 %645, label %649, label %646

646:                                              ; preds = %642, %638, %634, %625
  %647 = add nuw nsw i64 %626, 1
  %648 = icmp eq i64 %647, %624
  br i1 %648, label %680, label %625, !llvm.loop !62

649:                                              ; preds = %642
  %650 = getelementptr inbounds i8, ptr %631, i64 8
  %651 = load i8, ptr %650, align 1, !tbaa !13
  %652 = zext i8 %651 to i32
  %653 = shl nuw i32 %652, 24
  %654 = getelementptr inbounds i8, ptr %631, i64 9
  %655 = load i8, ptr %654, align 1, !tbaa !13
  %656 = zext i8 %655 to i32
  %657 = shl nuw nsw i32 %656, 16
  %658 = or disjoint i32 %657, %653
  %659 = getelementptr inbounds i8, ptr %631, i64 10
  %660 = load i8, ptr %659, align 1, !tbaa !13
  %661 = zext i8 %660 to i32
  %662 = shl nuw nsw i32 %661, 8
  %663 = or disjoint i32 %658, %662
  %664 = getelementptr inbounds i8, ptr %631, i64 11
  %665 = load i8, ptr %664, align 1, !tbaa !13
  %666 = zext i8 %665 to i32
  %667 = or disjoint i32 %663, %666
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %680, label %669

669:                                              ; preds = %649
  %670 = zext i32 %667 to i64
  %671 = getelementptr inbounds i8, ptr %1, i64 %670
  %672 = getelementptr inbounds i8, ptr %671, i64 4
  %673 = load i8, ptr %672, align 1, !tbaa !13
  %674 = zext i8 %673 to i32
  %675 = shl nuw nsw i32 %674, 8
  %676 = getelementptr inbounds i8, ptr %671, i64 5
  %677 = load i8, ptr %676, align 1, !tbaa !13
  %678 = zext i8 %677 to i32
  %679 = or disjoint i32 %675, %678
  br label %680

680:                                              ; preds = %646, %669, %649, %615
  %681 = phi i32 [ %679, %669 ], [ 65535, %615 ], [ 65535, %649 ], [ 65535, %646 ]
  %682 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 3
  store i32 %681, ptr %682, align 4, !tbaa !41
  %683 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 11
  store i32 -1, ptr %683, align 4, !tbaa !64
  %684 = zext i32 %117 to i64
  %685 = getelementptr inbounds i8, ptr %1, i64 %684
  %686 = getelementptr inbounds i8, ptr %685, i64 2
  %687 = load i8, ptr %686, align 1, !tbaa !13
  %688 = zext i8 %687 to i32
  %689 = shl nuw nsw i32 %688, 8
  %690 = getelementptr inbounds i8, ptr %685, i64 3
  %691 = load i8, ptr %690, align 1, !tbaa !13
  %692 = zext i8 %691 to i32
  %693 = or disjoint i32 %689, %692
  %694 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 12
  store i32 0, ptr %694, align 8, !tbaa !12
  %695 = icmp eq i32 %693, 0
  br i1 %695, label %762, label %696

696:                                              ; preds = %680
  %697 = add i32 %117, 4
  %698 = zext nneg i32 %693 to i64
  br label %699

699:                                              ; preds = %743, %696
  %700 = phi i32 [ 0, %696 ], [ %744, %743 ]
  %701 = phi i64 [ 0, %696 ], [ %745, %743 ]
  %702 = trunc i64 %701 to i32
  %703 = shl i32 %702, 3
  %704 = add i32 %697, %703
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds i8, ptr %1, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !13
  %708 = zext i8 %707 to i16
  %709 = shl nuw i16 %708, 8
  %710 = getelementptr inbounds i8, ptr %706, i64 1
  %711 = load i8, ptr %710, align 1, !tbaa !13
  %712 = zext i8 %711 to i16
  %713 = or disjoint i16 %709, %712
  switch i16 %713, label %743 [
    i16 3, label %714
    i16 0, label %723
  ]

714:                                              ; preds = %699
  %715 = getelementptr inbounds i8, ptr %706, i64 2
  %716 = load i8, ptr %715, align 1, !tbaa !13
  %717 = zext i8 %716 to i16
  %718 = shl nuw i16 %717, 8
  %719 = getelementptr inbounds i8, ptr %706, i64 3
  %720 = load i8, ptr %719, align 1, !tbaa !13
  %721 = zext i8 %720 to i16
  %722 = or disjoint i16 %718, %721
  switch i16 %722, label %743 [
    i16 1, label %723
    i16 10, label %723
  ]

723:                                              ; preds = %699, %714, %714
  %724 = getelementptr inbounds i8, ptr %706, i64 4
  %725 = load i8, ptr %724, align 1, !tbaa !13
  %726 = zext i8 %725 to i32
  %727 = shl nuw i32 %726, 24
  %728 = getelementptr inbounds i8, ptr %706, i64 5
  %729 = load i8, ptr %728, align 1, !tbaa !13
  %730 = zext i8 %729 to i32
  %731 = shl nuw nsw i32 %730, 16
  %732 = or disjoint i32 %731, %727
  %733 = getelementptr inbounds i8, ptr %706, i64 6
  %734 = load i8, ptr %733, align 1, !tbaa !13
  %735 = zext i8 %734 to i32
  %736 = shl nuw nsw i32 %735, 8
  %737 = or disjoint i32 %732, %736
  %738 = getelementptr inbounds i8, ptr %706, i64 7
  %739 = load i8, ptr %738, align 1, !tbaa !13
  %740 = zext i8 %739 to i32
  %741 = or disjoint i32 %737, %740
  %742 = add i32 %741, %117
  store i32 %742, ptr %694, align 8, !tbaa !12
  br label %743

743:                                              ; preds = %723, %714, %699
  %744 = phi i32 [ %700, %714 ], [ %700, %699 ], [ %742, %723 ]
  %745 = add nuw nsw i64 %701, 1
  %746 = icmp eq i64 %745, %698
  br i1 %746, label %747, label %699, !llvm.loop !186

747:                                              ; preds = %743
  %748 = icmp eq i32 %744, 0
  br i1 %748, label %762, label %749

749:                                              ; preds = %747
  %750 = load i32, ptr %174, align 4, !tbaa !63
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i8, ptr %1, i64 %751
  %753 = getelementptr inbounds i8, ptr %752, i64 50
  %754 = load i8, ptr %753, align 1, !tbaa !13
  %755 = zext i8 %754 to i32
  %756 = shl nuw nsw i32 %755, 8
  %757 = getelementptr inbounds i8, ptr %752, i64 51
  %758 = load i8, ptr %757, align 1, !tbaa !13
  %759 = zext i8 %758 to i32
  %760 = or disjoint i32 %756, %759
  %761 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 13
  store i32 %760, ptr %761, align 4, !tbaa !42
  br label %762

762:                                              ; preds = %447, %459, %614, %680, %747, %749
  %763 = phi i32 [ 1, %749 ], [ 0, %614 ], [ 0, %447 ], [ 0, %459 ], [ 0, %747 ], [ 0, %680 ]
  ret i32 %763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @stbtt_GetFontOffsetForIndex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 {
  %3 = tail call fastcc i32 @stbtt__isfont(ptr noundef %0), !range !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = icmp ne i32 %1, 0
  %7 = sext i1 %6 to i32
  br label %84

8:                                                ; preds = %2
  %9 = load i8, ptr %0, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %11, label %84

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 116
  br i1 %14, label %15, label %84

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 99
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = icmp eq i8 %21, 102
  br i1 %22, label %23, label %84

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = getelementptr inbounds i8, ptr %0, i64 5
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %31, %27
  %33 = getelementptr inbounds i8, ptr %0, i64 6
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or disjoint i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %0, i64 7
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  switch i32 %41, label %84 [
    i32 65536, label %42
    i32 131072, label %42
  ]

42:                                               ; preds = %23, %23
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 24
  %47 = getelementptr inbounds i8, ptr %0, i64 9
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or disjoint i32 %50, %46
  %52 = getelementptr inbounds i8, ptr %0, i64 10
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or disjoint i32 %51, %55
  %57 = getelementptr inbounds i8, ptr %0, i64 11
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i32
  %60 = or disjoint i32 %56, %59
  %61 = icmp sgt i32 %60, %1
  br i1 %61, label %62, label %84

62:                                               ; preds = %42
  %63 = getelementptr inbounds i8, ptr %0, i64 12
  %64 = shl nsw i32 %1, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 %68, 24
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or disjoint i32 %73, %69
  %75 = getelementptr inbounds i8, ptr %66, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or disjoint i32 %74, %78
  %80 = getelementptr inbounds i8, ptr %66, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = or disjoint i32 %79, %82
  br label %84

84:                                               ; preds = %5, %8, %11, %15, %19, %23, %42, %62
  %85 = phi i32 [ %7, %5 ], [ %83, %62 ], [ -1, %42 ], [ -1, %19 ], [ -1, %15 ], [ -1, %11 ], [ -1, %8 ], [ -1, %23 ]
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_PackFontRange(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.stbtt_pack_range, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #34
  %9 = getelementptr inbounds %struct.stbtt_pack_range, ptr %8, i64 0, i32 1
  store i32 %4, ptr %9, align 4, !tbaa !139
  %10 = getelementptr inbounds %struct.stbtt_pack_range, ptr %8, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct.stbtt_pack_range, ptr %8, i64 0, i32 3
  store i32 %5, ptr %11, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.stbtt_pack_range, ptr %8, i64 0, i32 4
  store ptr %6, ptr %12, align 8, !tbaa !160
  store float %3, ptr %8, align 8, !tbaa !133
  %13 = call i32 @stbtt_PackFontRanges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8, i32 noundef 1), !range !45
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #34
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @stbtt_GetScaledFontVMetrics(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.stbtt_fontinfo, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #34
  %8 = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %0, i32 noundef %1)
  %9 = call i32 @stbtt_InitFont(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %8), !range !45
  %10 = fcmp ogt float %2, 0.000000e+00
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %7, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = zext i8 %19 to i16
  %21 = shl nuw i16 %20, 8
  %22 = getelementptr inbounds i8, ptr %17, i64 5
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i16
  %25 = or disjoint i16 %21, %24
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds i8, ptr %17, i64 6
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = getelementptr inbounds i8, ptr %17, i64 7
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = zext i8 %32 to i16
  %34 = or disjoint i16 %30, %33
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %26, %35
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %2, %37
  br label %77

39:                                               ; preds = %6
  %40 = fneg float %2
  %41 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %7, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %7, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !63
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 18
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = zext i8 %48 to i16
  %50 = shl nuw i16 %49, 8
  %51 = getelementptr inbounds i8, ptr %46, i64 19
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i16
  %54 = or disjoint i16 %50, %53
  %55 = uitofp i16 %54 to float
  %56 = fdiv float %40, %55
  %57 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %7, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !46
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %42, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  %62 = load i8, ptr %61, align 1, !tbaa !13
  %63 = getelementptr inbounds i8, ptr %60, i64 5
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = getelementptr inbounds i8, ptr %60, i64 6
  %66 = load i8, ptr %65, align 1, !tbaa !13
  %67 = getelementptr inbounds i8, ptr %60, i64 7
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = zext i8 %62 to i16
  %70 = shl nuw i16 %69, 8
  %71 = zext i8 %64 to i16
  %72 = or disjoint i16 %70, %71
  %73 = zext i8 %66 to i16
  %74 = shl nuw i16 %73, 8
  %75 = zext i8 %68 to i16
  %76 = or disjoint i16 %74, %75
  br label %77

77:                                               ; preds = %39, %11
  %78 = phi i16 [ %76, %39 ], [ %34, %11 ]
  %79 = phi i16 [ %72, %39 ], [ %25, %11 ]
  %80 = phi i64 [ %59, %39 ], [ %16, %11 ]
  %81 = phi ptr [ %42, %39 ], [ %13, %11 ]
  %82 = phi float [ %56, %39 ], [ %38, %11 ]
  %83 = getelementptr inbounds i8, ptr %81, i64 %80
  %84 = getelementptr inbounds i8, ptr %83, i64 8
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i16
  %87 = shl nuw i16 %86, 8
  %88 = getelementptr inbounds i8, ptr %83, i64 9
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = zext i8 %89 to i16
  %91 = or disjoint i16 %87, %90
  %92 = sitofp i16 %79 to float
  %93 = fmul float %82, %92
  store float %93, ptr %3, align 4, !tbaa !68
  %94 = sitofp i16 %78 to float
  %95 = fmul float %82, %94
  store float %95, ptr %4, align 4, !tbaa !68
  %96 = sitofp i16 %91 to float
  %97 = fmul float %82, %96
  store float %97, ptr %5, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @stbtt_GetPackedQuad(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6, i32 noundef %7) local_unnamed_addr #11 {
  %9 = sext i32 %3 to i64
  %10 = icmp eq i32 %7, 0
  %11 = load float, ptr %4, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 4
  %13 = load float, ptr %12, align 4, !tbaa !187
  %14 = fadd float %11, %13
  br i1 %10, label %37, label %15

15:                                               ; preds = %8
  %16 = load float, ptr %5, align 4, !tbaa !68
  %17 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !188
  %19 = fadd float %16, %18
  %20 = insertelement <2 x float> poison, float %14, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1
  %22 = fadd <2 x float> %21, <float 5.000000e-01, float 5.000000e-01>
  %23 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %22)
  %24 = fptosi <2 x float> %23 to <2 x i32>
  %25 = sitofp <2 x i32> %24 to <2 x float>
  store <2 x float> %25, ptr %6, align 4, !tbaa !68
  %26 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 7
  %27 = load float, ptr %26, align 4, !tbaa !189
  %28 = extractelement <2 x float> %25, i64 0
  %29 = fadd float %27, %28
  %30 = fsub float %29, %13
  %31 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 4
  store float %30, ptr %31, align 4, !tbaa !190
  %32 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 8
  %33 = load float, ptr %32, align 4, !tbaa !192
  %34 = extractelement <2 x float> %25, i64 1
  %35 = fadd float %33, %34
  %36 = fsub float %35, %18
  br label %52

37:                                               ; preds = %8
  store float %14, ptr %6, align 4, !tbaa !193
  %38 = load float, ptr %5, align 4, !tbaa !68
  %39 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 5
  %40 = load float, ptr %39, align 4, !tbaa !188
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 1
  store float %41, ptr %42, align 4, !tbaa !194
  %43 = load float, ptr %4, align 4, !tbaa !68
  %44 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 7
  %45 = load float, ptr %44, align 4, !tbaa !189
  %46 = fadd float %43, %45
  %47 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 4
  store float %46, ptr %47, align 4, !tbaa !190
  %48 = load float, ptr %5, align 4, !tbaa !68
  %49 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 8
  %50 = load float, ptr %49, align 4, !tbaa !192
  %51 = fadd float %48, %50
  br label %52

52:                                               ; preds = %37, %15
  %53 = phi float [ %51, %37 ], [ %36, %15 ]
  %54 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 5
  store float %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9
  %56 = insertelement <2 x i32> poison, i32 %1, i64 0
  %57 = insertelement <2 x i32> %56, i32 %2, i64 1
  %58 = sitofp <2 x i32> %57 to <2 x float>
  %59 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 2
  %60 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %58
  %61 = load <2 x i16>, ptr %55, align 4, !tbaa !33
  %62 = uitofp <2 x i16> %61 to <2 x float>
  %63 = fmul <2 x float> %60, %62
  store <2 x float> %63, ptr %59, align 4, !tbaa !68
  %64 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 2
  %65 = getelementptr inbounds %struct.stbtt_aligned_quad, ptr %6, i64 0, i32 6
  %66 = load <2 x i16>, ptr %64, align 4, !tbaa !33
  %67 = uitofp <2 x i16> %66 to <2 x float>
  %68 = fmul <2 x float> %60, %67
  store <2 x float> %68, ptr %65, align 4, !tbaa !68
  %69 = getelementptr inbounds %struct.stbtt_packedchar, ptr %0, i64 %9, i32 6
  %70 = load float, ptr %69, align 4, !tbaa !163
  %71 = load float, ptr %4, align 4, !tbaa !68
  %72 = fadd float %70, %71
  store float %72, ptr %4, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @stbtt_GetGlyphSDF(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = fcmp oeq float %1, 0.000000e+00
  br i1 %16, label %772, label %17

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  store i32 0, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  store i32 0, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  %18 = call i32 @stbtt_GetGlyphBox(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14), !range !45
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  br label %772

21:                                               ; preds = %17
  %22 = load i32, ptr %11, align 4, !tbaa !40
  %23 = load i32, ptr %14, align 4, !tbaa !40
  %24 = sub nsw i32 0, %23
  %25 = load i32, ptr %13, align 4, !tbaa !40
  %26 = load i32, ptr %12, align 4, !tbaa !40
  %27 = sub nsw i32 0, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  %28 = insertelement <2 x i32> poison, i32 %24, i64 0
  %29 = insertelement <2 x i32> %28, i32 %22, i64 1
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = insertelement <2 x float> poison, float %1, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %32, <2 x float> zeroinitializer)
  %34 = call <2 x float> @llvm.floor.v2f32(<2 x float> %33)
  %35 = fptosi <2 x float> %34 to <2 x i32>
  %36 = insertelement <2 x i32> poison, i32 %27, i64 0
  %37 = insertelement <2 x i32> %36, i32 %25, i64 1
  %38 = sitofp <2 x i32> %37 to <2 x float>
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %32, <2 x float> zeroinitializer)
  %40 = call <2 x float> @llvm.ceil.v2f32(<2 x float> %39)
  %41 = fptosi <2 x float> %40 to <2 x i32>
  %42 = icmp eq <2 x i32> %35, %41
  %43 = extractelement <2 x i1> %42, i64 0
  %44 = extractelement <2 x i1> %42, i64 1
  %45 = select i1 %44, i1 true, i1 %43
  br i1 %45, label %772, label %46

46:                                               ; preds = %21
  %47 = extractelement <2 x i32> %35, i64 1
  %48 = sub i32 %47, %3
  %49 = extractelement <2 x i32> %35, i64 0
  %50 = sub nsw i32 %49, %3
  %51 = extractelement <2 x i32> %41, i64 1
  %52 = add nsw i32 %51, %3
  %53 = extractelement <2 x i32> %41, i64 0
  %54 = add nsw i32 %53, %3
  %55 = sub nsw i32 %52, %48
  %56 = sub nsw i32 %54, %50
  %57 = icmp eq ptr %6, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 %55, ptr %6, align 4, !tbaa !40
  br label %59

59:                                               ; preds = %58, %46
  %60 = icmp eq ptr %7, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  store i32 %56, ptr %7, align 4, !tbaa !40
  br label %62

62:                                               ; preds = %61, %59
  %63 = icmp eq ptr %8, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  store i32 %48, ptr %8, align 4, !tbaa !40
  br label %65

65:                                               ; preds = %64, %62
  %66 = icmp eq ptr %9, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  store i32 %50, ptr %9, align 4, !tbaa !40
  br label %68

68:                                               ; preds = %67, %65
  %69 = fneg float %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #34
  %70 = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %15)
  %71 = mul nsw i32 %56, %55
  %72 = sext i32 %71 to i64
  %73 = call noalias ptr @malloc(i64 noundef %72) #33
  %74 = sext i32 %70 to i64
  %75 = shl nsw i64 %74, 2
  %76 = call noalias ptr @malloc(i64 noundef %75) #33
  %77 = icmp sgt i32 %70, 0
  %78 = load ptr, ptr %15, align 8
  br i1 %77, label %79, label %82

79:                                               ; preds = %68
  %80 = add nsw i32 %70, -1
  %81 = zext nneg i32 %70 to i64
  br label %91

82:                                               ; preds = %160, %68
  %83 = icmp slt i32 %50, %54
  br i1 %83, label %84, label %771

84:                                               ; preds = %82
  %85 = icmp slt i32 %48, %52
  %86 = zext i32 %70 to i64
  %87 = uitofp i8 %4 to float
  %88 = sext i32 %48 to i64
  %89 = sext i32 %52 to i64
  %90 = insertelement <2 x float> %31, float %69, i64 1
  br label %166

91:                                               ; preds = %79, %160
  %92 = phi i64 [ 0, %79 ], [ %163, %160 ]
  %93 = phi i32 [ %80, %79 ], [ %164, %160 ]
  %94 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92
  %95 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92, i32 6
  %96 = load i8, ptr %95, align 2, !tbaa !19
  switch i8 %96, label %160 [
    i8 2, label %97
    i8 3, label %126
  ]

97:                                               ; preds = %91
  %98 = load i16, ptr %94, align 2, !tbaa !23
  %99 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92, i32 1
  %100 = load i16, ptr %99, align 2, !tbaa !25
  %101 = sext i32 %93 to i64
  %102 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !23
  %104 = insertelement <2 x i16> poison, i16 %103, i64 0
  %105 = insertelement <2 x i16> %104, i16 %98, i64 1
  %106 = sitofp <2 x i16> %105 to <2 x float>
  %107 = fmul <2 x float> %32, %106
  %108 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %101, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !25
  %110 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %111 = fsub <2 x float> %107, %110
  %112 = extractelement <2 x float> %111, i64 0
  %113 = insertelement <2 x i16> poison, i16 %100, i64 0
  %114 = insertelement <2 x i16> %113, i16 %109, i64 1
  %115 = sitofp <2 x i16> %114 to <2 x float>
  %116 = fmul <2 x float> %32, %115
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %118 = fsub <2 x float> %116, %117
  %119 = fmul <2 x float> %118, %118
  %120 = extractelement <2 x float> %119, i64 0
  %121 = call float @llvm.fmuladd.f32(float %112, float %112, float %120)
  %122 = call float @llvm.sqrt.f32(float %121)
  %123 = fcmp olt float %122, 0x3F50000000000000
  %124 = fdiv float 1.000000e+00, %122
  %125 = select i1 %123, float 0.000000e+00, float %124
  br label %160

126:                                              ; preds = %91
  %127 = sext i32 %93 to i64
  %128 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !23
  %130 = sitofp i16 %129 to float
  %131 = fmul float %130, %1
  %132 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %127, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !25
  %134 = sitofp i16 %133 to float
  %135 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92, i32 2
  %136 = load i16, ptr %135, align 2, !tbaa !27
  %137 = sitofp i16 %136 to float
  %138 = fmul float %137, %1
  %139 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !28
  %141 = sitofp i16 %140 to float
  %142 = fmul float %69, %141
  %143 = load i16, ptr %94, align 2, !tbaa !23
  %144 = sitofp i16 %143 to float
  %145 = fmul float %144, %1
  %146 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %92, i32 1
  %147 = load i16, ptr %146, align 2, !tbaa !25
  %148 = sitofp i16 %147 to float
  %149 = fmul float %69, %148
  %150 = call float @llvm.fmuladd.f32(float %138, float -2.000000e+00, float %145)
  %151 = fadd float %131, %150
  %152 = call float @llvm.fmuladd.f32(float %142, float -2.000000e+00, float %149)
  %153 = fmul float %134, %1
  %154 = fsub float %152, %153
  %155 = fmul float %154, %154
  %156 = call float @llvm.fmuladd.f32(float %151, float %151, float %155)
  %157 = fcmp ult float %156, 0x3EB0000000000000
  br i1 %157, label %160, label %158

158:                                              ; preds = %126
  %159 = fdiv float 1.000000e+00, %156
  br label %160

160:                                              ; preds = %91, %126, %158, %97
  %161 = phi float [ %159, %158 ], [ %125, %97 ], [ 0.000000e+00, %126 ], [ 0.000000e+00, %91 ]
  %162 = getelementptr inbounds float, ptr %76, i64 %92
  store float %161, ptr %162, align 4, !tbaa !68
  %163 = add nuw nsw i64 %92, 1
  %164 = trunc i64 %92 to i32
  %165 = icmp eq i64 %163, %81
  br i1 %165, label %82, label %91, !llvm.loop !195

166:                                              ; preds = %84, %768
  %167 = phi i32 [ %50, %84 ], [ %769, %768 ]
  br i1 %85, label %168, label %768

168:                                              ; preds = %166
  %169 = sitofp i32 %167 to float
  %170 = fadd float %169, 5.000000e-01
  %171 = fdiv float %170, %69
  %172 = fpext float %171 to double
  %173 = fadd float %171, 0xBF847AE140000000
  %174 = fadd float %171, 0x3F847AE140000000
  %175 = sub nsw i32 %167, %50
  %176 = mul nsw i32 %175, %55
  %177 = sub i32 %176, %48
  br label %178

178:                                              ; preds = %168, %760
  %179 = phi i64 [ %88, %168 ], [ %766, %760 ]
  %180 = trunc i64 %179 to i32
  %181 = sitofp i32 %180 to float
  %182 = fadd float %181, 5.000000e-01
  %183 = fdiv float %182, %1
  %184 = call double @fmod(double noundef %172, double noundef 1.000000e+00) #34
  %185 = fptrunc double %184 to float
  %186 = fcmp olt float %185, 0x3F847AE140000000
  br i1 %186, label %190, label %187

187:                                              ; preds = %178
  %188 = fcmp ogt float %185, 0x3FEFAE1480000000
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %178, %189, %187
  %191 = phi float [ %173, %189 ], [ %171, %187 ], [ %174, %178 ]
  br i1 %77, label %192, label %753

192:                                              ; preds = %190
  %193 = fmul float %183, 0.000000e+00
  %194 = fmul float %191, 0.000000e+00
  %195 = fadd float %183, %194
  %196 = fsub float %193, %191
  br label %197

197:                                              ; preds = %406, %192
  %198 = phi i64 [ 0, %192 ], [ %413, %406 ]
  %199 = phi i32 [ 0, %192 ], [ %412, %406 ]
  %200 = phi float [ undef, %192 ], [ %410, %406 ]
  %201 = phi float [ undef, %192 ], [ %409, %406 ]
  %202 = phi float [ undef, %192 ], [ %408, %406 ]
  %203 = phi float [ undef, %192 ], [ %407, %406 ]
  %204 = getelementptr %struct.stbtt_vertex, ptr %78, i64 %198
  %205 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %198, i32 6
  %206 = load i8, ptr %205, align 2, !tbaa !19
  switch i8 %206, label %406 [
    i8 2, label %207
    i8 3, label %245
  ]

207:                                              ; preds = %197
  %208 = getelementptr %struct.stbtt_vertex, ptr %204, i64 -1
  %209 = load i16, ptr %208, align 2, !tbaa !23
  %210 = sext i16 %209 to i32
  %211 = getelementptr %struct.stbtt_vertex, ptr %204, i64 -1, i32 1
  %212 = load i16, ptr %211, align 2, !tbaa !25
  %213 = sext i16 %212 to i32
  %214 = load i16, ptr %204, align 2, !tbaa !23
  %215 = sext i16 %214 to i32
  %216 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %198, i32 1
  %217 = load i16, ptr %216, align 2, !tbaa !25
  %218 = sext i16 %217 to i32
  %219 = icmp slt i16 %212, %217
  %220 = call i16 @llvm.smin.i16(i16 %212, i16 %217)
  %221 = sitofp i16 %220 to float
  %222 = fcmp ogt float %191, %221
  br i1 %222, label %223, label %406

223:                                              ; preds = %207
  %224 = call i16 @llvm.smax.i16(i16 %212, i16 %217)
  %225 = sitofp i16 %224 to float
  %226 = fcmp olt float %191, %225
  br i1 %226, label %227, label %406

227:                                              ; preds = %223
  %228 = call i32 @llvm.smin.i32(i32 %210, i32 %215)
  %229 = sitofp i32 %228 to float
  %230 = fcmp ogt float %183, %229
  br i1 %230, label %231, label %406

231:                                              ; preds = %227
  %232 = sitofp i16 %212 to float
  %233 = fsub float %191, %232
  %234 = sub nsw i32 %218, %213
  %235 = sitofp i32 %234 to float
  %236 = fdiv float %233, %235
  %237 = sub nsw i32 %215, %210
  %238 = sitofp i32 %237 to float
  %239 = sitofp i16 %209 to float
  %240 = call float @llvm.fmuladd.f32(float %236, float %238, float %239)
  %241 = fcmp olt float %240, %183
  %242 = select i1 %219, i32 1, i32 -1
  %243 = select i1 %241, i32 %242, i32 0
  %244 = add nsw i32 %243, %199
  br label %406

245:                                              ; preds = %197
  %246 = getelementptr %struct.stbtt_vertex, ptr %204, i64 -1
  %247 = load i16, ptr %246, align 2, !tbaa !23
  %248 = getelementptr %struct.stbtt_vertex, ptr %204, i64 -1, i32 1
  %249 = load i16, ptr %248, align 2, !tbaa !25
  %250 = sext i16 %249 to i32
  %251 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %198, i32 2
  %252 = load i16, ptr %251, align 2, !tbaa !27
  %253 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %198, i32 3
  %254 = load i16, ptr %253, align 2, !tbaa !28
  %255 = load i16, ptr %204, align 2, !tbaa !23
  %256 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %198, i32 1
  %257 = load i16, ptr %256, align 2, !tbaa !25
  %258 = call i16 @llvm.smin.i16(i16 %252, i16 %255)
  %259 = call i16 @llvm.smin.i16(i16 %258, i16 %247)
  %260 = call i16 @llvm.smin.i16(i16 %254, i16 %257)
  %261 = call i16 @llvm.smin.i16(i16 %249, i16 %260)
  %262 = call i16 @llvm.smax.i16(i16 %254, i16 %257)
  %263 = call i16 @llvm.smax.i16(i16 %249, i16 %262)
  %264 = sitofp i16 %261 to float
  %265 = fcmp ogt float %191, %264
  %266 = sitofp i16 %263 to float
  %267 = fcmp olt float %191, %266
  %268 = select i1 %265, i1 %267, i1 false
  %269 = sitofp i16 %259 to float
  %270 = fcmp ogt float %183, %269
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %406

272:                                              ; preds = %245
  %273 = insertelement <2 x i16> poison, i16 %255, i64 0
  %274 = insertelement <2 x i16> %273, i16 %247, i64 1
  %275 = sitofp <2 x i16> %274 to <2 x float>
  %276 = insertelement <2 x i16> poison, i16 %257, i64 0
  %277 = insertelement <2 x i16> %276, i16 %249, i64 1
  %278 = sitofp <2 x i16> %277 to <2 x float>
  %279 = sitofp i16 %252 to float
  %280 = sitofp i16 %254 to float
  %281 = extractelement <2 x float> %275, i64 1
  %282 = fcmp une float %281, %279
  %283 = extractelement <2 x float> %278, i64 1
  %284 = fcmp une float %283, %280
  %285 = select i1 %282, i1 true, i1 %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %272
  %287 = extractelement <2 x float> %275, i64 0
  %288 = fcmp une float %287, %279
  %289 = extractelement <2 x float> %278, i64 0
  %290 = fcmp une float %289, %280
  %291 = select i1 %288, i1 true, i1 %290
  br i1 %291, label %320, label %292

292:                                              ; preds = %286, %272
  %293 = sext i16 %247 to i32
  %294 = sext i16 %255 to i32
  %295 = sext i16 %257 to i32
  %296 = icmp slt i16 %249, %257
  %297 = call i16 @llvm.smin.i16(i16 %249, i16 %257)
  %298 = sitofp i16 %297 to float
  %299 = fcmp ogt float %191, %298
  br i1 %299, label %300, label %406

300:                                              ; preds = %292
  %301 = call i16 @llvm.smax.i16(i16 %249, i16 %257)
  %302 = sitofp i16 %301 to float
  %303 = fcmp olt float %191, %302
  br i1 %303, label %304, label %406

304:                                              ; preds = %300
  %305 = call i32 @llvm.smin.i32(i32 %293, i32 %294)
  %306 = sitofp i32 %305 to float
  %307 = fcmp ogt float %183, %306
  br i1 %307, label %308, label %406

308:                                              ; preds = %304
  %309 = fsub float %191, %283
  %310 = sub nsw i32 %295, %250
  %311 = sitofp i32 %310 to float
  %312 = fdiv float %309, %311
  %313 = sub nsw i32 %294, %293
  %314 = sitofp i32 %313 to float
  %315 = call float @llvm.fmuladd.f32(float %312, float %314, float %281)
  %316 = fcmp olt float %315, %183
  %317 = select i1 %296, i32 1, i32 -1
  %318 = select i1 %316, i32 %317, i32 0
  %319 = add nsw i32 %318, %199
  br label %406

320:                                              ; preds = %286
  %321 = fmul float %281, 0.000000e+00
  %322 = fsub float %283, %321
  %323 = fmul float %279, 0.000000e+00
  %324 = fsub float %280, %323
  %325 = fmul float %287, 0.000000e+00
  %326 = fsub float %289, %325
  %327 = call float @llvm.fmuladd.f32(float %324, float -2.000000e+00, float %322)
  %328 = fadd float %327, %326
  %329 = fsub float %324, %322
  %330 = fadd float %196, %322
  %331 = fcmp une float %328, 0.000000e+00
  br i1 %331, label %332, label %354

332:                                              ; preds = %320
  %333 = fneg float %328
  %334 = fmul float %330, %333
  %335 = call float @llvm.fmuladd.f32(float %329, float %329, float %334)
  %336 = fcmp ogt float %335, 0.000000e+00
  br i1 %336, label %337, label %387

337:                                              ; preds = %332
  %338 = fdiv float -1.000000e+00, %328
  %339 = call float @sqrtf(float noundef %335) #19
  %340 = fadd float %329, %339
  %341 = fmul float %338, %340
  %342 = fsub float %329, %339
  %343 = fmul float %338, %342
  %344 = fcmp oge float %341, 0.000000e+00
  %345 = fcmp ole float %341, 1.000000e+00
  %346 = and i1 %344, %345
  %347 = fcmp ule float %339, 0.000000e+00
  %348 = fcmp ult float %343, 0.000000e+00
  %349 = select i1 %347, i1 true, i1 %348
  %350 = fcmp ugt float %343, 1.000000e+00
  %351 = select i1 %349, i1 true, i1 %350
  br i1 %351, label %360, label %352

352:                                              ; preds = %337
  %353 = select i1 %346, float %341, float %343
  br label %361

354:                                              ; preds = %320
  %355 = fmul float %329, -2.000000e+00
  %356 = fdiv float %330, %355
  %357 = fcmp ult float %356, 0.000000e+00
  %358 = fcmp ugt float %356, 1.000000e+00
  %359 = or i1 %357, %358
  br i1 %359, label %387, label %361

360:                                              ; preds = %337
  br i1 %346, label %361, label %387

361:                                              ; preds = %360, %354, %352
  %362 = phi float [ %341, %360 ], [ %356, %354 ], [ %353, %352 ]
  %363 = phi float [ %343, %360 ], [ 0.000000e+00, %354 ], [ %343, %352 ]
  %364 = phi i1 [ false, %360 ], [ false, %354 ], [ %346, %352 ]
  %365 = fmul <2 x float> %278, zeroinitializer
  %366 = fmul float %280, 0.000000e+00
  %367 = fadd float %366, %279
  %368 = fadd <2 x float> %365, %275
  %369 = extractelement <2 x float> %368, i64 1
  %370 = fsub float %367, %369
  %371 = extractelement <2 x float> %368, i64 0
  %372 = fsub float %371, %369
  %373 = fsub float %369, %195
  %374 = call float @llvm.fmuladd.f32(float %362, float -2.000000e+00, float 2.000000e+00)
  %375 = fmul float %362, %374
  %376 = call float @llvm.fmuladd.f32(float %375, float %370, float %373)
  %377 = fmul float %362, %362
  %378 = call float @llvm.fmuladd.f32(float %377, float %372, float %376)
  %379 = call float @llvm.fmuladd.f32(float %328, float %362, float %329)
  br i1 %364, label %380, label %387

380:                                              ; preds = %361
  %381 = call float @llvm.fmuladd.f32(float %363, float -2.000000e+00, float 2.000000e+00)
  %382 = fmul float %363, %381
  %383 = call float @llvm.fmuladd.f32(float %382, float %370, float %373)
  %384 = fmul float %363, %363
  %385 = call float @llvm.fmuladd.f32(float %384, float %372, float %383)
  %386 = call float @llvm.fmuladd.f32(float %328, float %363, float %329)
  br label %387

387:                                              ; preds = %380, %361, %360, %354, %332
  %388 = phi float [ %386, %380 ], [ %203, %361 ], [ %203, %360 ], [ %203, %332 ], [ %203, %354 ]
  %389 = phi float [ %385, %380 ], [ %202, %361 ], [ %202, %360 ], [ %202, %332 ], [ %202, %354 ]
  %390 = phi float [ %379, %380 ], [ %379, %361 ], [ %201, %360 ], [ %201, %332 ], [ %201, %354 ]
  %391 = phi float [ %378, %380 ], [ %378, %361 ], [ %200, %360 ], [ %200, %332 ], [ %200, %354 ]
  %392 = phi i1 [ true, %380 ], [ true, %361 ], [ false, %360 ], [ false, %332 ], [ false, %354 ]
  %393 = phi i1 [ true, %380 ], [ false, %361 ], [ false, %360 ], [ false, %332 ], [ false, %354 ]
  %394 = fcmp olt float %391, 0.000000e+00
  %395 = select i1 %392, i1 %394, i1 false
  %396 = fcmp olt float %390, 0.000000e+00
  %397 = select i1 %396, i32 -1, i32 1
  %398 = select i1 %395, i32 %397, i32 0
  %399 = add nsw i32 %398, %199
  %400 = fcmp olt float %389, 0.000000e+00
  %401 = select i1 %393, i1 %400, i1 false
  %402 = fcmp olt float %388, 0.000000e+00
  %403 = select i1 %402, i32 -1, i32 1
  %404 = select i1 %401, i32 %403, i32 0
  %405 = add nsw i32 %399, %404
  br label %406

406:                                              ; preds = %387, %308, %304, %300, %292, %245, %231, %227, %223, %207, %197
  %407 = phi float [ %203, %245 ], [ %388, %387 ], [ %203, %308 ], [ %203, %304 ], [ %203, %300 ], [ %203, %292 ], [ %203, %207 ], [ %203, %223 ], [ %203, %227 ], [ %203, %231 ], [ %203, %197 ]
  %408 = phi float [ %202, %245 ], [ %389, %387 ], [ %202, %308 ], [ %202, %304 ], [ %202, %300 ], [ %202, %292 ], [ %202, %207 ], [ %202, %223 ], [ %202, %227 ], [ %202, %231 ], [ %202, %197 ]
  %409 = phi float [ %201, %245 ], [ %390, %387 ], [ %201, %308 ], [ %201, %304 ], [ %201, %300 ], [ %201, %292 ], [ %201, %207 ], [ %201, %223 ], [ %201, %227 ], [ %201, %231 ], [ %201, %197 ]
  %410 = phi float [ %200, %245 ], [ %391, %387 ], [ %200, %308 ], [ %200, %304 ], [ %200, %300 ], [ %200, %292 ], [ %200, %207 ], [ %200, %223 ], [ %200, %227 ], [ %200, %231 ], [ %200, %197 ]
  %411 = phi i32 [ %199, %245 ], [ %405, %387 ], [ %319, %308 ], [ %199, %304 ], [ %199, %300 ], [ %199, %292 ], [ %199, %207 ], [ %199, %223 ], [ %199, %227 ], [ %244, %231 ], [ %199, %197 ]
  %412 = freeze i32 %411
  %413 = add nuw nsw i64 %198, 1
  %414 = icmp eq i64 %413, %86
  br i1 %414, label %415, label %197, !llvm.loop !196

415:                                              ; preds = %406
  br i1 %77, label %416, label %748

416:                                              ; preds = %415, %744
  %417 = phi i64 [ %746, %744 ], [ 0, %415 ]
  %418 = phi float [ %745, %744 ], [ 9.999990e+05, %415 ]
  %419 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %417
  %420 = load <2 x i16>, ptr %419, align 2, !tbaa !33
  %421 = sitofp <2 x i16> %420 to <2 x float>
  %422 = fmul <2 x float> %90, %421
  %423 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %417, i32 6
  %424 = load i8, ptr %423, align 2, !tbaa !19
  switch i8 %424, label %744 [
    i8 2, label %425
    i8 3, label %470
  ]

425:                                              ; preds = %416
  %426 = getelementptr inbounds float, ptr %76, i64 %417
  %427 = load float, ptr %426, align 4, !tbaa !68
  %428 = fcmp une float %427, 0.000000e+00
  br i1 %428, label %429, label %744

429:                                              ; preds = %425
  %430 = getelementptr %struct.stbtt_vertex, ptr %419, i64 -1
  %431 = load i16, ptr %430, align 2, !tbaa !23
  %432 = sitofp i16 %431 to float
  %433 = fmul float %432, %1
  %434 = getelementptr %struct.stbtt_vertex, ptr %419, i64 -1, i32 1
  %435 = load i16, ptr %434, align 2, !tbaa !25
  %436 = sitofp i16 %435 to float
  %437 = fmul float %69, %436
  %438 = extractelement <2 x float> %422, i64 0
  %439 = fsub float %438, %182
  %440 = extractelement <2 x float> %422, i64 1
  %441 = fsub float %440, %170
  %442 = fmul float %441, %441
  %443 = call float @llvm.fmuladd.f32(float %439, float %439, float %442)
  %444 = fmul float %418, %418
  %445 = fcmp olt float %443, %444
  %446 = call float @llvm.sqrt.f32(float %443)
  %447 = select i1 %445, float %446, float %418
  %448 = fsub float %433, %438
  %449 = fsub float %437, %440
  %450 = fneg float %449
  %451 = fmul float %439, %450
  %452 = call float @llvm.fmuladd.f32(float %448, float %441, float %451)
  %453 = call float @llvm.fabs.f32(float %452)
  %454 = fmul float %427, %453
  %455 = icmp eq i64 %417, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %429
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 4661, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_GetGlyphSDF) #32
  unreachable

457:                                              ; preds = %429
  %458 = fcmp olt float %454, %447
  br i1 %458, label %459, label %744

459:                                              ; preds = %457
  %460 = fmul float %441, %449
  %461 = call float @llvm.fmuladd.f32(float %439, float %448, float %460)
  %462 = fneg float %461
  %463 = fmul float %449, %449
  %464 = call float @llvm.fmuladd.f32(float %448, float %448, float %463)
  %465 = fdiv float %462, %464
  %466 = fcmp oge float %465, 0.000000e+00
  %467 = fcmp ole float %465, 1.000000e+00
  %468 = and i1 %466, %467
  %469 = select i1 %468, float %454, float %447
  br label %744

470:                                              ; preds = %416
  %471 = getelementptr %struct.stbtt_vertex, ptr %419, i64 -1
  %472 = getelementptr inbounds %struct.stbtt_vertex, ptr %78, i64 %417, i32 2
  %473 = load <2 x i16>, ptr %471, align 2, !tbaa !33
  %474 = sitofp <2 x i16> %473 to <2 x float>
  %475 = fmul <2 x float> %90, %474
  %476 = shufflevector <2 x float> %475, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %477 = load <2 x i16>, ptr %472, align 2, !tbaa !33
  %478 = sitofp <2 x i16> %477 to <2 x float>
  %479 = fmul <2 x float> %90, %478
  %480 = fcmp olt <2 x float> %422, %479
  %481 = shufflevector <2 x i1> %480, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %482 = shufflevector <2 x float> %479, <2 x float> %422, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %483 = shufflevector <4 x float> %482, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %484 = select <4 x i1> %481, <4 x float> %482, <4 x float> %483
  %485 = fcmp olt <4 x float> %484, %476
  %486 = extractelement <4 x i1> %485, i64 3
  %487 = extractelement <4 x float> %484, i64 3
  %488 = extractelement <2 x float> %475, i64 0
  %489 = select i1 %486, float %487, float %488
  %490 = extractelement <4 x i1> %485, i64 2
  %491 = extractelement <4 x float> %484, i64 2
  %492 = extractelement <2 x float> %475, i64 1
  %493 = select i1 %490, float %491, float %492
  %494 = extractelement <4 x i1> %485, i64 1
  %495 = extractelement <4 x float> %484, i64 1
  %496 = select i1 %494, float %488, float %495
  %497 = extractelement <4 x i1> %485, i64 0
  %498 = extractelement <4 x float> %484, i64 0
  %499 = select i1 %497, float %492, float %498
  %500 = fsub float %489, %418
  %501 = fcmp ogt float %182, %500
  %502 = fadd float %418, %496
  %503 = fcmp olt float %182, %502
  %504 = select i1 %501, i1 %503, i1 false
  %505 = fsub float %493, %418
  %506 = fcmp ogt float %170, %505
  %507 = select i1 %504, i1 %506, i1 false
  %508 = fadd float %418, %499
  %509 = fcmp olt float %170, %508
  %510 = select i1 %507, i1 %509, i1 false
  br i1 %510, label %511, label %744

511:                                              ; preds = %470
  %512 = extractelement <2 x float> %422, i64 0
  %513 = extractelement <2 x float> %479, i64 0
  %514 = fsub <2 x float> %479, %422
  %515 = extractelement <2 x float> %514, i64 0
  %516 = extractelement <2 x float> %422, i64 1
  %517 = extractelement <2 x float> %479, i64 1
  %518 = fsub float %517, %516
  %519 = call float @llvm.fmuladd.f32(float %513, float -2.000000e+00, float %512)
  %520 = fadd float %488, %519
  %521 = call float @llvm.fmuladd.f32(float %517, float -2.000000e+00, float %516)
  %522 = fadd float %492, %521
  %523 = fsub float %512, %182
  %524 = fsub float %516, %170
  %525 = getelementptr inbounds float, ptr %76, i64 %417
  %526 = load float, ptr %525, align 4, !tbaa !68
  %527 = fcmp oeq float %526, 0.000000e+00
  %528 = fmul float %518, %522
  %529 = call float @llvm.fmuladd.f32(float %515, float %520, float %528)
  %530 = fmul float %529, 3.000000e+00
  br i1 %527, label %531, label %560

531:                                              ; preds = %511
  %532 = fmul float %518, %518
  %533 = call float @llvm.fmuladd.f32(float %515, float %515, float %532)
  %534 = fmul float %524, %522
  %535 = call float @llvm.fmuladd.f32(float %523, float %520, float %534)
  %536 = call float @llvm.fmuladd.f32(float %533, float 2.000000e+00, float %535)
  %537 = fmul float %524, %518
  %538 = call float @llvm.fmuladd.f32(float %523, float %515, float %537)
  %539 = call float @llvm.fabs.f32(float %530)
  %540 = fcmp olt float %539, 0x3EB0000000000000
  br i1 %540, label %541, label %547

541:                                              ; preds = %531
  %542 = call float @llvm.fabs.f32(float %536)
  %543 = fcmp ult float %542, 0x3EB0000000000000
  br i1 %543, label %655, label %544

544:                                              ; preds = %541
  %545 = fneg float %538
  %546 = fdiv float %545, %536
  br label %655

547:                                              ; preds = %531
  %548 = fmul float %530, -4.000000e+00
  %549 = fmul float %538, %548
  %550 = call float @llvm.fmuladd.f32(float %536, float %536, float %549)
  %551 = fcmp olt float %550, 0.000000e+00
  br i1 %551, label %655, label %552

552:                                              ; preds = %547
  %553 = call float @sqrtf(float noundef %550) #19
  %554 = fneg float %536
  %555 = fsub float %554, %553
  %556 = fmul float %530, 2.000000e+00
  %557 = fdiv float %555, %556
  %558 = fsub float %553, %536
  %559 = fdiv float %558, %556
  br label %655

560:                                              ; preds = %511
  %561 = fmul float %530, %526
  %562 = fmul float %518, %518
  %563 = call float @llvm.fmuladd.f32(float %515, float %515, float %562)
  %564 = fmul float %524, %522
  %565 = call float @llvm.fmuladd.f32(float %523, float %520, float %564)
  %566 = call float @llvm.fmuladd.f32(float %563, float 2.000000e+00, float %565)
  %567 = fmul float %566, %526
  %568 = fdiv float %561, -3.000000e+00
  %569 = fmul float %561, %561
  %570 = fdiv float %569, 3.000000e+00
  %571 = fsub float %567, %570
  %572 = fmul float %561, 2.000000e+00
  %573 = insertelement <2 x float> poison, float %524, i64 0
  %574 = insertelement <2 x float> %573, float %567, i64 1
  %575 = insertelement <2 x float> <float poison, float -9.000000e+00>, float %518, i64 0
  %576 = fmul <2 x float> %574, %575
  %577 = insertelement <2 x float> poison, float %523, i64 0
  %578 = insertelement <2 x float> %577, float %572, i64 1
  %579 = insertelement <2 x float> %514, float %561, i64 1
  %580 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %578, <2 x float> %579, <2 x float> %576)
  %581 = insertelement <2 x float> %579, float %526, i64 0
  %582 = fmul <2 x float> %580, %581
  %583 = extractelement <2 x float> %582, i64 1
  %584 = fdiv float %583, 2.700000e+01
  %585 = extractelement <2 x float> %582, i64 0
  %586 = fadd float %585, %584
  %587 = fmul float %571, %571
  %588 = fmul float %571, %587
  %589 = fmul float %588, 4.000000e+00
  %590 = fdiv float %589, 2.700000e+01
  %591 = call float @llvm.fmuladd.f32(float %586, float %586, float %590)
  %592 = fcmp ult float %591, 0.000000e+00
  br i1 %592, label %628, label %593

593:                                              ; preds = %560
  %594 = call float @sqrtf(float noundef %591) #19
  %595 = fneg float %586
  %596 = fsub float %594, %586
  %597 = fmul float %596, 5.000000e-01
  %598 = fsub float %595, %594
  %599 = fmul float %598, 5.000000e-01
  %600 = fcmp olt float %597, 0.000000e+00
  br i1 %600, label %601, label %607

601:                                              ; preds = %593
  %602 = fneg float %597
  %603 = fpext float %602 to double
  %604 = call double @pow(double noundef %603, double noundef 0x3FD5555560000000) #34
  %605 = fptrunc double %604 to float
  %606 = fneg float %605
  br label %611

607:                                              ; preds = %593
  %608 = fpext float %597 to double
  %609 = call double @pow(double noundef %608, double noundef 0x3FD5555560000000) #34
  %610 = fptrunc double %609 to float
  br label %611

611:                                              ; preds = %607, %601
  %612 = phi float [ %606, %601 ], [ %610, %607 ]
  %613 = fcmp olt float %599, 0.000000e+00
  br i1 %613, label %614, label %620

614:                                              ; preds = %611
  %615 = fneg float %599
  %616 = fpext float %615 to double
  %617 = call double @pow(double noundef %616, double noundef 0x3FD5555560000000) #34
  %618 = fptrunc double %617 to float
  %619 = fneg float %618
  br label %624

620:                                              ; preds = %611
  %621 = fpext float %599 to double
  %622 = call double @pow(double noundef %621, double noundef 0x3FD5555560000000) #34
  %623 = fptrunc double %622 to float
  br label %624

624:                                              ; preds = %620, %614
  %625 = phi float [ %619, %614 ], [ %623, %620 ]
  %626 = fadd float %568, %612
  %627 = fadd float %626, %625
  br label %655

628:                                              ; preds = %560
  %629 = fdiv float %571, -3.000000e+00
  %630 = call float @sqrtf(float noundef %629) #19
  %631 = fdiv float -2.700000e+01, %588
  %632 = fpext float %631 to double
  %633 = call double @sqrt(double noundef %632) #34
  %634 = fneg double %633
  %635 = fpext float %586 to double
  %636 = fmul double %635, %634
  %637 = fmul double %636, 5.000000e-01
  %638 = call double @acos(double noundef %637) #34
  %639 = fptrunc double %638 to float
  %640 = fdiv float %639, 3.000000e+00
  %641 = fpext float %640 to double
  %642 = call double @cos(double noundef %641) #34
  %643 = fptrunc double %642 to float
  %644 = fadd double %641, 0xBFF921FAFC8B007A
  %645 = call double @cos(double noundef %644) #34
  %646 = fptrunc double %645 to float
  %647 = fmul float %646, 0x3FFBB67AE0000000
  %648 = fmul float %630, 2.000000e+00
  %649 = call float @llvm.fmuladd.f32(float %648, float %643, float %568)
  %650 = fadd float %647, %643
  %651 = fneg float %630
  %652 = call float @llvm.fmuladd.f32(float %651, float %650, float %568)
  %653 = fsub float %643, %647
  %654 = call float @llvm.fmuladd.f32(float %651, float %653, float %568)
  br label %655

655:                                              ; preds = %628, %624, %544, %541, %547, %552
  %656 = phi float [ 0.000000e+00, %541 ], [ %546, %544 ], [ 0.000000e+00, %547 ], [ %557, %552 ], [ %649, %628 ], [ %627, %624 ]
  %657 = phi float [ 0.000000e+00, %541 ], [ 0.000000e+00, %544 ], [ 0.000000e+00, %547 ], [ %559, %552 ], [ %652, %628 ], [ 0.000000e+00, %624 ]
  %658 = phi float [ 0.000000e+00, %541 ], [ 0.000000e+00, %544 ], [ 0.000000e+00, %547 ], [ 0.000000e+00, %552 ], [ %654, %628 ], [ 0.000000e+00, %624 ]
  %659 = phi i1 [ false, %541 ], [ true, %544 ], [ false, %547 ], [ true, %552 ], [ true, %628 ], [ true, %624 ]
  %660 = phi i1 [ false, %541 ], [ false, %544 ], [ false, %547 ], [ true, %552 ], [ true, %628 ], [ false, %624 ]
  %661 = phi i1 [ false, %541 ], [ false, %544 ], [ false, %547 ], [ false, %552 ], [ true, %628 ], [ false, %624 ]
  %662 = fmul float %524, %524
  %663 = call float @llvm.fmuladd.f32(float %523, float %523, float %662)
  %664 = fmul float %418, %418
  %665 = fcmp olt float %663, %664
  %666 = call float @llvm.sqrt.f32(float %663)
  %667 = select i1 %665, float %666, float %418
  %668 = fcmp oge float %656, 0.000000e+00
  %669 = select i1 %659, i1 %668, i1 false
  %670 = fcmp ole float %656, 1.000000e+00
  %671 = select i1 %669, i1 %670, i1 false
  br i1 %671, label %672, label %692

672:                                              ; preds = %655
  %673 = fsub float 1.000000e+00, %656
  %674 = fmul float %673, %673
  %675 = fmul float %656, 2.000000e+00
  %676 = fmul float %675, %673
  %677 = fmul float %513, %676
  %678 = call float @llvm.fmuladd.f32(float %674, float %512, float %677)
  %679 = fmul float %656, %656
  %680 = call float @llvm.fmuladd.f32(float %679, float %488, float %678)
  %681 = fmul float %517, %676
  %682 = call float @llvm.fmuladd.f32(float %674, float %516, float %681)
  %683 = call float @llvm.fmuladd.f32(float %679, float %492, float %682)
  %684 = fsub float %680, %182
  %685 = fsub float %683, %170
  %686 = fmul float %685, %685
  %687 = call float @llvm.fmuladd.f32(float %684, float %684, float %686)
  %688 = fmul float %667, %667
  %689 = fcmp olt float %687, %688
  br i1 %689, label %690, label %692

690:                                              ; preds = %672
  %691 = call float @llvm.sqrt.f32(float %687)
  br label %692

692:                                              ; preds = %672, %690, %655
  %693 = phi float [ %691, %690 ], [ %667, %672 ], [ %667, %655 ]
  %694 = fcmp oge float %657, 0.000000e+00
  %695 = select i1 %660, i1 %694, i1 false
  %696 = fcmp ole float %657, 1.000000e+00
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %698, label %718

698:                                              ; preds = %692
  %699 = fsub float 1.000000e+00, %657
  %700 = fmul float %699, %699
  %701 = fmul float %657, 2.000000e+00
  %702 = fmul float %701, %699
  %703 = fmul float %513, %702
  %704 = call float @llvm.fmuladd.f32(float %700, float %512, float %703)
  %705 = fmul float %657, %657
  %706 = call float @llvm.fmuladd.f32(float %705, float %488, float %704)
  %707 = fmul float %517, %702
  %708 = call float @llvm.fmuladd.f32(float %700, float %516, float %707)
  %709 = call float @llvm.fmuladd.f32(float %705, float %492, float %708)
  %710 = fsub float %706, %182
  %711 = fsub float %709, %170
  %712 = fmul float %711, %711
  %713 = call float @llvm.fmuladd.f32(float %710, float %710, float %712)
  %714 = fmul float %693, %693
  %715 = fcmp olt float %713, %714
  br i1 %715, label %716, label %718

716:                                              ; preds = %698
  %717 = call float @llvm.sqrt.f32(float %713)
  br label %718

718:                                              ; preds = %698, %716, %692
  %719 = phi float [ %717, %716 ], [ %693, %698 ], [ %693, %692 ]
  %720 = fcmp oge float %658, 0.000000e+00
  %721 = select i1 %661, i1 %720, i1 false
  %722 = fcmp ole float %658, 1.000000e+00
  %723 = select i1 %721, i1 %722, i1 false
  br i1 %723, label %724, label %744

724:                                              ; preds = %718
  %725 = fsub float 1.000000e+00, %658
  %726 = fmul float %725, %725
  %727 = fmul float %658, 2.000000e+00
  %728 = fmul float %727, %725
  %729 = fmul float %513, %728
  %730 = call float @llvm.fmuladd.f32(float %726, float %512, float %729)
  %731 = fmul float %658, %658
  %732 = call float @llvm.fmuladd.f32(float %731, float %488, float %730)
  %733 = fmul float %517, %728
  %734 = call float @llvm.fmuladd.f32(float %726, float %516, float %733)
  %735 = call float @llvm.fmuladd.f32(float %731, float %492, float %734)
  %736 = fsub float %732, %182
  %737 = fsub float %735, %170
  %738 = fmul float %737, %737
  %739 = call float @llvm.fmuladd.f32(float %736, float %736, float %738)
  %740 = fmul float %719, %719
  %741 = fcmp olt float %739, %740
  br i1 %741, label %742, label %744

742:                                              ; preds = %724
  %743 = call float @llvm.sqrt.f32(float %739)
  br label %744

744:                                              ; preds = %416, %425, %718, %742, %724, %470, %457, %459
  %745 = phi float [ %469, %459 ], [ %447, %457 ], [ %418, %470 ], [ %719, %724 ], [ %743, %742 ], [ %719, %718 ], [ %418, %425 ], [ %418, %416 ]
  %746 = add nuw nsw i64 %417, 1
  %747 = icmp eq i64 %746, %86
  br i1 %747, label %748, label %416, !llvm.loop !197

748:                                              ; preds = %744, %415
  %749 = phi float [ 9.999990e+05, %415 ], [ %745, %744 ]
  %750 = icmp eq i32 %412, 0
  br i1 %750, label %751, label %753

751:                                              ; preds = %748
  %752 = fneg float %749
  br label %753

753:                                              ; preds = %190, %748, %751
  %754 = phi float [ %749, %748 ], [ %752, %751 ], [ -9.999990e+05, %190 ]
  %755 = call float @llvm.fmuladd.f32(float %5, float %754, float %87)
  %756 = fcmp olt float %755, 0.000000e+00
  br i1 %756, label %760, label %757

757:                                              ; preds = %753
  %758 = fcmp ogt float %755, 2.550000e+02
  br i1 %758, label %759, label %760

759:                                              ; preds = %757
  br label %760

760:                                              ; preds = %753, %757, %759
  %761 = phi float [ 2.550000e+02, %759 ], [ %755, %757 ], [ 0.000000e+00, %753 ]
  %762 = fptoui float %761 to i8
  %763 = add i32 %177, %180
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i8, ptr %73, i64 %764
  store i8 %762, ptr %765, align 1, !tbaa !13
  %766 = add nsw i64 %179, 1
  %767 = icmp slt i64 %766, %89
  br i1 %767, label %178, label %768, !llvm.loop !198

768:                                              ; preds = %760, %166
  %769 = add nsw i32 %167, 1
  %770 = icmp slt i32 %769, %54
  br i1 %770, label %166, label %771, !llvm.loop !199

771:                                              ; preds = %768, %82
  call void @free(ptr noundef %76) #34
  call void @free(ptr noundef %78) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #34
  br label %772

772:                                              ; preds = %20, %21, %10, %771
  %773 = phi ptr [ %73, %771 ], [ null, %10 ], [ null, %21 ], [ null, %20 ]
  ret ptr %773
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @stbtt_GetCodepointSDF(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %12 = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %11, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %12
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbtt_FreeSDF(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #7 {
  tail call void @free(ptr noundef %0) #34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @stbtt_GetFontNameString(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds i8, ptr %12, i64 5
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  %21 = add i32 %10, 12
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %161, label %23

23:                                               ; preds = %6
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %46, %23
  %26 = phi i64 [ 0, %23 ], [ %47, %46 ]
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 4
  %29 = add i32 %21, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %8, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 110
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, 97
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %31, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 109
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %31, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = icmp eq i8 %44, 101
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %38, %34, %25
  %47 = add nuw nsw i64 %26, 1
  %48 = icmp eq i64 %47, %24
  br i1 %48, label %161, label %25, !llvm.loop !62

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, ptr %31, i64 8
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = getelementptr inbounds i8, ptr %31, i64 9
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or disjoint i32 %57, %53
  %59 = getelementptr inbounds i8, ptr %31, i64 10
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or disjoint i32 %58, %62
  %64 = getelementptr inbounds i8, ptr %31, i64 11
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i32
  %67 = or disjoint i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %161, label %69

69:                                               ; preds = %49
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds i8, ptr %8, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = getelementptr inbounds i8, ptr %71, i64 3
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i32
  %79 = or disjoint i32 %75, %78
  %80 = getelementptr inbounds i8, ptr %71, i64 4
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = getelementptr inbounds i8, ptr %71, i64 5
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i32
  %87 = or disjoint i32 %83, %86
  %88 = add i32 %87, %67
  %89 = icmp eq i32 %79, 0
  br i1 %89, label %161, label %90

90:                                               ; preds = %69
  %91 = add i32 %67, 6
  %92 = zext nneg i32 %79 to i64
  br label %93

93:                                               ; preds = %90, %158
  %94 = phi i64 [ 0, %90 ], [ %159, %158 ]
  %95 = trunc i64 %94 to i32
  %96 = mul i32 %95, 12
  %97 = add i32 %91, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %8, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = getelementptr inbounds i8, ptr %99, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = zext i8 %104 to i32
  %106 = or disjoint i32 %102, %105
  %107 = icmp eq i32 %106, %2
  br i1 %107, label %108, label %158

108:                                              ; preds = %93
  %109 = getelementptr inbounds i8, ptr %99, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = getelementptr inbounds i8, ptr %99, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i32
  %116 = or disjoint i32 %112, %115
  %117 = icmp eq i32 %116, %3
  br i1 %117, label %118, label %158

118:                                              ; preds = %108
  %119 = getelementptr inbounds i8, ptr %99, i64 4
  %120 = load i8, ptr %119, align 1, !tbaa !13
  %121 = zext i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 8
  %123 = getelementptr inbounds i8, ptr %99, i64 5
  %124 = load i8, ptr %123, align 1, !tbaa !13
  %125 = zext i8 %124 to i32
  %126 = or disjoint i32 %122, %125
  %127 = icmp eq i32 %126, %4
  br i1 %127, label %128, label %158

128:                                              ; preds = %118
  %129 = getelementptr inbounds i8, ptr %99, i64 6
  %130 = load i8, ptr %129, align 1, !tbaa !13
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = getelementptr inbounds i8, ptr %99, i64 7
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = zext i8 %134 to i32
  %136 = or disjoint i32 %132, %135
  %137 = icmp eq i32 %136, %5
  br i1 %137, label %138, label %158

138:                                              ; preds = %128
  %139 = getelementptr inbounds i8, ptr %99, i64 8
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = getelementptr inbounds i8, ptr %99, i64 9
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = zext i8 %144 to i32
  %146 = or disjoint i32 %142, %145
  store i32 %146, ptr %1, align 4, !tbaa !40
  %147 = sext i32 %88 to i64
  %148 = getelementptr inbounds i8, ptr %8, i64 %147
  %149 = getelementptr inbounds i8, ptr %99, i64 10
  %150 = load i8, ptr %149, align 1, !tbaa !13
  %151 = zext i8 %150 to i64
  %152 = shl nuw nsw i64 %151, 8
  %153 = getelementptr inbounds i8, ptr %99, i64 11
  %154 = load i8, ptr %153, align 1, !tbaa !13
  %155 = zext i8 %154 to i64
  %156 = or disjoint i64 %152, %155
  %157 = getelementptr inbounds i8, ptr %148, i64 %156
  br label %161

158:                                              ; preds = %128, %118, %108, %93
  %159 = add nuw nsw i64 %94, 1
  %160 = icmp eq i64 %159, %92
  br i1 %160, label %161, label %93, !llvm.loop !200

161:                                              ; preds = %46, %158, %69, %6, %138, %49
  %162 = phi ptr [ %157, %138 ], [ null, %49 ], [ null, %6 ], [ null, %69 ], [ null, %158 ], [ null, %46 ]
  ret ptr %162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stbtt_BakeFontBitmap(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stbtt_fontinfo, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %14) #34
  store ptr null, ptr %14, align 8, !tbaa !179
  %15 = call i32 @stbtt_InitFont(ptr noundef nonnull %14, ptr noundef %0, i32 noundef %1), !range !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %156, label %17

17:                                               ; preds = %9
  %18 = mul nsw i32 %5, %4
  %19 = sext i32 %18 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %19, i1 false)
  %20 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %14, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 4
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i16
  %29 = shl nuw i16 %28, 8
  %30 = getelementptr inbounds i8, ptr %25, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i16
  %33 = or disjoint i16 %29, %32
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds i8, ptr %25, i64 6
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i16
  %38 = shl nuw i16 %37, 8
  %39 = getelementptr inbounds i8, ptr %25, i64 7
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i16
  %42 = or disjoint i16 %38, %41
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 %34, %43
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %2, %45
  %47 = icmp sgt i32 %7, 0
  br i1 %47, label %48, label %156

48:                                               ; preds = %17
  %49 = getelementptr inbounds i8, ptr %25, i64 34
  %50 = getelementptr inbounds i8, ptr %25, i64 35
  %51 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %14, i64 0, i32 8
  %52 = load i32, ptr %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %21, i64 %53
  %55 = zext nneg i32 %7 to i64
  %56 = insertelement <2 x float> poison, float %46, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  br label %58

58:                                               ; preds = %132, %48
  %59 = phi i64 [ 0, %48 ], [ %154, %132 ]
  %60 = phi i32 [ 1, %48 ], [ %151, %132 ]
  %61 = phi i32 [ 1, %48 ], [ %121, %132 ]
  %62 = phi i32 [ 1, %48 ], [ %153, %132 ]
  %63 = trunc i64 %59 to i32
  %64 = add i32 %63, %6
  %65 = call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %14, i32 noundef %64)
  %66 = load i8, ptr %49, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = load i8, ptr %50, align 1, !tbaa !13
  %70 = zext i8 %69 to i32
  %71 = or disjoint i32 %68, %70
  %72 = icmp sgt i32 %71, %65
  %73 = shl nsw i32 %65, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %54, i64 %74
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = shl nuw nsw i32 %71, 2
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr i8, ptr %54, i64 %78
  %80 = getelementptr i8, ptr %79, i64 -4
  %81 = getelementptr i8, ptr %79, i64 -3
  %82 = select i1 %72, ptr %76, ptr %81
  %83 = select i1 %72, ptr %75, ptr %80
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  %87 = load i8, ptr %82, align 1, !tbaa !13
  %88 = zext i8 %87 to i16
  %89 = or disjoint i16 %86, %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #34
  store i32 0, ptr %10, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  store i32 0, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  %90 = call i32 @stbtt_GetGlyphBox(ptr noundef nonnull %14, i32 noundef %65, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13), !range !45
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %58
  %93 = load i32, ptr %10, align 4, !tbaa !40
  %94 = load i32, ptr %13, align 4, !tbaa !40
  %95 = sub nsw i32 0, %94
  %96 = insertelement <2 x i32> poison, i32 %93, i64 0
  %97 = insertelement <2 x i32> %96, i32 %95, i64 1
  %98 = sitofp <2 x i32> %97 to <2 x float>
  %99 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %98, <2 x float> %57, <2 x float> zeroinitializer)
  %100 = call <2 x float> @llvm.floor.v2f32(<2 x float> %99)
  %101 = fptosi <2 x float> %100 to <2 x i32>
  %102 = load i32, ptr %12, align 4, !tbaa !40
  %103 = load i32, ptr %11, align 4, !tbaa !40
  %104 = sub nsw i32 0, %103
  %105 = insertelement <2 x i32> poison, i32 %102, i64 0
  %106 = insertelement <2 x i32> %105, i32 %104, i64 1
  %107 = sitofp <2 x i32> %106 to <2 x float>
  %108 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> %57, <2 x float> zeroinitializer)
  %109 = call <2 x float> @llvm.ceil.v2f32(<2 x float> %108)
  %110 = fptosi <2 x float> %109 to <2 x i32>
  br label %111

111:                                              ; preds = %92, %58
  %112 = phi <2 x i32> [ %101, %92 ], [ zeroinitializer, %58 ]
  %113 = phi <2 x i32> [ %110, %92 ], [ zeroinitializer, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #34
  %114 = sub nsw <2 x i32> %113, %112
  %115 = extractelement <2 x i32> %114, i64 0
  %116 = sub nsw <2 x i32> %113, %112
  %117 = extractelement <2 x i32> %116, i64 1
  %118 = add i32 %60, 1
  %119 = add i32 %118, %115
  %120 = icmp slt i32 %119, %4
  %121 = select i1 %120, i32 %61, i32 %62
  %122 = select i1 %120, i32 %60, i32 1
  %123 = add nsw i32 %121, %117
  %124 = add nsw i32 %123, 1
  %125 = icmp slt i32 %124, %5
  br i1 %125, label %126, label %130

126:                                              ; preds = %111
  %127 = add nsw i32 %122, %115
  %128 = icmp slt i32 %127, %4
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 3842, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt_BakeFontBitmap_internal) #32
  unreachable

130:                                              ; preds = %111
  %131 = sub nsw i32 0, %63
  br label %156

132:                                              ; preds = %126
  %133 = sext i32 %122 to i64
  %134 = getelementptr inbounds i8, ptr %3, i64 %133
  %135 = mul nsw i32 %121, %4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %134, i64 %136
  call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef nonnull %14, ptr noundef %137, i32 noundef %115, i32 noundef %117, i32 noundef %4, float noundef %46, float noundef %46, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %65)
  %138 = trunc i32 %122 to i16
  %139 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59
  store i16 %138, ptr %139, align 4, !tbaa !201
  %140 = trunc i32 %121 to i16
  %141 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59, i32 1
  store i16 %140, ptr %141, align 2, !tbaa !202
  %142 = trunc i32 %127 to i16
  %143 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59, i32 2
  store i16 %142, ptr %143, align 4, !tbaa !203
  %144 = trunc i32 %123 to i16
  %145 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59, i32 3
  store i16 %144, ptr %145, align 2, !tbaa !204
  %146 = sitofp i16 %89 to float
  %147 = fmul float %46, %146
  %148 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59, i32 6
  store float %147, ptr %148, align 4, !tbaa !113
  %149 = sitofp <2 x i32> %112 to <2 x float>
  %150 = getelementptr inbounds %struct.stbtt_bakedchar, ptr %8, i64 %59, i32 4
  store <2 x float> %149, ptr %150, align 4, !tbaa !68
  %151 = add nsw i32 %127, 1
  %152 = icmp slt i32 %123, %62
  %153 = select i1 %152, i32 %62, i32 %124
  %154 = add nuw nsw i64 %59, 1
  %155 = icmp eq i64 %154, %55
  br i1 %155, label %156, label %58, !llvm.loop !205

156:                                              ; preds = %132, %9, %17, %130
  %157 = phi i32 [ %131, %130 ], [ -1, %9 ], [ 1, %17 ], [ %153, %132 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %14) #34
  ret i32 %157
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @stbtt_GetNumberOfFonts(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = tail call fastcc i32 @stbtt__isfont(ptr noundef %0), !range !45
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %57

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 116
  br i1 %6, label %7, label %57

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 99
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 102
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = getelementptr inbounds i8, ptr %0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr inbounds i8, ptr %0, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or disjoint i32 %28, %32
  %34 = getelementptr inbounds i8, ptr %0, i64 7
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  switch i32 %37, label %57 [
    i32 65536, label %38
    i32 131072, label %38
  ]

38:                                               ; preds = %19, %19
  %39 = getelementptr inbounds i8, ptr %0, i64 8
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 %41, 24
  %43 = getelementptr inbounds i8, ptr %0, i64 9
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 16
  %47 = or disjoint i32 %46, %42
  %48 = getelementptr inbounds i8, ptr %0, i64 10
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 8
  %52 = or disjoint i32 %47, %51
  %53 = getelementptr inbounds i8, ptr %0, i64 11
  %54 = load i8, ptr %53, align 1, !tbaa !13
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  br label %57

57:                                               ; preds = %1, %4, %7, %11, %15, %19, %38
  %58 = phi i32 [ %56, %38 ], [ 1, %1 ], [ 0, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %4 ], [ 0, %19 ]
  ret i32 %58
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_FindMatchingFont(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #20 {
  %4 = getelementptr i8, ptr %0, i64 45
  %5 = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %0, i32 noundef 0)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %162, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %2, 0
  %11 = and i32 %2, 7
  br label %12

12:                                               ; preds = %158, %7
  %13 = phi i32 [ %5, %7 ], [ %160, %158 ]
  %14 = phi i32 [ 0, %7 ], [ %159, %158 ]
  %15 = zext nneg i32 %13 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = tail call fastcc i32 @stbtt__isfont(ptr noundef %16), !range !45
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %158, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds i8, ptr %16, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = add nuw i32 %13, 12
  br i1 %10, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %16, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = zext i8 %21 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = zext i8 %25 to i32
  %29 = or disjoint i32 %27, %28
  br label %90

30:                                               ; preds = %19
  %31 = zext i8 %21 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = getelementptr inbounds i8, ptr %16, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %30
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %80, %38
  %41 = phi i64 [ 0, %38 ], [ %81, %80 ]
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 4
  %44 = add i32 %43, %22
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 104
  br i1 %48, label %49, label %80

49:                                               ; preds = %40
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = icmp eq i8 %51, 101
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %46, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 97
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %46, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = icmp eq i8 %59, 100
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %46, i64 8
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i64
  %65 = shl nuw nsw i64 %64, 24
  %66 = getelementptr inbounds i8, ptr %46, i64 9
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 16
  %70 = or disjoint i64 %69, %65
  %71 = getelementptr inbounds i8, ptr %46, i64 10
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = zext i8 %72 to i64
  %74 = shl nuw nsw i64 %73, 8
  %75 = or disjoint i64 %70, %74
  %76 = getelementptr inbounds i8, ptr %46, i64 11
  %77 = load i8, ptr %76, align 1, !tbaa !13
  %78 = zext i8 %77 to i64
  %79 = or disjoint i64 %75, %78
  br label %83

80:                                               ; preds = %57, %53, %49, %40
  %81 = add nuw nsw i64 %41, 1
  %82 = icmp eq i64 %81, %39
  br i1 %82, label %83, label %40, !llvm.loop !62

83:                                               ; preds = %80, %61, %30
  %84 = phi i64 [ %79, %61 ], [ 0, %30 ], [ 0, %80 ]
  %85 = getelementptr i8, ptr %4, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = and i8 %86, 7
  %88 = zext nneg i8 %87 to i32
  %89 = icmp eq i32 %11, %88
  br i1 %89, label %90, label %158

90:                                               ; preds = %83, %23
  %91 = phi i32 [ %29, %23 ], [ %36, %83 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %158, label %93

93:                                               ; preds = %90
  %94 = zext nneg i32 %91 to i64
  br label %95

95:                                               ; preds = %116, %93
  %96 = phi i64 [ 0, %93 ], [ %117, %116 ]
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 4
  %99 = add i32 %98, %22
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = icmp eq i8 %102, 110
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !13
  %107 = icmp eq i8 %106, 97
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, ptr %101, i64 2
  %110 = load i8, ptr %109, align 1, !tbaa !13
  %111 = icmp eq i8 %110, 109
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %101, i64 3
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = icmp eq i8 %114, 101
  br i1 %115, label %119, label %116

116:                                              ; preds = %112, %108, %104, %95
  %117 = add nuw nsw i64 %96, 1
  %118 = icmp eq i64 %117, %94
  br i1 %118, label %158, label %95, !llvm.loop !62

119:                                              ; preds = %112
  %120 = getelementptr inbounds i8, ptr %101, i64 8
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = getelementptr inbounds i8, ptr %101, i64 9
  %125 = load i8, ptr %124, align 1, !tbaa !13
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or disjoint i32 %127, %123
  %129 = getelementptr inbounds i8, ptr %101, i64 10
  %130 = load i8, ptr %129, align 1, !tbaa !13
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 8
  %133 = or disjoint i32 %128, %132
  %134 = getelementptr inbounds i8, ptr %101, i64 11
  %135 = load i8, ptr %134, align 1, !tbaa !13
  %136 = zext i8 %135 to i32
  %137 = or disjoint i32 %133, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %119
  br i1 %10, label %149, label %140

140:                                              ; preds = %139
  %141 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 16, i32 noundef -1)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 1, i32 noundef -1)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 3, i32 noundef -1)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %162

149:                                              ; preds = %139
  %150 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 16, i32 noundef 17)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 1, i32 noundef 2)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %137, ptr noundef %1, i32 noundef %9, i32 noundef 3, i32 noundef -1)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %116, %155, %146, %119, %90, %83, %12
  %159 = add nuw nsw i32 %14, 1
  %160 = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %0, i32 noundef %159)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %12

162:                                              ; preds = %140, %143, %146, %149, %152, %155, %158, %3
  %163 = phi i32 [ %5, %3 ], [ %160, %158 ], [ %13, %155 ], [ %13, %152 ], [ %13, %149 ], [ %13, %146 ], [ %13, %143 ], [ %13, %140 ]
  ret i32 %163
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = icmp eq i32 %5, %1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local ptr @stbds_arrgrowf(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call i64 @llvm.umax.i64(i64 %2, i64 %3)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %35, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stbds_array_header, ptr %0, i64 -1
  %11 = load i64, ptr %10, align 8, !tbaa !206
  %12 = add i64 %11, %2
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 %3)
  %14 = getelementptr %struct.stbds_array_header, ptr %0, i64 -1, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !209
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = shl i64 %15, 1
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %6, %17
  %21 = phi i64 [ %13, %17 ], [ %7, %6 ]
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 4)
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi i64 [ %22, %20 ], [ %18, %17 ]
  %25 = getelementptr inbounds %struct.stbds_array_header, ptr %0, i64 -1
  %26 = select i1 %5, ptr null, ptr %25
  %27 = mul i64 %24, %1
  %28 = add i64 %27, 32
  %29 = tail call ptr @realloc(ptr noundef %26, i64 noundef %28) #36
  %30 = getelementptr inbounds i8, ptr %29, i64 32
  br i1 %5, label %31, label %33

31:                                               ; preds = %23
  store i64 0, ptr %29, align 8, !tbaa !206
  %32 = getelementptr inbounds %struct.stbds_array_header, ptr %29, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %23, %31
  %34 = getelementptr inbounds %struct.stbds_array_header, ptr %29, i64 0, i32 1
  store i64 %24, ptr %34, align 8, !tbaa !209
  br label %35

35:                                               ; preds = %9, %6, %33
  %36 = phi ptr [ %30, %33 ], [ null, %6 ], [ %0, %9 ]
  ret ptr %36
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbds_arrfreef(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.stbds_array_header, ptr %0, i64 -1
  tail call void @free(ptr noundef nonnull %2) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @stbds_rand_seed(i64 noundef %0) local_unnamed_addr #22 {
  store i64 %0, ptr @stbds_hash_seed, align 8, !tbaa !210
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @stbds_hash_string(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %13, %5 ], [ %3, %2 ]
  %7 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %8 = phi ptr [ %10, %5 ], [ %0, %2 ]
  %9 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 9)
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = zext i8 %6 to i64
  %12 = add i64 %9, %11
  %13 = load i8, ptr %10, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !211

15:                                               ; preds = %5, %2
  %16 = phi i64 [ %1, %2 ], [ %12, %5 ]
  %17 = xor i64 %16, %1
  %18 = xor i64 %17, -1
  %19 = shl i64 %17, 18
  %20 = add i64 %19, %18
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 33)
  %22 = mul i64 %21, 21
  %23 = lshr i64 %22, 11
  %24 = mul i64 %21, 189151184349560832
  %25 = or disjoint i64 %23, %24
  %26 = mul i64 %25, 65
  %27 = lshr i64 %26, 22
  %28 = mul i64 %25, 285873023221760
  %29 = or disjoint i64 %27, %28
  %30 = xor i64 %29, %26
  %31 = add i64 %30, %1
  ret i64 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @stbds_hash_bytes(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  switch i64 %1, label %50 [
    i64 4, label %4
    i64 8, label %21
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr %0, align 1
  %6 = trunc i64 %2 to i32
  %7 = xor i32 %5, %6
  %8 = lshr i32 %7, 16
  %9 = xor i32 %7, %8
  %10 = xor i32 %9, 61
  %11 = mul i32 %10, 9
  %12 = lshr i32 %11, 4
  %13 = xor i32 %12, %11
  %14 = mul i32 %13, 668265261
  %15 = xor i32 %14, %6
  %16 = lshr i32 %15, 15
  %17 = xor i32 %16, %15
  %18 = zext i32 %17 to i64
  %19 = mul nuw i64 %18, 4294967297
  %20 = xor i64 %19, %2
  br label %180

21:                                               ; preds = %3
  %22 = load i32, ptr %0, align 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 1
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %23
  %29 = xor i64 %28, %2
  %30 = xor i64 %29, -1
  %31 = shl i64 %29, 21
  %32 = add i64 %31, %30
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 40)
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 265
  %36 = lshr i64 %35, 14
  %37 = mul i64 %34, 298363475313295360
  %38 = or disjoint i64 %36, %37
  %39 = xor i64 %38, %2
  %40 = xor i64 %39, %35
  %41 = mul i64 %40, 21
  %42 = lshr i64 %41, 28
  %43 = mul i64 %40, 1443109011456
  %44 = or disjoint i64 %42, %43
  %45 = xor i64 %44, %41
  %46 = mul i64 %45, 2147483649
  %47 = xor i64 %46, -1
  %48 = mul i64 %45, 562949953683456
  %49 = add i64 %48, %47
  br label %180

50:                                               ; preds = %3
  %51 = xor i64 %2, 8317987319222330741
  %52 = xor i64 %2, -7237128888997146478
  %53 = xor i64 %2, 7816392313619706465
  %54 = xor i64 %2, -8387220255154660724
  %55 = icmp ult i64 %1, 8
  br i1 %55, label %89, label %56

56:                                               ; preds = %50, %56
  %57 = phi i64 [ %87, %56 ], [ 8, %50 ]
  %58 = phi i64 [ %84, %56 ], [ %54, %50 ]
  %59 = phi i64 [ %81, %56 ], [ %53, %50 ]
  %60 = phi i64 [ %80, %56 ], [ %52, %50 ]
  %61 = phi i64 [ %85, %56 ], [ %51, %50 ]
  %62 = phi ptr [ %86, %56 ], [ %0, %50 ]
  %63 = load i32, ptr %62, align 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 4
  %66 = load i32, ptr %65, align 1
  %67 = zext i32 %66 to i64
  %68 = shl nuw i64 %67, 32
  %69 = or i64 %68, %64
  %70 = xor i64 %69, %58
  %71 = add i64 %61, %60
  %72 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 13)
  %73 = xor i64 %71, %72
  %74 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 32)
  %75 = add i64 %70, %59
  %76 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 16)
  %77 = xor i64 %76, %75
  %78 = add i64 %75, %73
  %79 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 17)
  %80 = xor i64 %78, %79
  %81 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 32)
  %82 = add i64 %77, %74
  %83 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 21)
  %84 = xor i64 %83, %82
  %85 = xor i64 %82, %69
  %86 = getelementptr inbounds i8, ptr %62, i64 8
  %87 = add nuw i64 %57, 8
  %88 = icmp ugt i64 %87, %1
  br i1 %88, label %89, label %56, !llvm.loop !212

89:                                               ; preds = %56, %50
  %90 = phi ptr [ %0, %50 ], [ %86, %56 ]
  %91 = phi i64 [ 0, %50 ], [ %57, %56 ]
  %92 = phi i64 [ %51, %50 ], [ %85, %56 ]
  %93 = phi i64 [ %52, %50 ], [ %80, %56 ]
  %94 = phi i64 [ %53, %50 ], [ %81, %56 ]
  %95 = phi i64 [ %54, %50 ], [ %84, %56 ]
  %96 = shl i64 %1, 56
  %97 = sub i64 %1, %91
  switch i64 %97, label %145 [
    i64 7, label %98
    i64 6, label %104
    i64 5, label %111
    i64 4, label %118
    i64 3, label %126
    i64 2, label %133
    i64 1, label %140
  ]

98:                                               ; preds = %89
  %99 = getelementptr inbounds i8, ptr %90, i64 6
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i64
  %102 = shl nuw nsw i64 %101, 48
  %103 = or disjoint i64 %102, %96
  br label %104

104:                                              ; preds = %98, %89
  %105 = phi i64 [ %96, %89 ], [ %103, %98 ]
  %106 = getelementptr inbounds i8, ptr %90, i64 5
  %107 = load i8, ptr %106, align 1, !tbaa !13
  %108 = zext i8 %107 to i64
  %109 = shl nuw nsw i64 %108, 40
  %110 = or i64 %109, %105
  br label %111

111:                                              ; preds = %104, %89
  %112 = phi i64 [ %96, %89 ], [ %110, %104 ]
  %113 = getelementptr inbounds i8, ptr %90, i64 4
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, 32
  %117 = or i64 %116, %112
  br label %118

118:                                              ; preds = %111, %89
  %119 = phi i64 [ %96, %89 ], [ %117, %111 ]
  %120 = getelementptr inbounds i8, ptr %90, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = sext i32 %123 to i64
  %125 = or i64 %119, %124
  br label %126

126:                                              ; preds = %118, %89
  %127 = phi i64 [ %96, %89 ], [ %125, %118 ]
  %128 = getelementptr inbounds i8, ptr %90, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !13
  %130 = zext i8 %129 to i64
  %131 = shl nuw nsw i64 %130, 16
  %132 = or i64 %131, %127
  br label %133

133:                                              ; preds = %126, %89
  %134 = phi i64 [ %96, %89 ], [ %132, %126 ]
  %135 = getelementptr inbounds i8, ptr %90, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 8
  %139 = or i64 %138, %134
  br label %140

140:                                              ; preds = %133, %89
  %141 = phi i64 [ %96, %89 ], [ %139, %133 ]
  %142 = load i8, ptr %90, align 1, !tbaa !13
  %143 = zext i8 %142 to i64
  %144 = or i64 %141, %143
  br label %145

145:                                              ; preds = %89, %140
  %146 = phi i64 [ %96, %89 ], [ %144, %140 ]
  %147 = xor i64 %146, %95
  %148 = add i64 %93, %92
  %149 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 13)
  %150 = xor i64 %149, %148
  %151 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 32)
  %152 = add i64 %147, %94
  %153 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 16)
  %154 = xor i64 %153, %152
  %155 = add i64 %152, %150
  %156 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 17)
  %157 = xor i64 %155, %156
  %158 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 32)
  %159 = add i64 %154, %151
  %160 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 21)
  %161 = xor i64 %160, %159
  %162 = xor i64 %159, %146
  %163 = xor i64 %158, 255
  %164 = add i64 %162, %157
  %165 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 13)
  %166 = xor i64 %164, %165
  %167 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 32)
  %168 = add i64 %161, %163
  %169 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 16)
  %170 = xor i64 %169, %168
  %171 = add i64 %166, %168
  %172 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 17)
  %173 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 32)
  %174 = add i64 %170, %167
  %175 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 21)
  %176 = xor i64 %175, %174
  %177 = xor i64 %176, %172
  %178 = xor i64 %177, %173
  %179 = xor i64 %178, %171
  br label %180

180:                                              ; preds = %145, %21, %4
  %181 = phi i64 [ %20, %4 ], [ %49, %21 ], [ %179, %145 ]
  ret i64 %181
}

; Function Attrs: nounwind uwtable
define dso_local void @stbds_hmfree_func(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stbds_array_header, ptr %0, i64 -1
  %6 = getelementptr %struct.stbds_array_header, ptr %0, i64 -1, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.stbds_hash_index, ptr %7, i64 0, i32 9, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !214
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i64, ptr %5, align 8, !tbaa !206
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %21, %16 ], [ 1, %13 ]
  %18 = mul i64 %17, %1
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  tail call void @free(ptr noundef %20) #34
  %21 = add nuw i64 %17, 1
  %22 = load i64, ptr %5, align 8, !tbaa !206
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %16, label %24, !llvm.loop !217

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !tbaa !213
  br label %26

26:                                               ; preds = %24, %13, %9
  %27 = phi ptr [ %25, %24 ], [ %7, %13 ], [ %7, %9 ]
  %28 = getelementptr inbounds %struct.stbds_hash_index, ptr %27, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !218
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %26 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !219
  tail call void @free(ptr noundef nonnull %32) #34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !221

35:                                               ; preds = %31, %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %36 = load ptr, ptr %6, align 8, !tbaa !213
  br label %37

37:                                               ; preds = %35, %4
  %38 = phi ptr [ %36, %35 ], [ null, %4 ]
  tail call void @free(ptr noundef %38) #34
  tail call void @free(ptr noundef nonnull %5) #34
  br label %39

39:                                               ; preds = %2, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @stbds_strreset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  tail call void @free(ptr noundef nonnull %5) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !221

8:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @stbds_hmget_key_ts(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #23 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = shl i64 %1, 2
  %10 = add i64 %9, 32
  %11 = tail call ptr @malloc(i64 %10)
  %12 = getelementptr inbounds i8, ptr %11, i64 32
  %13 = getelementptr inbounds %struct.stbds_array_header, ptr %11, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.stbds_array_header, ptr %11, i64 0, i32 1
  store i64 4, ptr %14, align 8, !tbaa !209
  store i64 1, ptr %11, align 8, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %12, i8 0, i64 %1, i1 false)
  store i64 -1, ptr %4, align 8, !tbaa !210
  %15 = getelementptr inbounds i8, ptr %12, i64 %1
  br label %34

16:                                               ; preds = %6
  %17 = sub i64 0, %1
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %5)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.stbds_hash_index, ptr %20, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  %28 = lshr i64 %23, 3
  %29 = and i64 %23, 7
  %30 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %27, i64 %28, i32 1, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !210
  br label %32

32:                                               ; preds = %25, %22, %16
  %33 = phi i64 [ -1, %16 ], [ %31, %25 ], [ -1, %22 ]
  store i64 %33, ptr %4, align 8, !tbaa !210
  br label %34

34:                                               ; preds = %32, %8
  %35 = phi ptr [ %15, %8 ], [ %0, %32 ]
  ret ptr %35
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @stbds_hm_find_slot(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #20 {
  %7 = sub i64 0, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr %struct.stbds_array_header, ptr %8, i64 -1, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = icmp sgt i32 %5, 0
  %12 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !223
  br i1 %11, label %14, label %44

14:                                               ; preds = %6
  %15 = load i8, ptr %2, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14, %17
  %18 = phi i8 [ %25, %17 ], [ %15, %14 ]
  %19 = phi i64 [ %24, %17 ], [ %13, %14 ]
  %20 = phi ptr [ %22, %17 ], [ %2, %14 ]
  %21 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 9)
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = zext i8 %18 to i64
  %24 = add i64 %21, %23
  %25 = load i8, ptr %22, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !211

27:                                               ; preds = %17, %14
  %28 = phi i64 [ %13, %14 ], [ %24, %17 ]
  %29 = xor i64 %28, %13
  %30 = xor i64 %29, -1
  %31 = shl i64 %29, 18
  %32 = add i64 %31, %30
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 33)
  %34 = mul i64 %33, 21
  %35 = lshr i64 %34, 11
  %36 = mul i64 %33, 189151184349560832
  %37 = or disjoint i64 %35, %36
  %38 = mul i64 %37, 65
  %39 = lshr i64 %38, 22
  %40 = mul i64 %37, 285873023221760
  %41 = or disjoint i64 %39, %40
  %42 = xor i64 %41, %38
  %43 = add i64 %42, %13
  br label %46

44:                                               ; preds = %6
  %45 = tail call i64 @stbds_hash_bytes(ptr noundef %2, i64 noundef %3, i64 noundef %13)
  br label %46

46:                                               ; preds = %44, %27
  %47 = phi i64 [ %43, %27 ], [ %45, %44 ]
  %48 = icmp ult i64 %47, 2
  %49 = or disjoint i64 %47, 2
  %50 = select i1 %48, i64 %49, i64 %47
  %51 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !224
  %53 = add i64 %52, -1
  %54 = and i64 %53, %50
  %55 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !222
  %57 = getelementptr i8, ptr %0, i64 %4
  br label %58

58:                                               ; preds = %118, %46
  %59 = phi i64 [ 8, %46 ], [ %120, %118 ]
  %60 = phi i64 [ %54, %46 ], [ %121, %118 ]
  %61 = lshr i64 %60, 3
  %62 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %56, i64 %61
  %63 = and i64 %60, 7
  br label %66

64:                                               ; preds = %89
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %118, label %92

66:                                               ; preds = %58, %89
  %67 = phi i64 [ %63, %58 ], [ %90, %89 ]
  %68 = getelementptr inbounds [8 x i64], ptr %62, i64 0, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !210
  %70 = icmp eq i64 %69, %50
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %56, i64 %61, i32 1, i64 %67
  %73 = load i64, ptr %72, align 8, !tbaa !210
  %74 = mul i64 %73, %1
  %75 = getelementptr i8, ptr %57, i64 %74
  br i1 %11, label %76, label %79

76:                                               ; preds = %71
  %77 = load ptr, ptr %75, align 8, !tbaa !18
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %77) #35
  br label %81

79:                                               ; preds = %71
  %80 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %75, i64 noundef %3) #35
  br label %81

81:                                               ; preds = %76, %79
  %82 = phi i32 [ %78, %76 ], [ %80, %79 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = and i64 %60, -8
  %86 = or disjoint i64 %67, %85
  br label %122

87:                                               ; preds = %66
  %88 = icmp eq i64 %69, 0
  br i1 %88, label %122, label %89

89:                                               ; preds = %81, %87
  %90 = add nuw nsw i64 %67, 1
  %91 = icmp eq i64 %90, 8
  br i1 %91, label %64, label %66, !llvm.loop !225

92:                                               ; preds = %64, %115
  %93 = phi i64 [ %116, %115 ], [ 0, %64 ]
  %94 = getelementptr inbounds [8 x i64], ptr %62, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !210
  %96 = icmp eq i64 %95, %50
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %56, i64 %61, i32 1, i64 %93
  %99 = load i64, ptr %98, align 8, !tbaa !210
  %100 = mul i64 %99, %1
  %101 = getelementptr i8, ptr %57, i64 %100
  br i1 %11, label %102, label %105

102:                                              ; preds = %97
  %103 = load ptr, ptr %101, align 8, !tbaa !18
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %103) #35
  br label %107

105:                                              ; preds = %97
  %106 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %101, i64 noundef %3) #35
  br label %107

107:                                              ; preds = %102, %105
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = and i64 %60, -8
  %112 = add nuw i64 %93, %111
  br label %122

113:                                              ; preds = %92
  %114 = icmp eq i64 %95, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %107, %113
  %116 = add nuw nsw i64 %93, 1
  %117 = icmp eq i64 %116, %63
  br i1 %117, label %118, label %92, !llvm.loop !226

118:                                              ; preds = %115, %64
  %119 = add i64 %60, %59
  %120 = add i64 %59, 8
  %121 = and i64 %119, %53
  br label %58

122:                                              ; preds = %87, %113, %110, %84
  %123 = phi i64 [ %86, %84 ], [ %112, %110 ], [ -1, %113 ], [ -1, %87 ]
  ret i64 %123
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @stbds_hmget_key(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #23 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = shl i64 %1, 2
  %9 = add i64 %8, 32
  %10 = tail call ptr @malloc(i64 %9)
  %11 = getelementptr inbounds i8, ptr %10, i64 32
  %12 = getelementptr inbounds %struct.stbds_array_header, ptr %10, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.stbds_array_header, ptr %10, i64 0, i32 1
  store i64 4, ptr %13, align 8, !tbaa !209
  store i64 1, ptr %10, align 8, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %1, i1 false)
  %14 = getelementptr inbounds i8, ptr %11, i64 %1
  %15 = sub i64 0, %1
  br label %32

16:                                               ; preds = %5
  %17 = sub i64 0, %1
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %4)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.stbds_hash_index, ptr %20, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  %28 = lshr i64 %23, 3
  %29 = and i64 %23, 7
  %30 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %27, i64 %28, i32 1, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !210
  br label %32

32:                                               ; preds = %16, %22, %25, %7
  %33 = phi i64 [ %17, %16 ], [ %17, %22 ], [ %17, %25 ], [ %15, %7 ]
  %34 = phi i64 [ -1, %16 ], [ -1, %22 ], [ %31, %25 ], [ -1, %7 ]
  %35 = phi ptr [ %0, %16 ], [ %0, %22 ], [ %0, %25 ], [ %14, %7 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 %33
  %37 = getelementptr %struct.stbds_array_header, ptr %36, i64 -1, i32 3
  store i64 %34, ptr %37, align 8, !tbaa !227
  ret ptr %35
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local ptr @stbds_hmput_default(ptr noundef %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp eq ptr %0, null
  %4 = sub i64 0, %1
  br i1 %3, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 %4
  %7 = getelementptr inbounds %struct.stbds_array_header, ptr %6, i64 -1
  %8 = load i64, ptr %7, align 8, !tbaa !206
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2, %5
  %11 = getelementptr inbounds i8, ptr %0, i64 %4
  %12 = select i1 %3, ptr null, ptr %11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stbds_array_header, ptr %12, i64 -1
  %16 = load i64, ptr %15, align 8, !tbaa !206
  %17 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  %18 = getelementptr %struct.stbds_array_header, ptr %12, i64 -1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !209
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = shl i64 %19, 1
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %10, %21
  %25 = phi i64 [ %17, %21 ], [ 1, %10 ]
  %26 = tail call i64 @llvm.umax.i64(i64 %25, i64 4)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i64 [ %26, %24 ], [ %22, %21 ]
  %29 = getelementptr inbounds %struct.stbds_array_header, ptr %12, i64 -1
  %30 = select i1 %13, ptr null, ptr %29
  %31 = mul i64 %28, %1
  %32 = add i64 %31, 32
  %33 = tail call ptr @realloc(ptr noundef %30, i64 noundef %32) #36
  %34 = getelementptr inbounds i8, ptr %33, i64 32
  br i1 %13, label %35, label %37

35:                                               ; preds = %27
  store i64 0, ptr %33, align 8, !tbaa !206
  %36 = getelementptr inbounds %struct.stbds_array_header, ptr %33, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %35, %27
  %38 = getelementptr inbounds %struct.stbds_array_header, ptr %33, i64 0, i32 1
  store i64 %28, ptr %38, align 8, !tbaa !209
  br label %39

39:                                               ; preds = %14, %37
  %40 = phi ptr [ %34, %37 ], [ %11, %14 ]
  %41 = getelementptr inbounds %struct.stbds_array_header, ptr %40, i64 -1
  %42 = load i64, ptr %41, align 8, !tbaa !206
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr align 1 %40, i8 0, i64 %1, i1 false)
  %44 = getelementptr inbounds i8, ptr %40, i64 %1
  br label %45

45:                                               ; preds = %39, %5
  %46 = phi ptr [ %44, %39 ], [ %0, %5 ]
  ret ptr %46
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stbds_hmput_key(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = shl i64 %1, 2
  %9 = add i64 %8, 32
  %10 = tail call ptr @malloc(i64 %9)
  %11 = getelementptr inbounds i8, ptr %10, i64 32
  %12 = getelementptr inbounds %struct.stbds_array_header, ptr %10, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.stbds_array_header, ptr %10, i64 0, i32 1
  store i64 4, ptr %13, align 8, !tbaa !209
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 0, i64 %1, i1 false)
  store i64 1, ptr %10, align 8, !tbaa !206
  %14 = getelementptr inbounds i8, ptr %11, i64 %1
  br label %15

15:                                               ; preds = %7, %5
  %16 = phi ptr [ %14, %7 ], [ %0, %5 ]
  %17 = sub i64 0, %1
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.stbds_array_header, ptr %18, i64 -1
  %20 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.stbds_hash_index, ptr %21, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !228
  %26 = getelementptr inbounds %struct.stbds_hash_index, ptr %21, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !229
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.stbds_hash_index, ptr %21, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !224
  %32 = shl i64 %31, 1
  %33 = tail call fastcc ptr @stbds_make_hash_index(i64 noundef %32, ptr noundef nonnull %21)
  tail call void @free(ptr noundef nonnull %21) #34
  br label %39

34:                                               ; preds = %15
  %35 = tail call fastcc ptr @stbds_make_hash_index(i64 noundef 8, ptr noundef null)
  %36 = icmp sgt i32 %4, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.stbds_hash_index, ptr %35, i64 0, i32 9, i32 3
  store i8 %37, ptr %38, align 1, !tbaa !214
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi ptr [ %35, %34 ], [ %33, %29 ]
  store ptr %40, ptr %20, align 8, !tbaa !213
  br label %41

41:                                               ; preds = %39, %23
  %42 = phi ptr [ %40, %39 ], [ %21, %23 ]
  %43 = icmp sgt i32 %4, 0
  %44 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !223
  br i1 %43, label %46, label %76

46:                                               ; preds = %41
  %47 = load i8, ptr %2, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46, %49
  %50 = phi i8 [ %57, %49 ], [ %47, %46 ]
  %51 = phi i64 [ %56, %49 ], [ %45, %46 ]
  %52 = phi ptr [ %54, %49 ], [ %2, %46 ]
  %53 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 9)
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  %55 = zext i8 %50 to i64
  %56 = add i64 %53, %55
  %57 = load i8, ptr %54, align 1, !tbaa !13
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %49, !llvm.loop !211

59:                                               ; preds = %49, %46
  %60 = phi i64 [ %45, %46 ], [ %56, %49 ]
  %61 = xor i64 %60, %45
  %62 = xor i64 %61, -1
  %63 = shl i64 %61, 18
  %64 = add i64 %63, %62
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 33)
  %66 = mul i64 %65, 21
  %67 = lshr i64 %66, 11
  %68 = mul i64 %65, 189151184349560832
  %69 = or disjoint i64 %67, %68
  %70 = mul i64 %69, 65
  %71 = lshr i64 %70, 22
  %72 = mul i64 %69, 285873023221760
  %73 = or disjoint i64 %71, %72
  %74 = xor i64 %73, %70
  %75 = add i64 %74, %45
  br label %78

76:                                               ; preds = %41
  %77 = tail call i64 @stbds_hash_bytes(ptr noundef %2, i64 noundef %3, i64 noundef %45)
  br label %78

78:                                               ; preds = %76, %59
  %79 = phi i64 [ %75, %59 ], [ %77, %76 ]
  %80 = icmp ult i64 %79, 2
  %81 = or disjoint i64 %79, 2
  %82 = select i1 %80, i64 %81, i64 %79
  %83 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !224
  %85 = add i64 %84, -1
  %86 = and i64 %85, %82
  %87 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 10
  %88 = load ptr, ptr %87, align 8, !tbaa !222
  br label %89

89:                                               ; preds = %178, %78
  %90 = phi i64 [ 8, %78 ], [ %181, %178 ]
  %91 = phi i64 [ %86, %78 ], [ %182, %178 ]
  %92 = phi i64 [ -1, %78 ], [ %179, %178 ]
  %93 = lshr i64 %91, 3
  %94 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %88, i64 %93
  %95 = and i64 %91, 7
  %96 = and i64 %91, -8
  br label %99

97:                                               ; preds = %137
  %98 = icmp eq i64 %95, 0
  br i1 %98, label %178, label %141

99:                                               ; preds = %89, %137
  %100 = phi i64 [ %95, %89 ], [ %139, %137 ]
  %101 = phi i64 [ %92, %89 ], [ %138, %137 ]
  %102 = getelementptr inbounds [8 x i64], ptr %94, i64 0, i64 %100
  %103 = load i64, ptr %102, align 8, !tbaa !210
  %104 = icmp eq i64 %103, %82
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %88, i64 %93, i32 1, i64 %100
  %107 = load i64, ptr %106, align 8, !tbaa !210
  %108 = mul i64 %107, %1
  %109 = getelementptr inbounds i8, ptr %16, i64 %108
  br i1 %43, label %110, label %114

110:                                              ; preds = %105
  %111 = load ptr, ptr %109, align 8, !tbaa !18
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %111) #35
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %137

114:                                              ; preds = %105
  %115 = tail call i32 @bcmp(ptr %2, ptr %109, i64 %3)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 3
  store i64 %107, ptr %118, align 8, !tbaa !227
  br label %264

119:                                              ; preds = %110
  %120 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 3
  store i64 %107, ptr %120, align 8, !tbaa !227
  %121 = load i64, ptr %106, align 8, !tbaa !210
  %122 = mul i64 %121, %1
  %123 = getelementptr inbounds i8, ptr %16, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !18
  store ptr %124, ptr %42, align 8, !tbaa !18
  br label %264

125:                                              ; preds = %99
  %126 = icmp eq i64 %103, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %125
  %128 = or disjoint i64 %100, %96
  br label %183

129:                                              ; preds = %125
  %130 = icmp slt i64 %101, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %88, i64 %93, i32 1, i64 %100
  %133 = load i64, ptr %132, align 8, !tbaa !210
  %134 = icmp eq i64 %133, -2
  %135 = or disjoint i64 %100, %96
  %136 = select i1 %134, i64 %135, i64 %101
  br label %137

137:                                              ; preds = %131, %114, %110, %129
  %138 = phi i64 [ %101, %110 ], [ %101, %129 ], [ %101, %114 ], [ %136, %131 ]
  %139 = add nuw nsw i64 %100, 1
  %140 = icmp eq i64 %139, 8
  br i1 %140, label %97, label %99, !llvm.loop !230

141:                                              ; preds = %97, %174
  %142 = phi i64 [ %176, %174 ], [ 0, %97 ]
  %143 = phi i64 [ %175, %174 ], [ %138, %97 ]
  %144 = getelementptr inbounds [8 x i64], ptr %94, i64 0, i64 %142
  %145 = load i64, ptr %144, align 8, !tbaa !210
  %146 = icmp eq i64 %145, %82
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %88, i64 %93, i32 1, i64 %142
  %149 = load i64, ptr %148, align 8, !tbaa !210
  %150 = mul i64 %149, %1
  %151 = getelementptr inbounds i8, ptr %16, i64 %150
  br i1 %43, label %152, label %155

152:                                              ; preds = %147
  %153 = load ptr, ptr %151, align 8, !tbaa !18
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %153) #35
  br label %157

155:                                              ; preds = %147
  %156 = tail call i32 @memcmp(ptr noundef %2, ptr noundef %151, i64 noundef %3) #35
  br label %157

157:                                              ; preds = %152, %155
  %158 = phi i32 [ %154, %152 ], [ %156, %155 ]
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 3
  store i64 %149, ptr %161, align 8, !tbaa !227
  br label %264

162:                                              ; preds = %141
  %163 = icmp eq i64 %145, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = add nuw i64 %142, %96
  br label %183

166:                                              ; preds = %162
  %167 = icmp slt i64 %143, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %88, i64 %93, i32 1, i64 %142
  %170 = load i64, ptr %169, align 8, !tbaa !210
  %171 = icmp eq i64 %170, -2
  %172 = add nuw nsw i64 %142, %96
  %173 = select i1 %171, i64 %172, i64 %143
  br label %174

174:                                              ; preds = %168, %157, %166
  %175 = phi i64 [ %143, %157 ], [ %143, %166 ], [ %173, %168 ]
  %176 = add nuw nsw i64 %142, 1
  %177 = icmp eq i64 %176, %95
  br i1 %177, label %178, label %141, !llvm.loop !231

178:                                              ; preds = %174, %97
  %179 = phi i64 [ %138, %97 ], [ %175, %174 ]
  %180 = add i64 %91, %90
  %181 = add i64 %90, 8
  %182 = and i64 %180, %85
  br label %89

183:                                              ; preds = %127, %164
  %184 = phi i64 [ %165, %164 ], [ %128, %127 ]
  %185 = phi i64 [ %143, %164 ], [ %101, %127 ]
  %186 = icmp sgt i64 %185, -1
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 5
  %189 = load i64, ptr %188, align 8, !tbaa !232
  %190 = add i64 %189, -1
  store i64 %190, ptr %188, align 8, !tbaa !232
  br label %191

191:                                              ; preds = %187, %183
  %192 = phi i64 [ %185, %187 ], [ %184, %183 ]
  %193 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 2
  %194 = load i64, ptr %193, align 8, !tbaa !228
  %195 = add i64 %194, 1
  store i64 %195, ptr %193, align 8, !tbaa !228
  %196 = icmp eq ptr %16, null
  br i1 %196, label %211, label %197

197:                                              ; preds = %191
  %198 = load i64, ptr %19, align 8, !tbaa !206
  %199 = add i64 %198, 1
  %200 = getelementptr %struct.stbds_array_header, ptr %18, i64 -1, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !209
  %202 = icmp ugt i64 %199, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %197
  %204 = shl i64 %201, 1
  %205 = icmp ult i64 %199, %204
  %206 = tail call i64 @llvm.umax.i64(i64 %199, i64 4)
  %207 = select i1 %205, i64 %204, i64 %206
  %208 = mul i64 %207, %1
  %209 = add i64 %208, 32
  %210 = tail call ptr @realloc(ptr noundef nonnull %19, i64 noundef %209) #36
  br label %216

211:                                              ; preds = %191
  %212 = shl i64 %1, 2
  %213 = add i64 %212, 32
  %214 = tail call ptr @malloc(i64 %213)
  store i64 0, ptr %214, align 8, !tbaa !206
  %215 = getelementptr inbounds %struct.stbds_array_header, ptr %214, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %215, i8 0, i64 16, i1 false)
  br label %216

216:                                              ; preds = %203, %211
  %217 = phi ptr [ %210, %203 ], [ %214, %211 ]
  %218 = phi i64 [ %199, %203 ], [ 1, %211 ]
  %219 = phi i64 [ %198, %203 ], [ 0, %211 ]
  %220 = phi i64 [ %207, %203 ], [ 4, %211 ]
  %221 = getelementptr inbounds i8, ptr %217, i64 32
  %222 = getelementptr inbounds %struct.stbds_array_header, ptr %217, i64 0, i32 1
  store i64 %220, ptr %222, align 8, !tbaa !209
  %223 = load ptr, ptr %87, align 8, !tbaa !222
  br label %224

224:                                              ; preds = %216, %197
  %225 = phi ptr [ %88, %197 ], [ %223, %216 ]
  %226 = phi i64 [ %198, %197 ], [ %219, %216 ]
  %227 = phi i64 [ %199, %197 ], [ %218, %216 ]
  %228 = phi ptr [ %18, %197 ], [ %221, %216 ]
  %229 = getelementptr inbounds %struct.stbds_array_header, ptr %228, i64 -1
  store i64 %227, ptr %229, align 8, !tbaa !206
  %230 = lshr i64 %192, 3
  %231 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %225, i64 %230
  %232 = and i64 %192, 7
  %233 = getelementptr inbounds [8 x i64], ptr %231, i64 0, i64 %232
  store i64 %82, ptr %233, align 8, !tbaa !210
  %234 = add nsw i64 %226, -1
  %235 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %225, i64 %230, i32 1, i64 %232
  store i64 %234, ptr %235, align 8, !tbaa !210
  %236 = getelementptr %struct.stbds_array_header, ptr %228, i64 -1, i32 3
  store i64 %234, ptr %236, align 8, !tbaa !227
  %237 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 9, i32 3
  %238 = load i8, ptr %237, align 1, !tbaa !214
  switch i8 %238, label %259 [
    i8 2, label %239
    i8 3, label %247
    i8 1, label %254
  ]

239:                                              ; preds = %224
  %240 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35
  %241 = add i64 %240, 1
  %242 = tail call noalias noundef ptr @malloc(i64 %241)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %242, ptr align 1 %2, i64 %241, i1 false)
  %243 = mul i64 %226, %1
  %244 = getelementptr inbounds i8, ptr %228, i64 %243
  store ptr %242, ptr %244, align 8, !tbaa !18
  %245 = getelementptr %struct.stbds_array_header, ptr %228, i64 -1, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !213
  store ptr %242, ptr %246, align 8, !tbaa !18
  br label %262

247:                                              ; preds = %224
  %248 = getelementptr inbounds %struct.stbds_hash_index, ptr %42, i64 0, i32 9
  %249 = tail call ptr @stbds_stralloc(ptr noundef nonnull %248, ptr noundef %2)
  %250 = mul i64 %226, %1
  %251 = getelementptr inbounds i8, ptr %228, i64 %250
  store ptr %249, ptr %251, align 8, !tbaa !18
  %252 = getelementptr %struct.stbds_array_header, ptr %228, i64 -1, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !213
  store ptr %249, ptr %253, align 8, !tbaa !18
  br label %262

254:                                              ; preds = %224
  %255 = mul i64 %226, %1
  %256 = getelementptr inbounds i8, ptr %228, i64 %255
  store ptr %2, ptr %256, align 8, !tbaa !18
  %257 = getelementptr %struct.stbds_array_header, ptr %228, i64 -1, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !213
  store ptr %2, ptr %258, align 8, !tbaa !18
  br label %262

259:                                              ; preds = %224
  %260 = mul i64 %226, %1
  %261 = getelementptr inbounds i8, ptr %228, i64 %260
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %261, ptr align 1 %2, i64 %3, i1 false)
  br label %262

262:                                              ; preds = %259, %254, %247, %239
  %263 = getelementptr inbounds i8, ptr %228, i64 %1
  br label %264

264:                                              ; preds = %117, %119, %160, %262
  %265 = phi ptr [ %263, %262 ], [ %16, %160 ], [ %16, %119 ], [ %16, %117 ]
  ret ptr %265
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef ptr @stbds_make_hash_index(i64 noundef %0, ptr noundef readonly %1) unnamed_addr #23 {
  %3 = lshr i64 %0, 3
  %4 = shl i64 %3, 7
  %5 = add i64 %4, 167
  %6 = tail call ptr @malloc(i64 %5)
  %7 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 1
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %8, 63
  %10 = and i64 %9, -64
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 10
  store ptr %11, ptr %12, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 1
  store i64 %0, ptr %13, align 8, !tbaa !224
  %14 = icmp ugt i64 %0, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2, %15
  %16 = phi i64 [ %19, %15 ], [ 0, %2 ]
  %17 = phi i64 [ %18, %15 ], [ %0, %2 ]
  %18 = lshr i64 %17, 1
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp ugt i64 %17, 3
  br i1 %20, label %15, label %21, !llvm.loop !233

21:                                               ; preds = %15, %2
  %22 = phi i64 [ 0, %2 ], [ %19, %15 ]
  %23 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 8
  store i64 %22, ptr %23, align 8, !tbaa !234
  %24 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 5
  store i64 0, ptr %24, align 8, !tbaa !232
  %25 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 2
  store i64 0, ptr %25, align 8, !tbaa !228
  %26 = lshr i64 %0, 2
  %27 = sub i64 %0, %26
  %28 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 3
  store i64 %27, ptr %28, align 8, !tbaa !229
  %29 = lshr i64 %0, 4
  %30 = add nuw nsw i64 %3, %29
  %31 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 6
  store i64 %30, ptr %31, align 8, !tbaa !235
  %32 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 4
  %33 = icmp ult i64 %0, 9
  %34 = select i1 %33, i64 0, i64 %26
  store i64 %34, ptr %32, align 8, !tbaa !236
  %35 = icmp eq ptr %1, null
  %36 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 9
  br i1 %35, label %41, label %37

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.stbds_hash_index, ptr %1, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !tbaa.struct !237
  %39 = getelementptr inbounds %struct.stbds_hash_index, ptr %1, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !223
  br label %45

41:                                               ; preds = %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %42 = load i64, ptr @stbds_hash_seed, align 8, !tbaa !210
  %43 = mul i64 %42, 2862933555777941757
  %44 = add i64 %43, 3037000493
  store i64 %44, ptr @stbds_hash_seed, align 8, !tbaa !210
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %42, %41 ], [ %40, %37 ]
  %47 = getelementptr inbounds %struct.stbds_hash_index, ptr %6, i64 0, i32 7
  store i64 %46, ptr %47, align 8
  %48 = icmp ult i64 %0, 8
  br i1 %48, label %93, label %49

49:                                               ; preds = %45
  %50 = add nsw i64 %3, -1
  %51 = and i64 %3, 3
  %52 = icmp ult i64 %50, 3
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = and i64 %3, 2305843009213693948
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %77, %55 ]
  %57 = phi i64 [ 0, %53 ], [ %78, %55 ]
  %58 = shl i64 %56, 7
  %59 = or disjoint i64 %58, 64
  %60 = getelementptr i8, ptr %11, i64 %59
  %61 = getelementptr i8, ptr %11, i64 %58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %61, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %60, i8 -1, i64 64, i1 false), !tbaa !210
  %62 = shl i64 %56, 7
  %63 = or disjoint i64 %62, 128
  %64 = or disjoint i64 %62, 192
  %65 = getelementptr i8, ptr %11, i64 %64
  %66 = getelementptr i8, ptr %11, i64 %63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %66, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %65, i8 -1, i64 64, i1 false), !tbaa !210
  %67 = shl i64 %56, 7
  %68 = or disjoint i64 %67, 256
  %69 = or disjoint i64 %67, 320
  %70 = getelementptr i8, ptr %11, i64 %69
  %71 = getelementptr i8, ptr %11, i64 %68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %71, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %70, i8 -1, i64 64, i1 false), !tbaa !210
  %72 = shl i64 %56, 7
  %73 = or disjoint i64 %72, 384
  %74 = or disjoint i64 %72, 448
  %75 = getelementptr i8, ptr %11, i64 %74
  %76 = getelementptr i8, ptr %11, i64 %73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %76, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %75, i8 -1, i64 64, i1 false), !tbaa !210
  %77 = add nuw nsw i64 %56, 4
  %78 = add i64 %57, 4
  %79 = icmp eq i64 %78, %54
  br i1 %79, label %80, label %55, !llvm.loop !238

80:                                               ; preds = %55, %49
  %81 = phi i64 [ 0, %49 ], [ %77, %55 ]
  %82 = icmp eq i64 %51, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ %90, %83 ], [ %81, %80 ]
  %85 = phi i64 [ %91, %83 ], [ 0, %80 ]
  %86 = shl i64 %84, 7
  %87 = or disjoint i64 %86, 64
  %88 = getelementptr i8, ptr %11, i64 %87
  %89 = getelementptr i8, ptr %11, i64 %86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %89, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %88, i8 -1, i64 64, i1 false), !tbaa !210
  %90 = add nuw nsw i64 %84, 1
  %91 = add i64 %85, 1
  %92 = icmp eq i64 %91, %51
  br i1 %92, label %93, label %83, !llvm.loop !239

93:                                               ; preds = %80, %83, %45
  br i1 %35, label %232, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.stbds_hash_index, ptr %1, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !228
  store i64 %96, ptr %25, align 8, !tbaa !228
  %97 = getelementptr inbounds %struct.stbds_hash_index, ptr %1, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !224
  %99 = icmp ult i64 %98, 8
  br i1 %99, label %232, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.stbds_hash_index, ptr %1, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !222
  br label %103

103:                                              ; preds = %100, %227
  %104 = phi i64 [ 0, %100 ], [ %228, %227 ]
  %105 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %102, i64 %104
  br label %106

106:                                              ; preds = %103, %224
  %107 = phi i64 [ 0, %103 ], [ %225, %224 ]
  %108 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %102, i64 %104, i32 1, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !210
  %110 = icmp sgt i64 %109, -1
  br i1 %110, label %111, label %224

111:                                              ; preds = %106
  %112 = getelementptr inbounds [8 x i64], ptr %105, i64 0, i64 %107
  %113 = load i64, ptr %112, align 8, !tbaa !210
  %114 = load i64, ptr %13, align 8, !tbaa !224
  %115 = add i64 %114, -1
  br label %116

116:                                              ; preds = %216, %111
  %117 = phi i64 [ %113, %111 ], [ %217, %216 ]
  %118 = phi i64 [ 8, %111 ], [ %218, %216 ]
  %119 = and i64 %115, %117
  %120 = lshr i64 %119, 3
  %121 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %11, i64 %120
  %122 = and i64 %119, 7
  %123 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !210
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %219, label %128

126:                                              ; preds = %173, %170, %163, %156, %149, %142, %135, %128
  %127 = icmp eq i64 %122, 0
  br i1 %127, label %216, label %177

128:                                              ; preds = %116
  %129 = add nuw nsw i64 %122, 1
  %130 = icmp eq i64 %129, 8
  br i1 %130, label %126, label %131, !llvm.loop !240

131:                                              ; preds = %128
  %132 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %129
  %133 = load i64, ptr %132, align 8, !tbaa !210
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %219, label %135

135:                                              ; preds = %131
  %136 = add nuw nsw i64 %122, 2
  %137 = icmp eq i64 %136, 8
  br i1 %137, label %126, label %138, !llvm.loop !240

138:                                              ; preds = %135
  %139 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %136
  %140 = load i64, ptr %139, align 8, !tbaa !210
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %219, label %142

142:                                              ; preds = %138
  %143 = add nuw nsw i64 %122, 3
  %144 = icmp eq i64 %143, 8
  br i1 %144, label %126, label %145, !llvm.loop !240

145:                                              ; preds = %142
  %146 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %143
  %147 = load i64, ptr %146, align 8, !tbaa !210
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %219, label %149

149:                                              ; preds = %145
  %150 = add nuw nsw i64 %122, 4
  %151 = icmp eq i64 %150, 8
  br i1 %151, label %126, label %152, !llvm.loop !240

152:                                              ; preds = %149
  %153 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %150
  %154 = load i64, ptr %153, align 8, !tbaa !210
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %219, label %156

156:                                              ; preds = %152
  %157 = add nuw nsw i64 %122, 5
  %158 = icmp eq i64 %157, 8
  br i1 %158, label %126, label %159, !llvm.loop !240

159:                                              ; preds = %156
  %160 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %157
  %161 = load i64, ptr %160, align 8, !tbaa !210
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %219, label %163

163:                                              ; preds = %159
  %164 = add nuw nsw i64 %122, 6
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %126, label %166, !llvm.loop !240

166:                                              ; preds = %163
  %167 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %164
  %168 = load i64, ptr %167, align 8, !tbaa !210
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %219, label %170

170:                                              ; preds = %166
  %171 = add nuw nsw i64 %122, 7
  %172 = icmp eq i64 %171, 8
  br i1 %172, label %126, label %173, !llvm.loop !240

173:                                              ; preds = %170
  %174 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %171
  %175 = load i64, ptr %174, align 8, !tbaa !210
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %219, label %126

177:                                              ; preds = %126
  %178 = load i64, ptr %121, align 64, !tbaa !210
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %219, label %180

180:                                              ; preds = %177
  %181 = icmp eq i64 %122, 1
  br i1 %181, label %216, label %182, !llvm.loop !241

182:                                              ; preds = %180
  %183 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 1
  %184 = load i64, ptr %183, align 8, !tbaa !210
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %219, label %186

186:                                              ; preds = %182
  %187 = icmp eq i64 %122, 2
  br i1 %187, label %216, label %188, !llvm.loop !241

188:                                              ; preds = %186
  %189 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 2
  %190 = load i64, ptr %189, align 16, !tbaa !210
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %219, label %192

192:                                              ; preds = %188
  %193 = icmp eq i64 %122, 3
  br i1 %193, label %216, label %194, !llvm.loop !241

194:                                              ; preds = %192
  %195 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 3
  %196 = load i64, ptr %195, align 8, !tbaa !210
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %194
  %199 = icmp eq i64 %122, 4
  br i1 %199, label %216, label %200, !llvm.loop !241

200:                                              ; preds = %198
  %201 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 4
  %202 = load i64, ptr %201, align 32, !tbaa !210
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %219, label %204

204:                                              ; preds = %200
  %205 = icmp eq i64 %122, 5
  br i1 %205, label %216, label %206, !llvm.loop !241

206:                                              ; preds = %204
  %207 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 5
  %208 = load i64, ptr %207, align 8, !tbaa !210
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %206
  %211 = icmp eq i64 %122, 6
  br i1 %211, label %216, label %212, !llvm.loop !241

212:                                              ; preds = %210
  %213 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 6
  %214 = load i64, ptr %213, align 16, !tbaa !210
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %180, %186, %192, %198, %204, %210, %212, %126
  %217 = add i64 %118, %119
  %218 = add i64 %118, 8
  br label %116

219:                                              ; preds = %116, %131, %138, %145, %152, %159, %166, %173, %177, %182, %188, %194, %200, %206, %212
  %220 = phi i64 [ 0, %177 ], [ 1, %182 ], [ 2, %188 ], [ 3, %194 ], [ 4, %200 ], [ 5, %206 ], [ 6, %212 ], [ %122, %116 ], [ %129, %131 ], [ %136, %138 ], [ %143, %145 ], [ %150, %152 ], [ %157, %159 ], [ %164, %166 ], [ %171, %173 ]
  %221 = getelementptr inbounds [8 x i64], ptr %121, i64 0, i64 %220
  store i64 %113, ptr %221, align 8, !tbaa !210
  %222 = load i64, ptr %108, align 8, !tbaa !210
  %223 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %11, i64 %120, i32 1, i64 %220
  store i64 %222, ptr %223, align 8, !tbaa !210
  br label %224

224:                                              ; preds = %219, %106
  %225 = add nuw nsw i64 %107, 1
  %226 = icmp eq i64 %225, 8
  br i1 %226, label %227, label %106, !llvm.loop !242

227:                                              ; preds = %224
  %228 = add nuw nsw i64 %104, 1
  %229 = load i64, ptr %97, align 8, !tbaa !224
  %230 = lshr i64 %229, 3
  %231 = icmp ult i64 %228, %230
  br i1 %231, label %103, label %232, !llvm.loop !243

232:                                              ; preds = %227, %94, %93
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local nonnull ptr @stbds_stralloc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #24 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %4 = add i64 %3, 1
  %5 = getelementptr inbounds %struct.stbds_string_arena, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !244
  %7 = icmp ugt i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !218
  br label %34

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stbds_string_arena, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !245
  %13 = lshr i8 %12, 1
  %14 = zext nneg i8 %13 to i64
  %15 = shl i64 512, %14
  %16 = icmp ult i64 %15, 1048576
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = add i8 %12, 1
  store i8 %18, ptr %11, align 8, !tbaa !245
  br label %19

19:                                               ; preds = %17, %10
  %20 = icmp ugt i64 %4, %15
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = add i64 %3, 9
  %23 = tail call ptr @malloc(i64 %22)
  %24 = getelementptr inbounds %struct.stbds_string_block, ptr %23, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %24, ptr align 1 %1, i64 %4, i1 false)
  %25 = load ptr, ptr %0, align 8, !tbaa !218
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %25, align 8, !tbaa !219
  store ptr %28, ptr %23, align 8, !tbaa !219
  store ptr %23, ptr %25, align 8, !tbaa !219
  br label %42

29:                                               ; preds = %21
  store ptr null, ptr %23, align 8, !tbaa !219
  store ptr %23, ptr %0, align 8, !tbaa !218
  store i64 0, ptr %5, align 8, !tbaa !244
  br label %42

30:                                               ; preds = %19
  %31 = or disjoint i64 %15, 8
  %32 = tail call ptr @malloc(i64 %31)
  %33 = load ptr, ptr %0, align 8, !tbaa !218
  store ptr %33, ptr %32, align 8, !tbaa !219
  store ptr %32, ptr %0, align 8, !tbaa !218
  br label %34

34:                                               ; preds = %8, %30
  %35 = phi i64 [ %6, %8 ], [ %15, %30 ]
  %36 = phi ptr [ %9, %8 ], [ %32, %30 ]
  %37 = getelementptr inbounds %struct.stbds_string_block, ptr %36, i64 0, i32 1
  %38 = getelementptr inbounds i8, ptr %37, i64 %35
  %39 = xor i64 %3, -1
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = sub i64 %35, %4
  store i64 %41, ptr %5, align 8, !tbaa !244
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %1, i64 %4, i1 false)
  br label %42

42:                                               ; preds = %29, %27, %34
  %43 = phi ptr [ %40, %34 ], [ %24, %27 ], [ %24, %29 ]
  ret ptr %43
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable
define dso_local noalias nonnull ptr @stbds_shmode_func(i64 noundef %0, i32 noundef %1) local_unnamed_addr #25 {
  %3 = shl i64 %0, 2
  %4 = add i64 %3, 32
  %5 = tail call ptr @malloc(i64 %4)
  %6 = getelementptr inbounds i8, ptr %5, i64 32
  %7 = getelementptr %struct.stbds_array_header, ptr %5, i64 0, i32 2
  %8 = getelementptr %struct.stbds_array_header, ptr %5, i64 0, i32 3
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.stbds_array_header, ptr %5, i64 0, i32 1
  store i64 4, ptr %9, align 8, !tbaa !209
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %6, i8 0, i64 %0, i1 false)
  store i64 1, ptr %5, align 8, !tbaa !206
  %10 = tail call dereferenceable_or_null(295) ptr @malloc(i64 295)
  %11 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 1
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %12, 63
  %14 = and i64 %13, -64
  %15 = inttoptr i64 %14 to ptr
  %16 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 10
  store ptr %15, ptr %16, align 8, !tbaa !222
  %17 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 1
  store i64 8, ptr %17, align 8, !tbaa !224
  %18 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 8
  store i64 3, ptr %18, align 8, !tbaa !234
  %19 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 5
  store i64 0, ptr %19, align 8, !tbaa !232
  %20 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 2
  store i64 0, ptr %20, align 8, !tbaa !228
  %21 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 3
  store i64 6, ptr %21, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 6
  store i64 1, ptr %22, align 8, !tbaa !235
  %23 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 4
  store i64 0, ptr %23, align 8, !tbaa !236
  %24 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %25 = load i64, ptr @stbds_hash_seed, align 8, !tbaa !210
  %26 = mul i64 %25, 2862933555777941757
  %27 = add i64 %26, 3037000493
  store i64 %27, ptr @stbds_hash_seed, align 8, !tbaa !210
  %28 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 7
  store i64 %25, ptr %28, align 8
  %29 = getelementptr i8, ptr %15, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %15, i8 0, i64 64, i1 false), !tbaa !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %29, i8 -1, i64 64, i1 false), !tbaa !210
  store ptr %10, ptr %7, align 8, !tbaa !213
  %30 = trunc i32 %1 to i8
  %31 = getelementptr inbounds %struct.stbds_hash_index, ptr %10, i64 0, i32 9, i32 3
  store i8 %30, ptr %31, align 1, !tbaa !214
  %32 = getelementptr inbounds i8, ptr %6, i64 %0
  ret ptr %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @stbds_hmdel_key(ptr noundef returned %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %6
  %9 = sub i64 0, %1
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds %struct.stbds_array_header, ptr %10, i64 -1
  %12 = getelementptr %struct.stbds_array_header, ptr %10, i64 -1, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr %struct.stbds_array_header, ptr %10, i64 -1, i32 3
  store i64 0, ptr %14, align 8, !tbaa !227
  %15 = icmp eq ptr %13, null
  br i1 %15, label %94, label %16

16:                                               ; preds = %8
  %17 = tail call fastcc i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %94, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !222
  %22 = lshr i64 %17, 3
  %23 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %21, i64 %22
  %24 = and i64 %17, 7
  %25 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %21, i64 %22, i32 1, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !210
  %27 = load i64, ptr %11, align 8, !tbaa !206
  %28 = add nsw i64 %27, -2
  %29 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !228
  %31 = add i64 %30, -1
  store i64 %31, ptr %29, align 8, !tbaa !228
  %32 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !232
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !232
  store i64 1, ptr %14, align 8, !tbaa !227
  %35 = getelementptr inbounds [8 x i64], ptr %23, i64 0, i64 %24
  store i64 1, ptr %35, align 8, !tbaa !210
  store i64 -2, ptr %25, align 8, !tbaa !210
  %36 = icmp eq i32 %5, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 9, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !214
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = mul i64 %26, %1
  %43 = getelementptr inbounds i8, ptr %0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !18
  tail call void @free(ptr noundef %44) #34
  br label %45

45:                                               ; preds = %41, %37
  %46 = icmp eq i64 %26, %28
  br i1 %46, label %70, label %56

47:                                               ; preds = %19
  %48 = icmp eq i64 %26, %28
  br i1 %48, label %70, label %49

49:                                               ; preds = %47
  %50 = mul i64 %26, %1
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = mul i64 %28, %1
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %51, ptr nonnull align 1 %53, i64 %1, i1 false)
  %54 = getelementptr inbounds i8, ptr %51, i64 %4
  %55 = tail call fastcc i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %54, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %64

56:                                               ; preds = %45
  %57 = mul i64 %26, %1
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = mul i64 %28, %1
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %58, ptr nonnull align 1 %60, i64 %1, i1 false)
  %61 = getelementptr inbounds i8, ptr %58, i64 %4
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  %63 = tail call fastcc i64 @stbds_hm_find_slot(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %62, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  br label %64

64:                                               ; preds = %49, %56
  %65 = phi i64 [ %63, %56 ], [ %55, %49 ]
  %66 = load ptr, ptr %20, align 8, !tbaa !222
  %67 = ashr i64 %65, 3
  %68 = and i64 %65, 7
  %69 = getelementptr inbounds %struct.stbds_hash_bucket, ptr %66, i64 %67, i32 1, i64 %68
  store i64 %26, ptr %69, align 8, !tbaa !210
  br label %70

70:                                               ; preds = %47, %64, %45
  %71 = load i64, ptr %11, align 8, !tbaa !206
  %72 = add i64 %71, -1
  store i64 %72, ptr %11, align 8, !tbaa !206
  %73 = load i64, ptr %29, align 8, !tbaa !228
  %74 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 4
  %75 = load i64, ptr %74, align 8, !tbaa !236
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !224
  %80 = icmp ugt i64 %79, 8
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = lshr i64 %79, 1
  br label %91

83:                                               ; preds = %77, %70
  %84 = load i64, ptr %32, align 8, !tbaa !232
  %85 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 6
  %86 = load i64, ptr %85, align 8, !tbaa !235
  %87 = icmp ugt i64 %84, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.stbds_hash_index, ptr %13, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !224
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i64 [ %82, %81 ], [ %90, %88 ]
  %93 = tail call fastcc ptr @stbds_make_hash_index(i64 noundef %92, ptr noundef nonnull %13)
  store ptr %93, ptr %12, align 8, !tbaa !213
  tail call void @free(ptr noundef nonnull %13) #34
  br label %94

94:                                               ; preds = %91, %8, %83, %16, %6
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %32
  %4 = phi ptr [ null, %2 ], [ %33, %32 ]
  %5 = phi i32 [ 0, %2 ], [ %38, %32 ]
  %6 = icmp eq ptr %4, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stbds_array_header, ptr %4, i64 -1
  %9 = load i64, ptr %8, align 8, !tbaa !206
  %10 = add i64 %9, 1
  %11 = getelementptr %struct.stbds_array_header, ptr %4, i64 -1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !209
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = shl i64 %12, 1
  %16 = icmp ult i64 %10, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3, %14
  %18 = phi i64 [ %10, %14 ], [ 1, %3 ]
  %19 = tail call i64 @llvm.umax.i64(i64 %18, i64 4)
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i64 [ %19, %17 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.stbds_array_header, ptr %4, i64 -1
  %23 = select i1 %6, ptr null, ptr %22
  %24 = shl i64 %21, 2
  %25 = add i64 %24, 32
  %26 = tail call ptr @realloc(ptr noundef %23, i64 noundef %25) #36
  %27 = getelementptr inbounds i8, ptr %26, i64 32
  br i1 %6, label %28, label %30

28:                                               ; preds = %20
  store i64 0, ptr %26, align 8, !tbaa !206
  %29 = getelementptr inbounds %struct.stbds_array_header, ptr %26, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  br label %30

30:                                               ; preds = %28, %20
  %31 = getelementptr inbounds %struct.stbds_array_header, ptr %26, i64 0, i32 1
  store i64 %21, ptr %31, align 8, !tbaa !209
  br label %32

32:                                               ; preds = %30, %7
  %33 = phi ptr [ %4, %7 ], [ %27, %30 ]
  %34 = getelementptr inbounds %struct.stbds_array_header, ptr %33, i64 -1
  %35 = load i64, ptr %34, align 8, !tbaa !206
  %36 = add i64 %35, 1
  store i64 %36, ptr %34, align 8, !tbaa !206
  %37 = getelementptr inbounds i32, ptr %33, i64 %35
  store i32 %5, ptr %37, align 4, !tbaa !40
  %38 = add nuw nsw i32 %5, 1
  %39 = icmp eq i32 %38, 1000000
  br i1 %39, label %40, label %3, !llvm.loop !246

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.stbds_array_header, ptr %33, i64 -1
  %42 = icmp eq i64 %36, 1000000
  br i1 %42, label %71, label %43

43:                                               ; preds = %40
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 17, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

44:                                               ; preds = %71
  %45 = add nuw nsw i64 %72, 1
  %46 = getelementptr inbounds i32, ptr %33, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !40
  %48 = zext i32 %47 to i64
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = add nuw nsw i64 %72, 2
  %52 = getelementptr inbounds i32, ptr %33, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !40
  %54 = zext i32 %53 to i64
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = add nuw nsw i64 %72, 3
  %58 = getelementptr inbounds i32, ptr %33, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !40
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %72, 4
  %64 = getelementptr inbounds i32, ptr %33, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !40
  %66 = zext i32 %65 to i64
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = add nuw nsw i64 %72, 5
  %70 = icmp eq i64 %69, 1000000
  br i1 %70, label %78, label %71, !llvm.loop !247

71:                                               ; preds = %40, %68
  %72 = phi i64 [ %69, %68 ], [ 0, %40 ]
  %73 = getelementptr inbounds i32, ptr %33, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !40
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %44, label %77

77:                                               ; preds = %62, %56, %50, %44, %71
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 19, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

78:                                               ; preds = %68
  tail call void @free(ptr noundef nonnull %41) #34
  br label %79

79:                                               ; preds = %78, %108
  %80 = phi ptr [ null, %78 ], [ %109, %108 ]
  %81 = phi i32 [ 0, %78 ], [ %114, %108 ]
  %82 = icmp eq ptr %80, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.stbds_array_header, ptr %80, i64 -1
  %85 = load i64, ptr %84, align 8, !tbaa !206
  %86 = add i64 %85, 1
  %87 = getelementptr %struct.stbds_array_header, ptr %80, i64 -1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !209
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = shl i64 %88, 1
  %92 = icmp ult i64 %86, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %79, %90
  %94 = phi i64 [ %86, %90 ], [ 1, %79 ]
  %95 = tail call i64 @llvm.umax.i64(i64 %94, i64 4)
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i64 [ %95, %93 ], [ %91, %90 ]
  %98 = getelementptr inbounds %struct.stbds_array_header, ptr %80, i64 -1
  %99 = select i1 %82, ptr null, ptr %98
  %100 = shl i64 %97, 2
  %101 = add i64 %100, 32
  %102 = tail call ptr @realloc(ptr noundef %99, i64 noundef %101) #36
  %103 = getelementptr inbounds i8, ptr %102, i64 32
  br i1 %82, label %104, label %106

104:                                              ; preds = %96
  store i64 0, ptr %102, align 8, !tbaa !206
  %105 = getelementptr inbounds %struct.stbds_array_header, ptr %102, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  br label %106

106:                                              ; preds = %104, %96
  %107 = getelementptr inbounds %struct.stbds_array_header, ptr %102, i64 0, i32 1
  store i64 %97, ptr %107, align 8, !tbaa !209
  br label %108

108:                                              ; preds = %106, %83
  %109 = phi ptr [ %80, %83 ], [ %103, %106 ]
  %110 = getelementptr inbounds %struct.stbds_array_header, ptr %109, i64 -1
  %111 = load i64, ptr %110, align 8, !tbaa !206
  %112 = add i64 %111, 1
  store i64 %112, ptr %110, align 8, !tbaa !206
  %113 = getelementptr inbounds i32, ptr %109, i64 %111
  store i32 1000, ptr %113, align 4, !tbaa !40
  %114 = add nuw nsw i32 %81, 1
  %115 = icmp eq i32 %114, 1000
  br i1 %115, label %116, label %79, !llvm.loop !248

116:                                              ; preds = %108
  %117 = icmp eq i64 %112, 1000000
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

119:                                              ; preds = %116
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @stbtt__run_charstring(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [48 x float], align 16
  %5 = alloca [10 x %struct.stbtt__buf], align 16
  %6 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #34
  %7 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !181
  %9 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 17, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa.struct !182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #34
  %11 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 15, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %12, i64 %14, i32 noundef %1)
  %16 = extractvalue { ptr, i64 } %15, 0
  %17 = extractvalue { ptr, i64 } %15, 1
  store ptr %16, ptr %6, align 8, !tbaa.struct !181
  %18 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %17, ptr %18, align 8, !tbaa.struct !182
  %19 = getelementptr inbounds %struct.stbtt__buf, ptr %6, i64 0, i32 2
  %20 = trunc i64 %17 to i32
  %21 = lshr i64 %17, 32
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %952

24:                                               ; preds = %3
  %25 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 1
  %26 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 2
  %27 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 3
  %28 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 4
  %29 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 5
  %30 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 6
  %31 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 7
  %32 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 8
  %33 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 9
  %34 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 10
  %35 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 11
  %36 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 19, i32 2
  %37 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 19
  %38 = add nsw i32 %1, 1
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14
  %41 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 18
  %42 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 18, i32 1
  %43 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 14, i32 1
  %44 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 16
  %45 = getelementptr inbounds %struct.stbtt_fontinfo, ptr %0, i64 0, i32 16, i32 1
  %46 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 4
  %47 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 7
  %48 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 1
  %49 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 9
  %50 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 6
  %51 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 8
  %52 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 11
  %53 = getelementptr inbounds %struct.stbtt__csctx, ptr %2, i64 0, i32 10
  br label %54

54:                                               ; preds = %24, %941
  %55 = phi i32 [ %22, %24 ], [ %950, %941 ]
  %56 = phi i32 [ %20, %24 ], [ %949, %941 ]
  %57 = phi i32 [ 1, %24 ], [ %942, %941 ]
  %58 = phi i32 [ 0, %24 ], [ %943, %941 ]
  %59 = phi i32 [ 0, %24 ], [ %944, %941 ]
  %60 = phi i32 [ 0, %24 ], [ %948, %941 ]
  %61 = phi i32 [ 0, %24 ], [ %945, %941 ]
  %62 = phi i64 [ %10, %24 ], [ %946, %941 ]
  %63 = phi ptr [ %8, %24 ], [ %947, %941 ]
  %64 = load ptr, ptr %6, align 8
  %65 = add nsw i32 %56, 1
  store i32 %65, ptr %18, align 8, !tbaa !183
  %66 = sext i32 %56 to i64
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !13
  switch i8 %68, label %870 [
    i8 19, label %69
    i8 20, label %69
    i8 1, label %84
    i8 3, label %84
    i8 18, label %84
    i8 23, label %84
    i8 21, label %87
    i8 4, label %98
    i8 22, label %105
    i8 5, label %112
    i8 7, label %171
    i8 6, label %173
    i8 31, label %289
    i8 30, label %291
    i8 8, label %349
    i8 24, label %376
    i8 25, label %460
    i8 26, label %546
    i8 27, label %546
    i8 10, label %598
    i8 29, label %718
    i8 11, label %782
    i8 14, label %788
    i8 12, label %789
  ]

69:                                               ; preds = %54, %54
  %70 = icmp eq i32 %57, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = sdiv i32 %60, 2
  %73 = add nsw i32 %58, %72
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %73, %71 ], [ %58, %69 ]
  %76 = add nsw i32 %75, 7
  %77 = sdiv i32 %76, 8
  %78 = add nsw i32 %77, %65
  %79 = icmp slt i32 %55, %78
  %80 = icmp slt i32 %78, 0
  %81 = or i1 %80, %79
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

83:                                               ; preds = %74
  store i32 %78, ptr %18, align 8, !tbaa !183
  br label %941

84:                                               ; preds = %54, %54, %54, %54
  %85 = sdiv i32 %60, 2
  %86 = add nsw i32 %58, %85
  br label %941

87:                                               ; preds = %54
  %88 = icmp slt i32 %60, 2
  br i1 %88, label %952, label %89

89:                                               ; preds = %87
  %90 = add nsw i32 %60, -2
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !68
  %94 = add nsw i32 %60, -1
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %95
  %97 = load float, ptr %96, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %93, float noundef %97)
  br label %941

98:                                               ; preds = %54
  %99 = icmp slt i32 %60, 1
  br i1 %99, label %952, label %100

100:                                              ; preds = %98
  %101 = add nsw i32 %60, -1
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %104)
  br label %941

105:                                              ; preds = %54
  %106 = icmp slt i32 %60, 1
  br i1 %106, label %952, label %107

107:                                              ; preds = %105
  %108 = add nsw i32 %60, -1
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %111, float noundef 0.000000e+00)
  br label %941

112:                                              ; preds = %54
  %113 = icmp slt i32 %60, 2
  br i1 %113, label %952, label %114

114:                                              ; preds = %112
  %115 = zext nneg i32 %60 to i64
  br label %116

116:                                              ; preds = %114, %165
  %117 = phi i64 [ 0, %114 ], [ %168, %165 ]
  %118 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %117
  %119 = load <2 x float>, ptr %118, align 8, !tbaa !68
  %120 = load <2 x float>, ptr %46, align 8, !tbaa !68
  %121 = fadd <2 x float> %119, %120
  store <2 x float> %121, ptr %46, align 8, !tbaa !68
  %122 = fptosi <2 x float> %121 to <2 x i32>
  %123 = load i32, ptr %2, align 8, !tbaa !249
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %116
  %126 = load i32, ptr %47, align 4, !tbaa !250
  %127 = extractelement <2 x i32> %122, i64 0
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %48, align 4, !tbaa !251
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %125
  store i32 %127, ptr %47, align 4, !tbaa !250
  br label %133

133:                                              ; preds = %132, %129
  %134 = load i32, ptr %49, align 4, !tbaa !252
  %135 = extractelement <2 x i32> %122, i64 1
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %48, align 4, !tbaa !251
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %133
  store i32 %135, ptr %49, align 4, !tbaa !252
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, ptr %50, align 8, !tbaa !253
  %143 = icmp sgt i32 %142, %127
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %48, align 4, !tbaa !251
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %141
  store i32 %127, ptr %50, align 8, !tbaa !253
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, ptr %51, align 8, !tbaa !254
  %150 = icmp sgt i32 %149, %135
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %48, align 4, !tbaa !251
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %148
  store i32 %135, ptr %51, align 8, !tbaa !254
  br label %155

155:                                              ; preds = %154, %151
  store i32 1, ptr %48, align 4, !tbaa !251
  %156 = load i32, ptr %52, align 8, !tbaa !36
  br label %165

157:                                              ; preds = %116
  %158 = load ptr, ptr %53, align 8, !tbaa !39
  %159 = load i32, ptr %52, align 8, !tbaa !36
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.stbtt_vertex, ptr %158, i64 %160
  %162 = getelementptr inbounds %struct.stbtt_vertex, ptr %158, i64 %160, i32 6
  store i8 2, ptr %162, align 2, !tbaa !19
  %163 = trunc <2 x i32> %122 to <2 x i16>
  store <2 x i16> %163, ptr %161, align 2, !tbaa !33
  %164 = getelementptr inbounds %struct.stbtt_vertex, ptr %158, i64 %160, i32 2
  store i64 0, ptr %164, align 2
  br label %165

165:                                              ; preds = %155, %157
  %166 = phi i32 [ %156, %155 ], [ %159, %157 ]
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %52, align 8, !tbaa !36
  %168 = add nuw nsw i64 %117, 2
  %169 = or disjoint i64 %168, 1
  %170 = icmp ult i64 %169, %115
  br i1 %170, label %116, label %941, !llvm.loop !255

171:                                              ; preds = %54
  %172 = icmp slt i32 %60, 1
  br i1 %172, label %952, label %232

173:                                              ; preds = %54
  %174 = icmp slt i32 %60, 1
  br i1 %174, label %952, label %175

175:                                              ; preds = %173, %285
  %176 = phi i32 [ 0, %173 ], [ %288, %285 ]
  %177 = icmp slt i32 %176, %60
  br i1 %177, label %178, label %941

178:                                              ; preds = %175
  %179 = sext i32 %176 to i64
  %180 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %179
  %181 = load float, ptr %180, align 4, !tbaa !68
  %182 = load <2 x float>, ptr %46, align 8, !tbaa !68
  %183 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %181, i64 0
  %184 = fadd <2 x float> %182, %183
  store <2 x float> %184, ptr %46, align 8, !tbaa !68
  %185 = fptosi <2 x float> %184 to <2 x i32>
  %186 = load i32, ptr %2, align 8, !tbaa !249
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %220, label %188

188:                                              ; preds = %178
  %189 = load i32, ptr %47, align 4, !tbaa !250
  %190 = extractelement <2 x i32> %185, i64 0
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load i32, ptr %48, align 4, !tbaa !251
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192, %188
  store i32 %190, ptr %47, align 4, !tbaa !250
  br label %196

196:                                              ; preds = %195, %192
  %197 = load i32, ptr %49, align 4, !tbaa !252
  %198 = extractelement <2 x i32> %185, i64 1
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = load i32, ptr %48, align 4, !tbaa !251
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %196
  store i32 %198, ptr %49, align 4, !tbaa !252
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i32, ptr %50, align 8, !tbaa !253
  %206 = icmp sgt i32 %205, %190
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %48, align 4, !tbaa !251
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %204
  store i32 %190, ptr %50, align 8, !tbaa !253
  br label %211

211:                                              ; preds = %210, %207
  %212 = load i32, ptr %51, align 8, !tbaa !254
  %213 = icmp sgt i32 %212, %198
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr %48, align 4, !tbaa !251
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214, %211
  store i32 %198, ptr %51, align 8, !tbaa !254
  br label %218

218:                                              ; preds = %217, %214
  store i32 1, ptr %48, align 4, !tbaa !251
  %219 = load i32, ptr %52, align 8, !tbaa !36
  br label %228

220:                                              ; preds = %178
  %221 = load ptr, ptr %53, align 8, !tbaa !39
  %222 = load i32, ptr %52, align 8, !tbaa !36
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.stbtt_vertex, ptr %221, i64 %223
  %225 = getelementptr inbounds %struct.stbtt_vertex, ptr %221, i64 %223, i32 6
  store i8 2, ptr %225, align 2, !tbaa !19
  %226 = trunc <2 x i32> %185 to <2 x i16>
  store <2 x i16> %226, ptr %224, align 2, !tbaa !33
  %227 = getelementptr inbounds %struct.stbtt_vertex, ptr %221, i64 %223, i32 2
  store i64 0, ptr %227, align 2
  br label %228

228:                                              ; preds = %218, %220
  %229 = phi i32 [ %219, %218 ], [ %222, %220 ]
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %52, align 8, !tbaa !36
  %231 = add nsw i32 %176, 1
  br label %232

232:                                              ; preds = %171, %228
  %233 = phi i32 [ %231, %228 ], [ 0, %171 ]
  %234 = icmp slt i32 %233, %60
  br i1 %234, label %235, label %941

235:                                              ; preds = %232
  %236 = sext i32 %233 to i64
  %237 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !68
  %239 = load <2 x float>, ptr %46, align 8, !tbaa !68
  %240 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %238, i64 1
  %241 = fadd <2 x float> %239, %240
  store <2 x float> %241, ptr %46, align 8, !tbaa !68
  %242 = fptosi <2 x float> %241 to <2 x i32>
  %243 = load i32, ptr %2, align 8, !tbaa !249
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %277, label %245

245:                                              ; preds = %235
  %246 = load i32, ptr %47, align 4, !tbaa !250
  %247 = extractelement <2 x i32> %242, i64 0
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %48, align 4, !tbaa !251
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249, %245
  store i32 %247, ptr %47, align 4, !tbaa !250
  br label %253

253:                                              ; preds = %252, %249
  %254 = load i32, ptr %49, align 4, !tbaa !252
  %255 = extractelement <2 x i32> %242, i64 1
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = load i32, ptr %48, align 4, !tbaa !251
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %253
  store i32 %255, ptr %49, align 4, !tbaa !252
  br label %261

261:                                              ; preds = %260, %257
  %262 = load i32, ptr %50, align 8, !tbaa !253
  %263 = icmp sgt i32 %262, %247
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %48, align 4, !tbaa !251
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %264, %261
  store i32 %247, ptr %50, align 8, !tbaa !253
  br label %268

268:                                              ; preds = %267, %264
  %269 = load i32, ptr %51, align 8, !tbaa !254
  %270 = icmp sgt i32 %269, %255
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %48, align 4, !tbaa !251
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271, %268
  store i32 %255, ptr %51, align 8, !tbaa !254
  br label %275

275:                                              ; preds = %274, %271
  store i32 1, ptr %48, align 4, !tbaa !251
  %276 = load i32, ptr %52, align 8, !tbaa !36
  br label %285

277:                                              ; preds = %235
  %278 = load ptr, ptr %53, align 8, !tbaa !39
  %279 = load i32, ptr %52, align 8, !tbaa !36
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.stbtt_vertex, ptr %278, i64 %280
  %282 = getelementptr inbounds %struct.stbtt_vertex, ptr %278, i64 %280, i32 6
  store i8 2, ptr %282, align 2, !tbaa !19
  %283 = trunc <2 x i32> %242 to <2 x i16>
  store <2 x i16> %283, ptr %281, align 2, !tbaa !33
  %284 = getelementptr inbounds %struct.stbtt_vertex, ptr %278, i64 %280, i32 2
  store i64 0, ptr %284, align 2
  br label %285

285:                                              ; preds = %275, %277
  %286 = phi i32 [ %276, %275 ], [ %279, %277 ]
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %52, align 8, !tbaa !36
  %288 = add nsw i32 %233, 1
  br label %175

289:                                              ; preds = %54
  %290 = icmp slt i32 %60, 4
  br i1 %290, label %952, label %321

291:                                              ; preds = %54
  %292 = icmp slt i32 %60, 4
  br i1 %292, label %952, label %293

293:                                              ; preds = %291, %344
  %294 = phi i32 [ 0, %291 ], [ %339, %344 ]
  %295 = add nsw i32 %294, 3
  %296 = icmp slt i32 %295, %60
  br i1 %296, label %297, label %941

297:                                              ; preds = %293
  %298 = sext i32 %294 to i64
  %299 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !68
  %301 = add nsw i32 %294, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %302
  %304 = load float, ptr %303, align 4, !tbaa !68
  %305 = add nsw i32 %294, 2
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %306
  %308 = load float, ptr %307, align 4, !tbaa !68
  %309 = sext i32 %295 to i64
  %310 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !68
  %312 = sub nsw i32 %60, %294
  %313 = icmp eq i32 %312, 5
  %314 = add nsw i32 %294, 4
  br i1 %313, label %315, label %319

315:                                              ; preds = %297
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %316
  %318 = load float, ptr %317, align 4, !tbaa !68
  br label %319

319:                                              ; preds = %297, %315
  %320 = phi float [ %318, %315 ], [ 0.000000e+00, %297 ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %300, float noundef %304, float noundef %308, float noundef %311, float noundef %320)
  br label %321

321:                                              ; preds = %289, %319
  %322 = phi i32 [ %314, %319 ], [ 0, %289 ]
  %323 = add nsw i32 %322, 3
  %324 = icmp slt i32 %323, %60
  br i1 %324, label %325, label %941

325:                                              ; preds = %321
  %326 = sext i32 %322 to i64
  %327 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %326
  %328 = load float, ptr %327, align 4, !tbaa !68
  %329 = add nsw i32 %322, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %330
  %332 = load float, ptr %331, align 4, !tbaa !68
  %333 = add nsw i32 %322, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %334
  %336 = load float, ptr %335, align 4, !tbaa !68
  %337 = sub nsw i32 %60, %322
  %338 = icmp eq i32 %337, 5
  %339 = add nsw i32 %322, 4
  br i1 %338, label %340, label %344

340:                                              ; preds = %325
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %341
  %343 = load float, ptr %342, align 4, !tbaa !68
  br label %344

344:                                              ; preds = %325, %340
  %345 = phi float [ %343, %340 ], [ 0.000000e+00, %325 ]
  %346 = sext i32 %323 to i64
  %347 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %346
  %348 = load float, ptr %347, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %328, float noundef 0.000000e+00, float noundef %332, float noundef %336, float noundef %345, float noundef %348)
  br label %293

349:                                              ; preds = %54
  %350 = icmp slt i32 %60, 6
  br i1 %350, label %952, label %351

351:                                              ; preds = %349
  %352 = zext nneg i32 %60 to i64
  br label %353

353:                                              ; preds = %351, %353
  %354 = phi i64 [ 0, %351 ], [ %372, %353 ]
  %355 = phi i64 [ 5, %351 ], [ %375, %353 ]
  %356 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %354
  %357 = load float, ptr %356, align 8, !tbaa !68
  %358 = or disjoint i64 %354, 1
  %359 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %358
  %360 = load float, ptr %359, align 4, !tbaa !68
  %361 = add nuw nsw i64 %354, 2
  %362 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %361
  %363 = load float, ptr %362, align 8, !tbaa !68
  %364 = add nuw nsw i64 %354, 3
  %365 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %364
  %366 = load float, ptr %365, align 4, !tbaa !68
  %367 = add nuw nsw i64 %354, 4
  %368 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %367
  %369 = load float, ptr %368, align 8, !tbaa !68
  %370 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %355
  %371 = load float, ptr %370, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %357, float noundef %360, float noundef %363, float noundef %366, float noundef %369, float noundef %371)
  %372 = add nuw nsw i64 %354, 6
  %373 = add nuw nsw i64 %354, 11
  %374 = icmp ult i64 %373, %352
  %375 = add nuw nsw i64 %355, 6
  br i1 %374, label %353, label %941, !llvm.loop !256

376:                                              ; preds = %54
  %377 = icmp slt i32 %60, 8
  br i1 %377, label %952, label %378

378:                                              ; preds = %376
  %379 = add nsw i32 %60, -2
  %380 = zext nneg i32 %379 to i64
  %381 = add nsw i64 %380, -11
  br label %382

382:                                              ; preds = %378, %382
  %383 = phi i64 [ 0, %378 ], [ %401, %382 ]
  %384 = phi i64 [ 5, %378 ], [ %403, %382 ]
  %385 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %383
  %386 = load float, ptr %385, align 8, !tbaa !68
  %387 = or disjoint i64 %383, 1
  %388 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %387
  %389 = load float, ptr %388, align 4, !tbaa !68
  %390 = add nuw nsw i64 %383, 2
  %391 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %390
  %392 = load float, ptr %391, align 8, !tbaa !68
  %393 = add nuw nsw i64 %383, 3
  %394 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %393
  %395 = load float, ptr %394, align 4, !tbaa !68
  %396 = add nuw nsw i64 %383, 4
  %397 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %396
  %398 = load float, ptr %397, align 8, !tbaa !68
  %399 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %384
  %400 = load float, ptr %399, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %386, float noundef %389, float noundef %392, float noundef %395, float noundef %398, float noundef %400)
  %401 = add nuw nsw i64 %383, 6
  %402 = icmp slt i64 %383, %381
  %403 = add nuw nsw i64 %384, 6
  br i1 %402, label %382, label %404, !llvm.loop !257

404:                                              ; preds = %382
  %405 = trunc i64 %401 to i32
  %406 = or disjoint i32 %405, 1
  %407 = icmp slt i32 %406, %60
  br i1 %407, label %408, label %952

408:                                              ; preds = %404
  %409 = and i64 %401, 4294967294
  %410 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %409
  %411 = load <2 x float>, ptr %410, align 8, !tbaa !68
  %412 = load <2 x float>, ptr %46, align 8, !tbaa !68
  %413 = fadd <2 x float> %411, %412
  store <2 x float> %413, ptr %46, align 8, !tbaa !68
  %414 = fptosi <2 x float> %413 to <2 x i32>
  %415 = load i32, ptr %2, align 8, !tbaa !249
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %449, label %417

417:                                              ; preds = %408
  %418 = load i32, ptr %47, align 4, !tbaa !250
  %419 = extractelement <2 x i32> %414, i64 0
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %424, label %421

421:                                              ; preds = %417
  %422 = load i32, ptr %48, align 4, !tbaa !251
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %421, %417
  store i32 %419, ptr %47, align 4, !tbaa !250
  br label %425

425:                                              ; preds = %424, %421
  %426 = load i32, ptr %49, align 4, !tbaa !252
  %427 = extractelement <2 x i32> %414, i64 1
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = load i32, ptr %48, align 4, !tbaa !251
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429, %425
  store i32 %427, ptr %49, align 4, !tbaa !252
  br label %433

433:                                              ; preds = %432, %429
  %434 = load i32, ptr %50, align 8, !tbaa !253
  %435 = icmp sgt i32 %434, %419
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %48, align 4, !tbaa !251
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %436, %433
  store i32 %419, ptr %50, align 8, !tbaa !253
  br label %440

440:                                              ; preds = %439, %436
  %441 = load i32, ptr %51, align 8, !tbaa !254
  %442 = icmp sgt i32 %441, %427
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = load i32, ptr %48, align 4, !tbaa !251
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %443, %440
  store i32 %427, ptr %51, align 8, !tbaa !254
  br label %447

447:                                              ; preds = %446, %443
  store i32 1, ptr %48, align 4, !tbaa !251
  %448 = load i32, ptr %52, align 8, !tbaa !36
  br label %457

449:                                              ; preds = %408
  %450 = load ptr, ptr %53, align 8, !tbaa !39
  %451 = load i32, ptr %52, align 8, !tbaa !36
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.stbtt_vertex, ptr %450, i64 %452
  %454 = getelementptr inbounds %struct.stbtt_vertex, ptr %450, i64 %452, i32 6
  store i8 2, ptr %454, align 2, !tbaa !19
  %455 = trunc <2 x i32> %414 to <2 x i16>
  store <2 x i16> %455, ptr %453, align 2, !tbaa !33
  %456 = getelementptr inbounds %struct.stbtt_vertex, ptr %450, i64 %452, i32 2
  store i64 0, ptr %456, align 2
  br label %457

457:                                              ; preds = %447, %449
  %458 = phi i32 [ %448, %447 ], [ %451, %449 ]
  %459 = add nsw i32 %458, 1
  store i32 %459, ptr %52, align 8, !tbaa !36
  br label %941

460:                                              ; preds = %54
  %461 = icmp slt i32 %60, 8
  br i1 %461, label %952, label %462

462:                                              ; preds = %460
  %463 = add nsw i32 %60, -6
  %464 = zext nneg i32 %463 to i64
  br label %465

465:                                              ; preds = %462, %514
  %466 = phi i64 [ 0, %462 ], [ %517, %514 ]
  %467 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %466
  %468 = load <2 x float>, ptr %467, align 8, !tbaa !68
  %469 = load <2 x float>, ptr %46, align 8, !tbaa !68
  %470 = fadd <2 x float> %468, %469
  store <2 x float> %470, ptr %46, align 8, !tbaa !68
  %471 = fptosi <2 x float> %470 to <2 x i32>
  %472 = load i32, ptr %2, align 8, !tbaa !249
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %506, label %474

474:                                              ; preds = %465
  %475 = load i32, ptr %47, align 4, !tbaa !250
  %476 = extractelement <2 x i32> %471, i64 0
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %481, label %478

478:                                              ; preds = %474
  %479 = load i32, ptr %48, align 4, !tbaa !251
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %478, %474
  store i32 %476, ptr %47, align 4, !tbaa !250
  br label %482

482:                                              ; preds = %481, %478
  %483 = load i32, ptr %49, align 4, !tbaa !252
  %484 = extractelement <2 x i32> %471, i64 1
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %489, label %486

486:                                              ; preds = %482
  %487 = load i32, ptr %48, align 4, !tbaa !251
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %486, %482
  store i32 %484, ptr %49, align 4, !tbaa !252
  br label %490

490:                                              ; preds = %489, %486
  %491 = load i32, ptr %50, align 8, !tbaa !253
  %492 = icmp sgt i32 %491, %476
  br i1 %492, label %496, label %493

493:                                              ; preds = %490
  %494 = load i32, ptr %48, align 4, !tbaa !251
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %493, %490
  store i32 %476, ptr %50, align 8, !tbaa !253
  br label %497

497:                                              ; preds = %496, %493
  %498 = load i32, ptr %51, align 8, !tbaa !254
  %499 = icmp sgt i32 %498, %484
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %48, align 4, !tbaa !251
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %500, %497
  store i32 %484, ptr %51, align 8, !tbaa !254
  br label %504

504:                                              ; preds = %503, %500
  store i32 1, ptr %48, align 4, !tbaa !251
  %505 = load i32, ptr %52, align 8, !tbaa !36
  br label %514

506:                                              ; preds = %465
  %507 = load ptr, ptr %53, align 8, !tbaa !39
  %508 = load i32, ptr %52, align 8, !tbaa !36
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.stbtt_vertex, ptr %507, i64 %509
  %511 = getelementptr inbounds %struct.stbtt_vertex, ptr %507, i64 %509, i32 6
  store i8 2, ptr %511, align 2, !tbaa !19
  %512 = trunc <2 x i32> %471 to <2 x i16>
  store <2 x i16> %512, ptr %510, align 2, !tbaa !33
  %513 = getelementptr inbounds %struct.stbtt_vertex, ptr %507, i64 %509, i32 2
  store i64 0, ptr %513, align 2
  br label %514

514:                                              ; preds = %504, %506
  %515 = phi i32 [ %505, %504 ], [ %508, %506 ]
  %516 = add nsw i32 %515, 1
  store i32 %516, ptr %52, align 8, !tbaa !36
  %517 = add nuw nsw i64 %466, 2
  %518 = or disjoint i64 %517, 1
  %519 = icmp ult i64 %518, %464
  br i1 %519, label %465, label %520, !llvm.loop !258

520:                                              ; preds = %514
  %521 = trunc i64 %517 to i32
  %522 = add nuw nsw i32 %521, 5
  %523 = icmp slt i32 %522, %60
  br i1 %523, label %524, label %952

524:                                              ; preds = %520
  %525 = and i64 %517, 4294967294
  %526 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %525
  %527 = load float, ptr %526, align 8, !tbaa !68
  %528 = and i64 %518, 4294967295
  %529 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %528
  %530 = load float, ptr %529, align 4, !tbaa !68
  %531 = add nuw i64 %466, 4
  %532 = and i64 %531, 4294967294
  %533 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %532
  %534 = load float, ptr %533, align 8, !tbaa !68
  %535 = add nuw i64 %466, 5
  %536 = and i64 %535, 4294967295
  %537 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %536
  %538 = load float, ptr %537, align 4, !tbaa !68
  %539 = add nuw i64 %466, 6
  %540 = and i64 %539, 4294967294
  %541 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %540
  %542 = load float, ptr %541, align 8, !tbaa !68
  %543 = zext nneg i32 %522 to i64
  %544 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %543
  %545 = load float, ptr %544, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef nonnull %2, float noundef %527, float noundef %530, float noundef %534, float noundef %538, float noundef %542, float noundef %545)
  br label %941

546:                                              ; preds = %54, %54
  %547 = icmp slt i32 %60, 4
  br i1 %547, label %952, label %548

548:                                              ; preds = %546
  %549 = and i32 %60, 1
  %550 = add nuw nsw i32 %549, 3
  %551 = icmp ult i32 %550, %60
  br i1 %551, label %552, label %941

552:                                              ; preds = %548
  %553 = icmp eq i32 %549, 0
  %554 = load float, ptr %4, align 16
  %555 = select i1 %553, float 0.000000e+00, float %554
  %556 = icmp eq i8 %68, 27
  %557 = and i32 %60, 1
  %558 = zext nneg i32 %557 to i64
  %559 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %558
  %560 = load float, ptr %559, align 4, !tbaa !68
  %561 = add nuw nsw i64 %558, 1
  %562 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %561
  %563 = load float, ptr %562, align 4, !tbaa !68
  %564 = or disjoint i64 %558, 2
  %565 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %564
  %566 = load float, ptr %565, align 4, !tbaa !68
  %567 = zext nneg i32 %550 to i64
  %568 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %567
  %569 = load float, ptr %568, align 4, !tbaa !68
  br i1 %556, label %571, label %570

570:                                              ; preds = %552
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %555, float noundef %560, float noundef %563, float noundef %566, float noundef 0.000000e+00, float noundef %569)
  br label %572

571:                                              ; preds = %552
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %560, float noundef %555, float noundef %563, float noundef %566, float noundef %569, float noundef 0.000000e+00)
  br label %572

572:                                              ; preds = %571, %570
  %573 = add nuw nsw i32 %557, 7
  %574 = icmp ult i32 %573, %60
  br i1 %574, label %575, label %941

575:                                              ; preds = %572
  %576 = or disjoint i64 %558, 4
  br label %577

577:                                              ; preds = %575, %593
  %578 = phi i64 [ %576, %575 ], [ %594, %593 ]
  %579 = phi i32 [ %573, %575 ], [ %596, %593 ]
  %580 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %578
  %581 = load float, ptr %580, align 4, !tbaa !68
  %582 = add nuw nsw i64 %578, 1
  %583 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %582
  %584 = load float, ptr %583, align 4, !tbaa !68
  %585 = add nuw nsw i64 %578, 2
  %586 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %585
  %587 = load float, ptr %586, align 4, !tbaa !68
  %588 = zext nneg i32 %579 to i64
  %589 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %588
  %590 = load float, ptr %589, align 4, !tbaa !68
  br i1 %556, label %591, label %592

591:                                              ; preds = %577
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %581, float noundef 0.000000e+00, float noundef %584, float noundef %587, float noundef %590, float noundef 0.000000e+00)
  br label %593

592:                                              ; preds = %577
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %581, float noundef %584, float noundef %587, float noundef 0.000000e+00, float noundef %590)
  br label %593

593:                                              ; preds = %592, %591
  %594 = add nuw i64 %578, 4
  %595 = trunc i64 %578 to i32
  %596 = add i32 %595, 7
  %597 = icmp slt i32 %596, %60
  br i1 %597, label %577, label %941, !llvm.loop !259

598:                                              ; preds = %54
  %599 = icmp eq i32 %61, 0
  br i1 %599, label %600, label %718

600:                                              ; preds = %598
  %601 = load i32, ptr %36, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %718, label %603

603:                                              ; preds = %600
  %604 = load ptr, ptr %37, align 8, !tbaa.struct !181
  %605 = icmp slt i32 %601, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

607:                                              ; preds = %603
  %608 = load i8, ptr %604, align 1, !tbaa !13
  switch i8 %608, label %706 [
    i8 0, label %611
    i8 3, label %609
  ]

609:                                              ; preds = %607
  %610 = icmp eq i32 %601, 1
  br i1 %610, label %625, label %620

611:                                              ; preds = %607
  %612 = icmp ugt i32 %38, %601
  br i1 %612, label %613, label %614

613:                                              ; preds = %611
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

614:                                              ; preds = %611
  %615 = icmp ult i32 %38, %601
  br i1 %615, label %616, label %706

616:                                              ; preds = %614
  %617 = getelementptr inbounds i8, ptr %604, i64 %39
  %618 = load i8, ptr %617, align 1, !tbaa !13
  %619 = zext i8 %618 to i32
  br label %706

620:                                              ; preds = %609
  %621 = getelementptr inbounds i8, ptr %604, i64 1
  %622 = load i8, ptr %621, align 1, !tbaa !13
  %623 = zext i8 %622 to i32
  %624 = shl nuw nsw i32 %623, 8
  br label %625

625:                                              ; preds = %620, %609
  %626 = phi i32 [ 2, %620 ], [ 1, %609 ]
  %627 = phi i32 [ %624, %620 ], [ 0, %609 ]
  %628 = icmp ult i32 %626, %601
  br i1 %628, label %629, label %635

629:                                              ; preds = %625
  %630 = add nuw nsw i32 %626, 1
  %631 = zext nneg i32 %626 to i64
  %632 = getelementptr inbounds i8, ptr %604, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !13
  %634 = zext i8 %633 to i32
  br label %635

635:                                              ; preds = %629, %625
  %636 = phi i32 [ %630, %629 ], [ %626, %625 ]
  %637 = phi i32 [ %634, %629 ], [ 0, %625 ]
  %638 = icmp ult i32 %636, %601
  br i1 %638, label %639, label %646

639:                                              ; preds = %635
  %640 = add nuw nsw i32 %636, 1
  %641 = zext nneg i32 %636 to i64
  %642 = getelementptr inbounds i8, ptr %604, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !13
  %644 = zext i8 %643 to i32
  %645 = shl nuw nsw i32 %644, 8
  br label %646

646:                                              ; preds = %639, %635
  %647 = phi i32 [ %640, %639 ], [ %636, %635 ]
  %648 = phi i32 [ %645, %639 ], [ 0, %635 ]
  %649 = icmp ult i32 %647, %601
  br i1 %649, label %650, label %656

650:                                              ; preds = %646
  %651 = add nuw nsw i32 %647, 1
  %652 = zext nneg i32 %647 to i64
  %653 = getelementptr inbounds i8, ptr %604, i64 %652
  %654 = load i8, ptr %653, align 1, !tbaa !13
  %655 = zext i8 %654 to i32
  br label %656

656:                                              ; preds = %650, %646
  %657 = phi i32 [ %651, %650 ], [ %647, %646 ]
  %658 = phi i32 [ %655, %650 ], [ 0, %646 ]
  %659 = or disjoint i32 %637, %627
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %706, label %661

661:                                              ; preds = %656
  %662 = or disjoint i32 %658, %648
  br label %666

663:                                              ; preds = %696
  %664 = add nuw nsw i32 %668, 1
  %665 = icmp eq i32 %664, %659
  br i1 %665, label %706, label %666, !llvm.loop !261

666:                                              ; preds = %663, %661
  %667 = phi i32 [ %700, %663 ], [ %662, %661 ]
  %668 = phi i32 [ %664, %663 ], [ 0, %661 ]
  %669 = phi i32 [ %697, %663 ], [ %657, %661 ]
  %670 = icmp slt i32 %669, %601
  br i1 %670, label %671, label %676

671:                                              ; preds = %666
  %672 = add nsw i32 %669, 1
  %673 = sext i32 %669 to i64
  %674 = getelementptr inbounds i8, ptr %604, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !13
  br label %676

676:                                              ; preds = %671, %666
  %677 = phi i32 [ %672, %671 ], [ %669, %666 ]
  %678 = phi i8 [ %675, %671 ], [ 0, %666 ]
  %679 = icmp slt i32 %677, %601
  br i1 %679, label %680, label %685

680:                                              ; preds = %676
  %681 = add nsw i32 %677, 1
  %682 = sext i32 %677 to i64
  %683 = getelementptr inbounds i8, ptr %604, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !13
  br label %685

685:                                              ; preds = %680, %676
  %686 = phi i32 [ %681, %680 ], [ %677, %676 ]
  %687 = phi i8 [ %684, %680 ], [ 0, %676 ]
  %688 = zext i8 %687 to i32
  %689 = shl nuw nsw i32 %688, 8
  %690 = icmp slt i32 %686, %601
  br i1 %690, label %691, label %696

691:                                              ; preds = %685
  %692 = add nsw i32 %686, 1
  %693 = sext i32 %686 to i64
  %694 = getelementptr inbounds i8, ptr %604, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !13
  br label %696

696:                                              ; preds = %691, %685
  %697 = phi i32 [ %692, %691 ], [ %686, %685 ]
  %698 = phi i8 [ %695, %691 ], [ 0, %685 ]
  %699 = zext i8 %698 to i32
  %700 = or disjoint i32 %689, %699
  %701 = icmp sle i32 %667, %1
  %702 = icmp sgt i32 %700, %1
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %704, label %663

704:                                              ; preds = %696
  %705 = zext i8 %678 to i32
  br label %706

706:                                              ; preds = %663, %607, %614, %616, %656, %704
  %707 = phi i32 [ -1, %607 ], [ %619, %616 ], [ 0, %614 ], [ %705, %704 ], [ -1, %656 ], [ -1, %663 ]
  %708 = load ptr, ptr %41, align 8
  %709 = load i64, ptr %42, align 8
  %710 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %708, i64 %709, i32 noundef %707)
  %711 = extractvalue { ptr, i64 } %710, 0
  %712 = extractvalue { ptr, i64 } %710, 1
  %713 = load ptr, ptr %40, align 8
  %714 = load i64, ptr %43, align 8
  %715 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %713, i64 %714, ptr %711, i64 %712)
  %716 = extractvalue { ptr, i64 } %715, 0
  %717 = extractvalue { ptr, i64 } %715, 1
  br label %718

718:                                              ; preds = %600, %706, %598, %54
  %719 = phi ptr [ %63, %54 ], [ %63, %598 ], [ %716, %706 ], [ %63, %600 ]
  %720 = phi i64 [ %62, %54 ], [ %62, %598 ], [ %717, %706 ], [ %62, %600 ]
  %721 = phi i32 [ %61, %54 ], [ 1, %598 ], [ 1, %706 ], [ 1, %600 ]
  %722 = icmp slt i32 %60, 1
  br i1 %722, label %952, label %723

723:                                              ; preds = %718
  %724 = add nsw i32 %60, -1
  %725 = zext nneg i32 %724 to i64
  %726 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %725
  %727 = load float, ptr %726, align 4, !tbaa !68
  %728 = fptosi float %727 to i32
  %729 = icmp sgt i32 %59, 9
  br i1 %729, label %952, label %730

730:                                              ; preds = %723
  %731 = add nsw i32 %59, 1
  %732 = sext i32 %59 to i64
  %733 = getelementptr inbounds [10 x %struct.stbtt__buf], ptr %5, i64 0, i64 %732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %733, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !181
  %734 = icmp eq i8 %68, 10
  br i1 %734, label %738, label %735

735:                                              ; preds = %730
  %736 = load ptr, ptr %44, align 8, !tbaa.struct !181
  %737 = load i64, ptr %45, align 8, !tbaa.struct !182
  br label %738

738:                                              ; preds = %730, %735
  %739 = phi i64 [ %737, %735 ], [ %720, %730 ]
  %740 = phi ptr [ %736, %735 ], [ %719, %730 ]
  %741 = lshr i64 %739, 32
  %742 = trunc i64 %741 to i32
  %743 = icmp slt i64 %739, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %738
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

745:                                              ; preds = %738
  %746 = icmp eq i32 %742, 0
  br i1 %746, label %751, label %747

747:                                              ; preds = %745
  %748 = load i8, ptr %740, align 1, !tbaa !13
  %749 = zext i8 %748 to i32
  %750 = shl nuw nsw i32 %749, 8
  br label %751

751:                                              ; preds = %747, %745
  %752 = phi i32 [ 0, %745 ], [ 1, %747 ]
  %753 = phi i32 [ 0, %745 ], [ %750, %747 ]
  %754 = icmp ult i32 %752, %742
  br i1 %754, label %755, label %761

755:                                              ; preds = %751
  %756 = add nuw nsw i32 %752, 1
  %757 = zext nneg i32 %752 to i64
  %758 = getelementptr inbounds i8, ptr %740, i64 %757
  %759 = load i8, ptr %758, align 1, !tbaa !13
  %760 = zext i8 %759 to i32
  br label %761

761:                                              ; preds = %755, %751
  %762 = phi i32 [ %756, %755 ], [ %752, %751 ]
  %763 = phi i32 [ %760, %755 ], [ 0, %751 ]
  %764 = or disjoint i32 %763, %753
  %765 = icmp ugt i32 %764, 33899
  %766 = icmp ugt i32 %764, 1239
  %767 = select i1 %766, i32 1131, i32 107
  %768 = select i1 %765, i32 32768, i32 %767
  %769 = add nsw i32 %768, %728
  %770 = icmp ult i32 %769, %764
  br i1 %770, label %771, label %776

771:                                              ; preds = %761
  %772 = and i64 %739, 9223372032559808512
  %773 = zext nneg i32 %762 to i64
  %774 = or disjoint i64 %772, %773
  %775 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %740, i64 %774, i32 noundef %769)
  br label %776

776:                                              ; preds = %761, %771
  %777 = phi { ptr, i64 } [ %775, %771 ], [ zeroinitializer, %761 ]
  %778 = extractvalue { ptr, i64 } %777, 0
  %779 = extractvalue { ptr, i64 } %777, 1
  store ptr %778, ptr %6, align 8, !tbaa.struct !181
  store i64 %779, ptr %18, align 8, !tbaa.struct !182
  %780 = icmp ult i64 %779, 4294967296
  br i1 %780, label %952, label %781

781:                                              ; preds = %776
  store i32 0, ptr %18, align 8, !tbaa !183
  br label %941

782:                                              ; preds = %54
  %783 = icmp slt i32 %59, 1
  br i1 %783, label %952, label %784

784:                                              ; preds = %782
  %785 = add nsw i32 %59, -1
  %786 = zext nneg i32 %785 to i64
  %787 = getelementptr inbounds [10 x %struct.stbtt__buf], ptr %5, i64 0, i64 %786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %787, i64 16, i1 false), !tbaa.struct !181
  br label %941

788:                                              ; preds = %54
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %2)
  br label %952

789:                                              ; preds = %54
  %790 = icmp slt i32 %65, %55
  br i1 %790, label %791, label %952

791:                                              ; preds = %789
  %792 = add nsw i32 %56, 2
  store i32 %792, ptr %18, align 8, !tbaa !183
  %793 = sext i32 %65 to i64
  %794 = getelementptr inbounds i8, ptr %64, i64 %793
  %795 = load i8, ptr %794, align 1, !tbaa !13
  switch i8 %795, label %952 [
    i8 34, label %796
    i8 35, label %807
    i8 36, label %822
    i8 37, label %837
  ]

796:                                              ; preds = %791
  %797 = icmp slt i32 %60, 7
  br i1 %797, label %952, label %798

798:                                              ; preds = %796
  %799 = load float, ptr %4, align 16, !tbaa !68
  %800 = load float, ptr %25, align 4, !tbaa !68
  %801 = load float, ptr %26, align 8, !tbaa !68
  %802 = load float, ptr %27, align 4, !tbaa !68
  %803 = load float, ptr %28, align 16, !tbaa !68
  %804 = load float, ptr %29, align 4, !tbaa !68
  %805 = load float, ptr %30, align 8, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %799, float noundef 0.000000e+00, float noundef %800, float noundef %801, float noundef %802, float noundef 0.000000e+00)
  %806 = fneg float %801
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %803, float noundef 0.000000e+00, float noundef %804, float noundef %806, float noundef %805, float noundef 0.000000e+00)
  br label %941

807:                                              ; preds = %791
  %808 = icmp slt i32 %60, 13
  br i1 %808, label %952, label %809

809:                                              ; preds = %807
  %810 = load float, ptr %4, align 16, !tbaa !68
  %811 = load float, ptr %25, align 4, !tbaa !68
  %812 = load float, ptr %26, align 8, !tbaa !68
  %813 = load float, ptr %27, align 4, !tbaa !68
  %814 = load float, ptr %28, align 16, !tbaa !68
  %815 = load float, ptr %29, align 4, !tbaa !68
  %816 = load float, ptr %30, align 8, !tbaa !68
  %817 = load float, ptr %31, align 4, !tbaa !68
  %818 = load float, ptr %32, align 16, !tbaa !68
  %819 = load float, ptr %33, align 4, !tbaa !68
  %820 = load float, ptr %34, align 8, !tbaa !68
  %821 = load float, ptr %35, align 4, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %810, float noundef %811, float noundef %812, float noundef %813, float noundef %814, float noundef %815)
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %816, float noundef %817, float noundef %818, float noundef %819, float noundef %820, float noundef %821)
  br label %941

822:                                              ; preds = %791
  %823 = icmp slt i32 %60, 9
  br i1 %823, label %952, label %824

824:                                              ; preds = %822
  %825 = load float, ptr %4, align 16, !tbaa !68
  %826 = load float, ptr %25, align 4, !tbaa !68
  %827 = load float, ptr %26, align 8, !tbaa !68
  %828 = load float, ptr %27, align 4, !tbaa !68
  %829 = load float, ptr %28, align 16, !tbaa !68
  %830 = load float, ptr %29, align 4, !tbaa !68
  %831 = load float, ptr %30, align 8, !tbaa !68
  %832 = load float, ptr %31, align 4, !tbaa !68
  %833 = load float, ptr %32, align 16, !tbaa !68
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %825, float noundef %826, float noundef %827, float noundef %828, float noundef %829, float noundef 0.000000e+00)
  %834 = fadd float %826, %828
  %835 = fadd float %834, %832
  %836 = fneg float %835
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %830, float noundef 0.000000e+00, float noundef %831, float noundef %832, float noundef %833, float noundef %836)
  br label %941

837:                                              ; preds = %791
  %838 = icmp slt i32 %60, 11
  br i1 %838, label %952, label %839

839:                                              ; preds = %837
  %840 = load float, ptr %34, align 8, !tbaa !68
  %841 = load <2 x float>, ptr %4, align 16, !tbaa !68
  %842 = load <2 x float>, ptr %26, align 8, !tbaa !68
  %843 = load <2 x float>, ptr %28, align 16, !tbaa !68
  %844 = load <2 x float>, ptr %30, align 8, !tbaa !68
  %845 = load <2 x float>, ptr %32, align 16, !tbaa !68
  %846 = fadd <2 x float> %841, %842
  %847 = fadd <2 x float> %846, %843
  %848 = fadd <2 x float> %847, %844
  %849 = fadd <2 x float> %848, %845
  %850 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %849)
  %851 = extractelement <2 x float> %850, i64 0
  %852 = extractelement <2 x float> %850, i64 1
  %853 = fcmp ogt float %851, %852
  %854 = extractelement <2 x float> %849, i64 1
  %855 = fneg float %854
  %856 = extractelement <2 x float> %849, i64 0
  %857 = fneg float %856
  %858 = select i1 %853, float %840, float %857
  %859 = select i1 %853, float %855, float %840
  %860 = extractelement <2 x float> %841, i64 0
  %861 = extractelement <2 x float> %841, i64 1
  %862 = extractelement <2 x float> %842, i64 0
  %863 = extractelement <2 x float> %842, i64 1
  %864 = extractelement <2 x float> %843, i64 0
  %865 = extractelement <2 x float> %843, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %860, float noundef %861, float noundef %862, float noundef %863, float noundef %864, float noundef %865)
  %866 = extractelement <2 x float> %844, i64 0
  %867 = extractelement <2 x float> %844, i64 1
  %868 = extractelement <2 x float> %845, i64 0
  %869 = extractelement <2 x float> %845, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %866, float noundef %867, float noundef %868, float noundef %869, float noundef %858, float noundef %859)
  br label %941

870:                                              ; preds = %54
  %871 = icmp ne i8 %68, 28
  %872 = icmp ult i8 %68, 32
  %873 = and i1 %872, %871
  br i1 %873, label %952, label %874

874:                                              ; preds = %870
  %875 = icmp eq i8 %68, -1
  br i1 %875, label %876, label %925

876:                                              ; preds = %874
  %877 = icmp slt i32 %65, %55
  br i1 %877, label %878, label %883

878:                                              ; preds = %876
  %879 = add nsw i32 %56, 2
  %880 = sext i32 %65 to i64
  %881 = getelementptr inbounds i8, ptr %64, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !13
  br label %883

883:                                              ; preds = %878, %876
  %884 = phi i32 [ %879, %878 ], [ %65, %876 ]
  %885 = phi i8 [ %882, %878 ], [ 0, %876 ]
  %886 = zext i8 %885 to i32
  %887 = icmp slt i32 %884, %55
  br i1 %887, label %888, label %893

888:                                              ; preds = %883
  %889 = add nsw i32 %884, 1
  %890 = sext i32 %884 to i64
  %891 = getelementptr inbounds i8, ptr %64, i64 %890
  %892 = load i8, ptr %891, align 1, !tbaa !13
  br label %893

893:                                              ; preds = %888, %883
  %894 = phi i32 [ %889, %888 ], [ %884, %883 ]
  %895 = phi i8 [ %892, %888 ], [ 0, %883 ]
  %896 = zext i8 %895 to i32
  %897 = shl nuw nsw i32 %886, 16
  %898 = shl nuw nsw i32 %896, 8
  %899 = or disjoint i32 %897, %898
  %900 = icmp slt i32 %894, %55
  br i1 %900, label %901, label %906

901:                                              ; preds = %893
  %902 = add nsw i32 %894, 1
  %903 = sext i32 %894 to i64
  %904 = getelementptr inbounds i8, ptr %64, i64 %903
  %905 = load i8, ptr %904, align 1, !tbaa !13
  br label %906

906:                                              ; preds = %901, %893
  %907 = phi i32 [ %902, %901 ], [ %894, %893 ]
  %908 = phi i8 [ %905, %901 ], [ 0, %893 ]
  %909 = zext i8 %908 to i32
  %910 = or disjoint i32 %899, %909
  %911 = shl nuw i32 %910, 8
  %912 = icmp slt i32 %907, %55
  br i1 %912, label %913, label %918

913:                                              ; preds = %906
  %914 = add nsw i32 %907, 1
  %915 = sext i32 %907 to i64
  %916 = getelementptr inbounds i8, ptr %64, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !13
  br label %918

918:                                              ; preds = %913, %906
  %919 = phi i32 [ %914, %913 ], [ %907, %906 ]
  %920 = phi i8 [ %917, %913 ], [ 0, %906 ]
  %921 = zext i8 %920 to i32
  %922 = or disjoint i32 %911, %921
  store i32 %919, ptr %18, align 8, !tbaa !183
  %923 = sitofp i32 %922 to float
  %924 = fmul float %923, 0x3EF0000000000000
  br label %934

925:                                              ; preds = %874
  %926 = icmp slt i32 %55, %56
  %927 = icmp slt i32 %56, 0
  %928 = or i1 %927, %926
  br i1 %928, label %929, label %930

929:                                              ; preds = %925
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

930:                                              ; preds = %925
  store i32 %56, ptr %18, align 8, !tbaa !183
  %931 = call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %6)
  %932 = trunc i32 %931 to i16
  %933 = sitofp i16 %932 to float
  br label %934

934:                                              ; preds = %930, %918
  %935 = phi float [ %924, %918 ], [ %933, %930 ]
  %936 = icmp sgt i32 %60, 47
  br i1 %936, label %952, label %937

937:                                              ; preds = %934
  %938 = add nsw i32 %60, 1
  %939 = sext i32 %60 to i64
  %940 = getelementptr inbounds [48 x float], ptr %4, i64 0, i64 %939
  store float %935, ptr %940, align 4, !tbaa !68
  br label %941

941:                                              ; preds = %593, %353, %165, %572, %548, %839, %824, %809, %798, %83, %84, %89, %100, %107, %232, %175, %321, %293, %457, %524, %937, %784, %781
  %942 = phi i32 [ %57, %937 ], [ %57, %784 ], [ %57, %781 ], [ %57, %839 ], [ %57, %824 ], [ %57, %809 ], [ %57, %798 ], [ 0, %83 ], [ %57, %84 ], [ 0, %89 ], [ 0, %100 ], [ 0, %107 ], [ %57, %232 ], [ %57, %175 ], [ %57, %321 ], [ %57, %293 ], [ %57, %457 ], [ %57, %524 ], [ %57, %548 ], [ %57, %572 ], [ %57, %165 ], [ %57, %353 ], [ %57, %593 ]
  %943 = phi i32 [ %58, %937 ], [ %58, %784 ], [ %58, %781 ], [ %58, %839 ], [ %58, %824 ], [ %58, %809 ], [ %58, %798 ], [ %75, %83 ], [ %86, %84 ], [ %58, %89 ], [ %58, %100 ], [ %58, %107 ], [ %58, %232 ], [ %58, %175 ], [ %58, %321 ], [ %58, %293 ], [ %58, %457 ], [ %58, %524 ], [ %58, %548 ], [ %58, %572 ], [ %58, %165 ], [ %58, %353 ], [ %58, %593 ]
  %944 = phi i32 [ %59, %937 ], [ %785, %784 ], [ %731, %781 ], [ %59, %839 ], [ %59, %824 ], [ %59, %809 ], [ %59, %798 ], [ %59, %83 ], [ %59, %84 ], [ %59, %89 ], [ %59, %100 ], [ %59, %107 ], [ %59, %232 ], [ %59, %175 ], [ %59, %321 ], [ %59, %293 ], [ %59, %457 ], [ %59, %524 ], [ %59, %548 ], [ %59, %572 ], [ %59, %165 ], [ %59, %353 ], [ %59, %593 ]
  %945 = phi i32 [ %61, %937 ], [ %61, %784 ], [ %721, %781 ], [ %61, %839 ], [ %61, %824 ], [ %61, %809 ], [ %61, %798 ], [ %61, %83 ], [ %61, %84 ], [ %61, %89 ], [ %61, %100 ], [ %61, %107 ], [ %61, %232 ], [ %61, %175 ], [ %61, %321 ], [ %61, %293 ], [ %61, %457 ], [ %61, %524 ], [ %61, %548 ], [ %61, %572 ], [ %61, %165 ], [ %61, %353 ], [ %61, %593 ]
  %946 = phi i64 [ %62, %937 ], [ %62, %784 ], [ %720, %781 ], [ %62, %839 ], [ %62, %824 ], [ %62, %809 ], [ %62, %798 ], [ %62, %83 ], [ %62, %84 ], [ %62, %89 ], [ %62, %100 ], [ %62, %107 ], [ %62, %232 ], [ %62, %175 ], [ %62, %321 ], [ %62, %293 ], [ %62, %457 ], [ %62, %524 ], [ %62, %548 ], [ %62, %572 ], [ %62, %165 ], [ %62, %353 ], [ %62, %593 ]
  %947 = phi ptr [ %63, %937 ], [ %63, %784 ], [ %719, %781 ], [ %63, %839 ], [ %63, %824 ], [ %63, %809 ], [ %63, %798 ], [ %63, %83 ], [ %63, %84 ], [ %63, %89 ], [ %63, %100 ], [ %63, %107 ], [ %63, %232 ], [ %63, %175 ], [ %63, %321 ], [ %63, %293 ], [ %63, %457 ], [ %63, %524 ], [ %63, %548 ], [ %63, %572 ], [ %63, %165 ], [ %63, %353 ], [ %63, %593 ]
  %948 = phi i32 [ %938, %937 ], [ %60, %784 ], [ %724, %781 ], [ 0, %839 ], [ 0, %824 ], [ 0, %809 ], [ 0, %798 ], [ 0, %83 ], [ 0, %84 ], [ 0, %89 ], [ 0, %100 ], [ 0, %107 ], [ 0, %232 ], [ 0, %175 ], [ 0, %321 ], [ 0, %293 ], [ 0, %457 ], [ 0, %524 ], [ 0, %548 ], [ 0, %572 ], [ 0, %165 ], [ 0, %353 ], [ 0, %593 ]
  %949 = load i32, ptr %18, align 8, !tbaa !183
  %950 = load i32, ptr %19, align 4, !tbaa !184
  %951 = icmp slt i32 %949, %950
  br i1 %951, label %54, label %952, !llvm.loop !262

952:                                              ; preds = %87, %98, %105, %112, %171, %173, %289, %291, %349, %376, %404, %460, %520, %546, %718, %723, %776, %782, %870, %934, %941, %791, %837, %822, %807, %796, %789, %3, %788
  %953 = phi i32 [ 1, %788 ], [ 0, %3 ], [ 0, %789 ], [ 0, %796 ], [ 0, %807 ], [ 0, %822 ], [ 0, %837 ], [ 0, %791 ], [ 0, %941 ], [ 0, %934 ], [ 0, %870 ], [ 0, %782 ], [ 0, %776 ], [ 0, %723 ], [ 0, %718 ], [ 0, %546 ], [ 0, %520 ], [ 0, %460 ], [ 0, %404 ], [ 0, %376 ], [ 0, %349 ], [ 0, %291 ], [ 0, %289 ], [ 0, %173 ], [ 0, %171 ], [ 0, %112 ], [ 0, %105 ], [ 0, %98 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #34
  ret i32 %953
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #0 {
  %4 = lshr i64 %1, 32
  %5 = trunc i64 %4 to i32
  %6 = icmp slt i64 %1, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %10, label %14

9:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

10:                                               ; preds = %7
  %11 = load i8, ptr %0, align 1, !tbaa !13
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 1, %10 ], [ 0, %7 ]
  %16 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %17 = icmp slt i32 %15, %5
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %15, 1
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i32 [ %19, %18 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %18 ], [ 0, %14 ]
  %27 = or disjoint i32 %16, %26
  %28 = icmp slt i32 %25, %5
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %25, 1
  %31 = zext nneg i32 %25 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !13
  br label %34

34:                                               ; preds = %24, %29
  %35 = phi i32 [ %30, %29 ], [ %25, %24 ]
  %36 = phi i8 [ %33, %29 ], [ 0, %24 ]
  %37 = icmp sgt i32 %2, -1
  %38 = icmp ugt i32 %27, %2
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1266, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__cff_index_get) #32
  unreachable

41:                                               ; preds = %34
  %42 = add i8 %36, -1
  %43 = icmp ult i8 %42, 4
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1267, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__cff_index_get) #32
  unreachable

45:                                               ; preds = %41
  %46 = zext nneg i8 %36 to i32
  %47 = mul nuw nsw i32 %46, %2
  %48 = add nuw nsw i32 %47, %35
  %49 = icmp ugt i32 %48, %5
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

51:                                               ; preds = %45
  %52 = icmp slt i32 %48, %5
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = add nsw i32 %48, 1
  %55 = sext i32 %48 to i64
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %53, %51
  %60 = phi i32 [ %54, %53 ], [ %48, %51 ]
  %61 = phi i32 [ %58, %53 ], [ 0, %51 ]
  %62 = icmp eq i8 %36, 1
  br i1 %62, label %104, label %63, !llvm.loop !263

63:                                               ; preds = %59
  %64 = shl nuw nsw i32 %61, 8
  %65 = icmp slt i32 %60, %5
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = add nsw i32 %60, 1
  %68 = sext i32 %60 to i64
  %69 = getelementptr inbounds i8, ptr %0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = zext i8 %70 to i32
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi i32 [ %67, %66 ], [ %60, %63 ]
  %74 = phi i32 [ %71, %66 ], [ 0, %63 ]
  %75 = or disjoint i32 %64, %74
  %76 = icmp eq i8 %36, 2
  br i1 %76, label %104, label %77, !llvm.loop !263

77:                                               ; preds = %72
  %78 = shl nuw nsw i32 %75, 8
  %79 = icmp slt i32 %73, %5
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = add nsw i32 %73, 1
  %82 = sext i32 %73 to i64
  %83 = getelementptr inbounds i8, ptr %0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = zext i8 %84 to i32
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i32 [ %81, %80 ], [ %73, %77 ]
  %88 = phi i32 [ %85, %80 ], [ 0, %77 ]
  %89 = or disjoint i32 %78, %88
  %90 = icmp eq i8 %36, 3
  br i1 %90, label %104, label %91, !llvm.loop !263

91:                                               ; preds = %86
  %92 = shl nuw i32 %89, 8
  %93 = icmp slt i32 %87, %5
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = add nsw i32 %87, 1
  %96 = sext i32 %87 to i64
  %97 = getelementptr inbounds i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !13
  %99 = zext i8 %98 to i32
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i32 [ %95, %94 ], [ %87, %91 ]
  %102 = phi i32 [ %99, %94 ], [ 0, %91 ]
  %103 = or disjoint i32 %92, %102
  br label %104

104:                                              ; preds = %100, %86, %72, %59
  %105 = phi i32 [ %60, %59 ], [ %73, %72 ], [ %87, %86 ], [ %101, %100 ]
  %106 = phi i32 [ %61, %59 ], [ %75, %72 ], [ %89, %86 ], [ %103, %100 ]
  %107 = and i32 %46, 1
  %108 = icmp eq i8 %36, 1
  br i1 %108, label %143, label %109

109:                                              ; preds = %104
  %110 = and i32 %46, 6
  br label %111

111:                                              ; preds = %134, %109
  %112 = phi i32 [ %105, %109 ], [ %135, %134 ]
  %113 = phi i32 [ 0, %109 ], [ %138, %134 ]
  %114 = phi i32 [ 0, %109 ], [ %139, %134 ]
  %115 = icmp slt i32 %112, %5
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = add nsw i32 %112, 1
  %118 = sext i32 %112 to i64
  %119 = getelementptr inbounds i8, ptr %0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !13
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ %117, %116 ], [ %112, %111 ]
  %123 = phi i8 [ %120, %116 ], [ 0, %111 ]
  %124 = zext i8 %123 to i32
  %125 = shl i32 %113, 16
  %126 = shl nuw nsw i32 %124, 8
  %127 = or disjoint i32 %125, %126
  %128 = icmp slt i32 %122, %5
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = add nsw i32 %122, 1
  %131 = sext i32 %122 to i64
  %132 = getelementptr inbounds i8, ptr %0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !13
  br label %134

134:                                              ; preds = %129, %121
  %135 = phi i32 [ %130, %129 ], [ %122, %121 ]
  %136 = phi i8 [ %133, %129 ], [ 0, %121 ]
  %137 = zext i8 %136 to i32
  %138 = or disjoint i32 %127, %137
  %139 = add i32 %114, 2
  %140 = icmp eq i32 %139, %110
  br i1 %140, label %141, label %111, !llvm.loop !263

141:                                              ; preds = %134
  %142 = shl i32 %138, 8
  br label %143

143:                                              ; preds = %141, %104
  %144 = phi i32 [ undef, %104 ], [ %138, %141 ]
  %145 = phi i32 [ %105, %104 ], [ %135, %141 ]
  %146 = phi i32 [ 0, %104 ], [ %142, %141 ]
  %147 = icmp eq i32 %107, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  %149 = icmp slt i32 %145, %5
  br i1 %149, label %150, label %155

150:                                              ; preds = %148
  %151 = sext i32 %145 to i64
  %152 = getelementptr inbounds i8, ptr %0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !13
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %150, %148
  %156 = phi i32 [ %154, %150 ], [ 0, %148 ]
  %157 = or disjoint i32 %146, %156
  br label %158

158:                                              ; preds = %143, %155
  %159 = phi i32 [ %144, %143 ], [ %157, %155 ]
  %160 = add nuw nsw i32 %27, 1
  %161 = mul nuw nsw i32 %160, %46
  %162 = add nuw nsw i32 %161, 2
  %163 = add nsw i32 %162, %106
  %164 = sub nsw i32 %159, %106
  %165 = or i32 %164, %163
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %167, label %177

167:                                              ; preds = %158
  %168 = icmp sgt i32 %163, %5
  %169 = sub nsw i32 %5, %163
  %170 = icmp slt i32 %169, %164
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = zext nneg i32 %163 to i64
  %174 = getelementptr inbounds i8, ptr %0, i64 %173
  %175 = zext nneg i32 %164 to i64
  %176 = shl nuw nsw i64 %175, 32
  br label %177

177:                                              ; preds = %158, %167, %172
  %178 = phi ptr [ null, %158 ], [ null, %167 ], [ %174, %172 ]
  %179 = phi i64 [ 0, %158 ], [ 0, %167 ], [ %176, %172 ]
  %180 = insertvalue { ptr, i64 } poison, ptr %178, 0
  %181 = insertvalue { ptr, i64 } %180, i64 %179, 1
  ret { ptr, i64 } %181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stbtt__csctx_rmove_to(ptr nocapture noundef %0, float noundef %1, float noundef %2) unnamed_addr #27 {
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %0)
  %4 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 2
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !68
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = insertelement <2 x float> %7, float %2, i64 1
  %9 = fadd <2 x float> %6, %8
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %10, ptr %5, align 8, !tbaa !68
  %11 = fptosi <2 x float> %9 to <2 x i32>
  %12 = load i32, ptr %0, align 8, !tbaa !249
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !250
  %17 = extractelement <2 x i32> %11, i64 0
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !251
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  store i32 %17, ptr %15, align 4, !tbaa !250
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 4, !tbaa !252
  %27 = extractelement <2 x i32> %11, i64 1
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !251
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 %27, ptr %25, align 4, !tbaa !252
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !253
  %37 = icmp sgt i32 %36, %17
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !251
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 %17, ptr %35, align 8, !tbaa !253
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 8
  %45 = load i32, ptr %44, align 8, !tbaa !254
  %46 = icmp sgt i32 %45, %27
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !251
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i32 %27, ptr %44, align 8, !tbaa !254
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  store i32 1, ptr %53, align 4, !tbaa !251
  %54 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !36
  br label %66

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !36
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stbtt_vertex, ptr %58, i64 %61
  %63 = getelementptr inbounds %struct.stbtt_vertex, ptr %58, i64 %61, i32 6
  store i8 1, ptr %63, align 2, !tbaa !19
  %64 = trunc <2 x i32> %11 to <2 x i16>
  store <2 x i16> %64, ptr %62, align 2, !tbaa !33
  %65 = getelementptr inbounds %struct.stbtt_vertex, ptr %58, i64 %61, i32 2
  store i64 0, ptr %65, align 2
  br label %66

66:                                               ; preds = %52, %56
  %67 = phi i32 [ %55, %52 ], [ %60, %56 ]
  %68 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %69 = add nsw i32 %67, 1
  store i32 %69, ptr %68, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stbtt__csctx_rccurve_to(ptr nocapture noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #27 {
  %8 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 4
  %9 = load <2 x float>, ptr %8, align 8, !tbaa !68
  %10 = insertelement <2 x float> poison, float %1, i64 0
  %11 = insertelement <2 x float> %10, float %2, i64 1
  %12 = fadd <2 x float> %9, %11
  %13 = insertelement <2 x float> poison, float %3, i64 0
  %14 = insertelement <2 x float> %13, float %4, i64 1
  %15 = fadd <2 x float> %12, %14
  %16 = insertelement <2 x float> poison, float %5, i64 0
  %17 = insertelement <2 x float> %16, float %6, i64 1
  %18 = fadd <2 x float> %15, %17
  store <2 x float> %18, ptr %8, align 8, !tbaa !68
  %19 = shufflevector <2 x float> %18, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = fptosi <4 x float> %19 to <4 x i32>
  %21 = fptosi <2 x float> %15 to <2 x i32>
  %22 = load i32, ptr %0, align 8, !tbaa !249
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %102, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !250
  %27 = extractelement <4 x i32> %20, i64 0
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !251
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 %27, ptr %25, align 4, !tbaa !250
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %27, %33 ], [ %26, %29 ]
  %36 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 9
  %37 = load i32, ptr %36, align 4, !tbaa !252
  %38 = extractelement <4 x i32> %20, i64 1
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !251
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  store i32 %38, ptr %36, align 4, !tbaa !252
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %38, %44 ], [ %37, %40 ]
  %47 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !253
  %49 = icmp sgt i32 %48, %27
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !251
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %45
  store i32 %27, ptr %47, align 8, !tbaa !253
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %27, %54 ], [ %48, %50 ]
  %57 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 8
  %58 = load i32, ptr %57, align 8, !tbaa !254
  %59 = icmp sgt i32 %58, %38
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !251
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %55
  store i32 %38, ptr %57, align 8, !tbaa !254
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %58, %60 ], [ %38, %64 ]
  %67 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  store i32 1, ptr %67, align 4, !tbaa !251
  %68 = extractelement <4 x i32> %20, i64 2
  %69 = icmp slt i32 %35, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 %68, ptr %25, align 4, !tbaa !250
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32 [ %35, %65 ], [ %68, %70 ]
  %73 = extractelement <4 x i32> %20, i64 3
  %74 = icmp slt i32 %46, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 %73, ptr %36, align 4, !tbaa !252
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %46, %71 ], [ %73, %75 ]
  %78 = icmp sgt i32 %56, %68
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 %68, ptr %47, align 8, !tbaa !253
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %56, %76 ], [ %68, %79 ]
  %82 = icmp sgt i32 %66, %73
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 %73, ptr %57, align 8, !tbaa !254
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %66, %80 ], [ %73, %83 ]
  %86 = extractelement <2 x i32> %21, i64 0
  %87 = icmp slt i32 %72, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %86, ptr %25, align 4, !tbaa !250
  br label %89

89:                                               ; preds = %88, %84
  %90 = extractelement <2 x i32> %21, i64 1
  %91 = icmp slt i32 %77, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 %90, ptr %36, align 4, !tbaa !252
  br label %93

93:                                               ; preds = %92, %89
  %94 = icmp sgt i32 %81, %86
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store i32 %86, ptr %47, align 8, !tbaa !253
  br label %96

96:                                               ; preds = %95, %93
  %97 = icmp sgt i32 %85, %90
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  store i32 %90, ptr %57, align 8, !tbaa !254
  br label %99

99:                                               ; preds = %98, %96
  store i32 1, ptr %67, align 4, !tbaa !251
  %100 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %101 = load i32, ptr %100, align 8, !tbaa !36
  br label %113

102:                                              ; preds = %7
  %103 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !39
  %105 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %106 = load i32, ptr %105, align 8, !tbaa !36
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.stbtt_vertex, ptr %104, i64 %107
  %109 = getelementptr inbounds %struct.stbtt_vertex, ptr %104, i64 %107, i32 6
  store i8 4, ptr %109, align 2, !tbaa !19
  %110 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %110, ptr %108, align 2, !tbaa !33
  %111 = trunc <2 x i32> %21 to <2 x i16>
  %112 = getelementptr inbounds %struct.stbtt_vertex, ptr %104, i64 %107, i32 4
  store <2 x i16> %111, ptr %112, align 2, !tbaa !33
  br label %113

113:                                              ; preds = %99, %102
  %114 = phi i32 [ %101, %99 ], [ %106, %102 ]
  %115 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %116 = add nsw i32 %114, 1
  store i32 %116, ptr %115, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stbtt__csctx_close_shape(ptr nocapture noundef %0) unnamed_addr #27 {
  %2 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 4
  %4 = load float, ptr %3, align 8, !tbaa !264
  %5 = load <2 x float>, ptr %2, align 8, !tbaa !68
  %6 = extractelement <2 x float> %5, i64 0
  %7 = fcmp une float %6, %4
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 5
  %10 = load float, ptr %9, align 4, !tbaa !265
  %11 = extractelement <2 x float> %5, i64 1
  %12 = fcmp une float %11, %10
  br i1 %12, label %13, label %73

13:                                               ; preds = %1, %8
  %14 = fptosi <2 x float> %5 to <2 x i32>
  %15 = load i32, ptr %0, align 8, !tbaa !249
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !250
  %20 = extractelement <2 x i32> %14, i64 0
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !251
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %17
  store i32 %20, ptr %18, align 4, !tbaa !250
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !252
  %30 = extractelement <2 x i32> %14, i64 1
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !251
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  store i32 %30, ptr %28, align 4, !tbaa !252
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !253
  %40 = icmp sgt i32 %39, %20
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !251
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 %20, ptr %38, align 8, !tbaa !253
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !254
  %49 = icmp sgt i32 %48, %30
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !251
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 %30, ptr %47, align 8, !tbaa !254
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 1
  store i32 1, ptr %56, align 4, !tbaa !251
  %57 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !36
  br label %69

59:                                               ; preds = %13
  %60 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !36
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.stbtt_vertex, ptr %61, i64 %64
  %66 = getelementptr inbounds %struct.stbtt_vertex, ptr %61, i64 %64, i32 6
  store i8 2, ptr %66, align 2, !tbaa !19
  %67 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %67, ptr %65, align 2, !tbaa !33
  %68 = getelementptr inbounds %struct.stbtt_vertex, ptr %61, i64 %64, i32 2
  store i64 0, ptr %68, align 2
  br label %69

69:                                               ; preds = %55, %59
  %70 = phi i32 [ %58, %55 ], [ %63, %59 ]
  %71 = getelementptr inbounds %struct.stbtt__csctx, ptr %0, i64 0, i32 11
  %72 = add nsw i32 %70, 1
  store i32 %72, ptr %71, align 8, !tbaa !36
  br label %73

73:                                               ; preds = %69, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stbtt__cff_int(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !184
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %119

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !185
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !183
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = add i8 %12, -32
  %15 = icmp ult i8 %14, -41
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = add nsw i32 %13, -139
  br label %120

18:                                               ; preds = %7
  %19 = add nsw i8 %12, 9
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = shl nuw nsw i32 %13, 8
  %23 = icmp slt i32 %9, %5
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = add nsw i32 %3, 2
  store i32 %25, ptr %2, align 8, !tbaa !183
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds i8, ptr %8, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %21, %24
  %31 = phi i32 [ %29, %24 ], [ 0, %21 ]
  %32 = add nsw i32 %22, -63124
  %33 = add nuw nsw i32 %32, %31
  br label %120

34:                                               ; preds = %18
  %35 = add nsw i8 %12, 5
  %36 = icmp ult i8 %35, 4
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = icmp slt i32 %9, %5
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = add nsw i32 %3, 2
  store i32 %40, ptr %2, align 8, !tbaa !183
  %41 = sext i32 %9 to i64
  %42 = getelementptr inbounds i8, ptr %8, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %37, %39
  %46 = phi i32 [ %44, %39 ], [ 0, %37 ]
  %47 = shl nuw nsw i32 %13, 8
  %48 = or disjoint i32 %47, %46
  %49 = sub nsw i32 64148, %48
  br label %120

50:                                               ; preds = %34
  switch i8 %12, label %119 [
    i8 28, label %51
    i8 29, label %73
  ]

51:                                               ; preds = %50
  %52 = icmp slt i32 %9, %5
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = add nsw i32 %3, 2
  store i32 %54, ptr %2, align 8, !tbaa !183
  %55 = sext i32 %9 to i64
  %56 = getelementptr inbounds i8, ptr %8, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  br label %60

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %9, %51 ]
  %62 = phi i32 [ %59, %53 ], [ 0, %51 ]
  %63 = icmp slt i32 %61, %5
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = add nsw i32 %61, 1
  store i32 %65, ptr %2, align 8, !tbaa !183
  %66 = sext i32 %61 to i64
  %67 = getelementptr inbounds i8, ptr %8, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %64, %60
  %71 = phi i32 [ %69, %64 ], [ 0, %60 ]
  %72 = or disjoint i32 %62, %71
  br label %120

73:                                               ; preds = %50
  %74 = icmp slt i32 %9, %5
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = add nsw i32 %3, 2
  store i32 %76, ptr %2, align 8, !tbaa !183
  %77 = sext i32 %9 to i64
  %78 = getelementptr inbounds i8, ptr %8, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !13
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  br label %82

82:                                               ; preds = %75, %73
  %83 = phi i32 [ %76, %75 ], [ %9, %73 ]
  %84 = phi i32 [ %81, %75 ], [ 0, %73 ]
  %85 = icmp slt i32 %83, %5
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = add nsw i32 %83, 1
  store i32 %87, ptr %2, align 8, !tbaa !183
  %88 = sext i32 %83 to i64
  %89 = getelementptr inbounds i8, ptr %8, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !13
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi i32 [ %87, %86 ], [ %83, %82 ]
  %94 = phi i32 [ %91, %86 ], [ 0, %82 ]
  %95 = or disjoint i32 %84, %94
  %96 = icmp slt i32 %93, %5
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = add nsw i32 %93, 1
  store i32 %98, ptr %2, align 8, !tbaa !183
  %99 = sext i32 %93 to i64
  %100 = getelementptr inbounds i8, ptr %8, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !13
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi i32 [ %98, %97 ], [ %93, %92 ]
  %106 = phi i32 [ %103, %97 ], [ 0, %92 ]
  %107 = shl nuw i32 %95, 16
  %108 = or i32 %107, %106
  %109 = icmp slt i32 %105, %5
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = add nsw i32 %105, 1
  store i32 %111, ptr %2, align 8, !tbaa !183
  %112 = sext i32 %105 to i64
  %113 = getelementptr inbounds i8, ptr %8, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %110, %104
  %117 = phi i32 [ %115, %110 ], [ 0, %104 ]
  %118 = or disjoint i32 %108, %117
  br label %120

119:                                              ; preds = %1, %50
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1212, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__cff_int) #32
  unreachable

120:                                              ; preds = %116, %70, %45, %30, %16
  %121 = phi i32 [ %17, %16 ], [ %33, %30 ], [ %49, %45 ], [ %72, %70 ], [ %118, %116 ]
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
  %5 = alloca %struct.stbtt__buf, align 8
  %6 = alloca %struct.stbtt__buf, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  %9 = alloca %struct.stbtt__buf, align 8
  store ptr %0, ptr %5, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1
  store i64 %1, ptr %10, align 8
  store ptr %2, ptr %6, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  store i64 %3, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #34
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #34
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %6, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %8)
  %12 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %8, align 8
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = lshr i64 %1, 32
  %19 = trunc i64 %18 to i32
  br i1 %17, label %20, label %47

20:                                               ; preds = %4
  %21 = or i32 %15, %13
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = icmp sgt i32 %13, %19
  %25 = sub nsw i32 %19, %13
  %26 = icmp slt i32 %25, %15
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext nneg i32 %13 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = zext nneg i32 %15 to i64
  %32 = shl nuw nsw i64 %31, 32
  br label %33

33:                                               ; preds = %20, %23, %28
  %34 = phi ptr [ null, %20 ], [ null, %23 ], [ %30, %28 ]
  %35 = phi i64 [ 0, %20 ], [ 0, %23 ], [ %32, %28 ]
  store ptr %34, ptr %9, align 8, !tbaa.struct !181
  %36 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 %35, ptr %36, align 8, !tbaa.struct !182
  call fastcc void @stbtt__dict_get_ints(ptr noundef nonnull %9, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %7)
  %37 = load i32, ptr %7, align 4, !tbaa !40
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = add i32 %37, %13
  %41 = icmp sgt i32 %40, %19
  %42 = icmp slt i32 %40, 0
  %43 = or i1 %42, %41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

45:                                               ; preds = %39
  store i32 %40, ptr %10, align 8, !tbaa !183
  %46 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %5)
  br label %47

47:                                               ; preds = %33, %4, %45
  %48 = phi { ptr, i64 } [ %46, %45 ], [ zeroinitializer, %4 ], [ zeroinitializer, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  ret { ptr, i64 } %48
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbtt__dict_get_ints(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #34
  %6 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !184
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !183
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %117, label %13

13:                                               ; preds = %10, %92
  %14 = phi i32 [ %78, %92 ], [ 0, %10 ]
  %15 = phi i32 [ %79, %92 ], [ %7, %10 ]
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13, %54
  %18 = phi i32 [ %55, %54 ], [ %15, %13 ]
  %19 = phi i32 [ %56, %54 ], [ %15, %13 ]
  %20 = phi i32 [ %57, %54 ], [ %14, %13 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !185
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = icmp ugt i8 %24, 27
  br i1 %25, label %26, label %59

26:                                               ; preds = %17
  %27 = icmp eq i8 %24, 30
  br i1 %27, label %28, label %50

28:                                               ; preds = %26
  %29 = icmp slt i32 %20, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

31:                                               ; preds = %28
  %32 = add nsw i32 %20, 1
  store i32 %32, ptr %11, align 8, !tbaa !183
  %33 = add nsw i64 %22, 1
  %34 = sext i32 %19 to i64
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %38, %36 ], [ %33, %31 ]
  %38 = add nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %11, align 8, !tbaa !183
  %40 = getelementptr inbounds i8, ptr %21, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %43, 15
  %45 = and i32 %42, 240
  %46 = icmp eq i32 %45, 240
  %47 = or i1 %44, %46
  %48 = icmp eq i64 %38, %34
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %54, label %36, !llvm.loop !266

50:                                               ; preds = %26
  %51 = tail call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %0)
  %52 = load i32, ptr %11, align 8, !tbaa !183
  %53 = load i32, ptr %6, align 4, !tbaa !184
  br label %54

54:                                               ; preds = %36, %31, %50
  %55 = phi i32 [ %53, %50 ], [ %18, %31 ], [ %18, %36 ]
  %56 = phi i32 [ %53, %50 ], [ %19, %31 ], [ %19, %36 ]
  %57 = phi i32 [ %52, %50 ], [ %32, %31 ], [ %39, %36 ]
  %58 = icmp slt i32 %57, %56
  br i1 %58, label %17, label %77, !llvm.loop !267

59:                                               ; preds = %17
  %60 = getelementptr inbounds i8, ptr %21, i64 %22
  %61 = add nsw i32 %20, 1
  store i32 %61, ptr %11, align 8, !tbaa !183
  %62 = load i8, ptr %60, align 1, !tbaa !13
  %63 = zext i8 %62 to i32
  %64 = icmp eq i8 %62, 12
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = icmp slt i32 %61, %19
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = add nsw i32 %20, 2
  store i32 %68, ptr %11, align 8, !tbaa !183
  %69 = sext i32 %61 to i64
  %70 = getelementptr inbounds i8, ptr %21, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !13
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i32 [ %68, %67 ], [ %61, %65 ]
  %74 = phi i8 [ %71, %67 ], [ 0, %65 ]
  %75 = zext i8 %74 to i32
  %76 = or disjoint i32 %75, 256
  br label %77

77:                                               ; preds = %54, %72, %59, %13
  %78 = phi i32 [ %73, %72 ], [ %61, %59 ], [ %14, %13 ], [ %57, %54 ]
  %79 = phi i32 [ %18, %72 ], [ %18, %59 ], [ %15, %13 ], [ %55, %54 ]
  %80 = phi i32 [ %20, %72 ], [ %20, %59 ], [ %14, %13 ], [ %57, %54 ]
  %81 = phi i32 [ %19, %72 ], [ %19, %59 ], [ %15, %13 ], [ %56, %54 ]
  %82 = phi i32 [ %76, %72 ], [ %63, %59 ], [ 0, %13 ], [ 0, %54 ]
  %83 = icmp eq i32 %82, %1
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = sub nsw i32 %80, %14
  %86 = or i32 %85, %14
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = icmp slt i32 %81, %14
  %90 = icmp slt i32 %81, %80
  %91 = or i1 %89, %90
  br i1 %91, label %117, label %94

92:                                               ; preds = %77
  %93 = icmp slt i32 %78, %79
  br i1 %93, label %13, label %117

94:                                               ; preds = %88
  %95 = load ptr, ptr %0, align 8, !tbaa !185
  %96 = zext nneg i32 %14 to i64
  %97 = getelementptr inbounds i8, ptr %95, i64 %96
  %98 = zext nneg i32 %85 to i64
  %99 = shl nuw nsw i64 %98, 32
  store ptr %97, ptr %5, align 8
  %100 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1
  store i64 %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.stbtt__buf, ptr %5, i64 0, i32 2
  %102 = icmp sgt i32 %2, 0
  %103 = icmp ne i32 %80, %14
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %94
  %106 = zext nneg i32 %2 to i64
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %111, %107 ]
  %109 = call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %5)
  %110 = getelementptr inbounds i32, ptr %3, i64 %108
  store i32 %109, ptr %110, align 4, !tbaa !40
  %111 = add nuw nsw i64 %108, 1
  %112 = icmp ult i64 %111, %106
  %113 = load i32, ptr %100, align 8
  %114 = load i32, ptr %101, align 4
  %115 = icmp slt i32 %113, %114
  %116 = select i1 %112, i1 %115, i1 false
  br i1 %116, label %107, label %117, !llvm.loop !268

117:                                              ; preds = %92, %107, %88, %84, %10, %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #34
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @stbtt__cff_get_index(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct.stbtt__buf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !184
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !185
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !183
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %9, %7 ], [ %3, %1 ]
  %17 = phi i32 [ %14, %7 ], [ 0, %1 ]
  %18 = icmp slt i32 %16, %5
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !185
  %21 = add nsw i32 %16, 1
  store i32 %21, ptr %2, align 8, !tbaa !183
  %22 = sext i32 %16 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %21, %19 ], [ %16, %15 ]
  %28 = phi i32 [ %25, %19 ], [ 0, %15 ]
  %29 = or disjoint i32 %17, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %113, label %31

31:                                               ; preds = %26
  %32 = icmp slt i32 %27, %5
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 8, !tbaa !185
  %35 = add nsw i32 %27, 1
  store i32 %35, ptr %2, align 8, !tbaa !183
  %36 = sext i32 %27 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = add i8 %38, -1
  %40 = icmp ult i8 %39, 4
  br i1 %40, label %42, label %41

41:                                               ; preds = %31, %33
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1197, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__cff_get_index) #32
  unreachable

42:                                               ; preds = %33
  %43 = zext nneg i8 %38 to i32
  %44 = mul nuw nsw i32 %29, %43
  %45 = add nsw i32 %35, %44
  %46 = icmp slt i32 %5, %45
  %47 = icmp slt i32 %45, 0
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

50:                                               ; preds = %42
  store i32 %45, ptr %2, align 8, !tbaa !183
  %51 = icmp slt i32 %45, %5
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = add nsw i32 %45, 1
  store i32 %53, ptr %2, align 8, !tbaa !183
  %54 = sext i32 %45 to i64
  %55 = getelementptr inbounds i8, ptr %34, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = zext i8 %56 to i32
  br label %58

58:                                               ; preds = %52, %50
  %59 = phi i32 [ %53, %52 ], [ %45, %50 ]
  %60 = phi i32 [ %57, %52 ], [ 0, %50 ]
  %61 = icmp eq i8 %38, 1
  br i1 %61, label %103, label %62, !llvm.loop !263

62:                                               ; preds = %58
  %63 = shl nuw nsw i32 %60, 8
  %64 = icmp slt i32 %59, %5
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = add nsw i32 %59, 1
  store i32 %66, ptr %2, align 8, !tbaa !183
  %67 = sext i32 %59 to i64
  %68 = getelementptr inbounds i8, ptr %34, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !13
  %70 = zext i8 %69 to i32
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i32 [ %66, %65 ], [ %59, %62 ]
  %73 = phi i32 [ %70, %65 ], [ 0, %62 ]
  %74 = or disjoint i32 %63, %73
  %75 = icmp eq i8 %38, 2
  br i1 %75, label %103, label %76, !llvm.loop !263

76:                                               ; preds = %71
  %77 = shl nuw nsw i32 %74, 8
  %78 = icmp slt i32 %72, %5
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = add nsw i32 %72, 1
  store i32 %80, ptr %2, align 8, !tbaa !183
  %81 = sext i32 %72 to i64
  %82 = getelementptr inbounds i8, ptr %34, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i32 [ %80, %79 ], [ %72, %76 ]
  %87 = phi i32 [ %84, %79 ], [ 0, %76 ]
  %88 = or disjoint i32 %77, %87
  %89 = icmp eq i8 %38, 3
  br i1 %89, label %103, label %90, !llvm.loop !263

90:                                               ; preds = %85
  %91 = shl nuw i32 %88, 8
  %92 = icmp slt i32 %86, %5
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = add nsw i32 %86, 1
  store i32 %94, ptr %2, align 8, !tbaa !183
  %95 = sext i32 %86 to i64
  %96 = getelementptr inbounds i8, ptr %34, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %93, %90
  %100 = phi i32 [ %94, %93 ], [ %86, %90 ]
  %101 = phi i32 [ %98, %93 ], [ 0, %90 ]
  %102 = or disjoint i32 %91, %101
  br label %103

103:                                              ; preds = %99, %85, %71, %58
  %104 = phi i32 [ %59, %58 ], [ %72, %71 ], [ %86, %85 ], [ %100, %99 ]
  %105 = phi i32 [ %60, %58 ], [ %74, %71 ], [ %88, %85 ], [ %102, %99 ]
  %106 = add i32 %105, -1
  %107 = add nsw i32 %106, %104
  %108 = icmp slt i32 %5, %107
  %109 = icmp slt i32 %107, 0
  %110 = or i1 %109, %108
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1149, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__buf_seek) #32
  unreachable

112:                                              ; preds = %103
  store i32 %107, ptr %2, align 8, !tbaa !183
  br label %113

113:                                              ; preds = %112, %26
  %114 = phi i32 [ %107, %112 ], [ %27, %26 ]
  %115 = sub nsw i32 %114, %3
  %116 = or i32 %115, %3
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = icmp slt i32 %5, %3
  %120 = icmp slt i32 %5, %114
  %121 = or i1 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 8, !tbaa !185
  %124 = zext nneg i32 %3 to i64
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = zext nneg i32 %115 to i64
  %127 = shl nuw nsw i64 %126, 32
  br label %128

128:                                              ; preds = %113, %118, %122
  %129 = phi ptr [ null, %113 ], [ null, %118 ], [ %125, %122 ]
  %130 = phi i64 [ 0, %113 ], [ 0, %118 ], [ %127, %122 ]
  %131 = insertvalue { ptr, i64 } poison, ptr %129, 0
  %132 = insertvalue { ptr, i64 } %131, i64 %130, 1
  ret { ptr, i64 } %132
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @stbtt__GetGlyphClass(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load i8, ptr %0, align 1, !tbaa !13
  %4 = zext i8 %3 to i16
  %5 = shl nuw i16 %4, 8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = zext i8 %7 to i16
  %9 = or disjoint i16 %5, %8
  switch i16 %9, label %97 [
    i16 1, label %10
    i16 2, label %38
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = getelementptr inbounds i8, ptr %0, i64 6
  %20 = icmp sgt i32 %18, %1
  br i1 %20, label %97, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds i8, ptr %0, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = getelementptr inbounds i8, ptr %0, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32
  %29 = or disjoint i32 %25, %28
  %30 = add nuw nsw i32 %29, %18
  %31 = icmp ugt i32 %30, %1
  br i1 %31, label %32, label %97

32:                                               ; preds = %21
  %33 = sub nsw i32 %1, %18
  %34 = shl nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %19, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  br label %88

38:                                               ; preds = %2
  %39 = getelementptr inbounds i8, ptr %0, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr inbounds i8, ptr %0, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = or disjoint i32 %42, %45
  %47 = getelementptr inbounds i8, ptr %0, i64 4
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %97, label %49

49:                                               ; preds = %38
  %50 = add nsw i32 %46, -1
  br label %51

51:                                               ; preds = %49, %81
  %52 = phi i32 [ %83, %81 ], [ 0, %49 ]
  %53 = phi i32 [ %82, %81 ], [ %50, %49 ]
  %54 = add nsw i32 %52, %53
  %55 = ashr i32 %54, 1
  %56 = mul nsw i32 %55, 6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %47, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i32
  %65 = or disjoint i32 %61, %64
  %66 = icmp sgt i32 %65, %1
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = add nsw i32 %55, -1
  br label %81

69:                                               ; preds = %51
  %70 = getelementptr inbounds i8, ptr %58, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = getelementptr inbounds i8, ptr %58, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !13
  %76 = zext i8 %75 to i32
  %77 = or disjoint i32 %73, %76
  %78 = icmp ult i32 %77, %1
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = add nsw i32 %55, 1
  br label %81

81:                                               ; preds = %67, %79
  %82 = phi i32 [ %68, %67 ], [ %53, %79 ]
  %83 = phi i32 [ %52, %67 ], [ %80, %79 ]
  %84 = icmp sgt i32 %83, %82
  br i1 %84, label %97, label %51, !llvm.loop !269

85:                                               ; preds = %69
  %86 = getelementptr inbounds i8, ptr %58, i64 4
  %87 = getelementptr inbounds i8, ptr %58, i64 5
  br label %88

88:                                               ; preds = %32, %85
  %89 = phi ptr [ %87, %85 ], [ %37, %32 ]
  %90 = phi ptr [ %86, %85 ], [ %36, %32 ]
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 8
  %94 = load i8, ptr %89, align 1, !tbaa !13
  %95 = zext i8 %94 to i32
  %96 = or disjoint i32 %93, %95
  br label %97

97:                                               ; preds = %81, %88, %38, %10, %21, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %21 ], [ 0, %10 ], [ 0, %38 ], [ %96, %88 ], [ 0, %81 ]
  ret i32 %98
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr nocapture noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #28 {
  %11 = icmp sgt i32 %9, 16
  br i1 %11, label %60, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x float> poison, float %5, i64 0
  %14 = insertelement <2 x float> %13, float %4, i64 1
  %15 = insertelement <2 x float> poison, float %3, i64 0
  %16 = insertelement <2 x float> %15, float %2, i64 1
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %16)
  %18 = insertelement <2 x float> poison, float %7, i64 0
  %19 = insertelement <2 x float> %18, float %6, i64 1
  br label %20

20:                                               ; preds = %12, %39
  %21 = phi i32 [ %46, %39 ], [ %9, %12 ]
  %22 = phi float [ %30, %39 ], [ %3, %12 ]
  %23 = phi float [ %34, %39 ], [ %2, %12 ]
  %24 = phi <2 x float> [ %49, %39 ], [ %17, %12 ]
  %25 = phi <2 x float> [ %48, %39 ], [ %14, %12 ]
  %26 = fadd <2 x float> %24, %19
  %27 = fmul <2 x float> %26, <float 2.500000e-01, float 2.500000e-01>
  %28 = fadd float %22, %7
  %29 = fmul float %28, 5.000000e-01
  %30 = extractelement <2 x float> %27, i64 0
  %31 = fsub float %29, %30
  %32 = fadd float %23, %6
  %33 = fmul float %32, 5.000000e-01
  %34 = extractelement <2 x float> %27, i64 1
  %35 = fsub float %33, %34
  %36 = fmul float %31, %31
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %36)
  %38 = fcmp ogt float %37, %8
  br i1 %38, label %39, label %51

39:                                               ; preds = %20
  %40 = extractelement <2 x float> %25, i64 1
  %41 = fadd float %23, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = extractelement <2 x float> %25, i64 0
  %44 = fadd float %22, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = add i32 %21, 1
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %23, float noundef %22, float noundef %42, float noundef %45, float noundef %34, float noundef %30, float noundef %8, i32 noundef %46)
  %47 = fadd <2 x float> %25, %19
  %48 = fmul <2 x float> %47, <float 5.000000e-01, float 5.000000e-01>
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> %27)
  %50 = icmp eq i32 %46, 17
  br i1 %50, label %60, label %20

51:                                               ; preds = %20
  %52 = load i32, ptr %1, align 4, !tbaa !40
  %53 = icmp eq ptr %0, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %55
  store float %6, ptr %56, align 4, !tbaa !79
  %57 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %55, i32 1
  store float %7, ptr %57, align 4, !tbaa !75
  br label %58

58:                                               ; preds = %51, %54
  %59 = add nsw i32 %52, 1
  store i32 %59, ptr %1, align 4, !tbaa !40
  br label %60

60:                                               ; preds = %39, %10, %58
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr nocapture noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #28 {
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %14 = icmp sgt i32 %11, 16
  br i1 %14, label %104, label %15

15:                                               ; preds = %12
  %16 = insertelement <2 x float> poison, float %3, i64 0
  %17 = insertelement <2 x float> %16, float %7, i64 1
  %18 = insertelement <2 x float> poison, float %2, i64 0
  %19 = insertelement <2 x float> %18, float %6, i64 1
  br label %20

20:                                               ; preds = %15, %60
  %21 = phi i32 [ %89, %60 ], [ %11, %15 ]
  %22 = phi float [ %86, %60 ], [ %5, %15 ]
  %23 = phi float [ %82, %60 ], [ %4, %15 ]
  %24 = phi <2 x float> [ %93, %60 ], [ %19, %15 ]
  %25 = phi <2 x float> [ %94, %60 ], [ %17, %15 ]
  %26 = extractelement <2 x float> %24, i64 0
  %27 = fsub float %8, %26
  %28 = extractelement <2 x float> %25, i64 0
  %29 = fsub float %9, %28
  %30 = fmul float %29, %29
  %31 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %30)
  %32 = tail call float @llvm.sqrt.f32(float %31)
  %33 = extractelement <2 x float> %24, i64 1
  %34 = fsub float %8, %33
  %35 = extractelement <2 x float> %25, i64 1
  %36 = fsub float %9, %35
  %37 = fmul float %36, %36
  %38 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %37)
  %39 = fpext float %38 to double
  %40 = tail call double @llvm.sqrt.f64(double %39)
  %41 = insertelement <2 x float> %24, float %23, i64 0
  %42 = insertelement <2 x float> %24, float %23, i64 1
  %43 = fsub <2 x float> %41, %42
  %44 = insertelement <2 x float> %25, float %22, i64 0
  %45 = insertelement <2 x float> %25, float %22, i64 1
  %46 = fsub <2 x float> %44, %45
  %47 = fmul <2 x float> %46, %46
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %43, <2 x float> %47)
  %49 = fpext <2 x float> %48 to <2 x double>
  %50 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %49)
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %52 = fadd <2 x double> %50, %51
  %53 = extractelement <2 x double> %52, i64 0
  %54 = fadd double %40, %53
  %55 = fptrunc double %54 to float
  %56 = fneg float %32
  %57 = fmul float %32, %56
  %58 = tail call float @llvm.fmuladd.f32(float %55, float %55, float %57)
  %59 = fcmp ogt float %58, %10
  br i1 %59, label %60, label %95

60:                                               ; preds = %20
  %61 = insertelement <2 x float> poison, float %23, i64 0
  %62 = insertelement <2 x float> %61, float %8, i64 1
  %63 = fadd <2 x float> %24, %62
  %64 = insertelement <2 x float> poison, float %22, i64 0
  %65 = insertelement <2 x float> %64, float %9, i64 1
  %66 = fadd <2 x float> %25, %65
  %67 = fadd float %23, %33
  %68 = fmul float %67, 5.000000e-01
  %69 = fadd float %22, %35
  %70 = fmul float %69, 5.000000e-01
  %71 = fmul <2 x float> %63, <float 5.000000e-01, float 5.000000e-01>
  %72 = insertelement <2 x float> poison, float %68, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = fadd <2 x float> %73, %71
  %75 = fmul <2 x float> %74, <float 5.000000e-01, float 5.000000e-01>
  %76 = fmul <2 x float> %66, <float 5.000000e-01, float 5.000000e-01>
  %77 = insertelement <2 x float> poison, float %70, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %79 = fadd <2 x float> %78, %76
  %80 = fmul <2 x float> %79, <float 5.000000e-01, float 5.000000e-01>
  %81 = extractelement <2 x float> %75, i64 0
  %82 = extractelement <2 x float> %75, i64 1
  %83 = fadd float %81, %82
  %84 = fmul float %83, 5.000000e-01
  %85 = extractelement <2 x float> %80, i64 0
  %86 = extractelement <2 x float> %80, i64 1
  %87 = fadd float %85, %86
  %88 = fmul float %87, 5.000000e-01
  %89 = add i32 %21, 1
  %90 = extractelement <2 x float> %71, i64 0
  %91 = extractelement <2 x float> %76, i64 0
  tail call fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr noundef %1, float noundef %26, float noundef %28, float noundef %90, float noundef %91, float noundef %81, float noundef %85, float noundef %84, float noundef %88, float noundef %10, i32 noundef %89)
  %92 = icmp eq i32 %89, %13
  %93 = insertelement <2 x float> %71, float %84, i64 0
  %94 = insertelement <2 x float> %76, float %88, i64 0
  br i1 %92, label %104, label %20

95:                                               ; preds = %20
  %96 = load i32, ptr %1, align 4, !tbaa !40
  %97 = icmp eq ptr %0, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %99
  store float %8, ptr %100, align 4, !tbaa !79
  %101 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %99, i32 1
  store float %9, ptr %101, align 4, !tbaa !75
  br label %102

102:                                              ; preds = %95, %98
  %103 = add nsw i32 %96, 1
  store i32 %103, ptr %1, align 4, !tbaa !40
  br label %104

104:                                              ; preds = %60, %12, %102
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stbtt__sort_edges_quicksort(ptr noundef %0, i32 noundef %1) unnamed_addr #29 {
  %3 = alloca %struct.stbtt__edge, align 4
  %4 = icmp sgt i32 %1, 12
  br i1 %4, label %5, label %66

5:                                                ; preds = %2, %62
  %6 = phi ptr [ %64, %62 ], [ %0, %2 ]
  %7 = phi i32 [ %63, %62 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3)
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !83
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %11
  %13 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %11, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !83
  %15 = add nsw i32 %7, -1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %16, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !83
  %19 = fcmp olt float %14, %18
  %20 = fcmp uge float %10, %14
  %21 = xor i1 %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = fcmp uge float %10, %18
  %24 = xor i1 %23, %19
  %25 = select i1 %24, i64 0, i64 %16
  %26 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %26, i64 20, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %26, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !84
  br label %27

27:                                               ; preds = %22, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !84
  br label %28

28:                                               ; preds = %53, %27
  %29 = phi i64 [ 1, %27 ], [ %55, %53 ]
  %30 = phi i32 [ %15, %27 ], [ %56, %53 ]
  %31 = load float, ptr %9, align 4, !tbaa !83
  %32 = shl i64 %29, 32
  %33 = ashr exact i64 %32, 32
  br label %34

34:                                               ; preds = %34, %28
  %35 = phi i64 [ %39, %34 ], [ %33, %28 ]
  %36 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %35, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !83
  %38 = fcmp olt float %37, %31
  %39 = add i64 %35, 1
  br i1 %38, label %34, label %40

40:                                               ; preds = %34
  %41 = trunc i64 %35 to i32
  %42 = sext i32 %30 to i64
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i64 [ %48, %43 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %44, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !83
  %47 = fcmp olt float %31, %46
  %48 = add i64 %44, -1
  br i1 %47, label %43, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %35
  %51 = trunc i64 %44 to i32
  %52 = icmp slt i32 %41, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %50, i64 20, i1 false), !tbaa.struct !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %50, ptr noundef nonnull align 4 dereferenceable(20) %54, i64 20, i1 false), !tbaa.struct !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %54, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !84
  %55 = add i64 %35, 1
  %56 = add nsw i32 %51, -1
  br label %28

57:                                               ; preds = %49
  %58 = sub nsw i32 %7, %41
  %59 = icmp sgt i32 %58, %51
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %6, i32 noundef %51)
  br label %62

61:                                               ; preds = %57
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %50, i32 noundef %58)
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i32 [ %58, %60 ], [ %51, %61 ]
  %64 = phi ptr [ %50, %60 ], [ %6, %61 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3)
  %65 = icmp sgt i32 %63, 12
  br i1 %65, label %5, label %66, !llvm.loop !270

66:                                               ; preds = %62, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbtt__handle_clipped_edge(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = fcmp oeq float %4, %6
  br i1 %8, label %114, label %9

9:                                                ; preds = %7
  %10 = fcmp olt float %4, %6
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 3031, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stbtt__active_edge, ptr %2, i64 0, i32 5
  %14 = load float, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.stbtt__active_edge, ptr %2, i64 0, i32 6
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 3032, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

19:                                               ; preds = %12
  %20 = fcmp olt float %16, %4
  %21 = fcmp ogt float %14, %6
  %22 = or i1 %21, %20
  br i1 %22, label %114, label %23

23:                                               ; preds = %19
  %24 = fcmp ogt float %14, %4
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = fsub float %5, %3
  %27 = fsub float %14, %4
  %28 = fmul float %26, %27
  %29 = fsub float %6, %4
  %30 = fdiv float %28, %29
  %31 = fadd float %30, %3
  br label %32

32:                                               ; preds = %25, %23
  %33 = phi float [ %31, %25 ], [ %3, %23 ]
  %34 = phi float [ %14, %25 ], [ %4, %23 ]
  %35 = fcmp olt float %16, %6
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = fsub float %5, %33
  %38 = fsub float %16, %6
  %39 = fmul float %38, %37
  %40 = fsub float %6, %34
  %41 = fdiv float %39, %40
  %42 = fadd float %41, %5
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi float [ %42, %36 ], [ %5, %32 ]
  %45 = phi float [ %16, %36 ], [ %6, %32 ]
  %46 = sitofp i32 %1 to float
  %47 = fcmp oeq float %33, %46
  %48 = add nsw i32 %1, 1
  %49 = sitofp i32 %48 to float
  br i1 %47, label %50, label %53

50:                                               ; preds = %43
  %51 = fcmp ugt float %44, %49
  br i1 %51, label %52, label %73

52:                                               ; preds = %50
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 3045, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

53:                                               ; preds = %43
  %54 = fcmp oeq float %33, %49
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = fcmp ult float %44, %46
  br i1 %56, label %57, label %73

57:                                               ; preds = %55
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 3047, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

58:                                               ; preds = %53
  %59 = fcmp ugt float %33, %46
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = fcmp ugt float %44, %46
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 3049, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

63:                                               ; preds = %58
  %64 = fcmp ult float %33, %49
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = fcmp ult float %44, %49
  br i1 %66, label %67, label %73

67:                                               ; preds = %65
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 3051, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

68:                                               ; preds = %63
  %69 = fcmp ult float %44, %46
  %70 = fcmp ugt float %44, %49
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 3053, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

73:                                               ; preds = %68, %55, %65, %60, %50
  %74 = fcmp ugt float %33, %46
  %75 = fcmp ugt float %44, %46
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.stbtt__active_edge, ptr %2, i64 0, i32 4
  %79 = load float, ptr %78, align 4, !tbaa !92
  %80 = fsub float %45, %34
  %81 = sext i32 %1 to i64
  %82 = getelementptr inbounds float, ptr %0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !68
  %84 = tail call float @llvm.fmuladd.f32(float %79, float %80, float %83)
  store float %84, ptr %82, align 4, !tbaa !68
  br label %114

85:                                               ; preds = %73
  %86 = add nsw i32 %1, 1
  %87 = sitofp i32 %86 to float
  %88 = fcmp ult float %33, %87
  %89 = fcmp ult float %44, %87
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = fcmp ult float %33, %46
  %93 = fcmp ugt float %33, %87
  %94 = or i1 %92, %93
  %95 = fcmp ult float %44, %46
  %96 = select i1 %94, i1 true, i1 %95
  %97 = fcmp ugt float %44, %87
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 3060, ptr noundef nonnull @__PRETTY_FUNCTION__.stbtt__handle_clipped_edge) #32
  unreachable

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.stbtt__active_edge, ptr %2, i64 0, i32 4
  %102 = load float, ptr %101, align 4, !tbaa !92
  %103 = fsub float %45, %34
  %104 = fmul float %103, %102
  %105 = fsub float %33, %46
  %106 = fsub float %44, %46
  %107 = fadd float %105, %106
  %108 = fmul float %107, 5.000000e-01
  %109 = fsub float 1.000000e+00, %108
  %110 = sext i32 %1 to i64
  %111 = getelementptr inbounds float, ptr %0, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !68
  %113 = tail call float @llvm.fmuladd.f32(float %104, float %109, float %112)
  store float %113, ptr %111, align 4, !tbaa !68
  br label %114

114:                                              ; preds = %85, %100, %19, %7, %77
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @stbtt__isfont(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = load i8, ptr %0, align 1, !tbaa !13
  switch i8 %2, label %58 [
    i8 49, label %3
    i8 116, label %15
    i8 79, label %26
    i8 0, label %38
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %59, label %58

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !13
  switch i8 %17, label %58 [
    i8 121, label %18
    i8 114, label %50
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %0, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = icmp eq i8 %20, 112
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %0, i64 3
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = icmp eq i8 %24, 49
  br i1 %25, label %59, label %58

26:                                               ; preds = %1
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = icmp eq i8 %28, 84
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %0, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 84
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, 79
  br i1 %37, label %59, label %58

38:                                               ; preds = %1
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %0, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %58

50:                                               ; preds = %15
  %51 = getelementptr inbounds i8, ptr %0, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, 117
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %0, i64 3
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = icmp eq i8 %56, 101
  br i1 %57, label %59, label %58

58:                                               ; preds = %15, %22, %18, %1, %34, %30, %26, %38, %42, %46, %3, %7, %11, %54, %50
  br label %59

59:                                               ; preds = %54, %46, %34, %22, %11, %58
  %60 = phi i32 [ 0, %58 ], [ 1, %11 ], [ 1, %22 ], [ 1, %34 ], [ 1, %46 ], [ 1, %54 ]
  ret i32 %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @stbtt__matchpair(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = or disjoint i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %183, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds i8, ptr %8, i64 4
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = getelementptr inbounds i8, ptr %8, i64 5
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = zext i8 %24 to i32
  %26 = or disjoint i32 %22, %25
  %27 = add i32 %26, %1
  %28 = add i32 %1, 6
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = zext nneg i32 %16 to i64
  br label %32

32:                                               ; preds = %18, %180
  %33 = phi i64 [ 0, %18 ], [ %181, %180 ]
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %34, 12
  %36 = add i32 %28, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 6
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr inbounds i8, ptr %38, i64 7
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = or disjoint i32 %42, %45
  %47 = icmp eq i32 %46, %4
  br i1 %47, label %48, label %180

48:                                               ; preds = %32
  %49 = load i8, ptr %38, align 1, !tbaa !13
  %50 = zext i8 %49 to i16
  %51 = shl nuw i16 %50, 8
  %52 = getelementptr inbounds i8, ptr %38, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !13
  %54 = zext i8 %53 to i16
  %55 = or disjoint i16 %51, %54
  %56 = getelementptr inbounds i8, ptr %38, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i16
  %59 = shl nuw i16 %58, 8
  %60 = getelementptr inbounds i8, ptr %38, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i16
  %63 = or disjoint i16 %59, %62
  %64 = getelementptr inbounds i8, ptr %38, i64 4
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = getelementptr inbounds i8, ptr %38, i64 5
  %69 = load i8, ptr %68, align 1, !tbaa !13
  %70 = zext i8 %69 to i16
  %71 = or disjoint i16 %67, %70
  %72 = icmp eq i16 %55, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %48
  %74 = icmp eq i16 %55, 3
  %75 = icmp eq i16 %63, 1
  %76 = icmp eq i16 %63, 10
  %77 = or i1 %75, %76
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %79, label %180

79:                                               ; preds = %73, %48
  %80 = getelementptr inbounds i8, ptr %38, i64 8
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = getelementptr inbounds i8, ptr %38, i64 9
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = zext i8 %85 to i32
  %87 = or disjoint i32 %83, %86
  %88 = getelementptr inbounds i8, ptr %38, i64 10
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 8
  %92 = getelementptr inbounds i8, ptr %38, i64 11
  %93 = load i8, ptr %92, align 1, !tbaa !13
  %94 = zext i8 %93 to i64
  %95 = or disjoint i64 %91, %94
  %96 = getelementptr inbounds i8, ptr %30, i64 %95
  %97 = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef %2, i32 noundef %3, ptr noundef %96, i32 noundef %87)
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %180

99:                                               ; preds = %79
  %100 = add nuw nsw i64 %33, 1
  %101 = icmp ult i64 %100, %31
  br i1 %101, label %102, label %178

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, ptr %38, i64 18
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = getelementptr inbounds i8, ptr %38, i64 19
  %108 = load i8, ptr %107, align 1, !tbaa !13
  %109 = zext i8 %108 to i32
  %110 = or disjoint i32 %106, %109
  %111 = icmp eq i32 %110, %5
  br i1 %111, label %112, label %178

112:                                              ; preds = %102
  %113 = getelementptr inbounds i8, ptr %38, i64 12
  %114 = load i8, ptr %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i16
  %116 = shl nuw i16 %115, 8
  %117 = getelementptr inbounds i8, ptr %38, i64 13
  %118 = load i8, ptr %117, align 1, !tbaa !13
  %119 = zext i8 %118 to i16
  %120 = or disjoint i16 %116, %119
  %121 = icmp eq i16 %120, %55
  br i1 %121, label %122, label %178

122:                                              ; preds = %112
  %123 = getelementptr inbounds i8, ptr %38, i64 14
  %124 = load i8, ptr %123, align 1, !tbaa !13
  %125 = zext i8 %124 to i16
  %126 = shl nuw i16 %125, 8
  %127 = getelementptr inbounds i8, ptr %38, i64 15
  %128 = load i8, ptr %127, align 1, !tbaa !13
  %129 = zext i8 %128 to i16
  %130 = or disjoint i16 %126, %129
  %131 = icmp eq i16 %130, %63
  br i1 %131, label %132, label %178

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %38, i64 16
  %134 = load i8, ptr %133, align 1, !tbaa !13
  %135 = zext i8 %134 to i16
  %136 = shl nuw i16 %135, 8
  %137 = getelementptr inbounds i8, ptr %38, i64 17
  %138 = load i8, ptr %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i16
  %140 = or disjoint i16 %136, %139
  %141 = icmp eq i16 %140, %71
  br i1 %141, label %142, label %178

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, ptr %38, i64 20
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = zext i8 %144 to i16
  %146 = shl nuw i16 %145, 8
  %147 = getelementptr inbounds i8, ptr %38, i64 21
  %148 = load i8, ptr %147, align 1, !tbaa !13
  %149 = zext i8 %148 to i16
  %150 = or disjoint i16 %146, %149
  %151 = zext i16 %150 to i32
  %152 = getelementptr inbounds i8, ptr %38, i64 22
  %153 = load i8, ptr %152, align 1, !tbaa !13
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 8
  %156 = getelementptr inbounds i8, ptr %38, i64 23
  %157 = load i8, ptr %156, align 1, !tbaa !13
  %158 = zext i8 %157 to i64
  %159 = or disjoint i64 %155, %158
  %160 = icmp eq i16 %150, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %142
  %162 = icmp eq i32 %97, %3
  br i1 %162, label %183, label %180

163:                                              ; preds = %142
  %164 = icmp slt i32 %97, %3
  br i1 %164, label %165, label %180

165:                                              ; preds = %163
  %166 = zext nneg i32 %97 to i64
  %167 = getelementptr inbounds i8, ptr %2, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !13
  %169 = icmp eq i8 %168, 32
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = add nuw nsw i32 %97, 1
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %2, i64 %172
  %174 = sub nsw i32 %3, %171
  %175 = getelementptr inbounds i8, ptr %30, i64 %159
  %176 = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef nonnull %173, i32 noundef %174, ptr noundef %175, i32 noundef %151)
  %177 = icmp eq i32 %176, %174
  br i1 %177, label %183, label %180

178:                                              ; preds = %132, %122, %112, %102, %99
  %179 = icmp eq i32 %97, %3
  br i1 %179, label %183, label %180

180:                                              ; preds = %79, %178, %161, %170, %165, %163, %32, %73
  %181 = add nuw nsw i64 %33, 1
  %182 = icmp eq i64 %181, %31
  br i1 %182, label %183, label %32, !llvm.loop !271

183:                                              ; preds = %178, %170, %161, %180, %6
  %184 = phi i32 [ 0, %6 ], [ 0, %180 ], [ 1, %161 ], [ 1, %170 ], [ 1, %178 ]
  ret i32 %184
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr i8, ptr %0, i64 1
  %6 = getelementptr i8, ptr %0, i64 2
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %140, label %8

8:                                                ; preds = %4, %133
  %9 = phi ptr [ %137, %133 ], [ %2, %4 ]
  %10 = phi i32 [ %138, %133 ], [ %3, %4 ]
  %11 = phi i32 [ %134, %133 ], [ 0, %4 ]
  %12 = load i8, ptr %9, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = icmp ult i32 %18, 128
  br i1 %19, label %20, label %29

20:                                               ; preds = %8
  %21 = icmp slt i32 %11, %1
  br i1 %21, label %22, label %140

22:                                               ; preds = %20
  %23 = add nsw i32 %11, 1
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %18, %27
  br i1 %28, label %133, label %140

29:                                               ; preds = %8
  %30 = icmp ult i32 %18, 2048
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = add nsw i32 %11, 1
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %34, label %140

34:                                               ; preds = %31
  %35 = sext i32 %11 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %18, 6
  %40 = or disjoint i32 %39, 192
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %42, label %140

42:                                               ; preds = %34
  %43 = add nsw i32 %11, 2
  %44 = sext i32 %32 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = zext i8 %46 to i32
  %48 = and i32 %17, 63
  %49 = or disjoint i32 %48, 128
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %133, label %140

51:                                               ; preds = %29
  %52 = and i32 %13, 252
  %53 = icmp eq i32 %52, 216
  br i1 %53, label %54, label %103

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %9, i64 2
  %56 = add nsw i32 %11, 3
  %57 = icmp slt i32 %56, %1
  br i1 %57, label %58, label %140

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %9, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = load i8, ptr %55, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 8
  %64 = zext i8 %60 to i32
  %65 = or disjoint i32 %63, %64
  %66 = shl nuw nsw i32 %18, 10
  %67 = add nsw i32 %66, -56613888
  %68 = add nuw nsw i32 %67, %65
  %69 = sext i32 %11 to i64
  %70 = getelementptr inbounds i8, ptr %0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = lshr i32 %68, 18
  %74 = add nuw nsw i32 %73, 240
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %76, label %140

76:                                               ; preds = %58
  %77 = getelementptr i8, ptr %5, i64 %69
  %78 = load i8, ptr %77, align 1, !tbaa !13
  %79 = zext i8 %78 to i32
  %80 = lshr i32 %68, 12
  %81 = and i32 %80, 63
  %82 = or disjoint i32 %81, 128
  %83 = icmp eq i32 %82, %79
  br i1 %83, label %84, label %140

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %6, i64 %69
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = zext i8 %86 to i32
  %88 = lshr i32 %68, 6
  %89 = and i32 %88, 63
  %90 = or disjoint i32 %89, 128
  %91 = icmp eq i32 %90, %87
  br i1 %91, label %92, label %140

92:                                               ; preds = %84
  %93 = sext i32 %56 to i64
  %94 = getelementptr inbounds i8, ptr %0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !13
  %96 = zext i8 %95 to i32
  %97 = and i32 %64, 63
  %98 = or disjoint i32 %97, 128
  %99 = icmp eq i32 %98, %96
  br i1 %99, label %100, label %140

100:                                              ; preds = %92
  %101 = add nsw i32 %11, 4
  %102 = add nsw i32 %10, -2
  br label %133

103:                                              ; preds = %51
  %104 = icmp ne i32 %52, 220
  %105 = add nsw i32 %11, 2
  %106 = icmp slt i32 %105, %1
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %140

108:                                              ; preds = %103
  %109 = sext i32 %11 to i64
  %110 = getelementptr inbounds i8, ptr %0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !13
  %112 = zext i8 %111 to i32
  %113 = lshr i32 %13, 4
  %114 = or disjoint i32 %113, 224
  %115 = icmp eq i32 %114, %112
  br i1 %115, label %116, label %140

116:                                              ; preds = %108
  %117 = getelementptr i8, ptr %5, i64 %109
  %118 = load i8, ptr %117, align 1, !tbaa !13
  %119 = zext i8 %118 to i32
  %120 = lshr i32 %18, 6
  %121 = and i32 %120, 63
  %122 = or disjoint i32 %121, 128
  %123 = icmp eq i32 %122, %119
  br i1 %123, label %124, label %140

124:                                              ; preds = %116
  %125 = add nsw i32 %11, 3
  %126 = sext i32 %105 to i64
  %127 = getelementptr inbounds i8, ptr %0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !13
  %129 = zext i8 %128 to i32
  %130 = and i32 %17, 63
  %131 = or disjoint i32 %130, 128
  %132 = icmp eq i32 %131, %129
  br i1 %132, label %133, label %140

133:                                              ; preds = %22, %124, %42, %100
  %134 = phi i32 [ %23, %22 ], [ %43, %42 ], [ %101, %100 ], [ %125, %124 ]
  %135 = phi i32 [ %10, %22 ], [ %10, %42 ], [ %102, %100 ], [ %10, %124 ]
  %136 = phi ptr [ %9, %22 ], [ %9, %42 ], [ %55, %100 ], [ %9, %124 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 2
  %138 = add nsw i32 %135, -2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %8, !llvm.loop !272

140:                                              ; preds = %133, %20, %22, %31, %34, %42, %103, %108, %116, %124, %54, %58, %76, %84, %92, %4
  %141 = phi i32 [ 0, %4 ], [ -1, %92 ], [ -1, %84 ], [ -1, %76 ], [ -1, %58 ], [ -1, %54 ], [ -1, %124 ], [ -1, %116 ], [ -1, %108 ], [ -1, %103 ], [ -1, %42 ], [ -1, %34 ], [ -1, %31 ], [ -1, %22 ], [ -1, %20 ], [ %134, %133 ]
  ret i32 %141
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #26

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nofree nounwind willreturn memory(argmem: read) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"stbtt_fontinfo", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !11, i64 64, !11, i64 80, !11, i64 96, !11, i64 112, !11, i64 128, !11, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12}
!12 = !{!6, !10, i64 56}
!13 = !{!8, !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!6, !10, i64 76}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !8, i64 12}
!20 = !{!"", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !21, i64 8, !21, i64 10, !8, i64 12, !8, i64 13}
!21 = !{!"short", !8, i64 0}
!22 = distinct !{!22, !15}
!23 = !{!20, !21, i64 0}
!24 = distinct !{!24, !15}
!25 = !{!20, !21, i64 2}
!26 = distinct !{!26, !15}
!27 = !{!20, !21, i64 4}
!28 = !{!20, !21, i64 6}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!21, !21, i64 0}
!34 = distinct !{!34, !15, !32, !31}
!35 = distinct !{!35, !15}
!36 = !{!37, !10, i64 48}
!37 = !{!"", !10, i64 0, !10, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !10, i64 48}
!38 = !{!"float", !8, i64 0}
!39 = !{!37, !7, i64 40}
!40 = !{!10, !10, i64 0}
!41 = !{!6, !10, i64 20}
!42 = !{!6, !10, i64 60}
!43 = !{!6, !10, i64 32}
!44 = !{!6, !10, i64 24}
!45 = !{i32 0, i32 2}
!46 = !{!6, !10, i64 36}
!47 = !{!6, !10, i64 40}
!48 = !{!6, !10, i64 44}
!49 = !{!50, !10, i64 0}
!50 = !{!"stbtt_kerningentry", !10, i64 0, !10, i64 4, !10, i64 8}
!51 = !{!50, !10, i64 4}
!52 = !{!50, !10, i64 8}
!53 = distinct !{!53, !15}
!54 = !{!6, !10, i64 48}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = !{!6, !10, i64 16}
!62 = distinct !{!62, !15}
!63 = !{!6, !10, i64 28}
!64 = !{!6, !10, i64 52}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15, !31, !32}
!67 = distinct !{!67, !15, !32, !31}
!68 = !{!38, !38, i64 0}
!69 = !{!20, !21, i64 8}
!70 = !{!20, !21, i64 10}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15, !31, !32}
!74 = distinct !{!74, !15, !32, !31}
!75 = !{!76, !38, i64 4}
!76 = !{!"", !38, i64 0, !38, i64 4}
!77 = !{!78, !10, i64 16}
!78 = !{!"stbtt__edge", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !10, i64 16}
!79 = !{!76, !38, i64 0}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !40}
!83 = !{!78, !38, i64 4}
!84 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 12, i64 4, !68, i64 16, i64 4, !40}
!85 = distinct !{!85, !15}
!86 = !{!87, !10, i64 0}
!87 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16}
!88 = !{!87, !10, i64 4}
!89 = !{!90, !38, i64 28}
!90 = !{!"stbtt__active_edge", !7, i64 0, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28}
!91 = !{!90, !7, i64 0}
!92 = !{!90, !38, i64 20}
!93 = distinct !{!93, !15}
!94 = !{!78, !38, i64 12}
!95 = !{!96, !7, i64 0}
!96 = !{!"stbtt__hheap_chunk", !7, i64 0}
!97 = !{!78, !38, i64 8}
!98 = !{!78, !38, i64 0}
!99 = !{!90, !38, i64 12}
!100 = !{!90, !38, i64 16}
!101 = !{!90, !38, i64 8}
!102 = !{!90, !38, i64 24}
!103 = distinct !{!103, !15}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = !{!87, !7, i64 16}
!108 = !{!87, !10, i64 8}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = !{!114, !38, i64 16}
!114 = !{!"", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !38, i64 8, !38, i64 12, !38, i64 16}
!115 = !{!116, !7, i64 0}
!116 = !{!"stbtt_pack_context", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !7, i64 48, !7, i64 56}
!117 = !{!116, !10, i64 16}
!118 = !{!116, !10, i64 20}
!119 = !{!116, !7, i64 48}
!120 = !{!116, !7, i64 8}
!121 = !{!116, !7, i64 56}
!122 = !{!116, !10, i64 28}
!123 = !{!116, !10, i64 24}
!124 = !{!116, !10, i64 36}
!125 = !{!116, !10, i64 40}
!126 = !{!116, !10, i64 32}
!127 = !{!128, !10, i64 0}
!128 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!129 = !{!128, !10, i64 4}
!130 = !{!128, !10, i64 8}
!131 = !{!128, !10, i64 12}
!132 = !{!128, !10, i64 16}
!133 = !{!134, !38, i64 0}
!134 = !{!"", !38, i64 0, !10, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !8, i64 32, !8, i64 33}
!135 = !{!134, !8, i64 32}
!136 = !{!134, !8, i64 33}
!137 = !{!134, !10, i64 16}
!138 = !{!134, !7, i64 8}
!139 = !{!134, !10, i64 4}
!140 = !{!141, !10, i64 16}
!141 = !{!"stbrp_rect", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!142 = !{!141, !10, i64 12}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !15}
!152 = distinct !{!152, !15}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, !15}
!157 = distinct !{!157, !15}
!158 = distinct !{!158, !15}
!159 = !{!141, !10, i64 20}
!160 = !{!134, !7, i64 24}
!161 = !{!141, !10, i64 0}
!162 = !{!141, !10, i64 4}
!163 = !{!164, !38, i64 16}
!164 = !{!"", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24}
!165 = !{!164, !21, i64 0}
!166 = !{!164, !21, i64 2}
!167 = !{i64 0, i64 2, !33, i64 2, i64 2, !33, i64 4, i64 2, !33, i64 6, i64 2, !33, i64 8, i64 4, !68, i64 12, i64 4, !68, i64 16, i64 4, !68, i64 20, i64 4, !68, i64 24, i64 4, !68}
!168 = distinct !{!168, !15}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !172}
!172 = !{!"llvm.loop.unroll.disable"}
!173 = distinct !{!173, !15}
!174 = distinct !{!174, !15, !31, !32}
!175 = distinct !{!175, !15}
!176 = distinct !{!176, !172}
!177 = distinct !{!177, !15}
!178 = distinct !{!178, !15, !32, !31}
!179 = !{!6, !7, i64 0}
!180 = distinct !{!180, !172}
!181 = !{i64 0, i64 8, !18, i64 8, i64 4, !40, i64 12, i64 4, !40}
!182 = !{i64 0, i64 4, !40, i64 4, i64 4, !40}
!183 = !{!11, !10, i64 8}
!184 = !{!11, !10, i64 12}
!185 = !{!11, !7, i64 0}
!186 = distinct !{!186, !15}
!187 = !{!164, !38, i64 8}
!188 = !{!164, !38, i64 12}
!189 = !{!164, !38, i64 20}
!190 = !{!191, !38, i64 16}
!191 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28}
!192 = !{!164, !38, i64 24}
!193 = !{!191, !38, i64 0}
!194 = !{!191, !38, i64 4}
!195 = distinct !{!195, !15}
!196 = distinct !{!196, !15}
!197 = distinct !{!197, !15}
!198 = distinct !{!198, !15}
!199 = distinct !{!199, !15}
!200 = distinct !{!200, !15}
!201 = !{!114, !21, i64 0}
!202 = !{!114, !21, i64 2}
!203 = !{!114, !21, i64 4}
!204 = !{!114, !21, i64 6}
!205 = distinct !{!205, !15}
!206 = !{!207, !208, i64 0}
!207 = !{!"", !208, i64 0, !208, i64 8, !7, i64 16, !208, i64 24}
!208 = !{!"long", !8, i64 0}
!209 = !{!207, !208, i64 8}
!210 = !{!208, !208, i64 0}
!211 = distinct !{!211, !15}
!212 = distinct !{!212, !15}
!213 = !{!207, !7, i64 16}
!214 = !{!215, !8, i64 89}
!215 = !{!"", !7, i64 0, !208, i64 8, !208, i64 16, !208, i64 24, !208, i64 32, !208, i64 40, !208, i64 48, !208, i64 56, !208, i64 64, !216, i64 72, !7, i64 96}
!216 = !{!"stbds_string_arena", !7, i64 0, !208, i64 8, !8, i64 16, !8, i64 17}
!217 = distinct !{!217, !15}
!218 = !{!216, !7, i64 0}
!219 = !{!220, !7, i64 0}
!220 = !{!"stbds_string_block", !7, i64 0, !8, i64 8}
!221 = distinct !{!221, !15}
!222 = !{!215, !7, i64 96}
!223 = !{!215, !208, i64 56}
!224 = !{!215, !208, i64 8}
!225 = distinct !{!225, !15}
!226 = distinct !{!226, !15}
!227 = !{!207, !208, i64 24}
!228 = !{!215, !208, i64 16}
!229 = !{!215, !208, i64 24}
!230 = distinct !{!230, !15}
!231 = distinct !{!231, !15}
!232 = !{!215, !208, i64 40}
!233 = distinct !{!233, !15}
!234 = !{!215, !208, i64 64}
!235 = !{!215, !208, i64 48}
!236 = !{!215, !208, i64 32}
!237 = !{i64 0, i64 8, !18, i64 8, i64 8, !210, i64 16, i64 1, !13, i64 17, i64 1, !13}
!238 = distinct !{!238, !15}
!239 = distinct !{!239, !172}
!240 = distinct !{!240, !15}
!241 = distinct !{!241, !15}
!242 = distinct !{!242, !15}
!243 = distinct !{!243, !15}
!244 = !{!216, !208, i64 8}
!245 = !{!216, !8, i64 16}
!246 = distinct !{!246, !15}
!247 = distinct !{!247, !15}
!248 = distinct !{!248, !15}
!249 = !{!37, !10, i64 0}
!250 = !{!37, !10, i64 28}
!251 = !{!37, !10, i64 4}
!252 = !{!37, !10, i64 36}
!253 = !{!37, !10, i64 24}
!254 = !{!37, !10, i64 32}
!255 = distinct !{!255, !15}
!256 = distinct !{!256, !15}
!257 = distinct !{!257, !15}
!258 = distinct !{!258, !15}
!259 = distinct !{!259, !15, !260}
!260 = !{!"llvm.loop.peeled.count", i32 1}
!261 = distinct !{!261, !15}
!262 = distinct !{!262, !15}
!263 = distinct !{!263, !15}
!264 = !{!37, !38, i64 16}
!265 = !{!37, !38, i64 20}
!266 = distinct !{!266, !15}
!267 = distinct !{!267, !15}
!268 = distinct !{!268, !15}
!269 = distinct !{!269, !15}
!270 = distinct !{!270, !15}
!271 = distinct !{!271, !15}
!272 = distinct !{!272, !15}
