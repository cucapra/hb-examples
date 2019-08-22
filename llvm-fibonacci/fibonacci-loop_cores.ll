; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@funs = global [2 x void (i8*)*] [void (i8*)* @_p_fib_0, void (i8*)* @_p_fib_1]
@arg_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i1, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@arg_7 = external global { i32, i1, i32 }
@comms_8 = external global { i1, i1, i32 }
@comms_9 = external global { i32, i1, i32 }
@comms_10 = external global { i32, i1, i32 }
@comms_11 = external global { i32, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i1, i1, i32 }
@comms_14 = external global { i1, i1, i32 }
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
  %send_alloca29 = alloca i1, !reason !0
  %send_alloca22 = alloca i32, !reason !1
  %send_alloca20 = alloca i32, !reason !2
  %send_alloca17 = alloca i32, !reason !3
  %send_alloca15 = alloca i1, !reason !3
  %send_alloca13 = alloca i32, !reason !3
  %send_alloca6 = alloca i32, !reason !3
  %send_alloca4 = alloca i1, !reason !3
  %send_alloca = alloca i32, !reason !3
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i8* %0), !reason !4
  %bitcast = bitcast i8* %argument to i32*, !reason !4
  %receive_load = load i32, i32* %bitcast, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %1 = icmp sgt i32 %receive_load, 0, !partition !5, !start !5, !end !6
  store i1 %1, i1* %send_alloca29, !reason !0
  %send_cast30 = bitcast i1* %send_alloca29 to i8*, !reason !0
  call void @send(i8* %send_cast30, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !0
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %4, %l ], [ 0, %entry ]
  %new_phi3 = phi i32 [ %receive_load25, %l ], [ 0, %entry ]
  %2 = icmp ult i32 %new_phi, 2, !partition !5, !start !5, !end !6
  store i32 %new_phi3, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !3
  store i1 %2, i1* %send_alloca4, !reason !3
  %send_cast5 = bitcast i1* %send_alloca4 to i8*, !reason !3
  call void @send(i8* %send_cast5, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_2 to i32), i8* %0), !reason !3
  store i32 %new_phi3, i32* %send_alloca6, !reason !3
  %send_cast7 = bitcast i32* %send_alloca6 to i8*, !reason !3
  call void @send(i8* %send_cast7, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !3
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !3
  %bitcast8 = bitcast i8* %receive to i32*, !reason !3
  %receive_load9 = load i32, i32* %bitcast8, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %receive10 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !3
  %bitcast11 = bitcast i8* %receive10 to i32*, !reason !3
  %receive_load12 = load i32, i32* %bitcast11, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %3 = select i1 %2, i32 %receive_load9, i32 %receive_load12, !partition !5, !start !6, !end !7
  %4 = add nuw nsw i32 %new_phi, 1, !partition !5, !start !7, !end !8
  store i32 %4, i32* %send_alloca13, !reason !3
  %send_cast14 = bitcast i32* %send_alloca13 to i8*, !reason !3
  call void @send(i8* %send_cast14, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !3
  store i32 %3, i32* %send_alloca22, !reason !1
  %send_cast23 = bitcast i32* %send_alloca22 to i8*, !reason !1
  call void @send(i8* %send_cast23, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !1
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !9
  %bitcast24 = bitcast i8* %repair_phi to i32*, !reason !9
  %receive_load25 = load i32, i32* %bitcast24, !reason !9
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !9
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_14 to i32), i8* %0), !reason !9
  %bitcast31 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load32 = load i1, i1* %bitcast31, !reason !9
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_14 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !9
  br i1 %receive_load32, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !partition !5, !start !5, !end !6
  store i1 %2, i1* %send_alloca15, !reason !3
  %send_cast16 = bitcast i1* %send_alloca15 to i8*, !reason !3
  call void @send(i8* %send_cast16, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !3
  store i32 %5, i32* %send_alloca17, !reason !3
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !3
  call void @send(i8* %send_cast18, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !3
  %repair_phi26 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !9
  %bitcast27 = bitcast i8* %repair_phi26 to i32*, !reason !9
  %receive_load28 = load i32, i32* %bitcast27, !reason !9
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !9
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi19 = phi i32 [ %receive_load28, %l1 ], [ 0, %entry ]
  store i32 %new_phi19, i32* %send_alloca20, !reason !2
  %send_cast21 = bitcast i32* %send_alloca20 to i8*, !reason !2
  call void @send_return(i8* %send_cast21, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !2
  ret void
}

define void @_p_fib_1(i8*) {
entry:
  %send_alloca30 = alloca i1, !reason !0
  %send_alloca26 = alloca i32, !reason !1
  %send_alloca24 = alloca i32, !reason !1
  %argument = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_7 to i32), i8* %0), !reason !4
  %bitcast14 = bitcast i8* %argument to i32*, !reason !4
  %receive_load15 = load i32, i32* %bitcast14, !reason !4
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @arg_7 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !4
  %send_alloca9 = alloca i32, !reason !3
  %send_alloca = alloca i32, !reason !3
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i8* %0), !reason !9
  %bitcast28 = bitcast i8* %broadcast to i1*, !reason !9
  %receive_load29 = load i1, i1* %bitcast28, !reason !9
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_13 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !9
  br i1 %receive_load29, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %receive_load23, %l ], [ 1, %entry ]
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32*, !reason !3
  %receive_load = load i32, i32* %bitcast, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %1 = add nsw i32 %new_phi, %receive_load, !partition !10, !start !10, !end !7
  %receive3 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_2 to i32), i8* %0), !reason !3
  %bitcast4 = bitcast i8* %receive3 to i1*, !reason !3
  %receive_load5 = load i1, i1* %bitcast4, !reason !3
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !3
  %receive6 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i8* %0), !reason !3
  %bitcast7 = bitcast i8* %receive6 to i32*, !reason !3
  %receive_load8 = load i32, i32* %bitcast7, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_3 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %2 = select i1 %receive_load5, i32 %receive_load8, i32 %new_phi, !partition !10, !start !5, !end !10
  store i32 %new_phi, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_4 to i32), i8* %0), !reason !3
  store i32 %1, i32* %send_alloca9, !reason !3
  %send_cast10 = bitcast i32* %send_alloca9 to i8*, !reason !3
  call void @send(i8* %send_cast10, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_5 to i32), i8* %0), !reason !3
  %receive11 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i8* %0), !reason !3
  %bitcast12 = bitcast i8* %receive11 to i32*, !reason !3
  %receive_load13 = load i32, i32* %bitcast12, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_6 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %3 = icmp eq i32 %receive_load13, %receive_load15, !partition !10, !start !7, !end !8
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i8* %0), !reason !9
  %bitcast22 = bitcast i8* %repair_phi to i32*, !reason !9
  %receive_load23 = load i32, i32* %bitcast22, !reason !9
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_10 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !9
  store i32 %2, i32* %send_alloca24, !reason !1
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !1
  call void @send(i8* %send_cast25, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_11 to i32), i8* %0), !reason !1
  store i1 %3, i1* %send_alloca30, !reason !0
  %send_cast31 = bitcast i1* %send_alloca30 to i8*, !reason !0
  call void @send(i8* %send_cast31, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_14 to i32), i8* %0), !reason !0
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %receive16 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i8* %0), !reason !3
  %bitcast17 = bitcast i8* %receive16 to i1*, !reason !3
  %receive_load18 = load i1, i1* %bitcast17, !reason !3
  call void @free_comms(i32 ptrtoint ({ i1, i1, i32 }* @comms_8 to i32), i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i8* %0), !reason !3
  %receive19 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i8* %0), !reason !3
  %bitcast20 = bitcast i8* %receive19 to i32*, !reason !3
  %receive_load21 = load i32, i32* %bitcast20, !reason !3
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_9 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !3
  %4 = select i1 %receive_load18, i32 %receive_load21, i32 %1, !partition !10, !start !5, !end !10
  store i32 %4, i32* %send_alloca26, !reason !1
  %send_cast27 = bitcast i32* %send_alloca26 to i8*, !reason !1
  call void @send(i8* %send_cast27, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_12 to i32), i8* %0), !reason !1
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
