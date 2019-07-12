; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = global [3 x [3 x double]] zeroinitializer, section ".dram"
@b = global [3 x [3 x double]] zeroinitializer, section ".dram"
@res = global [3 x [3 x double]] zeroinitializer, section ".dram"
@.str = global [4 x i8] c"%f \00", section ".dram"

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_token(i32, i32, i8*)

declare i8* @receive_token(i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare i32 @printf(i8*, ...)

declare i32 @putchar(i32)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

define void @multiply_0(i8*) {
entry:
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %6, %l4 ], !time !0
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi6 = phi i32 [ 0, %l ], [ %receive_load15, %l3 ], !time !0
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %new_phi, i32 %new_phi6, !time !0
  store double 0.000000e+00, double* %1, align 8, !tbaa !1, !time !0
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi7 = phi i32 [ 0, %l1 ], [ %4, %l2 ], !time !5
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %new_phi, i32 %new_phi7, !time !6
  %3 = load double, double* %2, align 8, !tbaa !1, !time !7
  %send_alloca = alloca i32, !reason !8
  store i32 %new_phi7, i32* %send_alloca, !reason !8
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !8
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 0, i8* %0), !reason !8
  %send_alloca8 = alloca i32, !reason !8
  store i32 %new_phi6, i32* %send_alloca8, !reason !8
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !8
  call void @send(i8* %send_cast9, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 1, i8* %0), !reason !8
  %send_alloca10 = alloca double, !reason !8
  store double %3, double* %send_alloca10, !reason !8
  %send_cast11 = bitcast double* %send_alloca10 to i8*, !reason !8
  call void @send(i8* %send_cast11, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 2, i8* %0), !reason !8
  %4 = add nuw nsw i32 %new_phi7, 1, !time !9
  %5 = icmp eq i32 %4, 3, !time !10
  %send_alloca16 = alloca i1, !reason !11
  store i1 %5, i1* %send_alloca16, !reason !11
  %send_cast17 = bitcast i1* %send_alloca16 to i8*, !reason !11
  call void @send(i8* %send_cast17, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 6, i8* %0), !reason !11
  br i1 %5, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 1, i32 3, i8* %0), !reason !8
  %bitcast = bitcast i8* %receive to double*, !reason !8
  %receive_load = load double, double* %bitcast, !reason !8
  store double %receive_load, double* %1, align 8, !tbaa !1, !time !12
  %send_alloca12 = alloca i32, !reason !8
  store i32 %new_phi6, i32* %send_alloca12, !reason !8
  %send_cast13 = bitcast i32* %send_alloca12 to i8*, !reason !8
  call void @send(i8* %send_cast13, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 4, i8* %0), !reason !8
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 5, i8* %0), !reason !13
  %bitcast14 = bitcast i8* %repair_phi to i32*, !reason !13
  %receive_load15 = load i32, i32* %bitcast14, !reason !13
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 7, i8* %0), !reason !13
  %bitcast18 = bitcast i8* %broadcast to i1*, !reason !13
  %receive_load19 = load i1, i1* %bitcast18, !reason !13
  br i1 %receive_load19, label %l4, label %l1

l4:                                               ; preds = %l3
  %6 = add nuw nsw i32 %new_phi, 1, !time !14
  %7 = icmp eq i32 %6, 3, !time !15
  %send_alloca20 = alloca i1, !reason !11
  store i1 %7, i1* %send_alloca20, !reason !11
  %send_cast21 = bitcast i1* %send_alloca20 to i8*, !reason !11
  call void @send(i8* %send_cast21, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 8, i8* %0), !reason !11
  br i1 %7, label %l5, label %l

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
  %new_phi = phi double [ 0.000000e+00, %l1 ], [ %4, %l2 ], !time !16
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 0, i8* %0), !reason !8
  %bitcast = bitcast i8* %receive to i32*, !reason !8
  %receive_load = load i32, i32* %bitcast, !reason !8
  %receive6 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 1, i8* %0), !reason !8
  %bitcast7 = bitcast i8* %receive6 to i32*, !reason !8
  %receive_load8 = load i32, i32* %bitcast7, !reason !8
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %receive_load, i32 %receive_load8, !time !17
  %2 = load double, double* %1, align 8, !tbaa !1, !time !18
  %receive9 = call i8* @receive(i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 2, i8* %0), !reason !8
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !8
  %receive_load11 = load double, double* %bitcast10, !reason !8
  %3 = fmul double %receive_load11, %2, !time !19
  %4 = fadd double %new_phi, %3, !time !20
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 6, i8* %0), !reason !13
  %bitcast17 = bitcast i8* %broadcast to i1*, !reason !13
  %receive_load18 = load i1, i1* %bitcast17, !reason !13
  br i1 %receive_load18, label %l3, label %l2

l3:                                               ; preds = %l2
  %send_alloca = alloca double, !reason !8
  store double %4, double* %send_alloca, !reason !8
  %send_cast = bitcast double* %send_alloca to i8*, !reason !8
  call void @send(i8* %send_cast, i32 ptrtoint (double* getelementptr (double, double* null, i32 1) to i32), i32 0, i32 3, i8* %0), !reason !8
  %receive12 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 4, i8* %0), !reason !8
  %bitcast13 = bitcast i8* %receive12 to i32*, !reason !8
  %receive_load14 = load i32, i32* %bitcast13, !reason !8
  %5 = add nuw nsw i32 %receive_load14, 1, !time !14
  %6 = icmp eq i32 %5, 3, !time !15
  %send_alloca15 = alloca i32, !reason !21
  store i32 %5, i32* %send_alloca15, !reason !21
  %send_cast16 = bitcast i32* %send_alloca15 to i8*, !reason !21
  call void @send(i8* %send_cast16, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 5, i8* %0), !reason !21
  %send_alloca19 = alloca i1, !reason !11
  store i1 %6, i1* %send_alloca19, !reason !11
  %send_cast20 = bitcast i1* %send_alloca19 to i8*, !reason !11
  call void @send(i8* %send_cast20, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 7, i8* %0), !reason !11
  br i1 %6, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast21 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 8, i8* %0), !reason !13
  %bitcast22 = bitcast i8* %broadcast21 to i1*, !reason !13
  %receive_load23 = load i1, i1* %bitcast22, !reason !13
  br i1 %receive_load23, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

!0 = !{!"0", !"0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"1", !"1"}
!6 = !{!"1", !"4"}
!7 = !{!"4", !"5"}
!8 = !{!"replace mapped op"}
!9 = !{!"5", !"8"}
!10 = !{!"9", !"12"}
!11 = !{!"broadcast"}
!12 = !{!"3", !"4"}
!13 = !{!"receive"}
!14 = !{!"0", !"3"}
!15 = !{!"3", !"6"}
!16 = !{!"11", !"11"}
!17 = !{!"2", !"5"}
!18 = !{!"5", !"6"}
!19 = !{!"6", !"11"}
!20 = !{!"11", !"14"}
!21 = !{!"repair_phi"}
