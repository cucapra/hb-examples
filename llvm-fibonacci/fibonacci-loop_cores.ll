; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = global [4 x i8] c"%d\0A\00", section ".dram"

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
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i8* %0), !reason !0
  %bitcast = bitcast i8* %argument to i32*, !reason !0
  %receive_load = load i32, i32* %bitcast, !reason !0
  %1 = icmp sgt i32 %receive_load, 0, !time !1
  %send_alloca10 = alloca i1, !reason !2
  store i1 %1, i1* %send_alloca10, !reason !2
  %send_cast11 = bitcast i1* %send_alloca10 to i8*, !reason !2
  call void @send(i8* %send_cast11, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 5, i8* %0), !reason !2
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %2, %l ], [ 0, %entry ], !time !3
  %send_alloca = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca, !reason !4
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !4
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 1, i8* %0), !reason !4
  %2 = add nuw nsw i32 %new_phi, 1, !time !5
  %3 = icmp eq i32 %2, %receive_load, !time !6
  %send_alloca12 = alloca i1, !reason !2
  store i1 %3, i1* %send_alloca12, !reason !2
  %send_cast13 = bitcast i1* %send_alloca12 to i8*, !reason !2
  call void @send(i8* %send_cast13, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 6, i8* %0), !reason !2
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %4 = add i32 %receive_load, -1, !time !7
  %receive = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 2, i8* %0), !reason !4
  %bitcast3 = bitcast i8* %receive to i1*, !reason !4
  %receive_load4 = load i1, i1* %bitcast3, !reason !4
  %receive5 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 3, i8* %0), !reason !4
  %bitcast6 = bitcast i8* %receive5 to i32*, !reason !4
  %receive_load7 = load i32, i32* %bitcast6, !reason !4
  %5 = select i1 %receive_load4, i32 %4, i32 %receive_load7, !time !8
  %send_alloca8 = alloca i32, !reason !9
  store i32 %5, i32* %send_alloca8, !reason !9
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !9
  call void @send(i8* %send_cast9, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 4, i8* %0), !reason !9
  br label %l2

l2:                                               ; preds = %l1, %entry
  ret void
}

define void @fib_1(i8*) {
entry:
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 5, i8* %0), !reason !10
  %bitcast11 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load12 = load i1, i1* %bitcast11, !reason !10
  br i1 %receive_load12, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %4, %l ], [ 1, %entry ], !time !11
  %new_phi3 = phi i32 [ %3, %l ], [ 0, %entry ], !time !11
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 1, i8* %0), !reason !4
  %bitcast = bitcast i8* %receive to i32*, !reason !4
  %receive_load = load i32, i32* %bitcast, !reason !4
  %1 = icmp ult i32 %receive_load, 2, !time !12
  %2 = add nsw i32 %new_phi, %new_phi3, !time !13
  %3 = select i1 %1, i32 %new_phi3, i32 %new_phi, !time !14
  %4 = select i1 %1, i32 %new_phi, i32 %2, !time !15
  %broadcast13 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 6, i8* %0), !reason !10
  %bitcast14 = bitcast i8* %broadcast13 to i1*, !reason !10
  %receive_load15 = load i1, i1* %bitcast14, !reason !10
  br i1 %receive_load15, label %l1, label %l

l1:                                               ; preds = %l
  %send_alloca = alloca i1, !reason !4
  store i1 %1, i1* %send_alloca, !reason !4
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !4
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 2, i8* %0), !reason !4
  %send_alloca4 = alloca i32, !reason !4
  store i32 %2, i32* %send_alloca4, !reason !4
  %send_cast5 = bitcast i32* %send_alloca4 to i8*, !reason !4
  call void @send(i8* %send_cast5, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 3, i8* %0), !reason !4
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 4, i8* %0), !reason !10
  %bitcast9 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load10 = load i32, i32* %bitcast9, !reason !10
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi6 = phi i32 [ %receive_load10, %l1 ], [ 0, %entry ], !time !1
  %send_alloca7 = alloca i32, !reason !16
  store i32 %new_phi6, i32* %send_alloca7, !reason !16
  %send_cast8 = bitcast i32* %send_alloca7 to i8*, !reason !16
  call void @send_return(i8* %send_cast8, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !16
  ret void
}

!0 = !{!"replace argument"}
!1 = !{!"0", !"0"}
!2 = !{!"broadcast"}
!3 = !{!"1", !"1"}
!4 = !{!"replace mapped op"}
!5 = !{!"3", !"6"}
!6 = !{!"6", !"9"}
!7 = !{!"0", !"3"}
!8 = !{!"3", !"4"}
!9 = !{!"repair_phi"}
!10 = !{!"receive"}
!11 = !{!"5", !"5"}
!12 = !{!"2", !"5"}
!13 = !{!"5", !"8"}
!14 = !{!"9", !"10"}
!15 = !{!"8", !"9"}
!16 = !{!"return"}
