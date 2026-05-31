; ModuleID = 'corpus_src/libexpat/expat/gennmtab/gennmtab.c'
source_filename = "corpus_src/libexpat/expat/gennmtab/gennmtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.range = type { i32, i32 }

@nmstrt = dso_local local_unnamed_addr global [207 x %struct.range] [%struct.range { i32 95, i32 0 }, %struct.range { i32 58, i32 0 }, %struct.range { i32 65, i32 90 }, %struct.range { i32 97, i32 122 }, %struct.range { i32 192, i32 214 }, %struct.range { i32 216, i32 246 }, %struct.range { i32 248, i32 255 }, %struct.range { i32 256, i32 305 }, %struct.range { i32 308, i32 318 }, %struct.range { i32 321, i32 328 }, %struct.range { i32 330, i32 382 }, %struct.range { i32 384, i32 451 }, %struct.range { i32 461, i32 496 }, %struct.range { i32 500, i32 501 }, %struct.range { i32 506, i32 535 }, %struct.range { i32 592, i32 680 }, %struct.range { i32 699, i32 705 }, %struct.range { i32 902, i32 0 }, %struct.range { i32 904, i32 906 }, %struct.range { i32 908, i32 0 }, %struct.range { i32 910, i32 929 }, %struct.range { i32 931, i32 974 }, %struct.range { i32 976, i32 982 }, %struct.range { i32 986, i32 0 }, %struct.range { i32 988, i32 0 }, %struct.range { i32 990, i32 0 }, %struct.range { i32 992, i32 0 }, %struct.range { i32 994, i32 1011 }, %struct.range { i32 1025, i32 1036 }, %struct.range { i32 1038, i32 1103 }, %struct.range { i32 1105, i32 1116 }, %struct.range { i32 1118, i32 1153 }, %struct.range { i32 1168, i32 1220 }, %struct.range { i32 1223, i32 1224 }, %struct.range { i32 1227, i32 1228 }, %struct.range { i32 1232, i32 1259 }, %struct.range { i32 1262, i32 1269 }, %struct.range { i32 1272, i32 1273 }, %struct.range { i32 1329, i32 1366 }, %struct.range { i32 1369, i32 0 }, %struct.range { i32 1377, i32 1414 }, %struct.range { i32 1488, i32 1514 }, %struct.range { i32 1520, i32 1522 }, %struct.range { i32 1569, i32 1594 }, %struct.range { i32 1601, i32 1610 }, %struct.range { i32 1649, i32 1719 }, %struct.range { i32 1722, i32 1726 }, %struct.range { i32 1728, i32 1742 }, %struct.range { i32 1744, i32 1747 }, %struct.range { i32 1749, i32 0 }, %struct.range { i32 1765, i32 1766 }, %struct.range { i32 2309, i32 2361 }, %struct.range { i32 2365, i32 0 }, %struct.range { i32 2392, i32 2401 }, %struct.range { i32 2437, i32 2444 }, %struct.range { i32 2447, i32 2448 }, %struct.range { i32 2451, i32 2472 }, %struct.range { i32 2474, i32 2480 }, %struct.range { i32 2482, i32 0 }, %struct.range { i32 2486, i32 2489 }, %struct.range { i32 2524, i32 2525 }, %struct.range { i32 2527, i32 2529 }, %struct.range { i32 2544, i32 2545 }, %struct.range { i32 2565, i32 2570 }, %struct.range { i32 2575, i32 2576 }, %struct.range { i32 2579, i32 2600 }, %struct.range { i32 2602, i32 2608 }, %struct.range { i32 2610, i32 2611 }, %struct.range { i32 2613, i32 2614 }, %struct.range { i32 2616, i32 2617 }, %struct.range { i32 2649, i32 2652 }, %struct.range { i32 2654, i32 0 }, %struct.range { i32 2674, i32 2676 }, %struct.range { i32 2693, i32 2699 }, %struct.range { i32 2701, i32 0 }, %struct.range { i32 2703, i32 2705 }, %struct.range { i32 2707, i32 2728 }, %struct.range { i32 2730, i32 2736 }, %struct.range { i32 2738, i32 2739 }, %struct.range { i32 2741, i32 2745 }, %struct.range { i32 2749, i32 0 }, %struct.range { i32 2784, i32 0 }, %struct.range { i32 2821, i32 2828 }, %struct.range { i32 2831, i32 2832 }, %struct.range { i32 2835, i32 2856 }, %struct.range { i32 2858, i32 2864 }, %struct.range { i32 2866, i32 2867 }, %struct.range { i32 2870, i32 2873 }, %struct.range { i32 2877, i32 0 }, %struct.range { i32 2908, i32 2909 }, %struct.range { i32 2911, i32 2913 }, %struct.range { i32 2949, i32 2954 }, %struct.range { i32 2958, i32 2960 }, %struct.range { i32 2962, i32 2965 }, %struct.range { i32 2969, i32 2970 }, %struct.range { i32 2972, i32 0 }, %struct.range { i32 2974, i32 2975 }, %struct.range { i32 2979, i32 2980 }, %struct.range { i32 2984, i32 2986 }, %struct.range { i32 2990, i32 2997 }, %struct.range { i32 2999, i32 3001 }, %struct.range { i32 3077, i32 3084 }, %struct.range { i32 3086, i32 3088 }, %struct.range { i32 3090, i32 3112 }, %struct.range { i32 3114, i32 3123 }, %struct.range { i32 3125, i32 3129 }, %struct.range { i32 3168, i32 3169 }, %struct.range { i32 3205, i32 3212 }, %struct.range { i32 3214, i32 3216 }, %struct.range { i32 3218, i32 3240 }, %struct.range { i32 3242, i32 3251 }, %struct.range { i32 3253, i32 3257 }, %struct.range { i32 3294, i32 0 }, %struct.range { i32 3296, i32 3297 }, %struct.range { i32 3333, i32 3340 }, %struct.range { i32 3342, i32 3344 }, %struct.range { i32 3346, i32 3368 }, %struct.range { i32 3370, i32 3385 }, %struct.range { i32 3424, i32 3425 }, %struct.range { i32 3585, i32 3630 }, %struct.range { i32 3632, i32 0 }, %struct.range { i32 3634, i32 3635 }, %struct.range { i32 3648, i32 3653 }, %struct.range { i32 3713, i32 3714 }, %struct.range { i32 3716, i32 0 }, %struct.range { i32 3719, i32 3720 }, %struct.range { i32 3722, i32 0 }, %struct.range { i32 3725, i32 0 }, %struct.range { i32 3732, i32 3735 }, %struct.range { i32 3737, i32 3743 }, %struct.range { i32 3745, i32 3747 }, %struct.range { i32 3749, i32 0 }, %struct.range { i32 3751, i32 0 }, %struct.range { i32 3754, i32 3755 }, %struct.range { i32 3757, i32 3758 }, %struct.range { i32 3760, i32 0 }, %struct.range { i32 3762, i32 3763 }, %struct.range { i32 3773, i32 0 }, %struct.range { i32 3776, i32 3780 }, %struct.range { i32 3904, i32 3911 }, %struct.range { i32 3913, i32 3945 }, %struct.range { i32 4256, i32 4293 }, %struct.range { i32 4304, i32 4342 }, %struct.range { i32 4352, i32 0 }, %struct.range { i32 4354, i32 4355 }, %struct.range { i32 4357, i32 4359 }, %struct.range { i32 4361, i32 0 }, %struct.range { i32 4363, i32 4364 }, %struct.range { i32 4366, i32 4370 }, %struct.range { i32 4412, i32 0 }, %struct.range { i32 4414, i32 0 }, %struct.range { i32 4416, i32 0 }, %struct.range { i32 4428, i32 0 }, %struct.range { i32 4430, i32 0 }, %struct.range { i32 4432, i32 0 }, %struct.range { i32 4436, i32 4437 }, %struct.range { i32 4441, i32 0 }, %struct.range { i32 4447, i32 4449 }, %struct.range { i32 4451, i32 0 }, %struct.range { i32 4453, i32 0 }, %struct.range { i32 4455, i32 0 }, %struct.range { i32 4457, i32 0 }, %struct.range { i32 4461, i32 4462 }, %struct.range { i32 4466, i32 4467 }, %struct.range { i32 4469, i32 0 }, %struct.range { i32 4510, i32 0 }, %struct.range { i32 4520, i32 0 }, %struct.range { i32 4523, i32 0 }, %struct.range { i32 4526, i32 4527 }, %struct.range { i32 4535, i32 4536 }, %struct.range { i32 4538, i32 0 }, %struct.range { i32 4540, i32 4546 }, %struct.range { i32 4587, i32 0 }, %struct.range { i32 4592, i32 0 }, %struct.range { i32 4601, i32 0 }, %struct.range { i32 7680, i32 7835 }, %struct.range { i32 7840, i32 7929 }, %struct.range { i32 7936, i32 7957 }, %struct.range { i32 7960, i32 7965 }, %struct.range { i32 7968, i32 8005 }, %struct.range { i32 8008, i32 8013 }, %struct.range { i32 8016, i32 8023 }, %struct.range { i32 8025, i32 0 }, %struct.range { i32 8027, i32 0 }, %struct.range { i32 8029, i32 0 }, %struct.range { i32 8031, i32 8061 }, %struct.range { i32 8064, i32 8116 }, %struct.range { i32 8118, i32 8124 }, %struct.range { i32 8126, i32 0 }, %struct.range { i32 8130, i32 8132 }, %struct.range { i32 8134, i32 8140 }, %struct.range { i32 8144, i32 8147 }, %struct.range { i32 8150, i32 8155 }, %struct.range { i32 8160, i32 8172 }, %struct.range { i32 8178, i32 8180 }, %struct.range { i32 8182, i32 8188 }, %struct.range { i32 8486, i32 0 }, %struct.range { i32 8490, i32 8491 }, %struct.range { i32 8494, i32 0 }, %struct.range { i32 8576, i32 8578 }, %struct.range { i32 12353, i32 12436 }, %struct.range { i32 12449, i32 12538 }, %struct.range { i32 12549, i32 12588 }, %struct.range { i32 44032, i32 55203 }, %struct.range { i32 19968, i32 40869 }, %struct.range { i32 12295, i32 0 }, %struct.range { i32 12321, i32 12329 }], align 16
@name = dso_local local_unnamed_addr global [123 x %struct.range] [%struct.range { i32 46, i32 0 }, %struct.range { i32 45, i32 0 }, %struct.range { i32 768, i32 837 }, %struct.range { i32 864, i32 865 }, %struct.range { i32 1155, i32 1158 }, %struct.range { i32 1425, i32 1441 }, %struct.range { i32 1443, i32 1465 }, %struct.range { i32 1467, i32 1469 }, %struct.range { i32 1471, i32 0 }, %struct.range { i32 1473, i32 1474 }, %struct.range { i32 1476, i32 0 }, %struct.range { i32 1611, i32 1618 }, %struct.range { i32 1648, i32 0 }, %struct.range { i32 1750, i32 1756 }, %struct.range { i32 1757, i32 1759 }, %struct.range { i32 1760, i32 1764 }, %struct.range { i32 1767, i32 1768 }, %struct.range { i32 1770, i32 1773 }, %struct.range { i32 2305, i32 2307 }, %struct.range { i32 2364, i32 0 }, %struct.range { i32 2366, i32 2380 }, %struct.range { i32 2381, i32 0 }, %struct.range { i32 2385, i32 2388 }, %struct.range { i32 2402, i32 2403 }, %struct.range { i32 2433, i32 2435 }, %struct.range { i32 2492, i32 0 }, %struct.range { i32 2494, i32 0 }, %struct.range { i32 2495, i32 0 }, %struct.range { i32 2496, i32 2500 }, %struct.range { i32 2503, i32 2504 }, %struct.range { i32 2507, i32 2509 }, %struct.range { i32 2519, i32 0 }, %struct.range { i32 2530, i32 2531 }, %struct.range { i32 2562, i32 0 }, %struct.range { i32 2620, i32 0 }, %struct.range { i32 2622, i32 0 }, %struct.range { i32 2623, i32 0 }, %struct.range { i32 2624, i32 2626 }, %struct.range { i32 2631, i32 2632 }, %struct.range { i32 2635, i32 2637 }, %struct.range { i32 2672, i32 2673 }, %struct.range { i32 2689, i32 2691 }, %struct.range { i32 2748, i32 0 }, %struct.range { i32 2750, i32 2757 }, %struct.range { i32 2759, i32 2761 }, %struct.range { i32 2763, i32 2765 }, %struct.range { i32 2817, i32 2819 }, %struct.range { i32 2876, i32 0 }, %struct.range { i32 2878, i32 2883 }, %struct.range { i32 2887, i32 2888 }, %struct.range { i32 2891, i32 2893 }, %struct.range { i32 2902, i32 2903 }, %struct.range { i32 2946, i32 2947 }, %struct.range { i32 3006, i32 3010 }, %struct.range { i32 3014, i32 3016 }, %struct.range { i32 3018, i32 3021 }, %struct.range { i32 3031, i32 0 }, %struct.range { i32 3073, i32 3075 }, %struct.range { i32 3134, i32 3140 }, %struct.range { i32 3142, i32 3144 }, %struct.range { i32 3146, i32 3149 }, %struct.range { i32 3157, i32 3158 }, %struct.range { i32 3202, i32 3203 }, %struct.range { i32 3262, i32 3268 }, %struct.range { i32 3270, i32 3272 }, %struct.range { i32 3274, i32 3277 }, %struct.range { i32 3285, i32 3286 }, %struct.range { i32 3330, i32 3331 }, %struct.range { i32 3390, i32 3395 }, %struct.range { i32 3398, i32 3400 }, %struct.range { i32 3402, i32 3405 }, %struct.range { i32 3415, i32 0 }, %struct.range { i32 3633, i32 0 }, %struct.range { i32 3636, i32 3642 }, %struct.range { i32 3655, i32 3662 }, %struct.range { i32 3761, i32 0 }, %struct.range { i32 3764, i32 3769 }, %struct.range { i32 3771, i32 3772 }, %struct.range { i32 3784, i32 3789 }, %struct.range { i32 3864, i32 3865 }, %struct.range { i32 3893, i32 0 }, %struct.range { i32 3895, i32 0 }, %struct.range { i32 3897, i32 0 }, %struct.range { i32 3902, i32 0 }, %struct.range { i32 3903, i32 0 }, %struct.range { i32 3953, i32 3972 }, %struct.range { i32 3974, i32 3979 }, %struct.range { i32 3984, i32 3989 }, %struct.range { i32 3991, i32 0 }, %struct.range { i32 3993, i32 4013 }, %struct.range { i32 4017, i32 4023 }, %struct.range { i32 4025, i32 0 }, %struct.range { i32 8400, i32 8412 }, %struct.range { i32 8417, i32 0 }, %struct.range { i32 12330, i32 12335 }, %struct.range { i32 12441, i32 0 }, %struct.range { i32 12442, i32 0 }, %struct.range { i32 48, i32 57 }, %struct.range { i32 1632, i32 1641 }, %struct.range { i32 1776, i32 1785 }, %struct.range { i32 2406, i32 2415 }, %struct.range { i32 2534, i32 2543 }, %struct.range { i32 2662, i32 2671 }, %struct.range { i32 2790, i32 2799 }, %struct.range { i32 2918, i32 2927 }, %struct.range { i32 3047, i32 3055 }, %struct.range { i32 3174, i32 3183 }, %struct.range { i32 3302, i32 3311 }, %struct.range { i32 3430, i32 3439 }, %struct.range { i32 3664, i32 3673 }, %struct.range { i32 3792, i32 3801 }, %struct.range { i32 3872, i32 3881 }, %struct.range { i32 183, i32 0 }, %struct.range { i32 720, i32 0 }, %struct.range { i32 721, i32 0 }, %struct.range { i32 903, i32 0 }, %struct.range { i32 1600, i32 0 }, %struct.range { i32 3654, i32 0 }, %struct.range { i32 3782, i32 0 }, %struct.range { i32 12293, i32 0 }, %struct.range { i32 12337, i32 12341 }, %struct.range { i32 12445, i32 12446 }, %struct.range { i32 12540, i32 12542 }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%08X,\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [233 x i8] c"static const unsigned namingBitmap[] = {\0A0x00000000, 0x00000000, 0x00000000, 0x00000000,\0A0x00000000, 0x00000000, 0x00000000, 0x00000000,\0A0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,\0A0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,\00", align 1
@str.7 = private unnamed_addr constant [45 x i8] c"static const unsigned char nmstrtPages[] = {\00", align 1
@str.8 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@str.9 = private unnamed_addr constant [46 x i8] c"};\0Astatic const unsigned char namePages[] = {\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca [131072 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 131072, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %2, i8 0, i64 65536, i1 false)
  br label %3

3:                                                ; preds = %21, %0
  %4 = phi i64 [ %22, %21 ], [ 0, %0 ]
  %5 = getelementptr inbounds %struct.range, ptr @nmstrt, i64 %4
  %6 = getelementptr inbounds %struct.range, ptr @nmstrt, i64 %4, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr %5, align 8, !tbaa !10
  br i1 %8, label %18, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %9, %7
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = sext i32 %9 to i64
  %14 = sext i32 %7 to i64
  %15 = getelementptr i8, ptr %2, i64 %13
  %16 = add nsw i64 %14, 1
  %17 = sub nsw i64 %16, %13
  call void @llvm.memset.p0.i64(ptr align 1 %15, i8 1, i64 %17, i1 false), !tbaa !11
  br label %21

18:                                               ; preds = %3
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  store i8 1, ptr %20, align 1, !tbaa !11
  br label %21

21:                                               ; preds = %12, %18, %10
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 207
  br i1 %23, label %24, label %3, !llvm.loop !12

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %2, i64 65536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %25, ptr noundef nonnull align 16 dereferenceable(65536) %2, i64 65536, i1 false)
  br label %26

26:                                               ; preds = %44, %24
  %27 = phi i64 [ %45, %44 ], [ 0, %24 ]
  %28 = getelementptr inbounds %struct.range, ptr @name, i64 %27
  %29 = getelementptr inbounds %struct.range, ptr @name, i64 %27, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %28, align 8, !tbaa !10
  br i1 %31, label %41, label %33

33:                                               ; preds = %26
  %34 = icmp sgt i32 %32, %30
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = sext i32 %32 to i64
  %37 = sext i32 %30 to i64
  %38 = getelementptr i8, ptr %25, i64 %36
  %39 = add nsw i64 %37, 1
  %40 = sub nsw i64 %39, %36
  call void @llvm.memset.p0.i64(ptr align 1 %38, i8 1, i64 %40, i1 false), !tbaa !11
  br label %44

41:                                               ; preds = %26
  %42 = sext i32 %32 to i64
  %43 = getelementptr inbounds i8, ptr %25, i64 %42
  store i8 1, ptr %43, align 1, !tbaa !11
  br label %44

44:                                               ; preds = %35, %41, %33
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp eq i64 %45, 123
  br i1 %46, label %47, label %26, !llvm.loop !12

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #8
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %49

49:                                               ; preds = %162, %47
  %50 = phi i64 [ 0, %47 ], [ %164, %162 ]
  %51 = phi i8 [ 2, %47 ], [ %163, %162 ]
  %52 = shl nuw nsw i64 %50, 8
  %53 = getelementptr inbounds i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 16, !tbaa !11
  %55 = sext i8 %54 to i32
  br label %83

56:                                               ; preds = %83
  %57 = add nuw nsw i64 %84, 1
  %58 = or disjoint i64 %57, %52
  %59 = getelementptr inbounds i8, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !11
  %61 = icmp eq i8 %60, %54
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %84, 2
  %64 = or disjoint i64 %63, %52
  %65 = getelementptr inbounds i8, ptr %2, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !11
  %67 = icmp eq i8 %66, %54
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = add nuw nsw i64 %84, 3
  %70 = or disjoint i64 %69, %52
  %71 = getelementptr inbounds i8, ptr %2, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !11
  %73 = icmp eq i8 %72, %54
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = add nuw nsw i64 %84, 4
  %76 = or disjoint i64 %75, %52
  %77 = getelementptr inbounds i8, ptr %2, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !11
  %79 = icmp eq i8 %78, %54
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = add nuw nsw i64 %84, 5
  %82 = icmp eq i64 %81, 256
  br i1 %82, label %89, label %83, !llvm.loop !14

83:                                               ; preds = %80, %49
  %84 = phi i64 [ 1, %49 ], [ %81, %80 ]
  %85 = or disjoint i64 %84, %52
  %86 = getelementptr inbounds i8, ptr %2, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !11
  %88 = icmp eq i8 %87, %54
  br i1 %88, label %56, label %89

89:                                               ; preds = %80, %74, %68, %62, %56, %83
  %90 = phi i32 [ -1, %83 ], [ -1, %56 ], [ -1, %62 ], [ -1, %68 ], [ -1, %74 ], [ %55, %80 ]
  %91 = icmp ugt i64 %50, 255
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = add nsw i64 %50, -256
  %94 = shl nuw nsw i64 %93, 8
  %95 = getelementptr inbounds i8, ptr %2, i64 %94
  %96 = call i32 @bcmp(ptr noundef nonnull dereferenceable(256) %95, ptr noundef nonnull dereferenceable(256) %53, i64 256)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = getelementptr inbounds [512 x i8], ptr %1, i64 0, i64 %93
  %100 = load i8, ptr %99, align 1, !tbaa !11
  %101 = getelementptr inbounds [512 x i8], ptr %1, i64 0, i64 %50
  store i8 %100, ptr %101, align 1, !tbaa !11
  br label %162

102:                                              ; preds = %92, %89
  %103 = icmp eq i32 %90, -1
  br i1 %103, label %104, label %157

104:                                              ; preds = %102
  %105 = getelementptr inbounds [512 x i8], ptr %1, i64 0, i64 %50
  store i8 %51, ptr %105, align 1, !tbaa !11
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ 0, %104 ], [ %150, %106 ]
  %108 = shl nuw nsw i64 %107, 5
  %109 = getelementptr i8, ptr %53, i64 %108
  %110 = load <4 x i8>, ptr %109, align 16, !tbaa !11
  %111 = icmp eq <4 x i8> %110, zeroinitializer
  %112 = select <4 x i1> %111, <4 x i32> zeroinitializer, <4 x i32> <i32 1, i32 2, i32 4, i32 8>
  %113 = getelementptr i8, ptr %109, i64 4
  %114 = load <4 x i8>, ptr %113, align 4, !tbaa !11
  %115 = icmp eq <4 x i8> %114, zeroinitializer
  %116 = select <4 x i1> %115, <4 x i32> zeroinitializer, <4 x i32> <i32 16, i32 32, i32 64, i32 128>
  %117 = or disjoint <4 x i32> %116, %112
  %118 = getelementptr i8, ptr %109, i64 8
  %119 = load <4 x i8>, ptr %118, align 8, !tbaa !11
  %120 = icmp eq <4 x i8> %119, zeroinitializer
  %121 = select <4 x i1> %120, <4 x i32> zeroinitializer, <4 x i32> <i32 256, i32 512, i32 1024, i32 2048>
  %122 = or disjoint <4 x i32> %121, %117
  %123 = getelementptr i8, ptr %109, i64 12
  %124 = load <4 x i8>, ptr %123, align 4, !tbaa !11
  %125 = icmp eq <4 x i8> %124, zeroinitializer
  %126 = select <4 x i1> %125, <4 x i32> zeroinitializer, <4 x i32> <i32 4096, i32 8192, i32 16384, i32 32768>
  %127 = or disjoint <4 x i32> %126, %122
  %128 = getelementptr i8, ptr %109, i64 16
  %129 = load <4 x i8>, ptr %128, align 16, !tbaa !11
  %130 = icmp eq <4 x i8> %129, zeroinitializer
  %131 = select <4 x i1> %130, <4 x i32> zeroinitializer, <4 x i32> <i32 65536, i32 131072, i32 262144, i32 524288>
  %132 = or disjoint <4 x i32> %131, %127
  %133 = getelementptr i8, ptr %109, i64 20
  %134 = load <4 x i8>, ptr %133, align 4, !tbaa !11
  %135 = icmp eq <4 x i8> %134, zeroinitializer
  %136 = select <4 x i1> %135, <4 x i32> zeroinitializer, <4 x i32> <i32 1048576, i32 2097152, i32 4194304, i32 8388608>
  %137 = or disjoint <4 x i32> %136, %132
  %138 = getelementptr i8, ptr %109, i64 24
  %139 = load <4 x i8>, ptr %138, align 8, !tbaa !11
  %140 = icmp eq <4 x i8> %139, zeroinitializer
  %141 = select <4 x i1> %140, <4 x i32> zeroinitializer, <4 x i32> <i32 16777216, i32 33554432, i32 67108864, i32 134217728>
  %142 = or <4 x i32> %141, %137
  %143 = getelementptr i8, ptr %109, i64 28
  %144 = load <4 x i8>, ptr %143, align 4, !tbaa !11
  %145 = icmp eq <4 x i8> %144, zeroinitializer
  %146 = select <4 x i1> %145, <4 x i32> zeroinitializer, <4 x i32> <i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648>
  %147 = or <4 x i32> %146, %142
  %148 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %147)
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %148)
  %150 = add nuw nsw i64 %107, 1
  %151 = and i64 %150, 3
  %152 = icmp eq i64 %151, 0
  %153 = select i1 %152, i32 10, i32 32
  %154 = load ptr, ptr @stdout, align 8, !tbaa !15
  %155 = tail call i32 @putc(i32 noundef %153, ptr noundef %154)
  %156 = icmp eq i64 %150, 8
  br i1 %156, label %160, label %106, !llvm.loop !17

157:                                              ; preds = %102
  %158 = trunc i32 %90 to i8
  %159 = getelementptr inbounds [512 x i8], ptr %1, i64 0, i64 %50
  store i8 %158, ptr %159, align 1, !tbaa !11
  br label %162

160:                                              ; preds = %106
  %161 = add i8 %51, 1
  br label %162

162:                                              ; preds = %160, %157, %98
  %163 = phi i8 [ %51, %98 ], [ %51, %157 ], [ %161, %160 ]
  %164 = add nuw nsw i64 %50, 1
  %165 = icmp eq i64 %164, 512
  br i1 %165, label %166, label %49, !llvm.loop !18

166:                                              ; preds = %162
  %167 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  %168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %169

169:                                              ; preds = %174, %166
  %170 = phi i64 [ 0, %166 ], [ %179, %174 ]
  %171 = icmp eq i64 %170, 256
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %174

174:                                              ; preds = %172, %169
  %175 = getelementptr inbounds [512 x i8], ptr %1, i64 0, i64 %170
  %176 = load i8, ptr %175, align 1, !tbaa !11
  %177 = zext i8 %176 to i32
  %178 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %177)
  %179 = add nuw nsw i64 %170, 1
  %180 = and i64 %179, 7
  %181 = icmp eq i64 %180, 0
  %182 = select i1 %181, i32 10, i32 32
  %183 = load ptr, ptr @stdout, align 8, !tbaa !15
  %184 = tail call i32 @putc(i32 noundef %182, ptr noundef %183)
  %185 = icmp eq i64 %179, 512
  br i1 %185, label %186, label %169, !llvm.loop !19

186:                                              ; preds = %174
  %187 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 131072, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"range", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!8, !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
