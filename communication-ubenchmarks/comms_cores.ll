; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@funs = global [2 x void (i8*)*] [void (i8*)* @_p_comms_0, void (i8*)* @_p_comms_1]

@arg_0 = external global { i32, i1, i32 }
@arg_1 = external global { i32, i1, i32 }
@arg_2 = external global { i32, i1, i32 }

@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }

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

define void @_p_comms_0(i8*) {
entry:
  %send_alloca = alloca i32
  %send_cast = bitcast i32* %send_alloca to i8*

  ; receive number of times to loop
  %arg_loop = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_0 to i32), i8* %0)
  %bitcast_loop = bitcast i8* %arg_loop to i32*
  %loop = load i32, i32* %bitcast_loop

  ; receive the destination ID
  %arg_dest = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_2 to i32), i8* %0)
  %bitcast_dest = bitcast i8* %arg_dest to i32*
  %dest = load i32, i32* %bitcast_dest

  br label %l


; loop %loop times
l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %add, %l ]

  ; send a value to the destination tile
  store i32 1, i32* %send_alloca
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 %dest, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0)

  ; receive a value from the destination tile
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 %dest, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0)
  %bitcast1 = bitcast i8* %receive to i32*
  %receive_load1 = load i32, i32* %bitcast1
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0)

  ; print for debugging
  ; call void @print_int(i32 %loop)

  ; loop mechanism
  %add = add nuw nsw i32 %new_phi, 1
  %br = icmp eq i32 %add, %loop
  br i1 %br, label %l1, label %l

l1:                                               ; preds = %l
  ret void
}

define void @_p_comms_1(i8*) {
entry:
  %send_alloca = alloca i32
  %send_cast = bitcast i32* %send_alloca to i8*

  ; receive number of times to loop
  %arg_loop = call i8* @receive_argument(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 ptrtoint ({ i32, i1, i32 }* @arg_1 to i32), i8* %0)
  %bitcast_loop = bitcast i8* %arg_loop to i32*
  %loop = load i32, i32* %bitcast_loop

  br label %l

; loop %loop times
l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %add, %l ]

  ; receive a value from tile 0
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i8* %0)
  %bitcast1 = bitcast i8* %receive to i32*
  %receive_load1 = load i32, i32* %bitcast1
  call void @free_comms(i32 ptrtoint ({ i32, i1, i32 }* @comms_1 to i32), i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0)

  ; print for debugging
  ; call void @print_int(i32 %receive_load1)

  ; send a value to tile 0
  store i32 2, i32* %send_alloca
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 ptrtoint ({ i32, i1, i32 }* @comms_2 to i32), i8* %0)

  ; loop mechanism
  %add = add nuw nsw i32 %new_phi, 1
  %br = icmp eq i32 %add, %loop
  br i1 %br, label %l1, label %l

l1:                                               ; preds = %l
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
