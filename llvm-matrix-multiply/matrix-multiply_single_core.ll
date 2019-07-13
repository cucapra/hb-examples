; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@b = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@res = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@.str = local_unnamed_addr global [4 x i8] c"%f \00", section ".dram"

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
  %new_phi = phi i32 [ 0, %entry ], [ %12, %l4 ], !time !0
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi6 = phi i32 [ 0, %l ], [ %10, %l3 ], !time !0
  %1 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %new_phi, i32 %new_phi6, !time !0
  store double 0.000000e+00, double* %1, align 8, !tbaa !1, !time !0
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi7 = phi double [ 0.000000e+00, %l1 ], [ %7, %l2 ], !time !0
  %new_phi8 = phi i32 [ 0, %l1 ], [ %8, %l2 ], !time !0
  %2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %new_phi, i32 %new_phi8, !time !0
  %3 = load double, double* %2, align 8, !tbaa !1, !time !0
  %4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %new_phi8, i32 %new_phi6, !time !0
  %5 = load double, double* %4, align 8, !tbaa !1, !time !0
  %6 = fmul double %3, %5, !time !0
  %7 = fadd double %new_phi7, %6, !time !0
  %8 = add nuw nsw i32 %new_phi8, 1, !time !0
  %9 = icmp eq i32 %8, 3, !time !0
  br i1 %9, label %l3, label %l2

l3:                                               ; preds = %l2
  store double %7, double* %1, align 8, !tbaa !1, !time !5
  %10 = add nuw nsw i32 %new_phi6, 1, !time !6
  %11 = icmp eq i32 %10, 3, !time !7
  br i1 %11, label %l4, label %l1

l4:                                               ; preds = %l3
  %12 = add nuw nsw i32 %new_phi, 1, !time !6
  %13 = icmp eq i32 %12, 3, !time !7
  br i1 %13, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

!0 = !{!"0", !"0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"6", !"7"}
!6 = !{!"0", !"3"}
!7 = !{!"3", !"6"}