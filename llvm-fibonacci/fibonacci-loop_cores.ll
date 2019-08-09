; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = global [4 x i8] c"%d\0A\00"
@funs = global [2 x void (i8*)*] [void (i8*)* @fib_0, void (i8*)* @fib_1]
@arg_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i1, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@comms_7 = external global { i32, i1, i32 }
@comms_8 = external global { i32, i1, i32 }
@arg_9 = external global { i32, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
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

declare i32 @atoi(i8*)

declare i32 @printf(i8*, ...)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @fib_0(i8*) {
entry:
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i8* %0), !reason !0
  %bitcast = bitcast i8* %argument to i32*, !reason !0
  %receive_load = load i32, i32* %bitcast, !reason !0
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !0
  %1 = icmp sgt i32 %receive_load, 0, !partition !1, !start !1, !end !2
  %send_alloca29 = alloca i1, !reason !3
  store i1 %1, i1* %send_alloca29, !reason !3
  %send_cast30 = bitcast i1* %send_alloca29 to i8*, !reason !3
  call void @send(i8* %send_cast30, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !3
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %4, %l ], [ 0, %entry ]
  %send_alloca = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca, !reason !4
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !4
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !4
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !4
  %bitcast3 = bitcast i8* %receive to i32*, !reason !4
  %receive_load4 = load i32, i32* %bitcast3, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %receive5 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !4
  %bitcast6 = bitcast i8* %receive5 to i32*, !reason !4
  %receive_load7 = load i32, i32* %bitcast6, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %2 = add nsw i32 %receive_load4, %receive_load7, !partition !1, !start !5, !end !6
  %receive8 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i8* %0), !reason !4
  %bitcast9 = bitcast i8* %receive8 to i1*, !reason !4
  %receive_load10 = load i1, i1* %bitcast9, !reason !4
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !4
  %receive11 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !4
  %bitcast12 = bitcast i8* %receive11 to i32*, !reason !4
  %receive_load13 = load i32, i32* %bitcast12, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %receive14 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !4
  %bitcast15 = bitcast i8* %receive14 to i32*, !reason !4
  %receive_load16 = load i32, i32* %bitcast15, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %3 = select i1 %receive_load10, i32 %receive_load13, i32 %receive_load16, !partition !1, !start !6, !end !7
  %send_alloca17 = alloca i32, !reason !4
  store i32 %2, i32* %send_alloca17, !reason !4
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !4
  call void @send(i8* %send_cast18, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !4
  %4 = add nuw nsw i32 %new_phi, 1, !partition !1, !start !8, !end !5
  %send_alloca19 = alloca i32, !reason !4
  store i32 %4, i32* %send_alloca19, !reason !4
  %send_cast20 = bitcast i32* %send_alloca19 to i8*, !reason !4
  call void @send(i8* %send_cast20, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !4
  %send_alloca27 = alloca i32, !reason !9
  store i32 %3, i32* %send_alloca27, !reason !9
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !9
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !9
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !10
  %bitcast31 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load32 = load i1, i1* %bitcast31, !reason !10
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !10
  br i1 %receive_load32, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !partition !1, !start !1, !end !1
  %receive21 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !4
  %bitcast22 = bitcast i8* %receive21 to i1*, !reason !4
  %receive_load23 = load i1, i1* %bitcast22, !reason !4
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !4
  %6 = select i1 %receive_load23, i32 %5, i32 %2, !partition !1, !start !1, !end !1
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi24 = phi i32 [ %6, %l1 ], [ 0, %entry ]
  %send_alloca25 = alloca i32, !reason !11
  store i32 %new_phi24, i32* %send_alloca25, !reason !11
  %send_cast26 = bitcast i32* %send_alloca25 to i8*, !reason !11
  call void @send_return(i8* %send_cast26, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !11
  ret void
}

define void @fib_1(i8*) {
entry:
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_9 to i32), i8* %0), !reason !0
  %bitcast18 = bitcast i8* %argument to i32*, !reason !0
  %receive_load19 = load i32, i32* %bitcast18, !reason !0
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @arg_9 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !0
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i8* %0), !reason !10
  %bitcast24 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load25 = load i1, i1* %bitcast24, !reason !10
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !10
  br i1 %receive_load25, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %2, %l ], [ 1, %entry ]
  %new_phi3 = phi i32 [ %receive_load23, %l ], [ 0, %entry ]
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !4
  %bitcast = bitcast i8* %receive to i32*, !reason !4
  %receive_load = load i32, i32* %bitcast, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %1 = icmp ult i32 %receive_load, 2, !partition !8, !start !12, !end !13
  %send_alloca = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca, !reason !4
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !4
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0), !reason !4
  %send_alloca4 = alloca i32, !reason !4
  store i32 %new_phi3, i32* %send_alloca4, !reason !4
  %send_cast5 = bitcast i32* %send_alloca4 to i8*, !reason !4
  call void @send(i8* %send_cast5, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !4
  %send_alloca6 = alloca i1, !reason !4
  store i1 %1, i1* %send_alloca6, !reason !4
  %send_cast7 = bitcast i1* %send_alloca6 to i8*, !reason !4
  call void @send(i8* %send_cast7, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_4 to i32), i8* %0), !reason !4
  %send_alloca8 = alloca i32, !reason !4
  store i32 %new_phi3, i32* %send_alloca8, !reason !4
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !4
  call void @send(i8* %send_cast9, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !4
  %send_alloca10 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca10, !reason !4
  %send_cast11 = bitcast i32* %send_alloca10 to i8*, !reason !4
  call void @send(i8* %send_cast11, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !4
  %receive12 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i8* %0), !reason !4
  %bitcast13 = bitcast i8* %receive12 to i32*, !reason !4
  %receive_load14 = load i32, i32* %bitcast13, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_7 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %2 = select i1 %1, i32 %new_phi, i32 %receive_load14, !partition !8, !start !7, !end !14
  %receive15 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i8* %0), !reason !4
  %bitcast16 = bitcast i8* %receive15 to i32*, !reason !4
  %receive_load17 = load i32, i32* %bitcast16, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %3 = icmp eq i32 %receive_load17, %receive_load19, !partition !8, !start !13, !end !7
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !10
  %bitcast22 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load23 = load i32, i32* %bitcast22, !reason !10
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !10
  %send_alloca26 = alloca i1, !reason !3
  store i1 %3, i1* %send_alloca26, !reason !3
  %send_cast27 = bitcast i1* %send_alloca26 to i8*, !reason !3
  call void @send(i8* %send_cast27, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !3
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %send_alloca20 = alloca i1, !reason !4
  store i1 %1, i1* %send_alloca20, !reason !4
  %send_cast21 = bitcast i1* %send_alloca20 to i8*, !reason !4
  call void @send(i8* %send_cast21, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_10 to i32), i8* %0), !reason !4
  br label %l2

l2:                                               ; preds = %l1, %entry
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

!0 = !{!"replace argument"}
!1 = !{!"0"}
!2 = !{!"3"}
!3 = !{!"broadcast"}
!4 = !{!"replace mapped op"}
!5 = !{!"4"}
!6 = !{!"7"}
!7 = !{!"8"}
!8 = !{!"1"}
!9 = !{!"repair_phi"}
!10 = !{!"receive"}
!11 = !{!"return"}
!12 = !{!"2"}
!13 = !{!"5"}
!14 = !{!"9"}
