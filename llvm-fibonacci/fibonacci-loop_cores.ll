; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@funs = global [2 x void (i8*)*] [void (i8*)* @_p_fib_0, void (i8*)* @_p_fib_1]
@arg_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i1, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@arg_7 = external global { i32, i1, i32 }
@comms_8 = external global { i32, i1, i32 }
@comms_9 = external global { i32, i1, i32 }
@comms_10 = external global { i32, i1, i32 }
@comms_11 = external global { i32, i1, i32 }
@comms_12 = external global { i1, i1, i32 }
@comms_13 = external global { i1, i1, i32 }
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

declare void @print_int(i32)

declare i32 @atoi(i8*)

declare i32 @printf(i8*, ...)

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @_p_fib_0(i8*) {
entry:
  %send_alloca27 = alloca i1, !reason !0
  %send_alloca23 = alloca i32, !reason !1
  %send_alloca21 = alloca i32, !reason !2
  %send_alloca18 = alloca i32, !reason !3
  %send_alloca16 = alloca i32, !reason !3
  %send_alloca14 = alloca i32, !reason !3
  %send_alloca = alloca i32, !reason !3
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i8* %0), !reason !4
  %bitcast = bitcast i8* %argument to i32*, !reason !4
  %receive_load = load i32, i32* %bitcast, !reason !4
  %1 = icmp sgt i32 %receive_load, 0, !partition !5, !start !5, !end !6
  store i1 %1, i1* %send_alloca27, !reason !0
  %send_cast28 = bitcast i1* %send_alloca27 to i8*, !reason !0
  call void @send(i8* %send_cast28, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !0
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %4, %l ], [ 0, %entry ]
  store i32 %new_phi, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !3
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !3
  %bitcast3 = bitcast i8* %receive to i32*, !reason !3
  %receive_load4 = load i32, i32* %bitcast3, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %receive5 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !3
  %bitcast6 = bitcast i8* %receive5 to i32*, !reason !3
  %receive_load7 = load i32, i32* %bitcast6, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %2 = add nsw i32 %receive_load4, %receive_load7, !partition !5, !start !5, !end !6
  %receive8 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i8* %0), !reason !3
  %bitcast9 = bitcast i8* %receive8 to i1*, !reason !3
  %receive_load10 = load i1, i1* %bitcast9, !reason !3
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !3
  %receive11 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !3
  %bitcast12 = bitcast i8* %receive11 to i32*, !reason !3
  %receive_load13 = load i32, i32* %bitcast12, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %3 = select i1 %receive_load10, i32 %receive_load13, i32 %2, !partition !5, !start !6, !end !7
  %4 = add nuw nsw i32 %new_phi, 1, !partition !5, !start !7, !end !8
  store i32 %4, i32* %send_alloca14, !reason !3
  %send_cast15 = bitcast i32* %send_alloca14 to i8*, !reason !3
  call void @send(i8* %send_cast15, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !3
  store i32 %3, i32* %send_alloca23, !reason !1
  %send_cast24 = bitcast i32* %send_alloca23 to i8*, !reason !1
  call void @send(i8* %send_cast24, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !1
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !9
  %bitcast29 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load30 = load i1, i1* %bitcast29, !reason !9
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !9
  br i1 %receive_load30, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !partition !5, !start !5, !end !6
  store i32 %5, i32* %send_alloca16, !reason !3
  %send_cast17 = bitcast i32* %send_alloca16 to i8*, !reason !3
  call void @send(i8* %send_cast17, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !3
  store i32 %2, i32* %send_alloca18, !reason !3
  %send_cast19 = bitcast i32* %send_alloca18 to i8*, !reason !3
  call void @send(i8* %send_cast19, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !3
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !9
  %bitcast25 = bitcast i8* %repair_phi to i32*, !reason !9
  %receive_load26 = load i32, i32* %bitcast25, !reason !9
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !9
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi20 = phi i32 [ %receive_load26, %l1 ], [ 0, %entry ]
  store i32 %new_phi20, i32* %send_alloca21, !reason !2
  %send_cast22 = bitcast i32* %send_alloca21 to i8*, !reason !2
  call void @send_return(i8* %send_cast22, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  ret void
}

define void @_p_fib_1(i8*) {
entry:
  %send_alloca27 = alloca i1, !reason !0
  %send_alloca23 = alloca i32, !reason !1
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_7 to i32), i8* %0), !reason !4
  %bitcast13 = bitcast i8* %argument to i32*, !reason !4
  %receive_load14 = load i32, i32* %bitcast13, !reason !4
  %send_alloca8 = alloca i32, !reason !3
  %send_alloca6 = alloca i1, !reason !3
  %send_alloca4 = alloca i32, !reason !3
  %send_alloca = alloca i32, !reason !3
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !9
  %bitcast25 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load26 = load i1, i1* %bitcast25, !reason !9
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !9
  br i1 %receive_load26, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %receive_load22, %l ], [ 1, %entry ]
  %new_phi3 = phi i32 [ %2, %l ], [ 0, %entry ]
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32*, !reason !3
  %receive_load = load i32, i32* %bitcast, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %1 = icmp ult i32 %receive_load, 2, !partition !10, !start !10, !end !7
  store i32 %new_phi, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !3
  store i32 %new_phi3, i32* %send_alloca4, !reason !3
  %send_cast5 = bitcast i32* %send_alloca4 to i8*, !reason !3
  call void @send(i8* %send_cast5, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !3
  %2 = select i1 %1, i32 %new_phi3, i32 %new_phi, !partition !10, !start !5, !end !10
  store i1 %1, i1* %send_alloca6, !reason !3
  %send_cast7 = bitcast i1* %send_alloca6 to i8*, !reason !3
  call void @send(i8* %send_cast7, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i8* %0), !reason !3
  store i32 %new_phi, i32* %send_alloca8, !reason !3
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !3
  call void @send(i8* %send_cast9, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !3
  %receive10 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !3
  %bitcast11 = bitcast i8* %receive10 to i32*, !reason !3
  %receive_load12 = load i32, i32* %bitcast11, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %3 = icmp eq i32 %receive_load12, %receive_load14, !partition !10, !start !7, !end !8
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !9
  %bitcast21 = bitcast i8* %repair_phi to i32*, !reason !9
  %receive_load22 = load i32, i32* %bitcast21, !reason !9
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !9
  store i1 %3, i1* %send_alloca27, !reason !0
  %send_cast28 = bitcast i1* %send_alloca27 to i8*, !reason !0
  call void @send(i8* %send_cast28, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !0
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %receive15 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !3
  %bitcast16 = bitcast i8* %receive15 to i32*, !reason !3
  %receive_load17 = load i32, i32* %bitcast16, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %receive18 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !3
  %bitcast19 = bitcast i8* %receive18 to i32*, !reason !3
  %receive_load20 = load i32, i32* %bitcast19, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %4 = select i1 %1, i32 %receive_load17, i32 %receive_load20, !partition !10, !start !5, !end !10
  store i32 %4, i32* %send_alloca23, !reason !1
  %send_cast24 = bitcast i32* %send_alloca23 to i8*, !reason !1
  call void @send(i8* %send_cast24, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !1
  br label %l2

l2:                                               ; preds = %l1, %entry
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

!0 = !{!"broadcast"}
!1 = !{!"repair_phi"}
!2 = !{!"return"}
!3 = !{!"replace mapped op"}
!4 = !{!"replace argument"}
!5 = !{!"0"}
!6 = !{!"3"}
!7 = !{!"4"}
!8 = !{!"7"}
!9 = !{!"receive"}
!10 = !{!"1"}
