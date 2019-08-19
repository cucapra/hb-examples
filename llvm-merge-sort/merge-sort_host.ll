; ModuleID = '<stdin>'
source_filename = "tests/merge-sort.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = dso_local local_unnamed_addr global [4 x i32] [i32 4, i32 3, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a.1 = global [2 x i8] c"a\00"
@comms_0 = external global { i32, i1, i32 }
@comms_1 = external global { i32, i1, i32 }
@comms_2 = external global { i32, i1, i32 }
@comms_3 = external global { i32, i1, i32 }
@comms_4 = external global { i32, i1, i32 }
@comms_5 = external global { i32, i1, i32 }
@comms_6 = external global { i64, i1, i32 }
@comms_7 = external global { i64, i1, i32 }
@comms_8 = external global { i64, i1, i32 }
@comms_9 = external global { i64, i1, i32 }
@comms_10 = external global { i64, i1, i32 }
@comms_11 = external global { i64, i1, i32 }
@comms_12 = external global { i32, i1, i32 }
@comms_13 = external global { i32, i1, i32 }
@comms_14 = external global { i32, i1, i32 }
@comms_15 = external global { i32, i1, i32 }
@comms_16 = external global { i1, i1, i32 }
@comms_17 = external global { i32, i1, i32 }
@comms_18 = external global { i64, i1, i32 }
@comms_19 = external global { i32, i1, i32 }
@comms_20 = external global { i32, i1, i32 }
@comms_21 = external global { i32, i1, i32 }
@comms_22 = external global { i32, i1, i32 }
@comms_23 = external global { i64, i1, i32 }
@comms_24 = external global { i32, i1, i32 }
@comms_25 = external global { i64, i1, i32 }
@comms_26 = external global { i64, i1, i32 }
@comms_27 = external global { i64, i1, i32 }
@comms_28 = external global { i32, i1, i32 }
@comms_29 = external global { i32, i1, i32 }
@comms_30 = external global { i32, i1, i32 }
@comms_31 = external global { i32, i1, i32 }
@comms_32 = external global { i1, i1, i32 }
@comms_33 = external global { i64, i1, i32 }
@comms_34 = external global { i32, i1, i32 }
@comms_35 = external global { i32, i1, i32 }
@comms_36 = external global { i64, i1, i32 }
@comms_37 = external global { i32, i1, i32 }
@comms_38 = external global { i32, i1, i32 }
@comms_39 = external global { i64, i1, i32 }
@comms_40 = external global { i64, i1, i32 }
@comms_41 = external global { i32, i1, i32 }
@comms_42 = external global { i64, i1, i32 }
@comms_43 = external global { i64, i1, i32 }
@comms_44 = external global { i64, i1, i32 }
@comms_45 = external global { i64, i1, i32 }
@comms_46 = external global { i64, i1, i32 }
@comms_47 = external global { i32, i1, i32 }
@comms_48 = external global { i32, i1, i32 }
@comms_49 = external global { i64, i1, i32 }
@comms_50 = external global { i32, i1, i32 }
@comms_51 = external global { i64, i1, i32 }
@comms_52 = external global { i32, i1, i32 }
@comms_53 = external global { i32, i1, i32 }
@comms_54 = external global { i32, i1, i32 }
@comms_55 = external global { i64, i1, i32 }
@comms_56 = external global { i64, i1, i32 }
@comms_57 = external global { i64, i1, i32 }
@comms_58 = external global { i32, i1, i32 }
@comms_59 = external global { i64, i1, i32 }
@comms_60 = external global { i32, i1, i32 }
@comms_61 = external global { i32, i1, i32 }
@comms_62 = external global { i64, i1, i32 }
@comms_63 = external global { i64, i1, i32 }
@comms_64 = external global { i64, i1, i32 }
@comms_65 = external global { i64, i1, i32 }
@comms_66 = external global { i32, i1, i32 }
@comms_67 = external global { i64, i1, i32 }
@comms_68 = external global { i32, i1, i32 }
@comms_69 = external global { i64, i1, i32 }
@comms_70 = external global { i32, i1, i32 }
@comms_71 = external global { i32, i1, i32 }
@comms_72 = external global { i32, i1, i32 }
@comms_73 = external global { i32, i1, i32 }
@comms_74 = external global { i64, i1, i32 }
@comms_75 = external global { i64, i1, i32 }
@comms_76 = external global { i64, i1, i32 }
@comms_77 = external global { i64, i1, i32 }
@comms_78 = external global { i32, i1, i32 }
@comms_79 = external global { i64, i1, i32 }
@comms_80 = external global { i64, i1, i32 }
@comms_81 = external global { i32, i1, i32 }
@comms_82 = external global { i64, i1, i32 }
@comms_83 = external global { i64, i1, i32 }
@comms_84 = external global { i32, i1, i32 }
@comms_85 = external global { i64, i1, i32 }
@comms_86 = external global { i64, i1, i32 }
@comms_87 = external global { i64, i1, i32 }
@comms_88 = external global { i64, i1, i32 }
@comms_89 = external global { i64, i1, i32 }
@comms_90 = external global { i64, i1, i32 }
@comms_91 = external global { i32, i1, i32 }
@comms_92 = external global { i64, i1, i32 }
@comms_93 = external global { i64, i1, i32 }
@comms_94 = external global { i32, i1, i32 }
@comms_95 = external global { i32, i1, i32 }
@comms_96 = external global { i32, i1, i32 }
@comms_97 = external global { i1, i1, i32 }
@comms_98 = external global { i1, i1, i32 }
@comms_99 = external global { i1, i1, i32 }
@comms_100 = external global { i1, i1, i32 }
@comms_101 = external global { i1, i1, i32 }
@comms_102 = external global { i1, i1, i32 }
@comms_103 = external global { i1, i1, i32 }
@comms_104 = external global { i1, i1, i32 }
@comms_105 = external global { i1, i1, i32 }
@comms_106 = external global { i1, i1, i32 }
@comms_107 = external global { i1, i1, i32 }
@comms_108 = external global { i1, i1, i32 }
@comms_109 = external global { i1, i1, i32 }
@return_struct = external global { i1, i1, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @_p_mergesort() local_unnamed_addr #0 {
  %1 = alloca [4 x i32], align 16, !partition !2, !start !2, !end !3
  %2 = alloca [4 x i32], align 16, !partition !2, !start !4, !end !5
  %3 = bitcast [4 x i32]* %2 to i8*, !partition !2, !start !5, !end !6
  %4 = bitcast [4 x i32]* %1 to i8*, !partition !2, !start !3, !end !4
  br label %5

; <label>:5:                                      ; preds = %0, %156
  %6 = phi i32 [ 1, %0 ], [ %157, %156 ], !partition !2, !start !7, !end !7
  %7 = shl i32 %6, 1, !partition !3, !start !8, !end !9
  %8 = sext i32 %7 to i64, !partition !2, !start !6, !end !10
  %9 = zext i32 %7 to i64, !partition !2, !start !2, !end !8
  %10 = mul i32 %6, -2, !partition !3, !start !11, !end !7
  %11 = zext i32 %7 to i64, !partition !3, !start !2, !end !8
  %12 = sext i32 %6 to i64, !partition !2, !start !10, !end !12
  %13 = sext i32 %6 to i64, !partition !2, !start !8, !end !9
  %14 = icmp sgt i32 %6, 0, !partition !3, !start !9, !end !13
  %15 = icmp sgt i32 %6, 0, !partition !3, !start !13, !end !11
  br label %16

; <label>:16:                                     ; preds = %5, %149
  %17 = phi i64 [ %8, %5 ], [ %155, %149 ], !partition !2, !start !14, !end !14
  %18 = phi i32 [ %6, %5 ], [ %154, %149 ], !partition !2, !start !11, !end !11
  %19 = phi i64 [ 0, %5 ], [ %153, %149 ], !partition !2, !start !15, !end !15
  %20 = phi i64 [ 0, %5 ], [ %150, %149 ], !partition !2, !start !16, !end !16
  %21 = phi i32 [ 0, %5 ], [ %151, %149 ], !partition !2, !start !17, !end !17
  %22 = sext i32 %18 to i64, !partition !2, !start !11, !end !7
  %23 = mul i64 %19, %8, !partition !3, !start !18, !end !19
  %24 = getelementptr [4 x i32], [4 x i32]* %1, i64 0, i64 %23, !partition !2, !start !8, !end !9
  %25 = bitcast i32* %24 to i8*, !partition !2, !start !20, !end !21
  %26 = getelementptr [4 x i32], [4 x i32]* @a, i64 0, i64 %23, !partition !2, !start !2, !end !8
  %27 = bitcast i32* %26 to i8*, !partition !2, !start !22, !end !23
  %28 = mul i64 %19, %11, !partition !3, !start !24, !end !25
  %29 = trunc i64 %28 to i32, !partition !2, !start !26, !end !27
  %30 = add i32 %6, %29, !partition !3, !start !28, !end !29
  %31 = trunc i64 %28 to i32, !partition !3, !start !30, !end !18
  %32 = or i32 %31, 1, !partition !2, !start !31, !end !32
  %33 = icmp sgt i32 %30, %32, !partition !3, !start !29, !end !33
  %34 = select i1 %33, i32 %30, i32 %32, !partition !2, !start !27, !end !34
  %35 = trunc i64 %19 to i32, !partition !3, !start !35, !end !16
  %36 = mul i32 %10, %35, !partition !2, !start !36, !end !22
  %37 = add i32 %36, -1, !partition !3, !start !3, !end !4
  %38 = add i32 %34, %37, !partition !2, !start !34, !end !37
  %39 = zext i32 %38 to i64, !partition !2, !start !23, !end !38
  %40 = shl nuw nsw i64 %39, 2, !partition !2, !start !35, !end !16
  %41 = add nuw nsw i64 %40, 4, !partition !3, !start !39, !end !40
  %42 = sext i32 %18 to i64, !partition !3, !start !41, !end !42
  %43 = mul i64 %19, %8, !partition !2, !start !43, !end !15
  %44 = getelementptr [4 x i32], [4 x i32]* %2, i64 0, i64 %43, !partition !2, !start !9, !end !13
  %45 = bitcast i32* %44 to i8*, !partition !2, !start !38, !end !44
  %46 = getelementptr [4 x i32], [4 x i32]* @a, i64 0, i64 %43, !partition !2, !start !15, !end !36
  %47 = bitcast i32* %46 to i8*, !partition !2, !start !44, !end !45
  %48 = mul i64 %19, %9, !partition !3, !start !19, !end !39
  %49 = trunc i64 %48 to i32, !partition !2, !start !7, !end !26
  %50 = add i32 %6, %49, !partition !3, !start !40, !end !24
  %51 = trunc i64 %48 to i32, !partition !3, !start !46, !end !47
  %52 = or i32 %51, 1, !partition !3, !start !25, !end !46
  %53 = icmp sgt i32 %50, %52, !partition !2, !start !32, !end !43
  %54 = select i1 %53, i32 %50, i32 %52, !partition !3, !start !42, !end !48
  %55 = trunc i64 %19 to i32, !partition !3, !start !49, !end !41
  %56 = mul i32 %10, %55, !partition !3, !start !50, !end !51
  %57 = add i32 %56, -1, !partition !3, !start !16, !end !30
  %58 = add i32 %54, %57, !partition !2, !start !21, !end !14
  %59 = zext i32 %58 to i64, !partition !2, !start !13, !end !11
  %60 = shl nuw nsw i64 %59, 2, !partition !2, !start !37, !end !20
  %61 = add nuw nsw i64 %60, 4, !partition !3, !start !52, !end !28
  %62 = add nsw i64 %20, %12, !partition !2, !start !17, !end !31
  %63 = add nsw i32 %21, %6, !partition !3, !start !48, !end !52
  %64 = add nsw i64 %62, %13, !partition !3, !start !51, !end !49
  %65 = add nsw i32 %63, %6, !partition !3, !start !4, !end !50
  %66 = add nsw i32 %65, -1, !partition !3, !start !33, !end !35
  %67 = icmp slt i64 %64, 5, !partition !3, !start !47, !end !53
  br i1 %67, label %68, label %109

; <label>:68:                                     ; preds = %16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %4, i8 0, i64 16, i1 false), !partition !2, !start !2, !end !2
  br i1 %15, label %69, label %72

; <label>:69:                                     ; preds = %68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %25, i8* align 8 %27, i64 %41, i1 false), !partition !2, !start !2, !end !2
  %70 = trunc i64 %62 to i32, !partition !2, !start !2, !end !2
  %71 = add nsw i32 %66, %70, !partition !2, !start !2, !end !2
  br label %78

; <label>:72:                                     ; preds = %78, %68
  %73 = icmp slt i64 %20, %64, !partition !2, !start !2, !end !8
  br i1 %73, label %74, label %149

; <label>:74:                                     ; preds = %72
  %75 = trunc i64 %64 to i32, !partition !2, !start !8, !end !9
  %76 = add i32 %75, -1, !partition !2, !start !2, !end !8
  %77 = trunc i64 %20 to i32, !partition !3, !start !2, !end !8
  br label %88

; <label>:78:                                     ; preds = %69, %78
  %79 = phi i64 [ %22, %69 ], [ %86, %78 ], !partition !2, !start !6, !end !6
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %79, !partition !2, !start !6, !end !10
  %81 = load i32, i32* %80, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %82 = trunc i64 %79 to i32, !partition !3, !start !9, !end !13
  %83 = sub i32 %71, %82, !partition !3, !start !8, !end !9
  %84 = sext i32 %83 to i64, !partition !2, !start !58, !end !5
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %84, !partition !2, !start !5, !end !6
  store i32 %81, i32* %85, align 4, !tbaa !54, !partition !2, !start !3, !end !58
  %86 = add nsw i64 %79, 1, !partition !3, !start !2, !end !8
  %87 = icmp slt i64 %86, %64, !partition !3, !start !13, !end !11
  br i1 %87, label %78, label %72

; <label>:88:                                     ; preds = %104, %74
  %89 = phi i64 [ %20, %74 ], [ %107, %104 ], !partition !2, !start !2, !end !2
  %90 = phi i32 [ %77, %74 ], [ %106, %104 ], !partition !2, !start !2, !end !2
  %91 = phi i32 [ %76, %74 ], [ %105, %104 ], !partition !2, !start !2, !end !2
  %92 = sext i32 %91 to i64, !partition !3, !start !3, !end !4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %92, !partition !2, !start !6, !end !10
  %94 = load i32, i32* %93, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %95 = sext i32 %90 to i64, !partition !3, !start !4, !end !50
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %95, !partition !2, !start !3, !end !4
  %97 = load i32, i32* %96, align 4, !tbaa !54, !partition !2, !start !4, !end !5
  %98 = icmp slt i32 %94, %97, !partition !3, !start !50, !end !51
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %89, !partition !2, !start !5, !end !6
  br i1 %98, label %100, label %102

; <label>:100:                                    ; preds = %88
  store i32 %94, i32* %99, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %101 = add nsw i32 %91, -1, !partition !3, !start !3, !end !4
  br label %104

; <label>:102:                                    ; preds = %88
  store i32 %97, i32* %99, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %103 = add nsw i32 %90, 1, !partition !3, !start !3, !end !4
  br label %104

; <label>:104:                                    ; preds = %100, %102
  %105 = phi i32 [ %101, %100 ], [ %91, %102 ], !partition !2, !start !2, !end !2
  %106 = phi i32 [ %90, %100 ], [ %103, %102 ], !partition !2, !start !8, !end !8
  %107 = add nsw i64 %89, 1, !partition !3, !start !3, !end !4
  %108 = icmp eq i64 %107, %17, !partition !2, !start !2, !end !8
  br i1 %108, label %149, label %88

; <label>:109:                                    ; preds = %16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 16, i1 false), !partition !2, !start !2, !end !2
  br i1 %14, label %110, label %111

; <label>:110:                                    ; preds = %109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %45, i8* align 8 %47, i64 %61, i1 false), !partition !2, !start !2, !end !2
  br label %111

; <label>:111:                                    ; preds = %110, %109
  %112 = icmp slt i64 %62, 5, !partition !2, !start !2, !end !8
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %111
  %114 = add i64 %62, 4, !partition !2, !start !2, !end !8
  br label %117

; <label>:115:                                    ; preds = %117, %111
  %116 = trunc i64 %20 to i32, !partition !2, !start !2, !end !8
  br label %128

; <label>:117:                                    ; preds = %117, %113
  %118 = phi i64 [ %42, %113 ], [ %125, %117 ], !partition !2, !start !8, !end !8
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %118, !partition !2, !start !8, !end !9
  %120 = load i32, i32* %119, align 4, !tbaa !54, !partition !2, !start !11, !end !49
  %121 = sub i64 %114, %118, !partition !3, !start !2, !end !8
  %122 = shl i64 %121, 32, !partition !3, !start !8, !end !9
  %123 = ashr exact i64 %122, 32, !partition !2, !start !9, !end !13
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %123, !partition !2, !start !13, !end !11
  store i32 %120, i32* %124, align 4, !tbaa !54, !partition !2, !start !49, !end !12
  %125 = add nsw i64 %118, 1, !partition !3, !start !13, !end !11
  %126 = trunc i64 %125 to i32, !partition !3, !start !9, !end !13
  %127 = icmp eq i32 %126, 5, !partition !2, !start !2, !end !8
  br i1 %127, label %115, label %117

; <label>:128:                                    ; preds = %144, %115
  %129 = phi i64 [ %20, %115 ], [ %147, %144 ], !partition !2, !start !2, !end !2
  %130 = phi i32 [ 4, %115 ], [ %146, %144 ], !partition !2, !start !3, !end !3
  %131 = phi i32 [ %116, %115 ], [ %145, %144 ], !partition !2, !start !2, !end !2
  %132 = sext i32 %130 to i64, !partition !3, !start !58, !end !5
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %132, !partition !2, !start !5, !end !6
  %134 = load i32, i32* %133, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %135 = sext i32 %131 to i64, !partition !3, !start !5, !end !6
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %135, !partition !2, !start !6, !end !10
  %137 = load i32, i32* %136, align 4, !tbaa !54, !partition !2, !start !4, !end !5
  %138 = icmp slt i32 %134, %137, !partition !3, !start !6, !end !10
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %129, !partition !2, !start !3, !end !4
  br i1 %138, label %140, label %142

; <label>:140:                                    ; preds = %128
  store i32 %134, i32* %139, align 4, !tbaa !54, !partition !2, !start !2, !end !2
  %141 = add nsw i32 %130, -1, !partition !2, !start !2, !end !2
  br label %144

; <label>:142:                                    ; preds = %128
  store i32 %137, i32* %139, align 4, !tbaa !54, !partition !2, !start !2, !end !3
  %143 = add nsw i32 %131, 1, !partition !3, !start !3, !end !4
  br label %144

; <label>:144:                                    ; preds = %140, %142
  %145 = phi i32 [ %131, %140 ], [ %143, %142 ], !partition !2, !start !8, !end !8
  %146 = phi i32 [ %141, %140 ], [ %130, %142 ], !partition !2, !start !2, !end !2
  %147 = add nsw i64 %129, 1, !partition !3, !start !3, !end !4
  %148 = icmp eq i64 %147, 5, !partition !2, !start !2, !end !8
  br i1 %148, label %149, label %128

; <label>:149:                                    ; preds = %144, %104, %72
  %150 = add i64 %20, %8, !partition !3, !start !2, !end !8
  %151 = add nsw i32 %21, %7, !partition !2, !start !9, !end !13
  %152 = icmp slt i64 %150, 4, !partition !2, !start !2, !end !8
  %153 = add i64 %19, 1, !partition !3, !start !8, !end !9
  %154 = add i32 %18, %7, !partition !2, !start !8, !end !9
  %155 = add i64 %17, %8, !partition !3, !start !9, !end !13
  br i1 %152, label %16, label %156

; <label>:156:                                    ; preds = %149
  %157 = shl nsw i32 %6, 1, !partition !2, !start !2, !end !8
  %158 = icmp slt i32 %6, 2, !partition !3, !start !2, !end !8
  br i1 %158, label %5, label %159

; <label>:159:                                    ; preds = %156
  ret void, !partition !2, !start !2, !end !3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  tail call void @replace__p_mergesort()
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !54
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %3

; <label>:10:                                     ; preds = %3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

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

declare void @_p_mergesort_0(i8*)

declare void @_p_mergesort_1(i8*)

define void @replace__p_mergesort() {
entry:
  %0 = call i8* @init()
  call void @start_device_execution()
  %a = call i32 @address_for_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @a.1, i32 0, i32 0), i8* %0)
  call void @retrieve_global(i8* bitcast ([4 x i32]* @a to i8*), i32 trunc (i64 mul nuw (i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 4) to i32), i32 %a, i8* %0)
  call void @end_device_execution()
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!2 = !{!"0"}
!3 = !{!"1"}
!4 = !{!"4"}
!5 = !{!"5"}
!6 = !{!"8"}
!7 = !{!"15"}
!8 = !{!"3"}
!9 = !{!"6"}
!10 = !{!"11"}
!11 = !{!"12"}
!12 = !{!"14"}
!13 = !{!"9"}
!14 = !{!"34"}
!15 = !{!"51"}
!16 = !{!"38"}
!17 = !{!"39"}
!18 = !{!"44"}
!19 = !{!"47"}
!20 = !{!"28"}
!21 = !{!"31"}
!22 = !{!"57"}
!23 = !{!"60"}
!24 = !{!"56"}
!25 = !{!"59"}
!26 = !{!"18"}
!27 = !{!"21"}
!28 = !{!"26"}
!29 = !{!"29"}
!30 = !{!"41"}
!31 = !{!"42"}
!32 = !{!"45"}
!33 = !{!"32"}
!34 = !{!"22"}
!35 = !{!"35"}
!36 = !{!"54"}
!37 = !{!"25"}
!38 = !{!"63"}
!39 = !{!"50"}
!40 = !{!"53"}
!41 = !{!"16"}
!42 = !{!"19"}
!43 = !{!"48"}
!44 = !{!"66"}
!45 = !{!"69"}
!46 = !{!"62"}
!47 = !{!"65"}
!48 = !{!"20"}
!49 = !{!"13"}
!50 = !{!"7"}
!51 = !{!"10"}
!52 = !{!"23"}
!53 = !{!"68"}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"2"}
