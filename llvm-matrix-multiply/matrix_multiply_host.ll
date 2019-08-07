; ModuleID = '<stdin>'
source_filename = "tests/matrix_multiply.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = local_unnamed_addr global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 8
@b = local_unnamed_addr global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 8
@res = common local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@a.1 = global [2 x i8] c"a\00"
@b.2 = global [2 x i8] c"b\00"
@res.3 = global [4 x i8] c"res\00"
@.str.4 = global [5 x i8] c".str\00"
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { double, i1, i32 }
@comms_3 = external global { double, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i32, i1, i32 }
@comms_7 = external global { i32, i1, i32 }
@comms_8 = external global { i1, i1, i32 }
@comms_9 = external global { i1, i1, i32 }
@comms_10 = external global { i1, i1, i32 }
@return_struct = external global { i1, i1, i32 }

; Function Attrs: norecurse nounwind ssp uwtable
define void @multiply() local_unnamed_addr #0 {
  br label %1

; <label>:1:                                      ; preds = %20, %0
  %2 = phi i32 [ 0, %0 ], [ %21, %20 ], !partition !4, !start !4, !end !4
  br label %3

; <label>:3:                                      ; preds = %17, %1
  %4 = phi i32 [ 0, %1 ], [ %18, %17 ], !partition !4, !start !4, !end !4
  %5 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %2, i32 %4, !partition !4, !start !4, !end !4
  store double 0.000000e+00, double* %5, align 8, !tbaa !5, !partition !4, !start !4, !end !4
  br label %6

; <label>:6:                                      ; preds = %6, %3
  %7 = phi double [ 0.000000e+00, %3 ], [ %14, %6 ], !partition !4, !start !9, !end !9
  %8 = phi i32 [ 0, %3 ], [ %15, %6 ], !partition !10, !start !4, !end !4
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 %2, i32 %8, !partition !10, !start !10, !end !9
  %10 = load double, double* %9, align 8, !tbaa !5, !partition !10, !start !9, !end !11
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 %8, i32 %4, !partition !4, !start !10, !end !9
  %12 = load double, double* %11, align 8, !tbaa !5, !partition !4, !start !9, !end !11
  %13 = fmul double %10, %12, !partition !10, !start !12, !end !13
  %14 = fadd double %7, %13, !partition !4, !start !14, !end !15
  %15 = add nuw nsw i32 %8, 1, !partition !4, !start !11, !end !13
  %16 = icmp eq i32 %15, 3, !partition !10, !start !14, !end !16
  br i1 %16, label %17, label %6

; <label>:17:                                     ; preds = %6
  store double %14, double* %5, align 8, !tbaa !5, !partition !4, !start !17, !end !9
  %18 = add nuw nsw i32 %4, 1, !partition !4, !start !4, !end !17
  %19 = icmp eq i32 %18, 3, !partition !10, !start !9, !end !18
  br i1 %19, label %20, label %3

; <label>:20:                                     ; preds = %17
  %21 = add nuw nsw i32 %2, 1, !partition !4, !start !4, !end !4
  %22 = icmp eq i32 %21, 3, !partition !4, !start !4, !end !4
  br i1 %22, label %23, label %1

; <label>:23:                                     ; preds = %20
  ret void, !partition !4, !start !4, !end !10
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  tail call void @replace_multiply()
  br label %3

; <label>:3:                                      ; preds = %12, %2
  %4 = phi i32 [ 0, %2 ], [ %14, %12 ]
  br label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ 0, %3 ], [ %10, %5 ]
  %7 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 %4, i32 %6
  %8 = load double, double* %7, align 8, !tbaa !5
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double %8)
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5
  %13 = tail call i32 @putchar(i32 10)
  %14 = add nuw nsw i32 %4, 1
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %3

; <label>:16:                                     ; preds = %12
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #3

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

declare void @multiply_0(i8*)

declare void @multiply_1(i8*)

define void @replace_multiply() {
entry:
  %0 = call i8* @init()
  call void @start_device_execution()
  %a = call i32 @address_for_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @a.1, i32 0, i32 0), i8* %0)
  call void @retrieve_global(i8* bitcast ([3 x [3 x double]]* @a to i8*), i32 trunc (i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 9) to i32), i32 %a, i8* %0)
  %b = call i32 @address_for_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @b.2, i32 0, i32 0), i8* %0)
  call void @retrieve_global(i8* bitcast ([3 x [3 x double]]* @b to i8*), i32 trunc (i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 9) to i32), i32 %b, i8* %0)
  %res = call i32 @address_for_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @res.3, i32 0, i32 0), i8* %0)
  call void @retrieve_global(i8* bitcast ([3 x [3 x double]]* @res to i8*), i32 trunc (i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 9) to i32), i32 %res, i8* %0)
  call void @end_device_execution()
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!4 = !{!"0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"4"}
!10 = !{!"1"}
!11 = !{!"5"}
!12 = !{!"6"}
!13 = !{!"8"}
!14 = !{!"9"}
!15 = !{!"11"}
!16 = !{!"12"}
!17 = !{!"3"}
!18 = !{!"7"}
