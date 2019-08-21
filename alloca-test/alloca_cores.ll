; ModuleID = 'cores_module'
source_filename = "cores_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@alloca = global i32 0, section ".dram", align 16
@funs = global [1 x void (i8*)*] [void (i8*)* @_p_bar_0]
@return_struct = external global { i1, i1, i32 }

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @free_comms(i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_token(i32, i32, i8*)

declare i8* @receive_token(i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @print_int(i8*)

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #0

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #0

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

define void @_p_bar_0(i8*) {
entry:
  br label %l

l:                                                ; preds = %l, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %add, %l ]

  %send_alloca = alloca i32
  store i32 1, i32* %send_alloca
  %send_cast = bitcast i32* %send_alloca to i8*
  call void @print_int(i8* %send_cast)

  ; loop mechanism
  %add = add nuw nsw i64 %new_phi, 1, !partition !0, !start !5, !end !6
  %br = icmp eq i64 %add, 5000, !partition !0, !start !4, !end !5
  br i1 %br, label %l1, label %l

l1:                                               ; preds = %l
  ret void
}

define void @device_execute() {
entry:
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 1, void (i8*)** getelementptr inbounds ([1 x void (i8*)*], [1 x void (i8*)*]* @funs, i32 0, i32 0), i8* null)
  ret void
}

attributes #0 = { nounwind }

!0 = !{!"0"}
!1 = !{!"3"}
!2 = !{!"13"}
!3 = !{!"16"}
!4 = !{!"6"}
!5 = !{!"9"}
!6 = !{!"12"}
