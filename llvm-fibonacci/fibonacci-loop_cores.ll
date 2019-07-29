; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = global [4 x i8] c"%d\0A\00"
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i1, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@comms_7 = external global { i32, i1, i32 }
@comms_8 = external global { i32, i1, i32 }
@comms_9 = external global { i1, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
@return_struct = external global { i32, i1, i32 }

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @free_comms(i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_token(i32, i32, i8*)

declare i8* @receive_token(i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare i32 @atoi(i8*)

declare i32 @printf(i8*, ...)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

define void @fib_0(i8*) {
entry:
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i8* %0), !reason !0
  %bitcast = bitcast i8* %argument to i32*, !reason !0
  %receive_load = load i32, i32* %bitcast, !reason !0
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !0
  %1 = icmp sgt i32 %receive_load, 0, !time !1
  %send_alloca18 = alloca i1, !reason !2
  store i1 %1, i1* %send_alloca18, !reason !2
  %send_cast19 = bitcast i1* %send_alloca18 to i8*, !reason !2
  call void @send(i8* %send_cast19, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !2
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %receive_load12, %l ], [ 0, %entry ], !time !3
  %new_phi3 = phi i32 [ %4, %l ], [ 1, %entry ], !time !4
  %new_phi4 = phi i32 [ %receive_load15, %l ], [ 0, %entry ], !time !5
  %2 = icmp ult i32 %new_phi, 2, !time !6
  %3 = add nsw i32 %new_phi3, %new_phi4, !time !7
  %send_alloca = alloca i1, !reason !8
  store i1 %2, i1* %send_alloca, !reason !8
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !8
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_1 to i32), i8* %0), !reason !8
  %send_alloca5 = alloca i32, !reason !8
  store i32 %new_phi4, i32* %send_alloca5, !reason !8
  %send_cast6 = bitcast i32* %send_alloca5 to i8*, !reason !8
  call void @send(i8* %send_cast6, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !8
  %send_alloca7 = alloca i32, !reason !8
  store i32 %new_phi3, i32* %send_alloca7, !reason !8
  %send_cast8 = bitcast i32* %send_alloca7 to i8*, !reason !8
  call void @send(i8* %send_cast8, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !8
  %4 = select i1 %2, i32 %new_phi3, i32 %3, !time !9
  %send_alloca9 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca9, !reason !8
  %send_cast10 = bitcast i32* %send_alloca9 to i8*, !reason !8
  call void @send(i8* %send_cast10, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !8
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !10
  %bitcast11 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load12 = load i32, i32* %bitcast11, !reason !10
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !10
  %repair_phi13 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !10
  %bitcast14 = bitcast i8* %repair_phi13 to i32*, !reason !10
  %receive_load15 = load i32, i32* %bitcast14, !reason !10
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !10
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !10
  %bitcast20 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load21 = load i1, i1* %bitcast20, !reason !10
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !10
  br i1 %receive_load21, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !time !11
  %6 = select i1 %2, i32 %5, i32 %3, !time !12
  %send_alloca16 = alloca i32, !reason !13
  store i32 %6, i32* %send_alloca16, !reason !13
  %send_cast17 = bitcast i32* %send_alloca16 to i8*, !reason !13
  call void @send(i8* %send_cast17, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !13
  br label %l2

l2:                                               ; preds = %l1, %entry
  ret void
}

define void @fib_1(i8*) {
entry:
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !0
  %bitcast12 = bitcast i8* %argument to i32*, !reason !0
  %receive_load13 = load i32, i32* %bitcast12, !reason !0
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !0
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i8* %0), !reason !10
  %bitcast20 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load21 = load i1, i1* %bitcast20, !reason !10
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !10
  br i1 %receive_load21, label %l, label %l2

l:                                                ; preds = %l, %entry
  %receive = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_1 to i32), i8* %0), !reason !8
  %bitcast = bitcast i8* %receive to i1*, !reason !8
  %receive_load = load i1, i1* %bitcast, !reason !8
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !8
  %receive3 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !8
  %bitcast4 = bitcast i8* %receive3 to i32*, !reason !8
  %receive_load5 = load i32, i32* %bitcast4, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  %receive6 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !8
  %bitcast7 = bitcast i8* %receive6 to i32*, !reason !8
  %receive_load8 = load i32, i32* %bitcast7, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  %1 = select i1 %receive_load, i32 %receive_load5, i32 %receive_load8, !time !9
  %receive9 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !8
  %bitcast10 = bitcast i8* %receive9 to i32*, !reason !8
  %receive_load11 = load i32, i32* %bitcast10, !reason !8
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !8
  %2 = add nuw nsw i32 %receive_load11, 1, !time !6
  %3 = icmp eq i32 %2, %receive_load13, !time !7
  %send_alloca14 = alloca i32, !reason !13
  store i32 %2, i32* %send_alloca14, !reason !13
  %send_cast15 = bitcast i32* %send_alloca14 to i8*, !reason !13
  call void @send(i8* %send_cast15, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !13
  %send_alloca16 = alloca i32, !reason !13
  store i32 %1, i32* %send_alloca16, !reason !13
  %send_cast17 = bitcast i32* %send_alloca16 to i8*, !reason !13
  call void @send(i8* %send_cast17, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !13
  %send_alloca22 = alloca i1, !reason !2
  store i1 %3, i1* %send_alloca22, !reason !2
  %send_cast23 = bitcast i1* %send_alloca22 to i8*, !reason !2
  call void @send(i8* %send_cast23, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !2
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !10
  %bitcast18 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load19 = load i32, i32* %bitcast18, !reason !10
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !10
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi = phi i32 [ %receive_load19, %l1 ], [ 0, %entry ], !time !1
  %send_alloca = alloca i32, !reason !14
  store i32 %new_phi, i32* %send_alloca, !reason !14
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !14
  call void @send_return(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !14
  ret void
}

!0 = !{!"replace argument"}
!1 = !{!"0", !"0"}
!2 = !{!"broadcast"}
!3 = !{!"1", !"1"}
!4 = !{!"2", !"2"}
!5 = !{!"3", !"3"}
!6 = !{!"3", !"6"}
!7 = !{!"6", !"9"}
!8 = !{!"replace mapped op"}
!9 = !{!"9", !"10"}
!10 = !{!"receive"}
!11 = !{!"0", !"3"}
!12 = !{!"3", !"4"}
!13 = !{!"repair_phi"}
!14 = !{!"return"}
