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
  %send_alloca285 = alloca i1, !reason !0
  %send_alloca277 = alloca i1, !reason !0
  %send_alloca260 = alloca i1, !reason !0
  %send_alloca250 = alloca i32, !reason !1
  %send_alloca248 = alloca i32, !reason !1
  %send_alloca246 = alloca i64, !reason !1
  %send_alloca244 = alloca i64, !reason !1
  %send_alloca236 = alloca i32, !reason !1
  %send_alloca234 = alloca i32, !reason !1
  %send_alloca232 = alloca i64, !reason !1
  %send_alloca230 = alloca i64, !reason !1
  %send_alloca228 = alloca i64, !reason !1
  %send_alloca226 = alloca i32, !reason !1
  %send_alloca218 = alloca i32, !reason !1
  %send_alloca211 = alloca i32, !reason !1
  %send_alloca206 = alloca i64, !reason !2
  %send_alloca201 = alloca i64, !reason !2
  %send_alloca193 = alloca i64, !reason !2
  %send_alloca191 = alloca i64, !reason !2
  %send_alloca189 = alloca i64, !reason !2
  %send_alloca177 = alloca i32, !reason !2
  %send_alloca175 = alloca i32, !reason !2
  %send_alloca167 = alloca i64, !reason !2
  %send_alloca165 = alloca i64, !reason !2
  %send_alloca163 = alloca i64, !reason !2
  %send_alloca158 = alloca i32, !reason !2
  %send_alloca156 = alloca i32, !reason !2
  %send_alloca150 = alloca i64, !reason !2
  %send_alloca138 = alloca i32, !reason !2
  %send_alloca136 = alloca i32, !reason !2
  %send_alloca128 = alloca i32, !reason !2
  %send_alloca120 = alloca i64, !reason !2
  %send_alloca112 = alloca i64, !reason !2
  %send_alloca107 = alloca i64, !reason !2
  %send_alloca102 = alloca i32, !reason !2
  %send_alloca100 = alloca i32, !reason !2
  %send_alloca92 = alloca i64, !reason !2
  %send_alloca78 = alloca i64, !reason !2
  %send_alloca76 = alloca i64, !reason !2
  %send_alloca68 = alloca i32, !reason !2
  %send_alloca66 = alloca i32, !reason !2
  %send_alloca58 = alloca i64, !reason !2
  %send_alloca47 = alloca i32, !reason !2
  %send_alloca45 = alloca i64, !reason !2
  %send_alloca37 = alloca i64, !reason !2
  %send_alloca24 = alloca i32, !reason !2
  %send_alloca = alloca i32, !reason !2
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !2
  %bitcast = bitcast i8* %receive to i32*, !reason !2
  %receive_load = load i32, i32* %bitcast, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %1 = shl i32 %receive_load, 1, !partition !3, !start !3, !end !4
  store i32 %1, i32* %send_alloca, !reason !2
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !2
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !2
  store i32 %1, i32* %send_alloca24, !reason !2
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !2
  call void @send(i8* %send_cast25, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !2
  %2 = zext i32 %1 to i64, !partition !3, !start !4, !end !5
  %receive26 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !2
  %bitcast27 = bitcast i8* %receive26 to i32*, !reason !2
  %receive_load28 = load i32, i32* %bitcast27, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %3 = sext i32 %receive_load28 to i64, !partition !3, !start !5, !end !6
  %receive29 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !2
  %bitcast30 = bitcast i8* %receive29 to i32*, !reason !2
  %receive_load31 = load i32, i32* %bitcast30, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %4 = sext i32 %receive_load31 to i64, !partition !3, !start !6, !end !7
  %repair_phi = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !8
  %bitcast213 = bitcast i8* %repair_phi to i64*, !reason !8
  %receive_load214 = load i64, i64* %bitcast213, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi = phi i64 [ %receive_load214, %l ], [ %receive_load217, %l21 ]
  %new_phi32 = phi i64 [ 0, %l ], [ %receive_load222, %l21 ]
  %new_phi33 = phi i64 [ 0, %l ], [ %receive_load225, %l21 ]
  %receive34 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !2
  %bitcast35 = bitcast i8* %receive34 to i32*, !reason !2
  %receive_load36 = load i32, i32* %bitcast35, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %5 = sext i32 %receive_load36 to i64, !partition !3, !start !9, !end !10
  store i64 %new_phi32, i64* %send_alloca37, !reason !2
  %send_cast38 = bitcast i64* %send_alloca37 to i8*, !reason !2
  call void @send(i8* %send_cast38, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !2
  %receive39 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !2
  %bitcast40 = bitcast i8* %receive39 to i64*, !reason !2
  %receive_load41 = load i64, i64* %bitcast40, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %6 = getelementptr [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load41, !partition !3, !start !11, !end !12
  %7 = bitcast i32* %6 to i8*, !partition !3, !start !13, !end !14
  %receive42 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !2
  %bitcast43 = bitcast i8* %receive42 to i64*, !reason !2
  %receive_load44 = load i64, i64* %bitcast43, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %8 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load44, !partition !3, !start !3, !end !4
  %9 = bitcast i32* %8 to i8*, !partition !3, !start !7, !end !11
  %10 = mul nuw i64 %new_phi32, %2, !partition !3, !start !15, !end !16
  store i64 %10, i64* %send_alloca45, !reason !2
  %send_cast46 = bitcast i64* %send_alloca45 to i8*, !reason !2
  call void @send(i8* %send_cast46, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !2
  %11 = trunc i64 %10 to i32, !partition !3, !start !17, !end !18
  store i32 %11, i32* %send_alloca47, !reason !2
  %send_cast48 = bitcast i32* %send_alloca47 to i8*, !reason !2
  call void @send(i8* %send_cast48, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !2
  %receive49 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i8* %0), !reason !2
  %bitcast50 = bitcast i8* %receive49 to i1*, !reason !2
  %receive_load51 = load i1, i1* %bitcast50, !reason !2
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !2
  %receive52 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !2
  %bitcast53 = bitcast i8* %receive52 to i32*, !reason !2
  %receive_load54 = load i32, i32* %bitcast53, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive55 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !2
  %bitcast56 = bitcast i8* %receive55 to i32*, !reason !2
  %receive_load57 = load i32, i32* %bitcast56, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %12 = select i1 %receive_load51, i32 %receive_load54, i32 %receive_load57, !partition !3, !start !12, !end !19
  store i64 %new_phi32, i64* %send_alloca58, !reason !2
  %send_cast59 = bitcast i64* %send_alloca58 to i8*, !reason !2
  call void @send(i8* %send_cast59, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_14 to i32), i8* %0), !reason !2
  %receive60 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i8* %0), !reason !2
  %bitcast61 = bitcast i8* %receive60 to i32*, !reason !2
  %receive_load62 = load i32, i32* %bitcast61, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive63 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_16 to i32), i8* %0), !reason !2
  %bitcast64 = bitcast i8* %receive63 to i32*, !reason !2
  %receive_load65 = load i32, i32* %bitcast64, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_16 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %13 = mul i32 %receive_load62, %receive_load65, !partition !3, !start !5, !end !6
  store i32 %13, i32* %send_alloca66, !reason !2
  %send_cast67 = bitcast i32* %send_alloca66 to i8*, !reason !2
  call void @send(i8* %send_cast67, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i8* %0), !reason !2
  store i32 %12, i32* %send_alloca68, !reason !2
  %send_cast69 = bitcast i32* %send_alloca68 to i8*, !reason !2
  call void @send(i8* %send_cast69, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i8* %0), !reason !2
  %receive70 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_19 to i32), i8* %0), !reason !2
  %bitcast71 = bitcast i8* %receive70 to i64*, !reason !2
  %receive_load72 = load i64, i64* %bitcast71, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_19 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %14 = mul nsw i64 %new_phi32, %receive_load72, !partition !3, !start !20, !end !17
  %15 = getelementptr [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %14, !partition !3, !start !6, !end !7
  %16 = bitcast i32* %15 to i8*, !partition !3, !start !21, !end !22
  %17 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %14, !partition !3, !start !19, !end !23
  %18 = bitcast i32* %17 to i8*, !partition !3, !start !24, !end !25
  %receive73 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_20 to i32), i8* %0), !reason !2
  %bitcast74 = bitcast i8* %receive73 to i64*, !reason !2
  %receive_load75 = load i64, i64* %bitcast74, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_20 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %19 = mul nuw i64 %new_phi32, %receive_load75, !partition !3, !start !26, !end !15
  store i64 %19, i64* %send_alloca76, !reason !2
  %send_cast77 = bitcast i64* %send_alloca76 to i8*, !reason !2
  call void @send(i8* %send_cast77, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_21 to i32), i8* %0), !reason !2
  store i64 %19, i64* %send_alloca78, !reason !2
  %send_cast79 = bitcast i64* %send_alloca78 to i8*, !reason !2
  call void @send(i8* %send_cast79, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i8* %0), !reason !2
  %receive80 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i8* %0), !reason !2
  %bitcast81 = bitcast i8* %receive80 to i32*, !reason !2
  %receive_load82 = load i32, i32* %bitcast81, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive83 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !2
  %bitcast84 = bitcast i8* %receive83 to i32*, !reason !2
  %receive_load85 = load i32, i32* %bitcast84, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %20 = icmp sgt i32 %receive_load82, %receive_load85, !partition !3, !start !25, !end !9
  %receive86 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i8* %0), !reason !2
  %bitcast87 = bitcast i8* %receive86 to i32*, !reason !2
  %receive_load88 = load i32, i32* %bitcast87, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive89 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i8* %0), !reason !2
  %bitcast90 = bitcast i8* %receive89 to i32*, !reason !2
  %receive_load91 = load i32, i32* %bitcast90, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %21 = select i1 %20, i32 %receive_load88, i32 %receive_load91, !partition !3, !start !14, !end !27
  store i64 %new_phi32, i64* %send_alloca92, !reason !2
  %send_cast93 = bitcast i64* %send_alloca92 to i8*, !reason !2
  call void @send(i8* %send_cast93, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !2
  %receive94 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !2
  %bitcast95 = bitcast i8* %receive94 to i32*, !reason !2
  %receive_load96 = load i32, i32* %bitcast95, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive97 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i8* %0), !reason !2
  %bitcast98 = bitcast i8* %receive97 to i32*, !reason !2
  %receive_load99 = load i32, i32* %bitcast98, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %22 = mul i32 %receive_load96, %receive_load99, !partition !3, !start !22, !end !20
  %23 = add i32 %22, -1, !partition !3, !start !28, !end !24
  store i32 %21, i32* %send_alloca100, !reason !2
  %send_cast101 = bitcast i32* %send_alloca100 to i8*, !reason !2
  call void @send(i8* %send_cast101, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i8* %0), !reason !2
  store i32 %23, i32* %send_alloca102, !reason !2
  %send_cast103 = bitcast i32* %send_alloca102 to i8*, !reason !2
  call void @send(i8* %send_cast103, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i8* %0), !reason !2
  %receive104 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_32 to i32), i8* %0), !reason !2
  %bitcast105 = bitcast i8* %receive104 to i32*, !reason !2
  %receive_load106 = load i32, i32* %bitcast105, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_32 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %24 = zext i32 %receive_load106 to i64, !partition !3, !start !29, !end !13
  store i64 %24, i64* %send_alloca107, !reason !2
  %send_cast108 = bitcast i64* %send_alloca107 to i8*, !reason !2
  call void @send(i8* %send_cast108, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !2
  %25 = add nsw i64 %new_phi33, %3, !partition !3, !start !18, !end !26
  %26 = add nsw i64 %25, %4, !partition !3, !start !27, !end !30
  %receive109 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i8* %0), !reason !2
  %bitcast110 = bitcast i8* %receive109 to i32*, !reason !2
  %receive_load111 = load i32, i32* %bitcast110, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %27 = add nsw i32 %receive_load111, -1, !partition !3, !start !16, !end !29
  store i64 %26, i64* %send_alloca112, !reason !2
  %send_cast113 = bitcast i64* %send_alloca112 to i8*, !reason !2
  call void @send(i8* %send_cast113, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i8* %0), !reason !2
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i8* %0), !reason !8
  %bitcast255 = bitcast i8* %broadcast to i1*, !reason !8
  %receive_load256 = load i1, i1* %bitcast255, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load256, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast257 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i8* %0), !reason !8
  %bitcast258 = bitcast i8* %broadcast257 to i1*, !reason !8
  %receive_load259 = load i1, i1* %bitcast258, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load259, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast271 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !8
  %bitcast272 = bitcast i8* %broadcast271 to i1*, !reason !8
  %receive_load273 = load i1, i1* %bitcast272, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load273, label %l4, label %l5

l4:                                               ; preds = %l3
  %receive152 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i8* %0), !reason !2
  %bitcast153 = bitcast i8* %receive152 to i64*, !reason !2
  %receive_load154 = load i64, i64* %bitcast153, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %9, i64 %receive_load154, i1 false), !partition !3, !start !3, !end !3
  %28 = trunc i64 %25 to i32, !partition !3, !start !3, !end !3
  %29 = add nsw i32 %27, %28, !partition !3, !start !3, !end !3
  br label %l7

l5:                                               ; preds = %l7, %l3
  %30 = icmp slt i64 %new_phi33, %26, !partition !3, !start !3, !end !4
  store i1 %30, i1* %send_alloca277, !reason !0
  %send_cast278 = bitcast i1* %send_alloca277 to i8*, !reason !0
  call void @send(i8* %send_cast278, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !0
  br i1 %30, label %l6, label %l21

l6:                                               ; preds = %l5
  %31 = trunc i64 %26 to i32, !partition !3, !start !4, !end !5
  %32 = add i32 %31, -1, !partition !3, !start !3, !end !4
  store i64 %new_phi33, i64* %send_alloca167, !reason !2
  %send_cast168 = bitcast i64* %send_alloca167 to i8*, !reason !2
  call void @send(i8* %send_cast168, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !2
  store i64 %new_phi33, i64* %send_alloca244, !reason !1
  %send_cast245 = bitcast i64* %send_alloca244 to i8*, !reason !1
  call void @send(i8* %send_cast245, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i8* %0), !reason !1
  store i32 %32, i32* %send_alloca250, !reason !1
  %send_cast251 = bitcast i32* %send_alloca250 to i8*, !reason !1
  call void @send(i8* %send_cast251, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_90 to i32), i8* %0), !reason !1
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi155 = phi i64 [ %5, %l4 ], [ %receive_load243, %l7 ]
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %new_phi155, !partition !3, !start !5, !end !6
  %34 = load i32, i32* %33, align 4, !tbaa !31, !partition !3, !start !35, !end !36
  %35 = trunc i64 %new_phi155 to i32, !partition !3, !start !3, !end !4
  store i32 %29, i32* %send_alloca156, !reason !2
  %send_cast157 = bitcast i32* %send_alloca156 to i8*, !reason !2
  call void @send(i8* %send_cast157, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_51 to i32), i8* %0), !reason !2
  store i32 %35, i32* %send_alloca158, !reason !2
  %send_cast159 = bitcast i32* %send_alloca158 to i8*, !reason !2
  call void @send(i8* %send_cast159, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !2
  %receive160 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i8* %0), !reason !2
  %bitcast161 = bitcast i8* %receive160 to i64*, !reason !2
  %receive_load162 = load i64, i64* %bitcast161, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load162, !partition !3, !start !4, !end !5
  store i32 %34, i32* %36, align 4, !tbaa !31, !partition !3, !start !6, !end !35
  store i64 %new_phi155, i64* %send_alloca163, !reason !2
  %send_cast164 = bitcast i64* %send_alloca163 to i8*, !reason !2
  call void @send(i8* %send_cast164, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_54 to i32), i8* %0), !reason !2
  store i64 %26, i64* %send_alloca165, !reason !2
  %send_cast166 = bitcast i64* %send_alloca165 to i8*, !reason !2
  call void @send(i8* %send_cast166, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !2
  %repair_phi241 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i8* %0), !reason !8
  %bitcast242 = bitcast i8* %repair_phi241 to i64*, !reason !8
  %receive_load243 = load i64, i64* %bitcast242, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %broadcast274 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !8
  %bitcast275 = bitcast i8* %broadcast274 to i1*, !reason !8
  %receive_load276 = load i1, i1* %bitcast275, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load276, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %receive169 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !2
  %bitcast170 = bitcast i8* %receive169 to i64*, !reason !2
  %receive_load171 = load i64, i64* %bitcast170, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load171, !partition !3, !start !37, !end !38
  %38 = load i32, i32* %37, align 4, !tbaa !31, !partition !3, !start !3, !end !39
  %receive172 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i8* %0), !reason !2
  %bitcast173 = bitcast i8* %receive172 to i64*, !reason !2
  %receive_load174 = load i64, i64* %bitcast173, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load174, !partition !3, !start !38, !end !35
  %40 = load i32, i32* %39, align 4, !tbaa !31, !partition !3, !start !35, !end !36
  store i32 %38, i32* %send_alloca175, !reason !2
  %send_cast176 = bitcast i32* %send_alloca175 to i8*, !reason !2
  call void @send(i8* %send_cast176, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_59 to i32), i8* %0), !reason !2
  store i32 %40, i32* %send_alloca177, !reason !2
  %send_cast178 = bitcast i32* %send_alloca177 to i8*, !reason !2
  call void @send(i8* %send_cast178, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i8* %0), !reason !2
  %receive179 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_61 to i32), i8* %0), !reason !2
  %bitcast180 = bitcast i8* %receive179 to i64*, !reason !2
  %receive_load181 = load i64, i64* %bitcast180, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_61 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load181, !partition !3, !start !39, !end !37
  %broadcast279 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !8
  %bitcast280 = bitcast i8* %broadcast279 to i1*, !reason !8
  %receive_load281 = load i1, i1* %bitcast280, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load281, label %l9, label %l10

l9:                                               ; preds = %l8
  store i32 %38, i32* %41, align 4, !tbaa !31, !partition !3, !start !3, !end !39
  %repair_phi252 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i8* %0), !reason !8
  %bitcast253 = bitcast i8* %repair_phi252 to i32*, !reason !8
  %receive_load254 = load i32, i32* %bitcast253, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l11

l10:                                              ; preds = %l8
  store i32 %40, i32* %41, align 4, !tbaa !31, !partition !3, !start !3, !end !3
  %receive182 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i8* %0), !reason !2
  %bitcast183 = bitcast i8* %receive182 to i32*, !reason !2
  %receive_load184 = load i32, i32* %bitcast183, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %42 = add nsw i32 %receive_load184, 1, !partition !3, !start !3, !end !3
  br label %l11

l11:                                              ; preds = %l9, %l10
  %new_phi185 = phi i32 [ %receive_load254, %l9 ], [ %42, %l10 ]
  %receive186 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !2
  %bitcast187 = bitcast i8* %receive186 to i64*, !reason !2
  %receive_load188 = load i64, i64* %bitcast187, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %43 = add nsw i64 %receive_load188, 1, !partition !3, !start !39, !end !37
  store i64 %43, i64* %send_alloca189, !reason !2
  %send_cast190 = bitcast i64* %send_alloca189 to i8*, !reason !2
  call void @send(i8* %send_cast190, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !2
  store i64 %new_phi, i64* %send_alloca191, !reason !2
  %send_cast192 = bitcast i64* %send_alloca191 to i8*, !reason !2
  call void @send(i8* %send_cast192, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !2
  store i64 %43, i64* %send_alloca246, !reason !1
  %send_cast247 = bitcast i64* %send_alloca246 to i8*, !reason !1
  call void @send(i8* %send_cast247, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i8* %0), !reason !1
  store i32 %new_phi185, i32* %send_alloca248, !reason !1
  %send_cast249 = bitcast i32* %send_alloca248 to i8*, !reason !1
  call void @send(i8* %send_cast249, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_89 to i32), i8* %0), !reason !1
  %broadcast282 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i8* %0), !reason !8
  %bitcast283 = bitcast i8* %broadcast282 to i1*, !reason !8
  %receive_load284 = load i1, i1* %bitcast283, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load284, label %l21, label %l8

l12:                                              ; preds = %l2
  %receive114 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !2
  %bitcast115 = bitcast i8* %receive114 to i64*, !reason !2
  %receive_load116 = load i64, i64* %bitcast115, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %18, i64 %receive_load116, i1 false), !partition !3, !start !3, !end !3
  br label %l13

l13:                                              ; preds = %l12, %l2
  %44 = icmp slt i64 %25, 257, !partition !3, !start !3, !end !4
  store i1 %44, i1* %send_alloca260, !reason !0
  %send_cast261 = bitcast i1* %send_alloca260 to i8*, !reason !0
  call void @send(i8* %send_cast261, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i8* %0), !reason !0
  br i1 %44, label %l14, label %l15

l14:                                              ; preds = %l13
  %45 = add i64 %25, 256, !partition !3, !start !3, !end !4
  br label %l16

l15:                                              ; preds = %l16, %l13
  %46 = trunc i64 %new_phi33 to i32, !partition !3, !start !3, !end !4
  store i64 %new_phi33, i64* %send_alloca230, !reason !1
  %send_cast231 = bitcast i64* %send_alloca230 to i8*, !reason !1
  call void @send(i8* %send_cast231, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_81 to i32), i8* %0), !reason !1
  store i32 %46, i32* %send_alloca234, !reason !1
  %send_cast235 = bitcast i32* %send_alloca234 to i8*, !reason !1
  call void @send(i8* %send_cast235, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_83 to i32), i8* %0), !reason !1
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive117 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i8* %0), !reason !2
  %bitcast118 = bitcast i8* %receive117 to i64*, !reason !2
  %receive_load119 = load i64, i64* %bitcast118, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load119, !partition !3, !start !3, !end !4
  %48 = load i32, i32* %47, align 4, !tbaa !31, !partition !3, !start !4, !end !37
  store i64 %45, i64* %send_alloca120, !reason !2
  %send_cast121 = bitcast i64* %send_alloca120 to i8*, !reason !2
  call void @send(i8* %send_cast121, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i8* %0), !reason !2
  %receive122 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i8* %0), !reason !2
  %bitcast123 = bitcast i8* %receive122 to i64*, !reason !2
  %receive_load124 = load i64, i64* %bitcast123, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load124, !partition !3, !start !35, !end !40
  store i32 %48, i32* %49, align 4, !tbaa !31, !partition !3, !start !40, !end !41
  %receive125 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i8* %0), !reason !2
  %bitcast126 = bitcast i8* %receive125 to i64*, !reason !2
  %receive_load127 = load i64, i64* %bitcast126, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %50 = add nsw i64 %receive_load127, 1, !partition !3, !start !38, !end !35
  %51 = trunc i64 %50 to i32, !partition !3, !start !37, !end !38
  store i32 %51, i32* %send_alloca128, !reason !2
  %send_cast129 = bitcast i32* %send_alloca128 to i8*, !reason !2
  call void @send(i8* %send_cast129, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i8* %0), !reason !2
  store i64 %50, i64* %send_alloca228, !reason !1
  %send_cast229 = bitcast i64* %send_alloca228 to i8*, !reason !1
  call void @send(i8* %send_cast229, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i8* %0), !reason !1
  %broadcast262 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i8* %0), !reason !8
  %bitcast263 = bitcast i8* %broadcast262 to i1*, !reason !8
  %receive_load264 = load i1, i1* %bitcast263, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load264, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %receive130 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i8* %0), !reason !2
  %bitcast131 = bitcast i8* %receive130 to i64*, !reason !2
  %receive_load132 = load i64, i64* %bitcast131, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load132, !partition !3, !start !42, !end !36
  %53 = load i32, i32* %52, align 4, !tbaa !31, !partition !3, !start !3, !end !39
  %receive133 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !2
  %bitcast134 = bitcast i8* %receive133 to i64*, !reason !2
  %receive_load135 = load i64, i64* %bitcast134, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %receive_load135, !partition !3, !start !39, !end !37
  %55 = load i32, i32* %54, align 4, !tbaa !31, !partition !3, !start !37, !end !43
  store i32 %53, i32* %send_alloca136, !reason !2
  %send_cast137 = bitcast i32* %send_alloca136 to i8*, !reason !2
  call void @send(i8* %send_cast137, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i8* %0), !reason !2
  store i32 %55, i32* %send_alloca138, !reason !2
  %send_cast139 = bitcast i32* %send_alloca138 to i8*, !reason !2
  call void @send(i8* %send_cast139, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i8* %0), !reason !2
  %receive140 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !2
  %bitcast141 = bitcast i8* %receive140 to i64*, !reason !2
  %receive_load142 = load i64, i64* %bitcast141, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load142, !partition !3, !start !43, !end !42
  %broadcast265 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i8* %0), !reason !8
  %bitcast266 = bitcast i8* %broadcast265 to i1*, !reason !8
  %receive_load267 = load i1, i1* %bitcast266, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load267, label %l18, label %l19

l18:                                              ; preds = %l17
  store i32 %53, i32* %56, align 4, !tbaa !31, !partition !3, !start !3, !end !39
  %repair_phi238 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i8* %0), !reason !8
  %bitcast239 = bitcast i8* %repair_phi238 to i32*, !reason !8
  %receive_load240 = load i32, i32* %bitcast239, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l20

l19:                                              ; preds = %l17
  store i32 %55, i32* %56, align 4, !tbaa !31, !partition !3, !start !3, !end !3
  %receive143 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !2
  %bitcast144 = bitcast i8* %receive143 to i32*, !reason !2
  %receive_load145 = load i32, i32* %bitcast144, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %57 = add nsw i32 %receive_load145, 1, !partition !3, !start !3, !end !3
  br label %l20

l20:                                              ; preds = %l18, %l19
  %new_phi146 = phi i32 [ %receive_load240, %l18 ], [ %57, %l19 ]
  %receive147 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_48 to i32), i8* %0), !reason !2
  %bitcast148 = bitcast i8* %receive147 to i64*, !reason !2
  %receive_load149 = load i64, i64* %bitcast148, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_48 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %58 = add nsw i64 %receive_load149, 1, !partition !3, !start !39, !end !37
  store i64 %58, i64* %send_alloca150, !reason !2
  %send_cast151 = bitcast i64* %send_alloca150 to i8*, !reason !2
  call void @send(i8* %send_cast151, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !2
  store i64 %58, i64* %send_alloca232, !reason !1
  %send_cast233 = bitcast i64* %send_alloca232 to i8*, !reason !1
  call void @send(i8* %send_cast233, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !1
  store i32 %new_phi146, i32* %send_alloca236, !reason !1
  %send_cast237 = bitcast i32* %send_alloca236 to i8*, !reason !1
  call void @send(i8* %send_cast237, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i8* %0), !reason !1
  %broadcast268 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !8
  %bitcast269 = bitcast i8* %broadcast268 to i1*, !reason !8
  %receive_load270 = load i1, i1* %bitcast269, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load270, label %l21, label %l17

l21:                                              ; preds = %l11, %l5, %l20
  store i64 %new_phi33, i64* %send_alloca193, !reason !2
  %send_cast194 = bitcast i64* %send_alloca193 to i8*, !reason !2
  call void @send(i8* %send_cast194, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i8* %0), !reason !2
  %receive195 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_67 to i32), i8* %0), !reason !2
  %bitcast196 = bitcast i8* %receive195 to i32*, !reason !2
  %receive_load197 = load i32, i32* %bitcast196, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_67 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %59 = add nsw i32 %receive_load197, %1, !partition !3, !start !3, !end !4
  %receive198 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i8* %0), !reason !2
  %bitcast199 = bitcast i8* %receive198 to i64*, !reason !2
  %receive_load200 = load i64, i64* %bitcast199, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %60 = icmp slt i64 %receive_load200, 256, !partition !3, !start !4, !end !5
  store i64 %new_phi32, i64* %send_alloca201, !reason !2
  %send_cast202 = bitcast i64* %send_alloca201 to i8*, !reason !2
  call void @send(i8* %send_cast202, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !2
  %receive203 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !2
  %bitcast204 = bitcast i8* %receive203 to i32*, !reason !2
  %receive_load205 = load i32, i32* %bitcast204, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %61 = add i32 %receive_load205, %1, !partition !3, !start !5, !end !6
  store i64 %new_phi, i64* %send_alloca206, !reason !2
  %send_cast207 = bitcast i64* %send_alloca206 to i8*, !reason !2
  call void @send(i8* %send_cast207, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_71 to i32), i8* %0), !reason !2
  %repair_phi215 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !8
  %bitcast216 = bitcast i8* %repair_phi215 to i64*, !reason !8
  %receive_load217 = load i64, i64* %bitcast216, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i32 %61, i32* %send_alloca218, !reason !1
  %send_cast219 = bitcast i32* %send_alloca218 to i8*, !reason !1
  call void @send(i8* %send_cast219, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_76 to i32), i8* %0), !reason !1
  %repair_phi220 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !8
  %bitcast221 = bitcast i8* %repair_phi220 to i64*, !reason !8
  %receive_load222 = load i64, i64* %bitcast221, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi223 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i8* %0), !reason !8
  %bitcast224 = bitcast i8* %repair_phi223 to i64*, !reason !8
  %receive_load225 = load i64, i64* %bitcast224, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i32 %59, i32* %send_alloca226, !reason !1
  %send_cast227 = bitcast i32* %send_alloca226 to i8*, !reason !1
  call void @send(i8* %send_cast227, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i8* %0), !reason !1
  store i1 %60, i1* %send_alloca285, !reason !0
  %send_cast286 = bitcast i1* %send_alloca285 to i8*, !reason !0
  call void @send(i8* %send_cast286, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i8* %0), !reason !0
  br i1 %60, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive208 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i8* %0), !reason !2
  %bitcast209 = bitcast i8* %receive208 to i32*, !reason !2
  %receive_load210 = load i32, i32* %bitcast209, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %62 = shl nsw i32 %receive_load210, 1, !partition !3, !start !3, !end !4
  store i32 %62, i32* %send_alloca211, !reason !1
  %send_cast212 = bitcast i32* %send_alloca211 to i8*, !reason !1
  call void @send(i8* %send_cast212, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !1
  %broadcast287 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i8* %0), !reason !8
  %bitcast288 = bitcast i8* %broadcast287 to i1*, !reason !8
  %receive_load289 = load i1, i1* %bitcast288, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load289, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @_p_mergesort_1(i8*) {
entry:
  %send_alloca283 = alloca i1, !reason !0
  %send_alloca278 = alloca i1, !reason !0
  %send_alloca276 = alloca i1, !reason !0
  %send_alloca271 = alloca i1, !reason !0
  %send_alloca269 = alloca i1, !reason !0
  %send_alloca267 = alloca i1, !reason !0
  %send_alloca265 = alloca i1, !reason !0
  %send_alloca263 = alloca i1, !reason !0
  %send_alloca259 = alloca i1, !reason !0
  %send_alloca257 = alloca i1, !reason !0
  %send_alloca255 = alloca i32, !reason !1
  %send_alloca241 = alloca i64, !reason !1
  %send_alloca239 = alloca i32, !reason !1
  %send_alloca219 = alloca i64, !reason !1
  %send_alloca217 = alloca i64, !reason !1
  %send_alloca212 = alloca i64, !reason !1
  %send_alloca210 = alloca i64, !reason !1
  %send_alloca206 = alloca i32, !reason !2
  %send_alloca201 = alloca i32, !reason !2
  %send_alloca196 = alloca i64, !reason !2
  %send_alloca194 = alloca i32, !reason !2
  %send_alloca183 = alloca i64, !reason !2
  %send_alloca180 = alloca i32, !reason !2
  %send_alloca178 = alloca i64, !reason !2
  %send_alloca170 = alloca i64, !reason !2
  %send_alloca168 = alloca i64, !reason !2
  %send_alloca154 = alloca i64, !reason !2
  %send_alloca146 = alloca i64, !reason !2
  %send_alloca141 = alloca i64, !reason !2
  %send_alloca138 = alloca i32, !reason !2
  %send_alloca136 = alloca i64, !reason !2
  %send_alloca128 = alloca i64, !reason !2
  %send_alloca126 = alloca i64, !reason !2
  %send_alloca118 = alloca i64, !reason !2
  %send_alloca116 = alloca i64, !reason !2
  %send_alloca111 = alloca i64, !reason !2
  %send_alloca108 = alloca i64, !reason !2
  %send_alloca103 = alloca i32, !reason !2
  %send_alloca98 = alloca i32, !reason !2
  %send_alloca90 = alloca i32, !reason !2
  %send_alloca88 = alloca i32, !reason !2
  %send_alloca83 = alloca i32, !reason !2
  %send_alloca81 = alloca i32, !reason !2
  %send_alloca79 = alloca i32, !reason !2
  %send_alloca77 = alloca i32, !reason !2
  %send_alloca69 = alloca i64, !reason !2
  %send_alloca67 = alloca i64, !reason !2
  %send_alloca59 = alloca i32, !reason !2
  %send_alloca57 = alloca i32, !reason !2
  %send_alloca52 = alloca i32, !reason !2
  %send_alloca50 = alloca i32, !reason !2
  %send_alloca48 = alloca i1, !reason !2
  %send_alloca40 = alloca i64, !reason !2
  %send_alloca38 = alloca i64, !reason !2
  %send_alloca33 = alloca i32, !reason !2
  %send_alloca29 = alloca i32, !reason !2
  %send_alloca27 = alloca i32, !reason !2
  %send_alloca = alloca i32, !reason !2
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %receive_load209, %l22 ]
  store i32 %new_phi, i32* %send_alloca, !reason !2
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !2
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !2
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !2
  %bitcast = bitcast i8* %receive to i32*, !reason !2
  %receive_load = load i32, i32* %bitcast, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %1 = sext i32 %receive_load to i64, !partition !39, !start !5, !end !6
  %receive24 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !2
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !2
  %receive_load26 = load i32, i32* %bitcast25, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %2 = zext i32 %receive_load26 to i64, !partition !39, !start !4, !end !5
  %3 = mul i32 %new_phi, -2, !partition !39, !start !3, !end !4
  store i32 %new_phi, i32* %send_alloca27, !reason !2
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !2
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !2
  store i32 %new_phi, i32* %send_alloca29, !reason !2
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !2
  call void @send(i8* %send_cast30, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !2
  %4 = icmp sgt i32 %new_phi, 0, !partition !39, !start !6, !end !7
  store i64 %1, i64* %send_alloca210, !reason !1
  %send_cast211 = bitcast i64* %send_alloca210 to i8*, !reason !1
  call void @send(i8* %send_cast211, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !1
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi31 = phi i32 [ %new_phi, %l ], [ %receive_load216, %l21 ]
  %new_phi32 = phi i32 [ 0, %l ], [ %receive_load223, %l21 ]
  store i32 %new_phi31, i32* %send_alloca33, !reason !2
  %send_cast34 = bitcast i32* %send_alloca33 to i8*, !reason !2
  call void @send(i8* %send_cast34, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !2
  %receive35 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !2
  %bitcast36 = bitcast i8* %receive35 to i64*, !reason !2
  %receive_load37 = load i64, i64* %bitcast36, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %5 = mul nsw i64 %receive_load37, %1, !partition !39, !start !20, !end !17
  store i64 %5, i64* %send_alloca38, !reason !2
  %send_cast39 = bitcast i64* %send_alloca38 to i8*, !reason !2
  call void @send(i8* %send_cast39, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !2
  store i64 %5, i64* %send_alloca40, !reason !2
  %send_cast41 = bitcast i64* %send_alloca40 to i8*, !reason !2
  call void @send(i8* %send_cast41, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !2
  %receive42 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !2
  %bitcast43 = bitcast i8* %receive42 to i64*, !reason !2
  %receive_load44 = load i64, i64* %bitcast43, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %6 = trunc i64 %receive_load44 to i32, !partition !39, !start !28, !end !24
  %7 = add i32 %new_phi, %6, !partition !39, !start !14, !end !44
  %receive45 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !2
  %bitcast46 = bitcast i8* %receive45 to i32*, !reason !2
  %receive_load47 = load i32, i32* %bitcast46, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %8 = or i32 %receive_load47, 1, !partition !39, !start !22, !end !20
  %9 = icmp sgt i32 %7, %8, !partition !39, !start !25, !end !9
  store i1 %9, i1* %send_alloca48, !reason !2
  %send_cast49 = bitcast i1* %send_alloca48 to i8*, !reason !2
  call void @send(i8* %send_cast49, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i8* %0), !reason !2
  store i32 %7, i32* %send_alloca50, !reason !2
  %send_cast51 = bitcast i32* %send_alloca50 to i8*, !reason !2
  call void @send(i8* %send_cast51, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !2
  store i32 %8, i32* %send_alloca52, !reason !2
  %send_cast53 = bitcast i32* %send_alloca52 to i8*, !reason !2
  call void @send(i8* %send_cast53, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !2
  %receive54 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_14 to i32), i8* %0), !reason !2
  %bitcast55 = bitcast i8* %receive54 to i64*, !reason !2
  %receive_load56 = load i64, i64* %bitcast55, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_14 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %10 = trunc i64 %receive_load56 to i32, !partition !39, !start !11, !end !12
  store i32 %3, i32* %send_alloca57, !reason !2
  %send_cast58 = bitcast i32* %send_alloca57 to i8*, !reason !2
  call void @send(i8* %send_cast58, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i8* %0), !reason !2
  store i32 %10, i32* %send_alloca59, !reason !2
  %send_cast60 = bitcast i32* %send_alloca59 to i8*, !reason !2
  call void @send(i8* %send_cast60, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_16 to i32), i8* %0), !reason !2
  %receive61 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i8* %0), !reason !2
  %bitcast62 = bitcast i8* %receive61 to i32*, !reason !2
  %receive_load63 = load i32, i32* %bitcast62, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %11 = add i32 %receive_load63, -1, !partition !39, !start !7, !end !11
  %receive64 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i8* %0), !reason !2
  %bitcast65 = bitcast i8* %receive64 to i32*, !reason !2
  %receive_load66 = load i32, i32* %bitcast65, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_18 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %12 = add i32 %receive_load66, %11, !partition !39, !start !18, !end !26
  %13 = zext i32 %12 to i64, !partition !39, !start !16, !end !29
  %14 = shl nuw nsw i64 %13, 2, !partition !39, !start !45, !end !28
  %15 = add nuw nsw i64 %14, 4, !partition !39, !start !3, !end !4
  %16 = sext i32 %new_phi31 to i64, !partition !39, !start !4, !end !5
  store i64 %1, i64* %send_alloca67, !reason !2
  %send_cast68 = bitcast i64* %send_alloca67 to i8*, !reason !2
  call void @send(i8* %send_cast68, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_19 to i32), i8* %0), !reason !2
  store i64 %2, i64* %send_alloca69, !reason !2
  %send_cast70 = bitcast i64* %send_alloca69 to i8*, !reason !2
  call void @send(i8* %send_cast70, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_20 to i32), i8* %0), !reason !2
  %receive71 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_21 to i32), i8* %0), !reason !2
  %bitcast72 = bitcast i8* %receive71 to i64*, !reason !2
  %receive_load73 = load i64, i64* %bitcast72, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_21 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %17 = trunc i64 %receive_load73 to i32, !partition !39, !start !24, !end !25
  %18 = add i32 %new_phi, %17, !partition !39, !start !10, !end !21
  %receive74 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i8* %0), !reason !2
  %bitcast75 = bitcast i8* %receive74 to i64*, !reason !2
  %receive_load76 = load i64, i64* %bitcast75, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_22 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %19 = trunc i64 %receive_load76 to i32, !partition !39, !start !9, !end !10
  %20 = or i32 %19, 1, !partition !39, !start !6, !end !7
  store i32 %18, i32* %send_alloca77, !reason !2
  %send_cast78 = bitcast i32* %send_alloca77 to i8*, !reason !2
  call void @send(i8* %send_cast78, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_23 to i32), i8* %0), !reason !2
  store i32 %20, i32* %send_alloca79, !reason !2
  %send_cast80 = bitcast i32* %send_alloca79 to i8*, !reason !2
  call void @send(i8* %send_cast80, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !2
  store i32 %18, i32* %send_alloca81, !reason !2
  %send_cast82 = bitcast i32* %send_alloca81 to i8*, !reason !2
  call void @send(i8* %send_cast82, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_25 to i32), i8* %0), !reason !2
  store i32 %20, i32* %send_alloca83, !reason !2
  %send_cast84 = bitcast i32* %send_alloca83 to i8*, !reason !2
  call void @send(i8* %send_cast84, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_26 to i32), i8* %0), !reason !2
  %receive85 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !2
  %bitcast86 = bitcast i8* %receive85 to i64*, !reason !2
  %receive_load87 = load i64, i64* %bitcast86, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %21 = trunc i64 %receive_load87 to i32, !partition !39, !start !29, !end !13
  store i32 %3, i32* %send_alloca88, !reason !2
  %send_cast89 = bitcast i32* %send_alloca88 to i8*, !reason !2
  call void @send(i8* %send_cast89, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !2
  store i32 %21, i32* %send_alloca90, !reason !2
  %send_cast91 = bitcast i32* %send_alloca90 to i8*, !reason !2
  call void @send(i8* %send_cast91, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i8* %0), !reason !2
  %receive92 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i8* %0), !reason !2
  %bitcast93 = bitcast i8* %receive92 to i32*, !reason !2
  %receive_load94 = load i32, i32* %bitcast93, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive95 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i8* %0), !reason !2
  %bitcast96 = bitcast i8* %receive95 to i32*, !reason !2
  %receive_load97 = load i32, i32* %bitcast96, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %22 = add i32 %receive_load94, %receive_load97, !partition !39, !start !26, !end !15
  store i32 %22, i32* %send_alloca98, !reason !2
  %send_cast99 = bitcast i32* %send_alloca98 to i8*, !reason !2
  call void @send(i8* %send_cast99, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_32 to i32), i8* %0), !reason !2
  %receive100 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !2
  %bitcast101 = bitcast i8* %receive100 to i64*, !reason !2
  %receive_load102 = load i64, i64* %bitcast101, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %23 = shl nuw nsw i64 %receive_load102, 2, !partition !39, !start !15, !end !16
  %24 = add nuw nsw i64 %23, 4, !partition !39, !start !21, !end !22
  %25 = add nsw i32 %new_phi32, %new_phi, !partition !39, !start !12, !end !45
  %26 = add nsw i32 %25, %new_phi, !partition !39, !start !13, !end !14
  store i32 %26, i32* %send_alloca103, !reason !2
  %send_cast104 = bitcast i32* %send_alloca103 to i8*, !reason !2
  call void @send(i8* %send_cast104, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i8* %0), !reason !2
  %receive105 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i8* %0), !reason !2
  %bitcast106 = bitcast i8* %receive105 to i64*, !reason !2
  %receive_load107 = load i64, i64* %bitcast106, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_35 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %27 = icmp slt i64 %receive_load107, 257, !partition !39, !start !17, !end !18
  store i1 %27, i1* %send_alloca257, !reason !0
  %send_cast258 = bitcast i1* %send_alloca257 to i8*, !reason !0
  call void @send(i8* %send_cast258, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_92 to i32), i8* %0), !reason !0
  br i1 %27, label %l3, label %l2

l2:                                               ; preds = %l1
  store i1 %4, i1* %send_alloca259, !reason !0
  %send_cast260 = bitcast i1* %send_alloca259 to i8*, !reason !0
  call void @send(i8* %send_cast260, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_93 to i32), i8* %0), !reason !0
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  store i1 %4, i1* %send_alloca269, !reason !0
  %send_cast270 = bitcast i1* %send_alloca269 to i8*, !reason !0
  call void @send(i8* %send_cast270, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !0
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  store i64 %15, i64* %send_alloca146, !reason !2
  %send_cast147 = bitcast i64* %send_alloca146 to i8*, !reason !2
  call void @send(i8* %send_cast147, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_50 to i32), i8* %0), !reason !2
  br label %l7

l5:                                               ; preds = %l7, %l3
  %broadcast273 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !8
  %bitcast274 = bitcast i8* %broadcast273 to i1*, !reason !8
  %receive_load275 = load i1, i1* %bitcast274, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load275, label %l6, label %l21

l6:                                               ; preds = %l5
  %receive162 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !2
  %bitcast163 = bitcast i8* %receive162 to i64*, !reason !2
  %receive_load164 = load i64, i64* %bitcast163, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %28 = trunc i64 %receive_load164 to i32, !partition !39, !start !3, !end !4
  %repair_phi243 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i8* %0), !reason !8
  %bitcast244 = bitcast i8* %repair_phi243 to i64*, !reason !8
  %receive_load245 = load i64, i64* %bitcast244, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi252 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_90 to i32), i8* %0), !reason !8
  %bitcast253 = bitcast i8* %repair_phi252 to i32*, !reason !8
  %receive_load254 = load i32, i32* %bitcast253, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_90 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l8

l7:                                               ; preds = %l7, %l4
  %receive148 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_51 to i32), i8* %0), !reason !2
  %bitcast149 = bitcast i8* %receive148 to i32*, !reason !2
  %receive_load150 = load i32, i32* %bitcast149, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_51 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive151 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !2
  %bitcast152 = bitcast i8* %receive151 to i32*, !reason !2
  %receive_load153 = load i32, i32* %bitcast152, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %29 = sub i32 %receive_load150, %receive_load153, !partition !39, !start !6, !end !7
  %30 = sext i32 %29 to i64, !partition !39, !start !4, !end !5
  store i64 %30, i64* %send_alloca154, !reason !2
  %send_cast155 = bitcast i64* %send_alloca154 to i8*, !reason !2
  call void @send(i8* %send_cast155, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_53 to i32), i8* %0), !reason !2
  %receive156 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_54 to i32), i8* %0), !reason !2
  %bitcast157 = bitcast i8* %receive156 to i64*, !reason !2
  %receive_load158 = load i64, i64* %bitcast157, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_54 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %31 = add nsw i64 %receive_load158, 1, !partition !39, !start !5, !end !6
  %receive159 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !2
  %bitcast160 = bitcast i8* %receive159 to i64*, !reason !2
  %receive_load161 = load i64, i64* %bitcast160, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %32 = icmp slt i64 %31, %receive_load161, !partition !39, !start !3, !end !4
  store i64 %31, i64* %send_alloca241, !reason !1
  %send_cast242 = bitcast i64* %send_alloca241 to i8*, !reason !1
  call void @send(i8* %send_cast242, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i8* %0), !reason !1
  store i1 %32, i1* %send_alloca271, !reason !0
  %send_cast272 = bitcast i1* %send_alloca271 to i8*, !reason !0
  call void @send(i8* %send_cast272, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !0
  br i1 %32, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi165 = phi i64 [ %receive_load245, %l6 ], [ %receive_load248, %l11 ]
  %new_phi166 = phi i32 [ %28, %l6 ], [ %receive_load251, %l11 ]
  %new_phi167 = phi i32 [ %receive_load254, %l6 ], [ %new_phi182, %l11 ]
  %33 = sext i32 %new_phi167 to i64, !partition !39, !start !39, !end !37
  store i64 %33, i64* %send_alloca168, !reason !2
  %send_cast169 = bitcast i64* %send_alloca168 to i8*, !reason !2
  call void @send(i8* %send_cast169, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !2
  %34 = sext i32 %new_phi166 to i64, !partition !39, !start !37, !end !38
  store i64 %34, i64* %send_alloca170, !reason !2
  %send_cast171 = bitcast i64* %send_alloca170 to i8*, !reason !2
  call void @send(i8* %send_cast171, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_58 to i32), i8* %0), !reason !2
  %receive172 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_59 to i32), i8* %0), !reason !2
  %bitcast173 = bitcast i8* %receive172 to i32*, !reason !2
  %receive_load174 = load i32, i32* %bitcast173, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_59 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive175 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i8* %0), !reason !2
  %bitcast176 = bitcast i8* %receive175 to i32*, !reason !2
  %receive_load177 = load i32, i32* %bitcast176, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %35 = icmp slt i32 %receive_load174, %receive_load177, !partition !39, !start !38, !end !35
  store i64 %new_phi165, i64* %send_alloca178, !reason !2
  %send_cast179 = bitcast i64* %send_alloca178 to i8*, !reason !2
  call void @send(i8* %send_cast179, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_61 to i32), i8* %0), !reason !2
  store i1 %35, i1* %send_alloca276, !reason !0
  %send_cast277 = bitcast i1* %send_alloca276 to i8*, !reason !0
  call void @send(i8* %send_cast277, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !0
  br i1 %35, label %l9, label %l10

l9:                                               ; preds = %l8
  %36 = add nsw i32 %new_phi167, -1, !partition !39, !start !39, !end !37
  store i32 %new_phi166, i32* %send_alloca255, !reason !1
  %send_cast256 = bitcast i32* %send_alloca255 to i8*, !reason !1
  call void @send(i8* %send_cast256, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i8* %0), !reason !1
  br label %l11

l10:                                              ; preds = %l8
  store i32 %new_phi166, i32* %send_alloca180, !reason !2
  %send_cast181 = bitcast i32* %send_alloca180 to i8*, !reason !2
  call void @send(i8* %send_cast181, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_62 to i32), i8* %0), !reason !2
  br label %l11

l11:                                              ; preds = %l9, %l10
  %new_phi182 = phi i32 [ %36, %l9 ], [ %new_phi167, %l10 ]
  store i64 %new_phi165, i64* %send_alloca183, !reason !2
  %send_cast184 = bitcast i64* %send_alloca183 to i8*, !reason !2
  call void @send(i8* %send_cast184, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !2
  %receive185 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !2
  %bitcast186 = bitcast i8* %receive185 to i64*, !reason !2
  %receive_load187 = load i64, i64* %bitcast186, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %receive188 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !2
  %bitcast189 = bitcast i8* %receive188 to i64*, !reason !2
  %receive_load190 = load i64, i64* %bitcast189, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %37 = icmp eq i64 %receive_load187, %receive_load190, !partition !39, !start !3, !end !4
  %repair_phi246 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i8* %0), !reason !8
  %bitcast247 = bitcast i8* %repair_phi246 to i64*, !reason !8
  %receive_load248 = load i64, i64* %bitcast247, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi249 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_89 to i32), i8* %0), !reason !8
  %bitcast250 = bitcast i8* %repair_phi249 to i32*, !reason !8
  %receive_load251 = load i32, i32* %bitcast250, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_89 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %37, i1* %send_alloca278, !reason !0
  %send_cast279 = bitcast i1* %send_alloca278 to i8*, !reason !0
  call void @send(i8* %send_cast279, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i8* %0), !reason !0
  br i1 %37, label %l21, label %l8

l12:                                              ; preds = %l2
  store i64 %24, i64* %send_alloca108, !reason !2
  %send_cast109 = bitcast i64* %send_alloca108 to i8*, !reason !2
  call void @send(i8* %send_cast109, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !2
  br label %l13

l13:                                              ; preds = %l12, %l2
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i8* %0), !reason !8
  %bitcast261 = bitcast i8* %broadcast to i1*, !reason !8
  %receive_load262 = load i1, i1* %bitcast261, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_94 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load262, label %l14, label %l15

l14:                                              ; preds = %l13
  br label %l16

l15:                                              ; preds = %l16, %l13
  %repair_phi227 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_81 to i32), i8* %0), !reason !8
  %bitcast228 = bitcast i8* %repair_phi227 to i64*, !reason !8
  %receive_load229 = load i64, i64* %bitcast228, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_81 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi233 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_83 to i32), i8* %0), !reason !8
  %bitcast234 = bitcast i8* %repair_phi233 to i32*, !reason !8
  %receive_load235 = load i32, i32* %bitcast234, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_83 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi110 = phi i64 [ %16, %l14 ], [ %receive_load226, %l16 ]
  store i64 %new_phi110, i64* %send_alloca111, !reason !2
  %send_cast112 = bitcast i64* %send_alloca111 to i8*, !reason !2
  call void @send(i8* %send_cast112, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_37 to i32), i8* %0), !reason !2
  %receive113 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i8* %0), !reason !2
  %bitcast114 = bitcast i8* %receive113 to i64*, !reason !2
  %receive_load115 = load i64, i64* %bitcast114, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_38 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %38 = sub i64 %receive_load115, %new_phi110, !partition !39, !start !39, !end !37
  %39 = shl i64 %38, 32, !partition !39, !start !37, !end !38
  %40 = ashr exact i64 %39, 32, !partition !39, !start !38, !end !35
  store i64 %40, i64* %send_alloca116, !reason !2
  %send_cast117 = bitcast i64* %send_alloca116 to i8*, !reason !2
  call void @send(i8* %send_cast117, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i8* %0), !reason !2
  store i64 %new_phi110, i64* %send_alloca118, !reason !2
  %send_cast119 = bitcast i64* %send_alloca118 to i8*, !reason !2
  call void @send(i8* %send_cast119, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i8* %0), !reason !2
  %receive120 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i8* %0), !reason !2
  %bitcast121 = bitcast i8* %receive120 to i32*, !reason !2
  %receive_load122 = load i32, i32* %bitcast121, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %41 = icmp eq i32 %receive_load122, 257, !partition !39, !start !35, !end !40
  %repair_phi224 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i8* %0), !reason !8
  %bitcast225 = bitcast i8* %repair_phi224 to i64*, !reason !8
  %receive_load226 = load i64, i64* %bitcast225, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %41, i1* %send_alloca263, !reason !0
  %send_cast264 = bitcast i1* %send_alloca263 to i8*, !reason !0
  call void @send(i8* %send_cast264, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_95 to i32), i8* %0), !reason !0
  br i1 %41, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi123 = phi i64 [ %receive_load229, %l15 ], [ %receive_load232, %l20 ]
  %new_phi124 = phi i32 [ 256, %l15 ], [ %new_phi140, %l20 ]
  %new_phi125 = phi i32 [ %receive_load235, %l15 ], [ %receive_load238, %l20 ]
  %42 = sext i32 %new_phi124 to i64, !partition !39, !start !39, !end !37
  store i64 %42, i64* %send_alloca126, !reason !2
  %send_cast127 = bitcast i64* %send_alloca126 to i8*, !reason !2
  call void @send(i8* %send_cast127, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i8* %0), !reason !2
  %43 = sext i32 %new_phi125 to i64, !partition !39, !start !37, !end !38
  store i64 %43, i64* %send_alloca128, !reason !2
  %send_cast129 = bitcast i64* %send_alloca128 to i8*, !reason !2
  call void @send(i8* %send_cast129, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !2
  %receive130 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i8* %0), !reason !2
  %bitcast131 = bitcast i8* %receive130 to i32*, !reason !2
  %receive_load132 = load i32, i32* %bitcast131, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_44 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %receive133 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i8* %0), !reason !2
  %bitcast134 = bitcast i8* %receive133 to i32*, !reason !2
  %receive_load135 = load i32, i32* %bitcast134, !reason !2
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_45 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  %44 = icmp slt i32 %receive_load132, %receive_load135, !partition !39, !start !38, !end !35
  store i64 %new_phi123, i64* %send_alloca136, !reason !2
  %send_cast137 = bitcast i64* %send_alloca136 to i8*, !reason !2
  call void @send(i8* %send_cast137, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !2
  store i1 %44, i1* %send_alloca265, !reason !0
  %send_cast266 = bitcast i1* %send_alloca265 to i8*, !reason !0
  call void @send(i8* %send_cast266, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_96 to i32), i8* %0), !reason !0
  br i1 %44, label %l18, label %l19

l18:                                              ; preds = %l17
  %45 = add nsw i32 %new_phi124, -1, !partition !39, !start !39, !end !37
  store i32 %new_phi125, i32* %send_alloca239, !reason !1
  %send_cast240 = bitcast i32* %send_alloca239 to i8*, !reason !1
  call void @send(i8* %send_cast240, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_85 to i32), i8* %0), !reason !1
  br label %l20

l19:                                              ; preds = %l17
  store i32 %new_phi125, i32* %send_alloca138, !reason !2
  %send_cast139 = bitcast i32* %send_alloca138 to i8*, !reason !2
  call void @send(i8* %send_cast139, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !2
  br label %l20

l20:                                              ; preds = %l18, %l19
  %new_phi140 = phi i32 [ %45, %l18 ], [ %new_phi124, %l19 ]
  store i64 %new_phi123, i64* %send_alloca141, !reason !2
  %send_cast142 = bitcast i64* %send_alloca141 to i8*, !reason !2
  call void @send(i8* %send_cast142, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_48 to i32), i8* %0), !reason !2
  %receive143 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !2
  %bitcast144 = bitcast i8* %receive143 to i64*, !reason !2
  %receive_load145 = load i64, i64* %bitcast144, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %46 = icmp eq i64 %receive_load145, 257, !partition !39, !start !3, !end !4
  %repair_phi230 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !8
  %bitcast231 = bitcast i8* %repair_phi230 to i64*, !reason !8
  %receive_load232 = load i64, i64* %bitcast231, !reason !8
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !8
  %repair_phi236 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i8* %0), !reason !8
  %bitcast237 = bitcast i8* %repair_phi236 to i32*, !reason !8
  %receive_load238 = load i32, i32* %bitcast237, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %46, i1* %send_alloca267, !reason !0
  %send_cast268 = bitcast i1* %send_alloca267 to i8*, !reason !0
  call void @send(i8* %send_cast268, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !0
  br i1 %46, label %l21, label %l17

l21:                                              ; preds = %l11, %l5, %l20
  %receive191 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i8* %0), !reason !2
  %bitcast192 = bitcast i8* %receive191 to i64*, !reason !2
  %receive_load193 = load i64, i64* %bitcast192, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_66 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %47 = add nsw i64 %receive_load193, %1, !partition !39, !start !5, !end !6
  store i32 %new_phi32, i32* %send_alloca194, !reason !2
  %send_cast195 = bitcast i32* %send_alloca194 to i8*, !reason !2
  call void @send(i8* %send_cast195, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_67 to i32), i8* %0), !reason !2
  store i64 %47, i64* %send_alloca196, !reason !2
  %send_cast197 = bitcast i64* %send_alloca196 to i8*, !reason !2
  call void @send(i8* %send_cast197, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_68 to i32), i8* %0), !reason !2
  %receive198 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !2
  %bitcast199 = bitcast i8* %receive198 to i64*, !reason !2
  %receive_load200 = load i64, i64* %bitcast199, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %48 = add nuw nsw i64 %receive_load200, 1, !partition !39, !start !4, !end !5
  store i32 %new_phi31, i32* %send_alloca201, !reason !2
  %send_cast202 = bitcast i32* %send_alloca201 to i8*, !reason !2
  call void @send(i8* %send_cast202, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !2
  %receive203 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_71 to i32), i8* %0), !reason !2
  %bitcast204 = bitcast i8* %receive203 to i64*, !reason !2
  %receive_load205 = load i64, i64* %bitcast204, !reason !2
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_71 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !2
  %49 = add i64 %receive_load205, %1, !partition !39, !start !3, !end !4
  store i64 %49, i64* %send_alloca212, !reason !1
  %send_cast213 = bitcast i64* %send_alloca212 to i8*, !reason !1
  call void @send(i8* %send_cast213, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !1
  %repair_phi214 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_76 to i32), i8* %0), !reason !8
  %bitcast215 = bitcast i8* %repair_phi214 to i32*, !reason !8
  %receive_load216 = load i32, i32* %bitcast215, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_76 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i64 %48, i64* %send_alloca217, !reason !1
  %send_cast218 = bitcast i64* %send_alloca217 to i8*, !reason !1
  call void @send(i8* %send_cast218, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !1
  store i64 %47, i64* %send_alloca219, !reason !1
  %send_cast220 = bitcast i64* %send_alloca219 to i8*, !reason !1
  call void @send(i8* %send_cast220, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_78 to i32), i8* %0), !reason !1
  %repair_phi221 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i8* %0), !reason !8
  %bitcast222 = bitcast i8* %repair_phi221 to i32*, !reason !8
  %receive_load223 = load i32, i32* %bitcast222, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_79 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  %broadcast280 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i8* %0), !reason !8
  %bitcast281 = bitcast i8* %broadcast280 to i1*, !reason !8
  %receive_load282 = load i1, i1* %bitcast281, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  br i1 %receive_load282, label %l1, label %l22

l22:                                              ; preds = %l21
  store i32 %new_phi, i32* %send_alloca206, !reason !2
  %send_cast207 = bitcast i32* %send_alloca206 to i8*, !reason !2
  call void @send(i8* %send_cast207, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i8* %0), !reason !2
  %50 = icmp slt i32 %new_phi, 128, !partition !39, !start !3, !end !4
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !8
  %bitcast208 = bitcast i8* %repair_phi to i32*, !reason !8
  %receive_load209 = load i32, i32* %bitcast208, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  store i1 %50, i1* %send_alloca283, !reason !0
  %send_cast284 = bitcast i1* %send_alloca283 to i8*, !reason !0
  call void @send(i8* %send_cast284, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i8* %0), !reason !0
  br i1 %50, label %l, label %l23

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
!5 = !{!"6"}
!6 = !{!"9"}
!7 = !{!"12"}
!8 = !{!"receive"}
!9 = !{!"33"}
!10 = !{!"36"}
!11 = !{!"15"}
!12 = !{!"18"}
!13 = !{!"66"}
!14 = !{!"69"}
!15 = !{!"57"}
!16 = !{!"60"}
!17 = !{!"48"}
!18 = !{!"51"}
!19 = !{!"19"}
!20 = !{!"45"}
!21 = !{!"39"}
!22 = !{!"42"}
!23 = !{!"22"}
!24 = !{!"27"}
!25 = !{!"30"}
!26 = !{!"54"}
!27 = !{!"70"}
!28 = !{!"24"}
!29 = !{!"63"}
!30 = !{!"73"}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!"10"}
!36 = !{!"11"}
!37 = !{!"4"}
!38 = !{!"7"}
!39 = !{!"1"}
!40 = !{!"13"}
!41 = !{!"14"}
!42 = !{!"8"}
!43 = !{!"5"}
!44 = !{!"72"}
!45 = !{!"21"}
