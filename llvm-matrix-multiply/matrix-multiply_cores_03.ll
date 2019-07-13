; ModuleID = 'matrix-multiply_cores.ll'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@b = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@res = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@.str = local_unnamed_addr global [4 x i8] c"%f \00", section ".dram"

declare void @send(i8*, i32, i32, i32, i8*) local_unnamed_addr

declare i8* @receive(i32, i32, i32, i8*) local_unnamed_addr

define void @multiply_0(i8*) local_unnamed_addr {
entry:
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %8, %l4 ], !time !0
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %new_phi, i32 0
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %new_phi, i32 1
  %3 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %new_phi, i32 2
  br label %l1

l1:                                               ; preds = %l1, %l
  %new_phi6 = phi i32 [ 0, %l ], [ %receive_load15, %l1 ], !time !0
  %4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %new_phi, i32 %new_phi6, !time !0
  store double 0.000000e+00, double* %4, align 8, !tbaa !1, !time !0
  %5 = load double, double* %1, align 8, !tbaa !1, !time !5
  %send_alloca = alloca i32, align 4, !reason !6
  store i32 0, i32* %send_alloca, align 4, !reason !6
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !6
  call void @send(i8* nonnull %send_cast, i32 4, i32 1, i32 0, i8* %0), !reason !6
  %send_alloca8 = alloca i32, align 4, !reason !6
  store i32 %new_phi6, i32* %send_alloca8, align 4, !reason !6
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast9, i32 4, i32 1, i32 1, i8* %0), !reason !6
  %send_alloca10 = alloca double, align 8, !reason !6
  store double %5, double* %send_alloca10, align 8, !reason !6
  %send_cast11 = bitcast double* %send_alloca10 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast11, i32 8, i32 1, i32 2, i8* %0), !reason !6
  %send_alloca16 = alloca i1, align 1, !reason !7
  store i1 false, i1* %send_alloca16, align 1, !reason !7
  %send_cast17 = bitcast i1* %send_alloca16 to i8*, !reason !7
  call void @send(i8* nonnull %send_cast17, i32 1, i32 1, i32 6, i8* %0), !reason !7
  %6 = load double, double* %2, align 8, !tbaa !1, !time !5
  %send_alloca.1 = alloca i32, align 4, !reason !6
  store i32 1, i32* %send_alloca.1, align 4, !reason !6
  %send_cast.1 = bitcast i32* %send_alloca.1 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast.1, i32 4, i32 1, i32 0, i8* %0), !reason !6
  %send_alloca8.1 = alloca i32, align 4, !reason !6
  store i32 %new_phi6, i32* %send_alloca8.1, align 4, !reason !6
  %send_cast9.1 = bitcast i32* %send_alloca8.1 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast9.1, i32 4, i32 1, i32 1, i8* %0), !reason !6
  %send_alloca10.1 = alloca double, align 8, !reason !6
  store double %6, double* %send_alloca10.1, align 8, !reason !6
  %send_cast11.1 = bitcast double* %send_alloca10.1 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast11.1, i32 8, i32 1, i32 2, i8* %0), !reason !6
  %send_alloca16.1 = alloca i1, align 1, !reason !7
  store i1 false, i1* %send_alloca16.1, align 1, !reason !7
  %send_cast17.1 = bitcast i1* %send_alloca16.1 to i8*, !reason !7
  call void @send(i8* nonnull %send_cast17.1, i32 1, i32 1, i32 6, i8* %0), !reason !7
  %7 = load double, double* %3, align 8, !tbaa !1, !time !5
  %send_alloca.2 = alloca i32, align 4, !reason !6
  store i32 2, i32* %send_alloca.2, align 4, !reason !6
  %send_cast.2 = bitcast i32* %send_alloca.2 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast.2, i32 4, i32 1, i32 0, i8* %0), !reason !6
  %send_alloca8.2 = alloca i32, align 4, !reason !6
  store i32 %new_phi6, i32* %send_alloca8.2, align 4, !reason !6
  %send_cast9.2 = bitcast i32* %send_alloca8.2 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast9.2, i32 4, i32 1, i32 1, i8* %0), !reason !6
  %send_alloca10.2 = alloca double, align 8, !reason !6
  store double %7, double* %send_alloca10.2, align 8, !reason !6
  %send_cast11.2 = bitcast double* %send_alloca10.2 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast11.2, i32 8, i32 1, i32 2, i8* %0), !reason !6
  %send_alloca16.2 = alloca i1, align 1, !reason !7
  store i1 true, i1* %send_alloca16.2, align 1, !reason !7
  %send_cast17.2 = bitcast i1* %send_alloca16.2 to i8*, !reason !7
  call void @send(i8* nonnull %send_cast17.2, i32 1, i32 1, i32 6, i8* %0), !reason !7
  %receive = call i8* @receive(i32 8, i32 1, i32 3, i8* %0), !reason !6
  %bitcast = bitcast i8* %receive to double*, !reason !6
  %receive_load = load double, double* %bitcast, align 8, !reason !6
  store double %receive_load, double* %4, align 8, !tbaa !1, !time !8
  %send_alloca12 = alloca i32, align 4, !reason !6
  store i32 %new_phi6, i32* %send_alloca12, align 4, !reason !6
  %send_cast13 = bitcast i32* %send_alloca12 to i8*, !reason !6
  call void @send(i8* nonnull %send_cast13, i32 4, i32 1, i32 4, i8* %0), !reason !6
  %repair_phi = call i8* @receive(i32 4, i32 1, i32 5, i8* %0), !reason !9
  %bitcast14 = bitcast i8* %repair_phi to i32*, !reason !9
  %receive_load15 = load i32, i32* %bitcast14, align 4, !reason !9
  %broadcast = call i8* @receive(i32 1, i32 1, i32 7, i8* %0), !reason !9
  %bitcast18 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load19 = load i1, i1* %bitcast18, align 1, !reason !9
  br i1 %receive_load19, label %l4, label %l1

l4:                                               ; preds = %l1
  %8 = add nuw nsw i32 %new_phi, 1, !time !10
  %9 = icmp eq i32 %8, 3, !time !11
  %send_alloca20 = alloca i1, align 1, !reason !7
  store i1 %9, i1* %send_alloca20, align 1, !reason !7
  %send_cast21 = bitcast i1* %send_alloca20 to i8*, !reason !7
  call void @send(i8* nonnull %send_cast21, i32 1, i32 1, i32 8, i8* %0), !reason !7
  br i1 %9, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @multiply_1(i8*) local_unnamed_addr {
entry:
  br label %l2

l2:                                               ; preds = %l2.backedge, %entry
  %new_phi = phi double [ 0.000000e+00, %entry ], [ %new_phi.be, %l2.backedge ], !time !12
  %receive = call i8* @receive(i32 4, i32 0, i32 0, i8* %0), !reason !6
  %bitcast = bitcast i8* %receive to i32*, !reason !6
  %receive_load = load i32, i32* %bitcast, align 4, !reason !6
  %receive6 = call i8* @receive(i32 4, i32 0, i32 1, i8* %0), !reason !6
  %bitcast7 = bitcast i8* %receive6 to i32*, !reason !6
  %receive_load8 = load i32, i32* %bitcast7, align 4, !reason !6
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %receive_load, i32 %receive_load8, !time !13
  %2 = load double, double* %1, align 8, !tbaa !1, !time !14
  %receive9 = call i8* @receive(i32 8, i32 0, i32 2, i8* %0), !reason !6
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !6
  %receive_load11 = load double, double* %bitcast10, align 8, !reason !6
  %3 = fmul double %2, %receive_load11, !time !15
  %4 = fadd double %new_phi, %3, !time !16
  %broadcast = call i8* @receive(i32 1, i32 0, i32 6, i8* %0), !reason !9
  %bitcast17 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load18 = load i1, i1* %bitcast17, align 1, !reason !9
  br i1 %receive_load18, label %l3, label %l2.backedge

l2.backedge:                                      ; preds = %l2, %l4, %l3
  %new_phi.be = phi double [ %4, %l2 ], [ 0.000000e+00, %l4 ], [ 0.000000e+00, %l3 ]
  br label %l2

l3:                                               ; preds = %l2
  %send_alloca = alloca double, align 8, !reason !6
  store double %4, double* %send_alloca, align 8, !reason !6
  %send_cast = bitcast double* %send_alloca to i8*, !reason !6
  call void @send(i8* nonnull %send_cast, i32 8, i32 0, i32 3, i8* %0), !reason !6
  %receive12 = call i8* @receive(i32 4, i32 0, i32 4, i8* %0), !reason !6
  %bitcast13 = bitcast i8* %receive12 to i32*, !reason !6
  %receive_load14 = load i32, i32* %bitcast13, align 4, !reason !6
  %5 = add nuw nsw i32 %receive_load14, 1, !time !10
  %6 = icmp eq i32 %5, 3, !time !11
  %send_alloca15 = alloca i32, align 4, !reason !17
  store i32 %5, i32* %send_alloca15, align 4, !reason !17
  %send_cast16 = bitcast i32* %send_alloca15 to i8*, !reason !17
  call void @send(i8* nonnull %send_cast16, i32 4, i32 0, i32 5, i8* %0), !reason !17
  %send_alloca19 = alloca i1, align 1, !reason !7
  store i1 %6, i1* %send_alloca19, align 1, !reason !7
  %send_cast20 = bitcast i1* %send_alloca19 to i8*, !reason !7
  call void @send(i8* nonnull %send_cast20, i32 1, i32 0, i32 7, i8* %0), !reason !7
  br i1 %6, label %l4, label %l2.backedge

l4:                                               ; preds = %l3
  %broadcast21 = call i8* @receive(i32 1, i32 0, i32 8, i8* %0), !reason !9
  %bitcast22 = bitcast i8* %broadcast21 to i1*, !reason !9
  %receive_load23 = load i1, i1* %bitcast22, align 1, !reason !9
  br i1 %receive_load23, label %l5, label %l2.backedge

l5:                                               ; preds = %l4
  ret void
}

!0 = !{!"0", !"0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"4", !"5"}
!6 = !{!"replace mapped op"}
!7 = !{!"broadcast"}
!8 = !{!"3", !"4"}
!9 = !{!"receive"}
!10 = !{!"0", !"3"}
!11 = !{!"3", !"6"}
!12 = !{!"11", !"11"}
!13 = !{!"2", !"5"}
!14 = !{!"5", !"6"}
!15 = !{!"6", !"11"}
!16 = !{!"11", !"14"}
!17 = !{!"repair_phi"}
