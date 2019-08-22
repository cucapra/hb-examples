; ModuleID = '<stdin>'
source_filename = "tests/merge-sort.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = dso_local local_unnamed_addr global [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a.1 = global [2 x i8] c"a\00"
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i64, i1, i32 }
@comms_7 = external global { i64, i1, i32 }
@comms_8 = external global { i64, i1, i32 }
@comms_9 = external global { i64, i1, i32 }
@comms_10 = external global { i32, i1, i32 }
@comms_11 = external global { i1, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i32, i1, i32 }
@comms_14 = external global { i64, i1, i32 }
@comms_15 = external global { i32, i1, i32 }
@comms_16 = external global { i32, i1, i32 }
@comms_17 = external global { i32, i1, i32 }
@comms_18 = external global { i32, i1, i32 }
@comms_19 = external global { i64, i1, i32 }
@comms_20 = external global { i64, i1, i32 }
@comms_21 = external global { i64, i1, i32 }
@comms_22 = external global { i64, i1, i32 }
@comms_23 = external global { i32, i1, i32 }
@comms_24 = external global { i32, i1, i32 }
@comms_25 = external global { i32, i1, i32 }
@comms_26 = external global { i32, i1, i32 }
@comms_27 = external global { i64, i1, i32 }
@comms_28 = external global { i32, i1, i32 }
@comms_29 = external global { i32, i1, i32 }
@comms_30 = external global { i32, i1, i32 }
@comms_31 = external global { i32, i1, i32 }
@comms_32 = external global { i32, i1, i32 }
@comms_33 = external global { i64, i1, i32 }
@comms_34 = external global { i32, i1, i32 }
@comms_35 = external global { i64, i1, i32 }
@comms_36 = external global { i64, i1, i32 }
@comms_37 = external global { i64, i1, i32 }
@comms_38 = external global { i64, i1, i32 }
@comms_39 = external global { i64, i1, i32 }
@comms_40 = external global { i64, i1, i32 }
@comms_41 = external global { i32, i1, i32 }
@comms_42 = external global { i64, i1, i32 }
@comms_43 = external global { i64, i1, i32 }
@comms_44 = external global { i32, i1, i32 }
@comms_45 = external global { i32, i1, i32 }
@comms_46 = external global { i64, i1, i32 }
@comms_47 = external global { i32, i1, i32 }
@comms_48 = external global { i64, i1, i32 }
@comms_49 = external global { i64, i1, i32 }
@comms_50 = external global { i64, i1, i32 }
@comms_51 = external global { i32, i1, i32 }
@comms_52 = external global { i32, i1, i32 }
@comms_53 = external global { i64, i1, i32 }
@comms_54 = external global { i64, i1, i32 }
@comms_55 = external global { i64, i1, i32 }
@comms_56 = external global { i64, i1, i32 }
@comms_57 = external global { i64, i1, i32 }
@comms_58 = external global { i64, i1, i32 }
@comms_59 = external global { i32, i1, i32 }
@comms_60 = external global { i32, i1, i32 }
@comms_61 = external global { i64, i1, i32 }
@comms_62 = external global { i32, i1, i32 }
@comms_63 = external global { i64, i1, i32 }
@comms_64 = external global { i64, i1, i32 }
@comms_65 = external global { i64, i1, i32 }
@comms_66 = external global { i64, i1, i32 }
@comms_67 = external global { i32, i1, i32 }
@comms_68 = external global { i64, i1, i32 }
@comms_69 = external global { i64, i1, i32 }
@comms_70 = external global { i32, i1, i32 }
@comms_71 = external global { i64, i1, i32 }
@comms_72 = external global { i32, i1, i32 }
@comms_73 = external global { i32, i1, i32 }
@comms_74 = external global { i64, i1, i32 }
@comms_75 = external global { i64, i1, i32 }
@comms_76 = external global { i32, i1, i32 }
@comms_77 = external global { i64, i1, i32 }
@comms_78 = external global { i64, i1, i32 }
@comms_79 = external global { i32, i1, i32 }
@comms_80 = external global { i64, i1, i32 }
@comms_81 = external global { i64, i1, i32 }
@comms_82 = external global { i64, i1, i32 }
@comms_83 = external global { i32, i1, i32 }
@comms_84 = external global { i32, i1, i32 }
@comms_85 = external global { i32, i1, i32 }
@comms_86 = external global { i64, i1, i32 }
@comms_87 = external global { i64, i1, i32 }
@comms_88 = external global { i64, i1, i32 }
@comms_89 = external global { i32, i1, i32 }
@comms_90 = external global { i32, i1, i32 }
@comms_91 = external global { i32, i1, i32 }
@comms_92 = external global { i1, i1, i32 }
@comms_93 = external global { i1, i1, i32 }
@comms_94 = external global { i1, i1, i32 }
@comms_95 = external global { i1, i1, i32 }
@comms_96 = external global { i1, i1, i32 }
@comms_97 = external global { i1, i1, i32 }
@comms_98 = external global { i1, i1, i32 }
@comms_99 = external global { i1, i1, i32 }
@comms_100 = external global { i1, i1, i32 }
@comms_101 = external global { i1, i1, i32 }
@comms_102 = external global { i1, i1, i32 }
@comms_103 = external global { i1, i1, i32 }
@comms_104 = external global { i1, i1, i32 }
@return_struct = external global { i1, i1, i32 }

; Function Attrs: norecurse nounwind uwtable
define dso_local void @_p_mergesort() local_unnamed_addr #0 {
  %1 = alloca [256 x i32], align 16, !partition !2, !start !3, !end !4
  %2 = alloca [256 x i32], align 16, !partition !2, !start !2, !end !3
  br label %3

; <label>:3:                                      ; preds = %0, %153
  %4 = phi i32 [ 1, %0 ], [ %154, %153 ], !partition !3, !start !5, !end !5
  %5 = shl i32 %4, 1, !partition !2, !start !2, !end !6
  %6 = sext i32 %5 to i64, !partition !3, !start !7, !end !5
  %7 = zext i32 %5 to i64, !partition !3, !start !6, !end !7
  %8 = mul i32 %4, -2, !partition !3, !start !2, !end !6
  %9 = zext i32 %5 to i64, !partition !2, !start !6, !end !7
  %10 = sext i32 %4 to i64, !partition !2, !start !7, !end !5
  %11 = sext i32 %4 to i64, !partition !2, !start !5, !end !8
  %12 = icmp sgt i32 %4, 0, !partition !3, !start !5, !end !8
  br label %13

; <label>:13:                                     ; preds = %3, %146
  %14 = phi i64 [ %6, %3 ], [ %152, %146 ], !partition !2, !start !9, !end !9
  %15 = phi i32 [ %4, %3 ], [ %151, %146 ], !partition !3, !start !10, !end !10
  %16 = phi i64 [ 0, %3 ], [ %150, %146 ], !partition !2, !start !11, !end !11
  %17 = phi i64 [ 0, %3 ], [ %147, %146 ], !partition !2, !start !12, !end !12
  %18 = phi i32 [ 0, %3 ], [ %148, %146 ], !partition !3, !start !11, !end !11
  %19 = sext i32 %15 to i64, !partition !2, !start !13, !end !14
  %20 = mul nsw i64 %16, %6, !partition !3, !start !11, !end !15
  %21 = getelementptr [256 x i32], [256 x i32]* %1, i64 0, i64 %20, !partition !2, !start !16, !end !17
  %22 = bitcast i32* %21 to i8*, !partition !2, !start !18, !end !19
  %23 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %20, !partition !2, !start !2, !end !6
  %24 = bitcast i32* %23 to i8*, !partition !2, !start !8, !end !16
  %25 = mul nuw i64 %16, %9, !partition !2, !start !10, !end !20
  %26 = trunc i64 %25 to i32, !partition !3, !start !21, !end !9
  %27 = add i32 %4, %26, !partition !3, !start !19, !end !22
  %28 = trunc i64 %25 to i32, !partition !2, !start !15, !end !23
  %29 = or i32 %28, 1, !partition !3, !start !24, !end !11
  %30 = icmp sgt i32 %27, %29, !partition !3, !start !25, !end !13
  %31 = select i1 %30, i32 %27, i32 %29, !partition !2, !start !17, !end !26
  %32 = trunc i64 %16 to i32, !partition !3, !start !16, !end !17
  %33 = mul i32 %8, %32, !partition !2, !start !7, !end !5
  %34 = add i32 %33, -1, !partition !3, !start !8, !end !16
  %35 = add i32 %31, %34, !partition !3, !start !23, !end !27
  %36 = zext i32 %35 to i64, !partition !3, !start !20, !end !28
  %37 = shl nuw nsw i64 %36, 2, !partition !3, !start !29, !end !21
  %38 = add nuw nsw i64 %37, 4, !partition !3, !start !2, !end !6
  %39 = sext i32 %15 to i64, !partition !3, !start !6, !end !7
  %40 = mul nsw i64 %16, %6, !partition !2, !start !11, !end !15
  %41 = getelementptr [256 x i32], [256 x i32]* %2, i64 0, i64 %40, !partition !2, !start !5, !end !8
  %42 = bitcast i32* %41 to i8*, !partition !2, !start !30, !end !24
  %43 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %40, !partition !2, !start !26, !end !31
  %44 = bitcast i32* %43 to i8*, !partition !2, !start !9, !end !25
  %45 = mul nuw i64 %16, %7, !partition !2, !start !27, !end !10
  %46 = trunc i64 %45 to i32, !partition !3, !start !9, !end !25
  %47 = add i32 %4, %46, !partition !3, !start !14, !end !30
  %48 = trunc i64 %45 to i32, !partition !3, !start !13, !end !14
  %49 = or i32 %48, 1, !partition !3, !start !5, !end !8
  %50 = icmp sgt i32 %47, %49, !partition !2, !start !25, !end !13
  %51 = select i1 %50, i32 %47, i32 %49, !partition !2, !start !19, !end !32
  %52 = trunc i64 %16 to i32, !partition !3, !start !28, !end !18
  %53 = mul i32 %8, %52, !partition !2, !start !24, !end !11
  %54 = add i32 %53, -1, !partition !2, !start !21, !end !9
  %55 = add i32 %51, %54, !partition !3, !start !27, !end !10
  %56 = zext i32 %55 to i64, !partition !2, !start !28, !end !18
  %57 = shl nuw nsw i64 %56, 2, !partition !3, !start !10, !end !20
  %58 = add nuw nsw i64 %57, 4, !partition !3, !start !30, !end !24
  %59 = add nsw i64 %17, %10, !partition !2, !start !23, !end !27
  %60 = add nsw i32 %18, %4, !partition !3, !start !17, !end !29
  %61 = add nsw i64 %59, %11, !partition !2, !start !32, !end !12
  %62 = add nsw i32 %60, %4, !partition !3, !start !18, !end !19
  %63 = add nsw i32 %62, -1, !partition !2, !start !20, !end !28
  %64 = icmp slt i64 %61, 257, !partition !3, !start !15, !end !23
  br i1 %64, label %66, label %65

; <label>:65:                                     ; preds = %13
  br i1 %12, label %107, label %108

; <label>:66:                                     ; preds = %13
  br i1 %12, label %67, label %70

; <label>:67:                                     ; preds = %66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %24, i64 %38, i1 false), !partition !2, !start !2, !end !2
  %68 = trunc i64 %59 to i32, !partition !2, !start !2, !end !2
  %69 = add nsw i32 %63, %68, !partition !2, !start !2, !end !2
  br label %76

; <label>:70:                                     ; preds = %76, %66
  %71 = icmp slt i64 %17, %61, !partition !2, !start !2, !end !6
  br i1 %71, label %72, label %146

; <label>:72:                                     ; preds = %70
  %73 = trunc i64 %61 to i32, !partition !2, !start !6, !end !7
  %74 = add i32 %73, -1, !partition !2, !start !2, !end !6
  %75 = trunc i64 %17 to i32, !partition !3, !start !2, !end !6
  br label %86

; <label>:76:                                     ; preds = %67, %76
  %77 = phi i64 [ %19, %67 ], [ %84, %76 ], !partition !2, !start !6, !end !6
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %77, !partition !2, !start !7, !end !5
  %79 = load i32, i32* %78, align 4, !tbaa !33, !partition !2, !start !37, !end !38
  %80 = trunc i64 %77 to i32, !partition !2, !start !2, !end !6
  %81 = sub i32 %69, %80, !partition !3, !start !5, !end !8
  %82 = sext i32 %81 to i64, !partition !3, !start !6, !end !7
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %82, !partition !2, !start !6, !end !7
  store i32 %79, i32* %83, align 4, !tbaa !33, !partition !2, !start !5, !end !37
  %84 = add nsw i64 %77, 1, !partition !3, !start !7, !end !5
  %85 = icmp slt i64 %84, %61, !partition !3, !start !2, !end !6
  br i1 %85, label %76, label %70

; <label>:86:                                     ; preds = %102, %72
  %87 = phi i64 [ %17, %72 ], [ %105, %102 ], !partition !3, !start !2, !end !2
  %88 = phi i32 [ %75, %72 ], [ %104, %102 ], !partition !3, !start !3, !end !3
  %89 = phi i32 [ %74, %72 ], [ %103, %102 ], !partition !3, !start !2, !end !2
  %90 = sext i32 %89 to i64, !partition !3, !start !3, !end !39
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %90, !partition !2, !start !39, !end !40
  %92 = load i32, i32* %91, align 4, !tbaa !33, !partition !2, !start !2, !end !3
  %93 = sext i32 %88 to i64, !partition !3, !start !39, !end !40
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %93, !partition !2, !start !40, !end !37
  %95 = load i32, i32* %94, align 4, !tbaa !33, !partition !2, !start !37, !end !38
  %96 = icmp slt i32 %92, %95, !partition !3, !start !40, !end !37
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %87, !partition !2, !start !3, !end !39
  br i1 %96, label %98, label %100

; <label>:98:                                     ; preds = %86
  store i32 %92, i32* %97, align 4, !tbaa !33, !partition !2, !start !2, !end !3
  %99 = add nsw i32 %89, -1, !partition !3, !start !3, !end !39
  br label %102

; <label>:100:                                    ; preds = %86
  store i32 %95, i32* %97, align 4, !tbaa !33, !partition !2, !start !2, !end !2
  %101 = add nsw i32 %88, 1, !partition !2, !start !2, !end !2
  br label %102

; <label>:102:                                    ; preds = %98, %100
  %103 = phi i32 [ %99, %98 ], [ %89, %100 ], !partition !3, !start !2, !end !2
  %104 = phi i32 [ %88, %98 ], [ %101, %100 ], !partition !2, !start !2, !end !2
  %105 = add nsw i64 %87, 1, !partition !2, !start !3, !end !39
  %106 = icmp eq i64 %105, %14, !partition !3, !start !2, !end !6
  br i1 %106, label %146, label %86

; <label>:107:                                    ; preds = %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %44, i64 %58, i1 false), !partition !2, !start !2, !end !2
  br label %108

; <label>:108:                                    ; preds = %107, %65
  %109 = icmp slt i64 %59, 257, !partition !2, !start !2, !end !6
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %108
  %111 = add i64 %59, 256, !partition !2, !start !2, !end !6
  br label %114

; <label>:112:                                    ; preds = %114, %108
  %113 = trunc i64 %17 to i32, !partition !2, !start !2, !end !6
  br label %125

; <label>:114:                                    ; preds = %114, %110
  %115 = phi i64 [ %39, %110 ], [ %122, %114 ], !partition !3, !start !40, !end !40
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %115, !partition !2, !start !2, !end !6
  %117 = load i32, i32* %116, align 4, !tbaa !33, !partition !2, !start !6, !end !39
  %118 = sub i64 %111, %115, !partition !3, !start !3, !end !39
  %119 = shl i64 %118, 32, !partition !3, !start !39, !end !40
  %120 = ashr exact i64 %119, 32, !partition !3, !start !40, !end !37
  %121 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %120, !partition !2, !start !37, !end !41
  store i32 %117, i32* %121, align 4, !tbaa !33, !partition !2, !start !41, !end !42
  %122 = add nsw i64 %115, 1, !partition !2, !start !40, !end !37
  %123 = trunc i64 %122 to i32, !partition !2, !start !39, !end !40
  %124 = icmp eq i32 %123, 257, !partition !3, !start !37, !end !41
  br i1 %124, label %112, label %114

; <label>:125:                                    ; preds = %141, %112
  %126 = phi i64 [ %17, %112 ], [ %144, %141 ], !partition !3, !start !2, !end !2
  %127 = phi i32 [ 256, %112 ], [ %143, %141 ], !partition !3, !start !2, !end !2
  %128 = phi i32 [ %113, %112 ], [ %142, %141 ], !partition !3, !start !3, !end !3
  %129 = sext i32 %127 to i64, !partition !3, !start !3, !end !39
  %130 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %129, !partition !2, !start !43, !end !38
  %131 = load i32, i32* %130, align 4, !tbaa !33, !partition !2, !start !2, !end !3
  %132 = sext i32 %128 to i64, !partition !3, !start !39, !end !40
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %132, !partition !2, !start !3, !end !39
  %134 = load i32, i32* %133, align 4, !tbaa !33, !partition !2, !start !39, !end !44
  %135 = icmp slt i32 %131, %134, !partition !3, !start !40, !end !37
  %136 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %126, !partition !2, !start !44, !end !43
  br i1 %135, label %137, label %139

; <label>:137:                                    ; preds = %125
  store i32 %131, i32* %136, align 4, !tbaa !33, !partition !2, !start !2, !end !3
  %138 = add nsw i32 %127, -1, !partition !3, !start !3, !end !39
  br label %141

; <label>:139:                                    ; preds = %125
  store i32 %134, i32* %136, align 4, !tbaa !33, !partition !2, !start !2, !end !2
  %140 = add nsw i32 %128, 1, !partition !2, !start !2, !end !2
  br label %141

; <label>:141:                                    ; preds = %137, %139
  %142 = phi i32 [ %128, %137 ], [ %140, %139 ], !partition !2, !start !2, !end !2
  %143 = phi i32 [ %138, %137 ], [ %127, %139 ], !partition !3, !start !2, !end !2
  %144 = add nsw i64 %126, 1, !partition !2, !start !3, !end !39
  %145 = icmp eq i64 %144, 257, !partition !3, !start !2, !end !6
  br i1 %145, label %146, label %125

; <label>:146:                                    ; preds = %141, %102, %70
  %147 = add nsw i64 %17, %6, !partition !3, !start !7, !end !5
  %148 = add nsw i32 %18, %5, !partition !2, !start !2, !end !6
  %149 = icmp slt i64 %147, 256, !partition !2, !start !6, !end !7
  %150 = add nuw nsw i64 %16, 1, !partition !3, !start !6, !end !7
  %151 = add i32 %15, %5, !partition !2, !start !7, !end !5
  %152 = add i64 %14, %6, !partition !3, !start !2, !end !6
  br i1 %149, label %13, label %153

; <label>:153:                                    ; preds = %146
  %154 = shl nsw i32 %4, 1, !partition !2, !start !2, !end !6
  %155 = icmp slt i32 %4, 128, !partition !3, !start !2, !end !6
  br i1 %155, label %3, label %156

; <label>:156:                                    ; preds = %153
  ret void, !partition !2, !start !2, !end !3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  tail call void @replace__p_mergesort()
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !33
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 256
  br i1 %9, label %10, label %3

; <label>:10:                                     ; preds = %3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

declare void @_p_mergesort_0(i8*)

declare void @_p_mergesort_1(i8*)

define void @replace__p_mergesort() {
entry:
  %0 = call i8* @init()
  call void @start_device_execution()
  %a = call i32 @address_for_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @a.1, i32 0, i32 0), i8* %0)
  call void @retrieve_global(i8* bitcast ([256 x i32]* @a to i8*), i32 trunc (i64 mul nuw (i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 256) to i32), i32 %a, i8* %0)
  call void @end_device_execution()
  ret void
}

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!2 = !{!"0"}
!3 = !{!"1"}
!4 = !{!"2"}
!5 = !{!"9"}
!6 = !{!"3"}
!7 = !{!"6"}
!8 = !{!"12"}
!9 = !{!"27"}
!10 = !{!"57"}
!11 = !{!"45"}
!12 = !{!"73"}
!13 = !{!"33"}
!14 = !{!"36"}
!15 = !{!"48"}
!16 = !{!"15"}
!17 = !{!"18"}
!18 = !{!"66"}
!19 = !{!"69"}
!20 = !{!"60"}
!21 = !{!"24"}
!22 = !{!"72"}
!23 = !{!"51"}
!24 = !{!"42"}
!25 = !{!"30"}
!26 = !{!"19"}
!27 = !{!"54"}
!28 = !{!"63"}
!29 = !{!"21"}
!30 = !{!"39"}
!31 = !{!"22"}
!32 = !{!"70"}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!"10"}
!38 = !{!"11"}
!39 = !{!"4"}
!40 = !{!"7"}
!41 = !{!"13"}
!42 = !{!"14"}
!43 = !{!"8"}
!44 = !{!"5"}
