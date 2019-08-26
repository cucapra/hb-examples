; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], section ".dram"
@b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], section ".dram"
@res = global [3 x [3 x double]] zeroinitializer, section ".dram"
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_multiply_0, void (i8*)* @_p_multiply_1]
@comms_0 = external global { double, i1, i32 }
@comms_1 = external global { double, i1, i32 }
@comms_2 = external global { double, i1, i32 }
@comms_3 = external global { i64, i1, i32 }
@comms_4 = external global { i64, i1, i32 }
@comms_5 = external global { double, i1, i32 }
@comms_6 = external global { i64, i1, i32 }
@comms_7 = external global { double, i1, i32 }
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
  %send_alloca27 = alloca i1, !reason !0
  %send_alloca25 = alloca i1, !reason !0
  %send_alloca23 = alloca i1, !reason !0
  %send_alloca13 = alloca i64, !reason !1
  %send_alloca11 = alloca double, !reason !1
  %send_alloca9 = alloca double, !reason !1
  %send_alloca = alloca double, !reason !1
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %9, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi6 = phi i64 [ 0, %l ], [ %7, %l3 ]
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i64 0, i64 %new_phi, i64 %new_phi6, !partition !2, !start !2, !end !2
  store double 0.000000e+00, double* %1, align 8, !tbaa !3, !partition !2, !start !2, !end !2
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi7 = phi i64 [ 0, %l1 ], [ %receive_load19, %l2 ]
  %new_phi8 = phi double [ 0.000000e+00, %l1 ], [ %receive_load22, %l2 ]
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %new_phi, i64 %new_phi7, !partition !2, !start !7, !end !8
  %3 = load double, double* %2, align 8, !tbaa !3, !partition !2, !start !9, !end !10
  %4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i64 0, i64 %new_phi7, i64 %new_phi6, !partition !2, !start !8, !end !11
  %5 = load double, double* %4, align 8, !tbaa !3, !partition !2, !start !2, !end !9
  store double %3, double* %send_alloca, !reason !1
  %send_cast = bitcast double* %send_alloca to i8*, !reason !1
  call void @send(i8* %send_cast, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_0 to i32), i8* %0), !reason !1
  store double %5, double* %send_alloca9, !reason !1
  %send_cast10 = bitcast double* %send_alloca9 to i8*, !reason !1
  call void @send(i8* %send_cast10, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_1 to i32), i8* %0), !reason !1
  store double %new_phi8, double* %send_alloca11, !reason !1
  %send_cast12 = bitcast double* %send_alloca11 to i8*, !reason !1
  call void @send(i8* %send_cast12, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i8* %0), !reason !1
  store i64 %new_phi7, i64* %send_alloca13, !reason !1
  %send_cast14 = bitcast i64* %send_alloca13 to i8*, !reason !1
  call void @send(i8* %send_cast14, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i8* %0), !reason !1
  %receive = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_4 to i32), i8* %0), !reason !1
  %bitcast = bitcast i8* %receive to i64*, !reason !1
  %receive_load = load i64, i64* %bitcast, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %6 = icmp eq i64 %receive_load, 3, !partition !2, !start !10, !end !7
  %repair_phi = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !12
  %bitcast18 = bitcast i8* %repair_phi to i64*, !reason !12
  %receive_load19 = load i64, i64* %bitcast18, !reason !12
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !12
  %repair_phi20 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_7 to i32), i8* %0), !reason !12
  %bitcast21 = bitcast i8* %repair_phi20 to double*, !reason !12
  %receive_load22 = load double, double* %bitcast21, !reason !12
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_7 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !12
  store i1 %6, i1* %send_alloca23, !reason !0
  %send_cast24 = bitcast i1* %send_alloca23 to i8*, !reason !0
  call void @send(i8* %send_cast24, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !0
  br i1 %6, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive15 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i8* %0), !reason !1
  %bitcast16 = bitcast i8* %receive15 to double*, !reason !1
  %receive_load17 = load double, double* %bitcast16, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  store double %receive_load17, double* %1, align 8, !tbaa !3, !partition !2, !start !2, !end !2
  %7 = add nuw nsw i64 %new_phi6, 1, !partition !2, !start !2, !end !2
  %8 = icmp eq i64 %7, 3, !partition !2, !start !2, !end !2
  store i1 %8, i1* %send_alloca25, !reason !0
  %send_cast26 = bitcast i1* %send_alloca25 to i8*, !reason !0
  call void @send(i8* %send_cast26, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !0
  br i1 %8, label %l4, label %l1

l4:                                               ; preds = %l3
  %9 = add nuw nsw i64 %new_phi, 1, !partition !2, !start !2, !end !2
  %10 = icmp eq i64 %9, 3, !partition !2, !start !2, !end !2
  store i1 %10, i1* %send_alloca27, !reason !0
  %send_cast28 = bitcast i1* %send_alloca27 to i8*, !reason !0
  call void @send(i8* %send_cast28, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !0
  br i1 %10, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %send_alloca19 = alloca double, !reason !13
  %send_alloca17 = alloca i64, !reason !13
  %send_alloca15 = alloca double, !reason !1
  %send_alloca = alloca i64, !reason !1
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_0 to i32), i8* %0), !reason !1
  %bitcast = bitcast i8* %receive to double*, !reason !1
  %receive_load = load double, double* %bitcast, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_0 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  %receive6 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_1 to i32), i8* %0), !reason !1
  %bitcast7 = bitcast i8* %receive6 to double*, !reason !1
  %receive_load8 = load double, double* %bitcast7, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_1 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  %1 = fmul double %receive_load, %receive_load8, !partition !9, !start !14, !end !8
  %receive9 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i8* %0), !reason !1
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !1
  %receive_load11 = load double, double* %bitcast10, !reason !1
  call void @free_comms(i32 ptrtoint ({ double, i1, i32 }* @comms_2 to i32), i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i8* %0), !reason !1
  %2 = fadd double %receive_load11, %1, !partition !9, !start !2, !end !10
  %receive12 = call i8* @receive(i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i8* %0), !reason !1
  %bitcast13 = bitcast i8* %receive12 to i64*, !reason !1
  %receive_load14 = load i64, i64* %bitcast13, !reason !1
  call void @free_comms(i32 ptrtoint ({ i64, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i8* %0), !reason !1
  %3 = add nuw nsw i64 %receive_load14, 1, !partition !9, !start !10, !end !7
  store i64 %3, i64* %send_alloca, !reason !1
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !1
  call void @send(i8* %send_cast, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_4 to i32), i8* %0), !reason !1
  store i64 %3, i64* %send_alloca17, !reason !13
  %send_cast18 = bitcast i64* %send_alloca17 to i8*, !reason !13
  call void @send(i8* %send_cast18, i32 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i64, i1, i32 }* @comms_6 to i32), i8* %0), !reason !13
  store double %2, double* %send_alloca19, !reason !13
  %send_cast20 = bitcast double* %send_alloca19 to i8*, !reason !13
  call void @send(i8* %send_cast20, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_7 to i32), i8* %0), !reason !13
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !12
  %bitcast21 = bitcast i8* %broadcast to i1*, !reason !12
  %receive_load22 = load i1, i1* %bitcast21, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load22, label %l3, label %l2

l3:                                               ; preds = %l2
  store double %2, double* %send_alloca15, !reason !1
  %send_cast16 = bitcast double* %send_alloca15 to i8*, !reason !1
  call void @send(i8* %send_cast16, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 ptrtoint ({ double, i1, i32 }* @comms_5 to i32), i8* %0), !reason !1
  %broadcast23 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !12
  %bitcast24 = bitcast i8* %broadcast23 to i1*, !reason !12
  %receive_load25 = load i1, i1* %bitcast24, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load25, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast26 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !12
  %bitcast27 = bitcast i8* %broadcast26 to i1*, !reason !12
  %receive_load28 = load i1, i1* %bitcast27, !reason !12
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !12
  br i1 %receive_load28, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

!0 = !{!"broadcast"}
!1 = !{!"replace mapped op"}
!2 = !{!"0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"5"}
!8 = !{!"8"}
!9 = !{!"1"}
!10 = !{!"2"}
!11 = !{!"11"}
!12 = !{!"receive"}
!13 = !{!"repair_phi"}
!14 = !{!"6"}
