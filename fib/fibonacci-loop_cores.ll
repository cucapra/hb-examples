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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

declare i32 @printf(i8*, ...)

declare i8* @init()

declare void @join_partitioned_functions(i32, i8*)

define void @fib_0(i8*) {
entry:
  %1 = alloca i32, align 4, !time !0
  %2 = bitcast i32* %1 to i8*, !time !1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !time !2
  %send_alloca = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca, !reason !3
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 1, i32 0, i8* %0), !reason !3
  %send_alloca5 = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca5, !reason !3
  %send_cast6 = bitcast i32** %send_alloca5 to i8*, !reason !3
  call void @send(i8* %send_cast6, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2, i32 1, i8* %0), !reason !3
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 3, i32 3, i8* %0), !reason !4
  %bitcast = bitcast i8* %broadcast to i1*, !reason !4
  %receive_load = load i1, i1* %bitcast, !reason !4
  br i1 %receive_load, label %l1, label %l

l:                                                ; preds = %l4, %entry
  %send_alloca23 = alloca i8*, !reason !3
  store i8* %2, i8** %send_alloca23, !reason !3
  %send_cast24 = bitcast i8** %send_alloca23 to i8*, !reason !3
  call void @send(i8* %send_cast24, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2, i32 18, i8* %0), !reason !3
  ret void

l1:                                               ; preds = %l4, %entry
  %new_phi = phi i32 [ %receive_load26, %l4 ], [ 0, %entry ], !time !5
  %send_alloca7 = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca7, !reason !3
  %send_cast8 = bitcast i32** %send_alloca7 to i8*, !reason !3
  call void @send(i8* %send_cast8, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 1, i32 6, i8* %0), !reason !3
  %broadcast9 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 7, i8* %0), !reason !4
  %bitcast10 = bitcast i8* %broadcast9 to i1*, !reason !4
  %receive_load11 = load i1, i1* %bitcast10, !reason !4
  br i1 %receive_load11, label %l2, label %l3

l2:                                               ; preds = %l1
  %3 = load volatile i32, i32* %1, align 4, !tbaa !6, !time !0
  %send_alloca27 = alloca i32, !reason !10
  store i32 %3, i32* %send_alloca27, !reason !10
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !10
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2, i32 22, i8* %0), !reason !10
  %send_alloca31 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca31, !reason !10
  %send_cast32 = bitcast i32* %send_alloca31 to i8*, !reason !10
  call void @send(i8* %send_cast32, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 24, i8* %0), !reason !10
  br label %l4

l3:                                               ; preds = %l1
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 10, i8* %0), !reason !3
  %bitcast12 = bitcast i8* %receive to i32*, !reason !3
  %receive_load13 = load i32, i32* %bitcast12, !reason !3
  %4 = add nsw i32 %receive_load13, %new_phi, !time !11
  %send_alloca29 = alloca i32, !reason !10
  store i32 %4, i32* %send_alloca29, !reason !10
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !10
  call void @send(i8* %send_cast30, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2, i32 23, i8* %0), !reason !10
  %send_alloca33 = alloca i32, !reason !10
  store i32 %4, i32* %send_alloca33, !reason !10
  %send_cast34 = bitcast i32* %send_alloca33 to i8*, !reason !10
  call void @send(i8* %send_cast34, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 27, i8* %0), !reason !10
  br label %l4

l4:                                               ; preds = %l2, %l3
  %send_alloca14 = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca14, !reason !3
  %send_cast15 = bitcast i32** %send_alloca14 to i8*, !reason !3
  call void @send(i8* %send_cast15, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2, i32 11, i8* %0), !reason !3
  %send_alloca16 = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca16, !reason !3
  %send_cast17 = bitcast i32** %send_alloca16 to i8*, !reason !3
  call void @send(i8* %send_cast17, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2, i32 12, i8* %0), !reason !3
  %send_alloca18 = alloca i32*, !reason !3
  store i32* %1, i32** %send_alloca18, !reason !3
  %send_cast19 = bitcast i32** %send_alloca18 to i8*, !reason !3
  call void @send(i8* %send_cast19, i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 3, i32 13, i8* %0), !reason !3
  %broadcast20 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 15, i8* %0), !reason !4
  %bitcast21 = bitcast i8* %broadcast20 to i1*, !reason !4
  %receive_load22 = load i1, i1* %bitcast21, !reason !4
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 21, i8* %0), !reason !4
  %bitcast25 = bitcast i8* %repair_phi to i32*, !reason !4
  %receive_load26 = load i32, i32* %bitcast25, !reason !4
  br i1 %receive_load22, label %l1, label %l
}

define void @fib_1(i8*) {
entry:
  %receive = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32**, !reason !3
  %receive_load = load i32*, i32** %bitcast, !reason !3
  store volatile i32 0, i32* %receive_load, align 4, !tbaa !6, !time !12
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 3, i32 4, i8* %0), !reason !4
  %bitcast5 = bitcast i8* %broadcast to i1*, !reason !4
  %receive_load6 = load i1, i1* %bitcast5, !reason !4
  br i1 %receive_load6, label %l1, label %l

l:                                                ; preds = %l4, %entry
  %new_phi16 = phi i32 [ 0, %entry ], [ %receive_load36, %l4 ], !time !13
  %send_alloca17 = alloca i32, !reason !3
  store i32 %new_phi16, i32* %send_alloca17, !reason !3
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !3
  call void @send(i8* %send_cast18, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 19, i8* %0), !reason !3
  ret void

l1:                                               ; preds = %l4, %entry
  %receive7 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 6, i8* %0), !reason !3
  %bitcast8 = bitcast i8* %receive7 to i32**, !reason !3
  %receive_load9 = load i32*, i32** %bitcast8, !reason !3
  %1 = load volatile i32, i32* %receive_load9, align 4, !tbaa !6, !time !0
  %2 = icmp slt i32 %1, 2, !time !1
  %send_alloca = alloca i1, !reason !14
  store i1 %2, i1* %send_alloca, !reason !14
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 7, i8* %0), !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 2, i32 8, i8* %0), !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 3, i32 9, i8* %0), !reason !14
  br i1 %2, label %l2, label %l3

l2:                                               ; preds = %l1
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 24, i8* %0), !reason !4
  %bitcast23 = bitcast i8* %repair_phi to i32*, !reason !4
  %receive_load24 = load i32, i32* %bitcast23, !reason !4
  %repair_phi28 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 26, i8* %0), !reason !4
  %bitcast29 = bitcast i8* %repair_phi28 to i32*, !reason !4
  %receive_load30 = load i32, i32* %bitcast29, !reason !4
  br label %l4

l3:                                               ; preds = %l1
  %repair_phi25 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 25, i8* %0), !reason !4
  %bitcast26 = bitcast i8* %repair_phi25 to i32*, !reason !4
  %receive_load27 = load i32, i32* %bitcast26, !reason !4
  %repair_phi31 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 27, i8* %0), !reason !4
  %bitcast32 = bitcast i8* %repair_phi31 to i32*, !reason !4
  %receive_load33 = load i32, i32* %bitcast32, !reason !4
  br label %l4

l4:                                               ; preds = %l2, %l3
  %new_phi = phi i32 [ %receive_load24, %l2 ], [ %receive_load27, %l3 ], !time !15
  %new_phi10 = phi i32 [ %receive_load30, %l2 ], [ %receive_load33, %l3 ], !time !16
  %receive11 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 14, i8* %0), !reason !3
  %bitcast12 = bitcast i8* %receive11 to i32*, !reason !3
  %receive_load13 = load i32, i32* %bitcast12, !reason !3
  %3 = icmp slt i32 %receive_load13, 10, !time !17
  %send_alloca14 = alloca i1, !reason !14
  store i1 %3, i1* %send_alloca14, !reason !14
  %send_cast15 = bitcast i1* %send_alloca14 to i8*, !reason !14
  call void @send(i8* %send_cast15, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 15, i8* %0), !reason !14
  call void @send(i8* %send_cast15, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 2, i32 16, i8* %0), !reason !14
  call void @send(i8* %send_cast15, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 3, i32 17, i8* %0), !reason !14
  %send_alloca19 = alloca i32, !reason !10
  store i32 %new_phi10, i32* %send_alloca19, !reason !10
  %send_cast20 = bitcast i32* %send_alloca19 to i8*, !reason !10
  call void @send(i8* %send_cast20, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 20, i8* %0), !reason !10
  %send_alloca21 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca21, !reason !10
  %send_cast22 = bitcast i32* %send_alloca21 to i8*, !reason !10
  call void @send(i8* %send_cast22, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 21, i8* %0), !reason !10
  %repair_phi34 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2, i32 28, i8* %0), !reason !4
  %bitcast35 = bitcast i8* %repair_phi34 to i32*, !reason !4
  %receive_load36 = load i32, i32* %bitcast35, !reason !4
  br i1 %3, label %l1, label %l
}

define void @fib_2(i8*) {
entry:
  %receive = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 1, i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32**, !reason !3
  %receive_load = load i32*, i32** %bitcast, !reason !3
  %1 = load volatile i32, i32* %receive_load, align 4, !tbaa !6, !time !18
  %send_alloca = alloca i32, !reason !3
  store i32 %1, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void @send(i8* %send_cast, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 3, i32 2, i8* %0), !reason !3
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 3, i32 5, i8* %0), !reason !4
  %bitcast5 = bitcast i8* %broadcast to i1*, !reason !4
  %receive_load6 = load i1, i1* %bitcast5, !reason !4
  br i1 %receive_load6, label %l1, label %l

l:                                                ; preds = %l4, %entry
  %receive19 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 18, i8* %0), !reason !3
  %bitcast20 = bitcast i8* %receive19 to i8**, !reason !3
  %receive_load21 = load i8*, i8** %bitcast20, !reason !3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %receive_load21), !time !19
  ret void

l1:                                               ; preds = %l4, %entry
  %broadcast7 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 8, i8* %0), !reason !4
  %bitcast8 = bitcast i8* %broadcast7 to i1*, !reason !4
  %receive_load9 = load i1, i1* %bitcast8, !reason !4
  br i1 %receive_load9, label %l2, label %l3

l2:                                               ; preds = %l1
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 22, i8* %0), !reason !4
  %bitcast22 = bitcast i8* %repair_phi to i32*, !reason !4
  %receive_load23 = load i32, i32* %bitcast22, !reason !4
  br label %l4

l3:                                               ; preds = %l1
  %repair_phi24 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 23, i8* %0), !reason !4
  %bitcast25 = bitcast i8* %repair_phi24 to i32*, !reason !4
  %receive_load26 = load i32, i32* %bitcast25, !reason !4
  br label %l4

l4:                                               ; preds = %l2, %l3
  %new_phi = phi i32 [ %receive_load23, %l2 ], [ %receive_load26, %l3 ], !time !20
  %receive10 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 11, i8* %0), !reason !3
  %bitcast11 = bitcast i8* %receive10 to i32**, !reason !3
  %receive_load12 = load i32*, i32** %bitcast11, !reason !3
  %2 = load volatile i32, i32* %receive_load12, align 4, !tbaa !6, !time !0
  %3 = add nsw i32 %2, 1, !time !1
  %receive13 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 12, i8* %0), !reason !3
  %bitcast14 = bitcast i8* %receive13 to i32**, !reason !3
  %receive_load15 = load i32*, i32** %bitcast14, !reason !3
  store volatile i32 %3, i32* %receive_load15, align 4, !tbaa !6, !time !21
  %broadcast16 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 16, i8* %0), !reason !4
  %bitcast17 = bitcast i8* %broadcast16 to i1*, !reason !4
  %receive_load18 = load i1, i1* %bitcast17, !reason !4
  %send_alloca27 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca27, !reason !10
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !10
  call void @send(i8* %send_cast28, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 28, i8* %0), !reason !10
  br i1 %receive_load18, label %l1, label %l
}

define void @fib_3(i8*) {
entry:
  %receive = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 2, i32 2, i8* %0), !reason !3
  %bitcast = bitcast i8* %receive to i32*, !reason !3
  %receive_load = load i32, i32* %bitcast, !reason !3
  %1 = icmp slt i32 %receive_load, 10, !time !22
  %send_alloca = alloca i1, !reason !14
  store i1 %1, i1* %send_alloca, !reason !14
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 0, i32 3, i8* %0), !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 4, i8* %0), !reason !14
  call void @send(i8* %send_cast, i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 2, i32 5, i8* %0), !reason !14
  br i1 %1, label %l1, label %l

l:                                                ; preds = %l4, %entry
  %send_alloca17 = alloca i32, !reason !23
  %receive19 = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 19, i8* %0), !reason !3
  %bitcast20 = bitcast i8* %receive19 to i32*, !reason !3
  %receive_load21 = load i32, i32* %bitcast20, !reason !3
  store i32 %receive_load21, i32* %send_alloca17, !reason !23
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !23
  call void @send_return(i8* %send_cast18, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i8* %0), !reason !23
  ret void

l1:                                               ; preds = %l4, %entry
  %new_phi = phi i32 [ %receive_load23, %l4 ], [ 1, %entry ], !time !24
  %broadcast = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 9, i8* %0), !reason !4
  %bitcast5 = bitcast i8* %broadcast to i1*, !reason !4
  %receive_load6 = load i1, i1* %bitcast5, !reason !4
  br i1 %receive_load6, label %l2, label %l3

l2:                                               ; preds = %l1
  %send_alloca26 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca26, !reason !10
  %send_cast27 = bitcast i32* %send_alloca26 to i8*, !reason !10
  call void @send(i8* %send_cast27, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 26, i8* %0), !reason !10
  br label %l4

l3:                                               ; preds = %l1
  %send_alloca7 = alloca i32, !reason !3
  store i32 %new_phi, i32* %send_alloca7, !reason !3
  %send_cast8 = bitcast i32* %send_alloca7 to i8*, !reason !3
  call void @send(i8* %send_cast8, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 0, i32 10, i8* %0), !reason !3
  %send_alloca24 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca24, !reason !10
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !10
  call void @send(i8* %send_cast25, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 25, i8* %0), !reason !10
  br label %l4

l4:                                               ; preds = %l2, %l3
  %receive9 = call i8* @receive(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 0, i32 13, i8* %0), !reason !3
  %bitcast10 = bitcast i8* %receive9 to i32**, !reason !3
  %receive_load11 = load i32*, i32** %bitcast10, !reason !3
  %2 = load volatile i32, i32* %receive_load11, align 4, !tbaa !6, !time !0
  %send_alloca12 = alloca i32, !reason !3
  store i32 %2, i32* %send_alloca12, !reason !3
  %send_cast13 = bitcast i32* %send_alloca12 to i8*, !reason !3
  call void @send(i8* %send_cast13, i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 14, i8* %0), !reason !3
  %broadcast14 = call i8* @receive(i32 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i32), i32 1, i32 17, i8* %0), !reason !4
  %bitcast15 = bitcast i8* %broadcast14 to i1*, !reason !4
  %receive_load16 = load i1, i1* %bitcast15, !reason !4
  %repair_phi = call i8* @receive(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32), i32 1, i32 20, i8* %0), !reason !4
  %bitcast22 = bitcast i8* %repair_phi to i32*, !reason !4
  %receive_load23 = load i32, i32* %bitcast22, !reason !4
  br i1 %receive_load16, label %l1, label %l
}

attributes #0 = { argmemonly nounwind }

!0 = !{!"0", !"1"}
!1 = !{!"1", !"8"}
!2 = !{!"8", !"23"}
!3 = !{!"replace mapped op"}
!4 = !{!"receive"}
!5 = !{!"4", !"4"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"repair_phi"}
!11 = !{!"0", !"7"}
!12 = !{!"2", !"3"}
!13 = !{!"2", !"2"}
!14 = !{!"broadcast"}
!15 = !{!"0", !"0"}
!16 = !{!"9", !"9"}
!17 = !{!"2", !"9"}
!18 = !{!"13", !"14"}
!19 = !{!"0", !"15"}
!20 = !{!"1", !"1"}
!21 = !{!"8", !"9"}
!22 = !{!"15", !"22"}
!23 = !{!"return"}
!24 = !{!"3", !"3"}
