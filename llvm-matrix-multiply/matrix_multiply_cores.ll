; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], section ".dram"
@b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], section ".dram"
@res = global [3 x [3 x double]] zeroinitializer, section ".dram"
@.str = global [4 x i8] c"%f \00", section ".dram"
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { double, i1, i32 }
@comms_3 = external global { double, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@comms_7 = external global { i32, i1, i32 }
@comms_8 = external global { i1, i1, i32 }
@comms_9 = external global { i1, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
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

declare i32 @printf(i8*, ...)

declare i32 @putchar(i32)

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @multiply_0(i8*) {
entry:
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %7, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi6 = phi i32 [ 0, %l ], [ %6, %l3 ]
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %new_phi, i32 %new_phi6, !partition !0, !start !0, !end !0
  store double 0.000000e+00, double* %1, align 8, !tbaa !1, !partition !0, !start !0, !end !0
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi7 = phi double [ 0.000000e+00, %l1 ], [ %4, %l2 ]
  %send_alloca = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !5
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %receive_load, i32 %new_phi6, !partition !0, !start !6, !end !7
  %3 = load double, double* %2, align 8, !tbaa !1, !partition !0, !start !7, !end !8
  %send_alloca8 = alloca double, !reason !5
  store double %3, double* %send_alloca8, !reason !5
  %send_cast9 = bitcast double* %send_alloca8 to i8*, !reason !5
  call void @send(i8* %send_cast9, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i8* %0), !reason !5
  %receive10 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_3 to i32), i8* %0), !reason !5
  %bitcast11 = bitcast i8* %receive10 to double*, !reason !5
  %receive_load12 = load double, double* %bitcast11, !reason !5
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_3 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !5
  %4 = fadd double %new_phi7, %receive_load12, !partition !0, !start !9, !end !10
  %receive13 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !5
  %bitcast14 = bitcast i8* %receive13 to i32*, !reason !5
  %receive_load15 = load i32, i32* %bitcast14, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %5 = add nuw nsw i32 %receive_load15, 1, !partition !0, !start !8, !end !11
  %send_alloca16 = alloca i32, !reason !5
  store i32 %5, i32* %send_alloca16, !reason !5
  %send_cast17 = bitcast i32* %send_alloca16 to i8*, !reason !5
  call void @send(i8* %send_cast17, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !5
  %send_alloca20 = alloca i32, !reason !12
  store i32 %5, i32* %send_alloca20, !reason !12
  %send_cast21 = bitcast i32* %send_alloca20 to i8*, !reason !12
  call void @send(i8* %send_cast21, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !12
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !13
  %bitcast22 = bitcast i8* %broadcast to i1*, !reason !13
  %receive_load23 = load i1, i1* %bitcast22, !reason !13
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !13
  br i1 %receive_load23, label %l3, label %l2

l3:                                               ; preds = %l2
  store double %4, double* %1, align 8, !tbaa !1, !partition !0, !start !14, !end !7
  %6 = add nuw nsw i32 %new_phi6, 1, !partition !0, !start !0, !end !14
  %send_alloca18 = alloca i32, !reason !5
  store i32 %6, i32* %send_alloca18, !reason !5
  %send_cast19 = bitcast i32* %send_alloca18 to i8*, !reason !5
  call void @send(i8* %send_cast19, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !5
  %broadcast24 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !13
  %bitcast25 = bitcast i8* %broadcast24 to i1*, !reason !13
  %receive_load26 = load i1, i1* %bitcast25, !reason !13
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !13
  br i1 %receive_load26, label %l4, label %l1

l4:                                               ; preds = %l3
  %7 = add nuw nsw i32 %new_phi, 1, !partition !0, !start !0, !end !0
  %8 = icmp eq i32 %7, 3, !partition !0, !start !0, !end !0
  %send_alloca27 = alloca i1, !reason !15
  store i1 %8, i1* %send_alloca27, !reason !15
  %send_cast28 = bitcast i1* %send_alloca27 to i8*, !reason !15
  call void @send(i8* %send_cast28, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !15
  br i1 %8, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @multiply_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi = phi i32 [ 0, %l1 ], [ %receive_load20, %l2 ]
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %receive_load, i32 %new_phi, !partition !6, !start !6, !end !7
  %2 = load double, double* %1, align 8, !tbaa !1, !partition !6, !start !7, !end !8
  %send_alloca = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !5
  %receive6 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i8* %0), !reason !5
  %bitcast7 = bitcast i8* %receive6 to double*, !reason !5
  %receive_load8 = load double, double* %bitcast7, !reason !5
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !5
  %3 = fmul double %2, %receive_load8, !partition !6, !start !16, !end !11
  %send_alloca9 = alloca double, !reason !5
  store double %3, double* %send_alloca9, !reason !5
  %send_cast10 = bitcast double* %send_alloca9 to i8*, !reason !5
  call void @send(i8* %send_cast10, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_3 to i32), i8* %0), !reason !5
  %send_alloca11 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca11, !reason !5
  %send_cast12 = bitcast i32* %send_alloca11 to i8*, !reason !5
  call void @send(i8* %send_cast12, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !5
  %receive13 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !5
  %bitcast14 = bitcast i8* %receive13 to i32*, !reason !5
  %receive_load15 = load i32, i32* %bitcast14, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %4 = icmp eq i32 %receive_load15, 3, !partition !6, !start !9, !end !17
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !13
  %bitcast19 = bitcast i8* %repair_phi to i32*, !reason !13
  %receive_load20 = load i32, i32* %bitcast19, !reason !13
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !13
  %send_alloca21 = alloca i1, !reason !15
  store i1 %4, i1* %send_alloca21, !reason !15
  %send_cast22 = bitcast i1* %send_alloca21 to i8*, !reason !15
  call void @send(i8* %send_cast22, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !15
  br i1 %4, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive16 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !5
  %bitcast17 = bitcast i8* %receive16 to i32*, !reason !5
  %receive_load18 = load i32, i32* %bitcast17, !reason !5
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !5
  %5 = icmp eq i32 %receive_load18, 3, !partition !6, !start !7, !end !18
  %send_alloca23 = alloca i1, !reason !15
  store i1 %5, i1* %send_alloca23, !reason !15
  %send_cast24 = bitcast i1* %send_alloca23 to i8*, !reason !15
  call void @send(i8* %send_cast24, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !15
  br i1 %5, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !13
  %bitcast25 = bitcast i8* %broadcast to i1*, !reason !13
  %receive_load26 = load i1, i1* %bitcast25, !reason !13
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !13
  br i1 %receive_load26, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

!0 = !{!"0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"replace mapped op"}
!6 = !{!"1"}
!7 = !{!"4"}
!8 = !{!"5"}
!9 = !{!"9"}
!10 = !{!"11"}
!11 = !{!"8"}
!12 = !{!"repair_phi"}
!13 = !{!"receive"}
!14 = !{!"3"}
!15 = !{!"broadcast"}
!16 = !{!"6"}
!17 = !{!"12"}
!18 = !{!"7"}
