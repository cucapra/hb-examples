; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [4 x i32] [i32 4, i32 3, i32 2, i32 1], section ".dram"
@alloca = global [4 x i32] zeroinitializer, section ".dram", align 16
@alloca.1 = global [4 x i32] zeroinitializer, section ".dram", align 16
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
@comms_10 = external global { i64, i1, i32 }
@comms_11 = external global { i64, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i32, i1, i32 }
@comms_14 = external global { i32, i1, i32 }
@comms_15 = external global { i32, i1, i32 }
@comms_16 = external global { i1, i1, i32 }
@comms_17 = external global { i32, i1, i32 }
@comms_18 = external global { i64, i1, i32 }
@comms_19 = external global { i32, i1, i32 }
@comms_20 = external global { i32, i1, i32 }
@comms_21 = external global { i32, i1, i32 }
@comms_22 = external global { i32, i1, i32 }
@comms_23 = external global { i64, i1, i32 }
@comms_24 = external global { i32, i1, i32 }
@comms_25 = external global { i64, i1, i32 }
@comms_26 = external global { i64, i1, i32 }
@comms_27 = external global { i64, i1, i32 }
@comms_28 = external global { i32, i1, i32 }
@comms_29 = external global { i32, i1, i32 }
@comms_30 = external global { i32, i1, i32 }
@comms_31 = external global { i32, i1, i32 }
@comms_32 = external global { i1, i1, i32 }
@comms_33 = external global { i64, i1, i32 }
@comms_34 = external global { i32, i1, i32 }
@comms_35 = external global { i32, i1, i32 }
@comms_36 = external global { i64, i1, i32 }
@comms_37 = external global { i32, i1, i32 }
@comms_38 = external global { i32, i1, i32 }
@comms_39 = external global { i64, i1, i32 }
@comms_40 = external global { i64, i1, i32 }
@comms_41 = external global { i32, i1, i32 }
@comms_42 = external global { i64, i1, i32 }
@comms_43 = external global { i64, i1, i32 }
@comms_44 = external global { i64, i1, i32 }
@comms_45 = external global { i64, i1, i32 }
@comms_46 = external global { i64, i1, i32 }
@comms_47 = external global { i32, i1, i32 }
@comms_48 = external global { i32, i1, i32 }
@comms_49 = external global { i64, i1, i32 }
@comms_50 = external global { i32, i1, i32 }
@comms_51 = external global { i64, i1, i32 }
@comms_52 = external global { i32, i1, i32 }
@comms_53 = external global { i32, i1, i32 }
@comms_54 = external global { i32, i1, i32 }
@comms_55 = external global { i64, i1, i32 }
@comms_56 = external global { i64, i1, i32 }
@comms_57 = external global { i64, i1, i32 }
@comms_58 = external global { i32, i1, i32 }
@comms_59 = external global { i64, i1, i32 }
@comms_60 = external global { i32, i1, i32 }
@comms_61 = external global { i32, i1, i32 }
@comms_62 = external global { i64, i1, i32 }
@comms_63 = external global { i64, i1, i32 }
@comms_64 = external global { i64, i1, i32 }
@comms_65 = external global { i64, i1, i32 }
@comms_66 = external global { i32, i1, i32 }
@comms_67 = external global { i64, i1, i32 }
@comms_68 = external global { i32, i1, i32 }
@comms_69 = external global { i64, i1, i32 }
@comms_70 = external global { i32, i1, i32 }
@comms_71 = external global { i32, i1, i32 }
@comms_72 = external global { i32, i1, i32 }
@comms_73 = external global { i32, i1, i32 }
@comms_74 = external global { i64, i1, i32 }
@comms_75 = external global { i64, i1, i32 }
@comms_76 = external global { i64, i1, i32 }
@comms_77 = external global { i64, i1, i32 }
@comms_78 = external global { i32, i1, i32 }
@comms_79 = external global { i64, i1, i32 }
@comms_80 = external global { i64, i1, i32 }
@comms_81 = external global { i32, i1, i32 }
@comms_82 = external global { i64, i1, i32 }
@comms_83 = external global { i64, i1, i32 }
@comms_84 = external global { i32, i1, i32 }
@comms_85 = external global { i64, i1, i32 }
@comms_86 = external global { i64, i1, i32 }
@comms_87 = external global { i64, i1, i32 }
@comms_88 = external global { i64, i1, i32 }
@comms_89 = external global { i64, i1, i32 }
@comms_90 = external global { i64, i1, i32 }
@comms_91 = external global { i32, i1, i32 }
@comms_92 = external global { i64, i1, i32 }
@comms_93 = external global { i64, i1, i32 }
@comms_94 = external global { i32, i1, i32 }
@comms_95 = external global { i32, i1, i32 }
@comms_96 = external global { i32, i1, i32 }
@comms_97 = external global { i1, i1, i32 }
@comms_98 = external global { i1, i1, i32 }
@comms_99 = external global { i1, i1, i32 }
@comms_100 = external global { i1, i1, i32 }
@comms_101 = external global { i1, i1, i32 }
@comms_102 = external global { i1, i1, i32 }
@comms_103 = external global { i1, i1, i32 }
@comms_104 = external global { i1, i1, i32 }
@comms_105 = external global { i1, i1, i32 }
@comms_106 = external global { i1, i1, i32 }
@comms_107 = external global { i1, i1, i32 }
@comms_108 = external global { i1, i1, i32 }
@comms_109 = external global { i1, i1, i32 }
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #0

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
  %1 = bitcast [4 x i32]* @alloca.1 to i8*, !partition !0, !start !1, !end !2
  %2 = bitcast [4 x i32]* @alloca to i8*, !partition !0, !start !3, !end !4
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %63, %l22 ]
  %send_alloca = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !5
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %3 = sext i32 %receive_load to i64, !partition !0, !start !2, !end !6
  %receive24 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !5
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !5
  %receive_load26 = load i32, i32* %bitcast25, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %4 = zext i32 %receive_load26 to i64, !partition !0, !start !0, !end !7
  %send_alloca27 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca27, !reason !5
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !5
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !5
  %5 = sext i32 %new_phi to i64, !partition !0, !start !6, !end !8
  %6 = sext i32 %new_phi to i64, !partition !0, !start !7, !end !9
  %send_alloca29 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca29, !reason !5
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !5
  call void @send(i8* %send_cast30, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !5
  %send_alloca31 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca31, !reason !5
  %send_cast32 = bitcast i32* %send_alloca31 to i8*, !reason !5
  call void @send(i8* %send_cast32, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !5
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi33 = phi i64 [ %3, %l ], [ %receive_load240, %l21 ]
  %new_phi34 = phi i32 [ %new_phi, %l ], [ %62, %l21 ]
  %new_phi35 = phi i64 [ 0, %l ], [ %receive_load243, %l21 ]
  %new_phi36 = phi i64 [ 0, %l ], [ %receive_load246, %l21 ]
  %new_phi37 = phi i32 [ 0, %l ], [ %60, %l21 ]
  %7 = sext i32 %new_phi34 to i64, !partition !0, !start !10, !end !11
  %send_alloca38 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca38, !reason !5
  %send_cast39 = bitcast i64* %send_alloca38 to i8*, !reason !5
  call void @send(i8* %send_cast39, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !5
  %send_alloca40 = alloca i64, !reason !5
  store i64 %3, i64* %send_alloca40, !reason !5
  %send_cast41 = bitcast i64* %send_alloca40 to i8*, !reason !5
  call void @send(i8* %send_cast41, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !5
  %receive42 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !5
  %bitcast43 = bitcast i8* %receive42 to i64*, !reason !5
  %receive_load44 = load i64, i64* %bitcast43, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %8 = getelementptr [4 x i32], [4 x i32]* @alloca, i64 0, i64 %receive_load44, !partition !0, !start !7, !end !9
  %9 = bitcast i32* %8 to i8*, !partition !0, !start !12, !end !13
  %receive45 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !5
  %bitcast46 = bitcast i8* %receive45 to i64*, !reason !5
  %receive_load47 = load i64, i64* %bitcast46, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %10 = getelementptr [4 x i32], [4 x i32]* @a, i64 0, i64 %receive_load47, !partition !0, !start !0, !end !7
  %11 = bitcast i32* %10 to i8*, !partition !0, !start !14, !end !15
  %send_alloca48 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca48, !reason !5
  %send_cast49 = bitcast i64* %send_alloca48 to i8*, !reason !5
  call void @send(i8* %send_cast49, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_10 to i32), i8* %0), !reason !5
  %receive50 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_11 to i32), i8* %0), !reason !5
  %bitcast51 = bitcast i8* %receive50 to i64*, !reason !5
  %receive_load52 = load i64, i64* %bitcast51, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %12 = trunc i64 %receive_load52 to i32, !partition !0, !start !16, !end !17
  %send_alloca53 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca53, !reason !5
  %send_cast54 = bitcast i32* %send_alloca53 to i8*, !reason !5
  call void @send(i8* %send_cast54, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !5
  %send_alloca55 = alloca i32, !reason !5
  store i32 %12, i32* %send_alloca55, !reason !5
  %send_cast56 = bitcast i32* %send_alloca55 to i8*, !reason !5
  call void @send(i8* %send_cast56, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !5
  %receive57 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i8* %0), !reason !5
  %bitcast58 = bitcast i8* %receive57 to i32*, !reason !5
  %receive_load59 = load i32, i32* %bitcast58, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %13 = or i32 %receive_load59, 1, !partition !0, !start !18, !end !19
  %send_alloca60 = alloca i32, !reason !5
  store i32 %13, i32* %send_alloca60, !reason !5
  %send_cast61 = bitcast i32* %send_alloca60 to i8*, !reason !5
  call void @send(i8* %send_cast61, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i8* %0), !reason !5
  %receive62 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_16 to i32), i8* %0), !reason !5
  %bitcast63 = bitcast i8* %receive62 to i1*, !reason !5
  %receive_load64 = load i1, i1* %bitcast63, !reason !5
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_16 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !5
  %receive65 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i8* %0), !reason !5
  %bitcast66 = bitcast i8* %receive65 to i32*, !reason !5
  %receive_load67 = load i32, i32* %bitcast66, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %14 = select i1 %receive_load64, i32 %receive_load67, i32 %13, !partition !0, !start !17, !end !20
  %send_alloca68 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca68, !reason !5
  %send_cast69 = bitcast i64* %send_alloca68 to i8*, !reason !5
  call void @send(i8* %send_cast69, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_18 to i32), i8* %0), !reason !5
  %receive70 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i8* %0), !reason !5
  %bitcast71 = bitcast i8* %receive70 to i32*, !reason !5
  %receive_load72 = load i32, i32* %bitcast71, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive73 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_20 to i32), i8* %0), !reason !5
  %bitcast74 = bitcast i8* %receive73 to i32*, !reason !5
  %receive_load75 = load i32, i32* %bitcast74, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_20 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %15 = mul i32 %receive_load72, %receive_load75, !partition !0, !start !21, !end !14
  %send_alloca76 = alloca i32, !reason !5
  store i32 %15, i32* %send_alloca76, !reason !5
  %send_cast77 = bitcast i32* %send_alloca76 to i8*, !reason !5
  call void @send(i8* %send_cast77, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i8* %0), !reason !5
  %receive78 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_22 to i32), i8* %0), !reason !5
  %bitcast79 = bitcast i8* %receive78 to i32*, !reason !5
  %receive_load80 = load i32, i32* %bitcast79, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_22 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %16 = add i32 %14, %receive_load80, !partition !0, !start !20, !end !22
  %17 = zext i32 %16 to i64, !partition !0, !start !15, !end !23
  %18 = shl nuw nsw i64 %17, 2, !partition !0, !start !24, !end !25
  %send_alloca81 = alloca i64, !reason !5
  store i64 %18, i64* %send_alloca81, !reason !5
  %send_cast82 = bitcast i64* %send_alloca81 to i8*, !reason !5
  call void @send(i8* %send_cast82, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_23 to i32), i8* %0), !reason !5
  %send_alloca83 = alloca i32, !reason !5
  store i32 %new_phi34, i32* %send_alloca83, !reason !5
  %send_cast84 = bitcast i32* %send_alloca83 to i8*, !reason !5
  call void @send(i8* %send_cast84, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !5
  %19 = mul i64 %new_phi35, %3, !partition !0, !start !26, !end !27
  %20 = getelementptr [4 x i32], [4 x i32]* @alloca.1, i64 0, i64 %19, !partition !0, !start !9, !end !28
  %21 = bitcast i32* %20 to i8*, !partition !0, !start !23, !end !29
  %22 = getelementptr [4 x i32], [4 x i32]* @a, i64 0, i64 %19, !partition !0, !start !27, !end !21
  %23 = bitcast i32* %22 to i8*, !partition !0, !start !29, !end !30
  %send_alloca85 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca85, !reason !5
  %send_cast86 = bitcast i64* %send_alloca85 to i8*, !reason !5
  call void @send(i8* %send_cast86, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_25 to i32), i8* %0), !reason !5
  %send_alloca87 = alloca i64, !reason !5
  store i64 %4, i64* %send_alloca87, !reason !5
  %send_cast88 = bitcast i64* %send_alloca87 to i8*, !reason !5
  call void @send(i8* %send_cast88, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_26 to i32), i8* %0), !reason !5
  %receive89 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !5
  %bitcast90 = bitcast i8* %receive89 to i64*, !reason !5
  %receive_load91 = load i64, i64* %bitcast90, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %24 = trunc i64 %receive_load91 to i32, !partition !0, !start !11, !end !16
  %send_alloca92 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca92, !reason !5
  %send_cast93 = bitcast i32* %send_alloca92 to i8*, !reason !5
  call void @send(i8* %send_cast93, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !5
  %send_alloca94 = alloca i32, !reason !5
  store i32 %24, i32* %send_alloca94, !reason !5
  %send_cast95 = bitcast i32* %send_alloca94 to i8*, !reason !5
  call void @send(i8* %send_cast95, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i8* %0), !reason !5
  %receive96 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i8* %0), !reason !5
  %bitcast97 = bitcast i8* %receive96 to i32*, !reason !5
  %receive_load98 = load i32, i32* %bitcast97, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive99 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i8* %0), !reason !5
  %bitcast100 = bitcast i8* %receive99 to i32*, !reason !5
  %receive_load101 = load i32, i32* %bitcast100, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %25 = icmp sgt i32 %receive_load98, %receive_load101, !partition !0, !start !19, !end !26
  %send_alloca102 = alloca i1, !reason !5
  store i1 %25, i1* %send_alloca102, !reason !5
  %send_cast103 = bitcast i1* %send_alloca102 to i8*, !reason !5
  call void @send(i8* %send_cast103, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_32 to i32), i8* %0), !reason !5
  %send_alloca104 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca104, !reason !5
  %send_cast105 = bitcast i64* %send_alloca104 to i8*, !reason !5
  call void @send(i8* %send_cast105, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !5
  %receive106 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i8* %0), !reason !5
  %bitcast107 = bitcast i8* %receive106 to i32*, !reason !5
  %receive_load108 = load i32, i32* %bitcast107, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive109 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_35 to i32), i8* %0), !reason !5
  %bitcast110 = bitcast i8* %receive109 to i32*, !reason !5
  %receive_load111 = load i32, i32* %bitcast110, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_35 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %26 = add i32 %receive_load108, %receive_load111, !partition !0, !start !13, !end !31
  %27 = zext i32 %26 to i64, !partition !0, !start !28, !end !10
  %28 = shl nuw nsw i64 %27, 2, !partition !0, !start !22, !end !12
  %send_alloca112 = alloca i64, !reason !5
  store i64 %28, i64* %send_alloca112, !reason !5
  %send_cast113 = bitcast i64* %send_alloca112 to i8*, !reason !5
  call void @send(i8* %send_cast113, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !5
  %29 = add nsw i64 %new_phi36, %5, !partition !0, !start !32, !end !18
  %send_alloca114 = alloca i32, !reason !5
  store i32 %new_phi37, i32* %send_alloca114, !reason !5
  %send_cast115 = bitcast i32* %send_alloca114 to i8*, !reason !5
  call void @send(i8* %send_cast115, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_37 to i32), i8* %0), !reason !5
  %send_alloca116 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca116, !reason !5
  %send_cast117 = bitcast i32* %send_alloca116 to i8*, !reason !5
  call void @send(i8* %send_cast117, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_38 to i32), i8* %0), !reason !5
  %send_alloca118 = alloca i64, !reason !5
  store i64 %29, i64* %send_alloca118, !reason !5
  %send_cast119 = bitcast i64* %send_alloca118 to i8*, !reason !5
  call void @send(i8* %send_cast119, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i8* %0), !reason !5
  %send_alloca120 = alloca i64, !reason !5
  store i64 %6, i64* %send_alloca120, !reason !5
  %send_cast121 = bitcast i64* %send_alloca120 to i8*, !reason !5
  call void @send(i8* %send_cast121, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i8* %0), !reason !5
  %send_alloca122 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca122, !reason !5
  %send_cast123 = bitcast i32* %send_alloca122 to i8*, !reason !5
  call void @send(i8* %send_cast123, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i8* %0), !reason !5
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !33
  %bitcast274 = bitcast i8* %broadcast to i1*, !reason !33
  %receive_load275 = load i1, i1* %bitcast274, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load275, label %l2, label %l11

l2:                                               ; preds = %l1
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %2, i8 0, i64 16, i1 false), !partition !0, !start !0, !end !0
  %broadcast288 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i8* %0), !reason !33
  %bitcast289 = bitcast i8* %broadcast288 to i1*, !reason !33
  %receive_load290 = load i1, i1* %bitcast289, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load290, label %l3, label %l4

l3:                                               ; preds = %l2
  %receive166 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !5
  %bitcast167 = bitcast i8* %receive166 to i64*, !reason !5
  %receive_load168 = load i64, i64* %bitcast167, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* align 8 %11, i64 %receive_load168, i1 false), !partition !0, !start !0, !end !0
  %30 = trunc i64 %29 to i32, !partition !0, !start !0, !end !0
  %receive169 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_58 to i32), i8* %0), !reason !5
  %bitcast170 = bitcast i8* %receive169 to i32*, !reason !5
  %receive_load171 = load i32, i32* %bitcast170, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_58 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %31 = add nsw i32 %receive_load171, %30, !partition !0, !start !0, !end !0
  br label %l6

l4:                                               ; preds = %l6, %l2
  %receive182 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !5
  %bitcast183 = bitcast i8* %receive182 to i64*, !reason !5
  %receive_load184 = load i64, i64* %bitcast183, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %32 = icmp slt i64 %new_phi36, %receive_load184, !partition !0, !start !0, !end !7
  %send_alloca294 = alloca i1, !reason !34
  store i1 %32, i1* %send_alloca294, !reason !34
  %send_cast295 = bitcast i1* %send_alloca294 to i8*, !reason !34
  call void @send(i8* %send_cast295, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_105 to i32), i8* %0), !reason !34
  br i1 %32, label %l5, label %l21

l5:                                               ; preds = %l4
  %receive185 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !5
  %bitcast186 = bitcast i8* %receive185 to i64*, !reason !5
  %receive_load187 = load i64, i64* %bitcast186, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %33 = trunc i64 %receive_load187 to i32, !partition !0, !start !7, !end !9
  %34 = add i32 %33, -1, !partition !0, !start !0, !end !7
  %send_alloca188 = alloca i64, !reason !5
  store i64 %new_phi36, i64* %send_alloca188, !reason !5
  %send_cast189 = bitcast i64* %send_alloca188 to i8*, !reason !5
  call void @send(i8* %send_cast189, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !5
  %repair_phi265 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_94 to i32), i8* %0), !reason !33
  %bitcast266 = bitcast i8* %repair_phi265 to i32*, !reason !33
  %receive_load267 = load i32, i32* %bitcast266, !reason !33
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_94 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !33
  br label %l7

l6:                                               ; preds = %l6, %l3
  %new_phi172 = phi i64 [ %7, %l3 ], [ %receive_load261, %l6 ]
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %new_phi172, !partition !0, !start !2, !end !6
  %36 = load i32, i32* %35, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca173 = alloca i64, !reason !5
  store i64 %new_phi172, i64* %send_alloca173, !reason !5
  %send_cast174 = bitcast i64* %send_alloca173 to i8*, !reason !5
  call void @send(i8* %send_cast174, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i8* %0), !reason !5
  %send_alloca175 = alloca i32, !reason !5
  store i32 %31, i32* %send_alloca175, !reason !5
  %send_cast176 = bitcast i32* %send_alloca175 to i8*, !reason !5
  call void @send(i8* %send_cast176, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i8* %0), !reason !5
  %receive177 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i8* %0), !reason !5
  %bitcast178 = bitcast i8* %receive177 to i32*, !reason !5
  %receive_load179 = load i32, i32* %bitcast178, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %37 = sext i32 %receive_load179 to i64, !partition !0, !start !39, !end !1
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca, i64 0, i64 %37, !partition !0, !start !1, !end !2
  store i32 %36, i32* %38, align 4, !tbaa !35, !partition !0, !start !3, !end !39
  %send_alloca180 = alloca i64, !reason !5
  store i64 %new_phi172, i64* %send_alloca180, !reason !5
  %send_cast181 = bitcast i64* %send_alloca180 to i8*, !reason !5
  call void @send(i8* %send_cast181, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_62 to i32), i8* %0), !reason !5
  %repair_phi259 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_92 to i32), i8* %0), !reason !33
  %bitcast260 = bitcast i8* %repair_phi259 to i64*, !reason !33
  %receive_load261 = load i64, i64* %bitcast260, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_92 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %broadcast291 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i8* %0), !reason !33
  %bitcast292 = bitcast i8* %broadcast291 to i1*, !reason !33
  %receive_load293 = load i1, i1* %bitcast292, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load293, label %l6, label %l4

l7:                                               ; preds = %l10, %l5
  %new_phi190 = phi i64 [ %new_phi36, %l5 ], [ %receive_load264, %l10 ]
  %new_phi191 = phi i32 [ %receive_load267, %l5 ], [ %new_phi212, %l10 ]
  %new_phi192 = phi i32 [ %34, %l5 ], [ %new_phi211, %l10 ]
  %send_alloca193 = alloca i32, !reason !5
  store i32 %new_phi192, i32* %send_alloca193, !reason !5
  %send_cast194 = bitcast i32* %send_alloca193 to i8*, !reason !5
  call void @send(i8* %send_cast194, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_66 to i32), i8* %0), !reason !5
  %receive195 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i8* %0), !reason !5
  %bitcast196 = bitcast i8* %receive195 to i64*, !reason !5
  %receive_load197 = load i64, i64* %bitcast196, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca, i64 0, i64 %receive_load197, !partition !0, !start !2, !end !6
  %40 = load i32, i32* %39, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca198 = alloca i32, !reason !5
  store i32 %new_phi191, i32* %send_alloca198, !reason !5
  %send_cast199 = bitcast i32* %send_alloca198 to i8*, !reason !5
  call void @send(i8* %send_cast199, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_68 to i32), i8* %0), !reason !5
  %receive200 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !5
  %bitcast201 = bitcast i8* %receive200 to i64*, !reason !5
  %receive_load202 = load i64, i64* %bitcast201, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca, i64 0, i64 %receive_load202, !partition !0, !start !3, !end !4
  %42 = load i32, i32* %41, align 4, !tbaa !35, !partition !0, !start !4, !end !1
  %send_alloca203 = alloca i32, !reason !5
  store i32 %40, i32* %send_alloca203, !reason !5
  %send_cast204 = bitcast i32* %send_alloca203 to i8*, !reason !5
  call void @send(i8* %send_cast204, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !5
  %send_alloca205 = alloca i32, !reason !5
  store i32 %42, i32* %send_alloca205, !reason !5
  %send_cast206 = bitcast i32* %send_alloca205 to i8*, !reason !5
  call void @send(i8* %send_cast206, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i8* %0), !reason !5
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %new_phi190, !partition !0, !start !1, !end !2
  %broadcast296 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_106 to i32), i8* %0), !reason !33
  %bitcast297 = bitcast i8* %broadcast296 to i1*, !reason !33
  %receive_load298 = load i1, i1* %bitcast297, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_106 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load298, label %l8, label %l9

l8:                                               ; preds = %l7
  store i32 %40, i32* %43, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca209 = alloca i32, !reason !5
  store i32 %new_phi192, i32* %send_alloca209, !reason !5
  %send_cast210 = bitcast i32* %send_alloca209 to i8*, !reason !5
  call void @send(i8* %send_cast210, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !5
  %repair_phi268 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_95 to i32), i8* %0), !reason !33
  %bitcast269 = bitcast i8* %repair_phi268 to i32*, !reason !33
  %receive_load270 = load i32, i32* %bitcast269, !reason !33
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_95 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !33
  br label %l10

l9:                                               ; preds = %l7
  store i32 %42, i32* %43, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca207 = alloca i32, !reason !5
  store i32 %new_phi191, i32* %send_alloca207, !reason !5
  %send_cast208 = bitcast i32* %send_alloca207 to i8*, !reason !5
  call void @send(i8* %send_cast208, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i8* %0), !reason !5
  %repair_phi271 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_96 to i32), i8* %0), !reason !33
  %bitcast272 = bitcast i8* %repair_phi271 to i32*, !reason !33
  %receive_load273 = load i32, i32* %bitcast272, !reason !33
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_96 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !33
  br label %l10

l10:                                              ; preds = %l8, %l9
  %new_phi211 = phi i32 [ %receive_load270, %l8 ], [ %new_phi192, %l9 ]
  %new_phi212 = phi i32 [ %new_phi191, %l8 ], [ %receive_load273, %l9 ]
  %send_alloca213 = alloca i64, !reason !5
  store i64 %new_phi190, i64* %send_alloca213, !reason !5
  %send_cast214 = bitcast i64* %send_alloca213 to i8*, !reason !5
  call void @send(i8* %send_cast214, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !5
  %receive215 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !5
  %bitcast216 = bitcast i8* %receive215 to i64*, !reason !5
  %receive_load217 = load i64, i64* %bitcast216, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %44 = icmp eq i64 %receive_load217, %new_phi33, !partition !0, !start !0, !end !7
  %repair_phi262 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_93 to i32), i8* %0), !reason !33
  %bitcast263 = bitcast i8* %repair_phi262 to i64*, !reason !33
  %receive_load264 = load i64, i64* %bitcast263, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_93 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %send_alloca299 = alloca i1, !reason !34
  store i1 %44, i1* %send_alloca299, !reason !34
  %send_cast300 = bitcast i1* %send_alloca299 to i8*, !reason !34
  call void @send(i8* %send_cast300, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_107 to i32), i8* %0), !reason !34
  br i1 %44, label %l21, label %l7

l11:                                              ; preds = %l1
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 0, i64 16, i1 false), !partition !0, !start !0, !end !0
  %broadcast276 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !33
  %bitcast277 = bitcast i8* %broadcast276 to i1*, !reason !33
  %receive_load278 = load i1, i1* %bitcast277, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load278, label %l12, label %l13

l12:                                              ; preds = %l11
  %receive124 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i8* %0), !reason !5
  %bitcast125 = bitcast i8* %receive124 to i64*, !reason !5
  %receive_load126 = load i64, i64* %bitcast125, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %21, i8* align 8 %23, i64 %receive_load126, i1 false), !partition !0, !start !0, !end !0
  br label %l13

l13:                                              ; preds = %l12, %l11
  %45 = icmp slt i64 %29, 5, !partition !0, !start !0, !end !7
  %send_alloca279 = alloca i1, !reason !34
  store i1 %45, i1* %send_alloca279, !reason !34
  %send_cast280 = bitcast i1* %send_alloca279 to i8*, !reason !34
  call void @send(i8* %send_cast280, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !34
  br i1 %45, label %l14, label %l15

l14:                                              ; preds = %l13
  %46 = add i64 %29, 4, !partition !0, !start !0, !end !7
  %repair_phi247 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i8* %0), !reason !33
  %bitcast248 = bitcast i8* %repair_phi247 to i64*, !reason !33
  %receive_load249 = load i64, i64* %bitcast248, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  br label %l16

l15:                                              ; preds = %l16, %l13
  %47 = trunc i64 %new_phi36 to i32, !partition !0, !start !0, !end !7
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi127 = phi i64 [ %receive_load249, %l14 ], [ %receive_load252, %l16 ]
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %new_phi127, !partition !0, !start !7, !end !9
  %49 = load i32, i32* %48, align 4, !tbaa !35, !partition !0, !start !10, !end !40
  %send_alloca128 = alloca i64, !reason !5
  store i64 %46, i64* %send_alloca128, !reason !5
  %send_cast129 = bitcast i64* %send_alloca128 to i8*, !reason !5
  call void @send(i8* %send_cast129, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !5
  %send_alloca130 = alloca i64, !reason !5
  store i64 %new_phi127, i64* %send_alloca130, !reason !5
  %send_cast131 = bitcast i64* %send_alloca130 to i8*, !reason !5
  call void @send(i8* %send_cast131, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_44 to i32), i8* %0), !reason !5
  %receive132 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_45 to i32), i8* %0), !reason !5
  %bitcast133 = bitcast i8* %receive132 to i64*, !reason !5
  %receive_load134 = load i64, i64* %bitcast133, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_45 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %50 = ashr exact i64 %receive_load134, 32, !partition !0, !start !9, !end !28
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca.1, i64 0, i64 %50, !partition !0, !start !28, !end !10
  store i32 %49, i32* %51, align 4, !tbaa !35, !partition !0, !start !40, !end !8
  %send_alloca135 = alloca i64, !reason !5
  store i64 %new_phi127, i64* %send_alloca135, !reason !5
  %send_cast136 = bitcast i64* %send_alloca135 to i8*, !reason !5
  call void @send(i8* %send_cast136, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !5
  %receive137 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !5
  %bitcast138 = bitcast i8* %receive137 to i32*, !reason !5
  %receive_load139 = load i32, i32* %bitcast138, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %52 = icmp eq i32 %receive_load139, 5, !partition !0, !start !0, !end !7
  %repair_phi250 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_89 to i32), i8* %0), !reason !33
  %bitcast251 = bitcast i8* %repair_phi250 to i64*, !reason !33
  %receive_load252 = load i64, i64* %bitcast251, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_89 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %send_alloca281 = alloca i1, !reason !34
  store i1 %52, i1* %send_alloca281, !reason !34
  %send_cast282 = bitcast i1* %send_alloca281 to i8*, !reason !34
  call void @send(i8* %send_cast282, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !34
  br i1 %52, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi140 = phi i64 [ %new_phi36, %l15 ], [ %receive_load255, %l20 ]
  %new_phi141 = phi i32 [ 4, %l15 ], [ %new_phi160, %l20 ]
  %new_phi142 = phi i32 [ %47, %l15 ], [ %new_phi159, %l20 ]
  %send_alloca143 = alloca i32, !reason !5
  store i32 %new_phi141, i32* %send_alloca143, !reason !5
  %send_cast144 = bitcast i32* %send_alloca143 to i8*, !reason !5
  call void @send(i8* %send_cast144, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i8* %0), !reason !5
  %receive145 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !5
  %bitcast146 = bitcast i8* %receive145 to i64*, !reason !5
  %receive_load147 = load i64, i64* %bitcast146, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca.1, i64 0, i64 %receive_load147, !partition !0, !start !1, !end !2
  %54 = load i32, i32* %53, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca148 = alloca i32, !reason !5
  store i32 %new_phi142, i32* %send_alloca148, !reason !5
  %send_cast149 = bitcast i32* %send_alloca148 to i8*, !reason !5
  call void @send(i8* %send_cast149, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_50 to i32), i8* %0), !reason !5
  %receive150 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i8* %0), !reason !5
  %bitcast151 = bitcast i8* %receive150 to i64*, !reason !5
  %receive_load152 = load i64, i64* %bitcast151, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* @alloca.1, i64 0, i64 %receive_load152, !partition !0, !start !2, !end !6
  %56 = load i32, i32* %55, align 4, !tbaa !35, !partition !0, !start !4, !end !1
  %send_alloca153 = alloca i32, !reason !5
  store i32 %54, i32* %send_alloca153, !reason !5
  %send_cast154 = bitcast i32* %send_alloca153 to i8*, !reason !5
  call void @send(i8* %send_cast154, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !5
  %send_alloca155 = alloca i32, !reason !5
  store i32 %56, i32* %send_alloca155, !reason !5
  %send_cast156 = bitcast i32* %send_alloca155 to i8*, !reason !5
  call void @send(i8* %send_cast156, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_53 to i32), i8* %0), !reason !5
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %new_phi140, !partition !0, !start !3, !end !4
  %broadcast283 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !33
  %bitcast284 = bitcast i8* %broadcast283 to i1*, !reason !33
  %receive_load285 = load i1, i1* %bitcast284, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load285, label %l18, label %l19

l18:                                              ; preds = %l17
  store i32 %54, i32* %57, align 4, !tbaa !35, !partition !0, !start !0, !end !0
  %58 = add nsw i32 %new_phi141, -1, !partition !0, !start !0, !end !0
  br label %l20

l19:                                              ; preds = %l17
  store i32 %56, i32* %57, align 4, !tbaa !35, !partition !0, !start !0, !end !3
  %send_alloca157 = alloca i32, !reason !5
  store i32 %new_phi142, i32* %send_alloca157, !reason !5
  %send_cast158 = bitcast i32* %send_alloca157 to i8*, !reason !5
  call void @send(i8* %send_cast158, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i8* %0), !reason !5
  %repair_phi256 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i8* %0), !reason !33
  %bitcast257 = bitcast i8* %repair_phi256 to i32*, !reason !33
  %receive_load258 = load i32, i32* %bitcast257, !reason !33
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !33
  br label %l20

l20:                                              ; preds = %l18, %l19
  %new_phi159 = phi i32 [ %new_phi142, %l18 ], [ %receive_load258, %l19 ]
  %new_phi160 = phi i32 [ %58, %l18 ], [ %new_phi141, %l19 ]
  %send_alloca161 = alloca i64, !reason !5
  store i64 %new_phi140, i64* %send_alloca161, !reason !5
  %send_cast162 = bitcast i64* %send_alloca161 to i8*, !reason !5
  call void @send(i8* %send_cast162, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !5
  %receive163 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !5
  %bitcast164 = bitcast i8* %receive163 to i64*, !reason !5
  %receive_load165 = load i64, i64* %bitcast164, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %59 = icmp eq i64 %receive_load165, 5, !partition !0, !start !0, !end !7
  %repair_phi253 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_90 to i32), i8* %0), !reason !33
  %bitcast254 = bitcast i8* %repair_phi253 to i64*, !reason !33
  %receive_load255 = load i64, i64* %bitcast254, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_90 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %send_alloca286 = alloca i1, !reason !34
  store i1 %59, i1* %send_alloca286, !reason !34
  %send_cast287 = bitcast i1* %send_alloca286 to i8*, !reason !34
  call void @send(i8* %send_cast287, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i8* %0), !reason !34
  br i1 %59, label %l21, label %l17

l21:                                              ; preds = %l10, %l4, %l20
  %send_alloca218 = alloca i64, !reason !5
  store i64 %new_phi36, i64* %send_alloca218, !reason !5
  %send_cast219 = bitcast i64* %send_alloca218 to i8*, !reason !5
  call void @send(i8* %send_cast219, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i8* %0), !reason !5
  %send_alloca220 = alloca i64, !reason !5
  store i64 %3, i64* %send_alloca220, !reason !5
  %send_cast221 = bitcast i64* %send_alloca220 to i8*, !reason !5
  call void @send(i8* %send_cast221, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !5
  %receive222 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_78 to i32), i8* %0), !reason !5
  %bitcast223 = bitcast i8* %receive222 to i32*, !reason !5
  %receive_load224 = load i32, i32* %bitcast223, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_78 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %60 = add nsw i32 %new_phi37, %receive_load224, !partition !0, !start !9, !end !28
  %receive225 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_79 to i32), i8* %0), !reason !5
  %bitcast226 = bitcast i8* %receive225 to i64*, !reason !5
  %receive_load227 = load i64, i64* %bitcast226, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_79 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %61 = icmp slt i64 %receive_load227, 4, !partition !0, !start !0, !end !7
  %send_alloca228 = alloca i64, !reason !5
  store i64 %new_phi35, i64* %send_alloca228, !reason !5
  %send_cast229 = bitcast i64* %send_alloca228 to i8*, !reason !5
  call void @send(i8* %send_cast229, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i8* %0), !reason !5
  %receive230 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i8* %0), !reason !5
  %bitcast231 = bitcast i8* %receive230 to i32*, !reason !5
  %receive_load232 = load i32, i32* %bitcast231, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %62 = add i32 %new_phi34, %receive_load232, !partition !0, !start !7, !end !9
  %send_alloca233 = alloca i64, !reason !5
  store i64 %new_phi33, i64* %send_alloca233, !reason !5
  %send_cast234 = bitcast i64* %send_alloca233 to i8*, !reason !5
  call void @send(i8* %send_cast234, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !5
  %send_alloca235 = alloca i64, !reason !5
  store i64 %3, i64* %send_alloca235, !reason !5
  %send_cast236 = bitcast i64* %send_alloca235 to i8*, !reason !5
  call void @send(i8* %send_cast236, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i8* %0), !reason !5
  %repair_phi = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_85 to i32), i8* %0), !reason !33
  %bitcast239 = bitcast i8* %repair_phi to i64*, !reason !33
  %receive_load240 = load i64, i64* %bitcast239, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_85 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %repair_phi241 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i8* %0), !reason !33
  %bitcast242 = bitcast i8* %repair_phi241 to i64*, !reason !33
  %receive_load243 = load i64, i64* %bitcast242, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %repair_phi244 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i8* %0), !reason !33
  %bitcast245 = bitcast i8* %repair_phi244 to i64*, !reason !33
  %receive_load246 = load i64, i64* %bitcast245, !reason !33
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !33
  %send_alloca301 = alloca i1, !reason !34
  store i1 %61, i1* %send_alloca301, !reason !34
  %send_cast302 = bitcast i1* %send_alloca301 to i8*, !reason !34
  call void @send(i8* %send_cast302, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_108 to i32), i8* %0), !reason !34
  br i1 %61, label %l1, label %l22

l22:                                              ; preds = %l21
  %63 = shl nsw i32 %new_phi, 1, !partition !0, !start !0, !end !7
  %send_alloca237 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca237, !reason !5
  %send_cast238 = bitcast i32* %send_alloca237 to i8*, !reason !5
  call void @send(i8* %send_cast238, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i8* %0), !reason !5
  %broadcast303 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_109 to i32), i8* %0), !reason !33
  %bitcast304 = bitcast i8* %broadcast303 to i1*, !reason !33
  %receive_load305 = load i1, i1* %bitcast304, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_109 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load305, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @_p_mergesort_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %1 = shl i32 %receive_load, 1, !partition !3, !start !7, !end !9
  %send_alloca = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !5
  %send_alloca24 = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca24, !reason !5
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !5
  call void @send(i8* %send_cast25, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !5
  %receive26 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !5
  %bitcast27 = bitcast i8* %receive26 to i32*, !reason !5
  %receive_load28 = load i32, i32* %bitcast27, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %2 = mul i32 %receive_load28, -2, !partition !3, !start !10, !end !11
  %3 = zext i32 %1 to i64, !partition !3, !start !0, !end !7
  %receive29 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !5
  %bitcast30 = bitcast i8* %receive29 to i32*, !reason !5
  %receive_load31 = load i32, i32* %bitcast30, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %4 = icmp sgt i32 %receive_load31, 0, !partition !3, !start !9, !end !28
  %receive32 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !5
  %bitcast33 = bitcast i8* %receive32 to i32*, !reason !5
  %receive_load34 = load i32, i32* %bitcast33, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %5 = icmp sgt i32 %receive_load34, 0, !partition !3, !start !28, !end !10
  br label %l1

l1:                                               ; preds = %l21, %l
  %receive35 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !5
  %bitcast36 = bitcast i8* %receive35 to i64*, !reason !5
  %receive_load37 = load i64, i64* %bitcast36, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive38 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !5
  %bitcast39 = bitcast i8* %receive38 to i64*, !reason !5
  %receive_load40 = load i64, i64* %bitcast39, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %6 = mul i64 %receive_load37, %receive_load40, !partition !3, !start !41, !end !42
  %send_alloca41 = alloca i64, !reason !5
  store i64 %6, i64* %send_alloca41, !reason !5
  %send_cast42 = bitcast i64* %send_alloca41 to i8*, !reason !5
  call void @send(i8* %send_cast42, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !5
  %send_alloca43 = alloca i64, !reason !5
  store i64 %6, i64* %send_alloca43, !reason !5
  %send_cast44 = bitcast i64* %send_alloca43 to i8*, !reason !5
  call void @send(i8* %send_cast44, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !5
  %receive45 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_10 to i32), i8* %0), !reason !5
  %bitcast46 = bitcast i8* %receive45 to i64*, !reason !5
  %receive_load47 = load i64, i64* %bitcast46, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %7 = mul i64 %receive_load47, %3, !partition !3, !start !43, !end !44
  %send_alloca48 = alloca i64, !reason !5
  store i64 %7, i64* %send_alloca48, !reason !5
  %send_cast49 = bitcast i64* %send_alloca48 to i8*, !reason !5
  call void @send(i8* %send_cast49, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_11 to i32), i8* %0), !reason !5
  %receive50 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !5
  %bitcast51 = bitcast i8* %receive50 to i32*, !reason !5
  %receive_load52 = load i32, i32* %bitcast51, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive53 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i8* %0), !reason !5
  %bitcast54 = bitcast i8* %receive53 to i32*, !reason !5
  %receive_load55 = load i32, i32* %bitcast54, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %8 = add i32 %receive_load52, %receive_load55, !partition !3, !start !45, !end !46
  %9 = trunc i64 %7 to i32, !partition !3, !start !47, !end !41
  %send_alloca56 = alloca i32, !reason !5
  store i32 %9, i32* %send_alloca56, !reason !5
  %send_cast57 = bitcast i32* %send_alloca56 to i8*, !reason !5
  call void @send(i8* %send_cast57, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_14 to i32), i8* %0), !reason !5
  %receive58 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i8* %0), !reason !5
  %bitcast59 = bitcast i8* %receive58 to i32*, !reason !5
  %receive_load60 = load i32, i32* %bitcast59, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_15 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %10 = icmp sgt i32 %8, %receive_load60, !partition !3, !start !46, !end !48
  %send_alloca61 = alloca i1, !reason !5
  store i1 %10, i1* %send_alloca61, !reason !5
  %send_cast62 = bitcast i1* %send_alloca61 to i8*, !reason !5
  call void @send(i8* %send_cast62, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_16 to i32), i8* %0), !reason !5
  %send_alloca63 = alloca i32, !reason !5
  store i32 %8, i32* %send_alloca63, !reason !5
  %send_cast64 = bitcast i32* %send_alloca63 to i8*, !reason !5
  call void @send(i8* %send_cast64, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_17 to i32), i8* %0), !reason !5
  %receive65 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_18 to i32), i8* %0), !reason !5
  %bitcast66 = bitcast i8* %receive65 to i64*, !reason !5
  %receive_load67 = load i64, i64* %bitcast66, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_18 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %11 = trunc i64 %receive_load67 to i32, !partition !3, !start !24, !end !25
  %send_alloca68 = alloca i32, !reason !5
  store i32 %2, i32* %send_alloca68, !reason !5
  %send_cast69 = bitcast i32* %send_alloca68 to i8*, !reason !5
  call void @send(i8* %send_cast69, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_19 to i32), i8* %0), !reason !5
  %send_alloca70 = alloca i32, !reason !5
  store i32 %11, i32* %send_alloca70, !reason !5
  %send_cast71 = bitcast i32* %send_alloca70 to i8*, !reason !5
  call void @send(i8* %send_cast71, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_20 to i32), i8* %0), !reason !5
  %receive72 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i8* %0), !reason !5
  %bitcast73 = bitcast i8* %receive72 to i32*, !reason !5
  %receive_load74 = load i32, i32* %bitcast73, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_21 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %12 = add i32 %receive_load74, -1, !partition !3, !start !3, !end !4
  %send_alloca75 = alloca i32, !reason !5
  store i32 %12, i32* %send_alloca75, !reason !5
  %send_cast76 = bitcast i32* %send_alloca75 to i8*, !reason !5
  call void @send(i8* %send_cast76, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_22 to i32), i8* %0), !reason !5
  %receive77 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_23 to i32), i8* %0), !reason !5
  %bitcast78 = bitcast i8* %receive77 to i64*, !reason !5
  %receive_load79 = load i64, i64* %bitcast78, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_23 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %13 = add nuw nsw i64 %receive_load79, 4, !partition !3, !start !49, !end !50
  %receive80 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i8* %0), !reason !5
  %bitcast81 = bitcast i8* %receive80 to i32*, !reason !5
  %receive_load82 = load i32, i32* %bitcast81, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_24 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %14 = sext i32 %receive_load82 to i64, !partition !3, !start !51, !end !52
  %receive83 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_25 to i32), i8* %0), !reason !5
  %bitcast84 = bitcast i8* %receive83 to i64*, !reason !5
  %receive_load85 = load i64, i64* %bitcast84, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_25 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive86 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_26 to i32), i8* %0), !reason !5
  %bitcast87 = bitcast i8* %receive86 to i64*, !reason !5
  %receive_load88 = load i64, i64* %bitcast87, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_26 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %15 = mul i64 %receive_load85, %receive_load88, !partition !3, !start !42, !end !49
  %send_alloca89 = alloca i64, !reason !5
  store i64 %15, i64* %send_alloca89, !reason !5
  %send_cast90 = bitcast i64* %send_alloca89 to i8*, !reason !5
  call void @send(i8* %send_cast90, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_27 to i32), i8* %0), !reason !5
  %receive91 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i8* %0), !reason !5
  %bitcast92 = bitcast i8* %receive91 to i32*, !reason !5
  %receive_load93 = load i32, i32* %bitcast92, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_28 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive94 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i8* %0), !reason !5
  %bitcast95 = bitcast i8* %receive94 to i32*, !reason !5
  %receive_load96 = load i32, i32* %bitcast95, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_29 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %16 = add i32 %receive_load93, %receive_load96, !partition !3, !start !50, !end !43
  %17 = trunc i64 %15 to i32, !partition !3, !start !53, !end !54
  %18 = or i32 %17, 1, !partition !3, !start !44, !end !53
  %send_alloca97 = alloca i32, !reason !5
  store i32 %16, i32* %send_alloca97, !reason !5
  %send_cast98 = bitcast i32* %send_alloca97 to i8*, !reason !5
  call void @send(i8* %send_cast98, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_30 to i32), i8* %0), !reason !5
  %send_alloca99 = alloca i32, !reason !5
  store i32 %18, i32* %send_alloca99, !reason !5
  %send_cast100 = bitcast i32* %send_alloca99 to i8*, !reason !5
  call void @send(i8* %send_cast100, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_31 to i32), i8* %0), !reason !5
  %receive101 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_32 to i32), i8* %0), !reason !5
  %bitcast102 = bitcast i8* %receive101 to i1*, !reason !5
  %receive_load103 = load i1, i1* %bitcast102, !reason !5
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_32 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !5
  %19 = select i1 %receive_load103, i32 %16, i32 %18, !partition !3, !start !52, !end !55
  %receive104 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i8* %0), !reason !5
  %bitcast105 = bitcast i8* %receive104 to i64*, !reason !5
  %receive_load106 = load i64, i64* %bitcast105, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_33 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %20 = trunc i64 %receive_load106 to i32, !partition !3, !start !40, !end !51
  %21 = mul i32 %2, %20, !partition !3, !start !56, !end !57
  %22 = add i32 %21, -1, !partition !3, !start !25, !end !47
  %send_alloca107 = alloca i32, !reason !5
  store i32 %19, i32* %send_alloca107, !reason !5
  %send_cast108 = bitcast i32* %send_alloca107 to i8*, !reason !5
  call void @send(i8* %send_cast108, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_34 to i32), i8* %0), !reason !5
  %send_alloca109 = alloca i32, !reason !5
  store i32 %22, i32* %send_alloca109, !reason !5
  %send_cast110 = bitcast i32* %send_alloca109 to i8*, !reason !5
  call void @send(i8* %send_cast110, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_35 to i32), i8* %0), !reason !5
  %receive111 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i8* %0), !reason !5
  %bitcast112 = bitcast i8* %receive111 to i64*, !reason !5
  %receive_load113 = load i64, i64* %bitcast112, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_36 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %23 = add nuw nsw i64 %receive_load113, 4, !partition !3, !start !58, !end !45
  %receive114 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_37 to i32), i8* %0), !reason !5
  %bitcast115 = bitcast i8* %receive114 to i32*, !reason !5
  %receive_load116 = load i32, i32* %bitcast115, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_37 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive117 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_38 to i32), i8* %0), !reason !5
  %bitcast118 = bitcast i8* %receive117 to i32*, !reason !5
  %receive_load119 = load i32, i32* %bitcast118, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_38 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %24 = add nsw i32 %receive_load116, %receive_load119, !partition !3, !start !55, !end !58
  %receive120 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i8* %0), !reason !5
  %bitcast121 = bitcast i8* %receive120 to i64*, !reason !5
  %receive_load122 = load i64, i64* %bitcast121, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_39 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive123 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i8* %0), !reason !5
  %bitcast124 = bitcast i8* %receive123 to i64*, !reason !5
  %receive_load125 = load i64, i64* %bitcast124, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_40 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %25 = add nsw i64 %receive_load122, %receive_load125, !partition !3, !start !57, !end !40
  %receive126 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i8* %0), !reason !5
  %bitcast127 = bitcast i8* %receive126 to i32*, !reason !5
  %receive_load128 = load i32, i32* %bitcast127, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_41 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %26 = add nsw i32 %24, %receive_load128, !partition !3, !start !4, !end !56
  %27 = add nsw i32 %26, -1, !partition !3, !start !48, !end !24
  %28 = icmp slt i64 %25, 5, !partition !3, !start !54, !end !59
  %send_alloca265 = alloca i1, !reason !34
  store i1 %28, i1* %send_alloca265, !reason !34
  %send_cast266 = bitcast i1* %send_alloca265 to i8*, !reason !34
  call void @send(i8* %send_cast266, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_97 to i32), i8* %0), !reason !34
  br i1 %28, label %l2, label %l11

l2:                                               ; preds = %l1
  %send_alloca279 = alloca i1, !reason !34
  store i1 %5, i1* %send_alloca279, !reason !34
  %send_cast280 = bitcast i1* %send_alloca279 to i8*, !reason !34
  call void @send(i8* %send_cast280, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_103 to i32), i8* %0), !reason !34
  br i1 %5, label %l3, label %l4

l3:                                               ; preds = %l2
  %send_alloca168 = alloca i64, !reason !5
  store i64 %13, i64* %send_alloca168, !reason !5
  %send_cast169 = bitcast i64* %send_alloca168 to i8*, !reason !5
  call void @send(i8* %send_cast169, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_57 to i32), i8* %0), !reason !5
  %send_alloca170 = alloca i32, !reason !5
  store i32 %27, i32* %send_alloca170, !reason !5
  %send_cast171 = bitcast i32* %send_alloca170 to i8*, !reason !5
  call void @send(i8* %send_cast171, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_58 to i32), i8* %0), !reason !5
  br label %l6

l4:                                               ; preds = %l6, %l2
  %send_alloca183 = alloca i64, !reason !5
  store i64 %25, i64* %send_alloca183, !reason !5
  %send_cast184 = bitcast i64* %send_alloca183 to i8*, !reason !5
  call void @send(i8* %send_cast184, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_63 to i32), i8* %0), !reason !5
  %broadcast283 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_105 to i32), i8* %0), !reason !33
  %bitcast284 = bitcast i8* %broadcast283 to i1*, !reason !33
  %receive_load285 = load i1, i1* %bitcast284, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_105 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load285, label %l5, label %l21

l5:                                               ; preds = %l4
  %send_alloca185 = alloca i64, !reason !5
  store i64 %25, i64* %send_alloca185, !reason !5
  %send_cast186 = bitcast i64* %send_alloca185 to i8*, !reason !5
  call void @send(i8* %send_cast186, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_64 to i32), i8* %0), !reason !5
  %receive187 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i8* %0), !reason !5
  %bitcast188 = bitcast i8* %receive187 to i64*, !reason !5
  %receive_load189 = load i64, i64* %bitcast188, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_65 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %29 = trunc i64 %receive_load189 to i32, !partition !3, !start !0, !end !7
  %send_alloca259 = alloca i32, !reason !60
  store i32 %29, i32* %send_alloca259, !reason !60
  %send_cast260 = bitcast i32* %send_alloca259 to i8*, !reason !60
  call void @send(i8* %send_cast260, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_94 to i32), i8* %0), !reason !60
  br label %l7

l6:                                               ; preds = %l6, %l3
  %receive172 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i8* %0), !reason !5
  %bitcast173 = bitcast i8* %receive172 to i64*, !reason !5
  %receive_load174 = load i64, i64* %bitcast173, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_59 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %30 = trunc i64 %receive_load174 to i32, !partition !3, !start !9, !end !28
  %receive175 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i8* %0), !reason !5
  %bitcast176 = bitcast i8* %receive175 to i32*, !reason !5
  %receive_load177 = load i32, i32* %bitcast176, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_60 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %31 = sub i32 %receive_load177, %30, !partition !3, !start !7, !end !9
  %send_alloca178 = alloca i32, !reason !5
  store i32 %31, i32* %send_alloca178, !reason !5
  %send_cast179 = bitcast i32* %send_alloca178 to i8*, !reason !5
  call void @send(i8* %send_cast179, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_61 to i32), i8* %0), !reason !5
  %receive180 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_62 to i32), i8* %0), !reason !5
  %bitcast181 = bitcast i8* %receive180 to i64*, !reason !5
  %receive_load182 = load i64, i64* %bitcast181, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_62 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %32 = add nsw i64 %receive_load182, 1, !partition !3, !start !0, !end !7
  %33 = icmp slt i64 %32, %25, !partition !3, !start !28, !end !10
  %send_alloca255 = alloca i64, !reason !60
  store i64 %32, i64* %send_alloca255, !reason !60
  %send_cast256 = bitcast i64* %send_alloca255 to i8*, !reason !60
  call void @send(i8* %send_cast256, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_92 to i32), i8* %0), !reason !60
  %send_alloca281 = alloca i1, !reason !34
  store i1 %33, i1* %send_alloca281, !reason !34
  %send_cast282 = bitcast i1* %send_alloca281 to i8*, !reason !34
  call void @send(i8* %send_cast282, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_104 to i32), i8* %0), !reason !34
  br i1 %33, label %l6, label %l4

l7:                                               ; preds = %l10, %l5
  %receive190 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_66 to i32), i8* %0), !reason !5
  %bitcast191 = bitcast i8* %receive190 to i32*, !reason !5
  %receive_load192 = load i32, i32* %bitcast191, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_66 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %34 = sext i32 %receive_load192 to i64, !partition !3, !start !3, !end !4
  %send_alloca193 = alloca i64, !reason !5
  store i64 %34, i64* %send_alloca193, !reason !5
  %send_cast194 = bitcast i64* %send_alloca193 to i8*, !reason !5
  call void @send(i8* %send_cast194, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_67 to i32), i8* %0), !reason !5
  %receive195 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_68 to i32), i8* %0), !reason !5
  %bitcast196 = bitcast i8* %receive195 to i32*, !reason !5
  %receive_load197 = load i32, i32* %bitcast196, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_68 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %35 = sext i32 %receive_load197 to i64, !partition !3, !start !4, !end !56
  %send_alloca198 = alloca i64, !reason !5
  store i64 %35, i64* %send_alloca198, !reason !5
  %send_cast199 = bitcast i64* %send_alloca198 to i8*, !reason !5
  call void @send(i8* %send_cast199, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_69 to i32), i8* %0), !reason !5
  %receive200 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i8* %0), !reason !5
  %bitcast201 = bitcast i8* %receive200 to i32*, !reason !5
  %receive_load202 = load i32, i32* %bitcast201, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_70 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive203 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i8* %0), !reason !5
  %bitcast204 = bitcast i8* %receive203 to i32*, !reason !5
  %receive_load205 = load i32, i32* %bitcast204, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_71 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %36 = icmp slt i32 %receive_load202, %receive_load205, !partition !3, !start !56, !end !57
  %send_alloca286 = alloca i1, !reason !34
  store i1 %36, i1* %send_alloca286, !reason !34
  %send_cast287 = bitcast i1* %send_alloca286 to i8*, !reason !34
  call void @send(i8* %send_cast287, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_106 to i32), i8* %0), !reason !34
  br i1 %36, label %l8, label %l9

l8:                                               ; preds = %l7
  %receive209 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i8* %0), !reason !5
  %bitcast210 = bitcast i8* %receive209 to i32*, !reason !5
  %receive_load211 = load i32, i32* %bitcast210, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_73 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %37 = add nsw i32 %receive_load211, -1, !partition !3, !start !3, !end !4
  %send_alloca261 = alloca i32, !reason !60
  store i32 %37, i32* %send_alloca261, !reason !60
  %send_cast262 = bitcast i32* %send_alloca261 to i8*, !reason !60
  call void @send(i8* %send_cast262, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_95 to i32), i8* %0), !reason !60
  br label %l10

l9:                                               ; preds = %l7
  %receive206 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i8* %0), !reason !5
  %bitcast207 = bitcast i8* %receive206 to i32*, !reason !5
  %receive_load208 = load i32, i32* %bitcast207, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_72 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %38 = add nsw i32 %receive_load208, 1, !partition !3, !start !3, !end !4
  %send_alloca263 = alloca i32, !reason !60
  store i32 %38, i32* %send_alloca263, !reason !60
  %send_cast264 = bitcast i32* %send_alloca263 to i8*, !reason !60
  call void @send(i8* %send_cast264, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_96 to i32), i8* %0), !reason !60
  br label %l10

l10:                                              ; preds = %l8, %l9
  %receive212 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i8* %0), !reason !5
  %bitcast213 = bitcast i8* %receive212 to i64*, !reason !5
  %receive_load214 = load i64, i64* %bitcast213, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_74 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %39 = add nsw i64 %receive_load214, 1, !partition !3, !start !3, !end !4
  %send_alloca215 = alloca i64, !reason !5
  store i64 %39, i64* %send_alloca215, !reason !5
  %send_cast216 = bitcast i64* %send_alloca215 to i8*, !reason !5
  call void @send(i8* %send_cast216, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_75 to i32), i8* %0), !reason !5
  %send_alloca257 = alloca i64, !reason !60
  store i64 %39, i64* %send_alloca257, !reason !60
  %send_cast258 = bitcast i64* %send_alloca257 to i8*, !reason !60
  call void @send(i8* %send_cast258, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_93 to i32), i8* %0), !reason !60
  %broadcast288 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_107 to i32), i8* %0), !reason !33
  %bitcast289 = bitcast i8* %broadcast288 to i1*, !reason !33
  %receive_load290 = load i1, i1* %bitcast289, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_107 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load290, label %l21, label %l7

l11:                                              ; preds = %l1
  %send_alloca267 = alloca i1, !reason !34
  store i1 %4, i1* %send_alloca267, !reason !34
  %send_cast268 = bitcast i1* %send_alloca267 to i8*, !reason !34
  call void @send(i8* %send_cast268, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_98 to i32), i8* %0), !reason !34
  br i1 %4, label %l12, label %l13

l12:                                              ; preds = %l11
  %send_alloca129 = alloca i64, !reason !5
  store i64 %23, i64* %send_alloca129, !reason !5
  %send_cast130 = bitcast i64* %send_alloca129 to i8*, !reason !5
  call void @send(i8* %send_cast130, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_42 to i32), i8* %0), !reason !5
  br label %l13

l13:                                              ; preds = %l12, %l11
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i8* %0), !reason !33
  %bitcast269 = bitcast i8* %broadcast to i1*, !reason !33
  %receive_load270 = load i1, i1* %bitcast269, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_99 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load270, label %l14, label %l15

l14:                                              ; preds = %l13
  %send_alloca247 = alloca i64, !reason !60
  store i64 %14, i64* %send_alloca247, !reason !60
  %send_cast248 = bitcast i64* %send_alloca247 to i8*, !reason !60
  call void @send(i8* %send_cast248, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_88 to i32), i8* %0), !reason !60
  br label %l16

l15:                                              ; preds = %l16, %l13
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive131 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i8* %0), !reason !5
  %bitcast132 = bitcast i8* %receive131 to i64*, !reason !5
  %receive_load133 = load i64, i64* %bitcast132, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_43 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive134 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_44 to i32), i8* %0), !reason !5
  %bitcast135 = bitcast i8* %receive134 to i64*, !reason !5
  %receive_load136 = load i64, i64* %bitcast135, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_44 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %40 = sub i64 %receive_load133, %receive_load136, !partition !3, !start !0, !end !7
  %41 = shl i64 %40, 32, !partition !3, !start !7, !end !9
  %send_alloca137 = alloca i64, !reason !5
  store i64 %41, i64* %send_alloca137, !reason !5
  %send_cast138 = bitcast i64* %send_alloca137 to i8*, !reason !5
  call void @send(i8* %send_cast138, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_45 to i32), i8* %0), !reason !5
  %receive139 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i8* %0), !reason !5
  %bitcast140 = bitcast i8* %receive139 to i64*, !reason !5
  %receive_load141 = load i64, i64* %bitcast140, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_46 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %42 = add nsw i64 %receive_load141, 1, !partition !3, !start !28, !end !10
  %43 = trunc i64 %42 to i32, !partition !3, !start !9, !end !28
  %send_alloca142 = alloca i32, !reason !5
  store i32 %43, i32* %send_alloca142, !reason !5
  %send_cast143 = bitcast i32* %send_alloca142 to i8*, !reason !5
  call void @send(i8* %send_cast143, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_47 to i32), i8* %0), !reason !5
  %send_alloca249 = alloca i64, !reason !60
  store i64 %42, i64* %send_alloca249, !reason !60
  %send_cast250 = bitcast i64* %send_alloca249 to i8*, !reason !60
  call void @send(i8* %send_cast250, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_89 to i32), i8* %0), !reason !60
  %broadcast271 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i8* %0), !reason !33
  %bitcast272 = bitcast i8* %broadcast271 to i1*, !reason !33
  %receive_load273 = load i1, i1* %bitcast272, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_100 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load273, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %receive144 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i8* %0), !reason !5
  %bitcast145 = bitcast i8* %receive144 to i32*, !reason !5
  %receive_load146 = load i32, i32* %bitcast145, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_48 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %44 = sext i32 %receive_load146 to i64, !partition !3, !start !39, !end !1
  %send_alloca147 = alloca i64, !reason !5
  store i64 %44, i64* %send_alloca147, !reason !5
  %send_cast148 = bitcast i64* %send_alloca147 to i8*, !reason !5
  call void @send(i8* %send_cast148, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_49 to i32), i8* %0), !reason !5
  %receive149 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_50 to i32), i8* %0), !reason !5
  %bitcast150 = bitcast i8* %receive149 to i32*, !reason !5
  %receive_load151 = load i32, i32* %bitcast150, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_50 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %45 = sext i32 %receive_load151 to i64, !partition !3, !start !1, !end !2
  %send_alloca152 = alloca i64, !reason !5
  store i64 %45, i64* %send_alloca152, !reason !5
  %send_cast153 = bitcast i64* %send_alloca152 to i8*, !reason !5
  call void @send(i8* %send_cast153, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_51 to i32), i8* %0), !reason !5
  %receive154 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i8* %0), !reason !5
  %bitcast155 = bitcast i8* %receive154 to i32*, !reason !5
  %receive_load156 = load i32, i32* %bitcast155, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_52 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %receive157 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_53 to i32), i8* %0), !reason !5
  %bitcast158 = bitcast i8* %receive157 to i32*, !reason !5
  %receive_load159 = load i32, i32* %bitcast158, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_53 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %46 = icmp slt i32 %receive_load156, %receive_load159, !partition !3, !start !2, !end !6
  %send_alloca274 = alloca i1, !reason !34
  store i1 %46, i1* %send_alloca274, !reason !34
  %send_cast275 = bitcast i1* %send_alloca274 to i8*, !reason !34
  call void @send(i8* %send_cast275, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_101 to i32), i8* %0), !reason !34
  br i1 %46, label %l18, label %l19

l18:                                              ; preds = %l17
  br label %l20

l19:                                              ; preds = %l17
  %receive160 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i8* %0), !reason !5
  %bitcast161 = bitcast i8* %receive160 to i32*, !reason !5
  %receive_load162 = load i32, i32* %bitcast161, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_54 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %47 = add nsw i32 %receive_load162, 1, !partition !3, !start !3, !end !4
  %send_alloca253 = alloca i32, !reason !60
  store i32 %47, i32* %send_alloca253, !reason !60
  %send_cast254 = bitcast i32* %send_alloca253 to i8*, !reason !60
  call void @send(i8* %send_cast254, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_91 to i32), i8* %0), !reason !60
  br label %l20

l20:                                              ; preds = %l18, %l19
  %receive163 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i8* %0), !reason !5
  %bitcast164 = bitcast i8* %receive163 to i64*, !reason !5
  %receive_load165 = load i64, i64* %bitcast164, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_55 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %48 = add nsw i64 %receive_load165, 1, !partition !3, !start !3, !end !4
  %send_alloca166 = alloca i64, !reason !5
  store i64 %48, i64* %send_alloca166, !reason !5
  %send_cast167 = bitcast i64* %send_alloca166 to i8*, !reason !5
  call void @send(i8* %send_cast167, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_56 to i32), i8* %0), !reason !5
  %send_alloca251 = alloca i64, !reason !60
  store i64 %48, i64* %send_alloca251, !reason !60
  %send_cast252 = bitcast i64* %send_alloca251 to i8*, !reason !60
  call void @send(i8* %send_cast252, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_90 to i32), i8* %0), !reason !60
  %broadcast276 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i8* %0), !reason !33
  %bitcast277 = bitcast i8* %broadcast276 to i1*, !reason !33
  %receive_load278 = load i1, i1* %bitcast277, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_102 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load278, label %l21, label %l17

l21:                                              ; preds = %l10, %l4, %l20
  %receive217 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i8* %0), !reason !5
  %bitcast218 = bitcast i8* %receive217 to i64*, !reason !5
  %receive_load219 = load i64, i64* %bitcast218, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_76 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive220 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i8* %0), !reason !5
  %bitcast221 = bitcast i8* %receive220 to i64*, !reason !5
  %receive_load222 = load i64, i64* %bitcast221, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_77 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %49 = add i64 %receive_load219, %receive_load222, !partition !3, !start !0, !end !7
  %send_alloca223 = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca223, !reason !5
  %send_cast224 = bitcast i32* %send_alloca223 to i8*, !reason !5
  call void @send(i8* %send_cast224, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_78 to i32), i8* %0), !reason !5
  %send_alloca225 = alloca i64, !reason !5
  store i64 %49, i64* %send_alloca225, !reason !5
  %send_cast226 = bitcast i64* %send_alloca225 to i8*, !reason !5
  call void @send(i8* %send_cast226, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_79 to i32), i8* %0), !reason !5
  %receive227 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i8* %0), !reason !5
  %bitcast228 = bitcast i8* %receive227 to i64*, !reason !5
  %receive_load229 = load i64, i64* %bitcast228, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_80 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %50 = add i64 %receive_load229, 1, !partition !3, !start !7, !end !9
  %send_alloca230 = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca230, !reason !5
  %send_cast231 = bitcast i32* %send_alloca230 to i8*, !reason !5
  call void @send(i8* %send_cast231, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_81 to i32), i8* %0), !reason !5
  %receive232 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i8* %0), !reason !5
  %bitcast233 = bitcast i8* %receive232 to i64*, !reason !5
  %receive_load234 = load i64, i64* %bitcast233, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_82 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %receive235 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i8* %0), !reason !5
  %bitcast236 = bitcast i8* %receive235 to i64*, !reason !5
  %receive_load237 = load i64, i64* %bitcast236, !reason !5
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_83 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !5
  %51 = add i64 %receive_load234, %receive_load237, !partition !3, !start !9, !end !28
  %send_alloca241 = alloca i64, !reason !60
  store i64 %51, i64* %send_alloca241, !reason !60
  %send_cast242 = bitcast i64* %send_alloca241 to i8*, !reason !60
  call void @send(i8* %send_cast242, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_85 to i32), i8* %0), !reason !60
  %send_alloca243 = alloca i64, !reason !60
  store i64 %50, i64* %send_alloca243, !reason !60
  %send_cast244 = bitcast i64* %send_alloca243 to i8*, !reason !60
  call void @send(i8* %send_cast244, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_86 to i32), i8* %0), !reason !60
  %send_alloca245 = alloca i64, !reason !60
  store i64 %49, i64* %send_alloca245, !reason !60
  %send_cast246 = bitcast i64* %send_alloca245 to i8*, !reason !60
  call void @send(i8* %send_cast246, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_87 to i32), i8* %0), !reason !60
  %broadcast291 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_108 to i32), i8* %0), !reason !33
  %bitcast292 = bitcast i8* %broadcast291 to i1*, !reason !33
  %receive_load293 = load i1, i1* %bitcast292, !reason !33
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_108 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !33
  br i1 %receive_load293, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive238 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i8* %0), !reason !5
  %bitcast239 = bitcast i8* %receive238 to i32*, !reason !5
  %receive_load240 = load i32, i32* %bitcast239, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_84 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %52 = icmp slt i32 %receive_load240, 2, !partition !3, !start !0, !end !7
  %send_alloca294 = alloca i1, !reason !34
  store i1 %52, i1* %send_alloca294, !reason !34
  %send_cast295 = bitcast i1* %send_alloca294 to i8*, !reason !34
  call void @send(i8* %send_cast295, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_109 to i32), i8* %0), !reason !34
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

!0 = !{!"0"}
!1 = !{!"5"}
!2 = !{!"8"}
!3 = !{!"1"}
!4 = !{!"4"}
!5 = !{!"replace mapped op"}
!6 = !{!"11"}
!7 = !{!"3"}
!8 = !{!"14"}
!9 = !{!"6"}
!10 = !{!"12"}
!11 = !{!"15"}
!12 = !{!"28"}
!13 = !{!"31"}
!14 = !{!"57"}
!15 = !{!"60"}
!16 = !{!"18"}
!17 = !{!"21"}
!18 = !{!"42"}
!19 = !{!"45"}
!20 = !{!"22"}
!21 = !{!"54"}
!22 = !{!"25"}
!23 = !{!"63"}
!24 = !{!"35"}
!25 = !{!"38"}
!26 = !{!"48"}
!27 = !{!"51"}
!28 = !{!"9"}
!29 = !{!"66"}
!30 = !{!"69"}
!31 = !{!"34"}
!32 = !{!"39"}
!33 = !{!"receive"}
!34 = !{!"broadcast"}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"2"}
!40 = !{!"13"}
!41 = !{!"44"}
!42 = !{!"47"}
!43 = !{!"56"}
!44 = !{!"59"}
!45 = !{!"26"}
!46 = !{!"29"}
!47 = !{!"41"}
!48 = !{!"32"}
!49 = !{!"50"}
!50 = !{!"53"}
!51 = !{!"16"}
!52 = !{!"19"}
!53 = !{!"62"}
!54 = !{!"65"}
!55 = !{!"20"}
!56 = !{!"7"}
!57 = !{!"10"}
!58 = !{!"23"}
!59 = !{!"68"}
!60 = !{!"repair_phi"}
