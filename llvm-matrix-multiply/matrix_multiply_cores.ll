; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], section ".dram"
@b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], section ".dram"
@res = global [3 x [3 x double]] zeroinitializer, section ".dram"
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_multiply_0, void (i8*)* @_p_multiply_1]
@comms_0 = external global { i64, i1, i32 }
@comms_1 = external global { i64, i1, i32 }
@comms_2 = external global { i64, i1, i32 }
@comms_3 = external global { i64, i1, i32 }
@comms_4 = external global { double, i1, i32 }
@comms_5 = external global { double, i1, i32 }
@comms_6 = external global { i64, i1, i32 }
@comms_7 = external global { i64, i1, i32 }
@comms_8 = external global { i64, i1, i32 }
@comms_9 = external global { i64, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
@comms_11 = external global { i1, i1, i32 }
@comms_12 = external global { i1, i1, i32 }
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

declare i32 @putchar(i32)

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @_p_multiply_0(i8*) {
entry:
  %send_alloca25 = alloca i64, !reason !0
  %send_alloca23 = alloca i64, !reason !1
  %send_alloca21 = alloca i64, !reason !1
  %send_alloca = alloca double, !reason !1
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %8, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_0 to i32), i8* %0), !reason !1
  %bitcast = bitcast i8* %receive to i64*, !reason !1
  %receive_load = load i64, i64* %bitcast, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i64 0, i64 %new_phi, i64 %receive_load, !partition !2, !start !3, !end !4
  store double 0.000000e+00, double* %1, align 8, !tbaa !5, !partition !2, !start !2, !end !3
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive6 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_1 to i32), i8* %0), !reason !1
  %bitcast7 = bitcast i8* %receive6 to i64*, !reason !1
  %receive_load8 = load i64, i64* %bitcast7, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %new_phi, i64 %receive_load8, !partition !2, !start !3, !end !4
  %3 = load double, double* %2, align 8, !tbaa !5, !partition !2, !start !9, !end !10
  %receive9 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_2 to i32), i8* %0), !reason !1
  %bitcast10 = bitcast i8* %receive9 to i64*, !reason !1
  %receive_load11 = load i64, i64* %bitcast10, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %receive12 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i8* %0), !reason !1
  %bitcast13 = bitcast i8* %receive12 to i64*, !reason !1
  %receive_load14 = load i64, i64* %bitcast13, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i64 0, i64 %receive_load11, i64 %receive_load14, !partition !2, !start !11, !end !9
  %5 = load double, double* %4, align 8, !tbaa !5, !partition !2, !start !2, !end !3
  %6 = fmul double %3, %5, !partition !2, !start !4, !end !11
  store double %6, double* %send_alloca, !reason !1
  %send_cast = bitcast double* %send_alloca to i8*, !reason !1
  call void @send(i8* %send_cast, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_4 to i32), i8* %0), !reason !1
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !12
  %bitcast27 = bitcast i8* %broadcast to i1*, !reason !12
  %receive_load28 = load i1, i1* %bitcast27, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load28, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive15 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i8* %0), !reason !1
  %bitcast16 = bitcast i8* %receive15 to double*, !reason !1
  %receive_load17 = load double, double* %bitcast16, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  store double %receive_load17, double* %1, align 8, !tbaa !5, !partition !2, !start !2, !end !3
  %receive18 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !1
  %bitcast19 = bitcast i8* %receive18 to i64*, !reason !1
  %receive_load20 = load i64, i64* %bitcast19, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %7 = add nuw nsw i64 %receive_load20, 1, !partition !2, !start !3, !end !4
  store i64 %7, i64* %send_alloca21, !reason !1
  %send_cast22 = bitcast i64* %send_alloca21 to i8*, !reason !1
  call void @send(i8* %send_cast22, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !1
  store i64 %7, i64* %send_alloca25, !reason !0
  %send_cast26 = bitcast i64* %send_alloca25 to i8*, !reason !0
  call void @send(i8* %send_cast26, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !0
  %broadcast29 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i8* %0), !reason !12
  %bitcast30 = bitcast i8* %broadcast29 to i1*, !reason !12
  %receive_load31 = load i1, i1* %bitcast30, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load31, label %l4, label %l1

l4:                                               ; preds = %l3
  %8 = add nuw nsw i64 %new_phi, 1, !partition !2, !start !3, !end !4
  store i64 %8, i64* %send_alloca23, !reason !1
  %send_cast24 = bitcast i64* %send_alloca23 to i8*, !reason !1
  call void @send(i8* %send_cast24, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !1
  %broadcast32 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !12
  %bitcast33 = bitcast i8* %broadcast32 to i1*, !reason !12
  %receive_load34 = load i1, i1* %bitcast33, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load34, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %send_alloca30 = alloca i1, !reason !13
  %send_alloca28 = alloca i1, !reason !13
  %send_alloca26 = alloca i1, !reason !13
  %send_alloca16 = alloca i64, !reason !1
  %send_alloca14 = alloca double, !reason !1
  %send_alloca12 = alloca i64, !reason !1
  %send_alloca10 = alloca i64, !reason !1
  %send_alloca8 = alloca i64, !reason !1
  %send_alloca = alloca i64, !reason !1
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi = phi i64 [ 0, %l ], [ %receive_load25, %l3 ]
  store i64 %new_phi, i64* %send_alloca, !reason !1
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !1
  call void @send(i8* %send_cast, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_0 to i32), i8* %0), !reason !1
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi6 = phi i64 [ 0, %l1 ], [ %2, %l2 ]
  %new_phi7 = phi double [ 0.000000e+00, %l1 ], [ %1, %l2 ]
  store i64 %new_phi6, i64* %send_alloca8, !reason !1
  %send_cast9 = bitcast i64* %send_alloca8 to i8*, !reason !1
  call void @send(i8* %send_cast9, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_1 to i32), i8* %0), !reason !1
  store i64 %new_phi6, i64* %send_alloca10, !reason !1
  %send_cast11 = bitcast i64* %send_alloca10 to i8*, !reason !1
  call void @send(i8* %send_cast11, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_2 to i32), i8* %0), !reason !1
  store i64 %new_phi, i64* %send_alloca12, !reason !1
  %send_cast13 = bitcast i64* %send_alloca12 to i8*, !reason !1
  call void @send(i8* %send_cast13, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i8* %0), !reason !1
  %receive = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_4 to i32), i8* %0), !reason !1
  %bitcast = bitcast i8* %receive to double*, !reason !1
  %receive_load = load double, double* %bitcast, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_4 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  %1 = fadd double %new_phi7, %receive_load, !partition !3, !start !4, !end !11
  %2 = add nuw nsw i64 %new_phi6, 1, !partition !3, !start !11, !end !9
  %3 = icmp eq i64 %2, 3, !partition !3, !start !3, !end !4
  store i1 %3, i1* %send_alloca26, !reason !13
  %send_cast27 = bitcast i1* %send_alloca26 to i8*, !reason !13
  call void @send(i8* %send_cast27, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !13
  br i1 %3, label %l3, label %l2

l3:                                               ; preds = %l2
  store double %1, double* %send_alloca14, !reason !1
  %send_cast15 = bitcast double* %send_alloca14 to i8*, !reason !1
  call void @send(i8* %send_cast15, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i8* %0), !reason !1
  store i64 %new_phi, i64* %send_alloca16, !reason !1
  %send_cast17 = bitcast i64* %send_alloca16 to i8*, !reason !1
  call void @send(i8* %send_cast17, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !1
  %receive18 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i8* %0), !reason !1
  %bitcast19 = bitcast i8* %receive18 to i64*, !reason !1
  %receive_load20 = load i64, i64* %bitcast19, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %4 = icmp eq i64 %receive_load20, 3, !partition !3, !start !2, !end !14
  %repair_phi = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i8* %0), !reason !12
  %bitcast24 = bitcast i8* %repair_phi to i64*, !reason !12
  %receive_load25 = load i64, i64* %bitcast24, !reason !12
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !12
  store i1 %4, i1* %send_alloca28, !reason !13
  %send_cast29 = bitcast i1* %send_alloca28 to i8*, !reason !13
  call void @send(i8* %send_cast29, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_11 to i32), i8* %0), !reason !13
  br i1 %4, label %l4, label %l1

l4:                                               ; preds = %l3
  %receive21 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i8* %0), !reason !1
  %bitcast22 = bitcast i8* %receive21 to i64*, !reason !1
  %receive_load23 = load i64, i64* %bitcast22, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %5 = icmp eq i64 %receive_load23, 3, !partition !3, !start !2, !end !14
  store i1 %5, i1* %send_alloca30, !reason !13
  %send_cast31 = bitcast i1* %send_alloca30 to i8*, !reason !13
  call void @send(i8* %send_cast31, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !13
  br i1 %5, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

!0 = !{!"repair_phi"}
!1 = !{!"replace mapped op"}
!2 = !{!"0"}
!3 = !{!"1"}
!4 = !{!"4"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"9"}
!10 = !{!"10"}
!11 = !{!"6"}
!12 = !{!"receive"}
!13 = !{!"broadcast"}
!14 = !{!"3"}
