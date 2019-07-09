; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = global [4 x i8] c"%d\0A\00", section ".dram"
@a = global i32 0, section ".dram"

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_token(i32, i32, i8*)

declare i8* @receive_token(i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare i32 @printf(i8*, ...)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

define void @fib_0(i8*) {
entry:
  store volatile i32 0, i32* @a, align 4, !tbaa !0, !time !4
  br label %l

l:                                                ; preds = %l3, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %4, %l3 ], !time !5
  %new_phi5 = phi i32 [ 1, %entry ], [ %receive_load, %l3 ], !time !5
  %new_phi6 = phi i32 [ 0, %entry ], [ %receive_load9, %l3 ], !time !5
  %1 = icmp ult i32 %new_phi, 2, !time !5
  %send_alloca16 = alloca i1, !reason !6
  store i1 %1, i1* %send_alloca16, !reason !6
  %send_cast17 = bitcast i1* %send_alloca16 to i8*, !reason !6
  call void @send(i8* %send_cast17, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 7, i8* %0), !reason !6
  br i1 %1, label %l1, label %l2

l1:                                               ; preds = %l
  %2 = call i8* @receive_token(i32 1, i8* %0)
  store volatile i32 %new_phi, i32* @a, align 4, !tbaa !0, !time !7
  %send_alloca10 = alloca i32, !reason !8
  store i32 %new_phi6, i32* %send_alloca10, !reason !8
  %send_cast11 = bitcast i32* %send_alloca10 to i8*, !reason !8
  call void @send(i8* %send_cast11, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 4, i8* %0), !reason !8
  %send_alloca14 = alloca i32, !reason !8
  store i32 %new_phi5, i32* %send_alloca14, !reason !8
  %send_cast15 = bitcast i32* %send_alloca14 to i8*, !reason !8
  call void @send(i8* %send_cast15, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 6, i8* %0), !reason !8
  br label %l3

l2:                                               ; preds = %l
  %3 = add nsw i32 %new_phi5, %new_phi6, !time !9
  store volatile i32 %3, i32* @a, align 4, !tbaa !0, !time !10
  call void @send_token(i32 1, i32 0, i8* %0)
  %send_alloca12 = alloca i32, !reason !8
  store i32 %new_phi5, i32* %send_alloca12, !reason !8
  %send_cast13 = bitcast i32* %send_alloca12 to i8*, !reason !8
  call void @send(i8* %send_cast13, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 5, i8* %0), !reason !8
  br label %l3

l3:                                               ; preds = %l1, %l2
  %4 = add nuw nsw i32 %new_phi, 1, !time !9
  %5 = icmp eq i32 %4, 10, !time !11
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 2, i8* %0), !reason !12
  %bitcast = bitcast i8* %repair_phi to i32*, !reason !12
  %receive_load = load i32, i32* %bitcast, !reason !12
  %repair_phi7 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 3, i8* %0), !reason !12
  %bitcast8 = bitcast i8* %repair_phi7 to i32*, !reason !12
  %receive_load9 = load i32, i32* %bitcast8, !reason !12
  %send_alloca18 = alloca i1, !reason !6
  store i1 %5, i1* %send_alloca18, !reason !6
  %send_cast19 = bitcast i1* %send_alloca18 to i8*, !reason !6
  call void @send(i8* %send_cast19, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 8, i8* %0), !reason !6
  br i1 %5, label %l4, label %l

l4:                                               ; preds = %l3
  %6 = load volatile i32, i32* @a, align 4, !tbaa !0, !time !7
  %send_alloca = alloca i32, !reason !13
  store i32 %6, i32* %send_alloca, !reason !13
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !13
  call void @send_return(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !13
  ret void
}

define void @fib_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l3, %entry
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 7, i8* %0), !reason !12
  %bitcast14 = bitcast i8* %broadcast to i1*, !reason !12
  %receive_load15 = load i1, i1* %bitcast14, !reason !12
  br i1 %receive_load15, label %l1, label %l2

l1:                                               ; preds = %l
  call void @send_token(i32 0, i32 1, i8* %0)
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 4, i8* %0), !reason !12
  %bitcast = bitcast i8* %repair_phi to i32*, !reason !12
  %receive_load = load i32, i32* %bitcast, !reason !12
  %repair_phi11 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 6, i8* %0), !reason !12
  %bitcast12 = bitcast i8* %repair_phi11 to i32*, !reason !12
  %receive_load13 = load i32, i32* %bitcast12, !reason !12
  br label %l3

l2:                                               ; preds = %l
  %1 = call i8* @receive_token(i32 0, i8* %0)
  %2 = load volatile i32, i32* @a, align 4, !tbaa !0, !time !7
  %repair_phi8 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 5, i8* %0), !reason !12
  %bitcast9 = bitcast i8* %repair_phi8 to i32*, !reason !12
  %receive_load10 = load i32, i32* %bitcast9, !reason !12
  br label %l3

l3:                                               ; preds = %l1, %l2
  %new_phi = phi i32 [ %receive_load, %l1 ], [ %receive_load10, %l2 ], !time !14
  %new_phi5 = phi i32 [ %receive_load13, %l1 ], [ %2, %l2 ], !time !14
  %send_alloca = alloca i32, !reason !8
  store i32 %new_phi5, i32* %send_alloca, !reason !8
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !8
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 2, i8* %0), !reason !8
  %send_alloca6 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca6, !reason !8
  %send_cast7 = bitcast i32* %send_alloca6 to i8*, !reason !8
  call void @send(i8* %send_cast7, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 3, i8* %0), !reason !8
  %broadcast16 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 8, i8* %0), !reason !12
  %bitcast17 = bitcast i8* %broadcast16 to i1*, !reason !12
  %receive_load18 = load i1, i1* %bitcast17, !reason !12
  br i1 %receive_load18, label %l4, label %l

l4:                                               ; preds = %l3
  ret void
}

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"1", !"2"}
!5 = !{!"0", !"0"}
!6 = !{!"broadcast"}
!7 = !{!"0", !"1"}
!8 = !{!"repair_phi"}
!9 = !{!"0", !"3"}
!10 = !{!"3", !"4"}
!11 = !{!"3", !"6"}
!12 = !{!"receive"}
!13 = !{!"return"}
!14 = !{!"5", !"5"}
