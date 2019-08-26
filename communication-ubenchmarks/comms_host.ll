; ModuleID = '<stdin>'
source_filename = "tests/fibonacci-loop.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@arg_0 = global [6 x i8] c"arg_0\00"
@arg_1 = global [6 x i8] c"arg_1\00"
@arg_2 = global [6 x i8] c"arg_2\00"
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }

@return_struct = external global { i32, i1, i32 }

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

declare void @_p_comms_0(i8*)

declare void @_p_comms_1(i8*)


define i32 @replace__p_comms(i32, i32) {
  ; args are the number of reps, destination tile ID
  
entry:
  %send_alloca = alloca i32
  %send_alloca1 = alloca i32

  %send_cast = bitcast i32* %send_alloca to i8*
  %send_cast1 = bitcast i32* %send_alloca1 to i8*

  %i = call i8* @init()

  ; Send the number of reps to the first tile
  store i32 %0, i32* %send_alloca
  %arg_0 = call i32 @address_for_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @arg_0, i32 0, i32 0), i8* %i)
  call void @send_argument(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 %arg_0, i8* %i)

  ; Send the number of reps to the destination tile
  %arg_1 = call i32 @address_for_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @arg_1, i32 0, i32 0), i8* %i)
  call void @send_argument(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 %1, i32 %arg_1, i8* %i)

  ; Send the destination ID to the first tile
  %arg_2 = call i32 @address_for_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @arg_2, i32 0, i32 0), i8* %i)
  store i32 %1, i32* %send_alloca1
  call void @send_argument(i8* %send_cast1, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 %arg_2, i8* %i)

  call void @start_device_execution()
  call void @end_device_execution()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !7
  %5 = tail call i32 @atoi(i8* %4)

  %6 = getelementptr inbounds i8*, i8** %1, i64 2
  %7 = load i8*, i8** %6, align 8, !tbaa !7
  %8 = tail call i32 @atoi(i8* %7)

  %9 = tail call i32 @replace__p_comms(i32 %5, i32 %8)
  ret i32 0
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
!4 = !{!"7"}
!5 = !{!"1"}
!6 = !{!"4"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"replace argument"}
!12 = !{!"return"}
