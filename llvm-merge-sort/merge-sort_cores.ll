; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], section ".dram"
@alloca = global [256 x i32] zeroinitializer, section ".dram", align 16
@alloca.1 = global [256 x i32] zeroinitializer, section ".dram", align 16
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_mergesort_0, void (i8*)* @_p_mergesort_1]
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i64, i1, i32 }
@comms_6 = external global { i64, i1, i32 }
@comms_7 = external global { i64, i1, i32 }
@comms_8 = external global { i64, i1, i32 }
@comms_9 = external global { i32, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
@comms_11 = external global { i32, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i32, i1, i32 }
@comms_14 = external global { i32, i1, i32 }
@comms_15 = external global { i64, i1, i32 }
@comms_16 = external global { i64, i1, i32 }
@comms_17 = external global { i64, i1, i32 }
@comms_18 = external global { i32, i1, i32 }
@comms_19 = external global { i32, i1, i32 }
@comms_20 = external global { i1, i1, i32 }
@comms_21 = external global { i32, i1, i32 }
@comms_22 = external global { i64, i1, i32 }
@comms_23 = external global { i32, i1, i32 }
@comms_24 = external global { i32, i1, i32 }
@comms_25 = external global { i32, i1, i32 }
@comms_26 = external global { i32, i1, i32 }
@comms_27 = external global { i64, i1, i32 }
@comms_28 = external global { i32, i1, i32 }
@comms_29 = external global { i64, i1, i32 }
@comms_30 = external global { i64, i1, i32 }
@comms_31 = external global { i64, i1, i32 }
@comms_32 = external global { i64, i1, i32 }
@comms_33 = external global { i64, i1, i32 }
@comms_34 = external global { i64, i1, i32 }
@comms_35 = external global { i64, i1, i32 }
@comms_36 = external global { i64, i1, i32 }
@comms_37 = external global { i64, i1, i32 }
@comms_38 = external global { i64, i1, i32 }
@comms_39 = external global { i32, i1, i32 }
@comms_40 = external global { i32, i1, i32 }
@comms_41 = external global { i64, i1, i32 }
@comms_42 = external global { i32, i1, i32 }
@comms_43 = external global { i64, i1, i32 }
@comms_44 = external global { i32, i1, i32 }
@comms_45 = external global { i32, i1, i32 }
@comms_46 = external global { i64, i1, i32 }
@comms_47 = external global { i32, i1, i32 }
@comms_48 = external global { i32, i1, i32 }
@comms_49 = external global { i64, i1, i32 }
@comms_50 = external global { i64, i1, i32 }
@comms_51 = external global { i64, i1, i32 }
@comms_52 = external global { i32, i1, i32 }
@comms_53 = external global { i64, i1, i32 }
@comms_54 = external global { i32, i1, i32 }
@comms_55 = external global { i64, i1, i32 }
@comms_56 = external global { i64, i1, i32 }
@comms_57 = external global { i64, i1, i32 }
@comms_58 = external global { i64, i1, i32 }
@comms_59 = external global { i64, i1, i32 }
@comms_60 = external global { i64, i1, i32 }
@comms_61 = external global { i32, i1, i32 }
@comms_62 = external global { i32, i1, i32 }
@comms_63 = external global { i64, i1, i32 }
@comms_64 = external global { i64, i1, i32 }
@comms_65 = external global { i64, i1, i32 }
@comms_66 = external global { i64, i1, i32 }
@comms_67 = external global { i64, i1, i32 }
@comms_68 = external global { i64, i1, i32 }
@comms_69 = external global { i64, i1, i32 }
@comms_70 = external global { i32, i1, i32 }
@comms_71 = external global { i32, i1, i32 }
@comms_72 = external global { i64, i1, i32 }
@comms_73 = external global { i32, i1, i32 }
@comms_74 = external global { i64, i1, i32 }
@comms_75 = external global { i64, i1, i32 }
@comms_76 = external global { i64, i1, i32 }
@comms_77 = external global { i64, i1, i32 }
@comms_78 = external global { i64, i1, i32 }
@comms_79 = external global { i32, i1, i32 }
@comms_80 = external global { i32, i1, i32 }
@comms_81 = external global { i32, i1, i32 }
@comms_82 = external global { i64, i1, i32 }
@comms_83 = external global { i64, i1, i32 }
@comms_84 = external global { i64, i1, i32 }
@comms_85 = external global { i32, i1, i32 }
@comms_86 = external global { i32, i1, i32 }
@comms_87 = external global { i32, i1, i32 }
@comms_88 = external global { i32, i1, i32 }
@comms_89 = external global { i1, i1, i32 }
@comms_90 = external global { i1, i1, i32 }
@comms_91 = external global { i1, i1, i32 }
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
@return_struct = external global { i1, i1, i32 }

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @free_comms(i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_token(i32, i32, i8*)

declare i8* @receive_token(i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @print_int(i32)

declare i32 @printf(i8*, ...)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @_p_mergesort_0(i8*) {
entry:
  %send_alloca275 = alloca i1, !reason !0
  %send_alloca267 = alloca i1, !reason !0
  %send_alloca265 = alloca i1, !reason !0
  %send_alloca263 = alloca i1, !reason !0
  %send_alloca252 = alloca i1, !reason !0
  %send_alloca250 = alloca i1, !reason !0
  %send_alloca240 = alloca i32, !reason !1
  %send_alloca238 = alloca i32, !reason !1
  %send_alloca236 = alloca i64, !reason !1
  %send_alloca234 = alloca i64, !reason !1
  %send_alloca229 = alloca i32, !reason !1
  %send_alloca221 = alloca i64, !reason !1
  %send_alloca219 = alloca i64, !reason !1
  %send_alloca217 = alloca i64, !reason !1
  %send_alloca215 = alloca i64, !reason !1
  %send_alloca208 = alloca i64, !reason !1
  %send_alloca206 = alloca i32, !reason !1
  %send_alloca201 = alloca i64, !reason !2
  %send_alloca196 = alloca i64, !reason !2
  %send_alloca194 = alloca i64, !reason !2
  %send_alloca192 = alloca i64, !reason !2
  %send_alloca183 = alloca i32, !reason !2
  %send_alloca181 = alloca i32, !reason !2
  %send_alloca173 = alloca i64, !reason !2
  %send_alloca168 = alloca i64, !reason !2
  %send_alloca163 = alloca i32, !reason !2
  %send_alloca161 = alloca i64, !reason !2
  %send_alloca152 = alloca i64, !reason !2
  %send_alloca146 = alloca i32, !reason !2
  %send_alloca144 = alloca i32, !reason !2
  %send_alloca139 = alloca i32, !reason !2
  %send_alloca137 = alloca i32, !reason !2
  %send_alloca132 = alloca i32, !reason !2
  %send_alloca127 = alloca i32, !reason !2
  %send_alloca123 = alloca i32, !reason !2
  %send_alloca115 = alloca i64, !reason !2
  %send_alloca101 = alloca i64, !reason !2
  %send_alloca93 = alloca i32, !reason !2
  %send_alloca91 = alloca i64, !reason !2
  %send_alloca89 = alloca i32, !reason !2
  %send_alloca84 = alloca i32, !reason !2
  %send_alloca82 = alloca i32, !reason !2
  %send_alloca71 = alloca i32, !reason !2
  %send_alloca57 = alloca i32, !reason !2
  %send_alloca52 = alloca i32, !reason !2
  %send_alloca50 = alloca i32, !reason !2
  %send_alloca48 = alloca i1, !reason !2
  %send_alloca34 = alloca i64, !reason !2
  %send_alloca27 = alloca i32, !reason !2
  %send_alloca = alloca i32, !reason !2
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !2
  %bitcast = bitcast i8* %receive to i32*, !reason !2
  %receive_load = load i32, i32* %bitcast, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %1 = shl i32 %receive_load, 1, !partition !3, !start !3, !end !4
  %2 = sext i32 %1 to i64, !partition !3, !start !5, !end !6
  store i32 %1, i32* %send_alloca, !reason !2
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !2
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !2
  %receive24 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !2
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !2
  %receive_load26 = load i32, i32* %bitcast25, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %3 = mul i32 %receive_load26, -2, !partition !3, !start !7, !end !5
  store i32 %1, i32* %send_alloca27, !reason !2
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !2
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !2
  %receive29 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !2
  %bitcast30 = bitcast i8* %receive29 to i32*, !reason !2
  %receive_load31 = load i32, i32* %bitcast30, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %4 = icmp sgt i32 %receive_load31, 0, !partition !3, !start !4, !end !7
  store i64 %2, i64* %send_alloca208, !reason !1
  %send_cast209 = bitcast i64* %send_alloca208 to i8*, !reason !1
  call void @send(i8* %send_cast209, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_72 to i32), i8* %0), !reason !1
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !8
  %bitcast210 = bitcast i8* %repair_phi to i32*, !reason !8
  %receive_load211 = load i32, i32* %bitcast210, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi = phi i32 [ %receive_load211, %l ], [ %59, %l21 ]
  %new_phi32 = phi i64 [ 0, %l ], [ %receive_load214, %l21 ]
  %new_phi33 = phi i32 [ 0, %l ], [ %57, %l21 ]
  %5 = sext i32 %new_phi to i64, !partition !3, !start !9, !end !10
  store i64 %2, i64* %send_alloca34, !reason !2
  %send_cast35 = bitcast i64* %send_alloca34 to i8*, !reason !2
  call void @send(i8* %send_cast35, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_5 to i32), i8* %0), !reason !2
  %receive36 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !2
  %bitcast37 = bitcast i8* %receive36 to i64*, !reason !2
  %receive_load38 = load i64, i64* %bitcast37, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %6 = getelementptr [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load38, !partition !3, !start !11, !end !12
  %7 = bitcast i32* %6 to i8*, !partition !3, !start !12, !end !13
  %receive39 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !2
  %bitcast40 = bitcast i8* %receive39 to i64*, !reason !2
  %receive_load41 = load i64, i64* %bitcast40, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %8 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load41, !partition !3, !start !14, !end !15
  %9 = bitcast i32* %8 to i8*, !partition !3, !start !10, !end !16
  %receive42 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !2
  %bitcast43 = bitcast i8* %receive42 to i64*, !reason !2
  %receive_load44 = load i64, i64* %bitcast43, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %10 = trunc i64 %receive_load44 to i32, !partition !3, !start !17, !end !18
  %11 = or i32 %10, 1, !partition !3, !start !18, !end !19
  %receive45 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !2
  %bitcast46 = bitcast i8* %receive45 to i32*, !reason !2
  %receive_load47 = load i32, i32* %bitcast46, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %12 = icmp sgt i32 %receive_load47, %11, !partition !3, !start !20, !end !21
  store i1 %12, i1* %send_alloca48, !reason !2
  %send_cast49 = bitcast i1* %send_alloca48 to i8*, !reason !2
  call void @send(i8* %send_cast49, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !2
  store i32 %11, i32* %send_alloca50, !reason !2
  %send_cast51 = bitcast i32* %send_alloca50 to i8*, !reason !2
  call void @send(i8* %send_cast51, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !2
  store i32 %3, i32* %send_alloca52, !reason !2
  %send_cast53 = bitcast i32* %send_alloca52 to i8*, !reason !2
  call void @send(i8* %send_cast53, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !2
  %receive54 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !2
  %bitcast55 = bitcast i8* %receive54 to i32*, !reason !2
  %receive_load56 = load i32, i32* %bitcast55, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %13 = add i32 %receive_load56, -1, !partition !3, !start !19, !end !22
  store i32 %13, i32* %send_alloca57, !reason !2
  %send_cast58 = bitcast i32* %send_alloca57 to i8*, !reason !2
  call void @send(i8* %send_cast58, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i8* %0), !reason !2
  %receive59 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_15 to i32), i8* %0), !reason !2
  %bitcast60 = bitcast i8* %receive59 to i64*, !reason !2
  %receive_load61 = load i64, i64* %bitcast60, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_15 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %14 = add nuw nsw i64 %receive_load61, 4, !partition !3, !start !3, !end !4
  %15 = sext i32 %new_phi to i64, !partition !3, !start !21, !end !23
  %receive62 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_16 to i32), i8* %0), !reason !2
  %bitcast63 = bitcast i8* %receive62 to i64*, !reason !2
  %receive_load64 = load i64, i64* %bitcast63, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_16 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %16 = mul nsw i64 %receive_load64, %2, !partition !3, !start !13, !end !24
  %17 = getelementptr [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %16, !partition !3, !start !25, !end !11
  %18 = bitcast i32* %17 to i8*, !partition !3, !start !24, !end !14
  %19 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %16, !partition !3, !start !26, !end !27
  %20 = bitcast i32* %19 to i8*, !partition !3, !start !16, !end !28
  %receive65 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_17 to i32), i8* %0), !reason !2
  %bitcast66 = bitcast i8* %receive65 to i64*, !reason !2
  %receive_load67 = load i64, i64* %bitcast66, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_17 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %21 = trunc i64 %receive_load67 to i32, !partition !3, !start !23, !end !9
  %receive68 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i8* %0), !reason !2
  %bitcast69 = bitcast i8* %receive68 to i32*, !reason !2
  %receive_load70 = load i32, i32* %bitcast69, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %22 = add i32 %receive_load70, %21, !partition !3, !start !29, !end !26
  store i32 %22, i32* %send_alloca71, !reason !2
  %send_cast72 = bitcast i32* %send_alloca71 to i8*, !reason !2
  call void @send(i8* %send_cast72, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i8* %0), !reason !2
  %receive73 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_20 to i32), i8* %0), !reason !2
  %bitcast74 = bitcast i8* %receive73 to i1*, !reason !2
  %receive_load75 = load i1, i1* %bitcast74, !reason !2
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_20 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !2
  %receive76 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i8* %0), !reason !2
  %bitcast77 = bitcast i8* %receive76 to i32*, !reason !2
  %receive_load78 = load i32, i32* %bitcast77, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %23 = select i1 %receive_load75, i32 %22, i32 %receive_load78, !partition !3, !start !7, !end !17
  %receive79 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i8* %0), !reason !2
  %bitcast80 = bitcast i8* %receive79 to i64*, !reason !2
  %receive_load81 = load i64, i64* %bitcast80, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %24 = trunc i64 %receive_load81 to i32, !partition !3, !start !22, !end !29
  store i32 %3, i32* %send_alloca82, !reason !2
  %send_cast83 = bitcast i32* %send_alloca82 to i8*, !reason !2
  call void @send(i8* %send_cast83, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i8* %0), !reason !2
  store i32 %24, i32* %send_alloca84, !reason !2
  %send_cast85 = bitcast i32* %send_alloca84 to i8*, !reason !2
  call void @send(i8* %send_cast85, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !2
  %receive86 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i8* %0), !reason !2
  %bitcast87 = bitcast i8* %receive86 to i32*, !reason !2
  %receive_load88 = load i32, i32* %bitcast87, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %25 = add i32 %receive_load88, -1, !partition !3, !start !27, !end !25
  %26 = add i32 %23, %25, !partition !3, !start !15, !end !20
  store i32 %26, i32* %send_alloca89, !reason !2
  %send_cast90 = bitcast i32* %send_alloca89 to i8*, !reason !2
  call void @send(i8* %send_cast90, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i8* %0), !reason !2
  store i64 %new_phi32, i64* %send_alloca91, !reason !2
  %send_cast92 = bitcast i64* %send_alloca91 to i8*, !reason !2
  call void @send(i8* %send_cast92, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !2
  store i32 %new_phi33, i32* %send_alloca93, !reason !2
  %send_cast94 = bitcast i32* %send_alloca93 to i8*, !reason !2
  call void @send(i8* %send_cast94, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !2
  %receive95 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_29 to i32), i8* %0), !reason !2
  %bitcast96 = bitcast i8* %receive95 to i64*, !reason !2
  %receive_load97 = load i64, i64* %bitcast96, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_29 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %receive98 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_30 to i32), i8* %0), !reason !2
  %bitcast99 = bitcast i8* %receive98 to i64*, !reason !2
  %receive_load100 = load i64, i64* %bitcast99, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_30 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %27 = add nsw i64 %receive_load97, %receive_load100, !partition !3, !start !4, !end !7
  store i64 %27, i64* %send_alloca101, !reason !2
  %send_cast102 = bitcast i64* %send_alloca101 to i8*, !reason !2
  call void @send(i8* %send_cast102, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_31 to i32), i8* %0), !reason !2
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_89 to i32), i8* %0), !reason !8
  %bitcast248 = bitcast i8* %broadcast to i1*, !reason !8
  %receive_load249 = load i1, i1* %bitcast248, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_89 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load249, label %l3, label %l2

l2:                                               ; preds = %l1
  store i1 %4, i1* %send_alloca250, !reason !0
  %send_cast251 = bitcast i1* %send_alloca250 to i8*, !reason !0
  call void @send(i8* %send_cast251, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_90 to i32), i8* %0), !reason !0
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  store i1 %4, i1* %send_alloca263, !reason !0
  %send_cast264 = bitcast i1* %send_alloca263 to i8*, !reason !0
  call void @send(i8* %send_cast264, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i8* %0), !reason !0
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %9, i64 %14, i1 false), !partition !3, !start !3, !end !3
  %receive154 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i8* %0), !reason !2
  %bitcast155 = bitcast i8* %receive154 to i64*, !reason !2
  %receive_load156 = load i64, i64* %bitcast155, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %28 = trunc i64 %receive_load156 to i32, !partition !3, !start !3, !end !3
  %receive157 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !2
  %bitcast158 = bitcast i8* %receive157 to i32*, !reason !2
  %receive_load159 = load i32, i32* %bitcast158, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %29 = add nsw i32 %receive_load159, %28, !partition !3, !start !3, !end !3
  br label %l7

l5:                                               ; preds = %l7, %l3
  %30 = icmp slt i64 %new_phi32, %27, !partition !3, !start !3, !end !4
  store i1 %30, i1* %send_alloca267, !reason !0
  %send_cast268 = bitcast i1* %send_alloca267 to i8*, !reason !0
  call void @send(i8* %send_cast268, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !0
  br i1 %30, label %l6, label %l21

l6:                                               ; preds = %l5
  %31 = trunc i64 %27 to i32, !partition !3, !start !4, !end !7
  %32 = add i32 %31, -1, !partition !3, !start !3, !end !4
  store i64 %new_phi32, i64* %send_alloca173, !reason !2
  %send_cast174 = bitcast i64* %send_alloca173 to i8*, !reason !2
  call void @send(i8* %send_cast174, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i8* %0), !reason !2
  store i64 %new_phi32, i64* %send_alloca234, !reason !1
  %send_cast235 = bitcast i64* %send_alloca234 to i8*, !reason !1
  call void @send(i8* %send_cast235, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i8* %0), !reason !1
  store i32 %32, i32* %send_alloca240, !reason !1
  %send_cast241 = bitcast i32* %send_alloca240 to i8*, !reason !1
  call void @send(i8* %send_cast241, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_86 to i32), i8* %0), !reason !1
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi160 = phi i64 [ %5, %l4 ], [ %receive_load233, %l7 ]
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %new_phi160, !partition !3, !start !30, !end !31
  %34 = load i32, i32* %33, align 4, !tbaa !32, !partition !3, !start !36, !end !30
  store i64 %new_phi160, i64* %send_alloca161, !reason !2
  %send_cast162 = bitcast i64* %send_alloca161 to i8*, !reason !2
  call void @send(i8* %send_cast162, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i8* %0), !reason !2
  store i32 %29, i32* %send_alloca163, !reason !2
  %send_cast164 = bitcast i32* %send_alloca163 to i8*, !reason !2
  call void @send(i8* %send_cast164, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i8* %0), !reason !2
  %receive165 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !2
  %bitcast166 = bitcast i8* %receive165 to i64*, !reason !2
  %receive_load167 = load i64, i64* %bitcast166, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load167, !partition !3, !start !37, !end !38
  store i32 %34, i32* %35, align 4, !tbaa !32, !partition !3, !start !38, !end !6
  store i64 %new_phi160, i64* %send_alloca168, !reason !2
  %send_cast169 = bitcast i64* %send_alloca168 to i8*, !reason !2
  call void @send(i8* %send_cast169, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !2
  %receive170 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !2
  %bitcast171 = bitcast i8* %receive170 to i64*, !reason !2
  %receive_load172 = load i64, i64* %bitcast171, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %36 = icmp slt i64 %receive_load172, %27, !partition !3, !start !31, !end !37
  %repair_phi231 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !8
  %bitcast232 = bitcast i8* %repair_phi231 to i64*, !reason !8
  %receive_load233 = load i64, i64* %bitcast232, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %36, i1* %send_alloca265, !reason !0
  %send_cast266 = bitcast i1* %send_alloca265 to i8*, !reason !0
  call void @send(i8* %send_cast266, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i8* %0), !reason !0
  br i1 %36, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %receive175 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i8* %0), !reason !2
  %bitcast176 = bitcast i8* %receive175 to i64*, !reason !2
  %receive_load177 = load i64, i64* %bitcast176, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load177, !partition !3, !start !39, !end !17
  %38 = load i32, i32* %37, align 4, !tbaa !32, !partition !3, !start !3, !end !36
  %receive178 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_60 to i32), i8* %0), !reason !2
  %bitcast179 = bitcast i8* %receive178 to i64*, !reason !2
  %receive_load180 = load i64, i64* %bitcast179, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_60 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load180, !partition !3, !start !17, !end !18
  %40 = load i32, i32* %39, align 4, !tbaa !32, !partition !3, !start !18, !end !38
  store i32 %38, i32* %send_alloca181, !reason !2
  %send_cast182 = bitcast i32* %send_alloca181 to i8*, !reason !2
  call void @send(i8* %send_cast182, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i8* %0), !reason !2
  store i32 %40, i32* %send_alloca183, !reason !2
  %send_cast184 = bitcast i32* %send_alloca183 to i8*, !reason !2
  call void @send(i8* %send_cast184, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i8* %0), !reason !2
  %receive185 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !2
  %bitcast186 = bitcast i8* %receive185 to i64*, !reason !2
  %receive_load187 = load i64, i64* %bitcast186, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load187, !partition !3, !start !36, !end !39
  %broadcast269 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !8
  %bitcast270 = bitcast i8* %broadcast269 to i1*, !reason !8
  %receive_load271 = load i1, i1* %bitcast270, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load271, label %l9, label %l10

l9:                                               ; preds = %l8
  store i32 %38, i32* %41, align 4, !tbaa !32, !partition !3, !start !3, !end !36
  %repair_phi242 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_87 to i32), i8* %0), !reason !8
  %bitcast243 = bitcast i8* %repair_phi242 to i32*, !reason !8
  %receive_load244 = load i32, i32* %bitcast243, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_87 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l11

l10:                                              ; preds = %l8
  store i32 %40, i32* %41, align 4, !tbaa !32, !partition !3, !start !3, !end !36
  %repair_phi245 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_88 to i32), i8* %0), !reason !8
  %bitcast246 = bitcast i8* %repair_phi245 to i32*, !reason !8
  %receive_load247 = load i32, i32* %bitcast246, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_88 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l11

l11:                                              ; preds = %l9, %l10
  %new_phi188 = phi i32 [ %receive_load244, %l9 ], [ %receive_load247, %l10 ]
  %receive189 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !2
  %bitcast190 = bitcast i8* %receive189 to i64*, !reason !2
  %receive_load191 = load i64, i64* %bitcast190, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %42 = add nsw i64 %receive_load191, 1, !partition !3, !start !3, !end !4
  store i64 %42, i64* %send_alloca192, !reason !2
  %send_cast193 = bitcast i64* %send_alloca192 to i8*, !reason !2
  call void @send(i8* %send_cast193, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !2
  store i64 %42, i64* %send_alloca236, !reason !1
  %send_cast237 = bitcast i64* %send_alloca236 to i8*, !reason !1
  call void @send(i8* %send_cast237, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_84 to i32), i8* %0), !reason !1
  store i32 %new_phi188, i32* %send_alloca238, !reason !1
  %send_cast239 = bitcast i32* %send_alloca238 to i8*, !reason !1
  call void @send(i8* %send_cast239, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i8* %0), !reason !1
  %broadcast272 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !8
  %bitcast273 = bitcast i8* %broadcast272 to i1*, !reason !8
  %receive_load274 = load i1, i1* %bitcast273, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load274, label %l21, label %l8

l12:                                              ; preds = %l2
  %receive103 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_32 to i32), i8* %0), !reason !2
  %bitcast104 = bitcast i8* %receive103 to i64*, !reason !2
  %receive_load105 = load i64, i64* %bitcast104, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_32 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %receive_load105, i1 false), !partition !3, !start !3, !end !3
  br label %l13

l13:                                              ; preds = %l12, %l2
  %receive106 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !2
  %bitcast107 = bitcast i8* %receive106 to i64*, !reason !2
  %receive_load108 = load i64, i64* %bitcast107, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %43 = icmp slt i64 %receive_load108, 257, !partition !3, !start !3, !end !4
  store i1 %43, i1* %send_alloca252, !reason !0
  %send_cast253 = bitcast i1* %send_alloca252 to i8*, !reason !0
  call void @send(i8* %send_cast253, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_91 to i32), i8* %0), !reason !0
  br i1 %43, label %l14, label %l15

l14:                                              ; preds = %l13
  %receive109 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_34 to i32), i8* %0), !reason !2
  %bitcast110 = bitcast i8* %receive109 to i64*, !reason !2
  %receive_load111 = load i64, i64* %bitcast110, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_34 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %44 = add i64 %receive_load111, 256, !partition !3, !start !3, !end !4
  store i64 %15, i64* %send_alloca215, !reason !1
  %send_cast216 = bitcast i64* %send_alloca215 to i8*, !reason !1
  call void @send(i8* %send_cast216, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !1
  br label %l16

l15:                                              ; preds = %l16, %l13
  %45 = trunc i64 %new_phi32 to i32, !partition !3, !start !3, !end !4
  store i64 %new_phi32, i64* %send_alloca219, !reason !1
  %send_cast220 = bitcast i64* %send_alloca219 to i8*, !reason !1
  call void @send(i8* %send_cast220, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !1
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive112 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i8* %0), !reason !2
  %bitcast113 = bitcast i8* %receive112 to i64*, !reason !2
  %receive_load114 = load i64, i64* %bitcast113, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load114, !partition !3, !start !3, !end !4
  %47 = load i32, i32* %46, align 4, !tbaa !32, !partition !3, !start !4, !end !39
  store i64 %44, i64* %send_alloca115, !reason !2
  %send_cast116 = bitcast i64* %send_alloca115 to i8*, !reason !2
  call void @send(i8* %send_cast116, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !2
  %receive117 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i8* %0), !reason !2
  %bitcast118 = bitcast i8* %receive117 to i64*, !reason !2
  %receive_load119 = load i64, i64* %bitcast118, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load119, !partition !3, !start !18, !end !19
  store i32 %47, i32* %48, align 4, !tbaa !32, !partition !3, !start !19, !end !40
  %receive120 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i8* %0), !reason !2
  %bitcast121 = bitcast i8* %receive120 to i64*, !reason !2
  %receive_load122 = load i64, i64* %bitcast121, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %49 = add nsw i64 %receive_load122, 1, !partition !3, !start !17, !end !18
  %50 = trunc i64 %49 to i32, !partition !3, !start !39, !end !17
  store i32 %50, i32* %send_alloca123, !reason !2
  %send_cast124 = bitcast i32* %send_alloca123 to i8*, !reason !2
  call void @send(i8* %send_cast124, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_39 to i32), i8* %0), !reason !2
  store i64 %49, i64* %send_alloca217, !reason !1
  %send_cast218 = bitcast i64* %send_alloca217 to i8*, !reason !1
  call void @send(i8* %send_cast218, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i8* %0), !reason !1
  %broadcast254 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i8* %0), !reason !8
  %bitcast255 = bitcast i8* %broadcast254 to i1*, !reason !8
  %receive_load256 = load i1, i1* %bitcast255, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load256, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi125 = phi i32 [ 256, %l15 ], [ %receive_load225, %l20 ]
  %new_phi126 = phi i32 [ %45, %l15 ], [ %new_phi148, %l20 ]
  store i32 %new_phi125, i32* %send_alloca127, !reason !2
  %send_cast128 = bitcast i32* %send_alloca127 to i8*, !reason !2
  call void @send(i8* %send_cast128, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_40 to i32), i8* %0), !reason !2
  %receive129 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_41 to i32), i8* %0), !reason !2
  %bitcast130 = bitcast i8* %receive129 to i64*, !reason !2
  %receive_load131 = load i64, i64* %bitcast130, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_41 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load131, !partition !3, !start !39, !end !17
  %52 = load i32, i32* %51, align 4, !tbaa !32, !partition !3, !start !4, !end !39
  store i32 %new_phi126, i32* %send_alloca132, !reason !2
  %send_cast133 = bitcast i32* %send_alloca132 to i8*, !reason !2
  call void @send(i8* %send_cast133, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_42 to i32), i8* %0), !reason !2
  %receive134 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !2
  %bitcast135 = bitcast i8* %receive134 to i64*, !reason !2
  %receive_load136 = load i64, i64* %bitcast135, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load136, !partition !3, !start !17, !end !18
  %54 = load i32, i32* %53, align 4, !tbaa !32, !partition !3, !start !18, !end !38
  store i32 %52, i32* %send_alloca137, !reason !2
  %send_cast138 = bitcast i32* %send_alloca137 to i8*, !reason !2
  call void @send(i8* %send_cast138, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i8* %0), !reason !2
  store i32 %54, i32* %send_alloca139, !reason !2
  %send_cast140 = bitcast i32* %send_alloca139 to i8*, !reason !2
  call void @send(i8* %send_cast140, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i8* %0), !reason !2
  %receive141 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !2
  %bitcast142 = bitcast i8* %receive141 to i64*, !reason !2
  %receive_load143 = load i64, i64* %bitcast142, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load143, !partition !3, !start !3, !end !4
  %broadcast257 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i8* %0), !reason !8
  %bitcast258 = bitcast i8* %broadcast257 to i1*, !reason !8
  %receive_load259 = load i1, i1* %bitcast258, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load259, label %l18, label %l19

l18:                                              ; preds = %l17
  store i32 %52, i32* %55, align 4, !tbaa !32, !partition !3, !start !3, !end !36
  store i32 %new_phi125, i32* %send_alloca146, !reason !2
  %send_cast147 = bitcast i32* %send_alloca146 to i8*, !reason !2
  call void @send(i8* %send_cast147, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i8* %0), !reason !2
  br label %l20

l19:                                              ; preds = %l17
  store i32 %54, i32* %55, align 4, !tbaa !32, !partition !3, !start !3, !end !36
  store i32 %new_phi126, i32* %send_alloca144, !reason !2
  %send_cast145 = bitcast i32* %send_alloca144 to i8*, !reason !2
  call void @send(i8* %send_cast145, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !2
  %repair_phi226 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_80 to i32), i8* %0), !reason !8
  %bitcast227 = bitcast i8* %repair_phi226 to i32*, !reason !8
  %receive_load228 = load i32, i32* %bitcast227, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_80 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i32 %new_phi125, i32* %send_alloca229, !reason !1
  %send_cast230 = bitcast i32* %send_alloca229 to i8*, !reason !1
  call void @send(i8* %send_cast230, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i8* %0), !reason !1
  br label %l20

l20:                                              ; preds = %l18, %l19
  %new_phi148 = phi i32 [ %new_phi126, %l18 ], [ %receive_load228, %l19 ]
  %receive149 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !2
  %bitcast150 = bitcast i8* %receive149 to i64*, !reason !2
  %receive_load151 = load i64, i64* %bitcast150, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %56 = add nsw i64 %receive_load151, 1, !partition !3, !start !3, !end !4
  store i64 %56, i64* %send_alloca152, !reason !2
  %send_cast153 = bitcast i64* %send_alloca152 to i8*, !reason !2
  call void @send(i8* %send_cast153, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i8* %0), !reason !2
  store i64 %56, i64* %send_alloca221, !reason !1
  %send_cast222 = bitcast i64* %send_alloca221 to i8*, !reason !1
  call void @send(i8* %send_cast222, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i8* %0), !reason !1
  %repair_phi223 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i8* %0), !reason !8
  %bitcast224 = bitcast i8* %repair_phi223 to i32*, !reason !8
  %receive_load225 = load i32, i32* %bitcast224, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  %broadcast260 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i8* %0), !reason !8
  %bitcast261 = bitcast i8* %broadcast260 to i1*, !reason !8
  %receive_load262 = load i1, i1* %bitcast261, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load262, label %l21, label %l17

l21:                                              ; preds = %l11, %l5, %l20
  store i64 %new_phi32, i64* %send_alloca194, !reason !2
  %send_cast195 = bitcast i64* %send_alloca194 to i8*, !reason !2
  call void @send(i8* %send_cast195, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i8* %0), !reason !2
  store i64 %2, i64* %send_alloca196, !reason !2
  %send_cast197 = bitcast i64* %send_alloca196 to i8*, !reason !2
  call void @send(i8* %send_cast197, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i8* %0), !reason !2
  %57 = add nsw i32 %new_phi33, %1, !partition !3, !start !7, !end !5
  %receive198 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i8* %0), !reason !2
  %bitcast199 = bitcast i8* %receive198 to i64*, !reason !2
  %receive_load200 = load i64, i64* %bitcast199, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %58 = icmp slt i64 %receive_load200, 256, !partition !3, !start !3, !end !4
  %59 = add i32 %new_phi, %1, !partition !3, !start !4, !end !7
  store i64 %2, i64* %send_alloca201, !reason !2
  %send_cast202 = bitcast i64* %send_alloca201 to i8*, !reason !2
  call void @send(i8* %send_cast202, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !2
  %repair_phi212 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !8
  %bitcast213 = bitcast i8* %repair_phi212 to i64*, !reason !8
  %receive_load214 = load i64, i64* %bitcast213, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %58, i1* %send_alloca275, !reason !0
  %send_cast276 = bitcast i1* %send_alloca275 to i8*, !reason !0
  call void @send(i8* %send_cast276, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !0
  br i1 %58, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive203 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !2
  %bitcast204 = bitcast i8* %receive203 to i32*, !reason !2
  %receive_load205 = load i32, i32* %bitcast204, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %60 = shl nsw i32 %receive_load205, 1, !partition !3, !start !3, !end !4
  store i32 %60, i32* %send_alloca206, !reason !1
  %send_cast207 = bitcast i32* %send_alloca206 to i8*, !reason !1
  call void @send(i8* %send_cast207, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i8* %0), !reason !1
  %broadcast277 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !8
  %bitcast278 = bitcast i8* %broadcast277 to i1*, !reason !8
  %receive_load279 = load i1, i1* %bitcast278, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load279, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @_p_mergesort_1(i8*) {
entry:
  %send_alloca278 = alloca i1, !reason !0
  %send_alloca273 = alloca i1, !reason !0
  %send_alloca271 = alloca i1, !reason !0
  %send_alloca260 = alloca i1, !reason !0
  %send_alloca258 = alloca i1, !reason !0
  %send_alloca256 = alloca i1, !reason !0
  %send_alloca249 = alloca i1, !reason !0
  %send_alloca247 = alloca i32, !reason !1
  %send_alloca245 = alloca i32, !reason !1
  %send_alloca231 = alloca i64, !reason !1
  %send_alloca226 = alloca i32, !reason !1
  %send_alloca224 = alloca i32, !reason !1
  %send_alloca210 = alloca i64, !reason !1
  %send_alloca208 = alloca i32, !reason !1
  %send_alloca201 = alloca i32, !reason !2
  %send_alloca196 = alloca i64, !reason !2
  %send_alloca185 = alloca i64, !reason !2
  %send_alloca182 = alloca i64, !reason !2
  %send_alloca174 = alloca i64, !reason !2
  %send_alloca172 = alloca i64, !reason !2
  %send_alloca164 = alloca i64, !reason !2
  %send_alloca159 = alloca i64, !reason !2
  %send_alloca151 = alloca i32, !reason !2
  %send_alloca149 = alloca i64, !reason !2
  %send_alloca144 = alloca i64, !reason !2
  %send_alloca135 = alloca i64, !reason !2
  %send_alloca127 = alloca i64, !reason !2
  %send_alloca122 = alloca i64, !reason !2
  %send_alloca113 = alloca i64, !reason !2
  %send_alloca111 = alloca i64, !reason !2
  %send_alloca106 = alloca i64, !reason !2
  %send_alloca103 = alloca i64, !reason !2
  %send_alloca101 = alloca i64, !reason !2
  %send_alloca99 = alloca i64, !reason !2
  %send_alloca94 = alloca i64, !reason !2
  %send_alloca92 = alloca i64, !reason !2
  %send_alloca81 = alloca i32, !reason !2
  %send_alloca73 = alloca i64, !reason !2
  %send_alloca71 = alloca i32, !reason !2
  %send_alloca69 = alloca i1, !reason !2
  %send_alloca64 = alloca i32, !reason !2
  %send_alloca62 = alloca i64, !reason !2
  %send_alloca60 = alloca i64, !reason !2
  %send_alloca58 = alloca i64, !reason !2
  %send_alloca53 = alloca i32, !reason !2
  %send_alloca42 = alloca i32, !reason !2
  %send_alloca40 = alloca i64, !reason !2
  %send_alloca38 = alloca i64, !reason !2
  %send_alloca36 = alloca i64, !reason !2
  %send_alloca29 = alloca i32, !reason !2
  %send_alloca24 = alloca i32, !reason !2
  %send_alloca = alloca i32, !reason !2
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %receive_load204, %l22 ]
  store i32 %new_phi, i32* %send_alloca, !reason !2
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !2
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !2
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !2
  %bitcast = bitcast i8* %receive to i32*, !reason !2
  %receive_load = load i32, i32* %bitcast, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %1 = zext i32 %receive_load to i64, !partition !36, !start !5, !end !6
  store i32 %new_phi, i32* %send_alloca24, !reason !2
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !2
  call void @send(i8* %send_cast25, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !2
  %receive26 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !2
  %bitcast27 = bitcast i8* %receive26 to i32*, !reason !2
  %receive_load28 = load i32, i32* %bitcast27, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %2 = zext i32 %receive_load28 to i64, !partition !36, !start !3, !end !4
  %3 = sext i32 %new_phi to i64, !partition !36, !start !4, !end !7
  %4 = sext i32 %new_phi to i64, !partition !36, !start !7, !end !5
  store i32 %new_phi, i32* %send_alloca29, !reason !2
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !2
  call void @send(i8* %send_cast30, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !2
  %repair_phi205 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_72 to i32), i8* %0), !reason !8
  %bitcast206 = bitcast i8* %repair_phi205 to i64*, !reason !8
  %receive_load207 = load i64, i64* %bitcast206, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_72 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i32 %new_phi, i32* %send_alloca208, !reason !1
  %send_cast209 = bitcast i32* %send_alloca208 to i8*, !reason !1
  call void @send(i8* %send_cast209, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !1
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi31 = phi i64 [ %receive_load207, %l ], [ %51, %l21 ]
  %new_phi32 = phi i64 [ 0, %l ], [ %50, %l21 ]
  %receive33 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_5 to i32), i8* %0), !reason !2
  %bitcast34 = bitcast i8* %receive33 to i64*, !reason !2
  %receive_load35 = load i64, i64* %bitcast34, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %5 = mul nsw i64 %new_phi32, %receive_load35, !partition !36, !start !5, !end !6
  store i64 %5, i64* %send_alloca36, !reason !2
  %send_cast37 = bitcast i64* %send_alloca36 to i8*, !reason !2
  call void @send(i8* %send_cast37, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !2
  store i64 %5, i64* %send_alloca38, !reason !2
  %send_cast39 = bitcast i64* %send_alloca38 to i8*, !reason !2
  call void @send(i8* %send_cast39, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !2
  %6 = mul nuw i64 %new_phi32, %2, !partition !36, !start !20, !end !21
  %7 = trunc i64 %6 to i32, !partition !36, !start !4, !end !7
  %8 = add i32 %new_phi, %7, !partition !36, !start !10, !end !16
  store i64 %6, i64* %send_alloca40, !reason !2
  %send_cast41 = bitcast i64* %send_alloca40 to i8*, !reason !2
  call void @send(i8* %send_cast41, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !2
  store i32 %8, i32* %send_alloca42, !reason !2
  %send_cast43 = bitcast i32* %send_alloca42 to i8*, !reason !2
  call void @send(i8* %send_cast43, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !2
  %receive44 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !2
  %bitcast45 = bitcast i8* %receive44 to i1*, !reason !2
  %receive_load46 = load i1, i1* %bitcast45, !reason !2
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !2
  %receive47 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !2
  %bitcast48 = bitcast i8* %receive47 to i32*, !reason !2
  %receive_load49 = load i32, i32* %bitcast48, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %9 = select i1 %receive_load46, i32 %8, i32 %receive_load49, !partition !36, !start !41, !end !22
  %10 = trunc i64 %new_phi32 to i32, !partition !36, !start !26, !end !27
  %receive50 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !2
  %bitcast51 = bitcast i8* %receive50 to i32*, !reason !2
  %receive_load52 = load i32, i32* %bitcast51, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %11 = mul i32 %receive_load52, %10, !partition !36, !start !23, !end !9
  store i32 %11, i32* %send_alloca53, !reason !2
  %send_cast54 = bitcast i32* %send_alloca53 to i8*, !reason !2
  call void @send(i8* %send_cast54, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !2
  %receive55 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i8* %0), !reason !2
  %bitcast56 = bitcast i8* %receive55 to i32*, !reason !2
  %receive_load57 = load i32, i32* %bitcast56, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %12 = add i32 %9, %receive_load57, !partition !36, !start !15, !end !20
  %13 = zext i32 %12 to i64, !partition !36, !start !3, !end !4
  %14 = shl nuw nsw i64 %13, 2, !partition !36, !start !14, !end !15
  store i64 %14, i64* %send_alloca58, !reason !2
  %send_cast59 = bitcast i64* %send_alloca58 to i8*, !reason !2
  call void @send(i8* %send_cast59, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_15 to i32), i8* %0), !reason !2
  store i64 %new_phi32, i64* %send_alloca60, !reason !2
  %send_cast61 = bitcast i64* %send_alloca60 to i8*, !reason !2
  call void @send(i8* %send_cast61, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_16 to i32), i8* %0), !reason !2
  %15 = mul nuw i64 %new_phi32, %1, !partition !36, !start !24, !end !14
  store i64 %15, i64* %send_alloca62, !reason !2
  %send_cast63 = bitcast i64* %send_alloca62 to i8*, !reason !2
  call void @send(i8* %send_cast63, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_17 to i32), i8* %0), !reason !2
  store i32 %new_phi, i32* %send_alloca64, !reason !2
  %send_cast65 = bitcast i32* %send_alloca64 to i8*, !reason !2
  call void @send(i8* %send_cast65, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i8* %0), !reason !2
  %16 = trunc i64 %15 to i32, !partition !36, !start !7, !end !5
  %17 = or i32 %16, 1, !partition !36, !start !6, !end !41
  %receive66 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i8* %0), !reason !2
  %bitcast67 = bitcast i8* %receive66 to i32*, !reason !2
  %receive_load68 = load i32, i32* %bitcast67, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %18 = icmp sgt i32 %receive_load68, %17, !partition !36, !start !9, !end !10
  store i1 %18, i1* %send_alloca69, !reason !2
  %send_cast70 = bitcast i1* %send_alloca69 to i8*, !reason !2
  call void @send(i8* %send_cast70, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_20 to i32), i8* %0), !reason !2
  store i32 %17, i32* %send_alloca71, !reason !2
  %send_cast72 = bitcast i32* %send_alloca71 to i8*, !reason !2
  call void @send(i8* %send_cast72, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i8* %0), !reason !2
  store i64 %new_phi32, i64* %send_alloca73, !reason !2
  %send_cast74 = bitcast i64* %send_alloca73 to i8*, !reason !2
  call void @send(i8* %send_cast74, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i8* %0), !reason !2
  %receive75 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i8* %0), !reason !2
  %bitcast76 = bitcast i8* %receive75 to i32*, !reason !2
  %receive_load77 = load i32, i32* %bitcast76, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive78 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !2
  %bitcast79 = bitcast i8* %receive78 to i32*, !reason !2
  %receive_load80 = load i32, i32* %bitcast79, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %19 = mul i32 %receive_load77, %receive_load80, !partition !36, !start !25, !end !11
  store i32 %19, i32* %send_alloca81, !reason !2
  %send_cast82 = bitcast i32* %send_alloca81 to i8*, !reason !2
  call void @send(i8* %send_cast82, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i8* %0), !reason !2
  %receive83 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i8* %0), !reason !2
  %bitcast84 = bitcast i8* %receive83 to i32*, !reason !2
  %receive_load85 = load i32, i32* %bitcast84, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %20 = zext i32 %receive_load85 to i64, !partition !36, !start !12, !end !13
  %21 = shl nuw nsw i64 %20, 2, !partition !36, !start !27, !end !25
  %22 = add nuw nsw i64 %21, 4, !partition !36, !start !13, !end !24
  %receive86 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !2
  %bitcast87 = bitcast i8* %receive86 to i64*, !reason !2
  %receive_load88 = load i64, i64* %bitcast87, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %23 = add nsw i64 %receive_load88, %3, !partition !36, !start !11, !end !12
  %receive89 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !2
  %bitcast90 = bitcast i8* %receive89 to i32*, !reason !2
  %receive_load91 = load i32, i32* %bitcast90, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %24 = add nsw i32 %receive_load91, %new_phi, !partition !36, !start !21, !end !23
  store i64 %23, i64* %send_alloca92, !reason !2
  %send_cast93 = bitcast i64* %send_alloca92 to i8*, !reason !2
  call void @send(i8* %send_cast93, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_29 to i32), i8* %0), !reason !2
  store i64 %4, i64* %send_alloca94, !reason !2
  %send_cast95 = bitcast i64* %send_alloca94 to i8*, !reason !2
  call void @send(i8* %send_cast95, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_30 to i32), i8* %0), !reason !2
  %25 = add nsw i32 %24, %new_phi, !partition !36, !start !22, !end !29
  %26 = add nsw i32 %25, -1, !partition !36, !start !29, !end !26
  %receive96 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_31 to i32), i8* %0), !reason !2
  %bitcast97 = bitcast i8* %receive96 to i64*, !reason !2
  %receive_load98 = load i64, i64* %bitcast97, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_31 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %27 = icmp slt i64 %receive_load98, 257, !partition !36, !start !16, !end !28
  store i1 %27, i1* %send_alloca249, !reason !0
  %send_cast250 = bitcast i1* %send_alloca249 to i8*, !reason !0
  call void @send(i8* %send_cast250, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_89 to i32), i8* %0), !reason !0
  br i1 %27, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_90 to i32), i8* %0), !reason !8
  %bitcast251 = bitcast i8* %broadcast to i1*, !reason !8
  %receive_load252 = load i1, i1* %bitcast251, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_90 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load252, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast262 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i8* %0), !reason !8
  %bitcast263 = bitcast i8* %broadcast262 to i1*, !reason !8
  %receive_load264 = load i1, i1* %bitcast263, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load264, label %l4, label %l5

l4:                                               ; preds = %l3
  store i64 %23, i64* %send_alloca149, !reason !2
  %send_cast150 = bitcast i64* %send_alloca149 to i8*, !reason !2
  call void @send(i8* %send_cast150, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i8* %0), !reason !2
  store i32 %26, i32* %send_alloca151, !reason !2
  %send_cast152 = bitcast i32* %send_alloca151 to i8*, !reason !2
  call void @send(i8* %send_cast152, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !2
  br label %l7

l5:                                               ; preds = %l7, %l3
  %broadcast268 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !8
  %bitcast269 = bitcast i8* %broadcast268 to i1*, !reason !8
  %receive_load270 = load i1, i1* %bitcast269, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load270, label %l6, label %l21

l6:                                               ; preds = %l5
  %receive166 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i8* %0), !reason !2
  %bitcast167 = bitcast i8* %receive166 to i64*, !reason !2
  %receive_load168 = load i64, i64* %bitcast167, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %28 = trunc i64 %receive_load168 to i32, !partition !36, !start !3, !end !4
  %repair_phi233 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i8* %0), !reason !8
  %bitcast234 = bitcast i8* %repair_phi233 to i64*, !reason !8
  %receive_load235 = load i64, i64* %bitcast234, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi242 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_86 to i32), i8* %0), !reason !8
  %bitcast243 = bitcast i8* %repair_phi242 to i32*, !reason !8
  %receive_load244 = load i32, i32* %bitcast243, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_86 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l8

l7:                                               ; preds = %l7, %l4
  %receive153 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i8* %0), !reason !2
  %bitcast154 = bitcast i8* %receive153 to i64*, !reason !2
  %receive_load155 = load i64, i64* %bitcast154, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %29 = trunc i64 %receive_load155 to i32, !partition !36, !start !4, !end !7
  %receive156 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i8* %0), !reason !2
  %bitcast157 = bitcast i8* %receive156 to i32*, !reason !2
  %receive_load158 = load i32, i32* %bitcast157, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %30 = sub i32 %receive_load158, %29, !partition !36, !start !5, !end !6
  %31 = sext i32 %30 to i64, !partition !36, !start !7, !end !5
  store i64 %31, i64* %send_alloca159, !reason !2
  %send_cast160 = bitcast i64* %send_alloca159 to i8*, !reason !2
  call void @send(i8* %send_cast160, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !2
  %receive161 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !2
  %bitcast162 = bitcast i8* %receive161 to i64*, !reason !2
  %receive_load163 = load i64, i64* %bitcast162, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %32 = add nsw i64 %receive_load163, 1, !partition !36, !start !3, !end !4
  store i64 %32, i64* %send_alloca164, !reason !2
  %send_cast165 = bitcast i64* %send_alloca164 to i8*, !reason !2
  call void @send(i8* %send_cast165, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !2
  store i64 %32, i64* %send_alloca231, !reason !1
  %send_cast232 = bitcast i64* %send_alloca231 to i8*, !reason !1
  call void @send(i8* %send_cast232, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !1
  %broadcast265 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i8* %0), !reason !8
  %bitcast266 = bitcast i8* %broadcast265 to i1*, !reason !8
  %receive_load267 = load i1, i1* %bitcast266, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load267, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi169 = phi i64 [ %receive_load235, %l6 ], [ %receive_load238, %l11 ]
  %new_phi170 = phi i32 [ %28, %l6 ], [ %receive_load241, %l11 ]
  %new_phi171 = phi i32 [ %receive_load244, %l6 ], [ %new_phi184, %l11 ]
  %33 = sext i32 %new_phi171 to i64, !partition !36, !start !3, !end !4
  store i64 %33, i64* %send_alloca172, !reason !2
  %send_cast173 = bitcast i64* %send_alloca172 to i8*, !reason !2
  call void @send(i8* %send_cast173, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i8* %0), !reason !2
  %34 = sext i32 %new_phi170 to i64, !partition !36, !start !39, !end !17
  store i64 %34, i64* %send_alloca174, !reason !2
  %send_cast175 = bitcast i64* %send_alloca174 to i8*, !reason !2
  call void @send(i8* %send_cast175, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_60 to i32), i8* %0), !reason !2
  %receive176 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i8* %0), !reason !2
  %bitcast177 = bitcast i8* %receive176 to i32*, !reason !2
  %receive_load178 = load i32, i32* %bitcast177, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive179 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i8* %0), !reason !2
  %bitcast180 = bitcast i8* %receive179 to i32*, !reason !2
  %receive_load181 = load i32, i32* %bitcast180, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %35 = icmp slt i32 %receive_load178, %receive_load181, !partition !36, !start !17, !end !18
  store i64 %new_phi169, i64* %send_alloca182, !reason !2
  %send_cast183 = bitcast i64* %send_alloca182 to i8*, !reason !2
  call void @send(i8* %send_cast183, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !2
  store i1 %35, i1* %send_alloca271, !reason !0
  %send_cast272 = bitcast i1* %send_alloca271 to i8*, !reason !0
  call void @send(i8* %send_cast272, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !0
  br i1 %35, label %l9, label %l10

l9:                                               ; preds = %l8
  %36 = add nsw i32 %new_phi171, -1, !partition !36, !start !3, !end !4
  store i32 %new_phi170, i32* %send_alloca245, !reason !1
  %send_cast246 = bitcast i32* %send_alloca245 to i8*, !reason !1
  call void @send(i8* %send_cast246, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_87 to i32), i8* %0), !reason !1
  br label %l11

l10:                                              ; preds = %l8
  %37 = add nsw i32 %new_phi170, 1, !partition !36, !start !3, !end !4
  store i32 %37, i32* %send_alloca247, !reason !1
  %send_cast248 = bitcast i32* %send_alloca247 to i8*, !reason !1
  call void @send(i8* %send_cast248, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_88 to i32), i8* %0), !reason !1
  br label %l11

l11:                                              ; preds = %l9, %l10
  %new_phi184 = phi i32 [ %36, %l9 ], [ %new_phi171, %l10 ]
  store i64 %new_phi169, i64* %send_alloca185, !reason !2
  %send_cast186 = bitcast i64* %send_alloca185 to i8*, !reason !2
  call void @send(i8* %send_cast186, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !2
  %receive187 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !2
  %bitcast188 = bitcast i8* %receive187 to i64*, !reason !2
  %receive_load189 = load i64, i64* %bitcast188, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %38 = icmp eq i64 %receive_load189, %new_phi31, !partition !36, !start !3, !end !4
  %repair_phi236 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_84 to i32), i8* %0), !reason !8
  %bitcast237 = bitcast i8* %repair_phi236 to i64*, !reason !8
  %receive_load238 = load i64, i64* %bitcast237, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_84 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi239 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i8* %0), !reason !8
  %bitcast240 = bitcast i8* %repair_phi239 to i32*, !reason !8
  %receive_load241 = load i32, i32* %bitcast240, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %38, i1* %send_alloca273, !reason !0
  %send_cast274 = bitcast i1* %send_alloca273 to i8*, !reason !0
  call void @send(i8* %send_cast274, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !0
  br i1 %38, label %l21, label %l8

l12:                                              ; preds = %l2
  store i64 %22, i64* %send_alloca99, !reason !2
  %send_cast100 = bitcast i64* %send_alloca99 to i8*, !reason !2
  call void @send(i8* %send_cast100, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_32 to i32), i8* %0), !reason !2
  br label %l13

l13:                                              ; preds = %l12, %l2
  store i64 %23, i64* %send_alloca101, !reason !2
  %send_cast102 = bitcast i64* %send_alloca101 to i8*, !reason !2
  call void @send(i8* %send_cast102, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !2
  %broadcast253 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_91 to i32), i8* %0), !reason !8
  %bitcast254 = bitcast i8* %broadcast253 to i1*, !reason !8
  %receive_load255 = load i1, i1* %bitcast254, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_91 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load255, label %l14, label %l15

l14:                                              ; preds = %l13
  store i64 %23, i64* %send_alloca103, !reason !2
  %send_cast104 = bitcast i64* %send_alloca103 to i8*, !reason !2
  call void @send(i8* %send_cast104, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_34 to i32), i8* %0), !reason !2
  %repair_phi212 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !8
  %bitcast213 = bitcast i8* %repair_phi212 to i64*, !reason !8
  %receive_load214 = load i64, i64* %bitcast213, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  br label %l16

l15:                                              ; preds = %l16, %l13
  %repair_phi218 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !8
  %bitcast219 = bitcast i8* %repair_phi218 to i64*, !reason !8
  %receive_load220 = load i64, i64* %bitcast219, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi105 = phi i64 [ %receive_load214, %l14 ], [ %receive_load217, %l16 ]
  store i64 %new_phi105, i64* %send_alloca106, !reason !2
  %send_cast107 = bitcast i64* %send_alloca106 to i8*, !reason !2
  call void @send(i8* %send_cast107, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i8* %0), !reason !2
  %receive108 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !2
  %bitcast109 = bitcast i8* %receive108 to i64*, !reason !2
  %receive_load110 = load i64, i64* %bitcast109, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %39 = sub i64 %receive_load110, %new_phi105, !partition !36, !start !36, !end !39
  %40 = shl i64 %39, 32, !partition !36, !start !39, !end !17
  %41 = ashr exact i64 %40, 32, !partition !36, !start !17, !end !18
  store i64 %41, i64* %send_alloca111, !reason !2
  %send_cast112 = bitcast i64* %send_alloca111 to i8*, !reason !2
  call void @send(i8* %send_cast112, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i8* %0), !reason !2
  store i64 %new_phi105, i64* %send_alloca113, !reason !2
  %send_cast114 = bitcast i64* %send_alloca113 to i8*, !reason !2
  call void @send(i8* %send_cast114, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i8* %0), !reason !2
  %receive115 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_39 to i32), i8* %0), !reason !2
  %bitcast116 = bitcast i8* %receive115 to i32*, !reason !2
  %receive_load117 = load i32, i32* %bitcast116, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_39 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %42 = icmp eq i32 %receive_load117, 257, !partition !36, !start !18, !end !19
  %repair_phi215 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i8* %0), !reason !8
  %bitcast216 = bitcast i8* %repair_phi215 to i64*, !reason !8
  %receive_load217 = load i64, i64* %bitcast216, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %42, i1* %send_alloca256, !reason !0
  %send_cast257 = bitcast i1* %send_alloca256 to i8*, !reason !0
  call void @send(i8* %send_cast257, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i8* %0), !reason !0
  br i1 %42, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi118 = phi i64 [ %receive_load220, %l15 ], [ %receive_load223, %l20 ]
  %receive119 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_40 to i32), i8* %0), !reason !2
  %bitcast120 = bitcast i8* %receive119 to i32*, !reason !2
  %receive_load121 = load i32, i32* %bitcast120, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_40 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %43 = sext i32 %receive_load121 to i64, !partition !36, !start !3, !end !4
  store i64 %43, i64* %send_alloca122, !reason !2
  %send_cast123 = bitcast i64* %send_alloca122 to i8*, !reason !2
  call void @send(i8* %send_cast123, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_41 to i32), i8* %0), !reason !2
  %receive124 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_42 to i32), i8* %0), !reason !2
  %bitcast125 = bitcast i8* %receive124 to i32*, !reason !2
  %receive_load126 = load i32, i32* %bitcast125, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_42 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %44 = sext i32 %receive_load126 to i64, !partition !36, !start !39, !end !17
  store i64 %44, i64* %send_alloca127, !reason !2
  %send_cast128 = bitcast i64* %send_alloca127 to i8*, !reason !2
  call void @send(i8* %send_cast128, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !2
  %receive129 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i8* %0), !reason !2
  %bitcast130 = bitcast i8* %receive129 to i32*, !reason !2
  %receive_load131 = load i32, i32* %bitcast130, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive132 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i8* %0), !reason !2
  %bitcast133 = bitcast i8* %receive132 to i32*, !reason !2
  %receive_load134 = load i32, i32* %bitcast133, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %45 = icmp slt i32 %receive_load131, %receive_load134, !partition !36, !start !17, !end !18
  store i64 %new_phi118, i64* %send_alloca135, !reason !2
  %send_cast136 = bitcast i64* %send_alloca135 to i8*, !reason !2
  call void @send(i8* %send_cast136, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !2
  store i1 %45, i1* %send_alloca258, !reason !0
  %send_cast259 = bitcast i1* %send_alloca258 to i8*, !reason !0
  call void @send(i8* %send_cast259, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i8* %0), !reason !0
  br i1 %45, label %l18, label %l19

l18:                                              ; preds = %l17
  %receive140 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i8* %0), !reason !2
  %bitcast141 = bitcast i8* %receive140 to i32*, !reason !2
  %receive_load142 = load i32, i32* %bitcast141, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %46 = add nsw i32 %receive_load142, -1, !partition !36, !start !3, !end !4
  br label %l20

l19:                                              ; preds = %l17
  %receive137 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !2
  %bitcast138 = bitcast i8* %receive137 to i32*, !reason !2
  %receive_load139 = load i32, i32* %bitcast138, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %47 = add nsw i32 %receive_load139, 1, !partition !36, !start !3, !end !4
  store i32 %47, i32* %send_alloca226, !reason !1
  %send_cast227 = bitcast i32* %send_alloca226 to i8*, !reason !1
  call void @send(i8* %send_cast227, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_80 to i32), i8* %0), !reason !1
  %repair_phi228 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i8* %0), !reason !8
  %bitcast229 = bitcast i8* %repair_phi228 to i32*, !reason !8
  %receive_load230 = load i32, i32* %bitcast229, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l20

l20:                                              ; preds = %l18, %l19
  %new_phi143 = phi i32 [ %46, %l18 ], [ %receive_load230, %l19 ]
  store i64 %new_phi118, i64* %send_alloca144, !reason !2
  %send_cast145 = bitcast i64* %send_alloca144 to i8*, !reason !2
  call void @send(i8* %send_cast145, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !2
  %receive146 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i8* %0), !reason !2
  %bitcast147 = bitcast i8* %receive146 to i64*, !reason !2
  %receive_load148 = load i64, i64* %bitcast147, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %48 = icmp eq i64 %receive_load148, 257, !partition !36, !start !3, !end !4
  %repair_phi221 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i8* %0), !reason !8
  %bitcast222 = bitcast i8* %repair_phi221 to i64*, !reason !8
  %receive_load223 = load i64, i64* %bitcast222, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i32 %new_phi143, i32* %send_alloca224, !reason !1
  %send_cast225 = bitcast i32* %send_alloca224 to i8*, !reason !1
  call void @send(i8* %send_cast225, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i8* %0), !reason !1
  store i1 %48, i1* %send_alloca260, !reason !0
  %send_cast261 = bitcast i1* %send_alloca260 to i8*, !reason !0
  call void @send(i8* %send_cast261, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i8* %0), !reason !0
  br i1 %48, label %l21, label %l17

l21:                                              ; preds = %l11, %l5, %l20
  %receive190 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i8* %0), !reason !2
  %bitcast191 = bitcast i8* %receive190 to i64*, !reason !2
  %receive_load192 = load i64, i64* %bitcast191, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %receive193 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i8* %0), !reason !2
  %bitcast194 = bitcast i8* %receive193 to i64*, !reason !2
  %receive_load195 = load i64, i64* %bitcast194, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %49 = add nsw i64 %receive_load192, %receive_load195, !partition !36, !start !3, !end !4
  store i64 %49, i64* %send_alloca196, !reason !2
  %send_cast197 = bitcast i64* %send_alloca196 to i8*, !reason !2
  call void @send(i8* %send_cast197, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i8* %0), !reason !2
  %50 = add nuw nsw i64 %new_phi32, 1, !partition !36, !start !4, !end !7
  %receive198 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !2
  %bitcast199 = bitcast i8* %receive198 to i64*, !reason !2
  %receive_load200 = load i64, i64* %bitcast199, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %51 = add i64 %new_phi31, %receive_load200, !partition !36, !start !7, !end !5
  store i64 %49, i64* %send_alloca210, !reason !1
  %send_cast211 = bitcast i64* %send_alloca210 to i8*, !reason !1
  call void @send(i8* %send_cast211, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !1
  %broadcast275 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !8
  %bitcast276 = bitcast i8* %broadcast275 to i1*, !reason !8
  %receive_load277 = load i1, i1* %bitcast276, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load277, label %l1, label %l22

l22:                                              ; preds = %l21
  store i32 %new_phi, i32* %send_alloca201, !reason !2
  %send_cast202 = bitcast i32* %send_alloca201 to i8*, !reason !2
  call void @send(i8* %send_cast202, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !2
  %52 = icmp slt i32 %new_phi, 128, !partition !36, !start !3, !end !4
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i8* %0), !reason !8
  %bitcast203 = bitcast i8* %repair_phi to i32*, !reason !8
  %receive_load204 = load i32, i32* %bitcast203, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %52, i1* %send_alloca278, !reason !0
  %send_cast279 = bitcast i1* %send_alloca278 to i8*, !reason !0
  call void @send(i8* %send_cast279, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !0
  br i1 %52, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

attributes #0 = { argmemonly nounwind }

!0 = !{!"broadcast"}
!1 = !{!"repair_phi"}
!2 = !{!"replace mapped op"}
!3 = !{!"0"}
!4 = !{!"3"}
!5 = !{!"9"}
!6 = !{!"12"}
!7 = !{!"6"}
!8 = !{!"receive"}
!9 = !{!"58"}
!10 = !{!"61"}
!11 = !{!"31"}
!12 = !{!"34"}
!13 = !{!"37"}
!14 = !{!"43"}
!15 = !{!"46"}
!16 = !{!"64"}
!17 = !{!"7"}
!18 = !{!"10"}
!19 = !{!"13"}
!20 = !{!"49"}
!21 = !{!"52"}
!22 = !{!"16"}
!23 = !{!"55"}
!24 = !{!"40"}
!25 = !{!"28"}
!26 = !{!"22"}
!27 = !{!"25"}
!28 = !{!"67"}
!29 = !{!"19"}
!30 = !{!"2"}
!31 = !{!"5"}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"1"}
!37 = !{!"8"}
!38 = !{!"11"}
!39 = !{!"4"}
!40 = !{!"14"}
!41 = !{!"15"}
