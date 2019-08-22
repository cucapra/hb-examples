; ModuleID = '<stdin>'
source_filename = "tests/fibonacci-loop.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@arg_0 = global [6 x i8] c"arg_0\00"
@arg_7 = global [6 x i8] c"arg_7\00"
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i1, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@comms_8 = external global { i1, i1, i32 }
@comms_9 = external global { i32, i1, i32 }
@comms_10 = external global { i32, i1, i32 }
@comms_11 = external global { i32, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i1, i1, i32 }
@comms_14 = external global { i1, i1, i32 }
@return_struct = external global { i32, i1, i32 }

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @_p_fib(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0, !partition !2, !start !2, !end !3
  br i1 %2, label %3, label %16

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %11, %3 ], [ 0, %1 ], !partition !2, !start !4, !end !4
  %5 = phi i32 [ %10, %3 ], [ 1, %1 ], !partition !5, !start !4, !end !4
  %6 = phi i32 [ %9, %3 ], [ 0, %1 ], !partition !2, !start !4, !end !4
  %7 = icmp ult i32 %4, 2, !partition !2, !start !2, !end !3
  %8 = add nsw i32 %5, %6, !partition !5, !start !5, !end !4
  %9 = select i1 %7, i32 %6, i32 %5, !partition !5, !start !2, !end !5
  %10 = select i1 %7, i32 %5, i32 %8, !partition !2, !start !3, !end !4
  %11 = add nuw nsw i32 %4, 1, !partition !2, !start !4, !end !6
  %12 = icmp eq i32 %11, %0, !partition !5, !start !4, !end !6
  br i1 %12, label %13, label %3

; <label>:13:                                     ; preds = %3
  %14 = add i32 %0, -1, !partition !2, !start !2, !end !3
  %15 = select i1 %7, i32 %14, i32 %8, !partition !5, !start !2, !end !5
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ], !partition !2, !start !2, !end !2
  ret i32 %17, !partition !2, !start !2, !end !2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !7
  %5 = tail call i32 @atoi(i8* %4)
  %6 = tail call i32 @replace__p_fib(i32 %5)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

declare void @send_argument(i8*, i32, i32, i32, i8*)

declare i8* @receive_argument(i32, i32, i8*)

declare void @retrieve_global(i8*, i32, i32, i8*)

declare i8* @receive_return(i32, i8*)

declare i8* @init()

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @join_partitioned_functions(i32, i8*)

declare i32 @address_for_symbol(i8*, i8*)

declare void @start_device_execution()

declare void @end_device_execution()

declare void @_p_fib_0(i8*)

declare void @_p_fib_1(i8*)

define i32 @replace__p_fib(i32) {
entry:
  %send_alloca1 = alloca i32, !reason !11
  %send_alloca = alloca i32, !reason !11
  %1 = call i8* @init()
  %arg_0 = call i32 @address_for_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @arg_0, i32 0, i32 0), i8* %1)
  store i32 %0, i32* %send_alloca, !reason !11
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !11
  call void @send_argument(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 %arg_0, i8* %1), !reason !11
  %arg_7 = call i32 @address_for_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @arg_7, i32 0, i32 0), i8* %1)
  store i32 %0, i32* %send_alloca1, !reason !11
  %send_cast2 = bitcast i32* %send_alloca1 to i8*, !reason !11
  call void @send_argument(i8* %send_cast2, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 %arg_7, i8* %1), !reason !11
  call void @start_device_execution()
  %return = call i8* @receive_return(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %1), !reason !12
  %bitcast = bitcast i8* %return to i32*, !reason !12
  %receive_load = load i32, i32* %bitcast, !reason !12
  call void @end_device_execution()
  ret i32 %receive_load
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!2 = !{!"0"}
!3 = !{!"3"}
!4 = !{!"4"}
!5 = !{!"1"}
!6 = !{!"7"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"replace argument"}
!12 = !{!"return"}
