; ModuleID = 'corpus_src/klib/kexpr.c'
source_filename = "corpus_src/klib/kexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ke1_s = type { i64, ptr, %union.anon, double, i64, ptr }
%union.anon = type { ptr }
%struct.kexpr_s = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@ke_opstr = internal unnamed_addr constant [25 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], align 16
@.str.12 = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@ke_op = internal unnamed_addr constant [25 x i32] [i32 0, i32 3, i32 3, i32 3, i32 3, i32 5, i32 6, i32 6, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 12, i32 12, i32 14, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24], align 16
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"+(1)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"-(1)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"||\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ke_parse(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4, !tbaa !5
  %5 = tail call noalias ptr @strdup(ptr noundef %0) #23
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__ctype_b_loc() #24
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i8 [ %6, %8 ], [ %25, %22 ]
  %12 = phi ptr [ %5, %8 ], [ %23, %22 ]
  %13 = phi ptr [ %5, %8 ], [ %24, %22 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !10
  %15 = sext i8 %11 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = and i16 %17, 8192
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !9
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %12, %10 ], [ %21, %20 ]
  %24 = getelementptr inbounds i8, ptr %13, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %10, !llvm.loop !14

27:                                               ; preds = %22, %2
  %28 = phi ptr [ %5, %2 ], [ %23, %22 ]
  store i8 0, ptr %28, align 1, !tbaa !9
  br label %29

29:                                               ; preds = %232, %27
  %30 = phi ptr [ null, %27 ], [ %233, %232 ]
  %31 = phi ptr [ null, %27 ], [ %234, %232 ]
  %32 = phi i32 [ 0, %27 ], [ %235, %232 ]
  %33 = phi i32 [ 0, %27 ], [ %236, %232 ]
  %34 = phi i32 [ 0, %27 ], [ %237, %232 ]
  %35 = phi i32 [ 0, %27 ], [ %238, %232 ]
  %36 = phi ptr [ %5, %27 ], [ %239, %232 ]
  %37 = phi i32 [ 0, %27 ], [ %240, %232 ]
  br label %38

38:                                               ; preds = %460, %29
  %39 = phi ptr [ %461, %460 ], [ %31, %29 ]
  %40 = phi i32 [ %462, %460 ], [ %32, %29 ]
  %41 = phi i32 [ %463, %460 ], [ %33, %29 ]
  %42 = phi ptr [ %410, %460 ], [ %36, %29 ]
  %43 = phi i32 [ 0, %460 ], [ %37, %29 ]
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @ke_op_KEO_NEG, ptr @ke_op_KEO_SUB
  %46 = select i1 %44, i64 1108101562370, i64 2246267895810
  %47 = icmp eq i32 %43, 0
  %48 = select i1 %47, ptr @ke_op_KEO_POS, ptr @ke_op_KEO_ADD
  %49 = select i1 %47, i64 1103806595074, i64 2241972928514
  br label %50

50:                                               ; preds = %38, %82
  %51 = phi ptr [ %83, %82 ], [ %39, %38 ]
  %52 = phi i32 [ %84, %82 ], [ %40, %38 ]
  %53 = phi i32 [ %85, %82 ], [ %41, %38 ]
  %54 = phi ptr [ %91, %82 ], [ %42, %38 ]
  br label %55

55:                                               ; preds = %50, %419
  %56 = phi ptr [ %410, %419 ], [ %54, %50 ]
  %57 = load i8, ptr %56, align 1, !tbaa !9
  switch i8 %57, label %241 [
    i8 0, label %554
    i8 40, label %68
    i8 41, label %63
    i8 44, label %58
  ]

58:                                               ; preds = %55
  %59 = getelementptr %struct.ke1_s, ptr %51, i64 -1
  %60 = icmp sgt i32 %53, 0
  br i1 %60, label %61, label %654

61:                                               ; preds = %58
  %62 = sext i32 %35 to i64
  br label %182

63:                                               ; preds = %55
  %64 = getelementptr %struct.ke1_s, ptr %51, i64 -1
  %65 = icmp sgt i32 %53, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %63
  %67 = sext i32 %35 to i64
  br label %92

68:                                               ; preds = %55
  %69 = icmp eq i32 %53, %52
  br i1 %69, label %70, label %82

70:                                               ; preds = %68
  %71 = icmp eq i32 %52, 0
  %72 = shl i32 %52, 1
  %73 = select i1 %71, i32 8, i32 %72
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 48
  %76 = tail call ptr @realloc(ptr noundef %51, i64 noundef %75) #25
  %77 = sext i32 %52 to i64
  %78 = getelementptr inbounds %struct.ke1_s, ptr %76, i64 %77
  %79 = sub nsw i32 %73, %52
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %78, i8 0, i64 %81, i1 false)
  br label %82

82:                                               ; preds = %70, %68
  %83 = phi ptr [ %76, %70 ], [ %51, %68 ]
  %84 = phi i32 [ %73, %70 ], [ %52, %68 ]
  %85 = add nsw i32 %53, 1
  %86 = sext i32 %53 to i64
  %87 = getelementptr inbounds %struct.ke1_s, ptr %83, i64 %86
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, -1095216726016
  %90 = or disjoint i64 %89, 1095216660480
  store i64 %90, ptr %87, align 8
  %91 = getelementptr inbounds i8, ptr %56, i64 1
  br label %50, !llvm.loop !16

92:                                               ; preds = %117, %66
  %93 = phi i64 [ %67, %66 ], [ %120, %117 ]
  %94 = phi i32 [ %34, %66 ], [ %119, %117 ]
  %95 = phi i32 [ %53, %66 ], [ %122, %117 ]
  %96 = phi ptr [ %30, %66 ], [ %118, %117 ]
  %97 = zext nneg i32 %95 to i64
  %98 = getelementptr %struct.ke1_s, ptr %64, i64 %97
  %99 = load i64, ptr %98, align 8
  %100 = shl i64 %99, 24
  %101 = ashr i64 %100, 56
  %102 = and i64 %101, 2147483648
  %103 = icmp eq i64 %102, 0
  %104 = trunc i64 %93 to i32
  br i1 %103, label %105, label %132

105:                                              ; preds = %92
  %106 = icmp eq i32 %94, %104
  br i1 %106, label %107, label %117

107:                                              ; preds = %105
  %108 = icmp eq i64 %93, 0
  %109 = shl i32 %94, 1
  %110 = select i1 %108, i32 8, i32 %109
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 48
  %113 = tail call ptr @realloc(ptr noundef %96, i64 noundef %112) #25
  %114 = getelementptr inbounds %struct.ke1_s, ptr %113, i64 %93
  %115 = sub nsw i64 %111, %93
  %116 = mul nsw i64 %115, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %114, i8 0, i64 %116, i1 false)
  br label %117

117:                                              ; preds = %107, %105
  %118 = phi ptr [ %113, %107 ], [ %96, %105 ]
  %119 = phi i32 [ %110, %107 ], [ %94, %105 ]
  %120 = add nsw i64 %93, 1
  %121 = getelementptr inbounds %struct.ke1_s, ptr %118, i64 %93
  %122 = add nsw i32 %95, -1
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds %struct.ke1_s, ptr %51, i64 %123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %121, ptr noundef nonnull align 8 dereferenceable(48) %124, i64 48, i1 false), !tbaa.struct !17
  %125 = icmp sgt i32 %95, 1
  br i1 %125, label %92, label %126, !llvm.loop !22

126:                                              ; preds = %117
  %127 = trunc i64 %120 to i32
  br label %654

128:                                              ; preds = %63
  %129 = icmp eq i32 %53, 0
  br i1 %129, label %654, label %130

130:                                              ; preds = %128
  %131 = add nsw i32 %53, -1
  br label %176

132:                                              ; preds = %92
  %133 = icmp eq i32 %95, 1
  br i1 %133, label %176, label %134

134:                                              ; preds = %132
  %135 = add nsw i32 %95, -1
  %136 = getelementptr %struct.ke1_s, ptr %51, i64 %97
  %137 = getelementptr %struct.ke1_s, ptr %136, i64 -2
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %141, label %176

141:                                              ; preds = %134
  %142 = icmp eq i32 %94, %104
  br i1 %142, label %143, label %155

143:                                              ; preds = %141
  %144 = icmp eq i32 %94, 0
  %145 = shl i32 %94, 1
  %146 = select i1 %144, i32 8, i32 %145
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %147, 48
  %149 = tail call ptr @realloc(ptr noundef %96, i64 noundef %148) #25
  %150 = sext i32 %94 to i64
  %151 = getelementptr inbounds %struct.ke1_s, ptr %149, i64 %150
  %152 = sub nsw i32 %146, %94
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %151, i8 0, i64 %154, i1 false)
  br label %155

155:                                              ; preds = %143, %141
  %156 = phi ptr [ %149, %143 ], [ %96, %141 ]
  %157 = phi i32 [ %146, %143 ], [ %94, %141 ]
  %158 = add nsw i32 %104, 1
  %159 = shl i64 %93, 32
  %160 = ashr exact i64 %159, 32
  %161 = getelementptr inbounds %struct.ke1_s, ptr %156, i64 %160
  %162 = add nsw i32 %95, -2
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds %struct.ke1_s, ptr %51, i64 %163
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %161, ptr noundef nonnull align 8 dereferenceable(48) %164, i64 48, i1 false), !tbaa.struct !17
  %165 = load i64, ptr %161, align 8
  %166 = ashr i64 %165, 40
  %167 = and i64 %166, 4294967295
  %168 = icmp eq i64 %167, 1
  br i1 %168, label %169, label %176

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.ke1_s, ptr %156, i64 %160, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !23
  %172 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %171, ptr noundef nonnull dereferenceable(4) @.str.13) #26
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.ke1_s, ptr %156, i64 %160, i32 2
  store ptr @ke_func1_abs, ptr %175, align 8, !tbaa !9
  br label %176

176:                                              ; preds = %174, %169, %155, %134, %132, %130
  %177 = phi ptr [ %156, %174 ], [ %156, %169 ], [ %156, %155 ], [ %96, %134 ], [ %96, %132 ], [ %30, %130 ]
  %178 = phi i32 [ %162, %174 ], [ %162, %169 ], [ %162, %155 ], [ %135, %134 ], [ 0, %132 ], [ %131, %130 ]
  %179 = phi i32 [ %157, %174 ], [ %157, %169 ], [ %157, %155 ], [ %94, %134 ], [ %94, %132 ], [ %34, %130 ]
  %180 = phi i32 [ %158, %174 ], [ %158, %169 ], [ %158, %155 ], [ %104, %134 ], [ %104, %132 ], [ %35, %130 ]
  %181 = getelementptr inbounds i8, ptr %56, i64 1
  br label %232

182:                                              ; preds = %207, %61
  %183 = phi i64 [ %62, %61 ], [ %210, %207 ]
  %184 = phi i32 [ %34, %61 ], [ %209, %207 ]
  %185 = phi i32 [ %53, %61 ], [ %212, %207 ]
  %186 = phi ptr [ %30, %61 ], [ %208, %207 ]
  %187 = zext nneg i32 %185 to i64
  %188 = getelementptr %struct.ke1_s, ptr %59, i64 %187
  %189 = load i64, ptr %188, align 8
  %190 = shl i64 %189, 24
  %191 = ashr i64 %190, 56
  %192 = and i64 %191, 2147483648
  %193 = icmp eq i64 %192, 0
  %194 = trunc i64 %183 to i32
  br i1 %193, label %195, label %216

195:                                              ; preds = %182
  %196 = icmp eq i32 %184, %194
  br i1 %196, label %197, label %207

197:                                              ; preds = %195
  %198 = icmp eq i64 %183, 0
  %199 = shl i32 %184, 1
  %200 = select i1 %198, i32 8, i32 %199
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, 48
  %203 = tail call ptr @realloc(ptr noundef %186, i64 noundef %202) #25
  %204 = getelementptr inbounds %struct.ke1_s, ptr %203, i64 %183
  %205 = sub nsw i64 %201, %183
  %206 = mul nsw i64 %205, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %204, i8 0, i64 %206, i1 false)
  br label %207

207:                                              ; preds = %197, %195
  %208 = phi ptr [ %203, %197 ], [ %186, %195 ]
  %209 = phi i32 [ %200, %197 ], [ %184, %195 ]
  %210 = add nsw i64 %183, 1
  %211 = getelementptr inbounds %struct.ke1_s, ptr %208, i64 %183
  %212 = add nsw i32 %185, -1
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds %struct.ke1_s, ptr %51, i64 %213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %211, ptr noundef nonnull align 8 dereferenceable(48) %214, i64 48, i1 false), !tbaa.struct !17
  %215 = icmp sgt i32 %185, 1
  br i1 %215, label %182, label %224, !llvm.loop !25

216:                                              ; preds = %182
  %217 = icmp eq i32 %185, 1
  br i1 %217, label %654, label %218

218:                                              ; preds = %216
  %219 = getelementptr %struct.ke1_s, ptr %51, i64 %187
  %220 = getelementptr %struct.ke1_s, ptr %219, i64 -2
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 3
  br i1 %223, label %226, label %654

224:                                              ; preds = %207
  %225 = trunc i64 %210 to i32
  br label %654

226:                                              ; preds = %218
  %227 = and i64 %221, -1099511627776
  %228 = add i64 %227, 1099511627776
  %229 = and i64 %221, 1099511562243
  %230 = or disjoint i64 %228, %229
  store i64 %230, ptr %220, align 8
  %231 = getelementptr inbounds i8, ptr %56, i64 1
  br label %232

232:                                              ; preds = %226, %176, %435, %543
  %233 = phi ptr [ %526, %543 ], [ %436, %435 ], [ %177, %176 ], [ %186, %226 ]
  %234 = phi ptr [ %544, %543 ], [ %51, %435 ], [ %51, %176 ], [ %51, %226 ]
  %235 = phi i32 [ %545, %543 ], [ %52, %435 ], [ %52, %176 ], [ %52, %226 ]
  %236 = phi i32 [ %546, %543 ], [ %53, %435 ], [ %178, %176 ], [ %185, %226 ]
  %237 = phi i32 [ %528, %543 ], [ %437, %435 ], [ %179, %176 ], [ %184, %226 ]
  %238 = phi i32 [ %529, %543 ], [ %438, %435 ], [ %180, %176 ], [ %194, %226 ]
  %239 = phi ptr [ %410, %543 ], [ %410, %435 ], [ %181, %176 ], [ %231, %226 ]
  %240 = phi i32 [ 0, %543 ], [ 1, %435 ], [ %43, %176 ], [ %43, %226 ]
  br label %29, !llvm.loop !16

241:                                              ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %56, ptr %3, align 8, !tbaa !10, !noalias !26
  %242 = tail call ptr @__ctype_b_loc() #24
  %243 = load ptr, ptr %242, align 8, !tbaa !10, !noalias !26
  %244 = load i8, ptr %56, align 1, !tbaa !9, !noalias !26
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds i16, ptr %243, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !12, !noalias !26
  %248 = zext i16 %247 to i32
  %249 = and i32 %248, 1024
  %250 = icmp ne i32 %249, 0
  %251 = icmp eq i8 %244, 95
  %252 = or i1 %251, %250
  br i1 %252, label %253, label %279

253:                                              ; preds = %241, %262
  %254 = phi i8 [ %264, %262 ], [ %244, %241 ]
  %255 = phi ptr [ %263, %262 ], [ %56, %241 ]
  switch i8 %254, label %256 [
    i8 0, label %268
    i8 95, label %262
  ]

256:                                              ; preds = %253
  %257 = sext i8 %254 to i64
  %258 = getelementptr inbounds i16, ptr %243, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !12, !noalias !26
  %260 = and i16 %259, 8
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %256, %253
  %263 = getelementptr inbounds i8, ptr %255, i64 1
  %264 = load i8, ptr %263, align 1, !tbaa !9, !noalias !26
  br label %253, !llvm.loop !29

265:                                              ; preds = %256
  %266 = icmp eq i8 %254, 40
  %267 = select i1 %266, i64 1099511627779, i64 65537
  br label %268

268:                                              ; preds = %253, %265
  %269 = phi i64 [ %267, %265 ], [ 65537, %253 ]
  %270 = ptrtoint ptr %255 to i64
  %271 = ptrtoint ptr %56 to i64
  %272 = sub i64 %270, %271
  %273 = shl i64 %272, 32
  %274 = add i64 %273, 4294967296
  %275 = ashr exact i64 %274, 32
  %276 = tail call noalias noundef ptr @calloc(i64 noundef %275, i64 noundef 1) #27
  %277 = ashr exact i64 %273, 32
  %278 = tail call ptr @strncpy(ptr noundef %276, ptr noundef nonnull %56, i64 noundef %277) #23, !noalias !26
  br label %409

279:                                              ; preds = %241
  %280 = and i32 %248, 2048
  %281 = icmp ne i32 %280, 0
  %282 = icmp eq i8 %244, 46
  %283 = or i1 %282, %281
  br i1 %283, label %284, label %305

284:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23, !noalias !26
  %285 = call double @strtod(ptr noundef nonnull %56, ptr noundef nonnull %3) #23, !noalias !26
  %286 = call i64 @strtol(ptr noundef nonnull %56, ptr noundef nonnull %4, i32 noundef 0) #23, !noalias !26
  %287 = load ptr, ptr %3, align 8, !tbaa !10, !noalias !26
  %288 = icmp eq ptr %287, %56
  %289 = load ptr, ptr %4, align 8, !noalias !26
  %290 = icmp eq ptr %289, %56
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %295

292:                                              ; preds = %284
  %293 = load i32, ptr %1, align 4, !tbaa !5, !noalias !26
  %294 = or i32 %293, 64
  store i32 %294, ptr %1, align 4, !tbaa !5, !noalias !26
  br label %300

295:                                              ; preds = %284
  %296 = icmp ugt ptr %287, %289
  br i1 %296, label %297, label %300

297:                                              ; preds = %295
  %298 = fadd double %285, 5.000000e-01
  %299 = fptosi double %298 to i64
  br label %300

300:                                              ; preds = %297, %295, %292
  %301 = phi ptr [ %56, %292 ], [ %287, %297 ], [ %289, %295 ]
  %302 = phi i64 [ 1, %292 ], [ 65537, %297 ], [ 131073, %295 ]
  %303 = phi double [ 0.000000e+00, %292 ], [ %285, %297 ], [ %285, %295 ]
  %304 = phi i64 [ 0, %292 ], [ %299, %297 ], [ %286, %295 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23, !noalias !26
  br label %409

305:                                              ; preds = %279
  switch i8 %244, label %406 [
    i8 34, label %306
    i8 39, label %306
    i8 42, label %344
    i8 47, label %350
    i8 61, label %362
    i8 37, label %356
    i8 43, label %358
    i8 45, label %360
    i8 33, label %368
    i8 60, label %374
    i8 62, label %379
    i8 124, label %390
    i8 38, label %396
    i8 94, label %402
    i8 126, label %404
  ]

306:                                              ; preds = %305, %305
  %307 = getelementptr inbounds i8, ptr %56, i64 1
  %308 = load i8, ptr %307, align 1, !tbaa !9, !noalias !26
  %309 = icmp eq i8 %308, 0
  %310 = icmp eq i8 %308, %244
  %311 = or i1 %309, %310
  br i1 %311, label %324, label %312

312:                                              ; preds = %306, %312
  %313 = phi i8 [ %320, %312 ], [ %308, %306 ]
  %314 = phi ptr [ %319, %312 ], [ %307, %306 ]
  %315 = phi ptr [ %318, %312 ], [ %56, %306 ]
  %316 = icmp eq i8 %313, 92
  %317 = getelementptr inbounds i8, ptr %315, i64 2
  %318 = select i1 %316, ptr %317, ptr %314
  %319 = getelementptr inbounds i8, ptr %318, i64 1
  %320 = load i8, ptr %319, align 1, !tbaa !9, !noalias !26
  %321 = icmp eq i8 %320, 0
  %322 = icmp eq i8 %320, %244
  %323 = or i1 %321, %322
  br i1 %323, label %324, label %312, !llvm.loop !30

324:                                              ; preds = %312, %306
  %325 = phi ptr [ %56, %306 ], [ %318, %312 ]
  %326 = phi i1 [ %310, %306 ], [ %322, %312 ]
  %327 = getelementptr inbounds i8, ptr %325, i64 1
  br i1 %326, label %328, label %341

328:                                              ; preds = %324
  %329 = ptrtoint ptr %327 to i64
  %330 = ptrtoint ptr %56 to i64
  %331 = xor i64 %330, -1
  %332 = add i64 %329, %331
  %333 = sub i64 %329, %330
  %334 = shl i64 %333, 32
  %335 = ashr exact i64 %334, 32
  %336 = tail call noalias noundef ptr @calloc(i64 noundef %335, i64 noundef 1) #27
  %337 = shl i64 %332, 32
  %338 = ashr exact i64 %337, 32
  %339 = tail call ptr @strncpy(ptr noundef %336, ptr noundef nonnull %307, i64 noundef %338) #23, !noalias !26
  %340 = getelementptr inbounds i8, ptr %325, i64 2
  br label %409

341:                                              ; preds = %324
  %342 = load i32, ptr %1, align 4, !tbaa !5, !noalias !26
  %343 = or i32 %342, 1
  store i32 %343, ptr %1, align 4, !tbaa !5, !noalias !26
  br label %409

344:                                              ; preds = %305
  %345 = getelementptr inbounds i8, ptr %56, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !9, !noalias !26
  %347 = icmp eq i8 %346, 42
  br i1 %347, label %348, label %409

348:                                              ; preds = %344
  %349 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

350:                                              ; preds = %305
  %351 = getelementptr inbounds i8, ptr %56, i64 1
  %352 = load i8, ptr %351, align 1, !tbaa !9, !noalias !26
  %353 = icmp eq i8 %352, 47
  br i1 %353, label %354, label %409

354:                                              ; preds = %350
  %355 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

356:                                              ; preds = %305
  %357 = getelementptr inbounds i8, ptr %56, i64 1
  br label %409

358:                                              ; preds = %305
  %359 = getelementptr inbounds i8, ptr %56, i64 1
  br label %409

360:                                              ; preds = %305
  %361 = getelementptr inbounds i8, ptr %56, i64 1
  br label %409

362:                                              ; preds = %305
  %363 = getelementptr inbounds i8, ptr %56, i64 1
  %364 = load i8, ptr %363, align 1, !tbaa !9, !noalias !26
  %365 = icmp eq i8 %364, 61
  br i1 %365, label %366, label %406

366:                                              ; preds = %362
  %367 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

368:                                              ; preds = %305
  %369 = getelementptr inbounds i8, ptr %56, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !9, !noalias !26
  %371 = icmp eq i8 %370, 61
  br i1 %371, label %372, label %409

372:                                              ; preds = %368
  %373 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

374:                                              ; preds = %305
  %375 = getelementptr inbounds i8, ptr %56, i64 1
  %376 = load i8, ptr %375, align 1, !tbaa !9, !noalias !26
  switch i8 %376, label %409 [
    i8 62, label %377
    i8 61, label %384
    i8 60, label %388
  ]

377:                                              ; preds = %374
  %378 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

379:                                              ; preds = %305
  %380 = getelementptr inbounds i8, ptr %56, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !9, !noalias !26
  switch i8 %381, label %409 [
    i8 61, label %382
    i8 62, label %386
  ]

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

384:                                              ; preds = %374
  %385 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

386:                                              ; preds = %379
  %387 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

388:                                              ; preds = %374
  %389 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

390:                                              ; preds = %305
  %391 = getelementptr inbounds i8, ptr %56, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !9, !noalias !26
  %393 = icmp eq i8 %392, 124
  br i1 %393, label %394, label %409

394:                                              ; preds = %390
  %395 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

396:                                              ; preds = %305
  %397 = getelementptr inbounds i8, ptr %56, i64 1
  %398 = load i8, ptr %397, align 1, !tbaa !9, !noalias !26
  %399 = icmp eq i8 %398, 38
  br i1 %399, label %400, label %409

400:                                              ; preds = %396
  %401 = getelementptr inbounds i8, ptr %56, i64 2
  br label %409

402:                                              ; preds = %305
  %403 = getelementptr inbounds i8, ptr %56, i64 1
  br label %409

404:                                              ; preds = %305
  %405 = getelementptr inbounds i8, ptr %56, i64 1
  br label %409

406:                                              ; preds = %362, %305
  %407 = load i32, ptr %1, align 4, !tbaa !5, !noalias !26
  %408 = or i32 %407, 8
  store i32 %408, ptr %1, align 4, !tbaa !5, !noalias !26
  br label %409

409:                                              ; preds = %406, %404, %402, %400, %396, %394, %390, %388, %386, %384, %382, %379, %377, %374, %372, %368, %366, %360, %358, %356, %354, %350, %348, %344, %341, %328, %300, %268
  %410 = phi ptr [ %255, %268 ], [ %301, %300 ], [ %56, %406 ], [ %405, %404 ], [ %403, %402 ], [ %401, %400 ], [ %395, %394 ], [ %387, %386 ], [ %383, %382 ], [ %389, %388 ], [ %385, %384 ], [ %378, %377 ], [ %373, %372 ], [ %361, %360 ], [ %359, %358 ], [ %357, %356 ], [ %367, %366 ], [ %355, %354 ], [ %349, %348 ], [ %327, %341 ], [ %340, %328 ], [ %345, %344 ], [ %351, %350 ], [ %380, %379 ], [ %375, %374 ], [ %391, %390 ], [ %397, %396 ], [ %369, %368 ]
  %411 = phi i64 [ %269, %268 ], [ %302, %300 ], [ 0, %406 ], [ 1112396529666, %404 ], [ 2289217568770, %402 ], [ 2297807503362, %400 ], [ 2302102470658, %394 ], [ 2254857830402, %386 ], [ 2272037699586, %382 ], [ 2250562863106, %388 ], [ 2263447764994, %384 ], [ 2280627634178, %377 ], [ 2280627634178, %372 ], [ %46, %360 ], [ %49, %358 ], [ 2237677961218, %356 ], [ 2276332666882, %366 ], [ 2233382993922, %354 ], [ 2220498092034, %348 ], [ 0, %341 ], [ 196609, %328 ], [ 2224793059330, %344 ], [ 2229088026626, %350 ], [ 2267742732290, %379 ], [ 2259152797698, %374 ], [ 2293512536066, %390 ], [ 2284922601474, %396 ], [ 1116691496962, %368 ]
  %412 = phi ptr [ %276, %268 ], [ null, %300 ], [ null, %406 ], [ null, %404 ], [ null, %402 ], [ null, %400 ], [ null, %394 ], [ null, %386 ], [ null, %382 ], [ null, %388 ], [ null, %384 ], [ null, %377 ], [ null, %372 ], [ null, %360 ], [ null, %358 ], [ null, %356 ], [ null, %366 ], [ null, %354 ], [ null, %348 ], [ null, %341 ], [ null, %328 ], [ null, %344 ], [ null, %350 ], [ null, %379 ], [ null, %374 ], [ null, %390 ], [ null, %396 ], [ null, %368 ]
  %413 = phi ptr [ null, %268 ], [ null, %300 ], [ null, %406 ], [ @ke_op_KEO_BNOT, %404 ], [ @ke_op_KEO_BXOR, %402 ], [ @ke_op_KEO_LAND, %400 ], [ @ke_op_KEO_LOR, %394 ], [ @ke_op_KEO_RSH, %386 ], [ @ke_op_KEO_GE, %382 ], [ @ke_op_KEO_LSH, %388 ], [ @ke_op_KEO_LE, %384 ], [ @ke_op_KEO_NE, %377 ], [ @ke_op_KEO_NE, %372 ], [ %45, %360 ], [ %48, %358 ], [ @ke_op_KEO_MOD, %356 ], [ @ke_op_KEO_EQ, %366 ], [ @ke_op_KEO_IDIV, %354 ], [ @ke_op_KEO_POW, %348 ], [ null, %341 ], [ null, %328 ], [ @ke_op_KEO_MUL, %344 ], [ @ke_op_KEO_DIV, %350 ], [ @ke_op_KEO_GT, %379 ], [ @ke_op_KEO_LT, %374 ], [ @ke_op_KEO_BOR, %390 ], [ @ke_op_KEO_BAND, %396 ], [ @ke_op_KEO_LNOT, %368 ]
  %414 = phi double [ 0.000000e+00, %268 ], [ %303, %300 ], [ 0.000000e+00, %406 ], [ 0.000000e+00, %404 ], [ 0.000000e+00, %402 ], [ 0.000000e+00, %400 ], [ 0.000000e+00, %394 ], [ 0.000000e+00, %386 ], [ 0.000000e+00, %382 ], [ 0.000000e+00, %388 ], [ 0.000000e+00, %384 ], [ 0.000000e+00, %377 ], [ 0.000000e+00, %372 ], [ 0.000000e+00, %360 ], [ 0.000000e+00, %358 ], [ 0.000000e+00, %356 ], [ 0.000000e+00, %366 ], [ 0.000000e+00, %354 ], [ 0.000000e+00, %348 ], [ 0.000000e+00, %341 ], [ 0.000000e+00, %328 ], [ 0.000000e+00, %344 ], [ 0.000000e+00, %350 ], [ 0.000000e+00, %379 ], [ 0.000000e+00, %374 ], [ 0.000000e+00, %390 ], [ 0.000000e+00, %396 ], [ 0.000000e+00, %368 ]
  %415 = phi i64 [ 0, %268 ], [ %304, %300 ], [ 0, %406 ], [ 0, %404 ], [ 0, %402 ], [ 0, %400 ], [ 0, %394 ], [ 0, %386 ], [ 0, %382 ], [ 0, %388 ], [ 0, %384 ], [ 0, %377 ], [ 0, %372 ], [ 0, %360 ], [ 0, %358 ], [ 0, %356 ], [ 0, %366 ], [ 0, %354 ], [ 0, %348 ], [ 0, %341 ], [ 0, %328 ], [ 0, %344 ], [ 0, %350 ], [ 0, %379 ], [ 0, %374 ], [ 0, %390 ], [ 0, %396 ], [ 0, %368 ]
  %416 = phi ptr [ null, %268 ], [ null, %300 ], [ null, %406 ], [ null, %404 ], [ null, %402 ], [ null, %400 ], [ null, %394 ], [ null, %386 ], [ null, %382 ], [ null, %388 ], [ null, %384 ], [ null, %377 ], [ null, %372 ], [ null, %360 ], [ null, %358 ], [ null, %356 ], [ null, %366 ], [ null, %354 ], [ null, %348 ], [ null, %341 ], [ %336, %328 ], [ null, %344 ], [ null, %350 ], [ null, %379 ], [ null, %374 ], [ null, %390 ], [ null, %396 ], [ null, %368 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %417 = load i32, ptr %1, align 4, !tbaa !5
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %664

419:                                              ; preds = %409
  %420 = trunc i64 %411 to i16
  switch i16 %420, label %55 [
    i16 1, label %421
    i16 3, label %446
    i16 2, label %471
  ], !llvm.loop !16

421:                                              ; preds = %419
  %422 = icmp eq i32 %35, %34
  br i1 %422, label %423, label %435

423:                                              ; preds = %421
  %424 = icmp eq i32 %34, 0
  %425 = shl i32 %34, 1
  %426 = select i1 %424, i32 8, i32 %425
  %427 = sext i32 %426 to i64
  %428 = mul nsw i64 %427, 48
  %429 = tail call ptr @realloc(ptr noundef %30, i64 noundef %428) #25
  %430 = sext i32 %34 to i64
  %431 = getelementptr inbounds %struct.ke1_s, ptr %429, i64 %430
  %432 = sub nsw i32 %426, %34
  %433 = sext i32 %432 to i64
  %434 = mul nsw i64 %433, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %431, i8 0, i64 %434, i1 false)
  br label %435

435:                                              ; preds = %423, %421
  %436 = phi ptr [ %429, %423 ], [ %30, %421 ]
  %437 = phi i32 [ %426, %423 ], [ %34, %421 ]
  %438 = add nsw i32 %35, 1
  %439 = sext i32 %35 to i64
  %440 = getelementptr inbounds %struct.ke1_s, ptr %436, i64 %439
  store i64 %411, ptr %440, align 8, !tbaa.struct !17
  %441 = getelementptr inbounds i8, ptr %440, i64 8
  store ptr %412, ptr %441, align 8, !tbaa.struct !31
  %442 = getelementptr inbounds i8, ptr %440, i64 16
  store ptr %413, ptr %442, align 8, !tbaa.struct !32
  %443 = getelementptr inbounds i8, ptr %440, i64 24
  store double %414, ptr %443, align 8, !tbaa.struct !33
  %444 = getelementptr inbounds i8, ptr %440, i64 32
  store i64 %415, ptr %444, align 8, !tbaa.struct !34
  %445 = getelementptr inbounds i8, ptr %440, i64 40
  store ptr %416, ptr %445, align 8, !tbaa.struct !35
  br label %232

446:                                              ; preds = %419
  %447 = icmp eq i32 %53, %52
  br i1 %447, label %448, label %460

448:                                              ; preds = %446
  %449 = icmp eq i32 %52, 0
  %450 = shl i32 %52, 1
  %451 = select i1 %449, i32 8, i32 %450
  %452 = sext i32 %451 to i64
  %453 = mul nsw i64 %452, 48
  %454 = tail call ptr @realloc(ptr noundef %51, i64 noundef %453) #25
  %455 = sext i32 %52 to i64
  %456 = getelementptr inbounds %struct.ke1_s, ptr %454, i64 %455
  %457 = sub nsw i32 %451, %52
  %458 = sext i32 %457 to i64
  %459 = mul nsw i64 %458, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %456, i8 0, i64 %459, i1 false)
  br label %460

460:                                              ; preds = %448, %446
  %461 = phi ptr [ %454, %448 ], [ %51, %446 ]
  %462 = phi i32 [ %451, %448 ], [ %52, %446 ]
  %463 = add nsw i32 %53, 1
  %464 = sext i32 %53 to i64
  %465 = getelementptr inbounds %struct.ke1_s, ptr %461, i64 %464
  store i64 %411, ptr %465, align 8, !tbaa.struct !17
  %466 = getelementptr inbounds i8, ptr %465, i64 8
  store ptr %412, ptr %466, align 8, !tbaa.struct !31
  %467 = getelementptr inbounds i8, ptr %465, i64 16
  store ptr %413, ptr %467, align 8, !tbaa.struct !32
  %468 = getelementptr inbounds i8, ptr %465, i64 24
  store double %414, ptr %468, align 8, !tbaa.struct !33
  %469 = getelementptr inbounds i8, ptr %465, i64 32
  store i64 %415, ptr %469, align 8, !tbaa.struct !34
  %470 = getelementptr inbounds i8, ptr %465, i64 40
  store ptr %416, ptr %470, align 8, !tbaa.struct !35
  br label %38, !llvm.loop !16

471:                                              ; preds = %419
  %472 = getelementptr %struct.ke1_s, ptr %51, i64 -1
  %473 = icmp sgt i32 %53, 0
  br i1 %473, label %474, label %525

474:                                              ; preds = %471
  %475 = shl i64 %411, 24
  %476 = ashr i64 %475, 56
  %477 = getelementptr inbounds [25 x i32], ptr @ke_op, i64 0, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !5
  %479 = add nsw i64 %476, -6
  %480 = icmp ult i64 %479, -5
  %481 = ashr i32 %478, 1
  %482 = sext i32 %35 to i64
  %483 = add i32 %35, %53
  br label %484

484:                                              ; preds = %516, %474
  %485 = phi i64 [ %482, %474 ], [ %519, %516 ]
  %486 = phi i32 [ %34, %474 ], [ %518, %516 ]
  %487 = phi i32 [ %53, %474 ], [ %521, %516 ]
  %488 = phi ptr [ %30, %474 ], [ %517, %516 ]
  %489 = zext nneg i32 %487 to i64
  %490 = getelementptr %struct.ke1_s, ptr %472, i64 %489
  %491 = load i64, ptr %490, align 8
  %492 = and i64 %491, 65535
  %493 = icmp eq i64 %492, 2
  %494 = trunc i64 %485 to i32
  br i1 %493, label %495, label %525

495:                                              ; preds = %484
  %496 = shl i64 %491, 24
  %497 = ashr i64 %496, 56
  %498 = getelementptr inbounds [25 x i32], ptr @ke_op, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !5
  %500 = ashr i32 %499, 1
  %501 = icmp sle i32 %481, %500
  %502 = icmp slt i32 %481, %500
  %503 = select i1 %480, i1 %502, i1 %501
  br i1 %503, label %525, label %504

504:                                              ; preds = %495
  %505 = icmp eq i32 %486, %494
  br i1 %505, label %506, label %516

506:                                              ; preds = %504
  %507 = icmp eq i64 %485, 0
  %508 = shl i32 %486, 1
  %509 = select i1 %507, i32 8, i32 %508
  %510 = sext i32 %509 to i64
  %511 = mul nsw i64 %510, 48
  %512 = tail call ptr @realloc(ptr noundef %488, i64 noundef %511) #25
  %513 = getelementptr inbounds %struct.ke1_s, ptr %512, i64 %485
  %514 = sub nsw i64 %510, %485
  %515 = mul nsw i64 %514, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %513, i8 0, i64 %515, i1 false)
  br label %516

516:                                              ; preds = %506, %504
  %517 = phi ptr [ %512, %506 ], [ %488, %504 ]
  %518 = phi i32 [ %509, %506 ], [ %486, %504 ]
  %519 = add nsw i64 %485, 1
  %520 = getelementptr inbounds %struct.ke1_s, ptr %517, i64 %485
  %521 = add nsw i32 %487, -1
  %522 = zext nneg i32 %521 to i64
  %523 = getelementptr inbounds %struct.ke1_s, ptr %51, i64 %522
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %520, ptr noundef nonnull align 8 dereferenceable(48) %523, i64 48, i1 false), !tbaa.struct !17
  %524 = icmp sgt i32 %487, 1
  br i1 %524, label %484, label %525

525:                                              ; preds = %516, %495, %484, %471
  %526 = phi ptr [ %30, %471 ], [ %488, %484 ], [ %517, %516 ], [ %488, %495 ]
  %527 = phi i32 [ %53, %471 ], [ %487, %484 ], [ 0, %516 ], [ %487, %495 ]
  %528 = phi i32 [ %34, %471 ], [ %486, %484 ], [ %518, %516 ], [ %486, %495 ]
  %529 = phi i32 [ %35, %471 ], [ %494, %484 ], [ %483, %516 ], [ %494, %495 ]
  %530 = icmp eq i32 %527, %52
  br i1 %530, label %531, label %543

531:                                              ; preds = %525
  %532 = icmp eq i32 %52, 0
  %533 = shl i32 %52, 1
  %534 = select i1 %532, i32 8, i32 %533
  %535 = sext i32 %534 to i64
  %536 = mul nsw i64 %535, 48
  %537 = tail call ptr @realloc(ptr noundef %51, i64 noundef %536) #25
  %538 = sext i32 %52 to i64
  %539 = getelementptr inbounds %struct.ke1_s, ptr %537, i64 %538
  %540 = sub nsw i32 %534, %52
  %541 = sext i32 %540 to i64
  %542 = mul nsw i64 %541, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %539, i8 0, i64 %542, i1 false)
  br label %543

543:                                              ; preds = %531, %525
  %544 = phi ptr [ %537, %531 ], [ %51, %525 ]
  %545 = phi i32 [ %534, %531 ], [ %52, %525 ]
  %546 = add nsw i32 %527, 1
  %547 = sext i32 %527 to i64
  %548 = getelementptr inbounds %struct.ke1_s, ptr %544, i64 %547
  store i64 %411, ptr %548, align 8, !tbaa.struct !17
  %549 = getelementptr inbounds i8, ptr %548, i64 8
  store ptr %412, ptr %549, align 8, !tbaa.struct !31
  %550 = getelementptr inbounds i8, ptr %548, i64 16
  store ptr %413, ptr %550, align 8, !tbaa.struct !32
  %551 = getelementptr inbounds i8, ptr %548, i64 24
  store double %414, ptr %551, align 8, !tbaa.struct !33
  %552 = getelementptr inbounds i8, ptr %548, i64 32
  store i64 %415, ptr %552, align 8, !tbaa.struct !34
  %553 = getelementptr inbounds i8, ptr %548, i64 40
  store ptr %416, ptr %553, align 8, !tbaa.struct !35
  br label %232

554:                                              ; preds = %55
  %555 = load i32, ptr %1, align 4, !tbaa !5
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %664

557:                                              ; preds = %554
  %558 = getelementptr %struct.ke1_s, ptr %51, i64 -1
  %559 = icmp sgt i32 %53, 0
  br i1 %559, label %560, label %600

560:                                              ; preds = %557
  %561 = sext i32 %35 to i64
  br label %562

562:                                              ; preds = %587, %560
  %563 = phi i64 [ %561, %560 ], [ %590, %587 ]
  %564 = phi i32 [ %34, %560 ], [ %589, %587 ]
  %565 = phi i32 [ %53, %560 ], [ %592, %587 ]
  %566 = phi ptr [ %30, %560 ], [ %588, %587 ]
  %567 = zext nneg i32 %565 to i64
  %568 = getelementptr %struct.ke1_s, ptr %558, i64 %567
  %569 = load i64, ptr %568, align 8
  %570 = shl i64 %569, 24
  %571 = ashr i64 %570, 56
  %572 = and i64 %571, 2147483648
  %573 = icmp eq i64 %572, 0
  %574 = trunc i64 %563 to i32
  br i1 %573, label %575, label %654

575:                                              ; preds = %562
  %576 = icmp eq i32 %564, %574
  br i1 %576, label %577, label %587

577:                                              ; preds = %575
  %578 = icmp eq i64 %563, 0
  %579 = shl i32 %564, 1
  %580 = select i1 %578, i32 8, i32 %579
  %581 = sext i32 %580 to i64
  %582 = mul nsw i64 %581, 48
  %583 = tail call ptr @realloc(ptr noundef %566, i64 noundef %582) #25
  %584 = getelementptr inbounds %struct.ke1_s, ptr %583, i64 %563
  %585 = sub nsw i64 %581, %563
  %586 = mul nsw i64 %585, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %584, i8 0, i64 %586, i1 false)
  br label %587

587:                                              ; preds = %577, %575
  %588 = phi ptr [ %583, %577 ], [ %566, %575 ]
  %589 = phi i32 [ %580, %577 ], [ %564, %575 ]
  %590 = add nsw i64 %563, 1
  %591 = getelementptr inbounds %struct.ke1_s, ptr %588, i64 %563
  %592 = add nsw i32 %565, -1
  %593 = zext nneg i32 %592 to i64
  %594 = getelementptr inbounds %struct.ke1_s, ptr %51, i64 %593
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %591, ptr noundef nonnull align 8 dereferenceable(48) %594, i64 48, i1 false), !tbaa.struct !17
  %595 = icmp sgt i32 %565, 1
  br i1 %595, label %562, label %596, !llvm.loop !36

596:                                              ; preds = %587
  %597 = trunc i64 %590 to i32
  %598 = load i32, ptr %1, align 4, !tbaa !5
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %664

600:                                              ; preds = %596, %557
  %601 = phi i32 [ %597, %596 ], [ %35, %557 ]
  %602 = phi ptr [ %588, %596 ], [ %30, %557 ]
  %603 = icmp sgt i32 %601, 0
  br i1 %603, label %604, label %660

604:                                              ; preds = %600
  %605 = zext nneg i32 %601 to i64
  %606 = and i64 %605, 1
  %607 = icmp eq i32 %601, 1
  br i1 %607, label %636, label %608

608:                                              ; preds = %604
  %609 = and i64 %605, 2147483646
  br label %610

610:                                              ; preds = %610, %608
  %611 = phi i64 [ 0, %608 ], [ %633, %610 ]
  %612 = phi i32 [ 0, %608 ], [ %632, %610 ]
  %613 = phi i64 [ 0, %608 ], [ %634, %610 ]
  %614 = getelementptr inbounds %struct.ke1_s, ptr %602, i64 %611
  %615 = load i64, ptr %614, align 8
  %616 = and i64 %615, 65535
  %617 = icmp eq i64 %616, 1
  %618 = ashr i64 %615, 40
  %619 = trunc i64 %618 to i32
  %620 = sub nsw i32 1, %619
  %621 = select i1 %617, i32 1, i32 %620
  %622 = add i32 %621, %612
  %623 = or disjoint i64 %611, 1
  %624 = getelementptr inbounds %struct.ke1_s, ptr %602, i64 %623
  %625 = load i64, ptr %624, align 8
  %626 = and i64 %625, 65535
  %627 = icmp eq i64 %626, 1
  %628 = ashr i64 %625, 40
  %629 = trunc i64 %628 to i32
  %630 = sub nsw i32 1, %629
  %631 = select i1 %627, i32 1, i32 %630
  %632 = add i32 %631, %622
  %633 = add nuw nsw i64 %611, 2
  %634 = add i64 %613, 2
  %635 = icmp eq i64 %634, %609
  br i1 %635, label %636, label %610, !llvm.loop !37

636:                                              ; preds = %610, %604
  %637 = phi i32 [ undef, %604 ], [ %632, %610 ]
  %638 = phi i64 [ 0, %604 ], [ %633, %610 ]
  %639 = phi i32 [ 0, %604 ], [ %632, %610 ]
  %640 = icmp eq i64 %606, 0
  br i1 %640, label %651, label %641

641:                                              ; preds = %636
  %642 = getelementptr inbounds %struct.ke1_s, ptr %602, i64 %638
  %643 = load i64, ptr %642, align 8
  %644 = and i64 %643, 65535
  %645 = icmp eq i64 %644, 1
  %646 = ashr i64 %643, 40
  %647 = trunc i64 %646 to i32
  %648 = sub nsw i32 1, %647
  %649 = select i1 %645, i32 1, i32 %648
  %650 = add i32 %649, %639
  br label %651

651:                                              ; preds = %636, %641
  %652 = phi i32 [ %637, %636 ], [ %650, %641 ]
  %653 = icmp eq i32 %652, 1
  br i1 %653, label %664, label %660

654:                                              ; preds = %218, %216, %128, %58, %562, %224, %126
  %655 = phi i32 [ 4, %126 ], [ 16, %224 ], [ 2, %562 ], [ 16, %58 ], [ 16, %216 ], [ 16, %218 ], [ 4, %128 ]
  %656 = phi i32 [ %127, %126 ], [ %225, %224 ], [ %574, %562 ], [ %35, %58 ], [ %194, %216 ], [ %194, %218 ], [ %35, %128 ]
  %657 = phi ptr [ %118, %126 ], [ %208, %224 ], [ %566, %562 ], [ %30, %58 ], [ %186, %216 ], [ %186, %218 ], [ %30, %128 ]
  %658 = load i32, ptr %1, align 4, !tbaa !5
  %659 = or i32 %658, %655
  br label %660

660:                                              ; preds = %654, %651, %600
  %661 = phi i32 [ 32, %600 ], [ 32, %651 ], [ %659, %654 ]
  %662 = phi i32 [ %601, %600 ], [ %601, %651 ], [ %656, %654 ]
  %663 = phi ptr [ %602, %600 ], [ %602, %651 ], [ %657, %654 ]
  store i32 %661, ptr %1, align 4, !tbaa !5
  br label %664

664:                                              ; preds = %409, %660, %651, %596, %554
  %665 = phi i32 [ %601, %651 ], [ %597, %596 ], [ %35, %554 ], [ %662, %660 ], [ %35, %409 ]
  %666 = phi ptr [ %602, %651 ], [ %588, %596 ], [ %30, %554 ], [ %663, %660 ], [ %30, %409 ]
  tail call void @free(ptr noundef %51) #23
  tail call void @free(ptr noundef %5) #23
  %667 = load i32, ptr %1, align 4, !tbaa !5
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %672, label %669

669:                                              ; preds = %664
  tail call void @free(ptr noundef %666) #23
  %670 = load i32, ptr %1, align 4, !tbaa !5
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %677

672:                                              ; preds = %664, %669
  %673 = phi ptr [ null, %669 ], [ %666, %664 ]
  %674 = phi i32 [ 0, %669 ], [ %665, %664 ]
  %675 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #27
  store i32 %674, ptr %675, align 8, !tbaa !38
  %676 = getelementptr inbounds %struct.kexpr_s, ptr %675, i64 0, i32 1
  store ptr %673, ptr %676, align 8, !tbaa !40
  br label %677

677:                                              ; preds = %669, %672
  %678 = phi ptr [ %675, %672 ], [ null, %669 ]
  ret ptr %678
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ke_eval(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !20
  store double 0.000000e+00, ptr %2, align 8, !tbaa !18
  store i32 0, ptr %4, align 4, !tbaa !5
  %6 = load i32, ptr %0, align 8, !tbaa !38
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = mul nsw i64 %9, 48
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #28
  br label %138

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %12, %41
  %17 = phi i64 [ 0, %12 ], [ %43, %41 ]
  %18 = phi i32 [ 0, %12 ], [ %42, %41 ]
  %19 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %17
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65534
  %22 = icmp eq i64 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %17, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = or i32 %18, 64
  br label %41

29:                                               ; preds = %16, %23
  %30 = and i64 %20, 65535
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %17, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = icmp ne ptr %34, null
  %36 = and i64 %20, 67108864
  %37 = icmp eq i64 %36, 0
  %38 = and i1 %37, %35
  %39 = or i32 %18, 128
  %40 = select i1 %38, i32 %39, i32 %18
  br label %41

41:                                               ; preds = %32, %29, %27
  %42 = phi i32 [ %28, %27 ], [ %18, %29 ], [ %40, %32 ]
  %43 = add nuw nsw i64 %17, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %16, !llvm.loop !41

45:                                               ; preds = %41
  %46 = zext nneg i32 %6 to i64
  %47 = mul nuw nsw i64 %46, 48
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #28
  br i1 %7, label %49, label %138

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %51

51:                                               ; preds = %49, %121
  %52 = phi i64 [ 0, %49 ], [ %123, %121 ]
  %53 = phi i32 [ 0, %49 ], [ %122, %121 ]
  %54 = load ptr, ptr %50, align 8, !tbaa !40
  %55 = getelementptr inbounds %struct.ke1_s, ptr %54, i64 %52
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65534
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %117

60:                                               ; preds = %51
  %61 = ashr i64 %56, 40
  %62 = trunc i64 %61 to i32
  switch i32 %62, label %114 [
    i32 2, label %63
    i32 1, label %91
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ke1_s, ptr %54, i64 %52, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %114, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %53, -1
  %69 = sext i32 %68 to i64
  %70 = sext i32 %53 to i64
  %71 = getelementptr %struct.ke1_s, ptr %48, i64 %70
  %72 = getelementptr %struct.ke1_s, ptr %71, i64 -2
  %73 = icmp ult i32 %57, 134217728
  br i1 %73, label %89, label %74

74:                                               ; preds = %67
  %75 = and i32 %57, -134217728
  %76 = icmp eq i32 %75, 134217728
  br i1 %76, label %77, label %121

77:                                               ; preds = %74
  %78 = getelementptr %struct.ke1_s, ptr %71, i64 -2, i32 3
  %79 = load double, ptr %78, align 8, !tbaa !42
  %80 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 %69, i32 3
  %81 = load double, ptr %80, align 8, !tbaa !42
  %82 = tail call double %65(double noundef %79, double noundef %81) #23
  store double %82, ptr %78, align 8, !tbaa !42
  %83 = fadd double %82, 5.000000e-01
  %84 = fptosi double %83 to i64
  %85 = getelementptr %struct.ke1_s, ptr %71, i64 -2, i32 4
  store i64 %84, ptr %85, align 8, !tbaa !43
  %86 = load i64, ptr %72, align 8
  %87 = and i64 %86, -67043329
  %88 = or disjoint i64 %87, 65536
  store i64 %88, ptr %72, align 8
  br label %121

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 %69
  tail call void %65(ptr noundef %72, ptr noundef %90) #23
  br label %121

91:                                               ; preds = %60
  %92 = getelementptr inbounds %struct.ke1_s, ptr %54, i64 %52, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %91
  %96 = sext i32 %53 to i64
  %97 = getelementptr %struct.ke1_s, ptr %48, i64 %96
  %98 = getelementptr %struct.ke1_s, ptr %97, i64 -1
  %99 = icmp ult i32 %57, 134217728
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = and i32 %57, -134217728
  %102 = icmp eq i32 %101, 134217728
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = getelementptr %struct.ke1_s, ptr %97, i64 -1, i32 3
  %105 = load double, ptr %104, align 8, !tbaa !42
  %106 = tail call double %93(double noundef %105) #23
  store double %106, ptr %104, align 8, !tbaa !42
  %107 = fadd double %106, 5.000000e-01
  %108 = fptosi double %107 to i64
  %109 = getelementptr %struct.ke1_s, ptr %97, i64 -1, i32 4
  store i64 %108, ptr %109, align 8, !tbaa !43
  %110 = load i64, ptr %98, align 8
  %111 = and i64 %110, -67043329
  %112 = or disjoint i64 %111, 65536
  store i64 %112, ptr %98, align 8
  br label %121

113:                                              ; preds = %95
  tail call void %93(ptr noundef %98, ptr noundef null) #23
  br label %121

114:                                              ; preds = %60, %63, %91
  %115 = add i32 %53, 1
  %116 = sub i32 %115, %62
  br label %121

117:                                              ; preds = %51
  %118 = add nsw i32 %53, 1
  %119 = sext i32 %53 to i64
  %120 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %120, ptr noundef nonnull align 8 dereferenceable(48) %55, i64 48, i1 false), !tbaa.struct !17
  br label %121

121:                                              ; preds = %74, %77, %89, %113, %103, %100, %114, %117
  %122 = phi i32 [ %68, %77 ], [ %68, %74 ], [ %68, %89 ], [ %53, %103 ], [ %53, %100 ], [ %53, %113 ], [ %116, %114 ], [ %118, %117 ]
  %123 = add nuw nsw i64 %52, 1
  %124 = load i32, ptr %0, align 8, !tbaa !38
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %51, label %127, !llvm.loop !44

127:                                              ; preds = %121
  %128 = load i64, ptr %48, align 8
  %129 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 0, i32 4
  %130 = load i64, ptr %129, align 8, !tbaa !43
  %131 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 0, i32 3
  %132 = load double, ptr %131, align 8, !tbaa !42
  %133 = getelementptr inbounds %struct.ke1_s, ptr %48, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = trunc i64 %128 to i32
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 1023
  br label %138

138:                                              ; preds = %8, %127, %45
  %139 = phi ptr [ %48, %127 ], [ %48, %45 ], [ %11, %8 ]
  %140 = phi i32 [ %42, %127 ], [ %42, %45 ], [ 0, %8 ]
  %141 = phi ptr [ %134, %127 ], [ undef, %45 ], [ undef, %8 ]
  %142 = phi double [ %132, %127 ], [ undef, %45 ], [ undef, %8 ]
  %143 = phi i64 [ %130, %127 ], [ undef, %45 ], [ undef, %8 ]
  %144 = phi i32 [ %137, %127 ], [ 0, %45 ], [ 0, %8 ]
  store i32 %144, ptr %4, align 4, !tbaa !5
  store i64 %143, ptr %1, align 8, !tbaa !20
  store double %142, ptr %2, align 8, !tbaa !18
  store ptr %141, ptr %3, align 8, !tbaa !10
  tail call void @free(ptr noundef %139) #23
  ret i32 %140
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @ke_eval_int(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = call i32 @ke_eval(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3)
  store i32 %7, ptr %1, align 4, !tbaa !5
  %8 = load i64, ptr %4, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local double @ke_eval_real(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = call i32 @ke_eval(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3)
  store i32 %7, ptr %1, align 4, !tbaa !5
  %8 = load double, ptr %5, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret double %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ke_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ke1_s, ptr %10, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  tail call void @free(ptr noundef %12) #23
  %13 = load ptr, ptr %7, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.ke1_s, ptr %13, i64 %9, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  tail call void @free(ptr noundef %15) #23
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %0, align 8, !tbaa !38
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !46

20:                                               ; preds = %8, %3
  %21 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  tail call void @free(ptr noundef %22) #23
  tail call void @free(ptr noundef nonnull %0) #23
  br label %23

23:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ke_set_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = sitofp i64 %2 to double
  %5 = load i32, ptr %0, align 8, !tbaa !38
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %32
  %10 = phi i32 [ %5, %7 ], [ %33, %32 ]
  %11 = phi i64 [ 0, %7 ], [ %35, %32 ]
  %12 = phi i32 [ 0, %7 ], [ %34, %32 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.ke1_s, ptr %13, i64 %11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ke1_s, ptr %13, i64 %11, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ke1_s, ptr %13, i64 %11, i32 4
  store i64 %2, ptr %26, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.ke1_s, ptr %13, i64 %11, i32 3
  store double %4, ptr %27, align 8, !tbaa !42
  %28 = and i64 %15, -134217727
  %29 = or disjoint i64 %28, 67239936
  store i64 %29, ptr %14, align 8
  %30 = add nsw i32 %12, 1
  %31 = load i32, ptr %0, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %25, %22, %18, %9
  %33 = phi i32 [ %31, %25 ], [ %10, %22 ], [ %10, %18 ], [ %10, %9 ]
  %34 = phi i32 [ %30, %25 ], [ %12, %22 ], [ %12, %18 ], [ %12, %9 ]
  %35 = add nuw nsw i64 %11, 1
  %36 = sext i32 %33 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %9, label %38, !llvm.loop !47

38:                                               ; preds = %32, %3
  %39 = phi i32 [ 0, %3 ], [ %34, %32 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ke_set_real(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) local_unnamed_addr #6 {
  %4 = fadd double %2, 5.000000e-01
  %5 = fptosi double %4 to i64
  %6 = load i32, ptr %0, align 8, !tbaa !38
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %33
  %11 = phi i32 [ %6, %8 ], [ %34, %33 ]
  %12 = phi i64 [ 0, %8 ], [ %36, %33 ]
  %13 = phi i32 [ 0, %8 ], [ %35, %33 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %12
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %12, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %1) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %12, i32 3
  store double %2, ptr %27, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.ke1_s, ptr %14, i64 %12, i32 4
  store i64 %5, ptr %28, align 8, !tbaa !43
  %29 = and i64 %16, -134217727
  %30 = or disjoint i64 %29, 67174400
  store i64 %30, ptr %15, align 8
  %31 = add nsw i32 %13, 1
  %32 = load i32, ptr %0, align 8, !tbaa !38
  br label %33

33:                                               ; preds = %26, %23, %19, %10
  %34 = phi i32 [ %32, %26 ], [ %11, %23 ], [ %11, %19 ], [ %11, %10 ]
  %35 = phi i32 [ %31, %26 ], [ %13, %23 ], [ %13, %19 ], [ %13, %10 ]
  %36 = add nuw nsw i64 %12, 1
  %37 = sext i32 %34 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %10, label %39, !llvm.loop !48

39:                                               ; preds = %33, %3
  %40 = phi i32 [ 0, %3 ], [ %35, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ke_set_str(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %40
  %9 = phi i32 [ %4, %6 ], [ %41, %40 ]
  %10 = phi i64 [ 0, %6 ], [ %43, %40 ]
  %11 = phi i32 [ 0, %6 ], [ %42, %40 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %40

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #26
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = and i64 %14, 67043328
  %26 = icmp eq i64 %25, 196608
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  tail call void @free(ptr noundef %29) #23
  %30 = load i64, ptr %13, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i64 [ %30, %27 ], [ %14, %24 ]
  %33 = tail call noalias ptr @strdup(ptr noundef %2) #23
  %34 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 3
  %36 = and i64 %32, -134152193
  %37 = or disjoint i64 %36, 67305472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  store i64 %37, ptr %13, align 8
  %38 = add nsw i32 %11, 1
  %39 = load i32, ptr %0, align 8, !tbaa !38
  br label %40

40:                                               ; preds = %31, %21, %17, %8
  %41 = phi i32 [ %39, %31 ], [ %9, %21 ], [ %9, %17 ], [ %9, %8 ]
  %42 = phi i32 [ %38, %31 ], [ %11, %21 ], [ %11, %17 ], [ %11, %8 ]
  %43 = add nuw nsw i64 %10, 1
  %44 = sext i32 %41 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %8, label %46, !llvm.loop !49

46:                                               ; preds = %40, %3
  %47 = phi i32 [ 0, %3 ], [ %42, %40 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ke_set_real_func1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %32
  %9 = phi i32 [ %4, %6 ], [ %33, %32 ]
  %10 = phi i64 [ 0, %6 ], [ %35, %32 ]
  %11 = phi i32 [ 0, %6 ], [ %34, %32 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = ashr i64 %14, 40
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %1) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 2
  store ptr %2, ptr %27, align 8, !tbaa !9
  %28 = and i64 %14, -4160815101
  %29 = or disjoint i64 %28, 134217728
  store i64 %29, ptr %13, align 8
  %30 = add nsw i32 %11, 1
  %31 = load i32, ptr %0, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %26, %21, %17, %8
  %33 = phi i32 [ %31, %26 ], [ %9, %21 ], [ %9, %17 ], [ %9, %8 ]
  %34 = phi i32 [ %30, %26 ], [ %11, %21 ], [ %11, %17 ], [ %11, %8 ]
  %35 = add nuw nsw i64 %10, 1
  %36 = sext i32 %33 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %8, label %38, !llvm.loop !50

38:                                               ; preds = %32, %3
  %39 = phi i32 [ 0, %3 ], [ %34, %32 ]
  ret i32 %39
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ke_set_real_func2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %32
  %9 = phi i32 [ %4, %6 ], [ %33, %32 ]
  %10 = phi i64 [ 0, %6 ], [ %35, %32 ]
  %11 = phi i32 [ 0, %6 ], [ %34, %32 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = ashr i64 %14, 40
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %1) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ke1_s, ptr %12, i64 %10, i32 2
  store ptr %2, ptr %27, align 8, !tbaa !9
  %28 = and i64 %14, -4160815101
  %29 = or disjoint i64 %28, 134217728
  store i64 %29, ptr %13, align 8
  %30 = add nsw i32 %11, 1
  %31 = load i32, ptr %0, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %26, %21, %17, %8
  %33 = phi i32 [ %31, %26 ], [ %9, %21 ], [ %9, %17 ], [ %9, %8 ]
  %34 = phi i32 [ %30, %26 ], [ %11, %21 ], [ %11, %17 ], [ %11, %8 ]
  %35 = add nuw nsw i64 %10, 1
  %36 = sext i32 %33 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %8, label %38, !llvm.loop !51

38:                                               ; preds = %32, %3
  %39 = phi i32 [ 0, %3 ], [ %34, %32 ]
  ret i32 %39
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @ke_set_default_func(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !38
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %266

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %30, %4
  %7 = phi i32 [ %2, %4 ], [ %31, %30 ]
  %8 = phi i64 [ 0, %4 ], [ %33, %30 ]
  %9 = phi i32 [ 0, %4 ], [ %32, %30 ]
  %10 = load ptr, ptr %5, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ke1_s, ptr %10, i64 %8
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %30

15:                                               ; preds = %6
  %16 = ashr i64 %12, 40
  %17 = and i64 %16, 4294967295
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ke1_s, ptr %10, i64 %8, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(4) @.str) #26
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ke1_s, ptr %10, i64 %8, i32 2
  store ptr @exp, ptr %25, align 8, !tbaa !9
  %26 = and i64 %12, -4160815101
  %27 = or disjoint i64 %26, 134217728
  store i64 %27, ptr %11, align 8
  %28 = add nsw i32 %9, 1
  %29 = load i32, ptr %0, align 8, !tbaa !38
  br label %30

30:                                               ; preds = %24, %19, %15, %6
  %31 = phi i32 [ %29, %24 ], [ %7, %19 ], [ %7, %15 ], [ %7, %6 ]
  %32 = phi i32 [ %28, %24 ], [ %9, %19 ], [ %9, %15 ], [ %9, %6 ]
  %33 = add nuw nsw i64 %8, 1
  %34 = sext i32 %31 to i64
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %6, label %36, !llvm.loop !50

36:                                               ; preds = %30
  %37 = icmp sgt i32 %31, 0
  br i1 %37, label %38, label %266

38:                                               ; preds = %36, %62
  %39 = phi i32 [ %63, %62 ], [ %31, %36 ]
  %40 = phi i64 [ %65, %62 ], [ 0, %36 ]
  %41 = phi i32 [ %64, %62 ], [ 0, %36 ]
  %42 = load ptr, ptr %5, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct.ke1_s, ptr %42, i64 %40
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = ashr i64 %44, 40
  %49 = and i64 %48, 4294967295
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ke1_s, ptr %42, i64 %40, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(4) @.str.1) #26
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ke1_s, ptr %42, i64 %40, i32 2
  store ptr @log, ptr %57, align 8, !tbaa !9
  %58 = and i64 %44, -4160815101
  %59 = or disjoint i64 %58, 134217728
  store i64 %59, ptr %43, align 8
  %60 = add nsw i32 %41, 1
  %61 = load i32, ptr %0, align 8, !tbaa !38
  br label %62

62:                                               ; preds = %56, %51, %47, %38
  %63 = phi i32 [ %61, %56 ], [ %39, %51 ], [ %39, %47 ], [ %39, %38 ]
  %64 = phi i32 [ %60, %56 ], [ %41, %51 ], [ %41, %47 ], [ %41, %38 ]
  %65 = add nuw nsw i64 %40, 1
  %66 = sext i32 %63 to i64
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %38, label %68, !llvm.loop !50

68:                                               ; preds = %62
  %69 = add nsw i32 %64, %32
  %70 = icmp sgt i32 %63, 0
  br i1 %70, label %71, label %266

71:                                               ; preds = %68, %95
  %72 = phi i32 [ %96, %95 ], [ %63, %68 ]
  %73 = phi i64 [ %98, %95 ], [ 0, %68 ]
  %74 = phi i32 [ %97, %95 ], [ 0, %68 ]
  %75 = load ptr, ptr %5, align 8, !tbaa !40
  %76 = getelementptr inbounds %struct.ke1_s, ptr %75, i64 %73
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 3
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = ashr i64 %77, 40
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i64 %82, 1
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ke1_s, ptr %75, i64 %73, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %86, ptr noundef nonnull dereferenceable(6) @.str.2) #26
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ke1_s, ptr %75, i64 %73, i32 2
  store ptr @log10, ptr %90, align 8, !tbaa !9
  %91 = and i64 %77, -4160815101
  %92 = or disjoint i64 %91, 134217728
  store i64 %92, ptr %76, align 8
  %93 = add nsw i32 %74, 1
  %94 = load i32, ptr %0, align 8, !tbaa !38
  br label %95

95:                                               ; preds = %89, %84, %80, %71
  %96 = phi i32 [ %94, %89 ], [ %72, %84 ], [ %72, %80 ], [ %72, %71 ]
  %97 = phi i32 [ %93, %89 ], [ %74, %84 ], [ %74, %80 ], [ %74, %71 ]
  %98 = add nuw nsw i64 %73, 1
  %99 = sext i32 %96 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %71, label %101, !llvm.loop !50

101:                                              ; preds = %95
  %102 = add nsw i32 %97, %69
  %103 = icmp sgt i32 %96, 0
  br i1 %103, label %104, label %266

104:                                              ; preds = %101, %128
  %105 = phi i32 [ %129, %128 ], [ %96, %101 ]
  %106 = phi i64 [ %131, %128 ], [ 0, %101 ]
  %107 = phi i32 [ %130, %128 ], [ 0, %101 ]
  %108 = load ptr, ptr %5, align 8, !tbaa !40
  %109 = getelementptr inbounds %struct.ke1_s, ptr %108, i64 %106
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 3
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = ashr i64 %110, 40
  %115 = and i64 %114, 4294967295
  %116 = icmp eq i64 %115, 1
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ke1_s, ptr %108, i64 %106, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !23
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(5) @.str.3) #26
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.ke1_s, ptr %108, i64 %106, i32 2
  store ptr @sqrt, ptr %123, align 8, !tbaa !9
  %124 = and i64 %110, -4160815101
  %125 = or disjoint i64 %124, 134217728
  store i64 %125, ptr %109, align 8
  %126 = add nsw i32 %107, 1
  %127 = load i32, ptr %0, align 8, !tbaa !38
  br label %128

128:                                              ; preds = %122, %117, %113, %104
  %129 = phi i32 [ %127, %122 ], [ %105, %117 ], [ %105, %113 ], [ %105, %104 ]
  %130 = phi i32 [ %126, %122 ], [ %107, %117 ], [ %107, %113 ], [ %107, %104 ]
  %131 = add nuw nsw i64 %106, 1
  %132 = sext i32 %129 to i64
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %104, label %134, !llvm.loop !50

134:                                              ; preds = %128
  %135 = add nsw i32 %130, %102
  %136 = icmp sgt i32 %129, 0
  br i1 %136, label %137, label %266

137:                                              ; preds = %134, %161
  %138 = phi i32 [ %162, %161 ], [ %129, %134 ]
  %139 = phi i64 [ %164, %161 ], [ 0, %134 ]
  %140 = phi i32 [ %163, %161 ], [ 0, %134 ]
  %141 = load ptr, ptr %5, align 8, !tbaa !40
  %142 = getelementptr inbounds %struct.ke1_s, ptr %141, i64 %139
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 3
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = ashr i64 %143, 40
  %148 = and i64 %147, 4294967295
  %149 = icmp eq i64 %148, 1
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ke1_s, ptr %141, i64 %139, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !23
  %153 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %152, ptr noundef nonnull dereferenceable(4) @.str.4) #26
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ke1_s, ptr %141, i64 %139, i32 2
  store ptr @sin, ptr %156, align 8, !tbaa !9
  %157 = and i64 %143, -4160815101
  %158 = or disjoint i64 %157, 134217728
  store i64 %158, ptr %142, align 8
  %159 = add nsw i32 %140, 1
  %160 = load i32, ptr %0, align 8, !tbaa !38
  br label %161

161:                                              ; preds = %155, %150, %146, %137
  %162 = phi i32 [ %160, %155 ], [ %138, %150 ], [ %138, %146 ], [ %138, %137 ]
  %163 = phi i32 [ %159, %155 ], [ %140, %150 ], [ %140, %146 ], [ %140, %137 ]
  %164 = add nuw nsw i64 %139, 1
  %165 = sext i32 %162 to i64
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %137, label %167, !llvm.loop !50

167:                                              ; preds = %161
  %168 = add nsw i32 %163, %135
  %169 = icmp sgt i32 %162, 0
  br i1 %169, label %170, label %266

170:                                              ; preds = %167, %194
  %171 = phi i32 [ %195, %194 ], [ %162, %167 ]
  %172 = phi i64 [ %197, %194 ], [ 0, %167 ]
  %173 = phi i32 [ %196, %194 ], [ 0, %167 ]
  %174 = load ptr, ptr %5, align 8, !tbaa !40
  %175 = getelementptr inbounds %struct.ke1_s, ptr %174, i64 %172
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %194

179:                                              ; preds = %170
  %180 = ashr i64 %176, 40
  %181 = and i64 %180, 4294967295
  %182 = icmp eq i64 %181, 1
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ke1_s, ptr %174, i64 %172, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !23
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(4) @.str.5) #26
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.ke1_s, ptr %174, i64 %172, i32 2
  store ptr @cos, ptr %189, align 8, !tbaa !9
  %190 = and i64 %176, -4160815101
  %191 = or disjoint i64 %190, 134217728
  store i64 %191, ptr %175, align 8
  %192 = add nsw i32 %173, 1
  %193 = load i32, ptr %0, align 8, !tbaa !38
  br label %194

194:                                              ; preds = %188, %183, %179, %170
  %195 = phi i32 [ %193, %188 ], [ %171, %183 ], [ %171, %179 ], [ %171, %170 ]
  %196 = phi i32 [ %192, %188 ], [ %173, %183 ], [ %173, %179 ], [ %173, %170 ]
  %197 = add nuw nsw i64 %172, 1
  %198 = sext i32 %195 to i64
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %170, label %200, !llvm.loop !50

200:                                              ; preds = %194
  %201 = add nsw i32 %196, %168
  %202 = icmp sgt i32 %195, 0
  br i1 %202, label %203, label %266

203:                                              ; preds = %200, %227
  %204 = phi i32 [ %228, %227 ], [ %195, %200 ]
  %205 = phi i64 [ %230, %227 ], [ 0, %200 ]
  %206 = phi i32 [ %229, %227 ], [ 0, %200 ]
  %207 = load ptr, ptr %5, align 8, !tbaa !40
  %208 = getelementptr inbounds %struct.ke1_s, ptr %207, i64 %205
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 3
  br i1 %211, label %212, label %227

212:                                              ; preds = %203
  %213 = ashr i64 %209, 40
  %214 = and i64 %213, 4294967295
  %215 = icmp eq i64 %214, 1
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.ke1_s, ptr %207, i64 %205, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !23
  %219 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %218, ptr noundef nonnull dereferenceable(4) @.str.6) #26
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.ke1_s, ptr %207, i64 %205, i32 2
  store ptr @tan, ptr %222, align 8, !tbaa !9
  %223 = and i64 %209, -4160815101
  %224 = or disjoint i64 %223, 134217728
  store i64 %224, ptr %208, align 8
  %225 = add nsw i32 %206, 1
  %226 = load i32, ptr %0, align 8, !tbaa !38
  br label %227

227:                                              ; preds = %221, %216, %212, %203
  %228 = phi i32 [ %226, %221 ], [ %204, %216 ], [ %204, %212 ], [ %204, %203 ]
  %229 = phi i32 [ %225, %221 ], [ %206, %216 ], [ %206, %212 ], [ %206, %203 ]
  %230 = add nuw nsw i64 %205, 1
  %231 = sext i32 %228 to i64
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %203, label %233, !llvm.loop !50

233:                                              ; preds = %227
  %234 = add nsw i32 %229, %201
  %235 = icmp sgt i32 %228, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %233, %260
  %237 = phi i32 [ %261, %260 ], [ %228, %233 ]
  %238 = phi i64 [ %263, %260 ], [ 0, %233 ]
  %239 = phi i32 [ %262, %260 ], [ 0, %233 ]
  %240 = load ptr, ptr %5, align 8, !tbaa !40
  %241 = getelementptr inbounds %struct.ke1_s, ptr %240, i64 %238
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 3
  br i1 %244, label %245, label %260

245:                                              ; preds = %236
  %246 = ashr i64 %242, 40
  %247 = and i64 %246, 4294967295
  %248 = icmp eq i64 %247, 2
  br i1 %248, label %249, label %260

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.ke1_s, ptr %240, i64 %238, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !23
  %252 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %251, ptr noundef nonnull dereferenceable(4) @.str.7) #26
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.ke1_s, ptr %240, i64 %238, i32 2
  store ptr @pow, ptr %255, align 8, !tbaa !9
  %256 = and i64 %242, -4160815101
  %257 = or disjoint i64 %256, 134217728
  store i64 %257, ptr %241, align 8
  %258 = add nsw i32 %239, 1
  %259 = load i32, ptr %0, align 8, !tbaa !38
  br label %260

260:                                              ; preds = %254, %249, %245, %236
  %261 = phi i32 [ %259, %254 ], [ %237, %249 ], [ %237, %245 ], [ %237, %236 ]
  %262 = phi i32 [ %258, %254 ], [ %239, %249 ], [ %239, %245 ], [ %239, %236 ]
  %263 = add nuw nsw i64 %238, 1
  %264 = sext i32 %261 to i64
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %236, label %266, !llvm.loop !51

266:                                              ; preds = %260, %68, %101, %1, %36, %167, %134, %200, %233
  %267 = phi i32 [ %234, %233 ], [ %201, %200 ], [ %135, %134 ], [ %168, %167 ], [ %32, %36 ], [ 0, %1 ], [ %102, %101 ], [ %69, %68 ], [ %234, %260 ]
  %268 = phi i32 [ 0, %233 ], [ 0, %200 ], [ 0, %134 ], [ 0, %167 ], [ 0, %36 ], [ 0, %1 ], [ 0, %101 ], [ 0, %68 ], [ %262, %260 ]
  %269 = add nsw i32 %268, %267
  ret i32 %269
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ke_unset(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !38
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %21
  %7 = phi i32 [ %2, %4 ], [ %22, %21 ]
  %8 = phi i64 [ 0, %4 ], [ %23, %21 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.ke1_s, ptr %9, i64 %8
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ke1_s, ptr %9, i64 %8, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = and i64 %11, -67174399
  store i64 %19, ptr %10, align 8
  %20 = load i32, ptr %0, align 8, !tbaa !38
  br label %21

21:                                               ; preds = %18, %14, %6
  %22 = phi i32 [ %20, %18 ], [ %7, %14 ], [ %7, %6 ]
  %23 = add nuw nsw i64 %8, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %6, label %26, !llvm.loop !52

26:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @ke_print(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %98, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !38
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %95

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kexpr_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = trunc i64 %9 to i16
  switch i16 %11, label %45 [
    i16 1, label %24
    i16 2, label %18
    i16 3, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ke1_s, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = ashr i64 %9, 40
  %16 = trunc i64 %15 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %14, i32 noundef %16)
  br label %45

18:                                               ; preds = %6
  %19 = shl i64 %9, 24
  %20 = ashr i64 %19, 56
  %21 = getelementptr inbounds [25 x ptr], ptr @ke_opstr, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %22)
  br label %45

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ke1_s, ptr %8, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %26)
  br label %45

30:                                               ; preds = %24
  %31 = lshr i32 %10, 16
  %32 = and i32 %31, 1023
  switch i32 %32, label %45 [
    i32 1, label %41
    i32 2, label %37
    i32 3, label %33
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ke1_s, ptr %8, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %35)
  br label %45

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ke1_s, ptr %8, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !43
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %39)
  br label %45

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ke1_s, ptr %8, i64 0, i32 3
  %43 = load double, ptr %42, align 8, !tbaa !42
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %43)
  br label %45

45:                                               ; preds = %41, %37, %33, %30, %28, %18, %12, %6
  %46 = load i32, ptr %0, align 8, !tbaa !38
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %95

48:                                               ; preds = %45, %90
  %49 = phi i64 [ %91, %90 ], [ 1, %45 ]
  %50 = load ptr, ptr %7, align 8, !tbaa !40
  %51 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49
  %52 = load ptr, ptr @stdout, align 8, !tbaa !10
  %53 = tail call i32 @putc(i32 noundef 32, ptr noundef %52)
  %54 = load i64, ptr %51, align 8
  %55 = trunc i64 %54 to i32
  %56 = trunc i64 %54 to i16
  switch i16 %56, label %90 [
    i16 1, label %57
    i16 2, label %78
    i16 3, label %84
  ]

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %59)
  br label %90

63:                                               ; preds = %57
  %64 = lshr i32 %55, 16
  %65 = and i32 %64, 1023
  switch i32 %65, label %90 [
    i32 1, label %66
    i32 2, label %70
    i32 3, label %74
  ]

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49, i32 3
  %68 = load double, ptr %67, align 8, !tbaa !42
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %68)
  br label %90

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49, i32 4
  %72 = load i64, ptr %71, align 8, !tbaa !43
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %72)
  br label %90

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %76)
  br label %90

78:                                               ; preds = %48
  %79 = shl i64 %54, 24
  %80 = ashr i64 %79, 56
  %81 = getelementptr inbounds [25 x ptr], ptr @ke_opstr, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %82)
  br label %90

84:                                               ; preds = %48
  %85 = getelementptr inbounds %struct.ke1_s, ptr %50, i64 %49, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !23
  %87 = ashr i64 %54, 40
  %88 = trunc i64 %87 to i32
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %86, i32 noundef %88)
  br label %90

90:                                               ; preds = %48, %63, %78, %84, %61, %70, %74, %66
  %91 = add nuw nsw i64 %49, 1
  %92 = load i32, ptr %0, align 8, !tbaa !38
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %48, label %95, !llvm.loop !53

95:                                               ; preds = %90, %45, %3
  %96 = load ptr, ptr @stdout, align 8, !tbaa !10
  %97 = tail call i32 @putc(i32 noundef 10, ptr noundef %96)
  br label %98

98:                                               ; preds = %1, %95
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_func1_abs(ptr nocapture noundef %0, ptr nocapture readnone %1) #14 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  %5 = icmp eq i64 %4, 131072
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = zext nneg i32 %10 to i64
  store i64 %11, ptr %7, align 8, !tbaa !43
  %12 = uitofp i32 %10 to double
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %12, ptr %13, align 8, !tbaa !42
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !42
  %17 = tail call double @llvm.fabs.f64(double %16)
  store double %17, ptr %15, align 8, !tbaa !42
  %18 = fadd double %17, 5.000000e-01
  %19 = fptosi double %18 to i64
  %20 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %19, ptr %20, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %14, %6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal void @ke_op_KEO_POW(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #19 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !42
  %7 = tail call double @pow(double noundef %4, double noundef %6) #23
  store double %7, ptr %3, align 8, !tbaa !42
  %8 = fadd double %7, 5.000000e-01
  %9 = fptosi double %8 to i64
  %10 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %9, ptr %10, align 8, !tbaa !43
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 67043328
  %13 = icmp eq i64 %12, 65536
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 67043328
  %17 = icmp eq i64 %16, 65536
  %18 = select i1 %17, i64 65536, i64 131072
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i64 [ 65536, %2 ], [ %18, %14 ]
  %21 = and i64 %11, -67043329
  %22 = or disjoint i64 %20, %21
  store i64 %22, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_MUL(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = mul nsw i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %9 = load double, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !42
  %12 = fmul double %9, %11
  store double %12, ptr %10, align 8, !tbaa !42
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67043328
  %15 = icmp eq i64 %14, 65536
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 67043328
  %19 = icmp eq i64 %18, 65536
  %20 = select i1 %19, i64 65536, i64 131072
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i64 [ 65536, %2 ], [ %20, %16 ]
  %23 = and i64 %13, -67043329
  %24 = or disjoint i64 %22, %23
  store i64 %24, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_IDIV(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = sdiv i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_DIV(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !42
  %7 = fdiv double %6, %4
  store double %7, ptr %5, align 8, !tbaa !42
  %8 = fadd double %7, 5.000000e-01
  %9 = fptosi double %8 to i64
  %10 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %9, ptr %10, align 8, !tbaa !43
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, -67043329
  %13 = or disjoint i64 %12, 65536
  store i64 %13, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_MOD(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = srem i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_ADD(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = add nsw i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %9 = load double, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !42
  %12 = fadd double %9, %11
  store double %12, ptr %10, align 8, !tbaa !42
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67043328
  %15 = icmp eq i64 %14, 65536
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 67043328
  %19 = icmp eq i64 %18, 65536
  %20 = select i1 %19, i64 65536, i64 131072
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i64 [ 65536, %2 ], [ %20, %16 ]
  %23 = and i64 %13, -67043329
  %24 = or disjoint i64 %22, %23
  store i64 %24, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ke_op_KEO_POS(ptr nocapture readnone %0, ptr nocapture readnone %1) #20 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_SUB(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = sub nsw i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %9 = load double, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !42
  %12 = fsub double %11, %9
  store double %12, ptr %10, align 8, !tbaa !42
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 67043328
  %15 = icmp eq i64 %14, 65536
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 67043328
  %19 = icmp eq i64 %18, 65536
  %20 = select i1 %19, i64 65536, i64 131072
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i64 [ 65536, %2 ], [ %20, %16 ]
  %23 = and i64 %13, -67043329
  %24 = or disjoint i64 %22, %23
  store i64 %24, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_NEG(ptr nocapture noundef %0, ptr nocapture readnone %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = sub nsw i64 0, %4
  store i64 %5, ptr %3, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !42
  %8 = fneg double %7
  store double %8, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_EQ(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %22
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %19

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = icmp eq i32 %17, 0
  br label %34

19:                                               ; preds = %5, %8
  %20 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %21 = icmp eq i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %2, %19
  %23 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp oeq double %24, %26
  br label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !43
  %33 = icmp eq i64 %30, %32
  br label %34

34:                                               ; preds = %22, %28, %12
  %35 = phi i1 [ %18, %12 ], [ %27, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = uitofp i1 %35 to double
  %39 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %38, ptr %39, align 8, !tbaa !42
  %40 = and i64 %3, -67043329
  %41 = or disjoint i64 %40, 131072
  store i64 %41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_NE(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %22
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %19

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = icmp ne i32 %17, 0
  br label %34

19:                                               ; preds = %5, %8
  %20 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %21 = icmp eq i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %2, %19
  %23 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp une double %24, %26
  br label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !43
  %33 = icmp ne i64 %30, %32
  br label %34

34:                                               ; preds = %22, %28, %12
  %35 = phi i1 [ %18, %12 ], [ %27, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = uitofp i1 %35 to double
  %39 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %38, ptr %39, align 8, !tbaa !42
  %40 = and i64 %3, -67043329
  %41 = or disjoint i64 %40, 131072
  store i64 %41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_GE(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %22
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %19

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = icmp sgt i32 %17, -1
  br label %34

19:                                               ; preds = %5, %8
  %20 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %21 = icmp eq i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %2, %19
  %23 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp oge double %24, %26
  br label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !43
  %33 = icmp sge i64 %30, %32
  br label %34

34:                                               ; preds = %22, %28, %12
  %35 = phi i1 [ %18, %12 ], [ %27, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = uitofp i1 %35 to double
  %39 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %38, ptr %39, align 8, !tbaa !42
  %40 = and i64 %3, -67043329
  %41 = or disjoint i64 %40, 131072
  store i64 %41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_LE(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %22
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %19

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = icmp slt i32 %17, 1
  br label %34

19:                                               ; preds = %5, %8
  %20 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %21 = icmp eq i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %2, %19
  %23 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp ole double %24, %26
  br label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !43
  %33 = icmp sle i64 %30, %32
  br label %34

34:                                               ; preds = %22, %28, %12
  %35 = phi i1 [ %18, %12 ], [ %27, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = uitofp i1 %35 to double
  %39 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %38, ptr %39, align 8, !tbaa !42
  %40 = and i64 %3, -67043329
  %41 = or disjoint i64 %40, 131072
  store i64 %41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_RSH(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = ashr i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_LSH(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = shl i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_GT(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %22
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %19

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = icmp sgt i32 %17, 0
  br label %34

19:                                               ; preds = %5, %8
  %20 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %21 = icmp eq i64 %20, 65536
  br i1 %21, label %22, label %28

22:                                               ; preds = %2, %19
  %23 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !42
  %27 = fcmp ogt double %24, %26
  br label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !43
  %33 = icmp sgt i64 %30, %32
  br label %34

34:                                               ; preds = %22, %28, %12
  %35 = phi i1 [ %18, %12 ], [ %27, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i64
  %37 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = uitofp i1 %35 to double
  %39 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %38, ptr %39, align 8, !tbaa !42
  %40 = and i64 %3, -67043329
  %41 = or disjoint i64 %40, 131072
  store i64 %41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @ke_op_KEO_LT(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67043328
  switch i64 %4, label %5 [
    i64 196608, label %8
    i64 65536, label %23
  ]

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 67043328
  br label %20

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 67043328
  %11 = icmp eq i64 %10, 196608
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = lshr i32 %17, 31
  %19 = zext nneg i32 %18 to i64
  br label %38

20:                                               ; preds = %5, %8
  %21 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %22 = icmp eq i64 %21, 65536
  br i1 %22, label %23, label %29

23:                                               ; preds = %2, %20
  %24 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 3
  %27 = load double, ptr %26, align 8, !tbaa !42
  %28 = fcmp olt double %25, %27
  br label %35

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !43
  %34 = icmp slt i64 %31, %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ %28, %23 ], [ %34, %29 ]
  %37 = zext i1 %36 to i64
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i64 [ %37, %35 ], [ %19, %12 ]
  %40 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  store i64 %39, ptr %40, align 8, !tbaa !43
  %41 = sitofp i64 %39 to double
  %42 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %41, ptr %42, align 8, !tbaa !42
  %43 = and i64 %3, -67043329
  %44 = or disjoint i64 %43, 131072
  store i64 %44, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_LOR(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %10, %6 ]
  store i64 %12, ptr %3, align 8, !tbaa !43
  %13 = sitofp i64 %12 to double
  %14 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %13, ptr %14, align 8, !tbaa !42
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, -67043329
  %17 = or disjoint i64 %16, 131072
  store i64 %17, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_LAND(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 0, %2 ], [ %10, %6 ]
  store i64 %12, ptr %3, align 8, !tbaa !43
  %13 = sitofp i64 %12 to double
  %14 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %13, ptr %14, align 8, !tbaa !42
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, -67043329
  %17 = or disjoint i64 %16, 131072
  store i64 %17, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_BOR(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = or i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_BAND(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = and i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_BXOR(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %1, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = xor i64 %6, %4
  store i64 %7, ptr %5, align 8, !tbaa !43
  %8 = sitofp i64 %7 to double
  %9 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %8, ptr %9, align 8, !tbaa !42
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, -67043329
  %12 = or disjoint i64 %11, 131072
  store i64 %12, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_BNOT(ptr nocapture noundef %0, ptr nocapture readnone %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = xor i64 %4, -1
  store i64 %5, ptr %3, align 8, !tbaa !43
  %6 = sitofp i64 %5 to double
  %7 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %6, ptr %7, align 8, !tbaa !42
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, -67043329
  %10 = or disjoint i64 %9, 131072
  store i64 %10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ke_op_KEO_LNOT(ptr nocapture noundef %0, ptr nocapture readnone %1) #14 {
  %3 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  store i64 %6, ptr %3, align 8, !tbaa !43
  %7 = uitofp i1 %5 to double
  %8 = getelementptr inbounds %struct.ke1_s, ptr %0, i64 0, i32 3
  store double %7, ptr %8, align 8, !tbaa !42
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, -67043329
  %11 = or disjoint i64 %10, 131072
  store i64 %11, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{i64 0, i64 4, !5, i64 2, i64 4, !5, i64 3, i64 4, !5, i64 3, i64 4, !5, i64 4, i64 4, !5, i64 5, i64 4, !5, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 16, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !18, i64 32, i64 8, !20, i64 40, i64 8, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = distinct !{!22, !15}
!23 = !{!24, !11, i64 8}
!24 = !{!"ke1_s", !6, i64 0, !6, i64 2, !6, i64 3, !6, i64 3, !6, i64 4, !6, i64 5, !11, i64 8, !7, i64 16, !19, i64 24, !21, i64 32, !11, i64 40}
!25 = distinct !{!25, !15}
!26 = !{!27}
!27 = distinct !{!27, !28, !"ke_read_token: argument 0"}
!28 = distinct !{!28, !"ke_read_token"}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = !{i64 0, i64 1, !5, i64 0, i64 8, !10, i64 8, i64 8, !10, i64 8, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !18, i64 24, i64 8, !20, i64 32, i64 8, !10}
!32 = !{i64 0, i64 8, !10, i64 0, i64 8, !10, i64 0, i64 8, !10, i64 8, i64 8, !18, i64 16, i64 8, !20, i64 24, i64 8, !10}
!33 = !{i64 0, i64 8, !18, i64 8, i64 8, !20, i64 16, i64 8, !10}
!34 = !{i64 0, i64 8, !20, i64 8, i64 8, !10}
!35 = !{i64 0, i64 8, !10}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = !{!39, !6, i64 0}
!39 = !{!"kexpr_s", !6, i64 0, !11, i64 8}
!40 = !{!39, !11, i64 8}
!41 = distinct !{!41, !15}
!42 = !{!24, !19, i64 24}
!43 = !{!24, !21, i64 32}
!44 = distinct !{!44, !15}
!45 = !{!24, !11, i64 40}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15, !54}
!54 = !{!"llvm.loop.peeled.count", i32 1}
