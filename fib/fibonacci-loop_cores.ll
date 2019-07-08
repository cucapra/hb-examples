; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = global [4 x i8] c"%d\0A\00", section ".dram"

declare void @send(i8*, i32, i32, i32, i8*)

declare i8* @receive(i32, i32, i32, i8*)

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @send_return(i8*, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare i32 @printf(i8*, ...)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

define void @fib_0(i8*) {
entry:
  %1 = alloca i32, align 4, !time !3
  %2 = bitcast i32* %1 to i8*, !time !4
  %send_alloca = alloca i32*, !reason !6
  store i32* %1, i32** %send_alloca, !reason !6
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !6
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 0, i8* %0), !reason !6
  %send_alloca2 = alloca i32*, !reason !6
  store i32* %1, i32** %send_alloca2, !reason !6
  %send_cast3 = bitcast i32** %send_alloca2 to i8*, !reason !6
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast3, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !6
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !7
  %bitcast = bitcast i8* %broadcast to i1*, !reason !7
  %receive_load = load i1, i1* %bitcast, !reason !7
  br i1 %receive_load, label %l1, label %l

l:                                                ; preds = %entry
  %3 = load volatile i32, i32* %1, align 4, !tbaa !5, !time !0
  br label %l1

l1:                                               ; preds = %l, %entry
  %new_phi = phi i32 [ %3, %l ], [ 0, %entry ], !time !9
  %send_alloca4 = alloca i32, !reason !3
  store i32 %new_phi, i32* %send_alloca4, !reason !3
  %send_cast5 = bitcast i32* %send_alloca4 to i8*, !reason !3
  call void @send(i8* %send_cast5, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 3, i8* %0), !reason !3
  ret void
}

define void @fib_1(i8*) {
entry:
  %receive = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32**, !reason !3
  %receive_load = load i32*, i32** %bitcast, !reason !3
  store volatile i32 10, i32* %receive_load, align 4, !tbaa !5, !time !11
  %receive2 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 1, i8* %0), !reason !3
  %bitcast3 = bitcast i8* %receive2 to i32**, !reason !3
  %receive_load4 = load i32*, i32** %bitcast3, !reason !3
  %1 = load volatile i32, i32* %receive_load4, align 4, !tbaa !5, !time !12
  %2 = icmp eq i32 %1, 0, !time !13
  %send_alloca = alloca i1, !reason !14
  store i1 %2, i1* %send_alloca, !reason !14
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 2, i8* %0), !reason !14
  br i1 %2, label %l1, label %l

l:                                                ; preds = %entry
  br label %l1

l1:                                               ; preds = %l, %entry
  %send_alloca5 = alloca i32, !reason !15
  %receive7 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 3, i8* %0), !reason !3
  %bitcast8 = bitcast i8* %receive7 to i32*, !reason !3
  %receive_load9 = load i32, i32* %bitcast8, !reason !3
  store i32 %receive_load9, i32* %send_alloca5, !reason !15
  %send_cast6 = bitcast i32* %send_alloca5 to i8*, !reason !15
  call void @send_return(i8* %send_cast6, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !15
  ret void
}

attributes #0 = { argmemonly nounwind }

!0 = !{!"0", !"1"}
!1 = !{!"1", !"8"}
!2 = !{!"8", !"23"}
!3 = !{!"replace mapped op"}
!4 = !{!"receive"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"0", !"0"}
!10 = !{!"0", !"15"}
!11 = !{!"3", !"4"}
!12 = !{!"2", !"3"}
!13 = !{!"15", !"22"}
!14 = !{!"broadcast"}
!15 = !{!"return"}
