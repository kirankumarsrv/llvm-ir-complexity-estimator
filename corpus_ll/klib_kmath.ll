; ModuleID = 'corpus_src/klib/kmath.c'
source_filename = "corpus_src/klib/kmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local double @kmin_hj(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, double noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #10
  %10 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #10
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = zext i32 %1 to i64
  %14 = icmp ult i32 %1, 4
  br i1 %14, label %39, label %15

15:                                               ; preds = %12
  %16 = and i64 %13, 4294967292
  %17 = insertelement <2 x double> poison, double %4, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %35, %19 ]
  %21 = getelementptr inbounds double, ptr %2, i64 %20
  %22 = getelementptr inbounds double, ptr %21, i64 2
  %23 = load <2 x double>, ptr %21, align 8, !tbaa !5
  %24 = load <2 x double>, ptr %22, align 8, !tbaa !5
  %25 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %23)
  %26 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %24)
  %27 = fmul <2 x double> %25, %18
  %28 = fmul <2 x double> %26, %18
  %29 = getelementptr inbounds double, ptr %10, i64 %20
  %30 = fcmp oeq <2 x double> %27, zeroinitializer
  %31 = fcmp oeq <2 x double> %28, zeroinitializer
  %32 = select <2 x i1> %30, <2 x double> %18, <2 x double> %27
  %33 = select <2 x i1> %31, <2 x double> %18, <2 x double> %28
  %34 = getelementptr inbounds double, ptr %29, i64 2
  store <2 x double> %32, ptr %29, align 8, !tbaa !5
  store <2 x double> %33, ptr %34, align 8, !tbaa !5
  %35 = add nuw i64 %20, 4
  %36 = icmp eq i64 %35, %16
  br i1 %36, label %37, label %19, !llvm.loop !9

37:                                               ; preds = %19
  %38 = icmp eq i64 %16, %13
  br i1 %38, label %52, label %39

39:                                               ; preds = %12, %37
  %40 = phi i64 [ 0, %12 ], [ %16, %37 ]
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %50, %41 ], [ %40, %39 ]
  %43 = getelementptr inbounds double, ptr %2, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !5
  %45 = tail call double @llvm.fabs.f64(double %44)
  %46 = fmul double %45, %4
  %47 = getelementptr inbounds double, ptr %10, i64 %42
  %48 = fcmp oeq double %46, 0.000000e+00
  %49 = select i1 %48, double %4, double %46
  store double %49, ptr %47, align 8, !tbaa !5
  %50 = add nuw nsw i64 %42, 1
  %51 = icmp eq i64 %50, %13
  br i1 %51, label %52, label %41, !llvm.loop !13

52:                                               ; preds = %41, %37, %7
  %53 = phi i64 [ 0, %7 ], [ %13, %37 ], [ %13, %41 ]
  %54 = tail call double %0(i32 noundef %1, ptr noundef %2, ptr noundef %3) #11
  %55 = shl nsw i64 %8, 3
  %56 = icmp ult i64 %53, 2
  %57 = and i64 %53, 4294967294
  %58 = icmp eq i64 %53, %57
  %59 = icmp ult i64 %53, 4
  %60 = and i64 %53, 4294967292
  %61 = insertelement <2 x double> poison, double %4, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = icmp eq i64 %53, %60
  br label %64

64:                                               ; preds = %220, %52
  %65 = phi i32 [ 1, %52 ], [ %200, %220 ]
  %66 = phi double [ %4, %52 ], [ %207, %220 ]
  %67 = phi double [ %54, %52 ], [ %202, %220 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %2, i64 %55, i1 false)
  br i1 %11, label %199, label %68

68:                                               ; preds = %64, %92
  %69 = phi i64 [ %95, %92 ], [ 0, %64 ]
  %70 = phi i32 [ %94, %92 ], [ %65, %64 ]
  %71 = phi double [ %93, %92 ], [ %67, %64 ]
  %72 = getelementptr inbounds double, ptr %10, i64 %69
  %73 = load double, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds double, ptr %9, i64 %69
  %75 = load double, ptr %74, align 8, !tbaa !5
  %76 = fadd double %73, %75
  store double %76, ptr %74, align 8, !tbaa !5
  %77 = tail call double %0(i32 noundef %1, ptr noundef %9, ptr noundef %3) #11
  %78 = fcmp olt double %77, %71
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = add nsw i32 %70, 1
  br label %92

81:                                               ; preds = %68
  %82 = fsub double 0.000000e+00, %73
  store double %82, ptr %72, align 8, !tbaa !5
  %83 = fadd double %82, %82
  %84 = load double, ptr %74, align 8, !tbaa !5
  %85 = fadd double %83, %84
  store double %85, ptr %74, align 8, !tbaa !5
  %86 = tail call double %0(i32 noundef %1, ptr noundef nonnull %9, ptr noundef %3) #11
  %87 = add nsw i32 %70, 2
  %88 = fcmp olt double %86, %71
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load double, ptr %74, align 8, !tbaa !5
  %91 = fsub double %90, %82
  store double %91, ptr %74, align 8, !tbaa !5
  br label %92

92:                                               ; preds = %89, %81, %79
  %93 = phi double [ %77, %79 ], [ %71, %89 ], [ %86, %81 ]
  %94 = phi i32 [ %80, %79 ], [ %87, %89 ], [ %87, %81 ]
  %95 = add nuw nsw i64 %69, 1
  %96 = icmp eq i64 %95, %53
  br i1 %96, label %97, label %68, !llvm.loop !14

97:                                               ; preds = %92
  %98 = fcmp olt double %93, %67
  br i1 %98, label %101, label %199

99:                                               ; preds = %186
  %100 = fcmp olt double %176, %102
  br i1 %100, label %101, label %199

101:                                              ; preds = %97, %99
  %102 = phi double [ %176, %99 ], [ %93, %97 ]
  %103 = phi i32 [ %177, %99 ], [ %94, %97 ]
  br i1 %11, label %143, label %104

104:                                              ; preds = %101
  br i1 %56, label %122, label %105

105:                                              ; preds = %104, %105
  %106 = phi i64 [ %119, %105 ], [ 0, %104 ]
  %107 = getelementptr inbounds double, ptr %2, i64 %106
  %108 = load <2 x double>, ptr %107, align 8, !tbaa !5
  %109 = getelementptr inbounds double, ptr %9, i64 %106
  %110 = load <2 x double>, ptr %109, align 8, !tbaa !5
  %111 = fcmp ogt <2 x double> %110, %108
  %112 = getelementptr inbounds double, ptr %10, i64 %106
  %113 = load <2 x double>, ptr %112, align 8, !tbaa !5
  %114 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %113)
  %115 = fsub <2 x double> zeroinitializer, %114
  %116 = select <2 x i1> %111, <2 x double> %114, <2 x double> %115
  store <2 x double> %116, ptr %112, align 8, !tbaa !5
  store <2 x double> %110, ptr %107, align 8, !tbaa !5
  %117 = fadd <2 x double> %110, %110
  %118 = fsub <2 x double> %117, %108
  store <2 x double> %118, ptr %109, align 8, !tbaa !5
  %119 = add nuw i64 %106, 2
  %120 = icmp eq i64 %119, %57
  br i1 %120, label %121, label %105, !llvm.loop !15

121:                                              ; preds = %105
  br i1 %58, label %141, label %122

122:                                              ; preds = %104, %121
  %123 = phi i64 [ 0, %104 ], [ %57, %121 ]
  br label %124

124:                                              ; preds = %122, %124
  %125 = phi i64 [ %139, %124 ], [ %123, %122 ]
  %126 = getelementptr inbounds double, ptr %2, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !5
  %128 = getelementptr inbounds double, ptr %9, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !5
  %130 = fcmp ogt double %129, %127
  %131 = getelementptr inbounds double, ptr %10, i64 %125
  %132 = load double, ptr %131, align 8, !tbaa !5
  %133 = tail call double @llvm.fabs.f64(double %132)
  %134 = fsub double 0.000000e+00, %133
  %135 = select i1 %130, double %133, double %134
  %136 = getelementptr inbounds double, ptr %10, i64 %125
  store double %135, ptr %136, align 8, !tbaa !5
  store double %129, ptr %126, align 8, !tbaa !5
  %137 = fadd double %129, %129
  %138 = fsub double %137, %127
  store double %138, ptr %128, align 8, !tbaa !5
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, %53
  br i1 %140, label %141, label %124, !llvm.loop !16

141:                                              ; preds = %124, %121
  %142 = icmp slt i32 %103, %6
  br i1 %142, label %148, label %199

143:                                              ; preds = %101
  %144 = icmp slt i32 %103, %6
  br i1 %144, label %145, label %199

145:                                              ; preds = %143
  %146 = tail call double %0(i32 noundef %1, ptr noundef nonnull %9, ptr noundef %3) #11
  %147 = add nsw i32 %103, 1
  br label %199

148:                                              ; preds = %141
  %149 = tail call double %0(i32 noundef %1, ptr noundef nonnull %9, ptr noundef %3) #11
  %150 = add nsw i32 %103, 1
  br i1 %11, label %199, label %151

151:                                              ; preds = %148, %175
  %152 = phi i64 [ %178, %175 ], [ 0, %148 ]
  %153 = phi i32 [ %177, %175 ], [ %150, %148 ]
  %154 = phi double [ %176, %175 ], [ %149, %148 ]
  %155 = getelementptr inbounds double, ptr %10, i64 %152
  %156 = load double, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds double, ptr %9, i64 %152
  %158 = load double, ptr %157, align 8, !tbaa !5
  %159 = fadd double %156, %158
  store double %159, ptr %157, align 8, !tbaa !5
  %160 = tail call double %0(i32 noundef %1, ptr noundef %9, ptr noundef %3) #11
  %161 = fcmp olt double %160, %154
  br i1 %161, label %162, label %164

162:                                              ; preds = %151
  %163 = add nsw i32 %153, 1
  br label %175

164:                                              ; preds = %151
  %165 = fsub double 0.000000e+00, %156
  store double %165, ptr %155, align 8, !tbaa !5
  %166 = fadd double %165, %165
  %167 = load double, ptr %157, align 8, !tbaa !5
  %168 = fadd double %166, %167
  store double %168, ptr %157, align 8, !tbaa !5
  %169 = tail call double %0(i32 noundef %1, ptr noundef nonnull %9, ptr noundef %3) #11
  %170 = add nsw i32 %153, 2
  %171 = fcmp olt double %169, %154
  br i1 %171, label %175, label %172

172:                                              ; preds = %164
  %173 = load double, ptr %157, align 8, !tbaa !5
  %174 = fsub double %173, %165
  store double %174, ptr %157, align 8, !tbaa !5
  br label %175

175:                                              ; preds = %172, %164, %162
  %176 = phi double [ %160, %162 ], [ %154, %172 ], [ %169, %164 ]
  %177 = phi i32 [ %163, %162 ], [ %170, %172 ], [ %170, %164 ]
  %178 = add nuw nsw i64 %152, 1
  %179 = icmp eq i64 %178, %53
  br i1 %179, label %180, label %151, !llvm.loop !14

180:                                              ; preds = %175
  %181 = fcmp oge double %176, %102
  %182 = or i1 %181, %11
  br i1 %182, label %199, label %186

183:                                              ; preds = %186
  %184 = add nuw nsw i64 %187, 1
  %185 = icmp eq i64 %184, %53
  br i1 %185, label %199, label %186, !llvm.loop !17

186:                                              ; preds = %180, %183
  %187 = phi i64 [ %184, %183 ], [ 0, %180 ]
  %188 = getelementptr inbounds double, ptr %9, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !5
  %190 = getelementptr inbounds double, ptr %2, i64 %187
  %191 = load double, ptr %190, align 8, !tbaa !5
  %192 = fsub double %189, %191
  %193 = tail call double @llvm.fabs.f64(double %192)
  %194 = getelementptr inbounds double, ptr %10, i64 %187
  %195 = load double, ptr %194, align 8, !tbaa !5
  %196 = tail call double @llvm.fabs.f64(double %195)
  %197 = fmul double %196, 5.000000e-01
  %198 = fcmp ogt double %193, %197
  br i1 %198, label %99, label %183

199:                                              ; preds = %148, %180, %99, %141, %183, %145, %64, %143, %97
  %200 = phi i32 [ %94, %97 ], [ %103, %143 ], [ %65, %64 ], [ %147, %145 ], [ %177, %183 ], [ %150, %148 ], [ %177, %99 ], [ %103, %141 ], [ %177, %180 ]
  %201 = phi double [ %93, %97 ], [ %102, %143 ], [ %67, %64 ], [ %146, %145 ], [ %176, %183 ], [ %149, %148 ], [ %176, %99 ], [ %102, %141 ], [ %176, %180 ]
  %202 = phi double [ %67, %97 ], [ %102, %143 ], [ %67, %64 ], [ %102, %145 ], [ %102, %183 ], [ %102, %141 ], [ %102, %99 ], [ %102, %180 ], [ %102, %148 ]
  %203 = fcmp oge double %66, %5
  %204 = icmp slt i32 %200, %6
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %230

206:                                              ; preds = %199
  %207 = fmul double %66, %4
  br i1 %11, label %220, label %208

208:                                              ; preds = %206
  br i1 %59, label %221, label %209

209:                                              ; preds = %208, %209
  %210 = phi i64 [ %217, %209 ], [ 0, %208 ]
  %211 = getelementptr inbounds double, ptr %10, i64 %210
  %212 = getelementptr inbounds double, ptr %211, i64 2
  %213 = load <2 x double>, ptr %211, align 8, !tbaa !5
  %214 = load <2 x double>, ptr %212, align 8, !tbaa !5
  %215 = fmul <2 x double> %213, %62
  %216 = fmul <2 x double> %214, %62
  store <2 x double> %215, ptr %211, align 8, !tbaa !5
  store <2 x double> %216, ptr %212, align 8, !tbaa !5
  %217 = add nuw i64 %210, 4
  %218 = icmp eq i64 %217, %60
  br i1 %218, label %219, label %209, !llvm.loop !18

219:                                              ; preds = %209
  br i1 %63, label %220, label %221

220:                                              ; preds = %223, %219, %206
  br label %64

221:                                              ; preds = %208, %219
  %222 = phi i64 [ 0, %208 ], [ %60, %219 ]
  br label %223

223:                                              ; preds = %221, %223
  %224 = phi i64 [ %228, %223 ], [ %222, %221 ]
  %225 = getelementptr inbounds double, ptr %10, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !5
  %227 = fmul double %226, %4
  store double %227, ptr %225, align 8, !tbaa !5
  %228 = add nuw nsw i64 %224, 1
  %229 = icmp eq i64 %228, %53
  br i1 %229, label %220, label %223, !llvm.loop !19

230:                                              ; preds = %199
  tail call void @free(ptr noundef %9) #11
  tail call void @free(ptr noundef %10) #11
  ret double %201
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local double @kmin_brent(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr noundef %3, double noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = tail call double %0(double noundef %1, ptr noundef %3) #11
  %8 = tail call double %0(double noundef %2, ptr noundef %3) #11
  %9 = fcmp ogt double %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi double [ %8, %10 ], [ %7, %6 ]
  %13 = phi double [ %7, %10 ], [ %8, %6 ]
  %14 = phi double [ %1, %10 ], [ %2, %6 ]
  %15 = phi double [ %2, %10 ], [ %1, %6 ]
  %16 = fsub double %14, %15
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 0x3FF9E3779B9486E5, double %14)
  %18 = tail call double %0(double noundef %17, ptr noundef %3) #11
  %19 = fcmp ogt double %13, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %11, %81
  %21 = phi double [ %86, %81 ], [ %15, %11 ]
  %22 = phi double [ %85, %81 ], [ %14, %11 ]
  %23 = phi double [ %82, %81 ], [ %17, %11 ]
  %24 = phi double [ %87, %81 ], [ %18, %11 ]
  %25 = phi double [ %84, %81 ], [ %13, %11 ]
  %26 = phi double [ %83, %81 ], [ %12, %11 ]
  %27 = fsub double %23, %22
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 1.000000e+02, double %22)
  %29 = fsub double %22, %21
  %30 = fsub double %25, %24
  %31 = fmul double %30, %29
  %32 = fsub double %22, %23
  %33 = fsub double %25, %26
  %34 = fmul double %33, %32
  %35 = fsub double %34, %31
  %36 = tail call double @llvm.fabs.f64(double %35)
  %37 = fcmp olt double %36, 0x3BC79CA10C924223
  %38 = fcmp ogt double %34, %31
  %39 = select i1 %38, double 0x3BC79CA10C924223, double 0xBBC79CA10C924223
  %40 = select i1 %37, double %39, double %35
  %41 = fneg double %29
  %42 = fmul double %31, %41
  %43 = tail call double @llvm.fmuladd.f64(double %32, double %34, double %42)
  %44 = fmul double %40, 2.000000e+00
  %45 = fdiv double %43, %44
  %46 = fsub double %22, %45
  %47 = fcmp ogt double %22, %46
  %48 = fcmp ogt double %46, %23
  %49 = and i1 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %20
  %51 = fcmp olt double %22, %46
  %52 = fcmp olt double %46, %23
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %20
  %55 = tail call double %0(double noundef %46, ptr noundef %3) #11
  %56 = fcmp olt double %55, %24
  br i1 %56, label %89, label %57

57:                                               ; preds = %54
  %58 = fcmp ogt double %55, %25
  br i1 %58, label %89, label %59

59:                                               ; preds = %57
  %60 = tail call double @llvm.fmuladd.f64(double %27, double 0x3FF9E3779B9486E5, double %23)
  br label %81

61:                                               ; preds = %50
  %62 = fcmp ogt double %46, %28
  %63 = and i1 %52, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = fcmp olt double %46, %28
  %66 = and i1 %48, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %64, %61
  %68 = tail call double %0(double noundef %46, ptr noundef %3) #11
  %69 = fcmp olt double %68, %24
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = fsub double %46, %23
  %72 = tail call double @llvm.fmuladd.f64(double %71, double 0x3FF9E3779B9486E5, double %46)
  br label %81

73:                                               ; preds = %64
  %74 = fcmp ogt double %28, %23
  %75 = and i1 %62, %74
  %76 = fcmp olt double %28, %23
  %77 = and i1 %65, %76
  %78 = or i1 %75, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = tail call double @llvm.fmuladd.f64(double %27, double 0x3FF9E3779B9486E5, double %23)
  br label %81

81:                                               ; preds = %73, %70, %79, %59
  %82 = phi double [ %72, %70 ], [ %80, %79 ], [ %60, %59 ], [ %28, %73 ]
  %83 = phi double [ %24, %70 ], [ %25, %79 ], [ %25, %59 ], [ %25, %73 ]
  %84 = phi double [ %68, %70 ], [ %24, %79 ], [ %24, %59 ], [ %24, %73 ]
  %85 = phi double [ %46, %70 ], [ %23, %79 ], [ %23, %59 ], [ %23, %73 ]
  %86 = phi double [ %23, %70 ], [ %22, %79 ], [ %22, %59 ], [ %22, %73 ]
  %87 = tail call double %0(double noundef %82, ptr noundef %3) #11
  %88 = fcmp ogt double %84, %87
  br i1 %88, label %20, label %89, !llvm.loop !20

89:                                               ; preds = %81, %54, %57, %67, %11
  %90 = phi double [ %13, %11 ], [ %24, %67 ], [ %25, %57 ], [ %55, %54 ], [ %84, %81 ]
  %91 = phi double [ %17, %11 ], [ %46, %67 ], [ %46, %57 ], [ %23, %54 ], [ %82, %81 ]
  %92 = phi double [ %14, %11 ], [ %23, %67 ], [ %22, %57 ], [ %46, %54 ], [ %85, %81 ]
  %93 = phi double [ %15, %11 ], [ %22, %67 ], [ %21, %57 ], [ %22, %54 ], [ %86, %81 ]
  %94 = fcmp ogt double %93, %91
  %95 = select i1 %94, double %93, double %91
  %96 = select i1 %94, double %91, double %93
  br label %97

97:                                               ; preds = %89, %205
  %98 = phi i32 [ 0, %89 ], [ %214, %205 ]
  %99 = phi double [ %90, %89 ], [ %213, %205 ]
  %100 = phi double [ %90, %89 ], [ %212, %205 ]
  %101 = phi double [ %96, %89 ], [ %211, %205 ]
  %102 = phi double [ %92, %89 ], [ %210, %205 ]
  %103 = phi double [ %92, %89 ], [ %209, %205 ]
  %104 = phi double [ %92, %89 ], [ %208, %205 ]
  %105 = phi double [ 0.000000e+00, %89 ], [ %175, %205 ]
  %106 = phi double [ 0.000000e+00, %89 ], [ %174, %205 ]
  %107 = phi double [ %95, %89 ], [ %207, %205 ]
  %108 = phi double [ %90, %89 ], [ %206, %205 ]
  %109 = fadd double %107, %101
  %110 = fmul double %109, 5.000000e-01
  %111 = tail call double @llvm.fabs.f64(double %102)
  %112 = tail call double @llvm.fmuladd.f64(double %4, double %111, double 0x3BC79CA10C924223)
  %113 = fmul double %112, 2.000000e+00
  %114 = fsub double %102, %110
  %115 = tail call double @llvm.fabs.f64(double %114)
  %116 = fsub double %107, %101
  %117 = tail call double @llvm.fmuladd.f64(double %116, double -5.000000e-01, double %113)
  %118 = fcmp ugt double %115, %117
  br i1 %118, label %119, label %216

119:                                              ; preds = %97
  %120 = tail call double @llvm.fabs.f64(double %106)
  %121 = fcmp ogt double %120, %112
  br i1 %121, label %122, label %168

122:                                              ; preds = %119
  %123 = fsub double %102, %104
  %124 = fsub double %108, %100
  %125 = fmul double %123, %124
  %126 = fsub double %102, %103
  %127 = fsub double %108, %99
  %128 = fmul double %126, %127
  %129 = fneg double %123
  %130 = fmul double %125, %129
  %131 = tail call double @llvm.fmuladd.f64(double %126, double %128, double %130)
  %132 = fsub double %128, %125
  %133 = fmul double %132, 2.000000e+00
  %134 = fcmp ogt double %133, 0.000000e+00
  %135 = fsub double 0.000000e+00, %131
  %136 = tail call double @llvm.fabs.f64(double %133)
  %137 = select i1 %134, double %135, double %131
  %138 = tail call double @llvm.fabs.f64(double %137)
  %139 = fmul double %136, 5.000000e-01
  %140 = fmul double %106, %139
  %141 = tail call double @llvm.fabs.f64(double %140)
  %142 = fcmp ult double %138, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %122
  %144 = fsub double %101, %102
  %145 = fmul double %144, %136
  %146 = fcmp ugt double %137, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = fsub double %107, %102
  %149 = fmul double %148, %136
  %150 = fcmp ult double %137, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %147, %143, %122
  %152 = fcmp ult double %102, %110
  %153 = select i1 %152, double %107, double %101
  %154 = fsub double %153, %102
  %155 = fmul double %154, 0x3FD8722191ADE46B
  br label %173

156:                                              ; preds = %147
  %157 = fdiv double %137, %136
  %158 = fadd double %102, %157
  %159 = fsub double %158, %101
  %160 = fcmp olt double %159, %113
  %161 = fsub double %107, %158
  %162 = fcmp olt double %161, %113
  %163 = select i1 %160, i1 true, i1 %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = fcmp ogt double %110, %102
  %166 = fsub double 0.000000e+00, %112
  %167 = select i1 %165, double %112, double %166
  br label %173

168:                                              ; preds = %119
  %169 = fcmp ult double %102, %110
  %170 = select i1 %169, double %107, double %101
  %171 = fsub double %170, %102
  %172 = fmul double %171, 0x3FD8722191ADE46B
  br label %173

173:                                              ; preds = %156, %151, %164, %168
  %174 = phi double [ %154, %151 ], [ %105, %164 ], [ %171, %168 ], [ %105, %156 ]
  %175 = phi double [ %155, %151 ], [ %167, %164 ], [ %172, %168 ], [ %157, %156 ]
  %176 = tail call double @llvm.fabs.f64(double %175)
  %177 = fcmp ult double %176, %112
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = fcmp ogt double %175, 0.000000e+00
  %180 = fneg double %112
  %181 = select i1 %179, double %112, double %180
  br label %182

182:                                              ; preds = %173, %178
  %183 = phi double [ %181, %178 ], [ %175, %173 ]
  %184 = fadd double %102, %183
  %185 = tail call double %0(double noundef %184, ptr noundef %3) #11
  %186 = fcmp ugt double %185, %108
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = fcmp ult double %184, %102
  %189 = select i1 %188, double %102, double %107
  %190 = select i1 %188, double %101, double %102
  br label %205

191:                                              ; preds = %182
  %192 = fcmp olt double %184, %102
  %193 = select i1 %192, double %107, double %184
  %194 = select i1 %192, double %184, double %101
  %195 = fcmp ole double %185, %99
  %196 = fcmp oeq double %104, %102
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %205, label %198

198:                                              ; preds = %191
  %199 = fcmp ole double %185, %100
  %200 = fcmp oeq double %103, %102
  %201 = select i1 %199, i1 true, i1 %200
  %202 = fcmp oeq double %103, %104
  %203 = select i1 %201, i1 true, i1 %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %198, %191, %187, %204
  %206 = phi double [ %185, %187 ], [ %108, %204 ], [ %108, %191 ], [ %108, %198 ]
  %207 = phi double [ %189, %187 ], [ %193, %204 ], [ %193, %191 ], [ %193, %198 ]
  %208 = phi double [ %102, %187 ], [ %104, %204 ], [ %184, %191 ], [ %104, %198 ]
  %209 = phi double [ %104, %187 ], [ %184, %204 ], [ %104, %191 ], [ %103, %198 ]
  %210 = phi double [ %184, %187 ], [ %102, %204 ], [ %102, %191 ], [ %102, %198 ]
  %211 = phi double [ %190, %187 ], [ %194, %204 ], [ %194, %191 ], [ %194, %198 ]
  %212 = phi double [ %99, %187 ], [ %185, %204 ], [ %99, %191 ], [ %100, %198 ]
  %213 = phi double [ %108, %187 ], [ %99, %204 ], [ %185, %191 ], [ %99, %198 ]
  %214 = add nuw nsw i32 %98, 1
  %215 = icmp eq i32 %214, 100
  br i1 %215, label %216, label %97, !llvm.loop !21

216:                                              ; preds = %205, %97
  %217 = phi double [ %206, %205 ], [ %108, %97 ]
  %218 = phi double [ %210, %205 ], [ %102, %97 ]
  store double %218, ptr %5, align 8, !tbaa !5
  ret double %217
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define dso_local double @krf_brent(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  store i32 0, ptr %5, align 4, !tbaa !22
  %7 = tail call double %3(double noundef %0, ptr noundef %4) #11
  %8 = tail call double %3(double noundef %1, ptr noundef %4) #11
  %9 = fcmp ogt double %7, 0.000000e+00
  %10 = fcmp ogt double %8, 0.000000e+00
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %135, label %12

12:                                               ; preds = %6
  %13 = fcmp olt double %7, 0.000000e+00
  %14 = fcmp olt double %8, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %135, label %16

16:                                               ; preds = %12
  %17 = fmul double %2, 5.000000e-01
  br label %18

18:                                               ; preds = %16, %129
  %19 = phi i32 [ 0, %16 ], [ %133, %129 ]
  %20 = phi double [ %0, %16 ], [ %51, %129 ]
  %21 = phi double [ %1, %16 ], [ %131, %129 ]
  %22 = phi double [ %8, %16 ], [ %50, %129 ]
  %23 = phi double [ %8, %16 ], [ %132, %129 ]
  %24 = phi double [ %7, %16 ], [ %49, %129 ]
  %25 = phi double [ %1, %16 ], [ %47, %129 ]
  %26 = phi double [ undef, %16 ], [ %114, %129 ]
  %27 = phi double [ undef, %16 ], [ %113, %129 ]
  %28 = fcmp ogt double %23, 0.000000e+00
  %29 = fcmp ogt double %22, 0.000000e+00
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = fcmp olt double %23, 0.000000e+00
  %33 = fcmp olt double %22, 0.000000e+00
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %18
  %36 = fsub double %21, %20
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi double [ %36, %35 ], [ %27, %31 ]
  %39 = phi double [ %36, %35 ], [ %26, %31 ]
  %40 = phi double [ %20, %35 ], [ %25, %31 ]
  %41 = phi double [ %24, %35 ], [ %22, %31 ]
  %42 = tail call double @llvm.fabs.f64(double %41)
  %43 = tail call double @llvm.fabs.f64(double %23)
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi double [ %21, %45 ], [ %40, %37 ]
  %48 = phi double [ %23, %45 ], [ %24, %37 ]
  %49 = phi double [ %41, %45 ], [ %23, %37 ]
  %50 = phi double [ %23, %45 ], [ %41, %37 ]
  %51 = phi double [ %40, %45 ], [ %21, %37 ]
  %52 = phi double [ %21, %45 ], [ %20, %37 ]
  %53 = tail call double @llvm.fabs.f64(double %51)
  %54 = tail call double @llvm.fmuladd.f64(double %53, double 0x3E701B2B20000000, double %17)
  %55 = fsub double %47, %51
  %56 = fmul double %55, 5.000000e-01
  %57 = tail call double @llvm.fabs.f64(double %56)
  %58 = fcmp ole double %57, %54
  %59 = fcmp oeq double %49, 0.000000e+00
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %137, label %61

61:                                               ; preds = %46
  %62 = tail call double @llvm.fabs.f64(double %38)
  %63 = fcmp ult double %62, %54
  br i1 %63, label %111, label %64

64:                                               ; preds = %61
  %65 = tail call double @llvm.fabs.f64(double %48)
  %66 = tail call double @llvm.fabs.f64(double %49)
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %64
  %69 = fdiv double %49, %48
  %70 = fcmp oeq double %52, %47
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = fmul double %56, 2.000000e+00
  %73 = fsub double 1.000000e+00, %69
  br label %89

74:                                               ; preds = %68
  %75 = fdiv double %48, %50
  %76 = fdiv double %49, %50
  %77 = fmul double %56, 2.000000e+00
  %78 = fmul double %75, %77
  %79 = fsub double %75, %76
  %80 = fsub double %51, %52
  %81 = fadd double %76, -1.000000e+00
  %82 = fneg double %80
  %83 = fmul double %81, %82
  %84 = tail call double @llvm.fmuladd.f64(double %78, double %79, double %83)
  %85 = fadd double %75, -1.000000e+00
  %86 = fmul double %85, %81
  %87 = fadd double %69, -1.000000e+00
  %88 = fmul double %87, %86
  br label %89

89:                                               ; preds = %74, %71
  %90 = phi double [ %72, %71 ], [ %84, %74 ]
  %91 = phi double [ %73, %71 ], [ %88, %74 ]
  %92 = fmul double %69, %90
  %93 = fcmp ogt double %92, 0.000000e+00
  %94 = fneg double %91
  %95 = select i1 %93, double %94, double %91
  %96 = tail call double @llvm.fabs.f64(double %92)
  %97 = fmul double %56, 3.000000e+00
  %98 = fmul double %54, %95
  %99 = tail call double @llvm.fabs.f64(double %98)
  %100 = fneg double %99
  %101 = tail call double @llvm.fmuladd.f64(double %97, double %95, double %100)
  %102 = fmul double %38, %95
  %103 = tail call double @llvm.fabs.f64(double %102)
  %104 = fmul double %96, 2.000000e+00
  %105 = fcmp olt double %101, %103
  %106 = select i1 %105, double %101, double %103
  %107 = fcmp olt double %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %89
  %109 = fdiv double %96, %95
  %110 = tail call double @llvm.fabs.f64(double %109)
  br label %111

111:                                              ; preds = %61, %64, %89, %108
  %112 = phi double [ %57, %61 ], [ %57, %64 ], [ %57, %89 ], [ %110, %108 ]
  %113 = phi double [ %56, %61 ], [ %56, %64 ], [ %56, %89 ], [ %39, %108 ]
  %114 = phi double [ %56, %61 ], [ %56, %64 ], [ %56, %89 ], [ %109, %108 ]
  %115 = fcmp ogt double %112, %54
  br i1 %115, label %129, label %116

116:                                              ; preds = %111
  %117 = fptrunc double %54 to float
  %118 = fptrunc double %56 to float
  %119 = fcmp ult float %118, 0.000000e+00
  %120 = fcmp oge float %117, 0.000000e+00
  %121 = fneg float %117
  br i1 %119, label %124, label %122

122:                                              ; preds = %116
  %123 = select i1 %120, float %117, float %121
  br label %126

124:                                              ; preds = %116
  %125 = select i1 %120, float %121, float %117
  br label %126

126:                                              ; preds = %122, %124
  %127 = phi float [ %123, %122 ], [ %125, %124 ]
  %128 = fpext float %127 to double
  br label %129

129:                                              ; preds = %111, %126
  %130 = phi double [ %128, %126 ], [ %114, %111 ]
  %131 = fadd double %51, %130
  %132 = tail call double %3(double noundef %131, ptr noundef %4) #11
  %133 = add nuw nsw i32 %19, 1
  %134 = icmp eq i32 %133, 100
  br i1 %134, label %135, label %18, !llvm.loop !24

135:                                              ; preds = %129, %6, %12
  %136 = phi i32 [ -1, %12 ], [ -1, %6 ], [ -2, %129 ]
  store i32 %136, ptr %5, align 4, !tbaa !22
  br label %137

137:                                              ; preds = %46, %135
  %138 = phi double [ 0.000000e+00, %135 ], [ %51, %46 ]
  ret double %138
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @kf_lgamma(double noundef %0) local_unnamed_addr #5 {
  %2 = insertelement <2 x double> poison, double %0, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fadd <2 x double> %3, <double 6.000000e+00, double 7.000000e+00>
  %5 = fdiv <2 x double> <double 0x3EE4D5C75C187EE3, double 0x3E8645E569E1DBC8>, %4
  %6 = extractelement <2 x double> %5, i64 1
  %7 = fadd double %6, 0.000000e+00
  %8 = extractelement <2 x double> %5, i64 0
  %9 = fadd double %8, %7
  %10 = fadd <2 x double> %3, <double 4.000000e+00, double 5.000000e+00>
  %11 = fdiv <2 x double> <double 0x402903C27E40123E, double 0x3FC1BCB213BB7E41>, %10
  %12 = extractelement <2 x double> %11, i64 1
  %13 = fsub double %9, %12
  %14 = extractelement <2 x double> %11, i64 0
  %15 = fadd double %14, %13
  %16 = fadd <2 x double> %3, <double 2.000000e+00, double 3.000000e+00>
  %17 = fdiv <2 x double> <double 0x40881A9661D3740D, double 0x406613AE519C9497>, %16
  %18 = extractelement <2 x double> %17, i64 1
  %19 = fsub double %15, %18
  %20 = extractelement <2 x double> %17, i64 0
  %21 = fadd double %20, %19
  %22 = fadd double %0, 1.000000e+00
  %23 = insertelement <2 x double> %2, double %22, i64 1
  %24 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %23
  %25 = extractelement <2 x double> %24, i64 1
  %26 = fsub double %21, %25
  %27 = extractelement <2 x double> %24, i64 0
  %28 = fadd double %27, %26
  %29 = fadd double %28, 0x3FEFFFFFFFFFEF0D
  %30 = tail call double @log(double noundef %29) #11
  %31 = fadd double %30, 0xC0165301C6F3682A
  %32 = fsub double %31, %0
  %33 = fadd double %0, -5.000000e-01
  %34 = fadd double %0, 6.500000e+00
  %35 = tail call double @log(double noundef %34) #11
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %35, double %32)
  ret double %36
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @kf_erfc(double noundef %0) local_unnamed_addr #5 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fmul double %2, 0x3FF6A09E667F3BCD
  %4 = fcmp ogt double %3, 3.700000e+01
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = fcmp ogt double %0, 0.000000e+00
  %7 = select i1 %6, double 0.000000e+00, double 2.000000e+00
  br label %50

8:                                                ; preds = %1
  %9 = fmul double %3, %3
  %10 = fmul double %9, -5.000000e-01
  %11 = tail call double @exp(double noundef %10) #11
  %12 = fcmp olt double %3, 0x401C48C6001F0ABF
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = tail call double @llvm.fmuladd.f64(double %3, double 0x3FA20DED0B57FBDD, double 0x3FE66989BE8EA720)
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %3, double 0x40197EEFF2A86F23)
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %3, double 0x4040F4D8CBB02431)
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %3, double 0x405C05131CA58D35)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %3, double 0x406BA6D5C7A28CF5)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %3, double 0x406B869EA974C7E9)
  %20 = fmul double %19, %11
  %21 = tail call double @llvm.fmuladd.f64(double %3, double 0x3FB6A09E667F3BCD, double 0x3FFC173673887D1A)
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %3, double 0x4030106DF11BD48F)
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %3, double 0x4055B1F78433A599)
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %3, double 0x4072890729BA781A)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %3, double 0x4083EAAB47FA1778)
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %3, double 0x4088CE9CB298974E)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %3, double 0x407B869EA974C7E9)
  %28 = fdiv double %20, %27
  br label %44

29:                                               ; preds = %8
  %30 = fadd double %3, 6.500000e-01
  %31 = fdiv double 4.000000e+00, %30
  %32 = fadd double %3, %31
  %33 = fdiv double 3.000000e+00, %32
  %34 = fadd double %3, %33
  %35 = fdiv double 2.000000e+00, %34
  %36 = fadd double %3, %35
  %37 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %11, i64 0
  %38 = insertelement <2 x double> <double 0x40040D931FF62707, double poison>, double %36, i64 1
  %39 = fdiv <2 x double> %37, %38
  %40 = extractelement <2 x double> %39, i64 1
  %41 = fadd double %3, %40
  %42 = extractelement <2 x double> %39, i64 0
  %43 = fdiv double %42, %41
  br label %44

44:                                               ; preds = %29, %13
  %45 = phi double [ %28, %13 ], [ %43, %29 ]
  %46 = fcmp ogt double %0, 0.000000e+00
  %47 = fsub double 1.000000e+00, %45
  %48 = select i1 %46, double %45, double %47
  %49 = fmul double %48, 2.000000e+00
  br label %50

50:                                               ; preds = %44, %5
  %51 = phi double [ %7, %5 ], [ %49, %44 ]
  ret double %51
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local double @kf_gammap(double noundef %0, double noundef %1) local_unnamed_addr #7 {
  %3 = fcmp ole double %1, 1.000000e+00
  %4 = fcmp olt double %1, %0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc double @_kf_gammap(double noundef %0, double noundef %1)
  br label %11

8:                                                ; preds = %2
  %9 = tail call fastcc double @_kf_gammaq(double noundef %0, double noundef %1)
  %10 = fsub double 1.000000e+00, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi double [ %7, %6 ], [ %10, %8 ]
  ret double %12
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc double @_kf_gammap(double noundef %0, double noundef %1) unnamed_addr #7 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ 1, %2 ], [ %14, %3 ]
  %5 = phi double [ 1.000000e+00, %2 ], [ %10, %3 ]
  %6 = phi double [ 1.000000e+00, %2 ], [ %11, %3 ]
  %7 = sitofp i32 %4 to double
  %8 = fadd double %7, %0
  %9 = fdiv double %1, %8
  %10 = fmul double %5, %9
  %11 = fadd double %6, %10
  %12 = fdiv double %10, %11
  %13 = fcmp olt double %12, 0x3D06849B86A12B9B
  %14 = add nuw nsw i32 %4, 1
  %15 = icmp eq i32 %14, 100
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %3, !llvm.loop !25

17:                                               ; preds = %3
  %18 = tail call double @log(double noundef %1) #11
  %19 = fneg double %1
  %20 = tail call double @llvm.fmuladd.f64(double %0, double %18, double %19)
  %21 = fadd double %0, 1.000000e+00
  %22 = fadd double %21, 7.000000e+00
  %23 = fdiv double 0x3E8645E569E1DBC8, %22
  %24 = fadd double %23, 0.000000e+00
  %25 = fadd double %21, 6.000000e+00
  %26 = fdiv double 0x3EE4D5C75C187EE3, %25
  %27 = fadd double %26, %24
  %28 = fadd double %21, 5.000000e+00
  %29 = fdiv double 0x3FC1BCB213BB7E41, %28
  %30 = fsub double %27, %29
  %31 = fadd double %21, 4.000000e+00
  %32 = fdiv double 0x402903C27E40123E, %31
  %33 = fadd double %32, %30
  %34 = insertelement <2 x double> poison, double %21, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = fadd <2 x double> %35, <double 2.000000e+00, double 3.000000e+00>
  %37 = fdiv <2 x double> <double 0x40881A9661D3740D, double 0x406613AE519C9497>, %36
  %38 = extractelement <2 x double> %37, i64 1
  %39 = fsub double %33, %38
  %40 = extractelement <2 x double> %37, i64 0
  %41 = fadd double %40, %39
  %42 = fadd double %21, 1.000000e+00
  %43 = insertelement <2 x double> %34, double %42, i64 1
  %44 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %43
  %45 = extractelement <2 x double> %44, i64 1
  %46 = fsub double %41, %45
  %47 = extractelement <2 x double> %44, i64 0
  %48 = fadd double %47, %46
  %49 = fadd double %48, 0x3FEFFFFFFFFFEF0D
  %50 = tail call double @log(double noundef %49) #11
  %51 = fadd double %50, 0xC0165301C6F3682A
  %52 = fsub double %51, %21
  %53 = fadd double %21, -5.000000e-01
  %54 = fadd double %21, 6.500000e+00
  %55 = tail call double @log(double noundef %54) #11
  %56 = tail call double @llvm.fmuladd.f64(double %53, double %55, double %52)
  %57 = fsub double %20, %56
  %58 = tail call double @log(double noundef %11) #11
  %59 = fadd double %58, %57
  %60 = tail call double @exp(double noundef %59) #11
  ret double %60
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc double @_kf_gammaq(double noundef %0, double noundef %1) unnamed_addr #7 {
  %3 = fadd double %1, 1.000000e+00
  %4 = fsub double %3, %0
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 1, %2 ], [ %31, %5 ]
  %7 = phi double [ %4, %2 ], [ %24, %5 ]
  %8 = phi double [ 0.000000e+00, %2 ], [ %25, %5 ]
  %9 = phi double [ %4, %2 ], [ %27, %5 ]
  %10 = sitofp i32 %6 to double
  %11 = fsub double %0, %10
  %12 = fmul double %11, %10
  %13 = shl nuw nsw i32 %6, 1
  %14 = or disjoint i32 %13, 1
  %15 = sitofp i32 %14 to double
  %16 = fadd double %15, %1
  %17 = fsub double %16, %0
  %18 = tail call double @llvm.fmuladd.f64(double %12, double %8, double %17)
  %19 = fcmp olt double %18, 1.000000e-290
  %20 = select i1 %19, double 1.000000e-290, double %18
  %21 = fdiv double %12, %7
  %22 = fadd double %21, %17
  %23 = fcmp olt double %22, 1.000000e-290
  %24 = select i1 %23, double 1.000000e-290, double %22
  %25 = fdiv double 1.000000e+00, %20
  %26 = fmul double %24, %25
  %27 = fmul double %9, %26
  %28 = fadd double %26, -1.000000e+00
  %29 = tail call double @llvm.fabs.f64(double %28)
  %30 = fcmp olt double %29, 0x3D06849B86A12B9B
  %31 = add nuw nsw i32 %6, 1
  %32 = icmp eq i32 %31, 100
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %5, !llvm.loop !26

34:                                               ; preds = %5
  %35 = tail call double @log(double noundef %1) #11
  %36 = fneg double %1
  %37 = tail call double @llvm.fmuladd.f64(double %0, double %35, double %36)
  %38 = fadd double %0, 7.000000e+00
  %39 = fdiv double 0x3E8645E569E1DBC8, %38
  %40 = fadd double %39, 0.000000e+00
  %41 = fadd double %0, 6.000000e+00
  %42 = fdiv double 0x3EE4D5C75C187EE3, %41
  %43 = fadd double %42, %40
  %44 = fadd double %0, 5.000000e+00
  %45 = fdiv double 0x3FC1BCB213BB7E41, %44
  %46 = fsub double %43, %45
  %47 = fadd double %0, 4.000000e+00
  %48 = fdiv double 0x402903C27E40123E, %47
  %49 = fadd double %48, %46
  %50 = insertelement <2 x double> poison, double %0, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = fadd <2 x double> %51, <double 2.000000e+00, double 3.000000e+00>
  %53 = fdiv <2 x double> <double 0x40881A9661D3740D, double 0x406613AE519C9497>, %52
  %54 = extractelement <2 x double> %53, i64 1
  %55 = fsub double %49, %54
  %56 = extractelement <2 x double> %53, i64 0
  %57 = fadd double %56, %55
  %58 = fadd double %0, 1.000000e+00
  %59 = insertelement <2 x double> %50, double %58, i64 1
  %60 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %59
  %61 = extractelement <2 x double> %60, i64 1
  %62 = fsub double %57, %61
  %63 = extractelement <2 x double> %60, i64 0
  %64 = fadd double %63, %62
  %65 = fadd double %64, 0x3FEFFFFFFFFFEF0D
  %66 = tail call double @log(double noundef %65) #11
  %67 = fadd double %66, 0xC0165301C6F3682A
  %68 = fsub double %67, %0
  %69 = fadd double %0, -5.000000e-01
  %70 = fadd double %0, 6.500000e+00
  %71 = tail call double @log(double noundef %70) #11
  %72 = tail call double @llvm.fmuladd.f64(double %69, double %71, double %68)
  %73 = fsub double %37, %72
  %74 = tail call double @log(double noundef %27) #11
  %75 = fsub double %73, %74
  %76 = tail call double @exp(double noundef %75) #11
  ret double %76
}

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local double @kf_gammaq(double noundef %0, double noundef %1) local_unnamed_addr #7 {
  %3 = fcmp ole double %1, 1.000000e+00
  %4 = fcmp olt double %1, %0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc double @_kf_gammap(double noundef %0, double noundef %1)
  %8 = fsub double 1.000000e+00, %7
  br label %11

9:                                                ; preds = %2
  %10 = tail call fastcc double @_kf_gammaq(double noundef %0, double noundef %1)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi double [ %8, %6 ], [ %10, %9 ]
  ret double %12
}

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local double @kf_betai(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
  %4 = fadd double %0, 1.000000e+00
  %5 = fadd double %0, %1
  %6 = fadd double %5, 2.000000e+00
  %7 = fdiv double %4, %6
  %8 = fcmp ogt double %7, %2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call fastcc double @kf_betai_aux(double noundef %0, double noundef %1, double noundef %2)
  br label %15

11:                                               ; preds = %3
  %12 = fsub double 1.000000e+00, %2
  %13 = tail call fastcc double @kf_betai_aux(double noundef %1, double noundef %0, double noundef %12)
  %14 = fsub double 1.000000e+00, %13
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi double [ %10, %9 ], [ %14, %11 ]
  ret double %16
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc double @kf_betai_aux(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #7 {
  %4 = fcmp oeq double %2, 0.000000e+00
  br i1 %4, label %175, label %5

5:                                                ; preds = %3
  %6 = fcmp oeq double %2, 1.000000e+00
  br i1 %6, label %175, label %7

7:                                                ; preds = %5
  %8 = fadd double %0, %1
  br label %9

9:                                                ; preds = %39, %7
  %10 = phi double [ 1.000000e+00, %7 ], [ %47, %39 ]
  %11 = phi double [ 0.000000e+00, %7 ], [ %48, %39 ]
  %12 = phi i32 [ 1, %7 ], [ %54, %39 ]
  %13 = phi double [ 1.000000e+00, %7 ], [ %50, %39 ]
  %14 = lshr i32 %12, 1
  %15 = and i32 %12, 1
  %16 = icmp eq i32 %15, 0
  %17 = sitofp i32 %14 to double
  br i1 %16, label %30, label %18

18:                                               ; preds = %9
  %19 = fadd double %17, %0
  %20 = fneg double %19
  %21 = fadd double %8, %17
  %22 = fmul double %21, %20
  %23 = fmul double %22, %2
  %24 = and i32 %12, 254
  %25 = sitofp i32 %24 to double
  %26 = fadd double %25, %0
  %27 = fadd double %26, 1.000000e+00
  %28 = fmul double %26, %27
  %29 = fdiv double %23, %28
  br label %39

30:                                               ; preds = %9
  %31 = fsub double %1, %17
  %32 = fmul double %31, %17
  %33 = fmul double %32, %2
  %34 = sitofp i32 %12 to double
  %35 = fadd double %34, %0
  %36 = fadd double %35, -1.000000e+00
  %37 = fmul double %35, %36
  %38 = fdiv double %33, %37
  br label %39

39:                                               ; preds = %30, %18
  %40 = phi double [ %29, %18 ], [ %38, %30 ]
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %11, double 1.000000e+00)
  %42 = fcmp olt double %41, 1.000000e-290
  %43 = select i1 %42, double 1.000000e-290, double %41
  %44 = fdiv double %40, %10
  %45 = fadd double %44, 1.000000e+00
  %46 = fcmp olt double %45, 1.000000e-290
  %47 = select i1 %46, double 1.000000e-290, double %45
  %48 = fdiv double 1.000000e+00, %43
  %49 = fmul double %47, %48
  %50 = fmul double %13, %49
  %51 = fadd double %49, -1.000000e+00
  %52 = tail call double @llvm.fabs.f64(double %51)
  %53 = fcmp olt double %52, 0x3D06849B86A12B9B
  %54 = add nuw nsw i32 %12, 1
  %55 = icmp eq i32 %54, 200
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %9, !llvm.loop !27

57:                                               ; preds = %39
  %58 = insertelement <2 x double> poison, double %8, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <2 x i32> zeroinitializer
  %60 = fadd <2 x double> %59, <double 6.000000e+00, double 7.000000e+00>
  %61 = fdiv <2 x double> <double 0x3EE4D5C75C187EE3, double 0x3E8645E569E1DBC8>, %60
  %62 = extractelement <2 x double> %61, i64 1
  %63 = fadd double %62, 0.000000e+00
  %64 = extractelement <2 x double> %61, i64 0
  %65 = fadd double %64, %63
  %66 = fadd <2 x double> %59, <double 4.000000e+00, double 5.000000e+00>
  %67 = fdiv <2 x double> <double 0x402903C27E40123E, double 0x3FC1BCB213BB7E41>, %66
  %68 = extractelement <2 x double> %67, i64 1
  %69 = fsub double %65, %68
  %70 = extractelement <2 x double> %67, i64 0
  %71 = fadd double %70, %69
  %72 = fadd <2 x double> %59, <double 2.000000e+00, double 3.000000e+00>
  %73 = fdiv <2 x double> <double 0x40881A9661D3740D, double 0x406613AE519C9497>, %72
  %74 = extractelement <2 x double> %73, i64 1
  %75 = fsub double %71, %74
  %76 = extractelement <2 x double> %73, i64 0
  %77 = fadd double %76, %75
  %78 = fadd double %8, 1.000000e+00
  %79 = insertelement <2 x double> %58, double %78, i64 1
  %80 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %79
  %81 = extractelement <2 x double> %80, i64 1
  %82 = fsub double %77, %81
  %83 = extractelement <2 x double> %80, i64 0
  %84 = fadd double %83, %82
  %85 = fadd double %84, 0x3FEFFFFFFFFFEF0D
  %86 = tail call double @log(double noundef %85) #11
  %87 = insertelement <2 x double> %58, double %0, i64 1
  %88 = fadd <2 x double> %87, <double -5.000000e-01, double -5.000000e-01>
  %89 = fadd double %8, 6.500000e+00
  %90 = tail call double @log(double noundef %89) #11
  %91 = insertelement <2 x double> poison, double %0, i64 0
  %92 = shufflevector <2 x double> %91, <2 x double> poison, <2 x i32> zeroinitializer
  %93 = fadd <2 x double> %92, <double 6.000000e+00, double 7.000000e+00>
  %94 = fdiv <2 x double> <double 0x3EE4D5C75C187EE3, double 0x3E8645E569E1DBC8>, %93
  %95 = extractelement <2 x double> %94, i64 1
  %96 = fadd double %95, 0.000000e+00
  %97 = extractelement <2 x double> %94, i64 0
  %98 = fadd double %97, %96
  %99 = fadd <2 x double> %92, <double 4.000000e+00, double 5.000000e+00>
  %100 = fdiv <2 x double> <double 0x402903C27E40123E, double 0x3FC1BCB213BB7E41>, %99
  %101 = extractelement <2 x double> %100, i64 1
  %102 = fsub double %98, %101
  %103 = extractelement <2 x double> %100, i64 0
  %104 = fadd double %103, %102
  %105 = fadd <2 x double> %92, <double 2.000000e+00, double 3.000000e+00>
  %106 = fdiv <2 x double> <double 0x40881A9661D3740D, double 0x406613AE519C9497>, %105
  %107 = extractelement <2 x double> %106, i64 1
  %108 = fsub double %104, %107
  %109 = extractelement <2 x double> %106, i64 0
  %110 = fadd double %109, %108
  %111 = fadd double %0, 1.000000e+00
  %112 = insertelement <2 x double> %91, double %111, i64 1
  %113 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %112
  %114 = extractelement <2 x double> %113, i64 1
  %115 = fsub double %110, %114
  %116 = extractelement <2 x double> %113, i64 0
  %117 = fadd double %116, %115
  %118 = fadd double %117, 0x3FEFFFFFFFFFEF0D
  %119 = tail call double @log(double noundef %118) #11
  %120 = fadd double %0, 6.500000e+00
  %121 = tail call double @log(double noundef %120) #11
  %122 = insertelement <2 x double> poison, double %86, i64 0
  %123 = insertelement <2 x double> %122, double %119, i64 1
  %124 = fadd <2 x double> %123, <double 0xC0165301C6F3682A, double 0xC0165301C6F3682A>
  %125 = fsub <2 x double> %124, %87
  %126 = insertelement <2 x double> poison, double %90, i64 0
  %127 = insertelement <2 x double> %126, double %121, i64 1
  %128 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %88, <2 x double> %127, <2 x double> %125)
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %130 = fsub <2 x double> %128, %129
  %131 = extractelement <2 x double> %130, i64 0
  %132 = fadd double %1, 7.000000e+00
  %133 = fdiv double 0x3E8645E569E1DBC8, %132
  %134 = fadd double %133, 0.000000e+00
  %135 = fadd double %1, 6.000000e+00
  %136 = fdiv double 0x3EE4D5C75C187EE3, %135
  %137 = fadd double %136, %134
  %138 = fadd double %1, 5.000000e+00
  %139 = fdiv double 0x3FC1BCB213BB7E41, %138
  %140 = fsub double %137, %139
  %141 = fadd double %1, 4.000000e+00
  %142 = fdiv double 0x402903C27E40123E, %141
  %143 = fadd double %142, %140
  %144 = fadd double %1, 3.000000e+00
  %145 = fdiv double 0x406613AE519C9497, %144
  %146 = fsub double %143, %145
  %147 = fadd double %1, 2.000000e+00
  %148 = fdiv double 0x40881A9661D3740D, %147
  %149 = fadd double %148, %146
  %150 = fadd double %1, 1.000000e+00
  %151 = insertelement <2 x double> poison, double %1, i64 0
  %152 = insertelement <2 x double> %151, double %150, i64 1
  %153 = fdiv <2 x double> <double 0x40852429B6C30AF7, double 0x4093AC8E8ED41526>, %152
  %154 = extractelement <2 x double> %153, i64 1
  %155 = fsub double %149, %154
  %156 = extractelement <2 x double> %153, i64 0
  %157 = fadd double %156, %155
  %158 = fadd double %157, 0x3FEFFFFFFFFFEF0D
  %159 = tail call double @log(double noundef %158) #11
  %160 = fadd double %159, 0xC0165301C6F3682A
  %161 = fsub double %160, %1
  %162 = fadd double %1, -5.000000e-01
  %163 = fadd double %1, 6.500000e+00
  %164 = tail call double @log(double noundef %163) #11
  %165 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %161)
  %166 = fsub double %131, %165
  %167 = tail call double @log(double noundef %2) #11
  %168 = tail call double @llvm.fmuladd.f64(double %0, double %167, double %166)
  %169 = fsub double 1.000000e+00, %2
  %170 = tail call double @log(double noundef %169) #11
  %171 = tail call double @llvm.fmuladd.f64(double %1, double %170, double %168)
  %172 = tail call double @exp(double noundef %171) #11
  %173 = fdiv double %172, %0
  %174 = fdiv double %173, %50
  br label %175

175:                                              ; preds = %5, %3, %57
  %176 = phi double [ %174, %57 ], [ 0.000000e+00, %3 ], [ 1.000000e+00, %5 ]
  ret double %176
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @km_ks_dist(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = insertelement <2 x i32> poison, i32 %0, i64 0
  %6 = insertelement <2 x i32> %5, i32 %2, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x double>
  %8 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7
  %9 = icmp sgt i32 %0, 0
  %10 = icmp sgt i32 %2, 0
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %4, %50
  %13 = phi i32 [ %52, %50 ], [ 0, %4 ]
  %14 = phi i32 [ %51, %50 ], [ 0, %4 ]
  %15 = phi double [ %59, %50 ], [ 0.000000e+00, %4 ]
  %16 = phi <2 x double> [ %53, %50 ], [ zeroinitializer, %4 ]
  %17 = icmp eq i32 %13, %0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = fadd <2 x double> %8, %16
  %20 = add nsw i32 %14, 1
  %21 = shufflevector <2 x double> %16, <2 x double> %19, <2 x i32> <i32 0, i32 3>
  br label %50

22:                                               ; preds = %12
  %23 = icmp eq i32 %14, %2
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = fadd <2 x double> %8, %16
  %26 = add nsw i32 %13, 1
  %27 = shufflevector <2 x double> %25, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  br label %50

28:                                               ; preds = %22
  %29 = sext i32 %13 to i64
  %30 = getelementptr inbounds double, ptr %1, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !5
  %32 = sext i32 %14 to i64
  %33 = getelementptr inbounds double, ptr %3, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !5
  %35 = fcmp olt double %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = fadd <2 x double> %8, %16
  %38 = add nsw i32 %13, 1
  %39 = shufflevector <2 x double> %37, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  br label %50

40:                                               ; preds = %28
  %41 = fcmp ogt double %31, %34
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = fadd <2 x double> %8, %16
  %44 = add nsw i32 %14, 1
  %45 = shufflevector <2 x double> %16, <2 x double> %43, <2 x i32> <i32 0, i32 3>
  br label %50

46:                                               ; preds = %40
  %47 = fadd <2 x double> %8, %16
  %48 = add nsw i32 %13, 1
  %49 = add nsw i32 %14, 1
  br label %50

50:                                               ; preds = %24, %42, %46, %36, %18
  %51 = phi i32 [ %20, %18 ], [ %2, %24 ], [ %14, %36 ], [ %44, %42 ], [ %49, %46 ]
  %52 = phi i32 [ %0, %18 ], [ %26, %24 ], [ %38, %36 ], [ %13, %42 ], [ %48, %46 ]
  %53 = phi <2 x double> [ %21, %18 ], [ %27, %24 ], [ %39, %36 ], [ %45, %42 ], [ %47, %46 ]
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %55 = fsub <2 x double> %53, %54
  %56 = extractelement <2 x double> %55, i64 0
  %57 = tail call double @llvm.fabs.f64(double %56)
  %58 = fcmp olt double %15, %57
  %59 = select i1 %58, double %57, double %15
  %60 = icmp slt i32 %52, %0
  %61 = icmp slt i32 %51, %2
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %12, label %63, !llvm.loop !28

63:                                               ; preds = %50, %4
  %64 = phi double [ 0.000000e+00, %4 ], [ %59, %50 ]
  ret double %64
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !12, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !12, !11}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !7, i64 0}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
